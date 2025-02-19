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
struct file_operations;
struct completion;
struct lockdep_map;
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
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
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
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
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
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
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
struct vm_area_struct;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
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
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct timezone {
   int tz_minuteswest ;
   int tz_dsttime ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
struct nsproxy;
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
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   unsigned int flags ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
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
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
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
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
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
   struct __anonstruct_shared_159 shared ;
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
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
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
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
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
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
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
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
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
struct kernfs_root;
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
struct scsi_device;
struct scsi_cmnd;
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
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_232 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_231 {
   struct __anonstruct____missing_field_name_232 __annonCompField66 ;
};
struct lockref {
   union __anonunion____missing_field_name_231 __annonCompField67 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_234 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_233 {
   struct __anonstruct____missing_field_name_234 __annonCompField68 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_233 __annonCompField69 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_235 {
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
   union __anonunion_d_u_235 d_u ;
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
struct __anonstruct____missing_field_name_239 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField70 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_238 __annonCompField71 ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
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
union __anonunion____missing_field_name_242 {
   struct bio_integrity_payload *bi_integrity ;
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
   atomic_t __bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_242 __annonCompField72 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_243 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_243 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_244 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_244 __annonCompField73 ;
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
union __anonunion____missing_field_name_247 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_248 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_249 {
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
   union __anonunion____missing_field_name_247 __annonCompField74 ;
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
   union __anonunion____missing_field_name_248 __annonCompField75 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_249 __annonCompField76 ;
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
union __anonunion_f_u_250 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_250 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_252 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_251 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_252 afs ;
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
   union __anonunion_fl_u_251 fl_u ;
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
struct block_device_operations;
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
typedef int congested_fn(void * , int );
struct bdi_writeback_congested {
   unsigned long state ;
   atomic_t refcnt ;
   struct backing_dev_info *bdi ;
   int blkcg_id ;
   struct rb_node rb_node ;
};
union __anonunion____missing_field_name_253 {
   struct work_struct release_work ;
   struct callback_head rcu ;
};
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long state ;
   unsigned long last_old_flush ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
   struct percpu_counter stat[4U] ;
   struct bdi_writeback_congested *congested ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   spinlock_t work_lock ;
   struct list_head work_list ;
   struct delayed_work dwork ;
   struct percpu_ref refcnt ;
   struct fprop_local_percpu memcg_completions ;
   struct cgroup_subsys_state *memcg_css ;
   struct cgroup_subsys_state *blkcg_css ;
   struct list_head memcg_node ;
   struct list_head blkcg_node ;
   union __anonunion____missing_field_name_253 __annonCompField77 ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   atomic_long_t tot_write_bandwidth ;
   struct bdi_writeback wb ;
   struct radix_tree_root cgwb_tree ;
   struct rb_root cgwb_congested_tree ;
   atomic_t usage_cnt ;
   wait_queue_head_t wb_waitq ;
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
union __anonunion____missing_field_name_254 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_255 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
   union __anonunion____missing_field_name_255 __annonCompField79 ;
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
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
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
struct request;
struct bsg_job;
struct blkcg_gq;
struct blk_flush_queue;
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
union __anonunion____missing_field_name_256 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_257 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_258 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_260 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_261 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_259 {
   struct __anonstruct_elv_260 elv ;
   struct __anonstruct_flush_261 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   unsigned int cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   union __anonunion____missing_field_name_258 __annonCompField82 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
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
typedef void elevator_registered_fn(struct request_queue * );
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
   elevator_registered_fn *elevator_registered_fn ;
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
   int alloc_policy ;
   int next_tag ;
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
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   atomic_t mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
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
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_263 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_263 __annonCompField84 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_host_cmd_pool;
struct scsi_target;
struct Scsi_Host;
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
   int (*change_queue_depth)(struct scsi_device * , int ) ;
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
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
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
union __anonunion____missing_field_name_264 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
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
   union __anonunion____missing_field_name_264 __annonCompField85 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
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
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
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
   unsigned int channel ;
   u64 lun ;
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
   unsigned char try_vpd_pages : 1 ;
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
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
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
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
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
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
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
   unsigned char prot_flags ;
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
   int flags ;
   unsigned char tag ;
};
struct TAG_twa_message_type {
   unsigned int code ;
   char *text ;
};
typedef struct TAG_twa_message_type twa_message_type;
struct TAG_TW_SG_Entry {
   dma_addr_t address ;
   u32 length ;
};
typedef struct TAG_TW_SG_Entry TW_SG_Entry;
union __anonunion_byte6_offset_267 {
   unsigned short block_count ;
   unsigned short parameter_count ;
};
struct __anonstruct_io_269 {
   u32 lba ;
   TW_SG_Entry sgl[41U] ;
   dma_addr_t padding ;
};
struct __anonstruct_param_270 {
   TW_SG_Entry sgl[41U] ;
   u32 padding ;
   dma_addr_t padding2 ;
};
union __anonunion_byte8_offset_268 {
   struct __anonstruct_io_269 io ;
   struct __anonstruct_param_270 param ;
};
struct TW_Command {
   unsigned char opcode__sgloffset ;
   unsigned char size ;
   unsigned char request_id ;
   unsigned char unit__hostid ;
   unsigned char status ;
   unsigned char flags ;
   union __anonunion_byte6_offset_267 byte6_offset ;
   union __anonunion_byte8_offset_268 byte8_offset ;
};
typedef struct TW_Command TW_Command;
struct TAG_TW_Command_Apache {
   unsigned char opcode__reserved ;
   unsigned char unit ;
   unsigned short request_id__lunl ;
   unsigned char status ;
   unsigned char sgl_offset ;
   unsigned short sgl_entries__lunh ;
   unsigned char cdb[16U] ;
   TW_SG_Entry sg_list[72U] ;
   unsigned char padding[8U] ;
};
typedef struct TAG_TW_Command_Apache TW_Command_Apache;
struct __anonstruct_status_block_271 {
   char reserved[4U] ;
   unsigned short error ;
   unsigned char padding ;
   unsigned char severity__reserved ;
};
struct __anonstruct_header_desc_272 {
   unsigned char size_header ;
   unsigned short reserved ;
   unsigned char size_sense ;
};
struct TAG_TW_Command_Apache_Header {
   unsigned char sense_data[18U] ;
   struct __anonstruct_status_block_271 status_block ;
   unsigned char err_specific_desc[98U] ;
   struct __anonstruct_header_desc_272 header_desc ;
};
typedef struct TAG_TW_Command_Apache_Header TW_Command_Apache_Header;
union __anonunion_command_273 {
   TW_Command oldcommand ;
   TW_Command_Apache newcommand ;
};
struct TAG_TW_Command_Full {
   TW_Command_Apache_Header header ;
   union __anonunion_command_273 command ;
};
typedef struct TAG_TW_Command_Full TW_Command_Full;
struct TAG_TW_Initconnect {
   unsigned char opcode__reserved ;
   unsigned char size ;
   unsigned char request_id ;
   unsigned char res2 ;
   unsigned char status ;
   unsigned char flags ;
   unsigned short message_credits ;
   u32 features ;
   unsigned short fw_srl ;
   unsigned short fw_arch_id ;
   unsigned short fw_branch ;
   unsigned short fw_build ;
   u32 result ;
};
typedef struct TAG_TW_Initconnect TW_Initconnect;
struct TAG_TW_Event {
   unsigned int sequence_id ;
   unsigned int time_stamp_sec ;
   unsigned short aen_code ;
   unsigned char severity ;
   unsigned char retrieved ;
   unsigned char repeat_count ;
   unsigned char parameter_len ;
   unsigned char parameter_data[98U] ;
};
typedef struct TAG_TW_Event TW_Event;
struct TAG_TW_Ioctl_Driver_Command {
   unsigned int control_code ;
   unsigned int status ;
   unsigned int unique_id ;
   unsigned int sequence_id ;
   unsigned int os_specific ;
   unsigned int buffer_length ;
};
typedef struct TAG_TW_Ioctl_Driver_Command TW_Ioctl_Driver_Command;
struct TAG_TW_Ioctl_Apache {
   TW_Ioctl_Driver_Command driver_command ;
   char padding[488U] ;
   TW_Command_Full firmware_command ;
   char data_buffer[1U] ;
};
typedef struct TAG_TW_Ioctl_Apache TW_Ioctl_Buf_Apache;
struct TAG_TW_Lock {
   unsigned long timeout_msec ;
   unsigned long time_remaining_msec ;
   unsigned long force_flag ;
};
typedef struct TAG_TW_Lock TW_Lock;
struct __anonstruct_TW_Param_Apache_274 {
   unsigned short table_id ;
   unsigned short parameter_id ;
   unsigned short parameter_size_bytes ;
   unsigned short actual_parameter_size_bytes ;
   unsigned char data[1U] ;
};
typedef struct __anonstruct_TW_Param_Apache_274 TW_Param_Apache;
union TAG_TW_Response_Queue {
   u32 response_id ;
   u32 value ;
};
typedef union TAG_TW_Response_Queue TW_Response_Queue;
struct TAG_TW_Compatibility_Info {
   char driver_version[32U] ;
   unsigned short working_srl ;
   unsigned short working_branch ;
   unsigned short working_build ;
   unsigned short driver_srl_high ;
   unsigned short driver_branch_high ;
   unsigned short driver_build_high ;
   unsigned short driver_srl_low ;
   unsigned short driver_branch_low ;
   unsigned short driver_build_low ;
   unsigned short fw_on_ctlr_srl ;
   unsigned short fw_on_ctlr_branch ;
   unsigned short fw_on_ctlr_build ;
};
typedef struct TAG_TW_Compatibility_Info TW_Compatibility_Info;
struct TAG_TW_Device_Extension {
   u32 *base_addr ;
   unsigned long *generic_buffer_virt[256U] ;
   dma_addr_t generic_buffer_phys[256U] ;
   TW_Command_Full *command_packet_virt[256U] ;
   dma_addr_t command_packet_phys[256U] ;
   struct pci_dev *tw_pci_dev ;
   struct scsi_cmnd *srb[256U] ;
   unsigned char free_queue[256U] ;
   unsigned char free_head ;
   unsigned char free_tail ;
   unsigned char pending_queue[256U] ;
   unsigned char pending_head ;
   unsigned char pending_tail ;
   int state[256U] ;
   unsigned int posted_request_count ;
   unsigned int max_posted_request_count ;
   unsigned int pending_request_count ;
   unsigned int max_pending_request_count ;
   unsigned int max_sgl_entries ;
   unsigned int sgl_entries ;
   unsigned int num_resets ;
   unsigned int sector_count ;
   unsigned int max_sector_count ;
   unsigned int aen_count ;
   struct Scsi_Host *host ;
   long flags ;
   int reset_print ;
   TW_Event *event_queue[256U] ;
   unsigned char error_index ;
   unsigned char event_queue_wrapped ;
   unsigned int error_sequence_id ;
   int ioctl_sem_lock ;
   u32 ioctl_msec ;
   int chrdev_request_id ;
   wait_queue_head_t ioctl_wqueue ;
   struct mutex ioctl_lock ;
   char aen_clobber ;
   TW_Compatibility_Info tw_compat_info ;
};
typedef struct TAG_TW_Device_Extension TW_Device_Extension;
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef struct Scsi_Host *ldv_func_ret_type___2;
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
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __might_fault(char const * , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
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
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_14(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock ) ;
void ldv_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock ) ;
void ldv_mutex_unlock_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_twa_chrdev_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_twa_chrdev_mutex(struct mutex *lock ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField17.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField17.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField17.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern struct timezone sys_tz ;
extern unsigned long volatile jiffies ;
extern void do_gettimeofday(struct timeval * ) ;
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
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern long schedule_timeout(long ) ;
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
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
int ldv_irq_line_2_2 ;
void *ldv_irq_data_1_1 ;
int pci_counter ;
int ldv_irq_1_0 = 0;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_irq_line_2_1 ;
int ldv_state_variable_2 ;
int ldv_irq_2_0 = 0;
void *ldv_irq_data_1_3 ;
struct inode *twa_fops_group1 ;
struct scsi_device *driver_template_group1 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct file *twa_fops_group2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
void *ldv_irq_data_2_3 ;
int ldv_irq_line_1_3 ;
int ldv_irq_2_2 = 0;
struct pci_dev *twa_driver_group1 ;
int ldv_irq_line_2_0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_1 ;
struct scsi_cmnd *driver_template_group0 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void ldv_initialize_scsi_host_template_4(void) ;
void activate_suitable_irq_2(int line , void *data ) ;
void disable_suitable_irq_1(int line , void *data ) ;
void ldv_pci_driver_3(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void ldv_file_operations_5(void) ;
int ldv_irq_2(int state , int line , void *data ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
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
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_27(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void msleep(unsigned int ) ;
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
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
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
extern int pci_try_set_mwi(struct pci_dev * ) ;
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
int ldv___pci_register_driver_29(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_30(struct pci_driver *ldv_func_arg1 ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern size_t sg_copy_from_buffer(struct scatterlist * , unsigned int , void const * ,
                                  size_t ) ;
extern size_t sg_copy_to_buffer(struct scatterlist * , unsigned int , void * , size_t ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
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
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
__inline static struct inode *file_inode(struct file const *f )
{
  {
  return ((struct inode *)f->f_inode);
}
}
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
__inline static int ldv_register_chrdev_22(unsigned int major , char const *name ,
                                           struct file_operations const *fops ) ;
__inline static void unregister_chrdev(unsigned int major , char const *name )
{
  {
  __unregister_chrdev(major, 0U, 256U, name);
  return;
}
}
__inline static void ldv_unregister_chrdev_25(unsigned int major , char const *name ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern void blk_queue_rq_timeout(struct request_queue * , unsigned int ) ;
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_20(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_12(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_23(struct Scsi_Host *shost ) ;
void ldv_scsi_remove_host_24(struct Scsi_Host *shost ) ;
void ldv_scsi_remove_host_28(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_12(host, dev, dev);
  return (tmp);
}
}
extern void sdev_prefix_printk(char const * , struct scsi_device const * , char const * ,
                               char const * , ...) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.nents);
}
}
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
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
__inline static int scsi_sg_copy_from_buffer(struct scsi_cmnd *cmd , void *buf , int buflen )
{
  unsigned int tmp ;
  struct scatterlist *tmp___0 ;
  size_t tmp___1 ;
  {
  tmp = scsi_sg_count(cmd);
  tmp___0 = scsi_sglist(cmd);
  tmp___1 = sg_copy_from_buffer(tmp___0, tmp, (void const *)buf, (size_t )buflen);
  return ((int )tmp___1);
}
}
__inline static int scsi_sg_copy_to_buffer(struct scsi_cmnd *cmd , void *buf , int buflen )
{
  unsigned int tmp ;
  struct scatterlist *tmp___0 ;
  size_t tmp___1 ;
  {
  tmp = scsi_sg_count(cmd);
  tmp___0 = scsi_sglist(cmd);
  tmp___1 = sg_copy_to_buffer(tmp___0, tmp, buf, (size_t )buflen);
  return ((int )tmp___1);
}
}
static twa_message_type twa_aen_table[71U] =
  { {0U, (char *)"AEN queue empty"},
        {1U, (char *)"Controller reset occurred"},
        {2U, (char *)"Degraded unit detected"},
        {3U, (char *)"Controller error occurred"},
        {4U, (char *)"Background rebuild failed"},
        {5U, (char *)"Background rebuild done"},
        {6U, (char *)"Incomplete unit detected"},
        {7U, (char *)"Background initialize done"},
        {8U, (char *)"Unclean shutdown detected"},
        {9U, (char *)"Drive timeout detected"},
        {10U, (char *)"Drive error detected"},
        {11U, (char *)"Rebuild started"},
        {12U, (char *)"Background initialize started"},
        {13U, (char *)"Entire logical unit was deleted"},
        {14U, (char *)"Background initialize failed"},
        {15U, (char *)"SMART attribute exceeded threshold"},
        {16U, (char *)"Power supply reported AC under range"},
        {17U, (char *)"Power supply reported DC out of range"},
        {18U, (char *)"Power supply reported a malfunction"},
        {19U, (char *)"Power supply predicted malfunction"},
        {20U, (char *)"Battery charge is below threshold"},
        {21U, (char *)"Fan speed is below threshold"},
        {22U, (char *)"Temperature sensor is above threshold"},
        {23U, (char *)"Power supply was removed"},
        {24U, (char *)"Power supply was inserted"},
        {25U, (char *)"Drive was removed from a bay"},
        {26U, (char *)"Drive was inserted into a bay"},
        {27U, (char *)"Drive bay cover door was opened"},
        {28U, (char *)"Drive bay cover door was closed"},
        {29U, (char *)"Product case was opened"},
        {32U, (char *)"Prepare for shutdown (power-off)"},
        {33U, (char *)"Downgrade UDMA mode to lower speed"},
        {34U, (char *)"Upgrade UDMA mode to higher speed"},
        {35U, (char *)"Sector repair completed"},
        {36U, (char *)"Sbuf memory test failed"},
        {37U, (char *)"Error flushing cached write data to array"},
        {38U, (char *)"Drive reported data ECC error"},
        {39U, (char *)"DCB has checksum error"},
        {40U, (char *)"DCB version is unsupported"},
        {41U, (char *)"Background verify started"},
        {42U, (char *)"Background verify failed"},
        {43U, (char *)"Background verify done"},
        {44U, (char *)"Bad sector overwritten during rebuild"},
        {45U, (char *)"Background rebuild error on source drive"},
        {46U, (char *)"Replace failed because replacement drive too small"},
        {47U, (char *)"Verify failed because array was never initialized"},
        {48U, (char *)"Unsupported ATA drive"},
        {49U, (char *)"Synchronize host/controller time"},
        {50U, (char *)"Spare capacity is inadequate for some units"},
        {51U, (char *)"Background migration started"},
        {52U, (char *)"Background migration failed"},
        {53U, (char *)"Background migration done"},
        {54U, (char *)"Verify detected and fixed data/parity mismatch"},
        {55U, (char *)"SO-DIMM incompatible"},
        {56U, (char *)"SO-DIMM not detected"},
        {57U, (char *)"Corrected Sbuf ECC error"},
        {58U, (char *)"Drive power on reset detected"},
        {59U, (char *)"Background rebuild paused"},
        {60U, (char *)"Background initialize paused"},
        {61U, (char *)"Background verify paused"},
        {62U, (char *)"Background migration paused"},
        {63U, (char *)"Corrupt flash file system detected"},
        {64U, (char *)"Flash file system repaired"},
        {65U, (char *)"Unit number assignments were lost"},
        {66U, (char *)"Error during read of primary DCB"},
        {67U, (char *)"Latent error found in backup DCB"},
        {252U, (char *)"Recovered/finished array membership update"},
        {253U, (char *)"Handler lockup"},
        {254U, (char *)"Retrying PCI transfer"},
        {255U, (char *)"AEN queue is full"},
        {4294967295U, (char *)0}};
static char *twa_aen_severity_table[6U] = { (char *)"None", (char *)"OLD_ERROR", (char *)"WARNING", (char *)"INFO",
        (char *)"DEBUG", (char *)0};
static twa_message_type twa_error_table[113U] =
  { {256U, (char *)"SGL entry contains zero data"},
        {257U, (char *)"Invalid command opcode"},
        {258U, (char *)"SGL entry has unaligned address"},
        {259U, (char *)"SGL size does not match command"},
        {260U, (char *)"SGL entry has illegal length"},
        {261U, (char *)"Command packet is not aligned"},
        {262U, (char *)"Invalid request ID"},
        {263U, (char *)"Duplicate request ID"},
        {264U, (char *)"ID not locked"},
        {265U, (char *)"LBA out of range"},
        {266U, (char *)"Logical unit not supported"},
        {267U, (char *)"Parameter table does not exist"},
        {268U, (char *)"Parameter index does not exist"},
        {269U, (char *)"Invalid field in CDB"},
        {270U, (char *)"Specified port has invalid drive"},
        {271U, (char *)"Parameter item size mismatch"},
        {272U, (char *)"Failed memory allocation"},
        {273U, (char *)"Memory request too large"},
        {274U, (char *)"Out of memory segments"},
        {275U, (char *)"Invalid address to deallocate"},
        {276U, (char *)"Out of memory"},
        {277U, (char *)"Out of heap"},
        {288U, (char *)"Double degrade"},
        {289U, (char *)"Drive not degraded"},
        {290U, (char *)"Reconstruct error"},
        {291U, (char *)"Replace not accepted"},
        {292U, (char *)"Replace drive capacity too small"},
        {293U, (char *)"Sector count not allowed"},
        {294U, (char *)"No spares left"},
        {295U, (char *)"Reconstruct error"},
        {296U, (char *)"Unit is offline"},
        {297U, (char *)"Cannot update status to DCB"},
        {304U, (char *)"Invalid stripe handle"},
        {305U, (char *)"Handle that was not locked"},
        {306U, (char *)"Handle that was not empty"},
        {307U, (char *)"Handle has different owner"},
        {320U, (char *)"IPR has parent"},
        {336U, (char *)"Illegal Pbuf address alignment"},
        {337U, (char *)"Illegal Pbuf transfer length"},
        {338U, (char *)"Illegal Sbuf address alignment"},
        {339U, (char *)"Illegal Sbuf transfer length"},
        {352U, (char *)"Command packet too large"},
        {353U, (char *)"SGL exceeds maximum length"},
        {354U, (char *)"SGL has too many entries"},
        {368U, (char *)"Insufficient resources for rebuilder"},
        {369U, (char *)"Verify error (data != parity)"},
        {384U, (char *)"Requested segment not in directory of this DCB"},
        {385U, (char *)"DCB segment has unsupported version"},
        {386U, (char *)"DCB segment has checksum error"},
        {387U, (char *)"DCB support (settings) segment invalid"},
        {388U, (char *)"DCB UDB (unit descriptor block) segment invalid"},
        {389U, (char *)"DCB GUID (globally unique identifier) segment invalid"},
        {416U, (char *)"Could not clear Sbuf"},
        {448U, (char *)"Flash identify failed"},
        {449U, (char *)"Flash out of bounds"},
        {450U, (char *)"Flash verify error"},
        {451U, (char *)"Flash file object not found"},
        {452U, (char *)"Flash file already present"},
        {453U, (char *)"Flash file system full"},
        {454U, (char *)"Flash file not present"},
        {455U, (char *)"Flash file size error"},
        {456U, (char *)"Bad flash file checksum"},
        {458U, (char *)"Corrupt flash file system detected"},
        {464U, (char *)"Invalid field in parameter list"},
        {465U, (char *)"Parameter list length error"},
        {466U, (char *)"Parameter item is not changeable"},
        {467U, (char *)"Parameter item is not saveable"},
        {512U, (char *)"UDMA CRC error"},
        {513U, (char *)"Internal CRC error"},
        {514U, (char *)"Data ECC error"},
        {515U, (char *)"ADP level 1 error"},
        {516U, (char *)"Port timeout"},
        {517U, (char *)"Drive power on reset"},
        {518U, (char *)"ADP level 2 error"},
        {519U, (char *)"Soft reset failed"},
        {520U, (char *)"Drive not ready"},
        {521U, (char *)"Unclassified port error"},
        {522U, (char *)"Drive aborted command"},
        {528U, (char *)"Internal CRC error"},
        {529U, (char *)"PCI abort error"},
        {530U, (char *)"PCI parity error"},
        {531U, (char *)"Port handler error"},
        {532U, (char *)"Token interrupt count error"},
        {533U, (char *)"Timeout waiting for PCI transfer"},
        {534U, (char *)"Corrected buffer ECC"},
        {535U, (char *)"Uncorrected buffer ECC"},
        {560U, (char *)"Unsupported command during flash recovery"},
        {561U, (char *)"Next image buffer expected"},
        {562U, (char *)"Binary image architecture incompatible"},
        {563U, (char *)"Binary image has no signature"},
        {564U, (char *)"Binary image has bad checksum"},
        {565U, (char *)"Image downloaded overflowed buffer"},
        {576U, (char *)"I2C device not found"},
        {577U, (char *)"I2C transaction aborted"},
        {578U, (char *)"SO-DIMM parameter(s) incompatible using defaults"},
        {579U, (char *)"SO-DIMM unsupported"},
        {584U, (char *)"SPI transfer status error"},
        {585U, (char *)"SPI transfer timeout error"},
        {592U, (char *)"Invalid unit descriptor size in CreateUnit"},
        {593U, (char *)"Unit descriptor size exceeds data buffer in CreateUnit"},
        {594U, (char *)"Invalid value in CreateUnit descriptor"},
        {595U, (char *)"Inadequate disk space to support descriptor in CreateUnit"},
        {596U, (char *)"Unable to create data channel for this unit descriptor"},
        {597U, (char *)"CreateUnit descriptor specifies a drive already in use"},
        {598U, (char *)"Unable to write configuration to all disks during CreateUnit"},
        {599U,
      (char *)"CreateUnit does not support this descriptor version"},
        {600U, (char *)"Invalid subunit for RAID 0 or 5 in CreateUnit"},
        {601U, (char *)"Too many descriptors in CreateUnit"},
        {602U, (char *)"Invalid configuration specified in CreateUnit descriptor"},
        {603U, (char *)"Invalid LBA offset specified in CreateUnit descriptor"},
        {604U, (char *)"Invalid stripelet size specified in CreateUnit descriptor"},
        {608U, (char *)"SMART attribute exceeded threshold"},
        {4294967295U, (char *)0}};
static struct mutex twa_chrdev_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "twa_chrdev_mutex.wait_lock",
                                                          0, 0UL}}}}, {& twa_chrdev_mutex.wait_list,
                                                                       & twa_chrdev_mutex.wait_list},
    0, (void *)(& twa_chrdev_mutex), {0, {0, 0}, "twa_chrdev_mutex", 0, 0UL}};
static TW_Device_Extension *twa_device_extension_list[32U] ;
static unsigned int twa_device_extension_count ;
static int twa_major = -1;
static int use_msi = 0;
static void twa_aen_queue_event(TW_Device_Extension *tw_dev , TW_Command_Apache_Header *header ) ;
static int twa_aen_read_queue(TW_Device_Extension *tw_dev , int request_id ) ;
static char *twa_aen_severity_lookup(unsigned char severity_code ) ;
static void twa_aen_sync_time(TW_Device_Extension *tw_dev , int request_id ) ;
static long twa_chrdev_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
static int twa_chrdev_open(struct inode *inode , struct file *file ) ;
static int twa_fill_sense(TW_Device_Extension *tw_dev , int request_id , int copy_sense ,
                          int print_host ) ;
static void twa_free_request_id(TW_Device_Extension *tw_dev , int request_id ) ;
static void twa_get_request_id(TW_Device_Extension *tw_dev , int *request_id ) ;
static int twa_initconnection(TW_Device_Extension *tw_dev , int message_credits ,
                              u32 set_features , unsigned short current_fw_srl , unsigned short current_fw_arch_id ,
                              unsigned short current_fw_branch , unsigned short current_fw_build ,
                              unsigned short *fw_on_ctlr_srl , unsigned short *fw_on_ctlr_arch_id ,
                              unsigned short *fw_on_ctlr_branch , unsigned short *fw_on_ctlr_build ,
                              u32 *init_connect_result ) ;
static void twa_load_sgl(TW_Device_Extension *tw_dev , TW_Command_Full *full_command_packet ,
                         int request_id , dma_addr_t dma_handle , int length ) ;
static int twa_poll_response(TW_Device_Extension *tw_dev , int request_id , int seconds ) ;
static int twa_poll_status_gone(TW_Device_Extension *tw_dev , u32 flag , int seconds ) ;
static int twa_post_command_packet(TW_Device_Extension *tw_dev , int request_id ,
                                   char internal ) ;
static int twa_reset_device_extension(TW_Device_Extension *tw_dev ) ;
static int twa_reset_sequence(TW_Device_Extension *tw_dev , int soft_reset ) ;
static int twa_scsiop_execute_scsi(TW_Device_Extension *tw_dev , int request_id ,
                                   char *cdb , int use_sg , TW_SG_Entry *sglistarg ) ;
static void twa_scsiop_execute_scsi_complete(TW_Device_Extension *tw_dev , int request_id ) ;
static char *twa_string_lookup(twa_message_type *table , unsigned int code ) ;
static ssize_t twa_show_stats(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct Scsi_Host *host ;
  struct device const *__mptr ;
  TW_Device_Extension *tw_dev ;
  unsigned long flags ;
  ssize_t len ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  host = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  flags = 0UL;
  tmp = spinlock_check((tw_dev->host)->host_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = snprintf(buf, 4096UL, "3w-9xxx Driver version: %s\nCurrent commands posted:   %4d\nMax commands posted:       %4d\nCurrent pending commands:  %4d\nMax pending commands:      %4d\nLast sgl length:           %4d\nMax sgl length:            %4d\nLast sector count:         %4d\nMax sector count:          %4d\nSCSI Host Resets:          %4d\nAEN\'s:                     %4d\n",
                     (char *)"2.26.02.014", tw_dev->posted_request_count, tw_dev->max_posted_request_count,
                     tw_dev->pending_request_count, tw_dev->max_pending_request_count,
                     tw_dev->sgl_entries, tw_dev->max_sgl_entries, tw_dev->sector_count,
                     tw_dev->max_sector_count, tw_dev->num_resets, tw_dev->aen_count);
  len = (ssize_t )tmp___0;
  spin_unlock_irqrestore((tw_dev->host)->host_lock, flags);
  return (len);
}
}
static struct device_attribute twa_host_stats_attr = {{"stats", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & twa_show_stats,
    0};
static struct device_attribute *twa_host_attrs[2U] = { & twa_host_stats_attr, (struct device_attribute *)0};
static struct file_operations const twa_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & twa_chrdev_ioctl, 0, 0, 0,
    & twa_chrdev_open, 0, (int (*)(struct inode * , struct file * ))0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static int twa_aen_complete(TW_Device_Extension *tw_dev , int request_id )
{
  TW_Command_Full *full_command_packet ;
  TW_Command *command_packet ;
  TW_Command_Apache_Header *header ;
  unsigned short aen ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  {
  retval = 1;
  header = (TW_Command_Apache_Header *)tw_dev->generic_buffer_virt[request_id];
  tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
  aen = header->status_block.error;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  command_packet = & full_command_packet->command.oldcommand;
  if (((int )command_packet->opcode__sgloffset & 31) == 19) {
    tmp = twa_aen_read_queue(tw_dev, request_id);
    if (tmp != 0) {
      goto out2;
    } else {
      retval = 0;
      goto out;
    }
  } else {
  }
  switch ((int )aen) {
  case 0: ;
  goto ldv_37404;
  case 49:
  twa_aen_sync_time(tw_dev, request_id);
  retval = 0;
  goto out;
  default:
  twa_aen_queue_event(tw_dev, header);
  tmp___0 = twa_aen_read_queue(tw_dev, request_id);
  if (tmp___0 != 0) {
    goto out2;
  } else {
    retval = 0;
    goto out;
  }
  }
  ldv_37404:
  retval = 0;
  out2:
  tw_dev->state[request_id] = 16;
  twa_free_request_id(tw_dev, request_id);
  clear_bit(4L, (unsigned long volatile *)(& tw_dev->flags));
  out: ;
  return (retval);
}
}
static int twa_aen_drain_queue(TW_Device_Extension *tw_dev , int no_check_reset )
{
  int request_id ;
  char cdb[16U] ;
  TW_SG_Entry sglist[1U] ;
  int finished ;
  int count ;
  TW_Command_Full *full_command_packet ;
  TW_Command_Apache_Header *header ;
  unsigned short aen ;
  int first_reset ;
  int queue ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  {
  request_id = 0;
  finished = 0;
  count = 0;
  first_reset = 0;
  queue = 0;
  retval = 1;
  if (no_check_reset != 0) {
    first_reset = 0;
  } else {
    first_reset = 1;
  }
  full_command_packet = tw_dev->command_packet_virt[request_id];
  memset((void *)full_command_packet, 0, 1024UL);
  memset((void *)(& cdb), 0, 16UL);
  cdb[0] = 3;
  cdb[4] = -128;
  memset((void *)(& sglist), 0, 12UL);
  sglist[0].length = 512U;
  sglist[0].address = tw_dev->generic_buffer_phys[request_id];
  if ((sglist[0].address & 3ULL) != 0ULL) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 1, (char *)"Found unaligned address during AEN drain");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 1, (char *)"Found unaligned address during AEN drain");
    }
    goto out;
  } else {
  }
  tw_dev->srb[request_id] = (struct scsi_cmnd *)0;
  ldv_37428:
  tmp = twa_scsiop_execute_scsi(tw_dev, request_id, (char *)(& cdb), 1, (TW_SG_Entry *)(& sglist));
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 2, (char *)"Error posting request sense");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 2, (char *)"Error posting request sense");
    }
    goto out;
  } else {
  }
  tmp___0 = twa_poll_response(tw_dev, request_id, 30);
  if (tmp___0 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 3, (char *)"No valid response while draining AEN queue");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 3, (char *)"No valid response while draining AEN queue");
    }
    tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
    goto out;
  } else {
  }
  tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
  header = (TW_Command_Apache_Header *)tw_dev->generic_buffer_virt[request_id];
  aen = header->status_block.error;
  queue = 0;
  count = count + 1;
  switch ((int )aen) {
  case 0: ;
  if (first_reset != 1) {
    goto out;
  } else {
    finished = 1;
  }
  goto ldv_37424;
  case 1: ;
  if (first_reset == 0) {
    first_reset = 1;
  } else {
    queue = 1;
  }
  goto ldv_37424;
  case 49: ;
  goto ldv_37424;
  default:
  queue = 1;
  }
  ldv_37424: ;
  if (queue != 0) {
    twa_aen_queue_event(tw_dev, header);
  } else {
  }
  if (finished == 0 && count <= 254) {
    goto ldv_37428;
  } else {
  }
  if (count == 255) {
    goto out;
  } else {
  }
  retval = 0;
  out:
  tw_dev->state[request_id] = 1;
  return (retval);
}
}
static void twa_aen_queue_event(TW_Device_Extension *tw_dev , TW_Command_Apache_Header *header )
{
  u32 local_time ;
  struct timeval time ;
  TW_Event *event ;
  unsigned short aen ;
  char host[16U] ;
  char *error_str ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  char *tmp___5 ;
  {
  tw_dev->aen_count = tw_dev->aen_count + 1U;
  event = tw_dev->event_queue[(int )tw_dev->error_index];
  host[0] = 0;
  if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
    sprintf((char *)(& host), " scsi%d:", (tw_dev->host)->host_no);
    if ((unsigned int )event->retrieved == 1U) {
      tw_dev->aen_clobber = 1;
    } else {
    }
  } else {
  }
  aen = header->status_block.error;
  memset((void *)event, 0, 112UL);
  event->severity = (unsigned int )header->status_block.severity__reserved & 7U;
  do_gettimeofday(& time);
  local_time = (unsigned int )time.tv_sec + (unsigned int )(sys_tz.tz_minuteswest * -60);
  event->time_stamp_sec = local_time;
  event->aen_code = aen;
  event->retrieved = 1U;
  event->sequence_id = tw_dev->error_sequence_id;
  tw_dev->error_sequence_id = tw_dev->error_sequence_id + 1U;
  tmp = strlen((char const *)(& header->err_specific_desc));
  error_str = (char *)(& header->err_specific_desc) + (tmp + 1UL);
  header->err_specific_desc[97UL] = 0U;
  tmp___0 = strlen((char const *)(& header->err_specific_desc));
  event->parameter_len = (unsigned char )tmp___0;
  if ((int )((signed char )*error_str) != 0) {
    tmp___1 = strlen((char const *)error_str);
    tmp___2 = tmp___1 + 1UL;
  } else {
    tmp___2 = 0UL;
  }
  memcpy((void *)(& event->parameter_data), (void const *)(& header->err_specific_desc),
           (size_t )event->parameter_len + tmp___2);
  if ((unsigned int )event->severity != 4U) {
    if ((int )((signed char )*error_str) == 0) {
      tmp___3 = twa_string_lookup((twa_message_type *)(& twa_aen_table), (unsigned int )aen);
      tmp___4 = tmp___3;
    } else {
      tmp___4 = error_str;
    }
    tmp___5 = twa_aen_severity_lookup((int )header->status_block.severity__reserved & 7);
    printk("cw-9xxx:%s AEN: %s (0x%02X:0x%04X): %s:%s.\n", (char *)(& host), tmp___5,
           4, (int )aen, tmp___4, (unsigned char *)(& header->err_specific_desc));
  } else {
    tw_dev->aen_count = tw_dev->aen_count - 1U;
  }
  if ((unsigned int )tw_dev->error_index == 255U) {
    tw_dev->event_queue_wrapped = 1U;
  } else {
  }
  tw_dev->error_index = (unsigned char )(((int )tw_dev->error_index + 1) % 256);
  return;
}
}
static int twa_aen_read_queue(TW_Device_Extension *tw_dev , int request_id )
{
  char cdb[16U] ;
  TW_SG_Entry sglist[1U] ;
  TW_Command_Full *full_command_packet ;
  int retval ;
  int tmp ;
  {
  retval = 1;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  memset((void *)full_command_packet, 0, 1024UL);
  memset((void *)(& cdb), 0, 16UL);
  cdb[0] = 3;
  cdb[4] = -128;
  memset((void *)(& sglist), 0, 12UL);
  sglist[0].length = 512U;
  sglist[0].address = tw_dev->generic_buffer_phys[request_id];
  tw_dev->srb[request_id] = (struct scsi_cmnd *)0;
  tmp = twa_scsiop_execute_scsi(tw_dev, request_id, (char *)(& cdb), 1, (TW_SG_Entry *)(& sglist));
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 4, (char *)"Post failed while reading AEN queue");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 4, (char *)"Post failed while reading AEN queue");
    }
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static char *twa_aen_severity_lookup(unsigned char severity_code )
{
  char *retval ;
  {
  retval = (char *)0;
  if ((unsigned int )severity_code == 0U || (unsigned int )severity_code > 4U) {
    goto out;
  } else {
  }
  retval = twa_aen_severity_table[(int )severity_code];
  out: ;
  return (retval);
}
}
static void twa_aen_sync_time(TW_Device_Extension *tw_dev , int request_id )
{
  u32 schedulertime ;
  struct timeval utc ;
  TW_Command_Full *full_command_packet ;
  TW_Command *command_packet ;
  TW_Param_Apache *param ;
  u32 local_time ;
  {
  full_command_packet = tw_dev->command_packet_virt[request_id];
  memset((void *)full_command_packet, 0, 1024UL);
  command_packet = & full_command_packet->command.oldcommand;
  command_packet->opcode__sgloffset = 83U;
  command_packet->request_id = (unsigned char )request_id;
  command_packet->byte8_offset.param.sgl[0].address = tw_dev->generic_buffer_phys[request_id];
  command_packet->byte8_offset.param.sgl[0].length = 512U;
  command_packet->size = 5U;
  command_packet->byte6_offset.parameter_count = 1U;
  param = (TW_Param_Apache *)tw_dev->generic_buffer_virt[request_id];
  memset((void *)param, 0, 512UL);
  param->table_id = 33802U;
  param->parameter_id = 3U;
  param->parameter_size_bytes = 4U;
  do_gettimeofday(& utc);
  local_time = (unsigned int )utc.tv_sec + (unsigned int )(sys_tz.tz_minuteswest * -60);
  schedulertime = local_time - 259200U;
  schedulertime = schedulertime % 604800U;
  memcpy((void *)(& param->data), (void const *)(& schedulertime), 4UL);
  tw_dev->srb[request_id] = (struct scsi_cmnd *)0;
  twa_post_command_packet(tw_dev, request_id, 1);
  return;
}
}
static int twa_allocate_memory(TW_Device_Extension *tw_dev , int size , int which )
{
  int i ;
  dma_addr_t dma_handle ;
  unsigned long *cpu_addr ;
  int retval ;
  void *tmp ;
  {
  retval = 1;
  tmp = pci_alloc_consistent(tw_dev->tw_pci_dev, (size_t )(size * 256), & dma_handle);
  cpu_addr = (unsigned long *)tmp;
  if ((unsigned long )cpu_addr == (unsigned long )((unsigned long *)0UL)) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 5, (char *)"Memory allocation failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 5, (char *)"Memory allocation failed");
    }
    goto out;
  } else {
  }
  if (((unsigned long )cpu_addr & 3UL) != 0UL) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 6, (char *)"Failed to allocate correctly aligned memory");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 6, (char *)"Failed to allocate correctly aligned memory");
    }
    pci_free_consistent(tw_dev->tw_pci_dev, (size_t )(size * 256), (void *)cpu_addr,
                        dma_handle);
    goto out;
  } else {
  }
  memset((void *)cpu_addr, 0, (size_t )(size * 256));
  i = 0;
  goto ldv_37478;
  ldv_37477: ;
  switch (which) {
  case 0:
  tw_dev->command_packet_phys[i] = (dma_addr_t )(i * size) + dma_handle;
  tw_dev->command_packet_virt[i] = (TW_Command_Full *)cpu_addr + (unsigned long )(i * size);
  goto ldv_37475;
  case 1:
  tw_dev->generic_buffer_phys[i] = (dma_addr_t )(i * size) + dma_handle;
  tw_dev->generic_buffer_virt[i] = cpu_addr + (unsigned long )(i * size);
  goto ldv_37475;
  }
  ldv_37475:
  i = i + 1;
  ldv_37478: ;
  if (i <= 255) {
    goto ldv_37477;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_check_bits(u32 status_reg_value )
{
  int retval ;
  {
  retval = 1;
  if ((status_reg_value & 8192U) == 0U) {
    goto out;
  } else {
  }
  if ((status_reg_value & 15728640U) != 0U) {
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_check_srl(TW_Device_Extension *tw_dev , int *flashed )
{
  int retval ;
  unsigned short fw_on_ctlr_srl ;
  unsigned short fw_on_ctlr_arch_id ;
  unsigned short fw_on_ctlr_branch ;
  unsigned short fw_on_ctlr_build ;
  u32 init_connect_result ;
  int tmp ;
  int tmp___0 ;
  {
  retval = 1;
  fw_on_ctlr_srl = 0U;
  fw_on_ctlr_arch_id = 0U;
  fw_on_ctlr_branch = 0U;
  fw_on_ctlr_build = 0U;
  init_connect_result = 0U;
  tmp = twa_initconnection(tw_dev, 256, 2U, 35, 5, 0, 0, & fw_on_ctlr_srl, & fw_on_ctlr_arch_id,
                           & fw_on_ctlr_branch, & fw_on_ctlr_build, & init_connect_result);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 7, (char *)"Initconnection failed while checking SRL");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 7, (char *)"Initconnection failed while checking SRL");
    }
    goto out;
  } else {
  }
  tw_dev->tw_compat_info.working_srl = fw_on_ctlr_srl;
  tw_dev->tw_compat_info.working_branch = fw_on_ctlr_branch;
  tw_dev->tw_compat_info.working_build = fw_on_ctlr_build;
  if ((init_connect_result & 2U) == 0U) {
    tmp___0 = twa_initconnection(tw_dev, 256, 2U, 24, 5, 0, 1, & fw_on_ctlr_srl, & fw_on_ctlr_arch_id,
                                 & fw_on_ctlr_branch, & fw_on_ctlr_build, & init_connect_result);
    if (tmp___0 != 0) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 10, (char *)"Initconnection (base mode) failed while checking SRL");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 10, (char *)"Initconnection (base mode) failed while checking SRL");
      }
      goto out;
    } else {
    }
    if ((init_connect_result & 2U) == 0U) {
      if ((unsigned int )fw_on_ctlr_srl <= 34U) {
        if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
          printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
                 6, 50, (char *)"Firmware and driver incompatibility: please upgrade firmware");
        } else {
          printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 50, (char *)"Firmware and driver incompatibility: please upgrade firmware");
        }
      } else
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 51, (char *)"Firmware and driver incompatibility: please upgrade driver");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 51, (char *)"Firmware and driver incompatibility: please upgrade driver");
      }
      goto out;
    } else {
    }
    tw_dev->tw_compat_info.working_srl = 24U;
    tw_dev->tw_compat_info.working_branch = 0U;
    tw_dev->tw_compat_info.working_build = 1U;
  } else {
  }
  strlcpy((char *)(& tw_dev->tw_compat_info.driver_version), "2.26.02.014", 32UL);
  tw_dev->tw_compat_info.driver_srl_high = 35U;
  tw_dev->tw_compat_info.driver_branch_high = 0U;
  tw_dev->tw_compat_info.driver_build_high = 0U;
  tw_dev->tw_compat_info.driver_srl_low = 24U;
  tw_dev->tw_compat_info.driver_branch_low = 0U;
  tw_dev->tw_compat_info.driver_build_low = 1U;
  tw_dev->tw_compat_info.fw_on_ctlr_srl = fw_on_ctlr_srl;
  tw_dev->tw_compat_info.fw_on_ctlr_branch = fw_on_ctlr_branch;
  tw_dev->tw_compat_info.fw_on_ctlr_build = fw_on_ctlr_build;
  retval = 0;
  out: ;
  return (retval);
}
}
static long twa_chrdev_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct inode *inode ;
  struct inode *tmp ;
  long timeout ;
  unsigned long *cpu_addr ;
  unsigned long data_buffer_length_adjusted ;
  unsigned long flags ;
  dma_addr_t dma_handle ;
  int request_id ;
  unsigned int sequence_id ;
  unsigned char event_index ;
  unsigned char start_index ;
  TW_Ioctl_Driver_Command driver_command ;
  TW_Ioctl_Buf_Apache *tw_ioctl ;
  TW_Lock *tw_lock ;
  TW_Command_Full *full_command_packet ;
  TW_Compatibility_Info *tw_compat_info ;
  TW_Event *event ;
  struct timeval current_time ;
  u32 current_time_ms ;
  TW_Device_Extension *tw_dev ;
  unsigned int tmp___0 ;
  int retval ;
  void *argp ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  void *tmp___3 ;
  unsigned long tmp___4 ;
  raw_spinlock_t *tmp___5 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___6 ;
  bool __cond ;
  bool __cond___0 ;
  raw_spinlock_t *tmp___7 ;
  unsigned long tmp___8 ;
  {
  tmp = file_inode((struct file const *)file);
  inode = tmp;
  data_buffer_length_adjusted = 0UL;
  flags = 0UL;
  request_id = 0;
  sequence_id = 0U;
  tmp___0 = iminor((struct inode const *)inode);
  tw_dev = twa_device_extension_list[tmp___0];
  retval = -14;
  argp = (void *)arg;
  ldv_mutex_lock_13(& twa_chrdev_mutex);
  tmp___1 = ldv_mutex_lock_interruptible_14(& tw_dev->ioctl_lock);
  if (tmp___1 != 0) {
    retval = -4;
    goto out;
  } else {
  }
  tmp___2 = copy_from_user((void *)(& driver_command), (void const *)argp, 24UL);
  if (tmp___2 != 0UL) {
    goto out2;
  } else {
  }
  if (driver_command.buffer_length > 524288U) {
    retval = -22;
    goto out2;
  } else {
  }
  data_buffer_length_adjusted = (unsigned long )(driver_command.buffer_length + 511U) & 4294966784UL;
  tmp___3 = dma_alloc_attrs(& (tw_dev->tw_pci_dev)->dev, data_buffer_length_adjusted + 1536UL,
                            & dma_handle, 208U, (struct dma_attrs *)0);
  cpu_addr = (unsigned long *)tmp___3;
  if ((unsigned long )cpu_addr == (unsigned long )((unsigned long *)0UL)) {
    retval = -12;
    goto out2;
  } else {
  }
  tw_ioctl = (TW_Ioctl_Buf_Apache *)cpu_addr;
  tmp___4 = copy_from_user((void *)tw_ioctl, (void const *)argp, (unsigned long )driver_command.buffer_length + 1536UL);
  if (tmp___4 != 0UL) {
    goto out3;
  } else {
  }
  switch (cmd) {
  case 264U:
  tmp___5 = spinlock_check((tw_dev->host)->host_lock);
  flags = _raw_spin_lock_irqsave(tmp___5);
  twa_get_request_id(tw_dev, & request_id);
  tw_dev->srb[request_id] = (struct scsi_cmnd *)0;
  tw_dev->chrdev_request_id = request_id;
  full_command_packet = & tw_ioctl->firmware_command;
  twa_load_sgl(tw_dev, full_command_packet, request_id, dma_handle, (int )data_buffer_length_adjusted);
  memcpy((void *)tw_dev->command_packet_virt[request_id], (void const *)(& tw_ioctl->firmware_command),
           1024UL);
  twa_post_command_packet(tw_dev, request_id, 1);
  spin_unlock_irqrestore((tw_dev->host)->host_lock, flags);
  timeout = 15000L;
  __ret = timeout;
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6280/dscv_tempdir/dscv/ri/32_7a/drivers/scsi/3w-9xxx.c",
                709, 0);
  __cond___0 = tw_dev->chrdev_request_id == -1;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = timeout;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_37539:
    tmp___6 = prepare_to_wait_event(& tw_dev->ioctl_wqueue, & __wait, 2);
    __int = tmp___6;
    __cond = tw_dev->chrdev_request_id == -1;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_37538;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_37539;
    ldv_37538:
    finish_wait(& tw_dev->ioctl_wqueue, & __wait);
    __ret = __ret___0;
  } else {
  }
  timeout = __ret;
  if (tw_dev->chrdev_request_id != -1) {
    printk("cw-9xxx: scsi%d: WARNING: (0x%02X:0x%04X): Character ioctl (0x%x) timed out, resetting card.\n",
           (tw_dev->host)->host_no, 6, 55, cmd);
    retval = -5;
    twa_reset_device_extension(tw_dev);
    goto out3;
  } else {
  }
  memcpy((void *)(& tw_ioctl->firmware_command), (void const *)tw_dev->command_packet_virt[request_id],
           1024UL);
  tmp___7 = spinlock_check((tw_dev->host)->host_lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
  tw_dev->state[request_id] = 16;
  twa_free_request_id(tw_dev, request_id);
  spin_unlock_irqrestore((tw_dev->host)->host_lock, flags);
  goto ldv_37545;
  case 257U:
  tw_ioctl->driver_command.status = 0U;
  tw_compat_info = (TW_Compatibility_Info *)(& tw_ioctl->data_buffer);
  memcpy((void *)tw_compat_info, (void const *)(& tw_dev->tw_compat_info), 56UL);
  goto ldv_37545;
  case 258U: ;
  if ((unsigned int )tw_dev->event_queue_wrapped != 0U) {
    if ((int )((signed char )tw_dev->aen_clobber) != 0) {
      tw_ioctl->driver_command.status = 4100U;
      tw_dev->aen_clobber = 0;
    } else {
      tw_ioctl->driver_command.status = 0U;
    }
  } else {
    if ((unsigned int )tw_dev->error_index == 0U) {
      tw_ioctl->driver_command.status = 4099U;
      goto ldv_37545;
    } else {
    }
    tw_ioctl->driver_command.status = 0U;
  }
  event_index = (unsigned char )(((int )tw_dev->error_index + 255) % 256);
  memcpy((void *)(& tw_ioctl->data_buffer), (void const *)tw_dev->event_queue[(int )event_index],
           112UL);
  (tw_dev->event_queue[(int )event_index])->retrieved = 2U;
  goto ldv_37545;
  case 259U: ;
  if ((unsigned int )tw_dev->event_queue_wrapped != 0U) {
    if ((int )((signed char )tw_dev->aen_clobber) != 0) {
      tw_ioctl->driver_command.status = 4100U;
      tw_dev->aen_clobber = 0;
    } else {
      tw_ioctl->driver_command.status = 0U;
    }
    event_index = tw_dev->error_index;
  } else {
    if ((unsigned int )tw_dev->error_index == 0U) {
      tw_ioctl->driver_command.status = 4099U;
      goto ldv_37545;
    } else {
    }
    tw_ioctl->driver_command.status = 0U;
    event_index = 0U;
  }
  memcpy((void *)(& tw_ioctl->data_buffer), (void const *)tw_dev->event_queue[(int )event_index],
           112UL);
  (tw_dev->event_queue[(int )event_index])->retrieved = 2U;
  goto ldv_37545;
  case 260U:
  event = (TW_Event *)(& tw_ioctl->data_buffer);
  sequence_id = event->sequence_id;
  tw_ioctl->driver_command.status = 0U;
  if ((unsigned int )tw_dev->event_queue_wrapped != 0U) {
    if ((int )((signed char )tw_dev->aen_clobber) != 0) {
      tw_ioctl->driver_command.status = 4100U;
      tw_dev->aen_clobber = 0;
    } else {
    }
    start_index = tw_dev->error_index;
  } else {
    if ((unsigned int )tw_dev->error_index == 0U) {
      tw_ioctl->driver_command.status = 4099U;
      goto ldv_37545;
    } else {
    }
    start_index = 0U;
  }
  event_index = (unsigned int )(((int )((unsigned char )sequence_id) + (int )start_index) - (int )((unsigned char )(tw_dev->event_queue[(int )start_index])->sequence_id)) + 1U;
  if ((tw_dev->event_queue[(int )event_index])->sequence_id <= sequence_id) {
    if (tw_ioctl->driver_command.status == 4100U) {
      tw_dev->aen_clobber = 1;
    } else {
    }
    tw_ioctl->driver_command.status = 4099U;
    goto ldv_37545;
  } else {
  }
  memcpy((void *)(& tw_ioctl->data_buffer), (void const *)tw_dev->event_queue[(int )event_index],
           112UL);
  (tw_dev->event_queue[(int )event_index])->retrieved = 2U;
  goto ldv_37545;
  case 261U:
  event = (TW_Event *)(& tw_ioctl->data_buffer);
  sequence_id = event->sequence_id;
  tw_ioctl->driver_command.status = 0U;
  if ((unsigned int )tw_dev->event_queue_wrapped != 0U) {
    if ((int )((signed char )tw_dev->aen_clobber) != 0) {
      tw_ioctl->driver_command.status = 4100U;
      tw_dev->aen_clobber = 0;
    } else {
    }
    start_index = tw_dev->error_index;
  } else {
    if ((unsigned int )tw_dev->error_index == 0U) {
      tw_ioctl->driver_command.status = 4099U;
      goto ldv_37545;
    } else {
    }
    start_index = 0U;
  }
  event_index = (unsigned int )(((int )((unsigned char )sequence_id) + (int )start_index) - (int )((unsigned char )(tw_dev->event_queue[(int )start_index])->sequence_id)) - 1U;
  if ((tw_dev->event_queue[(int )event_index])->sequence_id >= sequence_id) {
    if (tw_ioctl->driver_command.status == 4100U) {
      tw_dev->aen_clobber = 1;
    } else {
    }
    tw_ioctl->driver_command.status = 4099U;
    goto ldv_37545;
  } else {
  }
  memcpy((void *)(& tw_ioctl->data_buffer), (void const *)tw_dev->event_queue[(int )event_index],
           112UL);
  (tw_dev->event_queue[(int )event_index])->retrieved = 2U;
  goto ldv_37545;
  case 262U:
  tw_lock = (TW_Lock *)(& tw_ioctl->data_buffer);
  do_gettimeofday(& current_time);
  current_time_ms = (u32 )current_time.tv_sec * 1000U + (u32 )(current_time.tv_usec / 1000L);
  if ((tw_lock->force_flag == 1UL || tw_dev->ioctl_sem_lock == 0) || tw_dev->ioctl_msec <= current_time_ms) {
    tw_dev->ioctl_sem_lock = 1;
    tw_dev->ioctl_msec = (u32 )tw_lock->timeout_msec + current_time_ms;
    tw_ioctl->driver_command.status = 0U;
    tw_lock->time_remaining_msec = tw_lock->timeout_msec;
  } else {
    tw_ioctl->driver_command.status = 4098U;
    tw_lock->time_remaining_msec = (unsigned long )(tw_dev->ioctl_msec - current_time_ms);
  }
  goto ldv_37545;
  case 263U: ;
  if (tw_dev->ioctl_sem_lock == 1) {
    tw_dev->ioctl_sem_lock = 0;
    tw_ioctl->driver_command.status = 0U;
  } else {
    tw_ioctl->driver_command.status = 4097U;
  }
  goto ldv_37545;
  default:
  retval = -25;
  goto out3;
  }
  ldv_37545:
  tmp___8 = copy_to_user(argp, (void const *)tw_ioctl, (unsigned long )driver_command.buffer_length + 1536UL);
  if (tmp___8 == 0UL) {
    retval = 0;
  } else {
  }
  out3:
  dma_free_attrs(& (tw_dev->tw_pci_dev)->dev, data_buffer_length_adjusted + 1536UL,
                 (void *)cpu_addr, dma_handle, (struct dma_attrs *)0);
  out2:
  ldv_mutex_unlock_15(& tw_dev->ioctl_lock);
  out:
  ldv_mutex_unlock_16(& twa_chrdev_mutex);
  return ((long )retval);
}
}
static int twa_chrdev_open(struct inode *inode , struct file *file )
{
  unsigned int minor_number ;
  int retval ;
  {
  retval = -19;
  minor_number = iminor((struct inode const *)inode);
  if (minor_number >= twa_device_extension_count) {
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_decode_bits(TW_Device_Extension *tw_dev , u32 status_reg_value )
{
  int retval ;
  int tmp ;
  {
  retval = 1;
  if ((status_reg_value & 8388608U) != 0U) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 12, (char *)"PCI Parity Error: clearing");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 12, (char *)"PCI Parity Error: clearing");
    }
    writel(8388608U, (void volatile *)tw_dev->base_addr);
  } else {
  }
  if ((status_reg_value & 1048576U) != 0U) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 13, (char *)"PCI Abort: clearing");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 13, (char *)"PCI Abort: clearing");
    }
    writel(1048576U, (void volatile *)tw_dev->base_addr);
    pci_write_config_word((struct pci_dev const *)tw_dev->tw_pci_dev, 6, 8192);
  } else {
  }
  if ((status_reg_value & 4194304U) != 0U) {
    if ((unsigned int )(tw_dev->tw_pci_dev)->device != 4100U && (unsigned int )(tw_dev->tw_pci_dev)->device != 4101U) {
      goto _L;
    } else {
      tmp = constant_test_bit(2L, (unsigned long const volatile *)(& tw_dev->flags));
      if (tmp == 0) {
        _L:
        if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
          printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
                 6, 14, (char *)"Controller Queue Error: clearing");
        } else {
          printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 14, (char *)"Controller Queue Error: clearing");
        }
      } else {
      }
    }
    writel(4194304U, (void volatile *)tw_dev->base_addr);
  } else {
  }
  if ((status_reg_value & 2097152U) != 0U) {
    if (tw_dev->reset_print == 0) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 16, (char *)"Microcontroller Error: clearing");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 16, (char *)"Microcontroller Error: clearing");
      }
      tw_dev->reset_print = 1;
    } else {
    }
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_empty_response_queue(TW_Device_Extension *tw_dev )
{
  u32 status_reg_value ;
  u32 response_que_value ;
  int count ;
  int retval ;
  {
  count = 0;
  retval = 1;
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  goto ldv_37575;
  ldv_37574:
  response_que_value = readl((void const volatile *)tw_dev->base_addr + 12U);
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  count = count + 1;
  ldv_37575: ;
  if ((status_reg_value & 16384U) == 0U && count <= 255) {
    goto ldv_37574;
  } else {
  }
  if (count == 256) {
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_empty_response_queue_large(TW_Device_Extension *tw_dev )
{
  u32 response_que_value ;
  unsigned long before ;
  int retval ;
  {
  response_que_value = 0U;
  retval = 1;
  if ((unsigned int )(tw_dev->tw_pci_dev)->device != 4098U) {
    before = jiffies;
    goto ldv_37592;
    ldv_37591:
    response_que_value = readl((void const volatile *)tw_dev->base_addr + 48U);
    msleep(1U);
    if ((long )((before - (unsigned long )jiffies) + 7500UL) < 0L) {
      goto out;
    } else {
    }
    ldv_37592: ;
    if ((response_que_value & 65535U) != 65535U) {
      goto ldv_37591;
    } else {
    }
    msleep(500U);
    retval = 0;
  } else {
    retval = 0;
  }
  out: ;
  return (retval);
}
}
static int twa_fill_sense(TW_Device_Extension *tw_dev , int request_id , int copy_sense ,
                          int print_host )
{
  TW_Command_Full *full_command_packet ;
  unsigned short error ;
  int retval ;
  char *error_str ;
  size_t tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  {
  retval = 1;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  tmp = strlen((char const *)(& full_command_packet->header.err_specific_desc));
  error_str = (char *)(& full_command_packet->header.err_specific_desc) + (tmp + 1UL);
  error = full_command_packet->header.status_block.error;
  if ((unsigned int )error != 266U && (unsigned int )error != 296U) {
    if (print_host != 0) {
      if ((int )((signed char )*error_str) == 0) {
        tmp___0 = twa_string_lookup((twa_message_type *)(& twa_error_table), (unsigned int )full_command_packet->header.status_block.error);
        tmp___1 = tmp___0;
      } else {
        tmp___1 = error_str;
      }
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s:%s.\n", (tw_dev->host)->host_no,
             3, (int )full_command_packet->header.status_block.error, tmp___1, (unsigned char *)(& full_command_packet->header.err_specific_desc));
    } else {
      if ((int )((signed char )*error_str) == 0) {
        tmp___2 = twa_string_lookup((twa_message_type *)(& twa_error_table), (unsigned int )full_command_packet->header.status_block.error);
        tmp___3 = tmp___2;
      } else {
        tmp___3 = error_str;
      }
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s:%s.\n", 3, (int )full_command_packet->header.status_block.error,
             tmp___3, (unsigned char *)(& full_command_packet->header.err_specific_desc));
    }
  } else {
  }
  if (copy_sense != 0) {
    memcpy((void *)(tw_dev->srb[request_id])->sense_buffer, (void const *)(& full_command_packet->header.sense_data),
             18UL);
    (tw_dev->srb[request_id])->result = (int )full_command_packet->command.newcommand.status << 1;
    retval = 3;
    goto out;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static void twa_free_device_extension(TW_Device_Extension *tw_dev )
{
  {
  if ((unsigned long )tw_dev->command_packet_virt[0] != (unsigned long )((TW_Command_Full *)0)) {
    pci_free_consistent(tw_dev->tw_pci_dev, 262144UL, (void *)tw_dev->command_packet_virt[0],
                        tw_dev->command_packet_phys[0]);
  } else {
  }
  if ((unsigned long )tw_dev->generic_buffer_virt[0] != (unsigned long )((unsigned long *)0UL)) {
    pci_free_consistent(tw_dev->tw_pci_dev, 131072UL, (void *)tw_dev->generic_buffer_virt[0],
                        tw_dev->generic_buffer_phys[0]);
  } else {
  }
  kfree((void const *)tw_dev->event_queue[0]);
  return;
}
}
static void twa_free_request_id(TW_Device_Extension *tw_dev , int request_id )
{
  {
  tw_dev->free_queue[(int )tw_dev->free_tail] = (unsigned char )request_id;
  tw_dev->state[request_id] = 32;
  tw_dev->free_tail = (unsigned char )(((int )tw_dev->free_tail + 1) % 256);
  return;
}
}
static void *twa_get_param(TW_Device_Extension *tw_dev , int request_id , int table_id ,
                           int parameter_id , int parameter_size_bytes )
{
  TW_Command_Full *full_command_packet ;
  TW_Command *command_packet ;
  TW_Param_Apache *param ;
  void *retval ;
  int tmp ;
  {
  retval = (void *)0;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  memset((void *)full_command_packet, 0, 1024UL);
  command_packet = & full_command_packet->command.oldcommand;
  command_packet->opcode__sgloffset = 82U;
  command_packet->size = 5U;
  command_packet->request_id = (unsigned char )request_id;
  command_packet->byte6_offset.block_count = 1U;
  param = (TW_Param_Apache *)tw_dev->generic_buffer_virt[request_id];
  memset((void *)param, 0, 512UL);
  param->table_id = (unsigned short )((int )((short )table_id) | -32768);
  param->parameter_id = (unsigned short )parameter_id;
  param->parameter_size_bytes = (unsigned short )parameter_size_bytes;
  command_packet->byte8_offset.param.sgl[0].address = tw_dev->generic_buffer_phys[request_id];
  command_packet->byte8_offset.param.sgl[0].length = 512U;
  twa_post_command_packet(tw_dev, request_id, 1);
  tmp = twa_poll_response(tw_dev, request_id, 30);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 19, (char *)"No valid response during get param");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 19, (char *)"No valid response during get param");
    }
  } else {
    retval = (void *)(& param->data);
  }
  tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
  tw_dev->state[request_id] = 1;
  return (retval);
}
}
static void twa_get_request_id(TW_Device_Extension *tw_dev , int *request_id )
{
  {
  *request_id = (int )tw_dev->free_queue[(int )tw_dev->free_head];
  tw_dev->free_head = (unsigned char )(((int )tw_dev->free_head + 1) % 256);
  tw_dev->state[*request_id] = 2;
  return;
}
}
static int twa_initconnection(TW_Device_Extension *tw_dev , int message_credits ,
                              u32 set_features , unsigned short current_fw_srl , unsigned short current_fw_arch_id ,
                              unsigned short current_fw_branch , unsigned short current_fw_build ,
                              unsigned short *fw_on_ctlr_srl , unsigned short *fw_on_ctlr_arch_id ,
                              unsigned short *fw_on_ctlr_branch , unsigned short *fw_on_ctlr_build ,
                              u32 *init_connect_result )
{
  TW_Command_Full *full_command_packet ;
  TW_Initconnect *tw_initconnect ;
  int request_id ;
  int retval ;
  int tmp ;
  {
  request_id = 0;
  retval = 1;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  memset((void *)full_command_packet, 0, 1024UL);
  full_command_packet->header.header_desc.size_header = 128U;
  tw_initconnect = (TW_Initconnect *)(& full_command_packet->command.oldcommand);
  tw_initconnect->opcode__reserved = 1U;
  tw_initconnect->request_id = (unsigned char )request_id;
  tw_initconnect->message_credits = (unsigned short )message_credits;
  tw_initconnect->features = set_features;
  tw_initconnect->features = tw_initconnect->features | 1U;
  tw_initconnect->features = tw_initconnect->features;
  if ((set_features & 2U) != 0U) {
    tw_initconnect->size = 6U;
    tw_initconnect->fw_srl = current_fw_srl;
    tw_initconnect->fw_arch_id = current_fw_arch_id;
    tw_initconnect->fw_branch = current_fw_branch;
    tw_initconnect->fw_build = current_fw_build;
  } else {
    tw_initconnect->size = 3U;
  }
  twa_post_command_packet(tw_dev, request_id, 1);
  tmp = twa_poll_response(tw_dev, request_id, 30);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 21, (char *)"No valid response during init connection");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 21, (char *)"No valid response during init connection");
    }
  } else {
    if ((set_features & 2U) != 0U) {
      *fw_on_ctlr_srl = tw_initconnect->fw_srl;
      *fw_on_ctlr_arch_id = tw_initconnect->fw_arch_id;
      *fw_on_ctlr_branch = tw_initconnect->fw_branch;
      *fw_on_ctlr_build = tw_initconnect->fw_build;
      *init_connect_result = tw_initconnect->result;
    } else {
    }
    retval = 0;
  }
  tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
  tw_dev->state[request_id] = 1;
  return (retval);
}
}
static int twa_initialize_device_extension(TW_Device_Extension *tw_dev )
{
  int i ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  retval = 1;
  tmp = twa_allocate_memory(tw_dev, 1024, 0);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 22, (char *)"Command packet memory allocation failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 22, (char *)"Command packet memory allocation failed");
    }
    goto out;
  } else {
  }
  tmp___0 = twa_allocate_memory(tw_dev, 512, 1);
  if (tmp___0 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 23, (char *)"Generic memory allocation failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 23, (char *)"Generic memory allocation failed");
    }
    goto out;
  } else {
  }
  tmp___1 = kcalloc(256UL, 112UL, 208U);
  tw_dev->event_queue[0] = (TW_Event *)tmp___1;
  if ((unsigned long )tw_dev->event_queue[0] == (unsigned long )((TW_Event *)0)) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 24, (char *)"Event info memory allocation failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 24, (char *)"Event info memory allocation failed");
    }
    goto out;
  } else {
  }
  i = 0;
  goto ldv_37652;
  ldv_37651:
  tw_dev->event_queue[i] = tw_dev->event_queue[0] + (unsigned long )i * 112UL;
  tw_dev->free_queue[i] = (unsigned char )i;
  tw_dev->state[i] = 1;
  i = i + 1;
  ldv_37652: ;
  if (i <= 255) {
    goto ldv_37651;
  } else {
  }
  tw_dev->pending_head = 0U;
  tw_dev->pending_tail = 0U;
  tw_dev->free_head = 0U;
  tw_dev->free_tail = 0U;
  tw_dev->error_sequence_id = 1U;
  tw_dev->chrdev_request_id = -1;
  __mutex_init(& tw_dev->ioctl_lock, "&tw_dev->ioctl_lock", & __key);
  __init_waitqueue_head(& tw_dev->ioctl_wqueue, "&tw_dev->ioctl_wqueue", & __key___0);
  retval = 0;
  out: ;
  return (retval);
}
}
static irqreturn_t twa_interrupt(int irq , void *dev_instance )
{
  int request_id ;
  int error ;
  u32 status_reg_value ;
  TW_Response_Queue response_que ;
  TW_Command_Full *full_command_packet ;
  TW_Device_Extension *tw_dev ;
  int handled ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct scsi_cmnd *cmd ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  error = 0;
  tw_dev = (TW_Device_Extension *)dev_instance;
  handled = 0;
  spin_lock((tw_dev->host)->host_lock);
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  if ((status_reg_value & 14614528U) == 0U) {
    goto twa_interrupt_bail;
  } else {
  }
  handled = 1;
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp != 0) {
    goto twa_interrupt_bail;
  } else {
  }
  tmp___1 = twa_check_bits(status_reg_value);
  if (tmp___1 != 0) {
    tmp___0 = twa_decode_bits(tw_dev, status_reg_value);
    if (tmp___0 != 0) {
      writel(14614528U, (void volatile *)tw_dev->base_addr);
      goto twa_interrupt_bail;
    } else {
    }
  } else {
  }
  if ((status_reg_value & 524288U) != 0U) {
    writel(524288U, (void volatile *)tw_dev->base_addr);
  } else {
  }
  if ((status_reg_value & 262144U) != 0U) {
    writel(262144U, (void volatile *)tw_dev->base_addr);
    tmp___2 = test_and_set_bit(4L, (unsigned long volatile *)(& tw_dev->flags));
    if (tmp___2 == 0) {
      twa_get_request_id(tw_dev, & request_id);
      error = twa_aen_read_queue(tw_dev, request_id);
      if (error != 0) {
        tw_dev->state[request_id] = 16;
        twa_free_request_id(tw_dev, request_id);
        clear_bit(4L, (unsigned long volatile *)(& tw_dev->flags));
      } else {
      }
    } else {
    }
  } else {
  }
  if ((status_reg_value & 131072U) != 0U) {
    writel(131072U, (void volatile *)tw_dev->base_addr);
    goto ldv_37670;
    ldv_37669:
    request_id = (int )tw_dev->pending_queue[(int )tw_dev->pending_head];
    if (tw_dev->state[request_id] != 8) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 25, (char *)"Found request id that wasn\'t pending");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 25, (char *)"Found request id that wasn\'t pending");
      }
      writel(14614528U, (void volatile *)tw_dev->base_addr);
      goto twa_interrupt_bail;
    } else {
    }
    tmp___3 = twa_post_command_packet(tw_dev, request_id, 1);
    if (tmp___3 == 0) {
      tw_dev->pending_head = (unsigned char )(((int )tw_dev->pending_head + 1) % 256);
      tw_dev->pending_request_count = tw_dev->pending_request_count - 1U;
    } else {
      goto ldv_37668;
    }
    ldv_37670: ;
    if (tw_dev->pending_request_count != 0U) {
      goto ldv_37669;
    } else {
    }
    ldv_37668: ;
  } else {
  }
  if ((status_reg_value & 65536U) != 0U) {
    goto ldv_37673;
    ldv_37672:
    response_que.value = readl((void const volatile *)tw_dev->base_addr + 12U);
    request_id = (int )(response_que.response_id >> 4) & 255;
    full_command_packet = tw_dev->command_packet_virt[request_id];
    error = 0;
    if ((unsigned int )full_command_packet->command.newcommand.status != 0U) {
      if ((unsigned long )tw_dev->srb[request_id] != (unsigned long )((struct scsi_cmnd *)0)) {
        error = twa_fill_sense(tw_dev, request_id, 1, 1);
      } else
      if (tw_dev->chrdev_request_id != request_id) {
        error = twa_fill_sense(tw_dev, request_id, 0, 1);
      } else {
      }
    } else {
    }
    if (tw_dev->state[request_id] != 4) {
      if ((unsigned long )tw_dev->srb[request_id] != (unsigned long )((struct scsi_cmnd *)0)) {
        if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
          printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
                 6, 26, (char *)"Received a request id that wasn\'t posted");
        } else {
          printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 26, (char *)"Received a request id that wasn\'t posted");
        }
        writel(14614528U, (void volatile *)tw_dev->base_addr);
        goto twa_interrupt_bail;
      } else {
      }
    } else {
    }
    if ((unsigned long )tw_dev->srb[request_id] == (unsigned long )((struct scsi_cmnd *)0)) {
      if (tw_dev->chrdev_request_id != request_id) {
        tmp___4 = twa_aen_complete(tw_dev, request_id);
        if (tmp___4 != 0) {
          if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
            printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
                   6, 27, (char *)"Error completing AEN during attention interrupt");
          } else {
            printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 27, (char *)"Error completing AEN during attention interrupt");
          }
        } else {
        }
      } else {
        tw_dev->chrdev_request_id = -1;
        __wake_up(& tw_dev->ioctl_wqueue, 3U, 1, (void *)0);
      }
    } else {
      cmd = tw_dev->srb[request_id];
      twa_scsiop_execute_scsi_complete(tw_dev, request_id);
      if (error == 0) {
        cmd->result = 0;
      } else {
      }
      if (error == 1) {
        cmd->result = 2;
      } else {
      }
      tmp___7 = scsi_sg_count(cmd);
      if (tmp___7 <= 1U && (unsigned int )full_command_packet->command.newcommand.status == 0U) {
        tmp___6 = scsi_bufflen(tw_dev->srb[request_id]);
        if (full_command_packet->command.newcommand.sg_list[0].length < tmp___6) {
          tmp___5 = scsi_bufflen(cmd);
          scsi_set_resid(cmd, (int )(tmp___5 - full_command_packet->command.newcommand.sg_list[0].length));
        } else {
        }
      } else {
      }
      scsi_dma_unmap(cmd);
      (*(cmd->scsi_done))(cmd);
      tw_dev->state[request_id] = 16;
      twa_free_request_id(tw_dev, request_id);
      tw_dev->posted_request_count = tw_dev->posted_request_count - 1U;
    }
    status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
    tmp___9 = twa_check_bits(status_reg_value);
    if (tmp___9 != 0) {
      tmp___8 = twa_decode_bits(tw_dev, status_reg_value);
      if (tmp___8 != 0) {
        writel(14614528U, (void volatile *)tw_dev->base_addr);
        goto twa_interrupt_bail;
      } else {
      }
    } else {
    }
    ldv_37673: ;
    if ((status_reg_value & 16384U) == 0U) {
      goto ldv_37672;
    } else {
    }
  } else {
  }
  twa_interrupt_bail:
  spin_unlock((tw_dev->host)->host_lock);
  return (handled != 0);
}
}
static void twa_load_sgl(TW_Device_Extension *tw_dev , TW_Command_Full *full_command_packet ,
                         int request_id , dma_addr_t dma_handle , int length )
{
  TW_Command *oldcommand ;
  TW_Command_Apache *newcommand ;
  TW_SG_Entry *sgl ;
  unsigned int pae ;
  {
  pae = 0U;
  if (((int )full_command_packet->command.newcommand.opcode__reserved & 31) == 16) {
    newcommand = & full_command_packet->command.newcommand;
    newcommand->request_id__lunl = (unsigned short )(((int )((short )(((int )newcommand->request_id__lunl >> 12) << 12)) & -4096) | ((int )((short )request_id) & 4095));
    if (length != 0) {
      newcommand->sg_list[0].address = dma_handle + 1536ULL;
      newcommand->sg_list[0].length = (unsigned int )length;
    } else {
    }
    newcommand->sgl_entries__lunh = (unsigned short )(((int )((short )(((int )newcommand->sgl_entries__lunh >> 12) << 12)) & -4096) | (length != 0 ? 1 : 0));
  } else {
    oldcommand = & full_command_packet->command.oldcommand;
    oldcommand->request_id = (unsigned char )request_id;
    if ((((int )oldcommand->opcode__sgloffset >> 5) & 7) != 0) {
      if ((unsigned int )(tw_dev->tw_pci_dev)->device == 4101U) {
        sgl = (TW_SG_Entry *)oldcommand + (((unsigned long )oldcommand->size + (unsigned long )pae) + 0xfffffffffffffffdUL);
      } else {
        sgl = (TW_SG_Entry *)oldcommand + ((unsigned long )((int )oldcommand->opcode__sgloffset >> 5) & 7UL);
      }
      sgl->address = dma_handle + 1536ULL;
      sgl->length = (unsigned int )length;
      oldcommand->size = (int )oldcommand->size + (int )((unsigned char )pae);
    } else {
    }
  }
  return;
}
}
static int twa_poll_response(TW_Device_Extension *tw_dev , int request_id , int seconds )
{
  int retval ;
  int found ;
  int response_request_id ;
  TW_Response_Queue response_queue ;
  TW_Command_Full *full_command_packet ;
  int tmp ;
  {
  retval = 1;
  found = 0;
  full_command_packet = tw_dev->command_packet_virt[request_id];
  tmp = twa_poll_status_gone(tw_dev, 16384U, seconds);
  if (tmp == 0) {
    response_queue.value = readl((void const volatile *)tw_dev->base_addr + 12U);
    response_request_id = (int )(response_queue.response_id >> 4) & 255;
    if (request_id != response_request_id) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 30, (char *)"Found unexpected request id while polling for response");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 30, (char *)"Found unexpected request id while polling for response");
      }
      goto out;
    } else {
    }
    if (((int )full_command_packet->command.newcommand.opcode__reserved & 31) == 16) {
      if ((unsigned int )full_command_packet->command.newcommand.status != 0U) {
        twa_fill_sense(tw_dev, request_id, 0, 0);
        goto out;
      } else {
      }
      found = 1;
    } else {
      if ((unsigned int )full_command_packet->command.oldcommand.status != 0U) {
        twa_fill_sense(tw_dev, request_id, 0, 0);
        goto out;
      } else {
      }
      found = 1;
    }
  } else {
  }
  if (found != 0) {
    retval = 0;
  } else {
  }
  out: ;
  return (retval);
}
}
static int twa_poll_status(TW_Device_Extension *tw_dev , u32 flag , int seconds )
{
  u32 status_reg_value ;
  unsigned long before ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  {
  retval = 1;
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  before = jiffies;
  tmp = twa_check_bits(status_reg_value);
  if (tmp != 0) {
    twa_decode_bits(tw_dev, status_reg_value);
  } else {
  }
  goto ldv_37713;
  ldv_37712:
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  tmp___0 = twa_check_bits(status_reg_value);
  if (tmp___0 != 0) {
    twa_decode_bits(tw_dev, status_reg_value);
  } else {
  }
  if ((long )(((unsigned long )(seconds * 250) + before) - (unsigned long )jiffies) < 0L) {
    goto out;
  } else {
  }
  msleep(50U);
  ldv_37713: ;
  if ((status_reg_value & flag) != flag) {
    goto ldv_37712;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_poll_status_gone(TW_Device_Extension *tw_dev , u32 flag , int seconds )
{
  u32 status_reg_value ;
  unsigned long before ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  {
  retval = 1;
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  before = jiffies;
  tmp = twa_check_bits(status_reg_value);
  if (tmp != 0) {
    twa_decode_bits(tw_dev, status_reg_value);
  } else {
  }
  goto ldv_37731;
  ldv_37730:
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  tmp___0 = twa_check_bits(status_reg_value);
  if (tmp___0 != 0) {
    twa_decode_bits(tw_dev, status_reg_value);
  } else {
  }
  if ((long )(((unsigned long )(seconds * 250) + before) - (unsigned long )jiffies) < 0L) {
    goto out;
  } else {
  }
  msleep(50U);
  ldv_37731: ;
  if ((status_reg_value & flag) != 0U) {
    goto ldv_37730;
  } else {
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_post_command_packet(TW_Device_Extension *tw_dev , int request_id ,
                                   char internal )
{
  u32 status_reg_value ;
  dma_addr_t command_que_value ;
  int retval ;
  int tmp ;
  {
  retval = 1;
  command_que_value = tw_dev->command_packet_phys[request_id];
  if ((unsigned int )(tw_dev->tw_pci_dev)->device == 4100U || (unsigned int )(tw_dev->tw_pci_dev)->device == 4101U) {
    command_que_value = command_que_value + 128ULL;
    writel((unsigned int )command_que_value, (void volatile *)tw_dev->base_addr + 32U);
  } else {
  }
  status_reg_value = readl((void const volatile *)tw_dev->base_addr + 4U);
  tmp = twa_check_bits(status_reg_value);
  if (tmp != 0) {
    twa_decode_bits(tw_dev, status_reg_value);
  } else {
  }
  if ((tw_dev->pending_request_count != 0U && tw_dev->state[request_id] != 8) || (status_reg_value & 32768U) != 0U) {
    if ((int )((signed char )internal) == 0) {
      retval = 4181;
      goto out;
    } else {
    }
    if (tw_dev->state[request_id] != 8) {
      tw_dev->state[request_id] = 8;
      tw_dev->pending_request_count = tw_dev->pending_request_count + 1U;
      if (tw_dev->pending_request_count > tw_dev->max_pending_request_count) {
        tw_dev->max_pending_request_count = tw_dev->pending_request_count;
      } else {
      }
      tw_dev->pending_queue[(int )tw_dev->pending_tail] = (unsigned char )request_id;
      tw_dev->pending_tail = (unsigned char )(((int )tw_dev->pending_tail + 1) % 256);
    } else {
    }
    writel(32768U, (void volatile *)tw_dev->base_addr);
    goto out;
  } else {
    if ((unsigned int )(tw_dev->tw_pci_dev)->device == 4100U || (unsigned int )(tw_dev->tw_pci_dev)->device == 4101U) {
      writel((unsigned int )(command_que_value >> 32), (void volatile *)tw_dev->base_addr + 36U);
    } else {
      command_que_value = command_que_value + 128ULL;
      writel((unsigned int )command_que_value, (void volatile *)tw_dev->base_addr + 32U);
      writel((unsigned int )(command_que_value >> 32), (void volatile *)tw_dev->base_addr + 36U);
    }
    tw_dev->state[request_id] = 4;
    tw_dev->posted_request_count = tw_dev->posted_request_count + 1U;
    if (tw_dev->posted_request_count > tw_dev->max_posted_request_count) {
      tw_dev->max_posted_request_count = tw_dev->posted_request_count;
    } else {
    }
  }
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_reset_device_extension(TW_Device_Extension *tw_dev )
{
  int i ;
  int retval ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct scsi_cmnd *cmd ;
  int tmp___0 ;
  {
  i = 0;
  retval = 1;
  flags = 0UL;
  set_bit(2L, (unsigned long volatile *)(& tw_dev->flags));
  writel(64U, (void volatile *)tw_dev->base_addr);
  writel(131072U, (void volatile *)tw_dev->base_addr);
  tmp = spinlock_check((tw_dev->host)->host_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_37753;
  ldv_37752: ;
  if ((tw_dev->state[i] != 32 && tw_dev->state[i] != 1) && tw_dev->state[i] != 16) {
    if ((unsigned long )tw_dev->srb[i] != (unsigned long )((struct scsi_cmnd *)0)) {
      cmd = tw_dev->srb[i];
      cmd->result = 524288;
      scsi_dma_unmap(cmd);
      (*(cmd->scsi_done))(cmd);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_37753: ;
  if (i <= 255) {
    goto ldv_37752;
  } else {
  }
  i = 0;
  goto ldv_37756;
  ldv_37755:
  tw_dev->free_queue[i] = (unsigned char )i;
  tw_dev->state[i] = 1;
  i = i + 1;
  ldv_37756: ;
  if (i <= 255) {
    goto ldv_37755;
  } else {
  }
  tw_dev->free_head = 0U;
  tw_dev->free_tail = 0U;
  tw_dev->posted_request_count = 0U;
  tw_dev->pending_request_count = 0U;
  tw_dev->pending_head = 0U;
  tw_dev->pending_tail = 0U;
  tw_dev->reset_print = 0;
  spin_unlock_irqrestore((tw_dev->host)->host_lock, flags);
  tmp___0 = twa_reset_sequence(tw_dev, 1);
  if (tmp___0 != 0) {
    goto out;
  } else {
  }
  writel(278656U, (void volatile *)tw_dev->base_addr);
  clear_bit(2L, (unsigned long volatile *)(& tw_dev->flags));
  tw_dev->chrdev_request_id = -1;
  retval = 0;
  out: ;
  return (retval);
}
}
static int twa_reset_sequence(TW_Device_Extension *tw_dev , int soft_reset )
{
  int tries ;
  int retval ;
  int flashed ;
  int do_soft_reset ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tries = 0;
  retval = 1;
  flashed = 0;
  do_soft_reset = soft_reset;
  goto ldv_37767;
  ldv_37769: ;
  if (do_soft_reset != 0) {
    writel(983872U, (void volatile *)tw_dev->base_addr);
    tmp = twa_empty_response_queue_large(tw_dev);
    if (tmp != 0) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 54, (char *)"Response queue (large) empty failed during reset sequence");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 54, (char *)"Response queue (large) empty failed during reset sequence");
      }
      do_soft_reset = 1;
      tries = tries + 1;
      goto ldv_37767;
    } else {
    }
  } else {
  }
  tmp___0 = twa_poll_status(tw_dev, do_soft_reset == 1 ? 270336U : 8192U, 60);
  if (tmp___0 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 31, (char *)"Microcontroller not ready during reset sequence");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 31, (char *)"Microcontroller not ready during reset sequence");
    }
    do_soft_reset = 1;
    tries = tries + 1;
    goto ldv_37767;
  } else {
  }
  tmp___1 = twa_empty_response_queue(tw_dev);
  if (tmp___1 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 32, (char *)"Response queue empty failed during reset sequence");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 32, (char *)"Response queue empty failed during reset sequence");
    }
    do_soft_reset = 1;
    tries = tries + 1;
    goto ldv_37767;
  } else {
  }
  flashed = 0;
  tmp___2 = twa_check_srl(tw_dev, & flashed);
  if (tmp___2 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 33, (char *)"Compatibility check failed during reset sequence");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 33, (char *)"Compatibility check failed during reset sequence");
    }
    do_soft_reset = 1;
    tries = tries + 1;
    goto ldv_37767;
  } else
  if (flashed != 0) {
    tries = tries + 1;
    goto ldv_37767;
  } else {
  }
  tmp___3 = twa_aen_drain_queue(tw_dev, soft_reset);
  if (tmp___3 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 34, (char *)"AEN drain failed during reset sequence");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 34, (char *)"AEN drain failed during reset sequence");
    }
    do_soft_reset = 1;
    tries = tries + 1;
    goto ldv_37767;
  } else {
  }
  retval = 0;
  goto out;
  ldv_37767: ;
  if (tries <= 1) {
    goto ldv_37769;
  } else {
  }
  out: ;
  return (retval);
}
}
static int twa_scsi_biosparam(struct scsi_device *sdev , struct block_device *bdev ,
                              sector_t capacity , int *geom )
{
  int heads ;
  int sectors ;
  int cylinders ;
  TW_Device_Extension *tw_dev ;
  int _res ;
  int _res___0 ;
  {
  tw_dev = (TW_Device_Extension *)(& (sdev->host)->hostdata);
  if (capacity > 2097151UL) {
    heads = 255;
    sectors = 63;
    _res = (int )(capacity % (sector_t )(heads * sectors));
    capacity = capacity / (sector_t )(heads * sectors);
    cylinders = _res;
  } else {
    heads = 64;
    sectors = 32;
    _res___0 = (int )(capacity % (sector_t )(heads * sectors));
    capacity = capacity / (sector_t )(heads * sectors);
    cylinders = _res___0;
  }
  *geom = heads;
  *(geom + 1UL) = sectors;
  *(geom + 2UL) = cylinders;
  return (0);
}
}
static int twa_scsi_eh_reset(struct scsi_cmnd *SCpnt )
{
  TW_Device_Extension *tw_dev ;
  int retval ;
  int tmp ;
  {
  tw_dev = (TW_Device_Extension *)0;
  retval = 8195;
  tw_dev = (TW_Device_Extension *)(& ((SCpnt->device)->host)->hostdata);
  tw_dev->num_resets = tw_dev->num_resets + 1U;
  sdev_prefix_printk("\f", (struct scsi_device const *)SCpnt->device, (char const *)0,
                     "WARNING: (0x%02X:0x%04X): Command (0x%x) timed out, resetting card.\n",
                     6, 44, (int )*(SCpnt->cmnd));
  ldv_mutex_lock_17(& tw_dev->ioctl_lock);
  tmp = twa_reset_device_extension(tw_dev);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 43, (char *)"Controller reset failed during scsi host reset");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 43, (char *)"Controller reset failed during scsi host reset");
    }
    goto out;
  } else {
  }
  retval = 8194;
  out:
  ldv_mutex_unlock_18(& tw_dev->ioctl_lock);
  return (retval);
}
}
static int twa_scsi_queue_lck(struct scsi_cmnd *SCpnt , void (*done)(struct scsi_cmnd * ) )
{
  int request_id ;
  int retval ;
  TW_Device_Extension *tw_dev ;
  int tmp ;
  {
  tw_dev = (TW_Device_Extension *)(& ((SCpnt->device)->host)->hostdata);
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp != 0) {
    retval = 4181;
    goto out;
  } else {
  }
  if ((SCpnt->device)->lun != 0ULL && (unsigned int )tw_dev->tw_compat_info.working_srl <= 27U) {
    SCpnt->result = 262144;
    (*done)(SCpnt);
    retval = 0;
    goto out;
  } else {
  }
  SCpnt->scsi_done = done;
  twa_get_request_id(tw_dev, & request_id);
  tw_dev->srb[request_id] = SCpnt;
  retval = twa_scsiop_execute_scsi(tw_dev, request_id, (char *)0, 0, (TW_SG_Entry *)0);
  switch (retval) {
  case 4181:
  scsi_dma_unmap(SCpnt);
  twa_free_request_id(tw_dev, request_id);
  goto ldv_37801;
  case 1:
  SCpnt->result = 458752;
  scsi_dma_unmap(SCpnt);
  (*done)(SCpnt);
  tw_dev->state[request_id] = 16;
  twa_free_request_id(tw_dev, request_id);
  retval = 0;
  }
  ldv_37801: ;
  out: ;
  return (retval);
}
}
static int twa_scsi_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(shost->host_lock);
  irq_flags = _raw_spin_lock_irqsave(tmp);
  scsi_cmd_get_serial(shost, cmd);
  rc = twa_scsi_queue_lck(cmd, cmd->scsi_done);
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return (rc);
}
}
static int twa_scsiop_execute_scsi(TW_Device_Extension *tw_dev , int request_id ,
                                   char *cdb , int use_sg , TW_SG_Entry *sglistarg )
{
  TW_Command_Full *full_command_packet ;
  TW_Command_Apache *command_packet ;
  u32 num_sectors ;
  int i ;
  int sg_count ;
  struct scsi_cmnd *srb ;
  struct scatterlist *sglist ;
  struct scatterlist *sg ;
  int retval ;
  struct scatterlist *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  {
  num_sectors = 0U;
  srb = (struct scsi_cmnd *)0;
  sglist = (struct scatterlist *)0;
  retval = 1;
  if ((unsigned long )tw_dev->srb[request_id] != (unsigned long )((struct scsi_cmnd *)0)) {
    srb = tw_dev->srb[request_id];
    tmp = scsi_sglist(srb);
    if ((unsigned long )tmp != (unsigned long )((struct scatterlist *)0)) {
      sglist = scsi_sglist(srb);
    } else {
    }
  } else {
  }
  full_command_packet = tw_dev->command_packet_virt[request_id];
  full_command_packet->header.header_desc.size_header = 128U;
  full_command_packet->header.status_block.error = 0U;
  full_command_packet->header.status_block.severity__reserved = 0U;
  command_packet = & full_command_packet->command.newcommand;
  command_packet->status = 0U;
  command_packet->opcode__reserved = 16U;
  if ((unsigned long )cdb == (unsigned long )((char *)0)) {
    memcpy((void *)(& command_packet->cdb), (void const *)srb->cmnd, 16UL);
  } else {
    memcpy((void *)(& command_packet->cdb), (void const *)cdb, 16UL);
  }
  if ((unsigned long )srb != (unsigned long )((struct scsi_cmnd *)0)) {
    command_packet->unit = (unsigned char )(srb->device)->id;
    command_packet->request_id__lunl = (unsigned int )((int )((unsigned short )(srb->device)->lun) << 12U) | ((unsigned int )((unsigned short )request_id) & 4095U);
  } else {
    command_packet->request_id__lunl = (unsigned int )((unsigned short )request_id) & 4095U;
    command_packet->unit = 0U;
  }
  command_packet->sgl_offset = 16U;
  if ((unsigned long )sglistarg == (unsigned long )((TW_SG_Entry *)0)) {
    tmp___3 = scsi_sg_count(srb);
    if (tmp___3 != 0U) {
      tmp___0 = scsi_sg_count(srb);
      if (tmp___0 == 1U) {
        tmp___1 = scsi_bufflen(srb);
        if (tmp___1 <= 511U) {
          if ((unsigned int )srb->sc_data_direction == 1U || (unsigned int )srb->sc_data_direction == 0U) {
            scsi_sg_copy_to_buffer(srb, (void *)tw_dev->generic_buffer_virt[request_id],
                                   512);
          } else {
          }
          command_packet->sg_list[0].address = tw_dev->generic_buffer_phys[request_id];
          command_packet->sg_list[0].length = 512U;
        } else {
          goto _L;
        }
      } else {
        _L:
        sg_count = scsi_dma_map(srb);
        if (sg_count < 0) {
          goto out;
        } else {
        }
        i = 0;
        sg = scsi_sglist(srb);
        goto ldv_37830;
        ldv_37829:
        command_packet->sg_list[i].address = sg->dma_address;
        command_packet->sg_list[i].length = sg->dma_length;
        if ((command_packet->sg_list[i].address & 3ULL) != 0ULL) {
          if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
            printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
                   6, 46, (char *)"Found unaligned sgl address during execute scsi");
          } else {
            printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 46, (char *)"Found unaligned sgl address during execute scsi");
          }
          goto out;
        } else {
        }
        i = i + 1;
        sg = sg_next(sg);
        ldv_37830: ;
        if (i < sg_count) {
          goto ldv_37829;
        } else {
        }
      }
      tmp___2 = scsi_sg_count(tw_dev->srb[request_id]);
      command_packet->sgl_entries__lunh = (unsigned int )((int )((unsigned short )((srb->device)->lun >> 4)) << 12U) | ((unsigned int )((unsigned short )tmp___2) & 4095U);
    } else {
    }
  } else {
    i = 0;
    goto ldv_37833;
    ldv_37832:
    command_packet->sg_list[i].address = (sglistarg + (unsigned long )i)->address;
    command_packet->sg_list[i].length = (sglistarg + (unsigned long )i)->length;
    if ((command_packet->sg_list[i].address & 3ULL) != 0ULL) {
      if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
               6, 47, (char *)"Found unaligned sgl address during internal post");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 47, (char *)"Found unaligned sgl address during internal post");
      }
      goto out;
    } else {
    }
    i = i + 1;
    ldv_37833: ;
    if (i < use_sg) {
      goto ldv_37832;
    } else {
    }
    command_packet->sgl_entries__lunh = (unsigned int )((unsigned short )use_sg) & 4095U;
  }
  if ((unsigned long )srb != (unsigned long )((struct scsi_cmnd *)0)) {
    if ((unsigned int )*(srb->cmnd) == 8U || (unsigned int )*(srb->cmnd) == 10U) {
      num_sectors = (unsigned int )*(srb->cmnd + 4UL);
    } else {
    }
    if ((unsigned int )*(srb->cmnd) == 40U || (unsigned int )*(srb->cmnd) == 42U) {
      num_sectors = (unsigned int )*(srb->cmnd + 8UL) | ((unsigned int )*(srb->cmnd + 7UL) << 8);
    } else {
    }
  } else {
  }
  tw_dev->sector_count = num_sectors;
  if (tw_dev->sector_count > tw_dev->max_sector_count) {
    tw_dev->max_sector_count = tw_dev->sector_count;
  } else {
  }
  if ((unsigned long )srb != (unsigned long )((struct scsi_cmnd *)0)) {
    tw_dev->sgl_entries = scsi_sg_count(tw_dev->srb[request_id]);
    if (tw_dev->sgl_entries > tw_dev->max_sgl_entries) {
      tw_dev->max_sgl_entries = tw_dev->sgl_entries;
    } else {
    }
  } else {
  }
  if ((unsigned long )srb != (unsigned long )((struct scsi_cmnd *)0)) {
    retval = twa_post_command_packet(tw_dev, request_id, 0);
  } else {
    twa_post_command_packet(tw_dev, request_id, 1);
    retval = 0;
  }
  out: ;
  return (retval);
}
}
static void twa_scsiop_execute_scsi_complete(TW_Device_Extension *tw_dev , int request_id )
{
  struct scsi_cmnd *cmd ;
  void *buf ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  cmd = tw_dev->srb[request_id];
  tmp___0 = scsi_bufflen(cmd);
  if (tmp___0 <= 511U && ((unsigned int )cmd->sc_data_direction == 2U || (unsigned int )cmd->sc_data_direction == 0U)) {
    tmp = scsi_sg_count(cmd);
    if (tmp == 1U) {
      buf = (void *)tw_dev->generic_buffer_virt[request_id];
      scsi_sg_copy_from_buffer(cmd, buf, 512);
    } else {
    }
  } else {
  }
  return;
}
}
static void __twa_shutdown(TW_Device_Extension *tw_dev )
{
  int tmp ;
  {
  writel(64U, (void volatile *)tw_dev->base_addr);
  ldv_free_irq_19((tw_dev->tw_pci_dev)->irq, (void *)tw_dev);
  printk("cw-9xxx: Shutting down host %d.\n", (tw_dev->host)->host_no);
  tmp = twa_initconnection(tw_dev, 1, 0U, 0, 0, 0, 0, (unsigned short *)0U, (unsigned short *)0U,
                           (unsigned short *)0U, (unsigned short *)0U, (u32 *)0U);
  if (tmp != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 49, (char *)"Connection shutdown failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 49, (char *)"Connection shutdown failed");
    }
  } else {
    printk("cw-9xxx: Shutdown complete.\n");
  }
  writel(14614528U, (void volatile *)tw_dev->base_addr);
  return;
}
}
static void twa_shutdown(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  TW_Device_Extension *tw_dev ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  __twa_shutdown(tw_dev);
  return;
}
}
static char *twa_string_lookup(twa_message_type *table , unsigned int code )
{
  int index ;
  {
  index = 0;
  goto ldv_37855;
  ldv_37854:
  index = index + 1;
  ldv_37855: ;
  if ((table + (unsigned long )index)->code != code && (unsigned long )(table + (unsigned long )index)->text != (unsigned long )((char *)0)) {
    goto ldv_37854;
  } else {
  }
  return ((table + (unsigned long )index)->text);
}
}
static int twa_slave_configure(struct scsi_device *sdev )
{
  {
  blk_queue_rq_timeout(sdev->request_queue, 15000U);
  return (0);
}
}
static struct scsi_host_template driver_template =
     {& __this_module, "3ware 9000 Storage Controller", 0, 0, 0, 0, 0, & twa_scsi_queue,
    0, 0, 0, 0, & twa_scsi_eh_reset, 0, & twa_slave_configure, 0, 0, 0, 0, 0, & scsi_change_queue_depth,
    & twa_scsi_biosparam, 0, 0, 0, 0, 0, 0, 0, 254, -1, 72U, (unsigned short)0, 256U,
    0UL, 254, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, 1U, 1U, (unsigned char)0, 1U, (unsigned char)0, 0U, (struct device_attribute **)(& twa_host_attrs),
    0, {0, 0}, 0ULL, 0U, 0, (_Bool)0};
static int twa_probe(struct pci_dev *pdev , struct pci_device_id const *dev_id )
{
  struct Scsi_Host *host ;
  TW_Device_Extension *tw_dev ;
  unsigned long mem_addr ;
  unsigned long mem_len ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  host = (struct Scsi_Host *)0;
  retval = -19;
  retval = pci_enable_device(pdev);
  if (retval != 0) {
    if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", host->host_no, 6, 52,
             (char *)"Failed to enable pci device");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 52, (char *)"Failed to enable pci device");
    }
    goto out_disable_device;
  } else {
  }
  pci_set_master(pdev);
  pci_try_set_mwi(pdev);
  tmp___1 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (tmp___1 != 0) {
    goto _L___0;
  } else {
    tmp___2 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___2 != 0) {
      _L___0:
      tmp = pci_set_dma_mask(pdev, 4294967295ULL);
      if (tmp != 0) {
        goto _L;
      } else {
        tmp___0 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
        if (tmp___0 != 0) {
          _L:
          if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
            printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", host->host_no,
                   6, 35, (char *)"Failed to set dma mask");
          } else {
            printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 35, (char *)"Failed to set dma mask");
          }
          retval = -19;
          goto out_disable_device;
        } else {
        }
      }
    } else {
    }
  }
  host = ldv_scsi_host_alloc_20(& driver_template, 14248);
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", host->host_no, 6, 36,
             (char *)"Failed to allocate memory for device extension");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 36, (char *)"Failed to allocate memory for device extension");
    }
    retval = -12;
    goto out_disable_device;
  } else {
  }
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  tw_dev->host = host;
  tw_dev->tw_pci_dev = pdev;
  tmp___3 = twa_initialize_device_extension(tw_dev);
  if (tmp___3 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 37, (char *)"Failed to initialize device extension");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 37, (char *)"Failed to initialize device extension");
    }
    goto out_free_device_extension;
  } else {
  }
  retval = pci_request_regions(pdev, "3w-9xxx");
  if (retval != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 38, (char *)"Failed to get mem region");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 38, (char *)"Failed to get mem region");
    }
    goto out_free_device_extension;
  } else {
  }
  if ((unsigned int )pdev->device == 4098U) {
    mem_addr = (unsigned long )pdev->resource[1].start;
    mem_len = pdev->resource[1].start != 0ULL || pdev->resource[1].end != pdev->resource[1].start ? (unsigned long )((pdev->resource[1].end - pdev->resource[1].start) + 1ULL) : 0UL;
  } else {
    mem_addr = (unsigned long )pdev->resource[2].start;
    mem_len = pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? (unsigned long )((pdev->resource[2].end - pdev->resource[2].start) + 1ULL) : 0UL;
  }
  tmp___4 = ioremap((resource_size_t )mem_addr, mem_len);
  tw_dev->base_addr = (u32 *)tmp___4;
  if ((unsigned long )tw_dev->base_addr == (unsigned long )((u32 *)0U)) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 53, (char *)"Failed to ioremap");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 53, (char *)"Failed to ioremap");
    }
    goto out_release_mem_region;
  } else {
  }
  writel(64U, (void volatile *)tw_dev->base_addr);
  tmp___5 = twa_reset_sequence(tw_dev, 0);
  if (tmp___5 != 0) {
    goto out_iounmap;
  } else {
  }
  if ((unsigned int )pdev->device == 4100U || (unsigned int )pdev->device == 4101U) {
    host->max_id = 32U;
  } else {
    host->max_id = 16U;
  }
  host->max_cmd_len = 16U;
  host->max_lun = (unsigned int )tw_dev->tw_compat_info.working_srl <= 27U ? 1ULL : 16ULL;
  host->max_channel = 0U;
  retval = scsi_add_host(host, & pdev->dev);
  if (retval != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 39, (char *)"scsi add host failed");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 39, (char *)"scsi add host failed");
    }
    goto out_iounmap;
  } else {
  }
  pci_set_drvdata(pdev, (void *)host);
  printk("cw-9xxx: scsi%d: Found a 3ware 9000 Storage Controller at 0x%lx, IRQ: %d.\n",
         host->host_no, mem_addr, pdev->irq);
  tmp___6 = twa_get_param(tw_dev, 2, 1027, 3, 1);
  tmp___7 = twa_get_param(tw_dev, 1, 1026, 4, 16);
  tmp___8 = twa_get_param(tw_dev, 0, 1026, 3, 16);
  printk("cw-9xxx: scsi%d: Firmware %s, BIOS %s, Ports: %d.\n", host->host_no, (char *)tmp___8,
         (char *)tmp___7, (unsigned int )*((int *)tmp___6));
  if (use_msi != 0 && (unsigned int )pdev->device != 4098U) {
    tmp___9 = pci_enable_msi_exact(pdev, 1);
    if (tmp___9 == 0) {
      set_bit(3L, (unsigned long volatile *)(& tw_dev->flags));
    } else {
    }
  } else {
  }
  retval = ldv_request_irq_21(pdev->irq, & twa_interrupt, 128UL, "3w-9xxx", (void *)tw_dev);
  if (retval != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 48, (char *)"Error requesting IRQ");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 48, (char *)"Error requesting IRQ");
    }
    goto out_remove_host;
  } else {
  }
  twa_device_extension_list[twa_device_extension_count] = tw_dev;
  twa_device_extension_count = twa_device_extension_count + 1U;
  writel(278656U, (void volatile *)tw_dev->base_addr);
  scsi_scan_host(host);
  if (twa_major == -1) {
    twa_major = ldv_register_chrdev_22(0U, "twa", & twa_fops);
    if (twa_major < 0) {
      if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
        printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", host->host_no, 6,
               41, (char *)"Failed to register character device");
      } else {
        printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 41, (char *)"Failed to register character device");
      }
    } else {
    }
  } else {
  }
  return (0);
  out_remove_host:
  tmp___10 = constant_test_bit(3L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp___10 != 0) {
    pci_disable_msi(pdev);
  } else {
  }
  ldv_scsi_remove_host_23(host);
  out_iounmap:
  iounmap((void volatile *)tw_dev->base_addr);
  out_release_mem_region:
  pci_release_regions(pdev);
  out_free_device_extension:
  twa_free_device_extension(tw_dev);
  scsi_host_put(host);
  out_disable_device:
  pci_disable_device(pdev);
  return (retval);
}
}
static void twa_remove(struct pci_dev *pdev )
{
  struct Scsi_Host *host ;
  void *tmp ;
  TW_Device_Extension *tw_dev ;
  int tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  ldv_scsi_remove_host_24(tw_dev->host);
  if (twa_major >= 0) {
    ldv_unregister_chrdev_25((unsigned int )twa_major, "twa");
    twa_major = -1;
  } else {
  }
  __twa_shutdown(tw_dev);
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp___0 != 0) {
    pci_disable_msi(pdev);
  } else {
  }
  iounmap((void volatile *)tw_dev->base_addr);
  pci_release_regions(pdev);
  twa_free_device_extension(tw_dev);
  scsi_host_put(tw_dev->host);
  pci_disable_device(pdev);
  twa_device_extension_count = twa_device_extension_count - 1U;
  return;
}
}
static int twa_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct Scsi_Host *host ;
  void *tmp ;
  TW_Device_Extension *tw_dev ;
  int tmp___0 ;
  int tmp___1 ;
  pci_power_t tmp___2 ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  printk("cw-9xxx: Suspending host %d.\n", (tw_dev->host)->host_no);
  writel(64U, (void volatile *)tw_dev->base_addr);
  ldv_free_irq_26((tw_dev->tw_pci_dev)->irq, (void *)tw_dev);
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp___0 != 0) {
    pci_disable_msi(pdev);
  } else {
  }
  tmp___1 = twa_initconnection(tw_dev, 1, 0U, 0, 0, 0, 0, (unsigned short *)0U, (unsigned short *)0U,
                               (unsigned short *)0U, (unsigned short *)0U, (u32 *)0U);
  if (tmp___1 != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 56, (char *)"Connection shutdown failed during suspend");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 56, (char *)"Connection shutdown failed during suspend");
    }
  } else {
    printk("cw-9xxx: Suspend complete.\n");
  }
  writel(14614528U, (void volatile *)tw_dev->base_addr);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___2 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___2);
  return (0);
}
}
static int twa_resume(struct pci_dev *pdev )
{
  int retval ;
  struct Scsi_Host *host ;
  void *tmp ;
  TW_Device_Extension *tw_dev ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  retval = 0;
  tmp = pci_get_drvdata(pdev);
  host = (struct Scsi_Host *)tmp;
  tw_dev = (TW_Device_Extension *)(& host->hostdata);
  printk("cw-9xxx: Resuming host %d.\n", (tw_dev->host)->host_no);
  pci_set_power_state(pdev, 0);
  pci_enable_wake(pdev, 0, 0);
  pci_restore_state(pdev);
  retval = pci_enable_device(pdev);
  if (retval != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 57, (char *)"Enable device failed during resume");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 57, (char *)"Enable device failed during resume");
    }
    return (retval);
  } else {
  }
  pci_set_master(pdev);
  pci_try_set_mwi(pdev);
  tmp___2 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (tmp___2 != 0) {
    goto _L___0;
  } else {
    tmp___3 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___3 != 0) {
      _L___0:
      tmp___0 = pci_set_dma_mask(pdev, 4294967295ULL);
      if (tmp___0 != 0) {
        goto _L;
      } else {
        tmp___1 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
        if (tmp___1 != 0) {
          _L:
          if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
            printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", host->host_no,
                   6, 64, (char *)"Failed to set dma mask during resume");
          } else {
            printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 64, (char *)"Failed to set dma mask during resume");
          }
          retval = -19;
          goto out_disable_device;
        } else {
        }
      }
    } else {
    }
  }
  tmp___4 = twa_reset_sequence(tw_dev, 0);
  if (tmp___4 != 0) {
    retval = -19;
    goto out_disable_device;
  } else {
  }
  retval = ldv_request_irq_27(pdev->irq, & twa_interrupt, 128UL, "3w-9xxx", (void *)tw_dev);
  if (retval != 0) {
    if ((unsigned long )tw_dev->host != (unsigned long )((struct Scsi_Host *)0)) {
      printk("cw-9xxx: scsi%d: OLD_ERROR: (0x%02X:0x%04X): %s.\n", (tw_dev->host)->host_no,
             6, 66, (char *)"Error requesting IRQ during resume");
    } else {
      printk("cw-9xxx: OLD_ERROR: (0x%02X:0x%04X): %s.\n", 6, 66, (char *)"Error requesting IRQ during resume");
    }
    retval = -19;
    goto out_disable_device;
  } else {
  }
  tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& tw_dev->flags));
  if (tmp___5 != 0) {
    pci_enable_msi_exact(pdev, 1);
  } else {
  }
  writel(278656U, (void volatile *)tw_dev->base_addr);
  printk("cw-9xxx: Resume complete.\n");
  return (0);
  out_disable_device:
  ldv_scsi_remove_host_28(host);
  pci_disable_device(pdev);
  return (retval);
}
}
static struct pci_device_id twa_pci_tbl[5U] = { {5057U, 4098U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5057U, 4099U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5057U, 4100U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5057U, 4101U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__twa_pci_tbl_device_table[5U] ;
static struct pci_driver twa_driver =
     {{0, 0}, "3w-9xxx", (struct pci_device_id const *)(& twa_pci_tbl), & twa_probe,
    & twa_remove, & twa_suspend, 0, 0, & twa_resume, & twa_shutdown, 0, 0, {0, 0,
                                                                            0, 0,
                                                                            (_Bool)0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0, 0,
                                                                            0}, {{{{{{0}},
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
static int twa_init(void)
{
  int tmp ;
  {
  printk("cware 9000 Storage Controller device driver for Linux v%s.\n", (char *)"2.26.02.014");
  tmp = ldv___pci_register_driver_29(& twa_driver, & __this_module, "3w_9xxx");
  return (tmp);
}
}
static void twa_exit(void)
{
  {
  ldv_pci_unregister_driver_30(& twa_driver);
  return;
}
}
extern int ldv_release_5(void) ;
int ldv_retval_2 ;
extern int ldv_suspend_late_3(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
extern int ldv_resume_early_3(void) ;
int ldv_retval_6 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_37933;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_37933;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_37933;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_37933;
  default:
  ldv_stop();
  }
  ldv_37933: ;
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
void ldv_initialize_scsi_host_template_4(void)
{
  {
  driver_template_group0 = ldv_malloc(sizeof(struct scsi_cmnd));
  driver_template_group1 = ldv_malloc(sizeof(struct scsi_device));
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
void ldv_pci_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  twa_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& twa_interrupt)) {
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
      irq_retval = twa_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_37972;
    default:
    ldv_stop();
    }
    ldv_37972: ;
  } else {
  }
  return (state);
}
}
void ldv_file_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  twa_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  twa_fops_group2 = (struct file *)tmp___0;
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
      irq_retval = twa_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_37986;
    default:
    ldv_stop();
    }
    ldv_37986: ;
  } else {
  }
  return (state);
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
  goto ldv_37992;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_37992;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_37992;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_37992;
  default:
  ldv_stop();
  }
  ldv_37992: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& twa_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  struct block_device *ldvarg7 ;
  void *tmp___2 ;
  int ldvarg4 ;
  struct Scsi_Host *ldvarg3 ;
  void *tmp___3 ;
  int *ldvarg5 ;
  void *tmp___4 ;
  sector_t ldvarg6 ;
  pm_message_t ldvarg8 ;
  struct pci_device_id *ldvarg9 ;
  void *tmp___5 ;
  unsigned int ldvarg11 ;
  loff_t ldvarg13 ;
  unsigned long ldvarg10 ;
  int ldvarg12 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(480UL);
  ldvarg7 = (struct block_device *)tmp___2;
  tmp___3 = ldv_init_zalloc(3816UL);
  ldvarg3 = (struct Scsi_Host *)tmp___3;
  tmp___4 = ldv_init_zalloc(4UL);
  ldvarg5 = (int *)tmp___4;
  tmp___5 = ldv_init_zalloc(32UL);
  ldvarg9 = (struct pci_device_id *)tmp___5;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_38068:
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      twa_show_stats(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_38031;
    default:
    ldv_stop();
    }
    ldv_38031: ;
  } else {
  }
  goto ldv_38033;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      twa_scsi_biosparam(driver_template_group1, ldvarg7, ldvarg6, ldvarg5);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38036;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      twa_slave_configure(driver_template_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38036;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      scsi_change_queue_depth(driver_template_group1, ldvarg4);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38036;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      twa_scsi_queue(ldvarg3, driver_template_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38036;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      twa_scsi_eh_reset(driver_template_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38036;
    default:
    ldv_stop();
    }
    ldv_38036: ;
  } else {
  }
  goto ldv_38033;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_38033;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      twa_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_38046;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = twa_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_38046;
    default:
    ldv_stop();
    }
    ldv_38046: ;
  } else {
  }
  goto ldv_38033;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_5 = twa_probe(twa_driver_group1, (struct pci_device_id const *)ldvarg9);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38051;
    case 1: ;
    if (ldv_state_variable_3 == 4) {
      twa_shutdown(twa_driver_group1);
      ldv_state_variable_3 = 4;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      twa_shutdown(twa_driver_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      twa_shutdown(twa_driver_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      twa_shutdown(twa_driver_group1);
      ldv_state_variable_3 = 5;
    } else {
    }
    goto ldv_38051;
    case 2: ;
    if (ldv_state_variable_3 == 2 && pci_counter == 0) {
      ldv_retval_4 = twa_suspend(twa_driver_group1, ldvarg8);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_3 = 3;
      } else {
      }
    } else {
    }
    goto ldv_38051;
    case 3: ;
    if (ldv_state_variable_3 == 4) {
      twa_remove(twa_driver_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      twa_remove(twa_driver_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      twa_remove(twa_driver_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      twa_remove(twa_driver_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_38051;
    case 4: ;
    if (ldv_state_variable_3 == 4) {
      ldv_retval_3 = twa_resume(twa_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      ldv_retval_3 = twa_resume(twa_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_3 == 5) {
      ldv_retval_3 = twa_resume(twa_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
      } else {
      }
    } else {
    }
    goto ldv_38051;
    case 5: ;
    if (ldv_state_variable_3 == 3) {
      ldv_retval_2 = ldv_suspend_late_3();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 4;
      } else {
      }
    } else {
    }
    goto ldv_38051;
    case 6: ;
    if (ldv_state_variable_3 == 4) {
      ldv_retval_1 = ldv_resume_early_3();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      ldv_retval_1 = ldv_resume_early_3();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 5;
      } else {
      }
    } else {
    }
    goto ldv_38051;
    default:
    ldv_stop();
    }
    ldv_38051: ;
  } else {
  }
  goto ldv_38033;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_38033;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_5 == 2) {
      noop_llseek(twa_fops_group2, ldvarg13, ldvarg12);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_38062;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_6 = twa_chrdev_open(twa_fops_group1, twa_fops_group2);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38062;
    case 2: ;
    if (ldv_state_variable_5 == 2) {
      twa_chrdev_ioctl(twa_fops_group2, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_38062;
    case 3: ;
    if (ldv_state_variable_5 == 2) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38062;
    default:
    ldv_stop();
    }
    ldv_38062: ;
  } else {
  }
  goto ldv_38033;
  default:
  ldv_stop();
  }
  ldv_38033: ;
  goto ldv_38068;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
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
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_scsi_add_host_with_dma_12(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_4 = 1;
    ldv_initialize_scsi_host_template_4();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_twa_chrdev_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_14(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_ioctl_lock_of_TAG_TW_Device_Extension(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ioctl_lock_of_TAG_TW_Device_Extension(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_twa_chrdev_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ioctl_lock_of_TAG_TW_Device_Extension(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
struct Scsi_Host *ldv_scsi_host_alloc_20(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___2 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___2 )0)) {
    ldv_state_variable_4 = 1;
    ldv_initialize_scsi_host_template_4();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
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
__inline static int ldv_register_chrdev_22(unsigned int major , char const *name ,
                                           struct file_operations const *fops )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = register_chrdev(major, name, fops);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  ldv_file_operations_5();
  return (ldv_func_res);
}
}
void ldv_scsi_remove_host_23(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_4 = 0;
  return;
}
}
void ldv_scsi_remove_host_24(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_4 = 0;
  return;
}
}
__inline static void ldv_unregister_chrdev_25(unsigned int major , char const *name )
{
  {
  unregister_chrdev(major, name);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_27(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
void ldv_scsi_remove_host_28(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_4 = 0;
  return;
}
}
int ldv___pci_register_driver_29(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  ldv_pci_driver_3();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_30(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_3 = 0;
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
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
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
static int ldv_mutex_i_mutex_of_inode = 1;
int ldv_mutex_lock_interruptible_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 1;
  return;
}
}
void ldv_usb_lock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_i_mutex_of_inode(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_i_mutex_of_inode((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_i_mutex_of_inode(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_unlock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
static int ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 1;
int ldv_mutex_lock_interruptible_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 2;
  return;
}
}
int ldv_mutex_trylock_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension(atomic_t *cnt ,
                                                                        struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_ioctl_lock_of_TAG_TW_Device_Extension(struct mutex *lock )
{
  {
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension = 1;
  return;
}
}
void ldv_usb_lock_device_ioctl_lock_of_TAG_TW_Device_Extension(void)
{
  {
  ldv_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_ioctl_lock_of_TAG_TW_Device_Extension(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_ioctl_lock_of_TAG_TW_Device_Extension((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_ioctl_lock_of_TAG_TW_Device_Extension(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_ioctl_lock_of_TAG_TW_Device_Extension((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_ioctl_lock_of_TAG_TW_Device_Extension(void)
{
  {
  ldv_mutex_unlock_ioctl_lock_of_TAG_TW_Device_Extension((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_twa_chrdev_mutex = 1;
int ldv_mutex_lock_interruptible_twa_chrdev_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_twa_chrdev_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_twa_chrdev_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_twa_chrdev_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_twa_chrdev_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_twa_chrdev_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_twa_chrdev_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_twa_chrdev_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_twa_chrdev_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_twa_chrdev_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_twa_chrdev_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_twa_chrdev_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_twa_chrdev_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_twa_chrdev_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_twa_chrdev_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_twa_chrdev_mutex(void)
{
  {
  ldv_mutex_lock_twa_chrdev_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_twa_chrdev_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_twa_chrdev_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_twa_chrdev_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_twa_chrdev_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_twa_chrdev_mutex(void)
{
  {
  ldv_mutex_unlock_twa_chrdev_mutex((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_ioctl_lock_of_TAG_TW_Device_Extension != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_twa_chrdev_mutex != 1) {
    ldv_error();
  } else {
  }
  return;
}
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
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
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
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
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
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void blk_queue_rq_timeout(struct request_queue *arg0, unsigned int arg1) {
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
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_3() {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
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
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
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
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
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
int pci_try_set_mwi(struct pci_dev *arg0) {
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
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
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
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
void sdev_prefix_printk(const char *arg0, const struct scsi_device *arg1, const char *arg2, const char *arg3, ...) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_from_buffer(struct scatterlist *arg0, unsigned int arg1, const void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_to_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
