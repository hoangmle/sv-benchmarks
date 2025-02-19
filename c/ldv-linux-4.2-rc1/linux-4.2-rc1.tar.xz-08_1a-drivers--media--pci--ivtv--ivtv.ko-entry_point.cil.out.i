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
typedef __u32 __le32;
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
struct v4l2_audioout;
struct v4l2_subdev;
struct cx2341x_handler;
struct i2c_adapter;
struct v4l2_decoder_cmd;
struct v4l2_audio;
struct v4l2_fh;
struct v4l2_ctrl;
struct v4l2_ext_controls;
struct v4l2_control;
struct v4l2_encoder_cmd;
struct v4l2_selection;
struct v4l2_format;
struct v4l2_fmtdesc;
struct v4l2_event_subscription;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_220 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct____missing_field_name_220 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_219 __annonCompField59 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_222 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_221 {
   struct __anonstruct____missing_field_name_222 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_221 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_223 {
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
   union __anonunion_d_u_223 d_u ;
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
struct __anonstruct____missing_field_name_227 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_226 __annonCompField63 ;
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
struct bdi_writeback;
struct export_operations;
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
struct __anonstruct_kprojid_t_231 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_231 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_232 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_232 __annonCompField65 ;
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
union __anonunion____missing_field_name_235 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_236 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_237 {
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
   union __anonunion____missing_field_name_235 __annonCompField66 ;
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
   union __anonunion____missing_field_name_236 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
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
union __anonunion_f_u_238 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_238 f_u ;
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
struct __anonstruct_afs_240 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_239 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_240 afs ;
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
   union __anonunion_fl_u_239 fl_u ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
union __anonunion____missing_field_name_244 {
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
   union __anonunion____missing_field_name_244 __annonCompField69 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct i2c_client;
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
struct i2c_algo_bit_data {
   void *data ;
   void (*setsda)(void * , int ) ;
   void (*setscl)(void * , int ) ;
   int (*getsda)(void * ) ;
   int (*getscl)(void * ) ;
   int (*pre_xfer)(struct i2c_adapter * ) ;
   void (*post_xfer)(struct i2c_adapter * ) ;
   int udelay ;
   int timeout ;
};
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
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
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
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_261 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_261 __annonCompField78 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_262 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_262 __annonCompField79 ;
   __u32 reserved[2U] ;
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
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_263 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_263 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_264 {
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
   union __anonunion_m_264 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct __anonstruct_fmt_265 {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct __anonstruct_fmt_265 fmt ;
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
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
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
union __anonunion____missing_field_name_266 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_266 __annonCompField80 ;
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
union __anonunion____missing_field_name_267 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion____missing_field_name_267 __annonCompField81 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_268 {
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
   union __anonunion____missing_field_name_268 __annonCompField82 ;
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
struct v4l2_query_ext_ctrl {
   __u32 id ;
   __u32 type ;
   char name[32U] ;
   __s64 minimum ;
   __s64 maximum ;
   __u64 step ;
   __s64 default_value ;
   __u32 flags ;
   __u32 elem_size ;
   __u32 elems ;
   __u32 nr_of_dims ;
   __u32 dims[4U] ;
   __u32 reserved[32U] ;
};
union __anonunion____missing_field_name_269 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_269 __annonCompField83 ;
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
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_271 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_270 {
   struct __anonstruct_raw_271 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_270 __annonCompField84 ;
};
struct __anonstruct_stop_273 {
   __u64 pts ;
};
struct __anonstruct_start_274 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_275 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_272 {
   struct __anonstruct_stop_273 stop ;
   struct __anonstruct_start_274 start ;
   struct __anonstruct_raw_275 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_272 __annonCompField85 ;
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
union __anonunion_fmt_277 {
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
   union __anonunion_fmt_277 fmt ;
};
union __anonunion_parm_278 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_278 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_281 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_281 __annonCompField88 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
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
struct __anonstruct_dev_288 {
   u32 major ;
   u32 minor ;
};
union __anonunion_info_287 {
   struct __anonstruct_dev_288 dev ;
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
   union __anonunion_info_287 info ;
};
struct video_device;
struct v4l2_device;
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
struct vb2_queue;
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
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_query_ext_ctrl)(struct file * , void * , struct v4l2_query_ext_ctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct v4l2_ctrl_helper;
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
union __anonunion____missing_field_name_290 {
   u64 step ;
   u64 menu_skip_mask ;
};
union __anonunion____missing_field_name_291 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
struct __anonstruct_cur_292 {
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
   union __anonunion____missing_field_name_290 __annonCompField90 ;
   union __anonunion____missing_field_name_291 __annonCompField91 ;
   unsigned long flags ;
   void *priv ;
   s32 val ;
   struct __anonstruct_cur_292 cur ;
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
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_294 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_295 {
   char const *name ;
};
struct __anonstruct_i2c_296 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_297 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_293 {
   struct __anonstruct_of_294 of ;
   struct __anonstruct_device_name_295 device_name ;
   struct __anonstruct_i2c_296 i2c ;
   struct __anonstruct_custom_297 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_293 match ;
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
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
enum cx2341x_port {
    CX2341X_PORT_MEMORY = 0,
    CX2341X_PORT_STREAMING = 1,
    CX2341X_PORT_SERIAL = 2
} ;
struct cx2341x_handler_ops {
   int (*s_audio_sampling_freq)(struct cx2341x_handler * , u32 ) ;
   int (*s_audio_mode)(struct cx2341x_handler * , u32 ) ;
   int (*s_video_encoding)(struct cx2341x_handler * , u32 ) ;
   int (*s_stream_vbi_fmt)(struct cx2341x_handler * , u32 ) ;
};
struct __anonstruct____missing_field_name_298 {
   struct v4l2_ctrl *audio_sampling_freq ;
   struct v4l2_ctrl *audio_encoding ;
   struct v4l2_ctrl *audio_l2_bitrate ;
   struct v4l2_ctrl *audio_mode ;
   struct v4l2_ctrl *audio_mode_extension ;
   struct v4l2_ctrl *audio_emphasis ;
   struct v4l2_ctrl *audio_crc ;
   struct v4l2_ctrl *audio_ac3_bitrate ;
};
struct __anonstruct____missing_field_name_299 {
   struct v4l2_ctrl *video_b_frames ;
   struct v4l2_ctrl *video_gop_size ;
};
struct __anonstruct____missing_field_name_300 {
   struct v4l2_ctrl *stream_type ;
   struct v4l2_ctrl *video_encoding ;
   struct v4l2_ctrl *video_bitrate_mode ;
   struct v4l2_ctrl *video_bitrate ;
   struct v4l2_ctrl *video_bitrate_peak ;
};
struct __anonstruct____missing_field_name_301 {
   struct v4l2_ctrl *video_mute ;
   struct v4l2_ctrl *video_mute_yuv ;
};
struct __anonstruct____missing_field_name_302 {
   struct v4l2_ctrl *video_spatial_filter_mode ;
   struct v4l2_ctrl *video_temporal_filter_mode ;
   struct v4l2_ctrl *video_median_filter_type ;
};
struct __anonstruct____missing_field_name_303 {
   struct v4l2_ctrl *video_luma_spatial_filter_type ;
   struct v4l2_ctrl *video_chroma_spatial_filter_type ;
};
struct __anonstruct____missing_field_name_304 {
   struct v4l2_ctrl *video_spatial_filter ;
   struct v4l2_ctrl *video_temporal_filter ;
};
struct __anonstruct____missing_field_name_305 {
   struct v4l2_ctrl *video_luma_median_filter_top ;
   struct v4l2_ctrl *video_luma_median_filter_bottom ;
   struct v4l2_ctrl *video_chroma_median_filter_top ;
   struct v4l2_ctrl *video_chroma_median_filter_bottom ;
};
struct cx2341x_handler {
   u32 capabilities ;
   enum cx2341x_port port ;
   u16 width ;
   u16 height ;
   u16 is_50hz ;
   u32 audio_properties ;
   struct v4l2_ctrl_handler hdl ;
   void *priv ;
   int (*func)(void * , u32 , int , int , u32 * ) ;
   struct cx2341x_handler_ops const *ops ;
   struct v4l2_ctrl *stream_vbi_fmt ;
   struct __anonstruct____missing_field_name_298 __annonCompField92 ;
   struct __anonstruct____missing_field_name_299 __annonCompField93 ;
   struct __anonstruct____missing_field_name_300 __annonCompField94 ;
   struct __anonstruct____missing_field_name_301 __annonCompField95 ;
   struct __anonstruct____missing_field_name_302 __annonCompField96 ;
   struct __anonstruct____missing_field_name_303 __annonCompField97 ;
   struct __anonstruct____missing_field_name_304 __annonCompField98 ;
   struct __anonstruct____missing_field_name_305 __annonCompField99 ;
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
union __anonunion_u_309 {
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
   union __anonunion_u_309 u ;
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
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17,
    RC_TYPE_SHARP = 18,
    RC_TYPE_XMP = 19
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct rc_scancode_filter {
   u32 data ;
   u32 mask ;
};
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   struct attribute_group const *sysfs_groups[5U] ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   bool encode_wakeup ;
   u64 allowed_protocols ;
   u64 enabled_protocols ;
   u64 allowed_wakeup_protocols ;
   u64 enabled_wakeup_protocols ;
   struct rc_scancode_filter scancode_filter ;
   struct rc_scancode_filter scancode_wakeup_filter ;
   u32 scancode_mask ;
   u32 users ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   enum rc_type last_protocol ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*change_wakeup_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
   int (*s_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
   int (*s_wakeup_filter)(struct rc_dev * , struct rc_scancode_filter * ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , enum rc_type * , u32 * , u8 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , enum rc_type * , u32 * , u8 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct ivtv_options {
   int kilobytes[9U] ;
   int cardtype ;
   int tuner ;
   int radio ;
   int newi2c ;
   int i2c_clock_period ;
};
struct ivtv_mailbox {
   u32 flags ;
   u32 cmd ;
   u32 retval ;
   u32 timeout ;
   u32 data[16U] ;
};
struct ivtv_api_cache {
   unsigned long last_jiffies ;
   u32 data[16U] ;
};
struct ivtv_mailbox_data {
   struct ivtv_mailbox volatile *mbox ;
   unsigned long busy ;
   u8 max_mbox ;
};
struct ivtv_sg_element {
   __le32 src ;
   __le32 dst ;
   __le32 size ;
};
struct ivtv_sg_host_element {
   u32 src ;
   u32 dst ;
   u32 size ;
};
struct ivtv_user_dma {
   struct mutex lock ;
   int page_count ;
   struct page *map[704U] ;
   struct page *bouncemap[704U] ;
   struct ivtv_sg_element SGarray[704U] ;
   dma_addr_t SG_handle ;
   int SG_length ;
   struct scatterlist SGlist[704U] ;
};
struct ivtv_buffer {
   struct list_head list ;
   dma_addr_t dma_handle ;
   unsigned short b_flags ;
   unsigned short dma_xfer_cnt ;
   char *buf ;
   u32 bytesused ;
   u32 readpos ;
};
struct ivtv_queue {
   struct list_head list ;
   u32 buffers ;
   u32 length ;
   u32 bytesused ;
};
struct ivtv;
struct ivtv_stream {
   struct video_device vdev ;
   struct ivtv *itv ;
   char const *name ;
   int type ;
   u32 caps ;
   struct v4l2_fh *fh ;
   spinlock_t qlock ;
   unsigned long s_flags ;
   int dma ;
   u32 pending_offset ;
   u32 pending_backup ;
   u64 pending_pts ;
   u32 dma_offset ;
   u32 dma_backup ;
   u64 dma_pts ;
   int subtype ;
   wait_queue_head_t waitq ;
   u32 dma_last_offset ;
   u32 buffers ;
   u32 buf_size ;
   u32 buffers_stolen ;
   struct ivtv_queue q_free ;
   struct ivtv_queue q_full ;
   struct ivtv_queue q_io ;
   struct ivtv_queue q_dma ;
   struct ivtv_queue q_predma ;
   u16 dma_xfer_cnt ;
   struct ivtv_sg_host_element *sg_pending ;
   struct ivtv_sg_host_element *sg_processing ;
   struct ivtv_sg_element *sg_dma ;
   dma_addr_t sg_handle ;
   int sg_pending_size ;
   int sg_processing_size ;
   int sg_processed ;
   struct scatterlist *SGlist ;
};
struct yuv_frame_info {
   u32 update ;
   s32 src_x ;
   s32 src_y ;
   u32 src_w ;
   u32 src_h ;
   s32 dst_x ;
   s32 dst_y ;
   u32 dst_w ;
   u32 dst_h ;
   s32 pan_x ;
   s32 pan_y ;
   u32 vis_w ;
   u32 vis_h ;
   u32 interlaced_y ;
   u32 interlaced_uv ;
   s32 tru_x ;
   u32 tru_w ;
   u32 tru_h ;
   u32 offset_y ;
   s32 lace_mode ;
   u32 sync_field ;
   u32 delay ;
   u32 interlaced ;
};
struct yuv_playback_info {
   u32 reg_2834 ;
   u32 reg_2838 ;
   u32 reg_283c ;
   u32 reg_2840 ;
   u32 reg_2844 ;
   u32 reg_2848 ;
   u32 reg_2854 ;
   u32 reg_285c ;
   u32 reg_2864 ;
   u32 reg_2870 ;
   u32 reg_2874 ;
   u32 reg_2890 ;
   u32 reg_2898 ;
   u32 reg_289c ;
   u32 reg_2918 ;
   u32 reg_291c ;
   u32 reg_2920 ;
   u32 reg_2924 ;
   u32 reg_2928 ;
   u32 reg_292c ;
   u32 reg_2930 ;
   u32 reg_2934 ;
   u32 reg_2938 ;
   u32 reg_293c ;
   u32 reg_2940 ;
   u32 reg_2944 ;
   u32 reg_2948 ;
   u32 reg_294c ;
   u32 reg_2950 ;
   u32 reg_2954 ;
   u32 reg_2958 ;
   u32 reg_295c ;
   u32 reg_2960 ;
   u32 reg_2964 ;
   u32 reg_2968 ;
   u32 reg_296c ;
   u32 reg_2970 ;
   int v_filter_1 ;
   int v_filter_2 ;
   int h_filter ;
   u8 track_osd ;
   u32 osd_x_offset ;
   u32 osd_y_offset ;
   u32 osd_x_pan ;
   u32 osd_y_pan ;
   u32 osd_vis_w ;
   u32 osd_vis_h ;
   u32 osd_full_w ;
   u32 osd_full_h ;
   int decode_height ;
   int lace_mode ;
   int lace_threshold ;
   int lace_sync_field ;
   atomic_t next_dma_frame ;
   atomic_t next_fill_frame ;
   u32 yuv_forced_update ;
   int update_frame ;
   u8 fields_lapsed ;
   struct yuv_frame_info new_frame_info[8U] ;
   struct yuv_frame_info old_frame_info ;
   struct yuv_frame_info old_frame_info_args ;
   void *blanking_ptr ;
   dma_addr_t blanking_dmaptr ;
   int stream_size ;
   u8 draw_frame ;
   u8 max_frames_buffered ;
   struct v4l2_rect main_rect ;
   u32 v4l2_src_w ;
   u32 v4l2_src_h ;
   u8 running ;
};
struct vbi_cc {
   u8 odd[2U] ;
   u8 even[2U] ;
};
struct vbi_vps {
   u8 data[5U] ;
};
struct vbi_info {
   u32 raw_decoder_line_size ;
   u8 raw_decoder_sav_odd_field ;
   u8 raw_decoder_sav_even_field ;
   u32 sliced_decoder_line_size ;
   u8 sliced_decoder_sav_odd_field ;
   u8 sliced_decoder_sav_even_field ;
   u32 start[2U] ;
   u32 count ;
   u32 raw_size ;
   u32 sliced_size ;
   u32 dec_start ;
   u32 enc_start ;
   u32 enc_size ;
   int fpi ;
   struct v4l2_format in ;
   struct v4l2_sliced_vbi_format *sliced_in ;
   int insert_mpeg ;
   u32 frame ;
   struct vbi_cc cc_payload[256U] ;
   int cc_payload_idx ;
   u8 cc_missing_cnt ;
   int wss_payload ;
   u8 wss_missing_cnt ;
   struct vbi_vps vps_payload ;
   struct v4l2_sliced_vbi_data sliced_data[36U] ;
   struct v4l2_sliced_vbi_data sliced_dec_data[36U] ;
   u8 *sliced_mpeg_data[32U] ;
   u32 sliced_mpeg_size[32U] ;
   struct ivtv_buffer sliced_mpeg_buf ;
   u32 inserted_frame ;
};
struct ivtv_card;
struct ivtv_card_tuner_i2c;
struct __anonstruct____missing_field_name_312 {
   struct v4l2_ctrl *ctrl_pts ;
   struct v4l2_ctrl *ctrl_frame ;
};
struct __anonstruct____missing_field_name_313 {
   struct v4l2_ctrl *ctrl_audio_playback ;
   struct v4l2_ctrl *ctrl_audio_multilingual_playback ;
};
struct snd_ivtv_card;
struct osd_info;
struct ivtv {
   struct pci_dev *pdev ;
   struct ivtv_card const *card ;
   char const *card_name ;
   struct ivtv_card_tuner_i2c const *card_i2c ;
   u8 has_cx23415 ;
   u8 pvr150_workaround ;
   u8 nof_inputs ;
   u8 nof_audio_inputs ;
   u32 v4l2_cap ;
   u32 hw_flags ;
   v4l2_std_id tuner_std ;
   struct v4l2_subdev *sd_video ;
   struct v4l2_subdev *sd_audio ;
   struct v4l2_subdev *sd_muxer ;
   resource_size_t base_addr ;
   void volatile *enc_mem ;
   void volatile *dec_mem ;
   void volatile *reg_mem ;
   struct ivtv_options options ;
   struct v4l2_device v4l2_dev ;
   struct cx2341x_handler cxhdl ;
   struct __anonstruct____missing_field_name_312 __annonCompField105 ;
   struct __anonstruct____missing_field_name_313 __annonCompField106 ;
   struct v4l2_ctrl_handler hdl_gpio ;
   struct v4l2_subdev sd_gpio ;
   u16 instance ;
   unsigned long i_flags ;
   u8 is_50hz ;
   u8 is_60hz ;
   u8 is_out_50hz ;
   u8 is_out_60hz ;
   int output_mode ;
   u32 audio_input ;
   u32 active_input ;
   u32 active_output ;
   v4l2_std_id std ;
   v4l2_std_id std_out ;
   u8 audio_stereo_mode ;
   u8 audio_bilingual_mode ;
   spinlock_t lock ;
   struct mutex serialize_lock ;
   int stream_buf_size[9U] ;
   struct ivtv_stream streams[9U] ;
   atomic_t capturing ;
   atomic_t decoding ;
   struct snd_ivtv_card *alsa ;
   void (*pcm_announce_callback)(struct snd_ivtv_card * , u8 * , size_t ) ;
   struct work_struct request_module_wk ;
   u32 irqmask ;
   u32 irq_rr_idx ;
   struct kthread_worker irq_worker ;
   struct task_struct *irq_worker_task ;
   struct kthread_work irq_work ;
   spinlock_t dma_reg_lock ;
   int cur_dma_stream ;
   int cur_pio_stream ;
   u32 dma_data_req_offset ;
   u32 dma_data_req_size ;
   int dma_retries ;
   struct ivtv_user_dma udma ;
   struct timer_list dma_timer ;
   u32 last_vsync_field ;
   wait_queue_head_t dma_waitq ;
   wait_queue_head_t eos_waitq ;
   wait_queue_head_t event_waitq ;
   wait_queue_head_t vsync_waitq ;
   struct ivtv_mailbox_data enc_mbox ;
   struct ivtv_mailbox_data dec_mbox ;
   struct ivtv_api_cache api_cache[256U] ;
   struct i2c_adapter i2c_adap ;
   struct i2c_algo_bit_data i2c_algo ;
   struct i2c_client i2c_client ;
   int i2c_state ;
   struct mutex i2c_bus_lock ;
   struct IR_i2c_init_data ir_i2c_init_data ;
   u32 pgm_info_offset ;
   u32 pgm_info_num ;
   u32 pgm_info_write_idx ;
   u32 pgm_info_read_idx ;
   struct v4l2_enc_idx_entry pgm_info[400U] ;
   u32 open_id ;
   int search_pack_header ;
   int speed ;
   u8 speed_mute_audio ;
   u64 mpg_data_received ;
   u64 vbi_data_inserted ;
   u32 last_dec_timing[3U] ;
   unsigned long dualwatch_jiffies ;
   u32 dualwatch_stereo_mode ;
   struct vbi_info vbi ;
   struct yuv_playback_info yuv_info ;
   unsigned long osd_video_pbase ;
   int osd_global_alpha_state ;
   int osd_local_alpha_state ;
   int osd_chroma_key_state ;
   u8 osd_global_alpha ;
   u32 osd_chroma_key ;
   struct v4l2_rect osd_rect ;
   struct v4l2_rect main_rect ;
   struct osd_info *osd_info ;
   void (*ivtvfb_restore)(struct ivtv * ) ;
};
struct ivtv_card_video_input {
   u8 video_type ;
   u8 audio_index ;
   u16 video_input ;
};
struct ivtv_card_audio_input {
   u8 audio_type ;
   u32 audio_input ;
   u16 muxer_input ;
};
struct ivtv_card_output {
   u8 name[32U] ;
   u16 video_output ;
};
struct ivtv_card_pci_info {
   u16 device ;
   u16 subsystem_vendor ;
   u16 subsystem_device ;
};
struct ivtv_gpio_init {
   u16 direction ;
   u16 initial_value ;
};
struct ivtv_gpio_video_input {
   u16 mask ;
   u16 tuner ;
   u16 composite ;
   u16 svideo ;
};
struct ivtv_gpio_audio_input {
   u16 mask ;
   u16 tuner ;
   u16 linein ;
   u16 radio ;
};
struct ivtv_gpio_audio_mute {
   u16 mask ;
   u16 mute ;
};
struct ivtv_gpio_audio_mode {
   u16 mask ;
   u16 mono ;
   u16 stereo ;
   u16 lang1 ;
   u16 lang2 ;
   u16 both ;
};
struct ivtv_gpio_audio_freq {
   u16 mask ;
   u16 f32000 ;
   u16 f44100 ;
   u16 f48000 ;
};
struct ivtv_gpio_audio_detect {
   u16 mask ;
   u16 stereo ;
};
struct ivtv_card_tuner {
   v4l2_std_id std ;
   int tuner ;
};
struct ivtv_card_tuner_i2c {
   unsigned short radio[2U] ;
   unsigned short demod[2U] ;
   unsigned short tv[4U] ;
};
struct ivtv_card {
   int type ;
   char *name ;
   char *comment ;
   u32 v4l2_capabilities ;
   u32 hw_video ;
   u32 hw_audio ;
   u32 hw_audio_ctrl ;
   u32 hw_muxer ;
   u32 hw_all ;
   struct ivtv_card_video_input video_inputs[6U] ;
   struct ivtv_card_audio_input audio_inputs[3U] ;
   struct ivtv_card_audio_input radio_input ;
   int nof_outputs ;
   struct ivtv_card_output const *video_outputs ;
   u8 gr_config ;
   u8 xceive_pin ;
   struct ivtv_gpio_init gpio_init ;
   struct ivtv_gpio_video_input gpio_video_input ;
   struct ivtv_gpio_audio_input gpio_audio_input ;
   struct ivtv_gpio_audio_mute gpio_audio_mute ;
   struct ivtv_gpio_audio_mode gpio_audio_mode ;
   struct ivtv_gpio_audio_freq gpio_audio_freq ;
   struct ivtv_gpio_audio_detect gpio_audio_detect ;
   struct ivtv_card_tuner tuners[3U] ;
   struct ivtv_card_tuner_i2c *i2c ;
   struct ivtv_card_pci_info const *pci_list ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct __anonstruct_mm_segment_t_33 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_33 mm_segment_t;
struct thread_info {
   struct task_struct *task ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct bio_vec;
struct sched_param {
   int sched_priority ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct iovec;
struct kvec;
enum i2c_slave_event;
enum i2c_slave_event;
struct ivtv_open_id {
   struct v4l2_fh fh ;
   int type ;
   int yuv_frames ;
   struct ivtv *itv ;
};
struct tveeprom;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_314 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_314 __annonCompField107 ;
   unsigned long nr_segs ;
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
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
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
typedef bool ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
typedef struct poll_table_struct poll_table;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
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
struct cx25840_platform_data {
   int pvr150_workaround ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum ldv_26429 {
    VIDEO_FORMAT_4_3 = 0,
    VIDEO_FORMAT_16_9 = 1,
    VIDEO_FORMAT_221_1 = 2
} ;
typedef enum ldv_26429 video_format_t;
struct __anonstruct_video_size_t_254 {
   int w ;
   int h ;
   video_format_t aspect_ratio ;
};
typedef struct __anonstruct_video_size_t_254 video_size_t;
union __anonunion_u_259 {
   video_size_t size ;
   unsigned int frame_rate ;
   unsigned char vsync_field ;
};
struct video_event {
   __s32 type ;
   __kernel_time_t timestamp ;
   union __anonunion_u_259 u ;
};
struct v4l2_event_vsync {
   __u8 field ;
};
union __anonunion____missing_field_name_279 {
   __s32 value ;
   __s64 value64 ;
};
struct v4l2_event_ctrl {
   __u32 changes ;
   __u32 type ;
   union __anonunion____missing_field_name_279 __annonCompField87 ;
   __u32 flags ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
};
struct v4l2_event_frame_sync {
   __u32 frame_sequence ;
};
struct v4l2_event_src_change {
   __u32 changes ;
};
struct v4l2_event_motion_det {
   __u32 flags ;
   __u32 frame_sequence ;
   __u32 region_mask ;
};
union __anonunion_u_280 {
   struct v4l2_event_vsync vsync ;
   struct v4l2_event_ctrl ctrl ;
   struct v4l2_event_frame_sync frame_sync ;
   struct v4l2_event_src_change src_change ;
   struct v4l2_event_motion_det motion_det ;
   __u8 data[64U] ;
};
struct v4l2_event {
   __u32 type ;
   union __anonunion_u_280 u ;
   __u32 pending ;
   __u32 sequence ;
   struct timespec timestamp ;
   __u32 id ;
   __u32 reserved[8U] ;
};
struct v4l2_subscribed_event;
struct v4l2_subscribed_event_ops;
struct ivtv_dma_frame {
   enum v4l2_buf_type type ;
   __u32 pixelformat ;
   void *y_source ;
   void *uv_source ;
   struct v4l2_rect src ;
   struct v4l2_rect dst ;
   __u32 src_width ;
   __u32 src_height ;
};
struct v4l2_kevent {
   struct list_head list ;
   struct v4l2_subscribed_event *sev ;
   struct v4l2_event event ;
};
struct v4l2_subscribed_event_ops {
   int (*add)(struct v4l2_subscribed_event * , unsigned int ) ;
   void (*del)(struct v4l2_subscribed_event * ) ;
   void (*replace)(struct v4l2_event * , struct v4l2_event const * ) ;
   void (*merge)(struct v4l2_event const * , struct v4l2_event * ) ;
};
struct v4l2_subscribed_event {
   struct list_head list ;
   u32 type ;
   u32 id ;
   u32 flags ;
   struct v4l2_fh *fh ;
   struct list_head node ;
   struct v4l2_subscribed_event_ops const *ops ;
   unsigned int elems ;
   unsigned int first ;
   unsigned int in_use ;
   struct v4l2_kevent events[] ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
typedef int ldv_func_ret_type___7;
struct va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct ivtv_api_info {
   int flags ;
   char const *name ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct __anonstruct_ivtv_stream_info_314 {
   char const *name ;
   int vfl_type ;
   int num_offset ;
   int dma ;
   int pio ;
   u32 v4l2_caps ;
   struct v4l2_file_operations const *fops ;
};
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
typedef int pao_T__;
typedef int pao_T_____0;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
struct ivtv_dma_page_info {
   unsigned long uaddr ;
   unsigned long first ;
   unsigned long last ;
   unsigned int offset ;
   unsigned int tail ;
   int page_count ;
};
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
enum hrtimer_restart;
enum i2c_slave_event;
enum i2c_slave_event;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void *memset(void * , int , size_t ) ;
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
int ldv_timer_state_3 = 0;
int ldv_irq_1_3 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
void call_and_disable_all_2(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ivtv_audio_set_io(struct ivtv *itv ) ;
void ivtv_video_set_io(struct ivtv *itv ) ;
void ivtv_audio_set_io(struct ivtv *itv )
{
  struct ivtv_card_audio_input const *in ;
  u32 input ;
  u32 output ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  output = 0U;
  tmp = constant_test_bit(5L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp != 0) {
    in = & (itv->card)->radio_input;
  } else {
    in = (struct ivtv_card_audio_input const *)(& (itv->card)->audio_inputs) + (unsigned long )itv->audio_input;
  }
  input = (u32 )in->muxer_input;
  if (((unsigned int )(itv->card)->hw_muxer & 16384U) != 0U) {
    output = 49344U;
  } else {
  }
  if ((unsigned long )itv->sd_muxer != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_muxer)->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )(((itv->sd_muxer)->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ))0)) {
      (*((((itv->sd_muxer)->ops)->audio)->s_routing))(itv->sd_muxer, input, output,
                                                      0U);
    } else {
    }
  } else {
  }
  input = in->audio_input;
  output = 0U;
  if (((unsigned int )(itv->card)->hw_audio & 8U) != 0U) {
    output = 68U;
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39012;
  ldv_39011: ;
  if ((((unsigned int )(itv->card)->hw_audio == 0U || (__sd->grp_id & (u32 )(itv->card)->hw_audio) != 0U) && (unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0)) && (unsigned long )((__sd->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                                                                                                        u32 ))0)) {
    (*(((__sd->ops)->audio)->s_routing))(__sd, input, output, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39012: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39011;
  } else {
  }
  return;
}
}
void ivtv_video_set_io(struct ivtv *itv )
{
  int inp ;
  u32 input ;
  u32 type ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  inp = (int )itv->active_input;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                        u32 ))0)) {
      (*((((itv->sd_video)->ops)->video)->s_routing))(itv->sd_video, (u32 )(itv->card)->video_inputs[inp].video_input,
                                                      0U, 0U);
    } else {
    }
  } else {
  }
  type = (u32 )(itv->card)->video_inputs[inp].video_type;
  if (type == 1U) {
    input = 0U;
  } else
  if (type <= 3U) {
    input = 2U;
  } else {
    input = 1U;
  }
  if (((unsigned int )(itv->card)->hw_video & 32768U) != 0U) {
    __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_39026;
    ldv_39025: ;
    if (((__sd->grp_id & 32768U) != 0U && (unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                     u32 ,
                                                                                                                                                                                                                                                     u32 ,
                                                                                                                                                                                                                                                     u32 ))0)) {
      (*(((__sd->ops)->video)->s_routing))(__sd, input, 0U, 0U);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_39026: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_39025;
    } else {
    }
  } else {
  }
  if (((unsigned int )(itv->card)->hw_video & 512U) != 0U) {
    if (type == 1U || type > 3U) {
      input = 8U;
    } else {
      input = 1U;
    }
    input = (u32 )(itv->card)->gr_config | input;
    __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
    goto ldv_39034;
    ldv_39033: ;
    if (((__sd___0->grp_id & 512U) != 0U && (unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___0->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                               u32 ,
                                                                                                                                                                                                                                                               u32 ,
                                                                                                                                                                                                                                                               u32 ))0)) {
      (*(((__sd___0->ops)->video)->s_routing))(__sd___0, input, 0U, 0U);
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
    ldv_39034: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_39033;
    } else {
    }
  } else {
  }
  if (((unsigned int )(itv->card)->hw_video & 1024U) != 0U) {
    input = 0U;
    if (type > 1U && type <= 3U) {
      input = input | 3U;
    } else
    if (((unsigned int )(itv->card)->hw_video & 512U) != 0U) {
      if (type == 1U || (int )(itv->card)->type == 11) {
        input = input | 4U;
      } else {
      }
    } else {
    }
    __mptr___3 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff88UL;
    goto ldv_39042;
    ldv_39041: ;
    if (((__sd___1->grp_id & 1024U) != 0U && (unsigned long )(__sd___1->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___1->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                                                                u32 ))0)) {
      (*(((__sd___1->ops)->video)->s_routing))(__sd___1, input, 0U, 0U);
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff88UL;
    ldv_39042: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_39041;
    } else {
    }
  } else {
  }
  return;
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
  activate_work_2(ldv_func_arg3, 2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
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
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
bool ldv_queue_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_21(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_20(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_23(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_22(struct workqueue_struct *ldv_func_arg1 ) ;
int ivtv_get_input(struct ivtv *itv , u16 index , struct v4l2_input *input ) ;
int ivtv_get_output(struct ivtv *itv , u16 index , struct v4l2_output *output ) ;
int ivtv_get_audio_input(struct ivtv *itv , u16 index , struct v4l2_audio *audio ) ;
int ivtv_get_audio_output(struct ivtv *itv , u16 index , struct v4l2_audioout *aud_output ) ;
struct ivtv_card const *ivtv_get_card(u16 index ) ;
static struct ivtv_card_tuner_i2c ivtv_i2c_std = {{65534U}, {67U, 65534U}, {97U, 96U, 65534U}};
static struct ivtv_card_tuner_i2c ivtv_i2c_radio = {{96U, 65534U}, {67U, 65534U}, {97U, 65534U}};
static struct ivtv_card_tuner_i2c ivtv_i2c_tda8290 = {{65534U}, {65534U}, {75U, 65534U}};
static struct ivtv_card const ivtv_card_pvr250 =
     {0, (char *)"Hauppauge WinTV PVR-250", 0, 16973905U, 2U, 8U, 8U, 0U, 154U, {{1U,
                                                                                0U,
                                                                                4U},
                                                                               {2U,
                                                                                1U,
                                                                                6U},
                                                                               {4U,
                                                                                1U,
                                                                                0U},
                                                                               {3U,
                                                                                2U,
                                                                                7U},
                                                                               {5U,
                                                                                2U,
                                                                                1U},
                                                                               {6U,
                                                                                1U,
                                                                                5U}},
    {{1U, 0U, (unsigned short)0}, {2U, 2236960U, (unsigned short)0}, {3U, 2236962U,
                                                                      (unsigned short)0}},
    {1U, 2236961U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0, {(unsigned short)0,
                                                                                  (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, & ivtv_i2c_std,
    0};
static struct ivtv_card_output ivtv_pvr350_outputs[6U] = { {{'S', '-', 'V', 'i', 'd', 'e', 'o', ' ', '+', ' ', 'C', 'o', 'm', 'p', 'o',
       's', 'i', 't', 'e', '\000'}, 0U},
        {{'C', 'o', 'm', 'p', 'o', 's', 'i', 't', 'e', '\000'}, 1U},
        {{'S', '-', 'V', 'i', 'd', 'e', 'o', '\000'}, 2U},
        {{'R', 'G', 'B', '\000'}, 3U},
        {{'Y', 'U', 'V', ' ', 'C', '\000'}, 4U},
        {{'Y', 'U', 'V', ' ', 'V', '\000'}, 5U}};
static struct ivtv_card const ivtv_card_pvr350 =
     {1, (char *)"Hauppauge WinTV PVR-350", 0, 16974547U, 2U, 8U, 8U, 0U, 393374U, {{1U,
                                                                                   0U,
                                                                                   4U},
                                                                                  {2U,
                                                                                   1U,
                                                                                   6U},
                                                                                  {4U,
                                                                                   1U,
                                                                                   0U},
                                                                                  {3U,
                                                                                   2U,
                                                                                   7U},
                                                                                  {5U,
                                                                                   2U,
                                                                                   1U},
                                                                                  {6U,
                                                                                   1U,
                                                                                   5U}},
    {{1U, 0U, (unsigned short)0}, {2U, 2236960U, (unsigned short)0}, {3U, 2236962U,
                                                                      (unsigned short)0}},
    {1U, 2236961U, (unsigned short)0}, 6, (struct ivtv_card_output const *)(& ivtv_pvr350_outputs),
    (unsigned char)0, (unsigned char)0, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, & ivtv_i2c_std,
    0};
static struct ivtv_card const ivtv_card_pvr350_v1 =
     {28, (char *)"Hauppauge WinTV PVR-350 (V1)", 0, 16974547U, 256U, 8U, 8U, 0U, 412U,
    {{1U, 0U, 4U}, {2U, 1U, 6U}, {4U, 1U, 0U}, {3U, 2U, 7U}, {5U, 2U, 1U}, {6U, 1U,
                                                                            5U}},
    {{1U, 2236966U, (unsigned short)0}, {2U, 2236960U, (unsigned short)0}, {3U, 2236962U,
                                                                            (unsigned short)0}},
    {1U, 2236961U, (unsigned short)0}, 6, (struct ivtv_card_output const *)(& ivtv_pvr350_outputs),
    (unsigned char)0, (unsigned char)0, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, & ivtv_i2c_std,
    0};
static struct ivtv_card const ivtv_card_pvr150 =
     {2, (char *)"Hauppauge WinTV PVR-150", 0, 16973905U, 1U, 1U, 1U, 32U, 1966257U,
    {{1U, 0U, 7U}, {2U, 1U, 1296U}, {4U, 1U, 3U}, {3U, 2U, 1568U}, {5U, 2U, 4U}},
    {{1U, 8U, 2U}, {2U, 0U, 2U}, {3U, 0U, 4U}}, {1U, 0U, 8U}, 0, 0, (unsigned char)0,
    (unsigned char)0, {7937U, 9971U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0,
                                       (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                                            (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, & ivtv_i2c_std,
    0};
static struct ivtv_card_pci_info const ivtv_pci_m179[3U] = { {2051U, 5217U, 41935U},
        {2051U, 5217U, 41934U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_m179 =
     {3, (char *)"AVerMedia M179", 0, 16973905U, 256U, 32768U, 32768U, 0U, 33040U, {{1U,
                                                                                   0U,
                                                                                   4U},
                                                                                  {2U,
                                                                                   1U,
                                                                                   6U},
                                                                                  {4U,
                                                                                   1U,
                                                                                   3U}},
    {{1U, 0U, (unsigned short)0}, {2U, 1U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {58240U, 33424U}, {(unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0},
    {32832U, 32768U, 0U, (unsigned short)0}, {8192U, 8192U}, {17152U, 16384U, 512U,
                                                              512U, 256U, 0U}, {24U,
                                                                                0U,
                                                                                8U,
                                                                                16U},
    {16384U, 0U}, {{16777215ULL, 2}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_m179)};
static struct ivtv_card_pci_info const ivtv_pci_mpg600[3U] = { {22U, 4779U, 65523U},
        {22U, 4779U, 65535U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_mpg600 =
     {4, (char *)"Yuan MPG600, Kuroutoshikou ITVC16-STVLP", 0, 16973905U, 2U, 32768U,
    32768U, 0U, 32786U, {{1U, 0U, 4U}, {2U, 1U, 6U}, {4U, 1U, 3U}}, {{1U, 0U, (unsigned short)0},
                                                                     {2U, 1U, (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {12416U, 4U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {12288U, 0U, 8192U, (unsigned short)0}, {1U, 1U}, {14U, 6U, 4U, 4U, 0U, 8U}, {(unsigned short)0,
                                                                                  (unsigned short)0,
                                                                                  (unsigned short)0,
                                                                                  (unsigned short)0},
    {2304U, 256U}, {{16711935ULL, 24}, {16777215ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_mpg600)};
static struct ivtv_card_pci_info const ivtv_pci_mpg160[3U] = { {2051U, 4779U, 0U},
        {2051U, 4348U, 16544U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_mpg160 =
     {5, (char *)"YUAN MPG160, Kuroutoshikou ITVC15-STVLP, I/O Data GV-M2TV/PCI", 0,
    16973905U, 256U, 32768U, 32768U, 0U, 33040U, {{1U, 0U, 4U}, {2U, 1U, 6U}, {4U,
                                                                               1U,
                                                                               3U}},
    {{1U, 0U, (unsigned short)0}, {2U, 1U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {28800U, 16396U}, {(unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0},
    {12288U, 0U, 8192U, (unsigned short)0}, {1U, 1U}, {14U, 6U, 4U, 4U, 0U, 8U}, {(unsigned short)0,
                                                                                  (unsigned short)0,
                                                                                  (unsigned short)0,
                                                                                  (unsigned short)0},
    {2304U, 256U}, {{16711935ULL, 24}, {16777215ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_mpg160)};
static struct ivtv_card_pci_info const ivtv_pci_pg600[3U] = { {22U, 65426U, 112U},
        {22U, 65451U, 1536U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_pg600 =
     {6, (char *)"Yuan PG600, Diamond PVR-550", 0, 16973905U, 1U, 1U, 1U, 0U, 17U, {{1U,
                                                                                   0U,
                                                                                   2U},
                                                                                  {2U,
                                                                                   1U,
                                                                                   1072U},
                                                                                  {4U,
                                                                                   1U,
                                                                                   1U}},
    {{1U, 5U, (unsigned short)0}, {2U, 0U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {(unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16711935ULL, 24}, {16777215ULL, 53}},
    & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_pg600)};
static struct ivtv_card_pci_info const ivtv_pci_avc2410[2U] = { {22U, 36869U, 147U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_avc2410 =
     {7, (char *)"Adaptec VideOh! AVC-2410", 0, 16973905U, 2U, 8U, 8U, 64U, 2097242U,
    {{1U, 0U, 4U}, {2U, 1U, 6U}, {4U, 1U, 3U}}, {{1U, 0U, 0U}, {2U, 2236960U, 2U}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16711935ULL, 38}, {16769023ULL, 43},
                                             {8192ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_avc2410)};
static struct ivtv_card_pci_info const ivtv_pci_avc2010[2U] = { {22U, 36869U, 146U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_avc2010 =
     {8, (char *)"Adaptec VideOh! AVC-2010", 0, 16973905U, 2U, 64U, 64U, 0U, 66U, {{2U,
                                                                                  0U,
                                                                                  6U},
                                                                                 {4U,
                                                                                  0U,
                                                                                  3U}},
    {{2U, 2U, (unsigned short)0}}, {(unsigned char)0, 0U, (unsigned short)0}, 0, 0,
    (unsigned char)0, (unsigned char)0, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, 0,
    (struct ivtv_card_pci_info const *)(& ivtv_pci_avc2010)};
static struct ivtv_card_pci_info const ivtv_pci_tg5000tv[2U] = { {22U, 5217U, 49151U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_tg5000tv =
     {9, (char *)"Nagase Transgear 5000TV", 0, 16973905U, 34560U, 32768U, 32768U, 0U,
    34576U, {{1U, 0U, 6U}, {2U, 1U, 8U}, {4U, 1U, 8U}}, {{1U, 0U, (unsigned short)0},
                                                         {2U, 1U, (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, 32U, (unsigned char)0, {57472U,
                                                                             32768U},
    {48U, 0U, 16U, 32U}, {32896U, 32768U, 128U, (unsigned short)0}, {24576U, 24576U},
    {17152U, 16384U, 512U, 768U, 0U, 512U}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_tg5000tv)};
static struct ivtv_card_pci_info const ivtv_pci_va2000[2U] = { {22U, 0U, 65375U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_va2000 =
     {10, (char *)"AOpen VA2000MAX-SNT6", 0, 16973905U, 1026U, 8U, 8U, 0U, 1050U, {{1U,
                                                                                  0U,
                                                                                  6U}},
    {{1U, 0U, (unsigned short)0}}, {(unsigned char)0, 0U, (unsigned short)0}, 0, 0,
    (unsigned char)0, (unsigned char)0, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0,
                                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_va2000)};
static struct ivtv_card_pci_info const ivtv_pci_cx23416gyc[4U] = { {22U, 4779U, 1536U},
        {22U, 64427U, 1536U},
        {22U, 4436U, 1315U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_cx23416gyc =
     {11, (char *)"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP", 0, 16973905U, 36352U,
    2048U, 2048U, 0U, 36368U, {{1U, 0U, 137U}, {2U, 1U, 6U}, {4U, 1U, 9U}}, {{1U,
                                                                              2U,
                                                                              (unsigned short)0},
                                                                             {2U,
                                                                              0U,
                                                                              (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, 32U, (unsigned char)0, {63616U,
                                                                             34816U},
    {32U, 0U, 32U, 32U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0,
                          (unsigned short)0}, {(unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0}, {49152U, 0U, 16384U, 32768U}, {(unsigned short)0, (unsigned short)0},
    {{16711935ULL, 38}, {16777215ULL, 43}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_cx23416gyc)};
static struct ivtv_card const ivtv_card_cx23416gyc_nogr =
     {29, (char *)"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP (no GR)", 0, 16973905U,
    35840U, 2048U, 2048U, 0U, 35856U, {{1U, 0U, 132U}, {2U, 1U, 6U}, {4U, 1U, 0U}},
    {{1U, 2U, (unsigned short)0}, {2U, 0U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {63616U, 34816U}, {32U, 0U, 32U, 32U},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {49152U, 0U, 16384U, 32768U}, {(unsigned short)0, (unsigned short)0}, {{16711935ULL,
                                                                            38}, {16777215ULL,
                                                                                  43}},
    & ivtv_i2c_std, 0};
static struct ivtv_card const ivtv_card_cx23416gyc_nogrycs =
     {30, (char *)"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP (no GR/YCS)", 0, 16973905U,
    34816U, 2048U, 2048U, 0U, 34832U, {{1U, 0U, 132U}, {2U, 1U, 6U}, {4U, 1U, 0U}},
    {{1U, 2U, (unsigned short)0}, {2U, 0U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {63616U, 34816U}, {32U, 0U, 32U, 32U},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {49152U, 0U, 16384U, 32768U}, {(unsigned short)0, (unsigned short)0}, {{16711935ULL,
                                                                            38}, {16777215ULL,
                                                                                  43}},
    & ivtv_i2c_std, 0};
static struct ivtv_card_pci_info const ivtv_pci_gv_mvprx[4U] = { {22U, 4348U, 53278U},
        {22U, 4348U, 53304U},
        {22U, 4348U, 53305U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_gv_mvprx =
     {12, (char *)"I/O Data GV-MVP/RX, GV-MVP/RX2W (dual tuner)", 0, 16973905U, 1538U,
    32768U, 4096U, 0U, 46610U, {{1U, 0U, 6U}, {2U, 1U, 7U}, {4U, 1U, 8U}}, {{1U, 0U,
                                                                             (unsigned short)0},
                                                                            {2U, 1U,
                                                                             (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {49921U, 512U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {65535U, 512U, 768U, (unsigned short)0}, {(unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0}, {(unsigned short)0, (unsigned short)0, (unsigned short)0,
                          (unsigned short)0}, {(unsigned short)0, (unsigned short)0},
    {{46848ULL, 46}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_gv_mvprx)};
static struct ivtv_card_pci_info const ivtv_pci_gv_mvprx2e[2U] = { {22U, 4348U, 53285U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_gv_mvprx2e =
     {13, (char *)"I/O Data GV-MVP/RX2E", 0, 16973905U, 2U, 32768U, 4096U, 0U, 45074U,
    {{1U, 0U, 4U}, {2U, 1U, 6U}, {4U, 1U, 3U}}, {{1U, 0U, (unsigned short)0}, {2U,
                                                                               1U,
                                                                               (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {49921U, 512U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {65535U, 512U, 768U, (unsigned short)0}, {(unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0}, {(unsigned short)0, (unsigned short)0, (unsigned short)0,
                          (unsigned short)0}, {(unsigned short)0, (unsigned short)0},
    {{46848ULL, 46}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_gv_mvprx2e)};
static struct ivtv_card_pci_info const ivtv_pci_gotview_pci_dvd[2U] = { {22U, 4779U, 1536U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_gotview_pci_dvd =
     {14, (char *)"GotView PCI DVD", 0, 16973905U, 2048U, 2048U, 2048U, 0U, 2064U, {{1U,
                                                                                   0U,
                                                                                   1U},
                                                                                  {2U,
                                                                                   1U,
                                                                                   6U},
                                                                                  {4U,
                                                                                   1U,
                                                                                   3U}},
    {{1U, 0U, (unsigned short)0}, {2U, 2U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {61440U, 40960U}, {(unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16711935ULL, 38}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_gotview_pci_dvd)};
static struct ivtv_card_pci_info const ivtv_pci_gotview_pci_dvd2[2U] = { {22U, 65452U, 1536U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_gotview_pci_dvd2 =
     {15, (char *)"GotView PCI DVD2 Deluxe", 0, 16973905U, 1U, 1U, 1U, 32768U, 17U,
    {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}}, {{1U, 5U, 0U}, {2U, 0U, 1U}}, {1U,
                                                                                  0U,
                                                                                  2U},
    0, 0, (unsigned char)0, (unsigned char)0, {2048U, 0U}, {(unsigned short)0, (unsigned short)0,
                                                            (unsigned short)0, (unsigned short)0},
    {2048U, 0U, 0U, 2048U}, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                     (unsigned short)0,
                                                                     (unsigned short)0,
                                                                     (unsigned short)0,
                                                                     (unsigned short)0,
                                                                     (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16711935ULL, 38}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_gotview_pci_dvd2)};
static struct ivtv_card_pci_info const ivtv_pci_yuan_mpc622[2U] = { {22U, 65281U, 55704U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_yuan_mpc622 =
     {16, (char *)"Yuan MPC622", 0, 16973905U, 1U, 1U, 1U, 0U, 17U, {{1U, 0U, 2U}, {2U,
                                                                                  1U,
                                                                                  1072U},
                                                                   {4U, 1U, 1U}},
    {{1U, 5U, (unsigned short)0}, {2U, 0U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {255U, 2U}, {(unsigned short)0, (unsigned short)0,
                                                           (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 54}}, & ivtv_i2c_tda8290,
    (struct ivtv_card_pci_info const *)(& ivtv_pci_yuan_mpc622)};
static struct ivtv_card_pci_info const ivtv_pci_dctmvtvp1[2U] = { {22U, 5217U, 49151U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_dctmvtvp1 =
     {17, (char *)"Digital Cowboy DCT-MTVP1", 0, 16973905U, 34306U, 32768U, 32768U,
    0U, 34322U, {{1U, 0U, 6U}, {2U, 1U, 8U}, {4U, 1U, 8U}}, {{1U, 0U, (unsigned short)0},
                                                             {2U, 1U, (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {57472U, 32768U}, {48U, 0U, 16U, 32U}, {32896U, 32768U, 128U, (unsigned short)0},
    {24576U, 24576U}, {17152U, 16384U, 512U, 768U, 0U, 512U}, {(unsigned short)0,
                                                               (unsigned short)0,
                                                               (unsigned short)0,
                                                               (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 53}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_dctmvtvp1)};
static struct ivtv_card_pci_info const ivtv_pci_pg600v2[3U] = { {22U, 65451U, 1536U},
        {22U, 65453U, 1536U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_pg600v2 =
     {18, (char *)"Yuan PG600-2, GotView PCI DVD Lite", 0, 16973905U, 1U, 1U, 1U, 0U,
    17U, {{1U, 0U, 2U}, {2U, 1U, 1072U}, {4U, 1U, 1U}}, {{1U, 5U, (unsigned short)0},
                                                         {2U, 0U, (unsigned short)0}},
    {1U, 5U, (unsigned short)0}, 0, 0, (unsigned char)0, 12U, {(unsigned short)0,
                                                               (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 71}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_pg600v2)};
static struct ivtv_card_pci_info const ivtv_pci_club3d[2U] = { {22U, 65451U, 1536U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_club3d =
     {19, (char *)"Club3D ZAP-TV1x01", 0, 16973905U, 1U, 1U, 1U, 0U, 17U, {{1U, 0U,
                                                                          2U}, {2U,
                                                                                1U,
                                                                                1072U},
                                                                         {4U, 1U,
                                                                          3U}}, {{1U,
                                                                                  5U,
                                                                                  (unsigned short)0},
                                                                                 {2U,
                                                                                  0U,
                                                                                  (unsigned short)0}},
    {1U, 5U, (unsigned short)0}, 0, 0, (unsigned char)0, 12U, {(unsigned short)0,
                                                               (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 71}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_club3d)};
static struct ivtv_card_pci_info const ivtv_pci_avertv_mce116[2U] = { {22U, 5217U, 50233U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_avertv_mce116 =
     {20, (char *)"AVerTV MCE 116 Plus", 0, 16973905U, 1U, 1U, 1U, 0U, 69649U, {{1U,
                                                                               0U,
                                                                               2U},
                                                                              {2U,
                                                                               1U,
                                                                               1840U},
                                                                              {4U,
                                                                               1U,
                                                                               1U}},
    {{1U, 5U, (unsigned short)0}, {2U, 0U, 1U}}, {1U, 5U, (unsigned short)0}, 0, 0,
    (unsigned char)0, 10U, {57344U, 16384U}, {(unsigned short)0, (unsigned short)0,
                                              (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 71}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_avertv_mce116)};
static struct ivtv_card_pci_info const ivtv_pci_aver_pvr150[3U] = { {22U, 5217U, 49204U},
        {22U, 5217U, 49205U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_aver_pvr150 =
     {22, (char *)"AVerMedia PVR-150 Plus / AVerTV M113 Partsnic (Daewoo) Tuner", 0,
    16973905U, 1U, 1U, 1U, 32768U, 36881U, {{1U, 0U, 2U}, {2U, 1U, 1840U}, {4U, 1U,
                                                                            1U}},
    {{1U, 5U, 0U}, {2U, 0U, 1U}}, {1U, 0U, 2U}, 0, 0, (unsigned char)0, (unsigned char)0,
    {49152U, 0U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {49152U, 0U, 16384U, 32768U}, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 81}}, & ivtv_i2c_radio, (struct ivtv_card_pci_info const *)(& ivtv_pci_aver_pvr150)};
static struct ivtv_card_pci_info const ivtv_pci_aver_ultra1500mce[3U] = { {22U, 5217U, 49177U},
        {22U, 5217U, 49179U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_aver_ultra1500mce =
     {26, (char *)"AVerMedia UltraTV 1500 MCE / AVerTV M113 Philips Tuner", (char *)"For non-NTSC tuners, use the pal= or secam= module options",
    16973905U, 1U, 1U, 1U, 32768U, 36881U, {{1U, 0U, 2U}, {2U, 1U, 1840U}, {4U, 1U,
                                                                            1U}},
    {{1U, 5U, 0U}, {2U, 0U, 1U}}, {1U, 0U, 2U}, 0, 0, (unsigned char)0, (unsigned char)0,
    {49152U, 0U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {49152U, 0U, 16384U, 32768U}, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0,
                                                                           (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 43}, {16711935ULL, 79}}, & ivtv_i2c_std,
    (struct ivtv_card_pci_info const *)(& ivtv_pci_aver_ultra1500mce)};
static struct ivtv_card_pci_info const ivtv_pci_aver_ezmaker[2U] = { {22U, 5217U, 49215U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_aver_ezmaker =
     {23, (char *)"AVerMedia EZMaker PCI Deluxe", 0, 16973905U, 1U, 1U, 1U, 0U, 4097U,
    {{2U, 0U, 1840U}, {4U, 0U, 1U}}, {{2U, 0U, 0U}}, {(unsigned char)0, 0U, (unsigned short)0},
    0, 0, (unsigned char)0, (unsigned char)0, {16384U, 16384U}, {(unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0,
                                                                 (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{0ULL, 0}, {0ULL, 0}, {0ULL, 0}}, 0,
    (struct ivtv_card_pci_info const *)(& ivtv_pci_aver_ezmaker)};
static struct ivtv_card_pci_info const ivtv_pci_asus_falcon2[4U] = { {22U, 4163U, 19302U},
        {22U, 4163U, 17966U},
        {22U, 4163U, 19246U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_asus_falcon2 =
     {21, (char *)"ASUS Falcon2", 0, 16973905U, 1U, 1U, 1U, 16384U, 16401U, {{1U, 0U,
                                                                            2U}, {2U,
                                                                                  1U,
                                                                                  1840U},
                                                                           {4U, 2U,
                                                                            2U}},
    {{1U, 5U, 0U}, {2U, 0U, 1285U}, {2U, 0U, 257U}}, {1U, 0U, 0U}, 0, 0, (unsigned char)0,
    (unsigned char)0, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                               (unsigned short)0,
                                                               (unsigned short)0,
                                                               (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{46848ULL, 43}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_asus_falcon2)};
static struct ivtv_card_pci_info const ivtv_pci_aver_m104[2U] = { {22U, 5217U, 49462U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_aver_m104 =
     {24, (char *)"AVerMedia M104", (char *)"Not yet supported!\n", 0U, 1U, 1U, 1U,
    0U, 4113U, {{2U, 0U, 1840U}, {4U, 0U, 1U}}, {{2U, 0U, 1U}}, {1U, 0U, 2U}, 0, 0,
    (unsigned char)0, 10U, {57344U, 16384U}, {(unsigned short)0, (unsigned short)0,
                                              (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 71}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_aver_m104)};
static struct ivtv_card_pci_info const ivtv_pci_buffalo[2U] = { {22U, 4436U, 1323U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_buffalo =
     {25, (char *)"Buffalo PC-MV5L/PCI", 0, 16973905U, 1U, 1U, 1U, 0U, 17U, {{1U, 0U,
                                                                            2U}, {2U,
                                                                                  1U,
                                                                                  1072U},
                                                                           {4U, 1U,
                                                                            1U}},
    {{1U, 5U, (unsigned short)0}, {2U, 0U, (unsigned short)0}}, {(unsigned char)0,
                                                                 0U, (unsigned short)0},
    0, 0, (unsigned char)0, 12U, {(unsigned short)0, (unsigned short)0}, {(unsigned short)0,
                                                                          (unsigned short)0,
                                                                          (unsigned short)0,
                                                                          (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {(unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0,
                                             (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 71}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_buffalo)};
static struct ivtv_card_pci_info const ivtv_pci_kikyou[2U] = { {22U, 4173U, 33085U},
        {0U, 0U, 0U}};
static struct ivtv_card const ivtv_card_kikyou =
     {27, (char *)"Sony VAIO Giga Pocket (ENX Kikyou)", 0, 16973905U, 2U, 32768U, 32768U,
    0U, 32786U, {{1U, 0U, 1U}, {4U, 1U, 1U}, {2U, 1U, 7U}}, {{1U, 0U, (unsigned short)0},
                                                             {2U, 1U, (unsigned short)0},
                                                             {3U, 1U, (unsigned short)0}},
    {(unsigned char)0, 0U, (unsigned short)0}, 0, 0, (unsigned char)0, (unsigned char)0,
    {993U, 800U}, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
    {96U, 32U, 0U, 96U}, {0U, 0U}, {128U, 0U, 0U, 128U, 0U, 128U}, {(unsigned short)0,
                                                                    (unsigned short)0,
                                                                    (unsigned short)0,
                                                                    (unsigned short)0},
    {(unsigned short)0, (unsigned short)0}, {{16777215ULL, 84}}, & ivtv_i2c_std, (struct ivtv_card_pci_info const *)(& ivtv_pci_kikyou)};
static struct ivtv_card const *ivtv_card_list[31U] =
  { & ivtv_card_pvr250, & ivtv_card_pvr350, & ivtv_card_pvr150, & ivtv_card_m179,
        & ivtv_card_mpg600, & ivtv_card_mpg160, & ivtv_card_pg600, & ivtv_card_avc2410,
        & ivtv_card_avc2010, & ivtv_card_tg5000tv, & ivtv_card_va2000, & ivtv_card_cx23416gyc,
        & ivtv_card_gv_mvprx, & ivtv_card_gv_mvprx2e, & ivtv_card_gotview_pci_dvd, & ivtv_card_gotview_pci_dvd2,
        & ivtv_card_yuan_mpc622, & ivtv_card_dctmvtvp1, & ivtv_card_pg600v2, & ivtv_card_club3d,
        & ivtv_card_avertv_mce116, & ivtv_card_asus_falcon2, & ivtv_card_aver_pvr150, & ivtv_card_aver_ezmaker,
        & ivtv_card_aver_m104, & ivtv_card_buffalo, & ivtv_card_aver_ultra1500mce, & ivtv_card_kikyou,
        & ivtv_card_pvr350_v1, & ivtv_card_cx23416gyc_nogr, & ivtv_card_cx23416gyc_nogrycs};
struct ivtv_card const *ivtv_get_card(u16 index )
{
  {
  if ((unsigned int )index > 30U) {
    return ((struct ivtv_card const *)0);
  } else {
  }
  return (ivtv_card_list[(int )index]);
}
}
int ivtv_get_input(struct ivtv *itv , u16 index , struct v4l2_input *input )
{
  struct ivtv_card_video_input const *card_input ;
  char const *input_strs[6U] ;
  {
  card_input = (struct ivtv_card_video_input const *)(& (itv->card)->video_inputs) + (unsigned long )index;
  input_strs[0] = "Tuner 1";
  input_strs[1] = "S-Video 1";
  input_strs[2] = "S-Video 2";
  input_strs[3] = "Composite 1";
  input_strs[4] = "Composite 2";
  input_strs[5] = "Composite 3";
  if ((int )((unsigned short )itv->nof_inputs) <= (int )index) {
    return (-22);
  } else {
  }
  input->index = (__u32 )index;
  strlcpy((char *)(& input->name), input_strs[(int )card_input->video_type + -1],
          32UL);
  input->type = (unsigned int )((unsigned char )card_input->video_type) == 1U ? 1U : 2U;
  input->audioset = (__u32 )((1 << (int )itv->nof_audio_inputs) + -1);
  input->std = input->type == 1U ? itv->tuner_std : 16777215ULL;
  return (0);
}
}
int ivtv_get_output(struct ivtv *itv , u16 index , struct v4l2_output *output )
{
  struct ivtv_card_output const *card_output ;
  {
  card_output = (itv->card)->video_outputs + (unsigned long )index;
  if ((int )index >= (int )(itv->card)->nof_outputs) {
    return (-22);
  } else {
  }
  output->index = (__u32 )index;
  strlcpy((char *)(& output->name), (char const *)(& card_output->name), 32UL);
  output->type = 2U;
  output->audioset = 1U;
  output->std = 16777215ULL;
  return (0);
}
}
int ivtv_get_audio_input(struct ivtv *itv , u16 index , struct v4l2_audio *audio )
{
  struct ivtv_card_audio_input const *aud_input ;
  char const *input_strs[3U] ;
  {
  aud_input = (struct ivtv_card_audio_input const *)(& (itv->card)->audio_inputs) + (unsigned long )index;
  input_strs[0] = "Tuner 1";
  input_strs[1] = "Line In 1";
  input_strs[2] = "Line In 2";
  memset((void *)audio, 0, 52UL);
  if ((int )((unsigned short )itv->nof_audio_inputs) <= (int )index) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& audio->name), input_strs[(int )aud_input->audio_type + -1], 32UL);
  audio->index = (__u32 )index;
  audio->capability = 1U;
  return (0);
}
}
int ivtv_get_audio_output(struct ivtv *itv , u16 index , struct v4l2_audioout *aud_output )
{
  {
  memset((void *)aud_output, 0, 52UL);
  if ((unsigned long )(itv->card)->video_outputs == (unsigned long )((struct ivtv_card_output const * )0) || (unsigned int )index != 0U) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& aud_output->name), "A/V Audio Out", 32UL);
  return (0);
}
}
bool ldv_queue_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_20(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_21(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_22(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_23(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int printk(char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
bool ldv_queue_work_on_33(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_35(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_34(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_36(struct workqueue_struct *ldv_func_arg1 ) ;
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
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_17 ;
struct cx2341x_handler *ivtv_cxhdl_ops_group0 ;
int ldv_state_variable_16 ;
struct v4l2_ctrl *ivtv_hdl_out_ops_group0 ;
void ldv_initialize_v4l2_ctrl_ops_16(void) ;
void ldv_initialize_cx2341x_handler_ops_17(void) ;
int ivtv_debug ;
void ivtv_expand_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal ) ;
u16 ivtv_get_service_set(struct v4l2_sliced_vbi_format *fmt ) ;
struct cx2341x_handler_ops ivtv_cxhdl_ops ;
struct v4l2_ctrl_ops const ivtv_hdl_out_ops ;
int ivtv_g_pts_frame(struct ivtv *itv , s64 *pts , s64 *frame ) ;
int ivtv_api(struct ivtv *itv , int cmd , int args , u32 *data ) ;
int ivtv_vapi(struct ivtv *itv , int cmd , int args , ...) ;
static int ivtv_s_stream_vbi_fmt(struct cx2341x_handler *cxhdl , u32 fmt )
{
  struct ivtv *itv ;
  struct cx2341x_handler const *__mptr ;
  int i ;
  void *tmp ;
  u16 tmp___0 ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe98UL;
  if (fmt != 0U && (unsigned long )itv->vbi.sliced_mpeg_data[0] == (unsigned long )((u8 *)0U)) {
    i = 0;
    goto ldv_38952;
    ldv_38951:
    tmp = kmalloc(2049UL, 208U);
    itv->vbi.sliced_mpeg_data[i] = (u8 *)tmp;
    if ((unsigned long )itv->vbi.sliced_mpeg_data[i] == (unsigned long )((u8 *)0U)) {
      goto ldv_38949;
      ldv_38948:
      kfree((void const *)itv->vbi.sliced_mpeg_data[i]);
      itv->vbi.sliced_mpeg_data[i] = (u8 *)0U;
      ldv_38949:
      i = i - 1;
      if (i >= 0) {
        goto ldv_38948;
      } else {
      }
      return (-12);
    } else {
    }
    i = i + 1;
    ldv_38952: ;
    if (i <= 31) {
      goto ldv_38951;
    } else {
    }
  } else {
  }
  itv->vbi.insert_mpeg = (int )fmt;
  if (itv->vbi.insert_mpeg == 0) {
    return (0);
  } else {
  }
  tmp___0 = ivtv_get_service_set(itv->vbi.sliced_in);
  if ((unsigned int )tmp___0 == 0U) {
    if ((unsigned int )itv->is_60hz != 0U) {
      (itv->vbi.sliced_in)->service_set = 4096U;
    } else {
      (itv->vbi.sliced_in)->service_set = 16384U;
    }
    ivtv_expand_service_set(itv->vbi.sliced_in, (int )itv->is_50hz);
  } else {
  }
  return (0);
}
}
static int ivtv_s_video_encoding(struct cx2341x_handler *cxhdl , u32 val )
{
  struct ivtv *itv ;
  struct cx2341x_handler const *__mptr ;
  int is_mpeg1 ;
  struct v4l2_subdev_format format ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe98UL;
  is_mpeg1 = val == 0U;
  format.which = 1U;
  format.pad = 0U;
  format.format.width = 0U;
  format.format.height = 0U;
  format.format.code = 0U;
  format.format.field = 0U;
  format.format.colorspace = 0U;
  format.format.ycbcr_enc = (unsigned short)0;
  format.format.quantization = (unsigned short)0;
  format.format.xfer_func = (unsigned short)0;
  format.format.reserved[0] = (unsigned short)0;
  format.format.reserved[1] = (unsigned short)0;
  format.format.reserved[2] = (unsigned short)0;
  format.format.reserved[3] = (unsigned short)0;
  format.format.reserved[4] = (unsigned short)0;
  format.format.reserved[5] = (unsigned short)0;
  format.format.reserved[6] = (unsigned short)0;
  format.format.reserved[7] = (unsigned short)0;
  format.format.reserved[8] = (unsigned short)0;
  format.format.reserved[9] = (unsigned short)0;
  format.format.reserved[10] = (unsigned short)0;
  format.reserved[0] = 0U;
  format.reserved[1] = 0U;
  format.reserved[2] = 0U;
  format.reserved[3] = 0U;
  format.reserved[4] = 0U;
  format.reserved[5] = 0U;
  format.reserved[6] = 0U;
  format.reserved[7] = 0U;
  format.format.width = (__u32 )((int )cxhdl->width / (is_mpeg1 != 0 ? 2 : 1));
  format.format.height = (__u32 )cxhdl->height;
  format.format.code = 1U;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                struct v4l2_subdev_pad_config * ,
                                                                                                                                                                                                                                struct v4l2_subdev_format * ))0)) {
      (*((((itv->sd_video)->ops)->pad)->set_fmt))(itv->sd_video, (struct v4l2_subdev_pad_config *)0,
                                                  & format);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ivtv_s_audio_sampling_freq(struct cx2341x_handler *cxhdl , u32 idx )
{
  u32 freqs[3U] ;
  struct ivtv *itv ;
  struct cx2341x_handler const *__mptr ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  freqs[0] = 44100U;
  freqs[1] = 48000U;
  freqs[2] = 32000U;
  __mptr = (struct cx2341x_handler const *)cxhdl;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe98UL;
  if (idx <= 2U) {
    __mptr___0 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    goto ldv_38979;
    ldv_38978: ;
    if ((unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd->ops)->audio)->s_clock_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                     u32 ))0)) {
      (*(((__sd->ops)->audio)->s_clock_freq))(__sd, freqs[idx]);
    } else {
    }
    __mptr___1 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
    ldv_38979: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_38978;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ivtv_s_audio_mode(struct cx2341x_handler *cxhdl , u32 val )
{
  struct ivtv *itv ;
  struct cx2341x_handler const *__mptr ;
  {
  __mptr = (struct cx2341x_handler const *)cxhdl;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe98UL;
  itv->dualwatch_stereo_mode = val;
  return (0);
}
}
struct cx2341x_handler_ops ivtv_cxhdl_ops = {& ivtv_s_audio_sampling_freq, & ivtv_s_audio_mode, & ivtv_s_video_encoding, & ivtv_s_stream_vbi_fmt};
int ivtv_g_pts_frame(struct ivtv *itv , s64 *pts , s64 *frame )
{
  u32 data[16U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = constant_test_bit(14L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp != 0) {
    *pts = (s64 )(((unsigned long long )itv->last_dec_timing[2] << 32) | (unsigned long long )itv->last_dec_timing[1]);
    *frame = (s64 )itv->last_dec_timing[0];
    return (0);
  } else {
  }
  *pts = 0LL;
  *frame = 0LL;
  tmp___1 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___1 != 0) {
    tmp___0 = ivtv_api(itv, 21, 5, (u32 *)(& data));
    if (tmp___0 != 0) {
      if (ivtv_debug & 1) {
        printk("\016%s:  warn: GET_TIMING: couldn\'t read clock\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (-5);
    } else {
    }
    memcpy((void *)(& itv->last_dec_timing), (void const *)(& data), 12UL);
    set_bit(14L, (unsigned long volatile *)(& itv->i_flags));
    *pts = (s64 )(((unsigned long long )data[2] << 32) | (unsigned long long )data[1]);
    *frame = (s64 )data[0];
  } else {
  }
  return (0);
}
}
static int ivtv_g_volatile_ctrl(struct v4l2_ctrl *ctrl )
{
  struct ivtv *itv ;
  struct v4l2_ctrl_handler const *__mptr ;
  int tmp ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe80UL;
  switch (ctrl->id) {
  case 10029535U:
  tmp = ivtv_g_pts_frame(itv, (itv->__annonCompField105.ctrl_pts)->p_new.p_s64, (itv->__annonCompField105.ctrl_frame)->p_new.p_s64);
  return (tmp);
  }
  return (0);
}
}
static int ivtv_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct ivtv *itv ;
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  itv = (struct ivtv *)__mptr + 0xfffffffffffffe80UL;
  switch (ctrl->id) {
  case 10029424U:
  itv->audio_stereo_mode = (unsigned int )((u8 )(itv->__annonCompField106.ctrl_audio_playback)->val) + 255U;
  itv->audio_bilingual_mode = (unsigned int )((u8 )(itv->__annonCompField106.ctrl_audio_multilingual_playback)->val) + 255U;
  ivtv_vapi(itv, 22, 2, (int )itv->audio_bilingual_mode, (int )itv->audio_stereo_mode);
  goto ldv_39009;
  }
  ldv_39009: ;
  return (0);
}
}
struct v4l2_ctrl_ops const ivtv_hdl_out_ops = {& ivtv_g_volatile_ctrl, 0, & ivtv_s_ctrl};
void ldv_initialize_v4l2_ctrl_ops_16(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(208UL);
  ivtv_hdl_out_ops_group0 = (struct v4l2_ctrl *)tmp;
  return;
}
}
void ldv_initialize_cx2341x_handler_ops_17(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(520UL);
  ivtv_cxhdl_ops_group0 = (struct cx2341x_handler *)tmp;
  return;
}
}
void ldv_main_exported_16(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_16 == 1) {
    ivtv_s_ctrl(ivtv_hdl_out_ops_group0);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_39021;
  case 1: ;
  if (ldv_state_variable_16 == 1) {
    ivtv_g_volatile_ctrl(ivtv_hdl_out_ops_group0);
    ldv_state_variable_16 = 1;
  } else {
  }
  goto ldv_39021;
  default:
  ldv_stop();
  }
  ldv_39021: ;
  return;
}
}
void ldv_main_exported_17(void)
{
  u32 ldvarg86 ;
  u32 ldvarg87 ;
  u32 ldvarg88 ;
  u32 ldvarg85 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg86), 0, 4UL);
  ldv_memset((void *)(& ldvarg87), 0, 4UL);
  ldv_memset((void *)(& ldvarg88), 0, 4UL);
  ldv_memset((void *)(& ldvarg85), 0, 4UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_17 == 1) {
    ivtv_s_stream_vbi_fmt(ivtv_cxhdl_ops_group0, ldvarg88);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_39032;
  case 1: ;
  if (ldv_state_variable_17 == 1) {
    ivtv_s_video_encoding(ivtv_cxhdl_ops_group0, ldvarg87);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_39032;
  case 2: ;
  if (ldv_state_variable_17 == 1) {
    ivtv_s_audio_sampling_freq(ivtv_cxhdl_ops_group0, ldvarg86);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_39032;
  case 3: ;
  if (ldv_state_variable_17 == 1) {
    ivtv_s_audio_mode(ivtv_cxhdl_ops_group0, ldvarg85);
    ldv_state_variable_17 = 1;
  } else {
  }
  goto ldv_39032;
  default:
  ldv_stop();
  }
  ldv_39032: ;
  return;
}
}
bool ldv_queue_work_on_33(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_34(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_35(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_36(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_37(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
bool ldv_is_err(void const *ptr ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  default:
  __bad_percpu_size();
  }
  ldv_3129: ;
  return (pfo_ret__);
}
}
extern char *strstr(char const * , char const * ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_55(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_48(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_52(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_47(8192, wq, work);
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
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
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
extern int __request_module(bool , char const * , ...) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern int sched_setscheduler(struct task_struct * , int , struct sched_param const * ) ;
extern int wake_up_process(struct task_struct * ) ;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
struct file *ivtv_v4l2_dec_fops_group0 ;
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
int pci_counter ;
struct timer_list *ldv_timer_list_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct v4l2_audioout *ivtv_ioctl_ops_group7 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
int ldv_state_variable_14 ;
int ldv_state_variable_17 ;
struct work_struct *ldv_work_struct_2_3 ;
struct v4l2_subdev *subdev_tuner_ops_group0 ;
struct cx2341x_handler *ivtv_cxhdl_ops_group0 ;
struct work_struct *ldv_work_struct_2_0 ;
struct i2c_adapter *ivtv_algo_group0 ;
int ldv_state_variable_9 ;
struct file *ivtv_v4l2_radio_fops_group0 ;
struct file *ivtv_ioctl_ops_group3 ;
struct work_struct *ldv_work_struct_2_2 ;
struct v4l2_subdev *subdev_audio_ops_group0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
void *ldv_irq_data_1_1 ;
struct v4l2_subdev *subdev_core_ops_group1 ;
int ldv_state_variable_10 ;
struct v4l2_decoder_cmd *ivtv_ioctl_ops_group5 ;
struct work_struct *ldv_work_struct_2_1 ;
struct v4l2_audio *ivtv_ioctl_ops_group2 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
struct v4l2_fh *ivtv_ioctl_ops_group4 ;
int ldv_state_variable_16 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct v4l2_ctrl *ivtv_hdl_out_ops_group0 ;
int ldv_work_2_0 ;
struct v4l2_ext_controls *subdev_core_ops_group0 ;
void *ldv_irq_data_1_2 ;
struct file *ivtv_v4l2_enc_fops_group0 ;
struct v4l2_control *subdev_core_ops_group2 ;
struct v4l2_encoder_cmd *ivtv_ioctl_ops_group8 ;
int ldv_state_variable_11 ;
struct v4l2_selection *ivtv_ioctl_ops_group9 ;
struct v4l2_format *ivtv_ioctl_ops_group6 ;
int ldv_irq_line_1_3 ;
struct v4l2_fmtdesc *ivtv_ioctl_ops_group0 ;
int ldv_work_2_2 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct v4l2_event_subscription const *ivtv_ioctl_ops_group1 ;
struct pci_dev *ivtv_pci_driver_group1 ;
int ldv_work_2_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
void ldv_initialize_v4l2_subdev_audio_ops_11(void) ;
void ldv_initialize_v4l2_subdev_tuner_ops_12(void) ;
void work_init_2(void) ;
void choose_timer_3(struct timer_list *timer ) ;
void ldv_initialize_v4l2_file_operations_6(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_pci_driver_15(void) ;
void ldv_initialize_v4l2_ioctl_ops_7(void) ;
void choose_interrupt_1(void) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void ldv_initialize_v4l2_subdev_core_ops_13(void) ;
void ldv_initialize_i2c_algorithm_9(void) ;
void disable_work_2(struct work_struct *work ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_v4l2_file_operations_5(void) ;
int reg_timer_3(struct timer_list *timer ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void ldv_initialize_v4l2_file_operations_4(void) ;
void invoke_work_2(void) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
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
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
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
__inline static int ldv_request_irq_53(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_56(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern void __init_kthread_worker(struct kthread_worker * , char const * , struct lock_class_key * ) ;
extern int kthread_worker_fn(void * ) ;
extern void flush_kthread_worker(struct kthread_worker * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s64 , s64 , u64 , s64 ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                                u32 , u8 , u64 , u8 ) ;
extern void v4l2_ctrl_cluster(unsigned int , struct v4l2_ctrl ** ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern int v4l2_device_set_name(struct v4l2_device * , char const * , atomic_t * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int cx2341x_handler_init(struct cx2341x_handler * , unsigned int ) ;
extern void cx2341x_handler_set_50hz(struct cx2341x_handler * , int ) ;
extern int cx2341x_handler_setup(struct cx2341x_handler * ) ;
int ivtv_debug ;
int ivtv_fw_debug ;
__inline static struct ivtv *to_ivtv(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct ivtv *)__mptr + 0xffffffffffffff58UL);
}
}
int (*ivtv_ext_init)(struct ivtv * ) ;
int ivtv_first_minor ;
void ivtv_set_irq_mask(struct ivtv *itv , u32 mask ) ;
void ivtv_clear_irq_mask(struct ivtv *itv , u32 mask ) ;
int ivtv_set_output_mode(struct ivtv *itv , int mode ) ;
struct ivtv_stream *ivtv_get_output_stream(struct ivtv *itv ) ;
int ivtv_msleep_timeout(unsigned int msecs , int intr ) ;
int ivtv_waitq(wait_queue_head_t *waitq ) ;
void ivtv_read_eeprom(struct ivtv *itv , struct tveeprom *tv ) ;
int ivtv_init_on_first_open(struct ivtv *itv ) ;
struct i2c_client *ivtv_i2c_new_ir_legacy(struct ivtv *itv ) ;
int ivtv_i2c_register(struct ivtv *itv , unsigned int idx ) ;
struct v4l2_subdev *ivtv_find_hw(struct ivtv *itv , u32 hw ) ;
int init_ivtv_i2c(struct ivtv *itv ) ;
void exit_ivtv_i2c(struct ivtv *itv ) ;
int ivtv_firmware_init(struct ivtv *itv ) ;
void ivtv_firmware_versions(struct ivtv *itv ) ;
void ivtv_halt_firmware(struct ivtv *itv ) ;
void ivtv_init_mpeg_decoder(struct ivtv *itv ) ;
int ivtv_firmware_check(struct ivtv *itv , char *where ) ;
int ivtv_udma_setup(struct ivtv *itv , unsigned long ivtv_dest_addr , void *userbuf ,
                    int size_in_bytes ) ;
void ivtv_udma_unmap(struct ivtv *itv ) ;
void ivtv_udma_free(struct ivtv *itv ) ;
void ivtv_udma_alloc(struct ivtv *itv ) ;
void ivtv_udma_prepare(struct ivtv *itv ) ;
irqreturn_t ivtv_irq_handler(int irq , void *dev_id ) ;
void ivtv_irq_work_handler(struct kthread_work *work ) ;
void ivtv_unfinished_dma(unsigned long arg ) ;
int ivtv_vapi_result(struct ivtv *itv , u32 *data , int cmd , int args , ...) ;
int ivtv_api_func(void *priv , u32 cmd , int in , int out , u32 *data ) ;
int ivtv_streams_setup(struct ivtv *itv ) ;
int ivtv_streams_register(struct ivtv *itv ) ;
void ivtv_streams_cleanup(struct ivtv *itv ) ;
int ivtv_stop_v4l2_decode_stream(struct ivtv_stream *s , int flags , u64 pts ) ;
void ivtv_stop_all_captures(struct ivtv *itv ) ;
void ivtv_set_osd_alpha(struct ivtv *itv ) ;
void ivtv_s_std_enc(struct ivtv *itv , v4l2_std_id std ) ;
void ivtv_s_std_dec(struct ivtv *itv , v4l2_std_id std ) ;
int ivtv_s_frequency(struct file *file , void *fh , struct v4l2_frequency const *vf ) ;
int ivtv_s_input(struct file *file , void *fh , unsigned int inp ) ;
int ivtv_gpio_init(struct ivtv *itv ) ;
void ivtv_reset_ir_gpio(struct ivtv *itv ) ;
int ivtv_reset_tuner_gpio(void *dev , int component , int cmd , int value ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
extern int tveeprom_read(struct i2c_client * , unsigned char * , int ) ;
static char const __kstrtab_ivtv_ext_init[14U] =
  { 'i', 'v', 't', 'v',
        '_', 'e', 'x', 't',
        '_', 'i', 'n', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab_ivtv_ext_init ;
struct kernel_symbol const __ksymtab_ivtv_ext_init = {(unsigned long )(& ivtv_ext_init), (char const *)(& __kstrtab_ivtv_ext_init)};
static struct pci_device_id ivtv_pci_tbl[3U] = { {17476U, 2051U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {17476U, 22U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__ivtv_pci_tbl_device_table[3U] ;
static atomic_t ivtv_instance = {0};
static int cardtype[32U] ;
static int tuner[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static int radio[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static int i2c_clock_period[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static char pal[4U] = { '-', '-', '-', '\000'};
static char secam[3U] = { '-', '-', '\000'};
static char ntsc[2U] = { '-', '\000'};
static int enc_mpg_buffers = 4;
static int enc_yuv_buffers = 2;
static int enc_vbi_buffers = 1;
static int enc_pcm_buffers = 320;
static int dec_mpg_buffers = 1;
static int dec_yuv_buffers = 1;
static int dec_vbi_buffers = 64;
static int ivtv_yuv_mode ;
static int ivtv_yuv_threshold = -1;
static int ivtv_pci_latency = 1;
static int tunertype = -1;
static int newi2c = -1;
static void request_module_async(struct work_struct *work )
{
  struct ivtv *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct ivtv *)__mptr + 0xffffffffffffa758UL;
  __request_module(1, "ivtv-alsa");
  if ((unsigned long )ivtv_ext_init != (unsigned long )((int (*)(struct ivtv * ))0)) {
    (*ivtv_ext_init)(dev);
  } else {
  }
  return;
}
}
static void request_modules(struct ivtv *dev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  return;
}
}
static void flush_request_modules(struct ivtv *dev )
{
  {
  ldv_flush_work_52(& dev->request_module_wk);
  return;
}
}
void ivtv_clear_irq_mask(struct ivtv *itv , u32 mask )
{
  {
  itv->irqmask = itv->irqmask & ~ mask;
  writel(itv->irqmask, itv->reg_mem + 72UL);
  readl((void const volatile *)itv->reg_mem + 72U);
  return;
}
}
void ivtv_set_irq_mask(struct ivtv *itv , u32 mask )
{
  {
  itv->irqmask = itv->irqmask | mask;
  writel(itv->irqmask, itv->reg_mem + 72UL);
  readl((void const volatile *)itv->reg_mem + 72U);
  return;
}
}
int ivtv_set_output_mode(struct ivtv *itv , int mode )
{
  int old_mode ;
  {
  spin_lock(& itv->lock);
  old_mode = itv->output_mode;
  if (old_mode == 0) {
    old_mode = mode;
    itv->output_mode = old_mode;
  } else {
  }
  spin_unlock(& itv->lock);
  return (old_mode);
}
}
struct ivtv_stream *ivtv_get_output_stream(struct ivtv *itv )
{
  {
  switch (itv->output_mode) {
  case 1: ;
  return ((struct ivtv_stream *)(& itv->streams) + 5UL);
  case 2: ;
  return ((struct ivtv_stream *)(& itv->streams) + 8UL);
  default: ;
  return ((struct ivtv_stream *)0);
  }
}
}
int ivtv_waitq(wait_queue_head_t *waitq )
{
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  prepare_to_wait(waitq, & wait, 1);
  schedule();
  finish_wait(waitq, & wait);
  tmp___0 = get_current();
  tmp___1 = signal_pending(tmp___0);
  return (tmp___1 != 0 ? -4 : 0);
}
}
int ivtv_msleep_timeout(unsigned int msecs , int intr )
{
  int timeout ;
  unsigned long tmp ;
  struct task_struct *tmp___0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  int ret ;
  struct task_struct *tmp___6 ;
  int tmp___7 ;
  {
  tmp = msecs_to_jiffies(msecs);
  timeout = (int )tmp;
  ldv_43192:
  tmp___0 = get_current();
  tmp___0->task_state_change = 0UL;
  __ret = intr != 0 ? 1L : 2L;
  switch (8UL) {
  case 1UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_43185;
  case 2UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_43185;
  case 4UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_43185;
  case 8UL:
  tmp___4 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                       "cc");
  goto ldv_43185;
  default:
  __xchg_wrong_size();
  }
  ldv_43185:
  tmp___5 = schedule_timeout((long )timeout);
  timeout = (int )tmp___5;
  if (intr != 0) {
    tmp___6 = get_current();
    tmp___7 = signal_pending(tmp___6);
    ret = tmp___7;
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if (timeout != 0) {
    goto ldv_43192;
  } else {
  }
  return (0);
}
}
static void ivtv_iounmap(struct ivtv *itv )
{
  {
  if ((unsigned long )itv == (unsigned long )((struct ivtv *)0)) {
    return;
  } else {
  }
  if ((unsigned long )itv->reg_mem != (unsigned long )((void volatile *)0)) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: releasing reg_mem\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    iounmap(itv->reg_mem);
    itv->reg_mem = (void volatile *)0;
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U && (unsigned long )itv->dec_mem != (unsigned long )((void volatile *)0)) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: releasing dec_mem\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    iounmap(itv->dec_mem);
  } else {
  }
  itv->dec_mem = (void volatile *)0;
  if ((unsigned long )itv->enc_mem != (unsigned long )((void volatile *)0)) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: releasing enc_mem\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    iounmap(itv->enc_mem);
    itv->enc_mem = (void volatile *)0;
  } else {
  }
  return;
}
}
void ivtv_read_eeprom(struct ivtv *itv , struct tveeprom *tv )
{
  u8 eedata[256U] ;
  {
  itv->i2c_client.addr = 80U;
  tveeprom_read(& itv->i2c_client, (unsigned char *)(& eedata), 256);
  tveeprom_hauppauge_analog(& itv->i2c_client, tv, (unsigned char *)(& eedata));
  return;
}
}
static void ivtv_process_eeprom(struct ivtv *itv )
{
  struct tveeprom tv ;
  int pci_slot ;
  struct ivtv_card_tuner_i2c ivtv_i2c_radio___0 ;
  unsigned int tmp ;
  int is_first ;
  {
  pci_slot = (int )((itv->pdev)->devfn >> 3) & 31;
  ivtv_read_eeprom(itv, & tv);
  switch (tv.model) {
  case 30039U:
  case 30038U:
  case 30037U:
  case 30036U:
  case 30035U:
  case 30034U:
  case 30033U:
  case 30032U:
  case 30031U:
  case 30030U:
  case 30029U:
  case 30028U:
  case 30027U:
  case 30026U:
  case 30025U:
  case 30024U:
  case 30023U:
  case 30022U:
  case 30021U:
  case 30020U:
  case 30019U:
  case 30018U:
  case 30017U:
  case 30016U:
  case 30015U:
  case 30014U:
  case 30013U:
  case 30012U: ;
  case 32999U:
  case 32998U:
  case 32997U:
  case 32996U:
  case 32995U:
  case 32994U:
  case 32993U:
  case 32992U:
  case 32991U:
  case 32990U:
  case 32989U:
  case 32988U:
  case 32987U:
  case 32986U:
  case 32985U:
  case 32984U:
  case 32983U:
  case 32982U:
  case 32981U:
  case 32980U:
  case 32979U:
  case 32978U:
  case 32977U:
  case 32976U:
  case 32975U:
  case 32974U:
  case 32973U:
  case 32972U:
  case 32971U:
  case 32970U:
  case 32969U:
  case 32968U:
  case 32967U:
  case 32966U:
  case 32965U:
  case 32964U:
  case 32963U:
  case 32962U:
  case 32961U:
  case 32960U:
  case 32959U:
  case 32958U:
  case 32957U:
  case 32956U:
  case 32955U:
  case 32954U:
  case 32953U:
  case 32952U:
  case 32951U:
  case 32950U:
  case 32949U:
  case 32948U:
  case 32947U:
  case 32946U:
  case 32945U:
  case 32944U:
  case 32943U:
  case 32942U:
  case 32941U:
  case 32940U:
  case 32939U:
  case 32938U:
  case 32937U:
  case 32936U:
  case 32935U:
  case 32934U:
  case 32933U:
  case 32932U:
  case 32931U:
  case 32930U:
  case 32929U:
  case 32928U:
  case 32927U:
  case 32926U:
  case 32925U:
  case 32924U:
  case 32923U:
  case 32922U:
  case 32921U:
  case 32920U:
  case 32919U:
  case 32918U:
  case 32917U:
  case 32916U:
  case 32915U:
  case 32914U:
  case 32913U:
  case 32912U:
  case 32911U:
  case 32910U:
  case 32909U:
  case 32908U:
  case 32907U:
  case 32906U:
  case 32905U:
  case 32904U:
  case 32903U:
  case 32902U:
  case 32901U:
  case 32900U:
  case 32899U:
  case 32898U:
  case 32897U:
  case 32896U:
  case 32895U:
  case 32894U:
  case 32893U:
  case 32892U:
  case 32891U:
  case 32890U:
  case 32889U:
  case 32888U:
  case 32887U:
  case 32886U:
  case 32885U:
  case 32884U:
  case 32883U:
  case 32882U:
  case 32881U:
  case 32880U:
  case 32879U:
  case 32878U:
  case 32877U:
  case 32876U:
  case 32875U:
  case 32874U:
  case 32873U:
  case 32872U:
  case 32871U:
  case 32870U:
  case 32869U:
  case 32868U:
  case 32867U:
  case 32866U:
  case 32865U:
  case 32864U:
  case 32863U:
  case 32862U:
  case 32861U:
  case 32860U:
  case 32859U:
  case 32858U:
  case 32857U:
  case 32856U:
  case 32855U:
  case 32854U:
  case 32853U:
  case 32852U:
  case 32851U:
  case 32850U:
  case 32849U:
  case 32848U:
  case 32847U:
  case 32846U:
  case 32845U:
  case 32844U:
  case 32843U:
  case 32842U:
  case 32841U:
  case 32840U:
  case 32839U:
  case 32838U:
  case 32837U:
  case 32836U:
  case 32835U:
  case 32834U:
  case 32833U:
  case 32832U:
  case 32831U:
  case 32830U:
  case 32829U:
  case 32828U:
  case 32827U:
  case 32826U:
  case 32825U:
  case 32824U:
  case 32823U:
  case 32822U:
  case 32821U:
  case 32820U:
  case 32819U:
  case 32818U:
  case 32817U:
  case 32816U:
  case 32815U:
  case 32814U:
  case 32813U:
  case 32812U:
  case 32811U:
  case 32810U:
  case 32809U:
  case 32808U:
  case 32807U:
  case 32806U:
  case 32805U:
  case 32804U:
  case 32803U:
  case 32802U:
  case 32801U:
  case 32800U:
  case 32799U:
  case 32798U:
  case 32797U:
  case 32796U:
  case 32795U:
  case 32794U:
  case 32793U:
  case 32792U:
  case 32791U:
  case 32790U:
  case 32789U:
  case 32788U:
  case 32787U:
  case 32786U:
  case 32785U:
  case 32784U:
  case 32783U:
  case 32782U:
  case 32781U:
  case 32780U:
  case 32779U:
  case 32778U:
  case 32777U:
  case 32776U:
  case 32775U:
  case 32774U:
  case 32773U:
  case 32772U:
  case 32771U:
  case 32770U:
  case 32769U:
  case 32768U:
  case 32767U:
  case 32766U:
  case 32765U:
  case 32764U:
  case 32763U:
  case 32762U:
  case 32761U:
  case 32760U:
  case 32759U:
  case 32758U:
  case 32757U:
  case 32756U:
  case 32755U:
  case 32754U:
  case 32753U:
  case 32752U:
  case 32751U:
  case 32750U:
  case 32749U:
  case 32748U:
  case 32747U:
  case 32746U:
  case 32745U:
  case 32744U:
  case 32743U:
  case 32742U:
  case 32741U:
  case 32740U:
  case 32739U:
  case 32738U:
  case 32737U:
  case 32736U:
  case 32735U:
  case 32734U:
  case 32733U:
  case 32732U:
  case 32731U:
  case 32730U:
  case 32729U:
  case 32728U:
  case 32727U:
  case 32726U:
  case 32725U:
  case 32724U:
  case 32723U:
  case 32722U:
  case 32721U:
  case 32720U:
  case 32719U:
  case 32718U:
  case 32717U:
  case 32716U:
  case 32715U:
  case 32714U:
  case 32713U:
  case 32712U:
  case 32711U:
  case 32710U:
  case 32709U:
  case 32708U:
  case 32707U:
  case 32706U:
  case 32705U:
  case 32704U:
  case 32703U:
  case 32702U:
  case 32701U:
  case 32700U:
  case 32699U:
  case 32698U:
  case 32697U:
  case 32696U:
  case 32695U:
  case 32694U:
  case 32693U:
  case 32692U:
  case 32691U:
  case 32690U:
  case 32689U:
  case 32688U:
  case 32687U:
  case 32686U:
  case 32685U:
  case 32684U:
  case 32683U:
  case 32682U:
  case 32681U:
  case 32680U:
  case 32679U:
  case 32678U:
  case 32677U:
  case 32676U:
  case 32675U:
  case 32674U:
  case 32673U:
  case 32672U:
  case 32671U:
  case 32670U:
  case 32669U:
  case 32668U:
  case 32667U:
  case 32666U:
  case 32665U:
  case 32664U:
  case 32663U:
  case 32662U:
  case 32661U:
  case 32660U:
  case 32659U:
  case 32658U:
  case 32657U:
  case 32656U:
  case 32655U:
  case 32654U:
  case 32653U:
  case 32652U:
  case 32651U:
  case 32650U:
  case 32649U:
  case 32648U:
  case 32647U:
  case 32646U:
  case 32645U:
  case 32644U:
  case 32643U:
  case 32642U:
  case 32641U:
  case 32640U:
  case 32639U:
  case 32638U:
  case 32637U:
  case 32636U:
  case 32635U:
  case 32634U:
  case 32633U:
  case 32632U:
  case 32631U:
  case 32630U:
  case 32629U:
  case 32628U:
  case 32627U:
  case 32626U:
  case 32625U:
  case 32624U:
  case 32623U:
  case 32622U:
  case 32621U:
  case 32620U:
  case 32619U:
  case 32618U:
  case 32617U:
  case 32616U:
  case 32615U:
  case 32614U:
  case 32613U:
  case 32612U:
  case 32611U:
  case 32610U:
  case 32609U:
  case 32608U:
  case 32607U:
  case 32606U:
  case 32605U:
  case 32604U:
  case 32603U:
  case 32602U:
  case 32601U:
  case 32600U:
  case 32599U:
  case 32598U:
  case 32597U:
  case 32596U:
  case 32595U:
  case 32594U:
  case 32593U:
  case 32592U:
  case 32591U:
  case 32590U:
  case 32589U:
  case 32588U:
  case 32587U:
  case 32586U:
  case 32585U:
  case 32584U:
  case 32583U:
  case 32582U:
  case 32581U:
  case 32580U:
  case 32579U:
  case 32578U:
  case 32577U:
  case 32576U:
  case 32575U:
  case 32574U:
  case 32573U:
  case 32572U:
  case 32571U:
  case 32570U:
  case 32569U:
  case 32568U:
  case 32567U:
  case 32566U:
  case 32565U:
  case 32564U:
  case 32563U:
  case 32562U:
  case 32561U:
  case 32560U:
  case 32559U:
  case 32558U:
  case 32557U:
  case 32556U:
  case 32555U:
  case 32554U:
  case 32553U:
  case 32552U:
  case 32551U:
  case 32550U:
  case 32549U:
  case 32548U:
  case 32547U:
  case 32546U:
  case 32545U:
  case 32544U:
  case 32543U:
  case 32542U:
  case 32541U:
  case 32540U:
  case 32539U:
  case 32538U:
  case 32537U:
  case 32536U:
  case 32535U:
  case 32534U:
  case 32533U:
  case 32532U:
  case 32531U:
  case 32530U:
  case 32529U:
  case 32528U:
  case 32527U:
  case 32526U:
  case 32525U:
  case 32524U:
  case 32523U:
  case 32522U:
  case 32521U:
  case 32520U:
  case 32519U:
  case 32518U:
  case 32517U:
  case 32516U:
  case 32515U:
  case 32514U:
  case 32513U:
  case 32512U:
  case 32511U:
  case 32510U:
  case 32509U:
  case 32508U:
  case 32507U:
  case 32506U:
  case 32505U:
  case 32504U:
  case 32503U:
  case 32502U:
  case 32501U:
  case 32500U:
  case 32499U:
  case 32498U:
  case 32497U:
  case 32496U:
  case 32495U:
  case 32494U:
  case 32493U:
  case 32492U:
  case 32491U:
  case 32490U:
  case 32489U:
  case 32488U:
  case 32487U:
  case 32486U:
  case 32485U:
  case 32484U:
  case 32483U:
  case 32482U:
  case 32481U:
  case 32480U:
  case 32479U:
  case 32478U:
  case 32477U:
  case 32476U:
  case 32475U:
  case 32474U:
  case 32473U:
  case 32472U:
  case 32471U:
  case 32470U:
  case 32469U:
  case 32468U:
  case 32467U:
  case 32466U:
  case 32465U:
  case 32464U:
  case 32463U:
  case 32462U:
  case 32461U:
  case 32460U:
  case 32459U:
  case 32458U:
  case 32457U:
  case 32456U:
  case 32455U:
  case 32454U:
  case 32453U:
  case 32452U:
  case 32451U:
  case 32450U:
  case 32449U:
  case 32448U:
  case 32447U:
  case 32446U:
  case 32445U:
  case 32444U:
  case 32443U:
  case 32442U:
  case 32441U:
  case 32440U:
  case 32439U:
  case 32438U:
  case 32437U:
  case 32436U:
  case 32435U:
  case 32434U:
  case 32433U:
  case 32432U:
  case 32431U:
  case 32430U:
  case 32429U:
  case 32428U:
  case 32427U:
  case 32426U:
  case 32425U:
  case 32424U:
  case 32423U:
  case 32422U:
  case 32421U:
  case 32420U:
  case 32419U:
  case 32418U:
  case 32417U:
  case 32416U:
  case 32415U:
  case 32414U:
  case 32413U:
  case 32412U:
  case 32411U:
  case 32410U:
  case 32409U:
  case 32408U:
  case 32407U:
  case 32406U:
  case 32405U:
  case 32404U:
  case 32403U:
  case 32402U:
  case 32401U:
  case 32400U:
  case 32399U:
  case 32398U:
  case 32397U:
  case 32396U:
  case 32395U:
  case 32394U:
  case 32393U:
  case 32392U:
  case 32391U:
  case 32390U:
  case 32389U:
  case 32388U:
  case 32387U:
  case 32386U:
  case 32385U:
  case 32384U:
  case 32383U:
  case 32382U:
  case 32381U:
  case 32380U:
  case 32379U:
  case 32378U:
  case 32377U:
  case 32376U:
  case 32375U:
  case 32374U:
  case 32373U:
  case 32372U:
  case 32371U:
  case 32370U:
  case 32369U:
  case 32368U:
  case 32367U:
  case 32366U:
  case 32365U:
  case 32364U:
  case 32363U:
  case 32362U:
  case 32361U:
  case 32360U:
  case 32359U:
  case 32358U:
  case 32357U:
  case 32356U:
  case 32355U:
  case 32354U:
  case 32353U:
  case 32352U:
  case 32351U:
  case 32350U:
  case 32349U:
  case 32348U:
  case 32347U:
  case 32346U:
  case 32345U:
  case 32344U:
  case 32343U:
  case 32342U:
  case 32341U:
  case 32340U:
  case 32339U:
  case 32338U:
  case 32337U:
  case 32336U:
  case 32335U:
  case 32334U:
  case 32333U:
  case 32332U:
  case 32331U:
  case 32330U:
  case 32329U:
  case 32328U:
  case 32327U:
  case 32326U:
  case 32325U:
  case 32324U:
  case 32323U:
  case 32322U:
  case 32321U:
  case 32320U:
  case 32319U:
  case 32318U:
  case 32317U:
  case 32316U:
  case 32315U:
  case 32314U:
  case 32313U:
  case 32312U:
  case 32311U:
  case 32310U:
  case 32309U:
  case 32308U:
  case 32307U:
  case 32306U:
  case 32305U:
  case 32304U:
  case 32303U:
  case 32302U:
  case 32301U:
  case 32300U:
  case 32299U:
  case 32298U:
  case 32297U:
  case 32296U:
  case 32295U:
  case 32294U:
  case 32293U:
  case 32292U:
  case 32291U:
  case 32290U:
  case 32289U:
  case 32288U:
  case 32287U:
  case 32286U:
  case 32285U:
  case 32284U:
  case 32283U:
  case 32282U:
  case 32281U:
  case 32280U:
  case 32279U:
  case 32278U:
  case 32277U:
  case 32276U:
  case 32275U:
  case 32274U:
  case 32273U:
  case 32272U:
  case 32271U:
  case 32270U:
  case 32269U:
  case 32268U:
  case 32267U:
  case 32266U:
  case 32265U:
  case 32264U:
  case 32263U:
  case 32262U:
  case 32261U:
  case 32260U:
  case 32259U:
  case 32258U:
  case 32257U:
  case 32256U:
  case 32255U:
  case 32254U:
  case 32253U:
  case 32252U:
  case 32251U:
  case 32250U:
  case 32249U:
  case 32248U:
  case 32247U:
  case 32246U:
  case 32245U:
  case 32244U:
  case 32243U:
  case 32242U:
  case 32241U:
  case 32240U:
  case 32239U:
  case 32238U:
  case 32237U:
  case 32236U:
  case 32235U:
  case 32234U:
  case 32233U:
  case 32232U:
  case 32231U:
  case 32230U:
  case 32229U:
  case 32228U:
  case 32227U:
  case 32226U:
  case 32225U:
  case 32224U:
  case 32223U:
  case 32222U:
  case 32221U:
  case 32220U:
  case 32219U:
  case 32218U:
  case 32217U:
  case 32216U:
  case 32215U:
  case 32214U:
  case 32213U:
  case 32212U:
  case 32211U:
  case 32210U:
  case 32209U:
  case 32208U:
  case 32207U:
  case 32206U:
  case 32205U:
  case 32204U:
  case 32203U:
  case 32202U:
  case 32201U:
  case 32200U:
  case 32199U:
  case 32198U:
  case 32197U:
  case 32196U:
  case 32195U:
  case 32194U:
  case 32193U:
  case 32192U:
  case 32191U:
  case 32190U:
  case 32189U:
  case 32188U:
  case 32187U:
  case 32186U:
  case 32185U:
  case 32184U:
  case 32183U:
  case 32182U:
  case 32181U:
  case 32180U:
  case 32179U:
  case 32178U:
  case 32177U:
  case 32176U:
  case 32175U:
  case 32174U:
  case 32173U:
  case 32172U:
  case 32171U:
  case 32170U:
  case 32169U:
  case 32168U:
  case 32167U:
  case 32166U:
  case 32165U:
  case 32164U:
  case 32163U:
  case 32162U:
  case 32161U:
  case 32160U:
  case 32159U:
  case 32158U:
  case 32157U:
  case 32156U:
  case 32155U:
  case 32154U:
  case 32153U:
  case 32152U:
  case 32151U:
  case 32150U:
  case 32149U:
  case 32148U:
  case 32147U:
  case 32146U:
  case 32145U:
  case 32144U:
  case 32143U:
  case 32142U:
  case 32141U:
  case 32140U:
  case 32139U:
  case 32138U:
  case 32137U:
  case 32136U:
  case 32135U:
  case 32134U:
  case 32133U:
  case 32132U:
  case 32131U:
  case 32130U:
  case 32129U:
  case 32128U:
  case 32127U:
  case 32126U:
  case 32125U:
  case 32124U:
  case 32123U:
  case 32122U:
  case 32121U:
  case 32120U:
  case 32119U:
  case 32118U:
  case 32117U:
  case 32116U:
  case 32115U:
  case 32114U:
  case 32113U:
  case 32112U:
  case 32111U:
  case 32110U:
  case 32109U:
  case 32108U:
  case 32107U:
  case 32106U:
  case 32105U:
  case 32104U:
  case 32103U:
  case 32102U:
  case 32101U:
  case 32100U:
  case 32099U:
  case 32098U:
  case 32097U:
  case 32096U:
  case 32095U:
  case 32094U:
  case 32093U:
  case 32092U:
  case 32091U:
  case 32090U:
  case 32089U:
  case 32088U:
  case 32087U:
  case 32086U:
  case 32085U:
  case 32084U:
  case 32083U:
  case 32082U:
  case 32081U:
  case 32080U:
  case 32079U:
  case 32078U:
  case 32077U:
  case 32076U:
  case 32075U:
  case 32074U:
  case 32073U:
  case 32072U:
  case 32071U:
  case 32070U:
  case 32069U:
  case 32068U:
  case 32067U:
  case 32066U:
  case 32065U:
  case 32064U:
  case 32063U:
  case 32062U:
  case 32061U:
  case 32060U:
  case 32059U:
  case 32058U:
  case 32057U:
  case 32056U:
  case 32055U:
  case 32054U:
  case 32053U:
  case 32052U:
  case 32051U:
  case 32050U:
  case 32049U:
  case 32048U:
  case 32047U:
  case 32046U:
  case 32045U:
  case 32044U:
  case 32043U:
  case 32042U:
  case 32041U:
  case 32040U:
  case 32039U:
  case 32038U:
  case 32037U:
  case 32036U:
  case 32035U:
  case 32034U:
  case 32033U:
  case 32032U:
  case 32031U:
  case 32030U:
  case 32029U:
  case 32028U:
  case 32027U:
  case 32026U:
  case 32025U:
  case 32024U:
  case 32023U:
  case 32022U:
  case 32021U:
  case 32020U:
  case 32019U:
  case 32018U:
  case 32017U:
  case 32016U:
  case 32015U:
  case 32014U:
  case 32013U:
  case 32012U:
  case 32011U:
  case 32010U:
  case 32009U:
  case 32008U:
  case 32007U:
  case 32006U:
  case 32005U:
  case 32004U:
  case 32003U:
  case 32002U:
  case 32001U:
  case 32000U: ;
  case 48099U:
  case 48098U:
  case 48097U:
  case 48096U:
  case 48095U:
  case 48094U:
  case 48093U:
  case 48092U:
  case 48091U:
  case 48090U:
  case 48089U:
  case 48088U:
  case 48087U:
  case 48086U:
  case 48085U:
  case 48084U:
  case 48083U:
  case 48082U:
  case 48081U:
  case 48080U:
  case 48079U:
  case 48078U:
  case 48077U:
  case 48076U:
  case 48075U:
  case 48074U:
  case 48073U:
  case 48072U:
  case 48071U:
  case 48070U:
  case 48069U:
  case 48068U:
  case 48067U:
  case 48066U:
  case 48065U:
  case 48064U:
  case 48063U:
  case 48062U:
  case 48061U:
  case 48060U:
  case 48059U:
  case 48058U:
  case 48057U:
  case 48056U:
  case 48055U:
  case 48054U:
  case 48053U:
  case 48052U:
  case 48051U:
  case 48050U:
  case 48049U:
  case 48048U:
  case 48047U:
  case 48046U:
  case 48045U:
  case 48044U:
  case 48043U:
  case 48042U:
  case 48041U:
  case 48040U:
  case 48039U:
  case 48038U:
  case 48037U:
  case 48036U:
  case 48035U:
  case 48034U:
  case 48033U:
  case 48032U:
  case 48031U:
  case 48030U:
  case 48029U:
  case 48028U:
  case 48027U:
  case 48026U:
  case 48025U:
  case 48024U:
  case 48023U:
  case 48022U:
  case 48021U:
  case 48020U:
  case 48019U:
  case 48018U:
  case 48017U:
  case 48016U:
  case 48015U:
  case 48014U:
  case 48013U:
  case 48012U:
  case 48011U:
  case 48010U:
  case 48009U:
  case 48008U:
  case 48007U:
  case 48006U:
  case 48005U:
  case 48004U:
  case 48003U:
  case 48002U:
  case 48001U:
  case 48000U: ;
  case 48599U:
  case 48598U:
  case 48597U:
  case 48596U:
  case 48595U:
  case 48594U:
  case 48593U:
  case 48592U:
  case 48591U:
  case 48590U:
  case 48589U:
  case 48588U:
  case 48587U:
  case 48586U:
  case 48585U:
  case 48584U:
  case 48583U:
  case 48582U:
  case 48581U:
  case 48580U:
  case 48579U:
  case 48578U:
  case 48577U:
  case 48576U:
  case 48575U:
  case 48574U:
  case 48573U:
  case 48572U:
  case 48571U:
  case 48570U:
  case 48569U:
  case 48568U:
  case 48567U:
  case 48566U:
  case 48565U:
  case 48564U:
  case 48563U:
  case 48562U:
  case 48561U:
  case 48560U:
  case 48559U:
  case 48558U:
  case 48557U:
  case 48556U:
  case 48555U:
  case 48554U:
  case 48553U:
  case 48552U:
  case 48551U:
  case 48550U:
  case 48549U:
  case 48548U:
  case 48547U:
  case 48546U:
  case 48545U:
  case 48544U:
  case 48543U:
  case 48542U:
  case 48541U:
  case 48540U:
  case 48539U:
  case 48538U:
  case 48537U:
  case 48536U:
  case 48535U:
  case 48534U:
  case 48533U:
  case 48532U:
  case 48531U:
  case 48530U:
  case 48529U:
  case 48528U:
  case 48527U:
  case 48526U:
  case 48525U:
  case 48524U:
  case 48523U:
  case 48522U:
  case 48521U:
  case 48520U:
  case 48519U:
  case 48518U:
  case 48517U:
  case 48516U:
  case 48515U:
  case 48514U:
  case 48513U:
  case 48512U:
  case 48511U:
  case 48510U:
  case 48509U:
  case 48508U:
  case 48507U:
  case 48506U:
  case 48505U:
  case 48504U:
  case 48503U:
  case 48502U:
  case 48501U:
  case 48500U:
  case 48499U:
  case 48498U:
  case 48497U:
  case 48496U:
  case 48495U:
  case 48494U:
  case 48493U:
  case 48492U:
  case 48491U:
  case 48490U:
  case 48489U:
  case 48488U:
  case 48487U:
  case 48486U:
  case 48485U:
  case 48484U:
  case 48483U:
  case 48482U:
  case 48481U:
  case 48480U:
  case 48479U:
  case 48478U:
  case 48477U:
  case 48476U:
  case 48475U:
  case 48474U:
  case 48473U:
  case 48472U:
  case 48471U:
  case 48470U:
  case 48469U:
  case 48468U:
  case 48467U:
  case 48466U:
  case 48465U:
  case 48464U:
  case 48463U:
  case 48462U:
  case 48461U:
  case 48460U:
  case 48459U:
  case 48458U:
  case 48457U:
  case 48456U:
  case 48455U:
  case 48454U:
  case 48453U:
  case 48452U:
  case 48451U:
  case 48450U:
  case 48449U:
  case 48448U:
  case 48447U:
  case 48446U:
  case 48445U:
  case 48444U:
  case 48443U:
  case 48442U:
  case 48441U:
  case 48440U:
  case 48439U:
  case 48438U:
  case 48437U:
  case 48436U:
  case 48435U:
  case 48434U:
  case 48433U:
  case 48432U:
  case 48431U:
  case 48430U:
  case 48429U:
  case 48428U:
  case 48427U:
  case 48426U:
  case 48425U:
  case 48424U:
  case 48423U:
  case 48422U:
  case 48421U:
  case 48420U:
  case 48419U:
  case 48418U:
  case 48417U:
  case 48416U:
  case 48415U:
  case 48414U:
  case 48413U:
  case 48412U:
  case 48411U:
  case 48410U:
  case 48409U:
  case 48408U:
  case 48407U:
  case 48406U:
  case 48405U:
  case 48404U:
  case 48403U:
  case 48402U:
  case 48401U:
  case 48400U:
  itv->card = ivtv_get_card(0);
  goto ldv_43211;
  case 48399U:
  case 48398U:
  case 48397U:
  case 48396U:
  case 48395U:
  case 48394U:
  case 48393U:
  case 48392U:
  case 48391U:
  case 48390U:
  case 48389U:
  case 48388U:
  case 48387U:
  case 48386U:
  case 48385U:
  case 48384U:
  case 48383U:
  case 48382U:
  case 48381U:
  case 48380U:
  case 48379U:
  case 48378U:
  case 48377U:
  case 48376U:
  case 48375U:
  case 48374U:
  case 48373U:
  case 48372U:
  case 48371U:
  case 48370U:
  case 48369U:
  case 48368U:
  case 48367U:
  case 48366U:
  case 48365U:
  case 48364U:
  case 48363U:
  case 48362U:
  case 48361U:
  case 48360U:
  case 48359U:
  case 48358U:
  case 48357U:
  case 48356U:
  case 48355U:
  case 48354U:
  case 48353U:
  case 48352U:
  case 48351U:
  case 48350U:
  case 48349U:
  case 48348U:
  case 48347U:
  case 48346U:
  case 48345U:
  case 48344U:
  case 48343U:
  case 48342U:
  case 48341U:
  case 48340U:
  case 48339U:
  case 48338U:
  case 48337U:
  case 48336U:
  case 48335U:
  case 48334U:
  case 48333U:
  case 48332U:
  case 48331U:
  case 48330U:
  case 48329U:
  case 48328U:
  case 48327U:
  case 48326U:
  case 48325U:
  case 48324U:
  case 48323U:
  case 48322U:
  case 48321U:
  case 48320U:
  case 48319U:
  case 48318U:
  case 48317U:
  case 48316U:
  case 48315U:
  case 48314U:
  case 48313U:
  case 48312U:
  case 48311U:
  case 48310U:
  case 48309U:
  case 48308U:
  case 48307U:
  case 48306U:
  case 48305U:
  case 48304U:
  case 48303U:
  case 48302U:
  case 48301U:
  case 48300U:
  case 48299U:
  case 48298U:
  case 48297U:
  case 48296U:
  case 48295U:
  case 48294U:
  case 48293U:
  case 48292U:
  case 48291U:
  case 48290U:
  case 48289U:
  case 48288U:
  case 48287U:
  case 48286U:
  case 48285U:
  case 48284U:
  case 48283U:
  case 48282U:
  case 48281U:
  case 48280U:
  case 48279U:
  case 48278U:
  case 48277U:
  case 48276U:
  case 48275U:
  case 48274U:
  case 48273U:
  case 48272U:
  case 48271U:
  case 48270U:
  case 48269U:
  case 48268U:
  case 48267U:
  case 48266U:
  case 48265U:
  case 48264U:
  case 48263U:
  case 48262U:
  case 48261U:
  case 48260U:
  case 48259U:
  case 48258U:
  case 48257U:
  case 48256U:
  case 48255U:
  case 48254U:
  case 48253U:
  case 48252U:
  case 48251U:
  case 48250U:
  case 48249U:
  case 48248U:
  case 48247U:
  case 48246U:
  case 48245U:
  case 48244U:
  case 48243U:
  case 48242U:
  case 48241U:
  case 48240U:
  case 48239U:
  case 48238U:
  case 48237U:
  case 48236U:
  case 48235U:
  case 48234U:
  case 48233U:
  case 48232U:
  case 48231U:
  case 48230U:
  case 48229U:
  case 48228U:
  case 48227U:
  case 48226U:
  case 48225U:
  case 48224U:
  case 48223U:
  case 48222U:
  case 48221U:
  case 48220U:
  case 48219U:
  case 48218U:
  case 48217U:
  case 48216U:
  case 48215U:
  case 48214U:
  case 48213U:
  case 48212U:
  case 48211U:
  case 48210U:
  case 48209U:
  case 48208U:
  case 48207U:
  case 48206U:
  case 48205U:
  case 48204U:
  case 48203U:
  case 48202U:
  case 48201U:
  case 48200U:
  case 48199U:
  case 48198U:
  case 48197U:
  case 48196U:
  case 48195U:
  case 48194U:
  case 48193U:
  case 48192U:
  case 48191U:
  case 48190U:
  case 48189U:
  case 48188U:
  case 48187U:
  case 48186U:
  case 48185U:
  case 48184U:
  case 48183U:
  case 48182U:
  case 48181U:
  case 48180U:
  case 48179U:
  case 48178U:
  case 48177U:
  case 48176U:
  case 48175U:
  case 48174U:
  case 48173U:
  case 48172U:
  case 48171U:
  case 48170U:
  case 48169U:
  case 48168U:
  case 48167U:
  case 48166U:
  case 48165U:
  case 48164U:
  case 48163U:
  case 48162U:
  case 48161U:
  case 48160U:
  case 48159U:
  case 48158U:
  case 48157U:
  case 48156U:
  case 48155U:
  case 48154U:
  case 48153U:
  case 48152U:
  case 48151U:
  case 48150U:
  case 48149U:
  case 48148U:
  case 48147U:
  case 48146U:
  case 48145U:
  case 48144U:
  case 48143U:
  case 48142U:
  case 48141U:
  case 48140U:
  case 48139U:
  case 48138U:
  case 48137U:
  case 48136U:
  case 48135U:
  case 48134U:
  case 48133U:
  case 48132U:
  case 48131U:
  case 48130U:
  case 48129U:
  case 48128U:
  case 48127U:
  case 48126U:
  case 48125U:
  case 48124U:
  case 48123U:
  case 48122U:
  case 48121U:
  case 48120U:
  case 48119U:
  case 48118U:
  case 48117U:
  case 48116U:
  case 48115U:
  case 48114U:
  case 48113U:
  case 48112U:
  case 48111U:
  case 48110U:
  case 48109U:
  case 48108U:
  case 48107U:
  case 48106U:
  case 48105U:
  case 48104U:
  case 48103U:
  case 48102U:
  case 48101U:
  case 48100U: ;
  case 48999U:
  case 48998U:
  case 48997U:
  case 48996U:
  case 48995U:
  case 48994U:
  case 48993U:
  case 48992U:
  case 48991U:
  case 48990U:
  case 48989U:
  case 48988U:
  case 48987U:
  case 48986U:
  case 48985U:
  case 48984U:
  case 48983U:
  case 48982U:
  case 48981U:
  case 48980U:
  case 48979U:
  case 48978U:
  case 48977U:
  case 48976U:
  case 48975U:
  case 48974U:
  case 48973U:
  case 48972U:
  case 48971U:
  case 48970U:
  case 48969U:
  case 48968U:
  case 48967U:
  case 48966U:
  case 48965U:
  case 48964U:
  case 48963U:
  case 48962U:
  case 48961U:
  case 48960U:
  case 48959U:
  case 48958U:
  case 48957U:
  case 48956U:
  case 48955U:
  case 48954U:
  case 48953U:
  case 48952U:
  case 48951U:
  case 48950U:
  case 48949U:
  case 48948U:
  case 48947U:
  case 48946U:
  case 48945U:
  case 48944U:
  case 48943U:
  case 48942U:
  case 48941U:
  case 48940U:
  case 48939U:
  case 48938U:
  case 48937U:
  case 48936U:
  case 48935U:
  case 48934U:
  case 48933U:
  case 48932U:
  case 48931U:
  case 48930U:
  case 48929U:
  case 48928U:
  case 48927U:
  case 48926U:
  case 48925U:
  case 48924U:
  case 48923U:
  case 48922U:
  case 48921U:
  case 48920U:
  case 48919U:
  case 48918U:
  case 48917U:
  case 48916U:
  case 48915U:
  case 48914U:
  case 48913U:
  case 48912U:
  case 48911U:
  case 48910U:
  case 48909U:
  case 48908U:
  case 48907U:
  case 48906U:
  case 48905U:
  case 48904U:
  case 48903U:
  case 48902U:
  case 48901U:
  case 48900U:
  case 48899U:
  case 48898U:
  case 48897U:
  case 48896U:
  case 48895U:
  case 48894U:
  case 48893U:
  case 48892U:
  case 48891U:
  case 48890U:
  case 48889U:
  case 48888U:
  case 48887U:
  case 48886U:
  case 48885U:
  case 48884U:
  case 48883U:
  case 48882U:
  case 48881U:
  case 48880U:
  case 48879U:
  case 48878U:
  case 48877U:
  case 48876U:
  case 48875U:
  case 48874U:
  case 48873U:
  case 48872U:
  case 48871U:
  case 48870U:
  case 48869U:
  case 48868U:
  case 48867U:
  case 48866U:
  case 48865U:
  case 48864U:
  case 48863U:
  case 48862U:
  case 48861U:
  case 48860U:
  case 48859U:
  case 48858U:
  case 48857U:
  case 48856U:
  case 48855U:
  case 48854U:
  case 48853U:
  case 48852U:
  case 48851U:
  case 48850U:
  case 48849U:
  case 48848U:
  case 48847U:
  case 48846U:
  case 48845U:
  case 48844U:
  case 48843U:
  case 48842U:
  case 48841U:
  case 48840U:
  case 48839U:
  case 48838U:
  case 48837U:
  case 48836U:
  case 48835U:
  case 48834U:
  case 48833U:
  case 48832U:
  case 48831U:
  case 48830U:
  case 48829U:
  case 48828U:
  case 48827U:
  case 48826U:
  case 48825U:
  case 48824U:
  case 48823U:
  case 48822U:
  case 48821U:
  case 48820U:
  case 48819U:
  case 48818U:
  case 48817U:
  case 48816U:
  case 48815U:
  case 48814U:
  case 48813U:
  case 48812U:
  case 48811U:
  case 48810U:
  case 48809U:
  case 48808U:
  case 48807U:
  case 48806U:
  case 48805U:
  case 48804U:
  case 48803U:
  case 48802U:
  case 48801U:
  case 48800U:
  case 48799U:
  case 48798U:
  case 48797U:
  case 48796U:
  case 48795U:
  case 48794U:
  case 48793U:
  case 48792U:
  case 48791U:
  case 48790U:
  case 48789U:
  case 48788U:
  case 48787U:
  case 48786U:
  case 48785U:
  case 48784U:
  case 48783U:
  case 48782U:
  case 48781U:
  case 48780U:
  case 48779U:
  case 48778U:
  case 48777U:
  case 48776U:
  case 48775U:
  case 48774U:
  case 48773U:
  case 48772U:
  case 48771U:
  case 48770U:
  case 48769U:
  case 48768U:
  case 48767U:
  case 48766U:
  case 48765U:
  case 48764U:
  case 48763U:
  case 48762U:
  case 48761U:
  case 48760U:
  case 48759U:
  case 48758U:
  case 48757U:
  case 48756U:
  case 48755U:
  case 48754U:
  case 48753U:
  case 48752U:
  case 48751U:
  case 48750U:
  case 48749U:
  case 48748U:
  case 48747U:
  case 48746U:
  case 48745U:
  case 48744U:
  case 48743U:
  case 48742U:
  case 48741U:
  case 48740U:
  case 48739U:
  case 48738U:
  case 48737U:
  case 48736U:
  case 48735U:
  case 48734U:
  case 48733U:
  case 48732U:
  case 48731U:
  case 48730U:
  case 48729U:
  case 48728U:
  case 48727U:
  case 48726U:
  case 48725U:
  case 48724U:
  case 48723U:
  case 48722U:
  case 48721U:
  case 48720U:
  case 48719U:
  case 48718U:
  case 48717U:
  case 48716U:
  case 48715U:
  case 48714U:
  case 48713U:
  case 48712U:
  case 48711U:
  case 48710U:
  case 48709U:
  case 48708U:
  case 48707U:
  case 48706U:
  case 48705U:
  case 48704U:
  case 48703U:
  case 48702U:
  case 48701U:
  case 48700U:
  case 48699U:
  case 48698U:
  case 48697U:
  case 48696U:
  case 48695U:
  case 48694U:
  case 48693U:
  case 48692U:
  case 48691U:
  case 48690U:
  case 48689U:
  case 48688U:
  case 48687U:
  case 48686U:
  case 48685U:
  case 48684U:
  case 48683U:
  case 48682U:
  case 48681U:
  case 48680U:
  case 48679U:
  case 48678U:
  case 48677U:
  case 48676U:
  case 48675U:
  case 48674U:
  case 48673U:
  case 48672U:
  case 48671U:
  case 48670U:
  case 48669U:
  case 48668U:
  case 48667U:
  case 48666U:
  case 48665U:
  case 48664U:
  case 48663U:
  case 48662U:
  case 48661U:
  case 48660U:
  case 48659U:
  case 48658U:
  case 48657U:
  case 48656U:
  case 48655U:
  case 48654U:
  case 48653U:
  case 48652U:
  case 48651U:
  case 48650U:
  case 48649U:
  case 48648U:
  case 48647U:
  case 48646U:
  case 48645U:
  case 48644U:
  case 48643U:
  case 48642U:
  case 48641U:
  case 48640U:
  case 48639U:
  case 48638U:
  case 48637U:
  case 48636U:
  case 48635U:
  case 48634U:
  case 48633U:
  case 48632U:
  case 48631U:
  case 48630U:
  case 48629U:
  case 48628U:
  case 48627U:
  case 48626U:
  case 48625U:
  case 48624U:
  case 48623U:
  case 48622U:
  case 48621U:
  case 48620U:
  case 48619U:
  case 48618U:
  case 48617U:
  case 48616U:
  case 48615U:
  case 48614U:
  case 48613U:
  case 48612U:
  case 48611U:
  case 48610U:
  case 48609U:
  case 48608U:
  case 48607U:
  case 48606U:
  case 48605U:
  case 48604U:
  case 48603U:
  case 48602U:
  case 48601U:
  case 48600U:
  itv->card = ivtv_get_card(1);
  goto ldv_43211;
  case 23999U:
  case 23998U:
  case 23997U:
  case 23996U:
  case 23995U:
  case 23994U:
  case 23993U:
  case 23992U:
  case 23991U:
  case 23990U:
  case 23989U:
  case 23988U:
  case 23987U:
  case 23986U:
  case 23985U:
  case 23984U:
  case 23983U:
  case 23982U:
  case 23981U:
  case 23980U:
  case 23979U:
  case 23978U:
  case 23977U:
  case 23976U:
  case 23975U:
  case 23974U:
  case 23973U:
  case 23972U:
  case 23971U:
  case 23970U:
  case 23969U:
  case 23968U:
  case 23967U:
  case 23966U:
  case 23965U:
  case 23964U:
  case 23963U:
  case 23962U:
  case 23961U:
  case 23960U:
  case 23959U:
  case 23958U:
  case 23957U:
  case 23956U:
  case 23955U:
  case 23954U:
  case 23953U:
  case 23952U:
  case 23951U:
  case 23950U:
  case 23949U:
  case 23948U:
  case 23947U:
  case 23946U:
  case 23945U:
  case 23944U:
  case 23943U:
  case 23942U:
  case 23941U:
  case 23940U:
  case 23939U:
  case 23938U:
  case 23937U:
  case 23936U:
  case 23935U:
  case 23934U:
  case 23933U:
  case 23932U:
  case 23931U:
  case 23930U:
  case 23929U:
  case 23928U:
  case 23927U:
  case 23926U:
  case 23925U:
  case 23924U:
  case 23923U:
  case 23922U:
  case 23921U:
  case 23920U:
  case 23919U:
  case 23918U:
  case 23917U:
  case 23916U:
  case 23915U:
  case 23914U:
  case 23913U:
  case 23912U:
  case 23911U:
  case 23910U:
  case 23909U:
  case 23908U:
  case 23907U:
  case 23906U:
  case 23905U:
  case 23904U:
  case 23903U:
  case 23902U:
  case 23901U:
  case 23900U:
  case 23899U:
  case 23898U:
  case 23897U:
  case 23896U:
  case 23895U:
  case 23894U:
  case 23893U:
  case 23892U:
  case 23891U:
  case 23890U:
  case 23889U:
  case 23888U:
  case 23887U:
  case 23886U:
  case 23885U:
  case 23884U:
  case 23883U:
  case 23882U:
  case 23881U:
  case 23880U:
  case 23879U:
  case 23878U:
  case 23877U:
  case 23876U:
  case 23875U:
  case 23874U:
  case 23873U:
  case 23872U:
  case 23871U:
  case 23870U:
  case 23869U:
  case 23868U:
  case 23867U:
  case 23866U:
  case 23865U:
  case 23864U:
  case 23863U:
  case 23862U:
  case 23861U:
  case 23860U:
  case 23859U:
  case 23858U:
  case 23857U:
  case 23856U:
  case 23855U:
  case 23854U:
  case 23853U:
  case 23852U:
  case 23851U:
  case 23850U:
  case 23849U:
  case 23848U:
  case 23847U:
  case 23846U:
  case 23845U:
  case 23844U:
  case 23843U:
  case 23842U:
  case 23841U:
  case 23840U:
  case 23839U:
  case 23838U:
  case 23837U:
  case 23836U:
  case 23835U:
  case 23834U:
  case 23833U:
  case 23832U:
  case 23831U:
  case 23830U:
  case 23829U:
  case 23828U:
  case 23827U:
  case 23826U:
  case 23825U:
  case 23824U:
  case 23823U:
  case 23822U:
  case 23821U:
  case 23820U:
  case 23819U:
  case 23818U:
  case 23817U:
  case 23816U:
  case 23815U:
  case 23814U:
  case 23813U:
  case 23812U:
  case 23811U:
  case 23810U:
  case 23809U:
  case 23808U:
  case 23807U:
  case 23806U:
  case 23805U:
  case 23804U:
  case 23803U:
  case 23802U:
  case 23801U:
  case 23800U:
  case 23799U:
  case 23798U:
  case 23797U:
  case 23796U:
  case 23795U:
  case 23794U:
  case 23793U:
  case 23792U:
  case 23791U:
  case 23790U:
  case 23789U:
  case 23788U:
  case 23787U:
  case 23786U:
  case 23785U:
  case 23784U:
  case 23783U:
  case 23782U:
  case 23781U:
  case 23780U:
  case 23779U:
  case 23778U:
  case 23777U:
  case 23776U:
  case 23775U:
  case 23774U:
  case 23773U:
  case 23772U:
  case 23771U:
  case 23770U:
  case 23769U:
  case 23768U:
  case 23767U:
  case 23766U:
  case 23765U:
  case 23764U:
  case 23763U:
  case 23762U:
  case 23761U:
  case 23760U:
  case 23759U:
  case 23758U:
  case 23757U:
  case 23756U:
  case 23755U:
  case 23754U:
  case 23753U:
  case 23752U:
  case 23751U:
  case 23750U:
  case 23749U:
  case 23748U:
  case 23747U:
  case 23746U:
  case 23745U:
  case 23744U:
  case 23743U:
  case 23742U:
  case 23741U:
  case 23740U:
  case 23739U:
  case 23738U:
  case 23737U:
  case 23736U:
  case 23735U:
  case 23734U:
  case 23733U:
  case 23732U:
  case 23731U:
  case 23730U:
  case 23729U:
  case 23728U:
  case 23727U:
  case 23726U:
  case 23725U:
  case 23724U:
  case 23723U:
  case 23722U:
  case 23721U:
  case 23720U:
  case 23719U:
  case 23718U:
  case 23717U:
  case 23716U:
  case 23715U:
  case 23714U:
  case 23713U:
  case 23712U:
  case 23711U:
  case 23710U:
  case 23709U:
  case 23708U:
  case 23707U:
  case 23706U:
  case 23705U:
  case 23704U:
  case 23703U:
  case 23702U:
  case 23701U:
  case 23700U:
  case 23699U:
  case 23698U:
  case 23697U:
  case 23696U:
  case 23695U:
  case 23694U:
  case 23693U:
  case 23692U:
  case 23691U:
  case 23690U:
  case 23689U:
  case 23688U:
  case 23687U:
  case 23686U:
  case 23685U:
  case 23684U:
  case 23683U:
  case 23682U:
  case 23681U:
  case 23680U:
  case 23679U:
  case 23678U:
  case 23677U:
  case 23676U:
  case 23675U:
  case 23674U:
  case 23673U:
  case 23672U:
  case 23671U:
  case 23670U:
  case 23669U:
  case 23668U:
  case 23667U:
  case 23666U:
  case 23665U:
  case 23664U:
  case 23663U:
  case 23662U:
  case 23661U:
  case 23660U:
  case 23659U:
  case 23658U:
  case 23657U:
  case 23656U:
  case 23655U:
  case 23654U:
  case 23653U:
  case 23652U:
  case 23651U:
  case 23650U:
  case 23649U:
  case 23648U:
  case 23647U:
  case 23646U:
  case 23645U:
  case 23644U:
  case 23643U:
  case 23642U:
  case 23641U:
  case 23640U:
  case 23639U:
  case 23638U:
  case 23637U:
  case 23636U:
  case 23635U:
  case 23634U:
  case 23633U:
  case 23632U:
  case 23631U:
  case 23630U:
  case 23629U:
  case 23628U:
  case 23627U:
  case 23626U:
  case 23625U:
  case 23624U:
  case 23623U:
  case 23622U:
  case 23621U:
  case 23620U:
  case 23619U:
  case 23618U:
  case 23617U:
  case 23616U:
  case 23615U:
  case 23614U:
  case 23613U:
  case 23612U:
  case 23611U:
  case 23610U:
  case 23609U:
  case 23608U:
  case 23607U:
  case 23606U:
  case 23605U:
  case 23604U:
  case 23603U:
  case 23602U:
  case 23601U:
  case 23600U:
  case 23599U:
  case 23598U:
  case 23597U:
  case 23596U:
  case 23595U:
  case 23594U:
  case 23593U:
  case 23592U:
  case 23591U:
  case 23590U:
  case 23589U:
  case 23588U:
  case 23587U:
  case 23586U:
  case 23585U:
  case 23584U:
  case 23583U:
  case 23582U:
  case 23581U:
  case 23580U:
  case 23579U:
  case 23578U:
  case 23577U:
  case 23576U:
  case 23575U:
  case 23574U:
  case 23573U:
  case 23572U:
  case 23571U:
  case 23570U:
  case 23569U:
  case 23568U:
  case 23567U:
  case 23566U:
  case 23565U:
  case 23564U:
  case 23563U:
  case 23562U:
  case 23561U:
  case 23560U:
  case 23559U:
  case 23558U:
  case 23557U:
  case 23556U:
  case 23555U:
  case 23554U:
  case 23553U:
  case 23552U:
  case 23551U:
  case 23550U:
  case 23549U:
  case 23548U:
  case 23547U:
  case 23546U:
  case 23545U:
  case 23544U:
  case 23543U:
  case 23542U:
  case 23541U:
  case 23540U:
  case 23539U:
  case 23538U:
  case 23537U:
  case 23536U:
  case 23535U:
  case 23534U:
  case 23533U:
  case 23532U:
  case 23531U:
  case 23530U:
  case 23529U:
  case 23528U:
  case 23527U:
  case 23526U:
  case 23525U:
  case 23524U:
  case 23523U:
  case 23522U:
  case 23521U:
  case 23520U:
  case 23519U:
  case 23518U:
  case 23517U:
  case 23516U:
  case 23515U:
  case 23514U:
  case 23513U:
  case 23512U:
  case 23511U:
  case 23510U:
  case 23509U:
  case 23508U:
  case 23507U:
  case 23506U:
  case 23505U:
  case 23504U:
  case 23503U:
  case 23502U:
  case 23501U:
  case 23500U:
  case 23499U:
  case 23498U:
  case 23497U:
  case 23496U:
  case 23495U:
  case 23494U:
  case 23493U:
  case 23492U:
  case 23491U:
  case 23490U:
  case 23489U:
  case 23488U:
  case 23487U:
  case 23486U:
  case 23485U:
  case 23484U:
  case 23483U:
  case 23482U:
  case 23481U:
  case 23480U:
  case 23479U:
  case 23478U:
  case 23477U:
  case 23476U:
  case 23475U:
  case 23474U:
  case 23473U:
  case 23472U:
  case 23471U:
  case 23470U:
  case 23469U:
  case 23468U:
  case 23467U:
  case 23466U:
  case 23465U:
  case 23464U:
  case 23463U:
  case 23462U:
  case 23461U:
  case 23460U:
  case 23459U:
  case 23458U:
  case 23457U:
  case 23456U:
  case 23455U:
  case 23454U:
  case 23453U:
  case 23452U:
  case 23451U:
  case 23450U:
  case 23449U:
  case 23448U:
  case 23447U:
  case 23446U:
  case 23445U:
  case 23444U:
  case 23443U:
  case 23442U:
  case 23441U:
  case 23440U:
  case 23439U:
  case 23438U:
  case 23437U:
  case 23436U:
  case 23435U:
  case 23434U:
  case 23433U:
  case 23432U:
  case 23431U:
  case 23430U:
  case 23429U:
  case 23428U:
  case 23427U:
  case 23426U:
  case 23425U:
  case 23424U:
  case 23423U:
  case 23422U:
  case 23421U:
  case 23420U:
  case 23419U:
  case 23418U:
  case 23417U:
  case 23416U:
  case 23415U:
  case 23414U:
  case 23413U:
  case 23412U:
  case 23411U:
  case 23410U:
  case 23409U:
  case 23408U:
  case 23407U:
  case 23406U:
  case 23405U:
  case 23404U:
  case 23403U:
  case 23402U:
  case 23401U:
  case 23400U:
  case 23399U:
  case 23398U:
  case 23397U:
  case 23396U:
  case 23395U:
  case 23394U:
  case 23393U:
  case 23392U:
  case 23391U:
  case 23390U:
  case 23389U:
  case 23388U:
  case 23387U:
  case 23386U:
  case 23385U:
  case 23384U:
  case 23383U:
  case 23382U:
  case 23381U:
  case 23380U:
  case 23379U:
  case 23378U:
  case 23377U:
  case 23376U:
  case 23375U:
  case 23374U:
  case 23373U:
  case 23372U:
  case 23371U:
  case 23370U:
  case 23369U:
  case 23368U:
  case 23367U:
  case 23366U:
  case 23365U:
  case 23364U:
  case 23363U:
  case 23362U:
  case 23361U:
  case 23360U:
  case 23359U:
  case 23358U:
  case 23357U:
  case 23356U:
  case 23355U:
  case 23354U:
  case 23353U:
  case 23352U:
  case 23351U:
  case 23350U:
  case 23349U:
  case 23348U:
  case 23347U:
  case 23346U:
  case 23345U:
  case 23344U:
  case 23343U:
  case 23342U:
  case 23341U:
  case 23340U:
  case 23339U:
  case 23338U:
  case 23337U:
  case 23336U:
  case 23335U:
  case 23334U:
  case 23333U:
  case 23332U:
  case 23331U:
  case 23330U:
  case 23329U:
  case 23328U:
  case 23327U:
  case 23326U:
  case 23325U:
  case 23324U:
  case 23323U:
  case 23322U:
  case 23321U:
  case 23320U:
  case 23319U:
  case 23318U:
  case 23317U:
  case 23316U:
  case 23315U:
  case 23314U:
  case 23313U:
  case 23312U:
  case 23311U:
  case 23310U:
  case 23309U:
  case 23308U:
  case 23307U:
  case 23306U:
  case 23305U:
  case 23304U:
  case 23303U:
  case 23302U:
  case 23301U:
  case 23300U:
  case 23299U:
  case 23298U:
  case 23297U:
  case 23296U:
  case 23295U:
  case 23294U:
  case 23293U:
  case 23292U:
  case 23291U:
  case 23290U:
  case 23289U:
  case 23288U:
  case 23287U:
  case 23286U:
  case 23285U:
  case 23284U:
  case 23283U:
  case 23282U:
  case 23281U:
  case 23280U:
  case 23279U:
  case 23278U:
  case 23277U:
  case 23276U:
  case 23275U:
  case 23274U:
  case 23273U:
  case 23272U:
  case 23271U:
  case 23270U:
  case 23269U:
  case 23268U:
  case 23267U:
  case 23266U:
  case 23265U:
  case 23264U:
  case 23263U:
  case 23262U:
  case 23261U:
  case 23260U:
  case 23259U:
  case 23258U:
  case 23257U:
  case 23256U:
  case 23255U:
  case 23254U:
  case 23253U:
  case 23252U:
  case 23251U:
  case 23250U:
  case 23249U:
  case 23248U:
  case 23247U:
  case 23246U:
  case 23245U:
  case 23244U:
  case 23243U:
  case 23242U:
  case 23241U:
  case 23240U:
  case 23239U:
  case 23238U:
  case 23237U:
  case 23236U:
  case 23235U:
  case 23234U:
  case 23233U:
  case 23232U:
  case 23231U:
  case 23230U:
  case 23229U:
  case 23228U:
  case 23227U:
  case 23226U:
  case 23225U:
  case 23224U:
  case 23223U:
  case 23222U:
  case 23221U:
  case 23220U:
  case 23219U:
  case 23218U:
  case 23217U:
  case 23216U:
  case 23215U:
  case 23214U:
  case 23213U:
  case 23212U:
  case 23211U:
  case 23210U:
  case 23209U:
  case 23208U:
  case 23207U:
  case 23206U:
  case 23205U:
  case 23204U:
  case 23203U:
  case 23202U:
  case 23201U:
  case 23200U:
  case 23199U:
  case 23198U:
  case 23197U:
  case 23196U:
  case 23195U:
  case 23194U:
  case 23193U:
  case 23192U:
  case 23191U:
  case 23190U:
  case 23189U:
  case 23188U:
  case 23187U:
  case 23186U:
  case 23185U:
  case 23184U:
  case 23183U:
  case 23182U:
  case 23181U:
  case 23180U:
  case 23179U:
  case 23178U:
  case 23177U:
  case 23176U:
  case 23175U:
  case 23174U:
  case 23173U:
  case 23172U:
  case 23171U:
  case 23170U:
  case 23169U:
  case 23168U:
  case 23167U:
  case 23166U:
  case 23165U:
  case 23164U:
  case 23163U:
  case 23162U:
  case 23161U:
  case 23160U:
  case 23159U:
  case 23158U:
  case 23157U:
  case 23156U:
  case 23155U:
  case 23154U:
  case 23153U:
  case 23152U:
  case 23151U:
  case 23150U:
  case 23149U:
  case 23148U:
  case 23147U:
  case 23146U:
  case 23145U:
  case 23144U:
  case 23143U:
  case 23142U:
  case 23141U:
  case 23140U:
  case 23139U:
  case 23138U:
  case 23137U:
  case 23136U:
  case 23135U:
  case 23134U:
  case 23133U:
  case 23132U:
  case 23131U:
  case 23130U:
  case 23129U:
  case 23128U:
  case 23127U:
  case 23126U:
  case 23125U:
  case 23124U:
  case 23123U:
  case 23122U:
  case 23121U:
  case 23120U:
  case 23119U:
  case 23118U:
  case 23117U:
  case 23116U:
  case 23115U:
  case 23114U:
  case 23113U:
  case 23112U:
  case 23111U:
  case 23110U:
  case 23109U:
  case 23108U:
  case 23107U:
  case 23106U:
  case 23105U:
  case 23104U:
  case 23103U:
  case 23102U:
  case 23101U:
  case 23100U:
  case 23099U:
  case 23098U:
  case 23097U:
  case 23096U:
  case 23095U:
  case 23094U:
  case 23093U:
  case 23092U:
  case 23091U:
  case 23090U:
  case 23089U:
  case 23088U:
  case 23087U:
  case 23086U:
  case 23085U:
  case 23084U:
  case 23083U:
  case 23082U:
  case 23081U:
  case 23080U:
  case 23079U:
  case 23078U:
  case 23077U:
  case 23076U:
  case 23075U:
  case 23074U:
  case 23073U:
  case 23072U:
  case 23071U:
  case 23070U:
  case 23069U:
  case 23068U:
  case 23067U:
  case 23066U:
  case 23065U:
  case 23064U:
  case 23063U:
  case 23062U:
  case 23061U:
  case 23060U:
  case 23059U:
  case 23058U:
  case 23057U:
  case 23056U:
  case 23055U:
  case 23054U:
  case 23053U:
  case 23052U:
  case 23051U:
  case 23050U:
  case 23049U:
  case 23048U:
  case 23047U:
  case 23046U:
  case 23045U:
  case 23044U:
  case 23043U:
  case 23042U:
  case 23041U:
  case 23040U:
  case 23039U:
  case 23038U:
  case 23037U:
  case 23036U:
  case 23035U:
  case 23034U:
  case 23033U:
  case 23032U:
  case 23031U:
  case 23030U:
  case 23029U:
  case 23028U:
  case 23027U:
  case 23026U:
  case 23025U:
  case 23024U:
  case 23023U:
  case 23022U:
  case 23021U:
  case 23020U:
  case 23019U:
  case 23018U:
  case 23017U:
  case 23016U:
  case 23015U:
  case 23014U:
  case 23013U:
  case 23012U:
  case 23011U:
  case 23010U:
  case 23009U:
  case 23008U:
  case 23007U:
  case 23006U:
  case 23005U:
  case 23004U:
  case 23003U:
  case 23002U:
  case 23001U:
  case 23000U: ;
  case 25999U:
  case 25998U:
  case 25997U:
  case 25996U:
  case 25995U:
  case 25994U:
  case 25993U:
  case 25992U:
  case 25991U:
  case 25990U:
  case 25989U:
  case 25988U:
  case 25987U:
  case 25986U:
  case 25985U:
  case 25984U:
  case 25983U:
  case 25982U:
  case 25981U:
  case 25980U:
  case 25979U:
  case 25978U:
  case 25977U:
  case 25976U:
  case 25975U:
  case 25974U:
  case 25973U:
  case 25972U:
  case 25971U:
  case 25970U:
  case 25969U:
  case 25968U:
  case 25967U:
  case 25966U:
  case 25965U:
  case 25964U:
  case 25963U:
  case 25962U:
  case 25961U:
  case 25960U:
  case 25959U:
  case 25958U:
  case 25957U:
  case 25956U:
  case 25955U:
  case 25954U:
  case 25953U:
  case 25952U:
  case 25951U:
  case 25950U:
  case 25949U:
  case 25948U:
  case 25947U:
  case 25946U:
  case 25945U:
  case 25944U:
  case 25943U:
  case 25942U:
  case 25941U:
  case 25940U:
  case 25939U:
  case 25938U:
  case 25937U:
  case 25936U:
  case 25935U:
  case 25934U:
  case 25933U:
  case 25932U:
  case 25931U:
  case 25930U:
  case 25929U:
  case 25928U:
  case 25927U:
  case 25926U:
  case 25925U:
  case 25924U:
  case 25923U:
  case 25922U:
  case 25921U:
  case 25920U:
  case 25919U:
  case 25918U:
  case 25917U:
  case 25916U:
  case 25915U:
  case 25914U:
  case 25913U:
  case 25912U:
  case 25911U:
  case 25910U:
  case 25909U:
  case 25908U:
  case 25907U:
  case 25906U:
  case 25905U:
  case 25904U:
  case 25903U:
  case 25902U:
  case 25901U:
  case 25900U:
  case 25899U:
  case 25898U:
  case 25897U:
  case 25896U:
  case 25895U:
  case 25894U:
  case 25893U:
  case 25892U:
  case 25891U:
  case 25890U:
  case 25889U:
  case 25888U:
  case 25887U:
  case 25886U:
  case 25885U:
  case 25884U:
  case 25883U:
  case 25882U:
  case 25881U:
  case 25880U:
  case 25879U:
  case 25878U:
  case 25877U:
  case 25876U:
  case 25875U:
  case 25874U:
  case 25873U:
  case 25872U:
  case 25871U:
  case 25870U:
  case 25869U:
  case 25868U:
  case 25867U:
  case 25866U:
  case 25865U:
  case 25864U:
  case 25863U:
  case 25862U:
  case 25861U:
  case 25860U:
  case 25859U:
  case 25858U:
  case 25857U:
  case 25856U:
  case 25855U:
  case 25854U:
  case 25853U:
  case 25852U:
  case 25851U:
  case 25850U:
  case 25849U:
  case 25848U:
  case 25847U:
  case 25846U:
  case 25845U:
  case 25844U:
  case 25843U:
  case 25842U:
  case 25841U:
  case 25840U:
  case 25839U:
  case 25838U:
  case 25837U:
  case 25836U:
  case 25835U:
  case 25834U:
  case 25833U:
  case 25832U:
  case 25831U:
  case 25830U:
  case 25829U:
  case 25828U:
  case 25827U:
  case 25826U:
  case 25825U:
  case 25824U:
  case 25823U:
  case 25822U:
  case 25821U:
  case 25820U:
  case 25819U:
  case 25818U:
  case 25817U:
  case 25816U:
  case 25815U:
  case 25814U:
  case 25813U:
  case 25812U:
  case 25811U:
  case 25810U:
  case 25809U:
  case 25808U:
  case 25807U:
  case 25806U:
  case 25805U:
  case 25804U:
  case 25803U:
  case 25802U:
  case 25801U:
  case 25800U:
  case 25799U:
  case 25798U:
  case 25797U:
  case 25796U:
  case 25795U:
  case 25794U:
  case 25793U:
  case 25792U:
  case 25791U:
  case 25790U:
  case 25789U:
  case 25788U:
  case 25787U:
  case 25786U:
  case 25785U:
  case 25784U:
  case 25783U:
  case 25782U:
  case 25781U:
  case 25780U:
  case 25779U:
  case 25778U:
  case 25777U:
  case 25776U:
  case 25775U:
  case 25774U:
  case 25773U:
  case 25772U:
  case 25771U:
  case 25770U:
  case 25769U:
  case 25768U:
  case 25767U:
  case 25766U:
  case 25765U:
  case 25764U:
  case 25763U:
  case 25762U:
  case 25761U:
  case 25760U:
  case 25759U:
  case 25758U:
  case 25757U:
  case 25756U:
  case 25755U:
  case 25754U:
  case 25753U:
  case 25752U:
  case 25751U:
  case 25750U:
  case 25749U:
  case 25748U:
  case 25747U:
  case 25746U:
  case 25745U:
  case 25744U:
  case 25743U:
  case 25742U:
  case 25741U:
  case 25740U:
  case 25739U:
  case 25738U:
  case 25737U:
  case 25736U:
  case 25735U:
  case 25734U:
  case 25733U:
  case 25732U:
  case 25731U:
  case 25730U:
  case 25729U:
  case 25728U:
  case 25727U:
  case 25726U:
  case 25725U:
  case 25724U:
  case 25723U:
  case 25722U:
  case 25721U:
  case 25720U:
  case 25719U:
  case 25718U:
  case 25717U:
  case 25716U:
  case 25715U:
  case 25714U:
  case 25713U:
  case 25712U:
  case 25711U:
  case 25710U:
  case 25709U:
  case 25708U:
  case 25707U:
  case 25706U:
  case 25705U:
  case 25704U:
  case 25703U:
  case 25702U:
  case 25701U:
  case 25700U:
  case 25699U:
  case 25698U:
  case 25697U:
  case 25696U:
  case 25695U:
  case 25694U:
  case 25693U:
  case 25692U:
  case 25691U:
  case 25690U:
  case 25689U:
  case 25688U:
  case 25687U:
  case 25686U:
  case 25685U:
  case 25684U:
  case 25683U:
  case 25682U:
  case 25681U:
  case 25680U:
  case 25679U:
  case 25678U:
  case 25677U:
  case 25676U:
  case 25675U:
  case 25674U:
  case 25673U:
  case 25672U:
  case 25671U:
  case 25670U:
  case 25669U:
  case 25668U:
  case 25667U:
  case 25666U:
  case 25665U:
  case 25664U:
  case 25663U:
  case 25662U:
  case 25661U:
  case 25660U:
  case 25659U:
  case 25658U:
  case 25657U:
  case 25656U:
  case 25655U:
  case 25654U:
  case 25653U:
  case 25652U:
  case 25651U:
  case 25650U:
  case 25649U:
  case 25648U:
  case 25647U:
  case 25646U:
  case 25645U:
  case 25644U:
  case 25643U:
  case 25642U:
  case 25641U:
  case 25640U:
  case 25639U:
  case 25638U:
  case 25637U:
  case 25636U:
  case 25635U:
  case 25634U:
  case 25633U:
  case 25632U:
  case 25631U:
  case 25630U:
  case 25629U:
  case 25628U:
  case 25627U:
  case 25626U:
  case 25625U:
  case 25624U:
  case 25623U:
  case 25622U:
  case 25621U:
  case 25620U:
  case 25619U:
  case 25618U:
  case 25617U:
  case 25616U:
  case 25615U:
  case 25614U:
  case 25613U:
  case 25612U:
  case 25611U:
  case 25610U:
  case 25609U:
  case 25608U:
  case 25607U:
  case 25606U:
  case 25605U:
  case 25604U:
  case 25603U:
  case 25602U:
  case 25601U:
  case 25600U:
  case 25599U:
  case 25598U:
  case 25597U:
  case 25596U:
  case 25595U:
  case 25594U:
  case 25593U:
  case 25592U:
  case 25591U:
  case 25590U:
  case 25589U:
  case 25588U:
  case 25587U:
  case 25586U:
  case 25585U:
  case 25584U:
  case 25583U:
  case 25582U:
  case 25581U:
  case 25580U:
  case 25579U:
  case 25578U:
  case 25577U:
  case 25576U:
  case 25575U:
  case 25574U:
  case 25573U:
  case 25572U:
  case 25571U:
  case 25570U:
  case 25569U:
  case 25568U:
  case 25567U:
  case 25566U:
  case 25565U:
  case 25564U:
  case 25563U:
  case 25562U:
  case 25561U:
  case 25560U:
  case 25559U:
  case 25558U:
  case 25557U:
  case 25556U:
  case 25555U:
  case 25554U:
  case 25553U:
  case 25552U:
  case 25551U:
  case 25550U:
  case 25549U:
  case 25548U:
  case 25547U:
  case 25546U:
  case 25545U:
  case 25544U:
  case 25543U:
  case 25542U:
  case 25541U:
  case 25540U:
  case 25539U:
  case 25538U:
  case 25537U:
  case 25536U:
  case 25535U:
  case 25534U:
  case 25533U:
  case 25532U:
  case 25531U:
  case 25530U:
  case 25529U:
  case 25528U:
  case 25527U:
  case 25526U:
  case 25525U:
  case 25524U:
  case 25523U:
  case 25522U:
  case 25521U:
  case 25520U:
  case 25519U:
  case 25518U:
  case 25517U:
  case 25516U:
  case 25515U:
  case 25514U:
  case 25513U:
  case 25512U:
  case 25511U:
  case 25510U:
  case 25509U:
  case 25508U:
  case 25507U:
  case 25506U:
  case 25505U:
  case 25504U:
  case 25503U:
  case 25502U:
  case 25501U:
  case 25500U:
  case 25499U:
  case 25498U:
  case 25497U:
  case 25496U:
  case 25495U:
  case 25494U:
  case 25493U:
  case 25492U:
  case 25491U:
  case 25490U:
  case 25489U:
  case 25488U:
  case 25487U:
  case 25486U:
  case 25485U:
  case 25484U:
  case 25483U:
  case 25482U:
  case 25481U:
  case 25480U:
  case 25479U:
  case 25478U:
  case 25477U:
  case 25476U:
  case 25475U:
  case 25474U:
  case 25473U:
  case 25472U:
  case 25471U:
  case 25470U:
  case 25469U:
  case 25468U:
  case 25467U:
  case 25466U:
  case 25465U:
  case 25464U:
  case 25463U:
  case 25462U:
  case 25461U:
  case 25460U:
  case 25459U:
  case 25458U:
  case 25457U:
  case 25456U:
  case 25455U:
  case 25454U:
  case 25453U:
  case 25452U:
  case 25451U:
  case 25450U:
  case 25449U:
  case 25448U:
  case 25447U:
  case 25446U:
  case 25445U:
  case 25444U:
  case 25443U:
  case 25442U:
  case 25441U:
  case 25440U:
  case 25439U:
  case 25438U:
  case 25437U:
  case 25436U:
  case 25435U:
  case 25434U:
  case 25433U:
  case 25432U:
  case 25431U:
  case 25430U:
  case 25429U:
  case 25428U:
  case 25427U:
  case 25426U:
  case 25425U:
  case 25424U:
  case 25423U:
  case 25422U:
  case 25421U:
  case 25420U:
  case 25419U:
  case 25418U:
  case 25417U:
  case 25416U:
  case 25415U:
  case 25414U:
  case 25413U:
  case 25412U:
  case 25411U:
  case 25410U:
  case 25409U:
  case 25408U:
  case 25407U:
  case 25406U:
  case 25405U:
  case 25404U:
  case 25403U:
  case 25402U:
  case 25401U:
  case 25400U:
  case 25399U:
  case 25398U:
  case 25397U:
  case 25396U:
  case 25395U:
  case 25394U:
  case 25393U:
  case 25392U:
  case 25391U:
  case 25390U:
  case 25389U:
  case 25388U:
  case 25387U:
  case 25386U:
  case 25385U:
  case 25384U:
  case 25383U:
  case 25382U:
  case 25381U:
  case 25380U:
  case 25379U:
  case 25378U:
  case 25377U:
  case 25376U:
  case 25375U:
  case 25374U:
  case 25373U:
  case 25372U:
  case 25371U:
  case 25370U:
  case 25369U:
  case 25368U:
  case 25367U:
  case 25366U:
  case 25365U:
  case 25364U:
  case 25363U:
  case 25362U:
  case 25361U:
  case 25360U:
  case 25359U:
  case 25358U:
  case 25357U:
  case 25356U:
  case 25355U:
  case 25354U:
  case 25353U:
  case 25352U:
  case 25351U:
  case 25350U:
  case 25349U:
  case 25348U:
  case 25347U:
  case 25346U:
  case 25345U:
  case 25344U:
  case 25343U:
  case 25342U:
  case 25341U:
  case 25340U:
  case 25339U:
  case 25338U:
  case 25337U:
  case 25336U:
  case 25335U:
  case 25334U:
  case 25333U:
  case 25332U:
  case 25331U:
  case 25330U:
  case 25329U:
  case 25328U:
  case 25327U:
  case 25326U:
  case 25325U:
  case 25324U:
  case 25323U:
  case 25322U:
  case 25321U:
  case 25320U:
  case 25319U:
  case 25318U:
  case 25317U:
  case 25316U:
  case 25315U:
  case 25314U:
  case 25313U:
  case 25312U:
  case 25311U:
  case 25310U:
  case 25309U:
  case 25308U:
  case 25307U:
  case 25306U:
  case 25305U:
  case 25304U:
  case 25303U:
  case 25302U:
  case 25301U:
  case 25300U:
  case 25299U:
  case 25298U:
  case 25297U:
  case 25296U:
  case 25295U:
  case 25294U:
  case 25293U:
  case 25292U:
  case 25291U:
  case 25290U:
  case 25289U:
  case 25288U:
  case 25287U:
  case 25286U:
  case 25285U:
  case 25284U:
  case 25283U:
  case 25282U:
  case 25281U:
  case 25280U:
  case 25279U:
  case 25278U:
  case 25277U:
  case 25276U:
  case 25275U:
  case 25274U:
  case 25273U:
  case 25272U:
  case 25271U:
  case 25270U:
  case 25269U:
  case 25268U:
  case 25267U:
  case 25266U:
  case 25265U:
  case 25264U:
  case 25263U:
  case 25262U:
  case 25261U:
  case 25260U:
  case 25259U:
  case 25258U:
  case 25257U:
  case 25256U:
  case 25255U:
  case 25254U:
  case 25253U:
  case 25252U:
  case 25251U:
  case 25250U:
  case 25249U:
  case 25248U:
  case 25247U:
  case 25246U:
  case 25245U:
  case 25244U:
  case 25243U:
  case 25242U:
  case 25241U:
  case 25240U:
  case 25239U:
  case 25238U:
  case 25237U:
  case 25236U:
  case 25235U:
  case 25234U:
  case 25233U:
  case 25232U:
  case 25231U:
  case 25230U:
  case 25229U:
  case 25228U:
  case 25227U:
  case 25226U:
  case 25225U:
  case 25224U:
  case 25223U:
  case 25222U:
  case 25221U:
  case 25220U:
  case 25219U:
  case 25218U:
  case 25217U:
  case 25216U:
  case 25215U:
  case 25214U:
  case 25213U:
  case 25212U:
  case 25211U:
  case 25210U:
  case 25209U:
  case 25208U:
  case 25207U:
  case 25206U:
  case 25205U:
  case 25204U:
  case 25203U:
  case 25202U:
  case 25201U:
  case 25200U:
  case 25199U:
  case 25198U:
  case 25197U:
  case 25196U:
  case 25195U:
  case 25194U:
  case 25193U:
  case 25192U:
  case 25191U:
  case 25190U:
  case 25189U:
  case 25188U:
  case 25187U:
  case 25186U:
  case 25185U:
  case 25184U:
  case 25183U:
  case 25182U:
  case 25181U:
  case 25180U:
  case 25179U:
  case 25178U:
  case 25177U:
  case 25176U:
  case 25175U:
  case 25174U:
  case 25173U:
  case 25172U:
  case 25171U:
  case 25170U:
  case 25169U:
  case 25168U:
  case 25167U:
  case 25166U:
  case 25165U:
  case 25164U:
  case 25163U:
  case 25162U:
  case 25161U:
  case 25160U:
  case 25159U:
  case 25158U:
  case 25157U:
  case 25156U:
  case 25155U:
  case 25154U:
  case 25153U:
  case 25152U:
  case 25151U:
  case 25150U:
  case 25149U:
  case 25148U:
  case 25147U:
  case 25146U:
  case 25145U:
  case 25144U:
  case 25143U:
  case 25142U:
  case 25141U:
  case 25140U:
  case 25139U:
  case 25138U:
  case 25137U:
  case 25136U:
  case 25135U:
  case 25134U:
  case 25133U:
  case 25132U:
  case 25131U:
  case 25130U:
  case 25129U:
  case 25128U:
  case 25127U:
  case 25126U:
  case 25125U:
  case 25124U:
  case 25123U:
  case 25122U:
  case 25121U:
  case 25120U:
  case 25119U:
  case 25118U:
  case 25117U:
  case 25116U:
  case 25115U:
  case 25114U:
  case 25113U:
  case 25112U:
  case 25111U:
  case 25110U:
  case 25109U:
  case 25108U:
  case 25107U:
  case 25106U:
  case 25105U:
  case 25104U:
  case 25103U:
  case 25102U:
  case 25101U:
  case 25100U:
  case 25099U:
  case 25098U:
  case 25097U:
  case 25096U:
  case 25095U:
  case 25094U:
  case 25093U:
  case 25092U:
  case 25091U:
  case 25090U:
  case 25089U:
  case 25088U:
  case 25087U:
  case 25086U:
  case 25085U:
  case 25084U:
  case 25083U:
  case 25082U:
  case 25081U:
  case 25080U:
  case 25079U:
  case 25078U:
  case 25077U:
  case 25076U:
  case 25075U:
  case 25074U:
  case 25073U:
  case 25072U:
  case 25071U:
  case 25070U:
  case 25069U:
  case 25068U:
  case 25067U:
  case 25066U:
  case 25065U:
  case 25064U:
  case 25063U:
  case 25062U:
  case 25061U:
  case 25060U:
  case 25059U:
  case 25058U:
  case 25057U:
  case 25056U:
  case 25055U:
  case 25054U:
  case 25053U:
  case 25052U:
  case 25051U:
  case 25050U:
  case 25049U:
  case 25048U:
  case 25047U:
  case 25046U:
  case 25045U:
  case 25044U:
  case 25043U:
  case 25042U:
  case 25041U:
  case 25040U:
  case 25039U:
  case 25038U:
  case 25037U:
  case 25036U:
  case 25035U:
  case 25034U:
  case 25033U:
  case 25032U:
  case 25031U:
  case 25030U:
  case 25029U:
  case 25028U:
  case 25027U:
  case 25026U:
  case 25025U:
  case 25024U:
  case 25023U:
  case 25022U:
  case 25021U:
  case 25020U:
  case 25019U:
  case 25018U:
  case 25017U:
  case 25016U:
  case 25015U:
  case 25014U:
  case 25013U:
  case 25012U:
  case 25011U:
  case 25010U:
  case 25009U:
  case 25008U:
  case 25007U:
  case 25006U:
  case 25005U:
  case 25004U:
  case 25003U:
  case 25002U:
  case 25001U:
  case 25000U: ;
  case 26999U:
  case 26998U:
  case 26997U:
  case 26996U:
  case 26995U:
  case 26994U:
  case 26993U:
  case 26992U:
  case 26991U:
  case 26990U:
  case 26989U:
  case 26988U:
  case 26987U:
  case 26986U:
  case 26985U:
  case 26984U:
  case 26983U:
  case 26982U:
  case 26981U:
  case 26980U:
  case 26979U:
  case 26978U:
  case 26977U:
  case 26976U:
  case 26975U:
  case 26974U:
  case 26973U:
  case 26972U:
  case 26971U:
  case 26970U:
  case 26969U:
  case 26968U:
  case 26967U:
  case 26966U:
  case 26965U:
  case 26964U:
  case 26963U:
  case 26962U:
  case 26961U:
  case 26960U:
  case 26959U:
  case 26958U:
  case 26957U:
  case 26956U:
  case 26955U:
  case 26954U:
  case 26953U:
  case 26952U:
  case 26951U:
  case 26950U:
  case 26949U:
  case 26948U:
  case 26947U:
  case 26946U:
  case 26945U:
  case 26944U:
  case 26943U:
  case 26942U:
  case 26941U:
  case 26940U:
  case 26939U:
  case 26938U:
  case 26937U:
  case 26936U:
  case 26935U:
  case 26934U:
  case 26933U:
  case 26932U:
  case 26931U:
  case 26930U:
  case 26929U:
  case 26928U:
  case 26927U:
  case 26926U:
  case 26925U:
  case 26924U:
  case 26923U:
  case 26922U:
  case 26921U:
  case 26920U:
  case 26919U:
  case 26918U:
  case 26917U:
  case 26916U:
  case 26915U:
  case 26914U:
  case 26913U:
  case 26912U:
  case 26911U:
  case 26910U:
  case 26909U:
  case 26908U:
  case 26907U:
  case 26906U:
  case 26905U:
  case 26904U:
  case 26903U:
  case 26902U:
  case 26901U:
  case 26900U:
  case 26899U:
  case 26898U:
  case 26897U:
  case 26896U:
  case 26895U:
  case 26894U:
  case 26893U:
  case 26892U:
  case 26891U:
  case 26890U:
  case 26889U:
  case 26888U:
  case 26887U:
  case 26886U:
  case 26885U:
  case 26884U:
  case 26883U:
  case 26882U:
  case 26881U:
  case 26880U:
  case 26879U:
  case 26878U:
  case 26877U:
  case 26876U:
  case 26875U:
  case 26874U:
  case 26873U:
  case 26872U:
  case 26871U:
  case 26870U:
  case 26869U:
  case 26868U:
  case 26867U:
  case 26866U:
  case 26865U:
  case 26864U:
  case 26863U:
  case 26862U:
  case 26861U:
  case 26860U:
  case 26859U:
  case 26858U:
  case 26857U:
  case 26856U:
  case 26855U:
  case 26854U:
  case 26853U:
  case 26852U:
  case 26851U:
  case 26850U:
  case 26849U:
  case 26848U:
  case 26847U:
  case 26846U:
  case 26845U:
  case 26844U:
  case 26843U:
  case 26842U:
  case 26841U:
  case 26840U:
  case 26839U:
  case 26838U:
  case 26837U:
  case 26836U:
  case 26835U:
  case 26834U:
  case 26833U:
  case 26832U:
  case 26831U:
  case 26830U:
  case 26829U:
  case 26828U:
  case 26827U:
  case 26826U:
  case 26825U:
  case 26824U:
  case 26823U:
  case 26822U:
  case 26821U:
  case 26820U:
  case 26819U:
  case 26818U:
  case 26817U:
  case 26816U:
  case 26815U:
  case 26814U:
  case 26813U:
  case 26812U:
  case 26811U:
  case 26810U:
  case 26809U:
  case 26808U:
  case 26807U:
  case 26806U:
  case 26805U:
  case 26804U:
  case 26803U:
  case 26802U:
  case 26801U:
  case 26800U:
  case 26799U:
  case 26798U:
  case 26797U:
  case 26796U:
  case 26795U:
  case 26794U:
  case 26793U:
  case 26792U:
  case 26791U:
  case 26790U:
  case 26789U:
  case 26788U:
  case 26787U:
  case 26786U:
  case 26785U:
  case 26784U:
  case 26783U:
  case 26782U:
  case 26781U:
  case 26780U:
  case 26779U:
  case 26778U:
  case 26777U:
  case 26776U:
  case 26775U:
  case 26774U:
  case 26773U:
  case 26772U:
  case 26771U:
  case 26770U:
  case 26769U:
  case 26768U:
  case 26767U:
  case 26766U:
  case 26765U:
  case 26764U:
  case 26763U:
  case 26762U:
  case 26761U:
  case 26760U:
  case 26759U:
  case 26758U:
  case 26757U:
  case 26756U:
  case 26755U:
  case 26754U:
  case 26753U:
  case 26752U:
  case 26751U:
  case 26750U:
  case 26749U:
  case 26748U:
  case 26747U:
  case 26746U:
  case 26745U:
  case 26744U:
  case 26743U:
  case 26742U:
  case 26741U:
  case 26740U:
  case 26739U:
  case 26738U:
  case 26737U:
  case 26736U:
  case 26735U:
  case 26734U:
  case 26733U:
  case 26732U:
  case 26731U:
  case 26730U:
  case 26729U:
  case 26728U:
  case 26727U:
  case 26726U:
  case 26725U:
  case 26724U:
  case 26723U:
  case 26722U:
  case 26721U:
  case 26720U:
  case 26719U:
  case 26718U:
  case 26717U:
  case 26716U:
  case 26715U:
  case 26714U:
  case 26713U:
  case 26712U:
  case 26711U:
  case 26710U:
  case 26709U:
  case 26708U:
  case 26707U:
  case 26706U:
  case 26705U:
  case 26704U:
  case 26703U:
  case 26702U:
  case 26701U:
  case 26700U:
  case 26699U:
  case 26698U:
  case 26697U:
  case 26696U:
  case 26695U:
  case 26694U:
  case 26693U:
  case 26692U:
  case 26691U:
  case 26690U:
  case 26689U:
  case 26688U:
  case 26687U:
  case 26686U:
  case 26685U:
  case 26684U:
  case 26683U:
  case 26682U:
  case 26681U:
  case 26680U:
  case 26679U:
  case 26678U:
  case 26677U:
  case 26676U:
  case 26675U:
  case 26674U:
  case 26673U:
  case 26672U:
  case 26671U:
  case 26670U:
  case 26669U:
  case 26668U:
  case 26667U:
  case 26666U:
  case 26665U:
  case 26664U:
  case 26663U:
  case 26662U:
  case 26661U:
  case 26660U:
  case 26659U:
  case 26658U:
  case 26657U:
  case 26656U:
  case 26655U:
  case 26654U:
  case 26653U:
  case 26652U:
  case 26651U:
  case 26650U:
  case 26649U:
  case 26648U:
  case 26647U:
  case 26646U:
  case 26645U:
  case 26644U:
  case 26643U:
  case 26642U:
  case 26641U:
  case 26640U:
  case 26639U:
  case 26638U:
  case 26637U:
  case 26636U:
  case 26635U:
  case 26634U:
  case 26633U:
  case 26632U:
  case 26631U:
  case 26630U:
  case 26629U:
  case 26628U:
  case 26627U:
  case 26626U:
  case 26625U:
  case 26624U:
  case 26623U:
  case 26622U:
  case 26621U:
  case 26620U:
  case 26619U:
  case 26618U:
  case 26617U:
  case 26616U:
  case 26615U:
  case 26614U:
  case 26613U:
  case 26612U:
  case 26611U:
  case 26610U:
  case 26609U:
  case 26608U:
  case 26607U:
  case 26606U:
  case 26605U:
  case 26604U:
  case 26603U:
  case 26602U:
  case 26601U:
  case 26600U:
  case 26599U:
  case 26598U:
  case 26597U:
  case 26596U:
  case 26595U:
  case 26594U:
  case 26593U:
  case 26592U:
  case 26591U:
  case 26590U:
  case 26589U:
  case 26588U:
  case 26587U:
  case 26586U:
  case 26585U:
  case 26584U:
  case 26583U:
  case 26582U:
  case 26581U:
  case 26580U:
  case 26579U:
  case 26578U:
  case 26577U:
  case 26576U:
  case 26575U:
  case 26574U:
  case 26573U:
  case 26572U:
  case 26571U:
  case 26570U:
  case 26569U:
  case 26568U:
  case 26567U:
  case 26566U:
  case 26565U:
  case 26564U:
  case 26563U:
  case 26562U:
  case 26561U:
  case 26560U:
  case 26559U:
  case 26558U:
  case 26557U:
  case 26556U:
  case 26555U:
  case 26554U:
  case 26553U:
  case 26552U:
  case 26551U:
  case 26550U:
  case 26549U:
  case 26548U:
  case 26547U:
  case 26546U:
  case 26545U:
  case 26544U:
  case 26543U:
  case 26542U:
  case 26541U:
  case 26540U:
  case 26539U:
  case 26538U:
  case 26537U:
  case 26536U:
  case 26535U:
  case 26534U:
  case 26533U:
  case 26532U:
  case 26531U:
  case 26530U:
  case 26529U:
  case 26528U:
  case 26527U:
  case 26526U:
  case 26525U:
  case 26524U:
  case 26523U:
  case 26522U:
  case 26521U:
  case 26520U:
  case 26519U:
  case 26518U:
  case 26517U:
  case 26516U:
  case 26515U:
  case 26514U:
  case 26513U:
  case 26512U:
  case 26511U:
  case 26510U:
  case 26509U:
  case 26508U:
  case 26507U:
  case 26506U:
  case 26505U:
  case 26504U:
  case 26503U:
  case 26502U:
  case 26501U:
  case 26500U:
  case 26499U:
  case 26498U:
  case 26497U:
  case 26496U:
  case 26495U:
  case 26494U:
  case 26493U:
  case 26492U:
  case 26491U:
  case 26490U:
  case 26489U:
  case 26488U:
  case 26487U:
  case 26486U:
  case 26485U:
  case 26484U:
  case 26483U:
  case 26482U:
  case 26481U:
  case 26480U:
  case 26479U:
  case 26478U:
  case 26477U:
  case 26476U:
  case 26475U:
  case 26474U:
  case 26473U:
  case 26472U:
  case 26471U:
  case 26470U:
  case 26469U:
  case 26468U:
  case 26467U:
  case 26466U:
  case 26465U:
  case 26464U:
  case 26463U:
  case 26462U:
  case 26461U:
  case 26460U:
  case 26459U:
  case 26458U:
  case 26457U:
  case 26456U:
  case 26455U:
  case 26454U:
  case 26453U:
  case 26452U:
  case 26451U:
  case 26450U:
  case 26449U:
  case 26448U:
  case 26447U:
  case 26446U:
  case 26445U:
  case 26444U:
  case 26443U:
  case 26442U:
  case 26441U:
  case 26440U:
  case 26439U:
  case 26438U:
  case 26437U:
  case 26436U:
  case 26435U:
  case 26434U:
  case 26433U:
  case 26432U:
  case 26431U:
  case 26430U:
  case 26429U:
  case 26428U:
  case 26427U:
  case 26426U:
  case 26425U:
  case 26424U:
  case 26423U:
  case 26422U:
  case 26421U:
  case 26420U:
  case 26419U:
  case 26418U:
  case 26417U:
  case 26416U:
  case 26415U:
  case 26414U:
  case 26413U:
  case 26412U:
  case 26411U:
  case 26410U:
  case 26409U:
  case 26408U:
  case 26407U:
  case 26406U:
  case 26405U:
  case 26404U:
  case 26403U:
  case 26402U:
  case 26401U:
  case 26400U:
  case 26399U:
  case 26398U:
  case 26397U:
  case 26396U:
  case 26395U:
  case 26394U:
  case 26393U:
  case 26392U:
  case 26391U:
  case 26390U:
  case 26389U:
  case 26388U:
  case 26387U:
  case 26386U:
  case 26385U:
  case 26384U:
  case 26383U:
  case 26382U:
  case 26381U:
  case 26380U:
  case 26379U:
  case 26378U:
  case 26377U:
  case 26376U:
  case 26375U:
  case 26374U:
  case 26373U:
  case 26372U:
  case 26371U:
  case 26370U:
  case 26369U:
  case 26368U:
  case 26367U:
  case 26366U:
  case 26365U:
  case 26364U:
  case 26363U:
  case 26362U:
  case 26361U:
  case 26360U:
  case 26359U:
  case 26358U:
  case 26357U:
  case 26356U:
  case 26355U:
  case 26354U:
  case 26353U:
  case 26352U:
  case 26351U:
  case 26350U:
  case 26349U:
  case 26348U:
  case 26347U:
  case 26346U:
  case 26345U:
  case 26344U:
  case 26343U:
  case 26342U:
  case 26341U:
  case 26340U:
  case 26339U:
  case 26338U:
  case 26337U:
  case 26336U:
  case 26335U:
  case 26334U:
  case 26333U:
  case 26332U:
  case 26331U:
  case 26330U:
  case 26329U:
  case 26328U:
  case 26327U:
  case 26326U:
  case 26325U:
  case 26324U:
  case 26323U:
  case 26322U:
  case 26321U:
  case 26320U:
  case 26319U:
  case 26318U:
  case 26317U:
  case 26316U:
  case 26315U:
  case 26314U:
  case 26313U:
  case 26312U:
  case 26311U:
  case 26310U:
  case 26309U:
  case 26308U:
  case 26307U:
  case 26306U:
  case 26305U:
  case 26304U:
  case 26303U:
  case 26302U:
  case 26301U:
  case 26300U:
  case 26299U:
  case 26298U:
  case 26297U:
  case 26296U:
  case 26295U:
  case 26294U:
  case 26293U:
  case 26292U:
  case 26291U:
  case 26290U:
  case 26289U:
  case 26288U:
  case 26287U:
  case 26286U:
  case 26285U:
  case 26284U:
  case 26283U:
  case 26282U:
  case 26281U:
  case 26280U:
  case 26279U:
  case 26278U:
  case 26277U:
  case 26276U:
  case 26275U:
  case 26274U:
  case 26273U:
  case 26272U:
  case 26271U:
  case 26270U:
  case 26269U:
  case 26268U:
  case 26267U:
  case 26266U:
  case 26265U:
  case 26264U:
  case 26263U:
  case 26262U:
  case 26261U:
  case 26260U:
  case 26259U:
  case 26258U:
  case 26257U:
  case 26256U:
  case 26255U:
  case 26254U:
  case 26253U:
  case 26252U:
  case 26251U:
  case 26250U:
  case 26249U:
  case 26248U:
  case 26247U:
  case 26246U:
  case 26245U:
  case 26244U:
  case 26243U:
  case 26242U:
  case 26241U:
  case 26240U:
  case 26239U:
  case 26238U:
  case 26237U:
  case 26236U:
  case 26235U:
  case 26234U:
  case 26233U:
  case 26232U:
  case 26231U:
  case 26230U:
  case 26229U:
  case 26228U:
  case 26227U:
  case 26226U:
  case 26225U:
  case 26224U:
  case 26223U:
  case 26222U:
  case 26221U:
  case 26220U:
  case 26219U:
  case 26218U:
  case 26217U:
  case 26216U:
  case 26215U:
  case 26214U:
  case 26213U:
  case 26212U:
  case 26211U:
  case 26210U:
  case 26209U:
  case 26208U:
  case 26207U:
  case 26206U:
  case 26205U:
  case 26204U:
  case 26203U:
  case 26202U:
  case 26201U:
  case 26200U:
  case 26199U:
  case 26198U:
  case 26197U:
  case 26196U:
  case 26195U:
  case 26194U:
  case 26193U:
  case 26192U:
  case 26191U:
  case 26190U:
  case 26189U:
  case 26188U:
  case 26187U:
  case 26186U:
  case 26185U:
  case 26184U:
  case 26183U:
  case 26182U:
  case 26181U:
  case 26180U:
  case 26179U:
  case 26178U:
  case 26177U:
  case 26176U:
  case 26175U:
  case 26174U:
  case 26173U:
  case 26172U:
  case 26171U:
  case 26170U:
  case 26169U:
  case 26168U:
  case 26167U:
  case 26166U:
  case 26165U:
  case 26164U:
  case 26163U:
  case 26162U:
  case 26161U:
  case 26160U:
  case 26159U:
  case 26158U:
  case 26157U:
  case 26156U:
  case 26155U:
  case 26154U:
  case 26153U:
  case 26152U:
  case 26151U:
  case 26150U:
  case 26149U:
  case 26148U:
  case 26147U:
  case 26146U:
  case 26145U:
  case 26144U:
  case 26143U:
  case 26142U:
  case 26141U:
  case 26140U:
  case 26139U:
  case 26138U:
  case 26137U:
  case 26136U:
  case 26135U:
  case 26134U:
  case 26133U:
  case 26132U:
  case 26131U:
  case 26130U:
  case 26129U:
  case 26128U:
  case 26127U:
  case 26126U:
  case 26125U:
  case 26124U:
  case 26123U:
  case 26122U:
  case 26121U:
  case 26120U:
  case 26119U:
  case 26118U:
  case 26117U:
  case 26116U:
  case 26115U:
  case 26114U:
  case 26113U:
  case 26112U:
  case 26111U:
  case 26110U:
  case 26109U:
  case 26108U:
  case 26107U:
  case 26106U:
  case 26105U:
  case 26104U:
  case 26103U:
  case 26102U:
  case 26101U:
  case 26100U:
  case 26099U:
  case 26098U:
  case 26097U:
  case 26096U:
  case 26095U:
  case 26094U:
  case 26093U:
  case 26092U:
  case 26091U:
  case 26090U:
  case 26089U:
  case 26088U:
  case 26087U:
  case 26086U:
  case 26085U:
  case 26084U:
  case 26083U:
  case 26082U:
  case 26081U:
  case 26080U:
  case 26079U:
  case 26078U:
  case 26077U:
  case 26076U:
  case 26075U:
  case 26074U:
  case 26073U:
  case 26072U:
  case 26071U:
  case 26070U:
  case 26069U:
  case 26068U:
  case 26067U:
  case 26066U:
  case 26065U:
  case 26064U:
  case 26063U:
  case 26062U:
  case 26061U:
  case 26060U:
  case 26059U:
  case 26058U:
  case 26057U:
  case 26056U:
  case 26055U:
  case 26054U:
  case 26053U:
  case 26052U:
  case 26051U:
  case 26050U:
  case 26049U:
  case 26048U:
  case 26047U:
  case 26046U:
  case 26045U:
  case 26044U:
  case 26043U:
  case 26042U:
  case 26041U:
  case 26040U:
  case 26039U:
  case 26038U:
  case 26037U:
  case 26036U:
  case 26035U:
  case 26034U:
  case 26033U:
  case 26032U:
  case 26031U:
  case 26030U:
  case 26029U:
  case 26028U:
  case 26027U:
  case 26026U:
  case 26025U:
  case 26024U:
  case 26023U:
  case 26022U:
  case 26021U:
  case 26020U:
  case 26019U:
  case 26018U:
  case 26017U:
  case 26016U:
  case 26015U:
  case 26014U:
  case 26013U:
  case 26012U:
  case 26011U:
  case 26010U:
  case 26009U:
  case 26008U:
  case 26007U:
  case 26006U:
  case 26005U:
  case 26004U:
  case 26003U:
  case 26002U:
  case 26001U:
  case 26000U:
  itv->card = ivtv_get_card(2);
  goto ldv_43211;
  case 0U:
  printk("\v%s: Invalid EEPROM\n", (char *)(& itv->v4l2_dev.name));
  return;
  default:
  printk("\v%s: Unknown model %d, defaulting to PVR-150\n", (char *)(& itv->v4l2_dev.name),
         tv.model);
  itv->card = ivtv_get_card(2);
  goto ldv_43211;
  }
  ldv_43211: ;
  switch (tv.model) {
  case 48254U:
  itv->card = ivtv_get_card(28);
  goto ldv_43220;
  default: ;
  goto ldv_43220;
  }
  ldv_43220:
  itv->v4l2_cap = (itv->card)->v4l2_capabilities;
  itv->card_name = (char const *)(itv->card)->name;
  itv->card_i2c = (struct ivtv_card_tuner_i2c const *)(itv->card)->i2c;
  if (tv.model - 23000U <= 999U) {
    ivtv_i2c_radio___0.radio[0] = 96U;
    ivtv_i2c_radio___0.radio[1] = 65534U;
    ivtv_i2c_radio___0.demod[0] = 67U;
    ivtv_i2c_radio___0.demod[1] = 65534U;
    ivtv_i2c_radio___0.tv[0] = 97U;
    ivtv_i2c_radio___0.tv[1] = 65534U;
    tmp = 2U;
    while (1) {
      if (tmp >= 4U) {
        break;
      } else {
      }
      ivtv_i2c_radio___0.tv[tmp] = (unsigned short)0;
      tmp = tmp + 1U;
    }
    itv->card_name = "WinTV PVR 500";
    itv->card_i2c = & ivtv_i2c_radio___0;
    if (pci_slot == 8 || pci_slot == 9) {
      is_first = (pci_slot & 1) == 0;
      itv->card_name = is_first != 0 ? "WinTV PVR 500 (unit #1)" : "WinTV PVR 500 (unit #2)";
      if (is_first == 0) {
        printk("\016%s: Correcting tveeprom data: no radio present on second unit\n",
               (char *)(& itv->v4l2_dev.name));
        tv.has_radio = 0U;
      } else {
      }
    } else {
    }
  } else {
  }
  printk("\016%s: Autodetected %s\n", (char *)(& itv->v4l2_dev.name), itv->card_name);
  switch (tv.tuner_hauppauge_model) {
  case 85U: ;
  case 99U: ;
  case 112U:
  itv->pvr150_workaround = 1U;
  goto ldv_43227;
  default: ;
  goto ldv_43227;
  }
  ldv_43227: ;
  if (tv.tuner_type == 4U) {
    printk("\v%s: tveeprom cannot autodetect tuner!\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (itv->options.tuner == -1) {
    itv->options.tuner = (int )tv.tuner_type;
  } else {
  }
  if (itv->options.radio == -1) {
    itv->options.radio = tv.has_radio != 0U;
  } else {
  }
  if (itv->options.newi2c == -1 && tv.has_ir != 0U) {
    itv->options.newi2c = (tv.has_ir & 4U) != 0U;
    if (itv->options.newi2c != 0) {
      printk("\016%s: Reopen i2c bus for IR-blaster support\n", (char *)(& itv->v4l2_dev.name));
      exit_ivtv_i2c(itv);
      init_ivtv_i2c(itv);
    } else {
    }
  } else {
  }
  if (itv->std != 0ULL) {
    return;
  } else {
  }
  if (((unsigned long long )tv.tuner_formats & 255ULL) != 0ULL) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: PAL tuner detected\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    itv->std = itv->std | 15ULL;
  } else
  if (((unsigned long long )tv.tuner_formats & 45056ULL) != 0ULL) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: NTSC tuner detected\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    itv->std = itv->std | 4096ULL;
  } else
  if (((unsigned long long )tv.tuner_formats & 16711680ULL) != 0ULL) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: SECAM tuner detected\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    itv->std = itv->std | 4194304ULL;
  } else {
    printk("\016%s: No tuner detected, default to NTSC-M\n", (char *)(& itv->v4l2_dev.name));
    itv->std = itv->std | 4096ULL;
  }
  return;
}
}
static v4l2_std_id ivtv_parse_std(struct ivtv *itv )
{
  {
  switch ((int )pal[0]) {
  case 54:
  tunertype = 0;
  return (2048ULL);
  case 98: ;
  case 66: ;
  case 103: ;
  case 71: ;
  case 104: ;
  case 72:
  tunertype = 0;
  return (15ULL);
  case 110: ;
  case 78:
  tunertype = 1;
  if ((int )((signed char )pal[1]) == 99 || (int )((signed char )pal[1]) == 67) {
    return (1024ULL);
  } else {
  }
  return (512ULL);
  case 105: ;
  case 73:
  tunertype = 0;
  return (16ULL);
  case 100: ;
  case 68: ;
  case 107: ;
  case 75:
  tunertype = 0;
  return (224ULL);
  case 77: ;
  case 109:
  tunertype = 1;
  return (256ULL);
  case 45: ;
  goto ldv_43250;
  default:
  printk("\f%s: pal= argument not recognised\n", (char *)(& itv->v4l2_dev.name));
  return (0ULL);
  }
  ldv_43250: ;
  switch ((int )secam[0]) {
  case 98: ;
  case 66: ;
  case 103: ;
  case 71: ;
  case 104: ;
  case 72:
  tunertype = 0;
  return (851968ULL);
  case 100: ;
  case 68: ;
  case 107: ;
  case 75:
  tunertype = 0;
  return (3276800ULL);
  case 108: ;
  case 76:
  tunertype = 0;
  if ((int )((signed char )secam[1]) == 67 || (int )((signed char )secam[1]) == 99) {
    return (8388608ULL);
  } else {
  }
  return (4194304ULL);
  case 45: ;
  goto ldv_43265;
  default:
  printk("\f%s: secam= argument not recognised\n", (char *)(& itv->v4l2_dev.name));
  return (0ULL);
  }
  ldv_43265: ;
  switch ((int )ntsc[0]) {
  case 109: ;
  case 77:
  tunertype = 1;
  return (4096ULL);
  case 106: ;
  case 74:
  tunertype = 1;
  return (8192ULL);
  case 107: ;
  case 75:
  tunertype = 1;
  return (32768ULL);
  case 45: ;
  goto ldv_43274;
  default:
  printk("\f%s: ntsc= argument not recognised\n", (char *)(& itv->v4l2_dev.name));
  return (0ULL);
  }
  ldv_43274: ;
  return (0ULL);
}
}
static void ivtv_process_options(struct ivtv *itv )
{
  char const *chipname ;
  int i ;
  int j ;
  struct ivtv_card const *tmp ;
  struct ivtv_card const *tmp___0 ;
  {
  itv->options.kilobytes[0] = enc_mpg_buffers * 1024;
  itv->options.kilobytes[1] = enc_yuv_buffers * 1024;
  itv->options.kilobytes[2] = enc_vbi_buffers * 1024;
  itv->options.kilobytes[3] = enc_pcm_buffers;
  itv->options.kilobytes[5] = dec_mpg_buffers * 1024;
  itv->options.kilobytes[8] = dec_yuv_buffers * 1024;
  itv->options.kilobytes[6] = dec_vbi_buffers;
  itv->options.cardtype = cardtype[(int )itv->instance];
  itv->options.tuner = tuner[(int )itv->instance];
  itv->options.radio = radio[(int )itv->instance];
  itv->options.i2c_clock_period = i2c_clock_period[(int )itv->instance];
  if (itv->options.i2c_clock_period == -1) {
    itv->options.i2c_clock_period = 20;
  } else
  if (itv->options.i2c_clock_period <= 9) {
    itv->options.i2c_clock_period = 10;
  } else
  if (itv->options.i2c_clock_period > 4500) {
    itv->options.i2c_clock_period = 4500;
  } else {
  }
  itv->options.newi2c = newi2c;
  if (tunertype < -1 || tunertype > 1) {
    printk("\f%s: Invalid tunertype argument, will autodetect instead\n", (char *)(& itv->v4l2_dev.name));
    tunertype = -1;
  } else {
  }
  itv->std = ivtv_parse_std(itv);
  if (itv->std == 0ULL && tunertype >= 0) {
    itv->std = tunertype != 0 ? 46848ULL : 16730367ULL;
  } else {
  }
  itv->has_cx23415 = (unsigned int )(itv->pdev)->device == 2051U;
  chipname = (unsigned int )itv->has_cx23415 != 0U ? "cx23415" : "cx23416";
  if (itv->options.cardtype == -1) {
    printk("\016%s: Ignore card (detected %s based chip)\n", (char *)(& itv->v4l2_dev.name),
           chipname);
    return;
  } else {
  }
  tmp = ivtv_get_card((int )((unsigned int )((u16 )itv->options.cardtype) + 65535U));
  itv->card = tmp;
  if ((unsigned long )tmp != (unsigned long )((struct ivtv_card const *)0)) {
    printk("\016%s: User specified %s card (detected %s based chip)\n", (char *)(& itv->v4l2_dev.name),
           (itv->card)->name, chipname);
  } else
  if (itv->options.cardtype != 0) {
    printk("\v%s: Unknown user specified type, trying to autodetect card\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((unsigned long )itv->card == (unsigned long )((struct ivtv_card const *)0)) {
    if (((unsigned int )(itv->pdev)->subsystem_vendor == 112U || (unsigned int )(itv->pdev)->subsystem_vendor == 624U) || (unsigned int )(itv->pdev)->subsystem_vendor == 16496U) {
      itv->card = ivtv_get_card((unsigned int )itv->has_cx23415 != 0U ? 1 : 2);
      printk("\016%s: Autodetected Hauppauge card (%s based)\n", (char *)(& itv->v4l2_dev.name),
             chipname);
    } else {
    }
  } else {
  }
  if ((unsigned long )itv->card == (unsigned long )((struct ivtv_card const *)0)) {
    i = 0;
    goto ldv_43289;
    ldv_43288: ;
    if ((unsigned long )(itv->card)->pci_list == (unsigned long )((struct ivtv_card_pci_info const * )0)) {
      goto ldv_43282;
    } else {
    }
    j = 0;
    goto ldv_43286;
    ldv_43285: ;
    if ((int )(itv->pdev)->device != (int )((unsigned short )((itv->card)->pci_list + (unsigned long )j)->device)) {
      goto ldv_43283;
    } else {
    }
    if ((int )(itv->pdev)->subsystem_vendor != (int )((unsigned short )((itv->card)->pci_list + (unsigned long )j)->subsystem_vendor)) {
      goto ldv_43283;
    } else {
    }
    if ((int )(itv->pdev)->subsystem_device != (int )((unsigned short )((itv->card)->pci_list + (unsigned long )j)->subsystem_device)) {
      goto ldv_43283;
    } else {
    }
    printk("\016%s: Autodetected %s card (%s based)\n", (char *)(& itv->v4l2_dev.name),
           (itv->card)->name, chipname);
    goto done;
    ldv_43283:
    j = j + 1;
    ldv_43286: ;
    if ((unsigned int )((unsigned short )((itv->card)->pci_list + (unsigned long )j)->device) != 0U) {
      goto ldv_43285;
    } else {
    }
    ldv_43282:
    i = i + 1;
    ldv_43289:
    tmp___0 = ivtv_get_card((int )((u16 )i));
    itv->card = tmp___0;
    if ((unsigned long )tmp___0 != (unsigned long )((struct ivtv_card const *)0)) {
      goto ldv_43288;
    } else {
    }
  } else {
  }
  done: ;
  if ((unsigned long )itv->card == (unsigned long )((struct ivtv_card const *)0)) {
    itv->card = ivtv_get_card(2);
    printk("\v%s: Unknown card: vendor/device: [%04x:%04x]\n", (char *)(& itv->v4l2_dev.name),
           (int )(itv->pdev)->vendor, (int )(itv->pdev)->device);
    printk("\v%s:               subsystem vendor/device: [%04x:%04x]\n", (char *)(& itv->v4l2_dev.name),
           (int )(itv->pdev)->subsystem_vendor, (int )(itv->pdev)->subsystem_device);
    printk("\v%s:               %s based\n", (char *)(& itv->v4l2_dev.name), chipname);
    printk("\v%s: Defaulting to %s card\n", (char *)(& itv->v4l2_dev.name), (itv->card)->name);
    printk("\v%s: Please mail the vendor/device and subsystem vendor/device IDs and what kind of\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: card you have to the ivtv-devel mailinglist (www.ivtvdriver.org)\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Prefix your subject line with [UNKNOWN IVTV CARD].\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  itv->v4l2_cap = (itv->card)->v4l2_capabilities;
  itv->card_name = (char const *)(itv->card)->name;
  itv->card_i2c = (struct ivtv_card_tuner_i2c const *)(itv->card)->i2c;
  return;
}
}
static int ivtv_init_struct1(struct ivtv *itv )
{
  struct sched_param param ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct task_struct *__k ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  struct lock_class_key __key___8 ;
  {
  param.sched_priority = 99;
  itv->base_addr = (itv->pdev)->resource[0].start;
  itv->enc_mbox.max_mbox = 2U;
  itv->dec_mbox.max_mbox = 1U;
  __mutex_init(& itv->serialize_lock, "&itv->serialize_lock", & __key);
  __mutex_init(& itv->i2c_bus_lock, "&itv->i2c_bus_lock", & __key___0);
  __mutex_init(& itv->udma.lock, "&itv->udma.lock", & __key___1);
  spinlock_check(& itv->lock);
  __raw_spin_lock_init(& itv->lock.__annonCompField18.rlock, "&(&itv->lock)->rlock",
                       & __key___2);
  spinlock_check(& itv->dma_reg_lock);
  __raw_spin_lock_init(& itv->dma_reg_lock.__annonCompField18.rlock, "&(&itv->dma_reg_lock)->rlock",
                       & __key___3);
  __init_kthread_worker(& itv->irq_worker, "(&itv->irq_worker)->lock", & __key___4);
  tmp = kthread_create_on_node(& kthread_worker_fn, (void *)(& itv->irq_worker), -1,
                               "%s", (char *)(& itv->v4l2_dev.name));
  __k = tmp;
  tmp___0 = IS_ERR((void const *)__k);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    wake_up_process(__k);
  } else {
  }
  itv->irq_worker_task = __k;
  tmp___2 = IS_ERR((void const *)itv->irq_worker_task);
  if ((int )tmp___2) {
    printk("\v%s: Could not create ivtv task\n", (char *)(& itv->v4l2_dev.name));
    return (-1);
  } else {
  }
  sched_setscheduler(itv->irq_worker_task, 1, (struct sched_param const *)(& param));
  memset((void *)(& itv->irq_work), 0, 32UL);
  INIT_LIST_HEAD(& itv->irq_work.node);
  itv->irq_work.func = & ivtv_irq_work_handler;
  itv->cxhdl.port = 0;
  itv->cxhdl.capabilities = 1U;
  __init_waitqueue_head(& itv->eos_waitq, "&itv->eos_waitq", & __key___5);
  __init_waitqueue_head(& itv->event_waitq, "&itv->event_waitq", & __key___6);
  __init_waitqueue_head(& itv->vsync_waitq, "&itv->vsync_waitq", & __key___7);
  __init_waitqueue_head(& itv->dma_waitq, "&itv->dma_waitq", & __key___8);
  reg_timer_3(& itv->dma_timer);
  itv->dma_timer.function = & ivtv_unfinished_dma;
  itv->dma_timer.data = (unsigned long )itv;
  itv->cur_dma_stream = -1;
  itv->cur_pio_stream = -1;
  itv->speed = 1000;
  itv->vbi.in.type = 4U;
  itv->vbi.sliced_in = & itv->vbi.in.fmt.sliced;
  sg_init_table((struct scatterlist *)(& itv->udma.SGlist), 704U);
  itv->osd_global_alpha_state = 1;
  itv->osd_global_alpha = 255U;
  atomic_set(& itv->yuv_info.next_dma_frame, -1);
  itv->yuv_info.lace_mode = ivtv_yuv_mode;
  itv->yuv_info.lace_threshold = ivtv_yuv_threshold;
  itv->yuv_info.max_frames_buffered = 3U;
  itv->yuv_info.track_osd = 1U;
  return (0);
}
}
static void ivtv_init_struct2(struct ivtv *itv )
{
  int i ;
  {
  i = 0;
  goto ldv_43313;
  ldv_43312: ;
  if ((unsigned int )((unsigned char )(itv->card)->video_inputs[i].video_type) == 0U) {
    goto ldv_43311;
  } else {
  }
  i = i + 1;
  ldv_43313: ;
  if (i <= 4) {
    goto ldv_43312;
  } else {
  }
  ldv_43311:
  itv->nof_inputs = (u8 )i;
  i = 0;
  goto ldv_43316;
  ldv_43315: ;
  if ((unsigned int )((unsigned char )(itv->card)->audio_inputs[i].audio_type) == 0U) {
    goto ldv_43314;
  } else {
  }
  i = i + 1;
  ldv_43316: ;
  if (i <= 1) {
    goto ldv_43315;
  } else {
  }
  ldv_43314:
  itv->nof_audio_inputs = (u8 )i;
  if ((int )(itv->card)->hw_all & 1) {
    itv->vbi.sliced_size = 288U;
  } else {
    itv->vbi.sliced_size = 64U;
  }
  i = 0;
  goto ldv_43319;
  ldv_43318: ;
  if ((unsigned int )((unsigned char )(itv->card)->video_inputs[i].video_type) == 1U) {
    goto ldv_43317;
  } else {
  }
  i = i + 1;
  ldv_43319: ;
  if ((int )itv->nof_inputs > i) {
    goto ldv_43318;
  } else {
  }
  ldv_43317: ;
  if ((int )itv->nof_inputs == i) {
    i = 0;
  } else {
  }
  itv->active_input = (u32 )i;
  itv->audio_input = (u32 )(itv->card)->video_inputs[i].audio_index;
  return;
}
}
static int ivtv_setup_pci(struct ivtv *itv , struct pci_dev *pdev , struct pci_device_id const *pci_id )
{
  u16 cmd ;
  unsigned char pci_latency ;
  int tmp ;
  int tmp___0 ;
  struct resource *tmp___1 ;
  struct resource *tmp___2 ;
  struct resource *tmp___3 ;
  {
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Enabling pci device\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp = pci_enable_device(pdev);
  if (tmp != 0) {
    printk("\v%s: Can\'t enable device!\n", (char *)(& itv->v4l2_dev.name));
    return (-5);
  } else {
  }
  tmp___0 = pci_set_dma_mask(pdev, 4294967295ULL);
  if (tmp___0 != 0) {
    printk("\v%s: No suitable DMA available.\n", (char *)(& itv->v4l2_dev.name));
    return (-5);
  } else {
  }
  tmp___1 = __request_region(& iomem_resource, itv->base_addr, 8388608ULL, "ivtv encoder",
                             0);
  if ((unsigned long )tmp___1 == (unsigned long )((struct resource *)0)) {
    printk("\v%s: Cannot request encoder memory region.\n", (char *)(& itv->v4l2_dev.name));
    return (-5);
  } else {
  }
  tmp___2 = __request_region(& iomem_resource, itv->base_addr + 33554432ULL, 65536ULL,
                             "ivtv registers", 0);
  if ((unsigned long )tmp___2 == (unsigned long )((struct resource *)0)) {
    printk("\v%s: Cannot request register memory region.\n", (char *)(& itv->v4l2_dev.name));
    __release_region(& iomem_resource, itv->base_addr, 8388608ULL);
    return (-5);
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U) {
    tmp___3 = __request_region(& iomem_resource, itv->base_addr + 16777216ULL, 8388608ULL,
                               "ivtv decoder", 0);
    if ((unsigned long )tmp___3 == (unsigned long )((struct resource *)0)) {
      printk("\v%s: Cannot request decoder memory region.\n", (char *)(& itv->v4l2_dev.name));
      __release_region(& iomem_resource, itv->base_addr, 8388608ULL);
      __release_region(& iomem_resource, itv->base_addr + 33554432ULL, 65536ULL);
      return (-5);
    } else {
    }
  } else {
  }
  pci_read_config_word((struct pci_dev const *)pdev, 4, & cmd);
  if (((int )cmd & 4) == 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Attempting to enable Bus Mastering\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    pci_set_master(pdev);
    pci_read_config_word((struct pci_dev const *)pdev, 4, & cmd);
    if (((int )cmd & 4) == 0) {
      printk("\v%s: Bus Mastering is not enabled\n", (char *)(& itv->v4l2_dev.name));
      return (-6);
    } else {
    }
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Bus Mastering Enabled.\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, 13, & pci_latency);
  if ((unsigned int )pci_latency <= 63U && ivtv_pci_latency != 0) {
    printk("\016%s: Unreasonably low latency timer, setting to 64 (was %d)\n", (char *)(& itv->v4l2_dev.name),
           (int )pci_latency);
    pci_write_config_byte((struct pci_dev const *)pdev, 13, 64);
    pci_read_config_byte((struct pci_dev const *)pdev, 13, & pci_latency);
  } else {
  }
  pci_write_config_dword((struct pci_dev const *)pdev, 64, 65535U);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: %d (rev %d) at %02x:%02x.%x, irq: %d, latency: %d, memory: 0x%llx\n",
           (char *)(& itv->v4l2_dev.name), (int )pdev->device, (int )pdev->revision,
           (int )(pdev->bus)->number, (pdev->devfn >> 3) & 31U, pdev->devfn & 7U,
           pdev->irq, (int )pci_latency, itv->base_addr);
  } else {
  }
  return (0);
}
}
static void ivtv_load_and_init_modules(struct ivtv *itv )
{
  u32 hw ;
  unsigned int i ;
  u32 device ;
  int tmp ;
  char *tmp___0 ;
  {
  hw = (itv->card)->hw_all;
  i = 0U;
  goto ldv_43335;
  ldv_43334:
  device = (u32 )(1 << (int )i);
  if ((device & hw) == 0U) {
    goto ldv_43333;
  } else {
  }
  if (device == 32768U || device == 128U) {
    itv->hw_flags = itv->hw_flags | device;
    goto ldv_43333;
  } else {
  }
  tmp = ivtv_i2c_register(itv, i);
  if (tmp == 0) {
    itv->hw_flags = itv->hw_flags | device;
  } else {
  }
  ldv_43333:
  i = i + 1U;
  ldv_43335: ;
  if (i <= 31U) {
    goto ldv_43334;
  } else {
  }
  if ((itv->hw_flags & 4128768U) == 0U) {
    ivtv_i2c_new_ir_legacy(itv);
  } else {
  }
  if ((int )(itv->card)->hw_all & 1) {
    itv->sd_video = ivtv_find_hw(itv, 1U);
  } else
  if (((unsigned int )(itv->card)->hw_all & 2048U) != 0U) {
    itv->sd_video = ivtv_find_hw(itv, 2048U);
  } else
  if (((unsigned int )(itv->card)->hw_all & 256U) != 0U) {
    itv->sd_video = ivtv_find_hw(itv, 256U);
  } else {
    itv->sd_video = ivtv_find_hw(itv, 2U);
  }
  itv->sd_audio = ivtv_find_hw(itv, (itv->card)->hw_audio_ctrl);
  itv->sd_muxer = ivtv_find_hw(itv, (itv->card)->hw_muxer);
  hw = itv->hw_flags;
  if ((int )(itv->card)->type == 11) {
    if ((hw & 1536U) == 0U) {
      itv->card = ivtv_get_card(30);
    } else
    if ((hw & 512U) == 0U) {
      itv->card = ivtv_get_card(29);
    } else {
    }
  } else
  if ((int )(itv->card)->type == 12 || (int )(itv->card)->type == 13) {
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->video)->s_crystal_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                               u32 ,
                                                                                                                                                                                                                                               u32 ))0)) {
        (*((((itv->sd_video)->ops)->video)->s_crystal_freq))(itv->sd_video, 24576000U,
                                                             1U);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )hw & 1) {
    itv->vbi.raw_decoder_line_size = 1444U;
    itv->vbi.raw_decoder_sav_odd_field = 32U;
    itv->vbi.raw_decoder_sav_even_field = 96U;
    itv->vbi.sliced_decoder_line_size = 272U;
    itv->vbi.sliced_decoder_sav_odd_field = 176U;
    itv->vbi.sliced_decoder_sav_even_field = 240U;
  } else {
  }
  if ((hw & 258U) != 0U) {
    itv->hw_flags = itv->hw_flags & 4294967037U;
    tmp___0 = strstr((char const *)(& (itv->sd_video)->name), "saa7114");
    if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
      itv->hw_flags = itv->hw_flags | 256U;
      itv->v4l2_cap = itv->v4l2_cap & 4294967215U;
    } else {
      itv->hw_flags = itv->hw_flags | 2U;
    }
    itv->vbi.raw_decoder_line_size = 1443U;
    itv->vbi.raw_decoder_sav_odd_field = 37U;
    itv->vbi.raw_decoder_sav_even_field = 98U;
    itv->vbi.sliced_decoder_line_size = 51U;
    itv->vbi.sliced_decoder_sav_odd_field = 171U;
    itv->vbi.sliced_decoder_sav_even_field = 236U;
  } else {
  }
  if ((hw & 2048U) != 0U) {
    itv->vbi.raw_decoder_line_size = 1443U;
    itv->vbi.raw_decoder_sav_odd_field = 37U;
    itv->vbi.raw_decoder_sav_even_field = 98U;
    itv->vbi.sliced_decoder_line_size = 51U;
    itv->vbi.sliced_decoder_sav_odd_field = 171U;
    itv->vbi.sliced_decoder_sav_even_field = 236U;
  } else {
  }
  return;
}
}
static int ivtv_probe(struct pci_dev *pdev , struct pci_device_id const *pci_id )
{
  int retval ;
  int vbi_buf_size ;
  struct ivtv *itv ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  int i ;
  struct tuner_setup setup ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct xc2028_ctrl ctrl ;
  struct v4l2_priv_tun_config cfg ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_ctrl_handler *hdl ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct v4l2_subdev *__sd___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  retval = 0;
  tmp = kzalloc(114296UL, 32U);
  itv = (struct ivtv *)tmp;
  if ((unsigned long )itv == (unsigned long )((struct ivtv *)0)) {
    return (-12);
  } else {
  }
  itv->pdev = pdev;
  tmp___0 = v4l2_device_set_name(& itv->v4l2_dev, "ivtv", & ivtv_instance);
  itv->instance = (u16 )tmp___0;
  retval = v4l2_device_register(& pdev->dev, & itv->v4l2_dev);
  if (retval != 0) {
    kfree((void const *)itv);
    return (retval);
  } else {
  }
  printk("\016%s: Initializing card %d\n", (char *)(& itv->v4l2_dev.name), (int )itv->instance);
  ivtv_process_options(itv);
  if (itv->options.cardtype == -1) {
    retval = -19;
    goto err;
  } else {
  }
  tmp___1 = ivtv_init_struct1(itv);
  if (tmp___1 != 0) {
    retval = -12;
    goto err;
  } else {
  }
  retval = cx2341x_handler_init(& itv->cxhdl, 50U);
  if (retval != 0) {
    goto err;
  } else {
  }
  itv->v4l2_dev.ctrl_handler = & itv->cxhdl.hdl;
  itv->cxhdl.ops = (struct cx2341x_handler_ops const *)(& ivtv_cxhdl_ops);
  itv->cxhdl.priv = (void *)itv;
  itv->cxhdl.func = & ivtv_api_func;
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: base addr: 0x%llx\n", (char *)(& itv->v4l2_dev.name), itv->base_addr);
  } else {
  }
  retval = ivtv_setup_pci(itv, pdev, pci_id);
  if (retval == -5) {
    goto free_worker;
  } else {
  }
  if (retval == -6) {
    goto free_mem;
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: attempting ioremap at 0x%llx len 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           itv->base_addr, 8388608);
  } else {
  }
  tmp___2 = ioremap_nocache(itv->base_addr, 8388608UL);
  itv->enc_mem = (void volatile *)tmp___2;
  if ((unsigned long )itv->enc_mem == (unsigned long )((void volatile *)0)) {
    printk("\v%s: ioremap failed. Can\'t get a window into CX23415/6 encoder memory\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Each capture card with a CX23415/6 needs 8 MB of vmalloc address space for this window\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Check the output of \'grep Vmalloc /proc/meminfo\'\n", (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Use the vmalloc= kernel command line option to set VmallocTotal to a larger value\n",
           (char *)(& itv->v4l2_dev.name));
    retval = -12;
    goto free_mem;
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: attempting ioremap at 0x%llx len 0x%08x\n", (char *)(& itv->v4l2_dev.name),
             itv->base_addr + 16777216ULL, 8388608);
    } else {
    }
    tmp___3 = ioremap_nocache(itv->base_addr + 16777216ULL, 8388608UL);
    itv->dec_mem = (void volatile *)tmp___3;
    if ((unsigned long )itv->dec_mem == (unsigned long )((void volatile *)0)) {
      printk("\v%s: ioremap failed. Can\'t get a window into CX23415 decoder memory\n",
             (char *)(& itv->v4l2_dev.name));
      printk("\v%s: Each capture card with a CX23415 needs 8 MB of vmalloc address space for this window\n",
             (char *)(& itv->v4l2_dev.name));
      printk("\v%s: Check the output of \'grep Vmalloc /proc/meminfo\'\n", (char *)(& itv->v4l2_dev.name));
      printk("\v%s: Use the vmalloc= kernel command line option to set VmallocTotal to a larger value\n",
             (char *)(& itv->v4l2_dev.name));
      retval = -12;
      goto free_mem;
    } else {
    }
  } else {
    itv->dec_mem = itv->enc_mem;
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: attempting ioremap at 0x%llx len 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           itv->base_addr + 33554432ULL, 65536);
  } else {
  }
  tmp___4 = ioremap_nocache(itv->base_addr + 33554432ULL, 65536UL);
  itv->reg_mem = (void volatile *)tmp___4;
  if ((unsigned long )itv->reg_mem == (unsigned long )((void volatile *)0)) {
    printk("\v%s: ioremap failed. Can\'t get a window into CX23415/6 register space\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Each capture card with a CX23415/6 needs 64 kB of vmalloc address space for this window\n",
           (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Check the output of \'grep Vmalloc /proc/meminfo\'\n", (char *)(& itv->v4l2_dev.name));
    printk("\v%s: Use the vmalloc= kernel command line option to set VmallocTotal to a larger value\n",
           (char *)(& itv->v4l2_dev.name));
    retval = -12;
    goto free_io;
  } else {
  }
  retval = ivtv_gpio_init(itv);
  if (retval != 0) {
    goto free_io;
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: activating i2c...\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp___5 = init_ivtv_i2c(itv);
  if (tmp___5 != 0) {
    printk("\v%s: Could not initialize i2c\n", (char *)(& itv->v4l2_dev.name));
    goto free_io;
  } else {
  }
  if (((unsigned int )(itv->card)->hw_all & 128U) != 0U) {
    ivtv_process_eeprom(itv);
  } else {
  }
  if ((unsigned long )(itv->card)->comment != (unsigned long )((char * )0)) {
    printk("\016%s: %s", (char *)(& itv->v4l2_dev.name), (itv->card)->comment);
  } else {
  }
  if ((unsigned int )(itv->card)->v4l2_capabilities == 0U) {
    retval = -19;
    goto free_i2c;
  } else {
  }
  if (itv->std == 0ULL) {
    itv->std = 4096ULL;
  } else {
  }
  if (itv->options.tuner == -1) {
    i = 0;
    goto ldv_43353;
    ldv_43352: ;
    if ((itv->std & (unsigned long long )(itv->card)->tuners[i].std) == 0ULL) {
      goto ldv_43350;
    } else {
    }
    itv->options.tuner = (itv->card)->tuners[i].tuner;
    goto ldv_43351;
    ldv_43350:
    i = i + 1;
    ldv_43353: ;
    if (i <= 2) {
      goto ldv_43352;
    } else {
    }
    ldv_43351: ;
  } else {
  }
  if (itv->options.tuner == -1 && (unsigned long long )(itv->card)->tuners[0].std != 0ULL) {
    itv->std = (itv->card)->tuners[0].std;
    if ((itv->std & 255ULL) != 0ULL) {
      itv->std = 15ULL;
    } else
    if ((itv->std & 45056ULL) != 0ULL) {
      itv->std = 4096ULL;
    } else
    if ((itv->std & 16711680ULL) != 0ULL) {
      itv->std = 4194304ULL;
    } else {
    }
    itv->options.tuner = (itv->card)->tuners[0].tuner;
  } else {
  }
  if (itv->options.radio == -1) {
    itv->options.radio = (unsigned int )((unsigned char )(itv->card)->radio_input.audio_type) != 0U;
  } else {
  }
  ivtv_init_struct2(itv);
  ivtv_load_and_init_modules(itv);
  if ((itv->std & 63744ULL) != 0ULL) {
    itv->is_60hz = 1U;
    itv->is_out_60hz = 1U;
  } else {
    itv->is_50hz = 1U;
    itv->is_out_50hz = 1U;
  }
  itv->yuv_info.osd_full_w = 720U;
  itv->yuv_info.osd_full_h = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  itv->yuv_info.v4l2_src_w = itv->yuv_info.osd_full_w;
  itv->yuv_info.v4l2_src_h = itv->yuv_info.osd_full_h;
  cx2341x_handler_set_50hz(& itv->cxhdl, (int )itv->is_50hz);
  itv->stream_buf_size[0] = 32768;
  itv->stream_buf_size[3] = 4608;
  itv->stream_buf_size[5] = 65536;
  itv->stream_buf_size[8] = 65536;
  itv->stream_buf_size[1] = 32768;
  itv->vbi.raw_size = 1456U;
  vbi_buf_size = (int )((itv->vbi.raw_size * ((unsigned int )itv->is_60hz != 0U ? 24U : 36U)) / 2U);
  itv->stream_buf_size[2] = vbi_buf_size;
  itv->stream_buf_size[6] = 2304;
  if (itv->options.radio > 0) {
    itv->v4l2_cap = itv->v4l2_cap | 262144U;
  } else {
  }
  if (itv->options.tuner >= 0) {
    setup.addr = 255U;
    setup.type = (unsigned int )itv->options.tuner;
    setup.mode_mask = 4U;
    if (itv->options.radio > 0) {
      setup.mode_mask = setup.mode_mask | 2U;
    } else {
    }
    setup.tuner_callback = setup.type == 71U ? & ivtv_reset_tuner_gpio : (int (*)(void * ,
                                                                                  int ,
                                                                                  int ,
                                                                                  int ))0;
    __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_43361;
    ldv_43360: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct tuner_setup * ))0)) {
      (*(((__sd->ops)->tuner)->s_type_addr))(__sd, & setup);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_43361: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_43360;
    } else {
    }
    if (setup.type == 71U) {
      ctrl.fname = (char *)"xc3028-v27.fw";
      ctrl.max_len = 64;
      ctrl.msleep = 0;
      ctrl.scode_table = 0U;
      ctrl.mts = (unsigned char)0;
      ctrl.input1 = (unsigned char)0;
      ctrl.vhfbw7 = (unsigned char)0;
      ctrl.uhfbw8 = (unsigned char)0;
      ctrl.disable_power_mgmt = (unsigned char)0;
      ctrl.read_not_reliable = (unsigned char)0;
      ctrl.demod = 0U;
      ctrl.type = (unsigned char)0;
      cfg.tuner = itv->options.tuner;
      cfg.priv = (void *)(& ctrl);
      __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
      goto ldv_43371;
      ldv_43370: ;
      if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                           struct v4l2_priv_tun_config const * ))0)) {
        (*(((__sd___0->ops)->tuner)->s_config))(__sd___0, (struct v4l2_priv_tun_config const *)(& cfg));
      } else {
      }
      __mptr___2 = (struct list_head const *)__sd___0->list.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
      ldv_43371: ;
      if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
        goto ldv_43370;
      } else {
      }
    } else {
    }
  } else {
  }
  itv->tuner_std = itv->std;
  if ((itv->v4l2_cap & 2U) != 0U) {
    hdl = itv->v4l2_dev.ctrl_handler;
    itv->__annonCompField105.ctrl_pts = v4l2_ctrl_new_std(hdl, & ivtv_hdl_out_ops,
                                                          10029535U, 0LL, 0LL, 0ULL,
                                                          0LL);
    itv->__annonCompField105.ctrl_frame = v4l2_ctrl_new_std(hdl, & ivtv_hdl_out_ops,
                                                            10029536U, 0LL, 0LL, 0ULL,
                                                            0LL);
    itv->__annonCompField106.ctrl_audio_playback = v4l2_ctrl_new_std_menu(hdl, & ivtv_hdl_out_ops,
                                                                          10029424U,
                                                                          5, 1ULL,
                                                                          1);
    itv->__annonCompField106.ctrl_audio_multilingual_playback = v4l2_ctrl_new_std_menu(hdl,
                                                                                       & ivtv_hdl_out_ops,
                                                                                       10029425U,
                                                                                       5,
                                                                                       1ULL,
                                                                                       2);
    if (hdl->error != 0) {
      retval = hdl->error;
      goto free_i2c;
    } else {
    }
    v4l2_ctrl_cluster(2U, & itv->__annonCompField105.ctrl_pts);
    v4l2_ctrl_cluster(2U, & itv->__annonCompField106.ctrl_audio_playback);
    __mptr___3 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff88UL;
    goto ldv_43380;
    ldv_43379: ;
    if ((unsigned long )(__sd___1->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd___1->ops)->video)->s_std_output != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                             v4l2_std_id ))0)) {
      (*(((__sd___1->ops)->video)->s_std_output))(__sd___1, itv->std);
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff88UL;
    ldv_43380: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_43379;
    } else {
    }
    __mptr___5 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___5 + 0xffffffffffffff88UL;
    goto ldv_43388;
    ldv_43387: ;
    if (((__sd___2->grp_id & 4U) != 0U && (unsigned long )(__sd___2->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___2->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                            int ))0)) {
      (*(((__sd___2->ops)->video)->s_stream))(__sd___2, 0);
    } else {
    }
    __mptr___6 = (struct list_head const *)__sd___2->list.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___6 + 0xffffffffffffff88UL;
    ldv_43388: ;
    if ((unsigned long )(& __sd___2->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_43387;
    } else {
    }
  } else {
  }
  ivtv_set_irq_mask(itv, 4294967295U);
  retval = ldv_request_irq_53((itv->pdev)->irq, & ivtv_irq_handler, 128UL, (char const *)(& itv->v4l2_dev.name),
                              (void *)itv);
  if (retval != 0) {
    printk("\v%s: Failed to register irq %d\n", (char *)(& itv->v4l2_dev.name), retval);
    goto free_i2c;
  } else {
  }
  retval = ivtv_streams_setup(itv);
  if (retval != 0) {
    printk("\v%s: Error %d setting up streams\n", (char *)(& itv->v4l2_dev.name),
           retval);
    goto free_irq;
  } else {
  }
  retval = ivtv_streams_register(itv);
  if (retval != 0) {
    printk("\v%s: Error %d registering devices\n", (char *)(& itv->v4l2_dev.name),
           retval);
    goto free_streams;
  } else {
  }
  printk("\016%s: Initialized card: %s\n", (char *)(& itv->v4l2_dev.name), itv->card_name);
  request_modules(itv);
  return (0);
  free_streams:
  ivtv_streams_cleanup(itv);
  free_irq:
  ldv_free_irq_54((itv->pdev)->irq, (void *)itv);
  free_i2c:
  v4l2_ctrl_handler_free(& itv->cxhdl.hdl);
  exit_ivtv_i2c(itv);
  free_io:
  ivtv_iounmap(itv);
  free_mem:
  __release_region(& iomem_resource, itv->base_addr, 8388608ULL);
  __release_region(& iomem_resource, itv->base_addr + 33554432ULL, 65536ULL);
  if ((unsigned int )itv->has_cx23415 != 0U) {
    __release_region(& iomem_resource, itv->base_addr + 16777216ULL, 8388608ULL);
  } else {
  }
  free_worker:
  kthread_stop(itv->irq_worker_task);
  err: ;
  if (retval == 0) {
    retval = -19;
  } else {
  }
  printk("\v%s: Error %d on initialization\n", (char *)(& itv->v4l2_dev.name), retval);
  v4l2_device_unregister(& itv->v4l2_dev);
  kfree((void const *)itv);
  return (retval);
}
}
int ivtv_init_on_first_open(struct ivtv *itv )
{
  struct v4l2_frequency vf ;
  struct ivtv_open_id fh ;
  int fw_retry_count ;
  int video_input ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fw_retry_count = 3;
  fh.itv = itv;
  fh.type = 0;
  tmp = constant_test_bit(22L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp != 0) {
    return (-6);
  } else {
  }
  tmp___0 = test_and_set_bit(21L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  goto ldv_43401;
  ldv_43400:
  tmp___1 = ivtv_firmware_init(itv);
  if (tmp___1 == 0) {
    goto ldv_43399;
  } else {
  }
  if (fw_retry_count > 1) {
    printk("\f%s: Retry loading firmware\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  ldv_43401:
  fw_retry_count = fw_retry_count - 1;
  if (fw_retry_count > 0) {
    goto ldv_43400;
  } else {
  }
  ldv_43399: ;
  if (fw_retry_count == 0) {
    set_bit(22L, (unsigned long volatile *)(& itv->i_flags));
    return (-6);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Getting firmware version..\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  ivtv_firmware_versions(itv);
  if ((int )(itv->card)->hw_all & 1) {
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->core)->load_fw != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
        (*((((itv->sd_video)->ops)->core)->load_fw))(itv->sd_video);
      } else {
      }
    } else {
    }
  } else {
  }
  vf.tuner = 0U;
  vf.type = 2U;
  vf.frequency = 6400U;
  if (itv->std == 8192ULL) {
    vf.frequency = 1460U;
  } else
  if ((itv->std & 4096ULL) != 0ULL) {
    vf.frequency = 1076U;
  } else {
  }
  video_input = (int )itv->active_input;
  itv->active_input = itv->active_input + 1U;
  ivtv_s_input((struct file *)0, (void *)(& fh), (unsigned int )video_input);
  itv->std = itv->std + 1ULL;
  itv->std_out = itv->std;
  ivtv_s_frequency((struct file *)0, (void *)(& fh), (struct v4l2_frequency const *)(& vf));
  if (((unsigned int )(itv->card)->v4l2_capabilities & 2U) != 0U) {
    __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_43408;
    ldv_43407: ;
    if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                int ))0)) {
      (*(((__sd->ops)->video)->s_stream))(__sd, 1);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_43408: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_43407;
    } else {
    }
    ivtv_init_mpeg_decoder(itv);
  } else {
  }
  if ((unsigned int )itv->has_cx23415 == 0U) {
    writel(3U, itv->reg_mem + 16UL);
    readl((void const volatile *)itv->reg_mem + 16U);
  } else {
  }
  ivtv_s_std_enc(itv, itv->tuner_std);
  if ((itv->v4l2_cap & 2U) != 0U) {
    ivtv_clear_irq_mask(itv, 168100864U);
    ivtv_set_osd_alpha(itv);
    ivtv_s_std_dec(itv, itv->tuner_std);
  } else {
    ivtv_clear_irq_mask(itv, 168099840U);
  }
  cx2341x_handler_setup(& itv->cxhdl);
  return (0);
}
}
static void ivtv_remove(struct pci_dev *pdev )
{
  struct v4l2_device *v4l2_dev ;
  void *tmp ;
  struct ivtv *itv ;
  struct ivtv *tmp___0 ;
  int i ;
  int tmp___1 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int type ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  v4l2_dev = (struct v4l2_device *)tmp;
  tmp___0 = to_ivtv(v4l2_dev);
  itv = tmp___0;
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Removing card\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  flush_request_modules(itv);
  tmp___4 = constant_test_bit(21L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___4 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Stopping all streams\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___1 > 0) {
      ivtv_stop_all_captures(itv);
    } else {
    }
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Stopping decoding\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    if ((itv->v4l2_cap & 2U) != 0U) {
      __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
      goto ldv_43422;
      ldv_43421: ;
      if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                  int ))0)) {
        (*(((__sd->ops)->video)->s_stream))(__sd, 0);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
      ldv_43422: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
        goto ldv_43421;
      } else {
      }
    } else {
    }
    tmp___3 = atomic_read((atomic_t const *)(& itv->decoding));
    if (tmp___3 > 0) {
      tmp___2 = constant_test_bit(7L, (unsigned long const volatile *)(& itv->i_flags));
      if (tmp___2 != 0) {
        type = 8;
      } else {
        type = 5;
      }
      ivtv_stop_v4l2_decode_stream((struct ivtv_stream *)(& itv->streams) + (unsigned long )type,
                                   3, 0ULL);
    } else {
    }
    ivtv_halt_firmware(itv);
  } else {
  }
  ivtv_set_irq_mask(itv, 4294967295U);
  ldv_del_timer_sync_55(& itv->dma_timer);
  flush_kthread_worker(& itv->irq_worker);
  kthread_stop(itv->irq_worker_task);
  ivtv_streams_cleanup(itv);
  ivtv_udma_free(itv);
  v4l2_ctrl_handler_free(& itv->cxhdl.hdl);
  exit_ivtv_i2c(itv);
  ldv_free_irq_56((itv->pdev)->irq, (void *)itv);
  ivtv_iounmap(itv);
  __release_region(& iomem_resource, itv->base_addr, 8388608ULL);
  __release_region(& iomem_resource, itv->base_addr + 33554432ULL, 65536ULL);
  if ((unsigned int )itv->has_cx23415 != 0U) {
    __release_region(& iomem_resource, itv->base_addr + 16777216ULL, 8388608ULL);
  } else {
  }
  pci_disable_device(itv->pdev);
  i = 0;
  goto ldv_43426;
  ldv_43425:
  kfree((void const *)itv->vbi.sliced_mpeg_data[i]);
  i = i + 1;
  ldv_43426: ;
  if (i <= 31) {
    goto ldv_43425;
  } else {
  }
  printk("\016ivtv: Removed %s\n", itv->card_name);
  v4l2_device_unregister(& itv->v4l2_dev);
  kfree((void const *)itv);
  return;
}
}
static struct pci_driver ivtv_pci_driver =
     {{0, 0}, "ivtv", (struct pci_device_id const *)(& ivtv_pci_tbl), & ivtv_probe,
    & ivtv_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                         0, 0, 0, 0}, {{{{{{0}}, 0U, 0U, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}}}},
                                                       {0, 0}}};
static int module_start(void)
{
  int tmp ;
  {
  printk("\016ivtv: Start initialization, version %s\n", (char *)"1.4.3");
  if (ivtv_first_minor < 0 || ivtv_first_minor > 31) {
    printk("\vivtv: Exiting, ivtv_first_minor must be between 0 and %d\n", 31);
    return (-1);
  } else {
  }
  if (ivtv_debug < 0 || ivtv_debug > 2047) {
    ivtv_debug = 0;
    printk("\016ivtv: Debug value must be >= 0 and <= 2047\n");
  } else {
  }
  tmp = ldv___pci_register_driver_57(& ivtv_pci_driver, & __this_module, "ivtv");
  if (tmp != 0) {
    printk("\vivtv: Error detecting PCI card\n");
    return (-19);
  } else {
  }
  printk("\016ivtv: End initialization\n");
  return (0);
}
}
static void module_cleanup(void)
{
  {
  ldv_pci_unregister_driver_58(& ivtv_pci_driver);
  return;
}
}
static char const __kstrtab_ivtv_set_irq_mask[18U] =
  { 'i', 'v', 't', 'v',
        '_', 's', 'e', 't',
        '_', 'i', 'r', 'q',
        '_', 'm', 'a', 's',
        'k', '\000'};
struct kernel_symbol const __ksymtab_ivtv_set_irq_mask ;
struct kernel_symbol const __ksymtab_ivtv_set_irq_mask = {(unsigned long )(& ivtv_set_irq_mask), (char const *)(& __kstrtab_ivtv_set_irq_mask)};
static char const __kstrtab_ivtv_api[9U] =
  { 'i', 'v', 't', 'v',
        '_', 'a', 'p', 'i',
        '\000'};
struct kernel_symbol const __ksymtab_ivtv_api ;
struct kernel_symbol const __ksymtab_ivtv_api = {(unsigned long )(& ivtv_api), (char const *)(& __kstrtab_ivtv_api)};
static char const __kstrtab_ivtv_vapi[10U] =
  { 'i', 'v', 't', 'v',
        '_', 'v', 'a', 'p',
        'i', '\000'};
struct kernel_symbol const __ksymtab_ivtv_vapi ;
struct kernel_symbol const __ksymtab_ivtv_vapi = {(unsigned long )(& ivtv_vapi), (char const *)(& __kstrtab_ivtv_vapi)};
static char const __kstrtab_ivtv_vapi_result[17U] =
  { 'i', 'v', 't', 'v',
        '_', 'v', 'a', 'p',
        'i', '_', 'r', 'e',
        's', 'u', 'l', 't',
        '\000'};
struct kernel_symbol const __ksymtab_ivtv_vapi_result ;
struct kernel_symbol const __ksymtab_ivtv_vapi_result = {(unsigned long )(& ivtv_vapi_result), (char const *)(& __kstrtab_ivtv_vapi_result)};
static char const __kstrtab_ivtv_clear_irq_mask[20U] =
  { 'i', 'v', 't', 'v',
        '_', 'c', 'l', 'e',
        'a', 'r', '_', 'i',
        'r', 'q', '_', 'm',
        'a', 's', 'k', '\000'};
struct kernel_symbol const __ksymtab_ivtv_clear_irq_mask ;
struct kernel_symbol const __ksymtab_ivtv_clear_irq_mask = {(unsigned long )(& ivtv_clear_irq_mask), (char const *)(& __kstrtab_ivtv_clear_irq_mask)};
static char const __kstrtab_ivtv_debug[11U] =
  { 'i', 'v', 't', 'v',
        '_', 'd', 'e', 'b',
        'u', 'g', '\000'};
struct kernel_symbol const __ksymtab_ivtv_debug ;
struct kernel_symbol const __ksymtab_ivtv_debug = {(unsigned long )(& ivtv_debug), (char const *)(& __kstrtab_ivtv_debug)};
static char const __kstrtab_ivtv_fw_debug[14U] =
  { 'i', 'v', 't', 'v',
        '_', 'f', 'w', '_',
        'd', 'e', 'b', 'u',
        'g', '\000'};
struct kernel_symbol const __ksymtab_ivtv_fw_debug ;
struct kernel_symbol const __ksymtab_ivtv_fw_debug = {(unsigned long )(& ivtv_fw_debug), (char const *)(& __kstrtab_ivtv_fw_debug)};
static char const __kstrtab_ivtv_reset_ir_gpio[19U] =
  { 'i', 'v', 't', 'v',
        '_', 'r', 'e', 's',
        'e', 't', '_', 'i',
        'r', '_', 'g', 'p',
        'i', 'o', '\000'};
struct kernel_symbol const __ksymtab_ivtv_reset_ir_gpio ;
struct kernel_symbol const __ksymtab_ivtv_reset_ir_gpio = {(unsigned long )(& ivtv_reset_ir_gpio), (char const *)(& __kstrtab_ivtv_reset_ir_gpio)};
static char const __kstrtab_ivtv_udma_setup[16U] =
  { 'i', 'v', 't', 'v',
        '_', 'u', 'd', 'm',
        'a', '_', 's', 'e',
        't', 'u', 'p', '\000'};
struct kernel_symbol const __ksymtab_ivtv_udma_setup ;
struct kernel_symbol const __ksymtab_ivtv_udma_setup = {(unsigned long )(& ivtv_udma_setup), (char const *)(& __kstrtab_ivtv_udma_setup)};
static char const __kstrtab_ivtv_udma_unmap[16U] =
  { 'i', 'v', 't', 'v',
        '_', 'u', 'd', 'm',
        'a', '_', 'u', 'n',
        'm', 'a', 'p', '\000'};
struct kernel_symbol const __ksymtab_ivtv_udma_unmap ;
struct kernel_symbol const __ksymtab_ivtv_udma_unmap = {(unsigned long )(& ivtv_udma_unmap), (char const *)(& __kstrtab_ivtv_udma_unmap)};
static char const __kstrtab_ivtv_udma_alloc[16U] =
  { 'i', 'v', 't', 'v',
        '_', 'u', 'd', 'm',
        'a', '_', 'a', 'l',
        'l', 'o', 'c', '\000'};
struct kernel_symbol const __ksymtab_ivtv_udma_alloc ;
struct kernel_symbol const __ksymtab_ivtv_udma_alloc = {(unsigned long )(& ivtv_udma_alloc), (char const *)(& __kstrtab_ivtv_udma_alloc)};
static char const __kstrtab_ivtv_udma_prepare[18U] =
  { 'i', 'v', 't', 'v',
        '_', 'u', 'd', 'm',
        'a', '_', 'p', 'r',
        'e', 'p', 'a', 'r',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ivtv_udma_prepare ;
struct kernel_symbol const __ksymtab_ivtv_udma_prepare = {(unsigned long )(& ivtv_udma_prepare), (char const *)(& __kstrtab_ivtv_udma_prepare)};
static char const __kstrtab_ivtv_init_on_first_open[24U] =
  { 'i', 'v', 't', 'v',
        '_', 'i', 'n', 'i',
        't', '_', 'o', 'n',
        '_', 'f', 'i', 'r',
        's', 't', '_', 'o',
        'p', 'e', 'n', '\000'};
struct kernel_symbol const __ksymtab_ivtv_init_on_first_open ;
struct kernel_symbol const __ksymtab_ivtv_init_on_first_open = {(unsigned long )(& ivtv_init_on_first_open), (char const *)(& __kstrtab_ivtv_init_on_first_open)};
static char const __kstrtab_ivtv_firmware_check[20U] =
  { 'i', 'v', 't', 'v',
        '_', 'f', 'i', 'r',
        'm', 'w', 'a', 'r',
        'e', '_', 'c', 'h',
        'e', 'c', 'k', '\000'};
struct kernel_symbol const __ksymtab_ivtv_firmware_check ;
struct kernel_symbol const __ksymtab_ivtv_firmware_check = {(unsigned long )(& ivtv_firmware_check), (char const *)(& __kstrtab_ivtv_firmware_check)};
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
extern int ldv_shutdown_15(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
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
void choose_timer_3(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_3 = 2;
  return;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ivtv_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_pci_driver_15(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  ivtv_pci_driver_group1 = (struct pci_dev *)tmp;
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
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_43567;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_43567;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_43567;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_43567;
  default:
  ldv_stop();
  }
  ldv_43567: ;
  return;
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_3) {
    ldv_timer_state_3 = 0;
    return;
  } else {
  }
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
      irq_retval = ivtv_irq_handler(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_43589;
    default:
    ldv_stop();
    }
    ldv_43589: ;
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
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3 == (unsigned long )timer) {
    if (ldv_timer_state_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3 = timer;
      ldv_timer_list_3->data = data;
      ldv_timer_state_3 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_3(timer);
  ldv_timer_list_3->data = data;
  return;
}
}
int reg_timer_3(struct timer_list *timer )
{
  {
  ldv_timer_list_3 = timer;
  ldv_timer_state_3 = 1;
  return (0);
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    request_module_async(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    request_module_async(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    request_module_async(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    request_module_async(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
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
    request_module_async(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_43616;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    request_module_async(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_43616;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    request_module_async(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_43616;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    request_module_async(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_43616;
  default:
  ldv_stop();
  }
  ldv_43616: ;
  return;
}
}
void ldv_main_exported_7(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_9(void) ;
int main(void)
{
  struct pci_device_id *ldvarg105 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg105 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_43685:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_43656;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_43656;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    ldv_main_exported_17();
  } else {
  }
  goto ldv_43656;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_43656;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_43656;
  case 5: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      module_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_43664;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = module_start();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_v4l2_file_operations_5();
        ldv_state_variable_10 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_v4l2_subdev_core_ops_13();
        ldv_state_variable_16 = 1;
        ldv_initialize_v4l2_ctrl_ops_16();
        ldv_state_variable_4 = 1;
        ldv_initialize_v4l2_file_operations_4();
        ldv_state_variable_8 = 1;
        ldv_state_variable_14 = 1;
        ldv_state_variable_12 = 1;
        ldv_initialize_v4l2_subdev_tuner_ops_12();
        ldv_state_variable_17 = 1;
        ldv_initialize_cx2341x_handler_ops_17();
        ldv_state_variable_9 = 1;
        ldv_initialize_i2c_algorithm_9();
        ldv_state_variable_7 = 1;
        ldv_initialize_v4l2_ioctl_ops_7();
        ldv_state_variable_11 = 1;
        ldv_initialize_v4l2_subdev_audio_ops_11();
        ldv_state_variable_6 = 1;
        ldv_initialize_v4l2_file_operations_6();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_43664;
    default:
    ldv_stop();
    }
    ldv_43664: ;
  } else {
  }
  goto ldv_43656;
  case 6: ;
  if (ldv_state_variable_16 != 0) {
    ldv_main_exported_16();
  } else {
  }
  goto ldv_43656;
  case 7: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_43656;
  case 8: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_43656;
  case 9: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3(ldv_timer_list_3);
  } else {
  }
  goto ldv_43656;
  case 10: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_43656;
  case 11: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_43656;
  case 12: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_43656;
  case 13: ;
  if (ldv_state_variable_15 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      ldv_retval_2 = ivtv_probe(ivtv_pci_driver_group1, (struct pci_device_id const *)ldvarg105);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_15 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_43676;
    case 1: ;
    if (ldv_state_variable_15 == 2) {
      ivtv_remove(ivtv_pci_driver_group1);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_43676;
    case 2: ;
    if (ldv_state_variable_15 == 2) {
      ldv_shutdown_15();
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_43676;
    default:
    ldv_stop();
    }
    ldv_43676: ;
  } else {
  }
  goto ldv_43656;
  case 14: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_43656;
  case 15: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_43656;
  case 16: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_43656;
  case 17: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_43656;
  default:
  ldv_stop();
  }
  ldv_43656: ;
  goto ldv_43685;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
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
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_flush_work_52(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_53(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_54(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_del_timer_sync_55(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_56(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_15 = 1;
  ldv_pci_driver_15();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_15 = 0;
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void __might_fault(char const * , int ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void *memchr(void const * , int , __kernel_size_t ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_76(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static int signal_pending___0(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
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
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
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
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void v4l2_ctrl_lock(struct v4l2_ctrl *ctrl )
{
  {
  mutex_lock_nested((ctrl->handler)->lock, 0U);
  return;
}
}
__inline static void v4l2_ctrl_unlock(struct v4l2_ctrl *ctrl )
{
  {
  mutex_unlock((ctrl->handler)->lock);
  return;
}
}
extern s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl * ) ;
extern int __v4l2_ctrl_s_ctrl(struct v4l2_ctrl * , s32 ) ;
__inline static int v4l2_ctrl_s_ctrl(struct v4l2_ctrl *ctrl , s32 val )
{
  int rval ;
  {
  v4l2_ctrl_lock(ctrl);
  rval = __v4l2_ctrl_s_ctrl(ctrl, val);
  v4l2_ctrl_unlock(ctrl);
  return (rval);
}
}
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
extern int v4l2_fh_is_singular(struct v4l2_fh * ) ;
__inline static int v4l2_fh_is_singular_file(struct file *filp )
{
  int tmp ;
  {
  tmp = v4l2_fh_is_singular((struct v4l2_fh *)filp->private_data);
  return (tmp);
}
}
__inline static struct ivtv_open_id *fh2id(struct v4l2_fh *fh )
{
  struct v4l2_fh const *__mptr ;
  {
  __mptr = (struct v4l2_fh const *)fh;
  return ((struct ivtv_open_id *)__mptr);
}
}
__inline static int ivtv_raw_vbi(struct ivtv const *itv )
{
  {
  return ((unsigned int )itv->vbi.in.type == 4U);
}
}
int ivtv_v4l2_open(struct file *filp ) ;
ssize_t ivtv_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos ) ;
ssize_t ivtv_v4l2_write(struct file *filp , char const *user_buf , size_t count ,
                        loff_t *pos ) ;
int ivtv_v4l2_close(struct file *filp ) ;
unsigned int ivtv_v4l2_enc_poll(struct file *filp , poll_table *wait ) ;
unsigned int ivtv_v4l2_dec_poll(struct file *filp , poll_table *wait ) ;
int ivtv_start_capture(struct ivtv_open_id *id ) ;
void ivtv_stop_capture(struct ivtv_open_id *id , int gop_end ) ;
int ivtv_start_decoding(struct ivtv_open_id *id , int speed ) ;
void ivtv_mute(struct ivtv *itv ) ;
void ivtv_unmute(struct ivtv *itv ) ;
int ivtv_claim_stream(struct ivtv_open_id *id , int type ) ;
void ivtv_release_stream(struct ivtv_stream *s ) ;
int ivtv_buf_copy_from_user(struct ivtv_stream *s , struct ivtv_buffer *buf , char const *src ,
                            int copybytes ) ;
void ivtv_buf_swap(struct ivtv_buffer *buf ) ;
void ivtv_queue_init(struct ivtv_queue *q ) ;
void ivtv_enqueue(struct ivtv_stream *s , struct ivtv_buffer *buf , struct ivtv_queue *q ) ;
struct ivtv_buffer *ivtv_dequeue(struct ivtv_stream *s , struct ivtv_queue *q ) ;
int ivtv_queue_move(struct ivtv_stream *s , struct ivtv_queue *from , struct ivtv_queue *steal ,
                    struct ivtv_queue *to , int needed_bytes ) ;
void ivtv_flush_queues(struct ivtv_stream *s ) ;
void ivtv_dma_stream_dec_prepare(struct ivtv_stream *s , u32 offset , int lock ) ;
ssize_t ivtv_write_vbi_from_user(struct ivtv *itv , struct v4l2_sliced_vbi_data const *sliced ,
                                 size_t cnt ) ;
void ivtv_process_vbi_data(struct ivtv *itv , struct ivtv_buffer *buf , u64 pts_stamp ,
                           int streamtype ) ;
void ivtv_disable_cc(struct ivtv *itv ) ;
int ivtv_start_v4l2_encode_stream(struct ivtv_stream *s ) ;
int ivtv_stop_v4l2_encode_stream(struct ivtv_stream *s , int gop_end ) ;
int ivtv_start_v4l2_decode_stream(struct ivtv_stream *s , int gop_offset ) ;
void ivtv_yuv_setup_stream_frame(struct ivtv *itv ) ;
int ivtv_yuv_udma_stream_frame(struct ivtv *itv , void *src ) ;
void ivtv_yuv_close(struct ivtv *itv ) ;
int ivtv_set_speed(struct ivtv *itv , int speed ) ;
extern int v4l2_event_pending(struct v4l2_fh * ) ;
int ivtv_claim_stream(struct ivtv_open_id *id , int type )
{
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct ivtv_stream *s_vbi ;
  int vbi_type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )type;
  tmp = test_and_set_bit(3L, (unsigned long volatile *)(& s->s_flags));
  if (tmp != 0) {
    if ((unsigned long )s->fh == (unsigned long )(& id->fh)) {
      return (0);
    } else {
    }
    if ((unsigned long )s->fh == (unsigned long )((struct v4l2_fh *)0) && (type == 6 || type == 2)) {
      s->fh = & id->fh;
      if ((ivtv_debug & 2) != 0) {
        printk("\016%s:  info: Start Read VBI\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (0);
    } else {
    }
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Stream %d is busy\n", (char *)(& itv->v4l2_dev.name),
             type);
    } else {
    }
    return (-16);
  } else {
  }
  s->fh = & id->fh;
  if (type == 6) {
    ivtv_clear_irq_mask(itv, 524288U);
  } else {
  }
  if (type == 5) {
    vbi_type = 6;
  } else
  if (type == 0 && itv->vbi.insert_mpeg != 0) {
    tmp___0 = ivtv_raw_vbi((struct ivtv const *)itv);
    if (tmp___0 == 0) {
      vbi_type = 2;
    } else {
      return (0);
    }
  } else {
    return (0);
  }
  s_vbi = (struct ivtv_stream *)(& itv->streams) + (unsigned long )vbi_type;
  tmp___1 = test_and_set_bit(3L, (unsigned long volatile *)(& s_vbi->s_flags));
  if (tmp___1 == 0) {
    if (vbi_type == 6) {
      ivtv_clear_irq_mask(itv, 524288U);
    } else {
    }
  } else {
  }
  set_bit(5L, (unsigned long volatile *)(& s_vbi->s_flags));
  return (0);
}
}
static char const __kstrtab_ivtv_claim_stream[18U] =
  { 'i', 'v', 't', 'v',
        '_', 'c', 'l', 'a',
        'i', 'm', '_', 's',
        't', 'r', 'e', 'a',
        'm', '\000'};
struct kernel_symbol const __ksymtab_ivtv_claim_stream ;
struct kernel_symbol const __ksymtab_ivtv_claim_stream = {(unsigned long )(& ivtv_claim_stream), (char const *)(& __kstrtab_ivtv_claim_stream)};
void ivtv_release_stream(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  struct ivtv_stream *s_vbi ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  itv = s->itv;
  s->fh = (struct v4l2_fh *)0;
  if (s->type == 6 || s->type == 2) {
    tmp = constant_test_bit(5L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp != 0) {
      return;
    } else {
    }
  } else {
  }
  tmp___0 = test_and_clear_bit(3L, (unsigned long volatile *)(& s->s_flags));
  if (tmp___0 == 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Release stream %s not in use!\n", (char *)(& itv->v4l2_dev.name),
             s->name);
    } else {
    }
    return;
  } else {
  }
  ivtv_flush_queues(s);
  if (s->type == 6) {
    ivtv_set_irq_mask(itv, 524288U);
  } else {
  }
  if (s->type == 5) {
    s_vbi = (struct ivtv_stream *)(& itv->streams) + 6UL;
  } else
  if (s->type == 0) {
    s_vbi = (struct ivtv_stream *)(& itv->streams) + 2UL;
  } else {
    return;
  }
  tmp___1 = test_and_clear_bit(5L, (unsigned long volatile *)(& s_vbi->s_flags));
  if (tmp___1 == 0) {
    return;
  } else {
  }
  if ((unsigned long )s_vbi->fh != (unsigned long )((struct v4l2_fh *)0)) {
    return;
  } else {
  }
  if (s_vbi->type == 6) {
    ivtv_set_irq_mask(itv, 524288U);
  } else {
  }
  clear_bit(3L, (unsigned long volatile *)(& s_vbi->s_flags));
  ivtv_flush_queues(s_vbi);
  return;
}
}
static char const __kstrtab_ivtv_release_stream[20U] =
  { 'i', 'v', 't', 'v',
        '_', 'r', 'e', 'l',
        'e', 'a', 's', 'e',
        '_', 's', 't', 'r',
        'e', 'a', 'm', '\000'};
struct kernel_symbol const __ksymtab_ivtv_release_stream ;
struct kernel_symbol const __ksymtab_ivtv_release_stream = {(unsigned long )(& ivtv_release_stream), (char const *)(& __kstrtab_ivtv_release_stream)};
static void ivtv_dualwatch(struct ivtv *itv )
{
  struct v4l2_tuner vt ;
  u32 new_stereo_mode ;
  u32 dual ;
  s32 tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  dual = 2U;
  tmp = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField92.audio_mode);
  new_stereo_mode = (u32 )tmp;
  memset((void *)(& vt), 0, 84UL);
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39385;
  ldv_39384: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, & vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39385: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39384;
  } else {
  }
  if (vt.audmode == 4U && (vt.rxsubchans & 4U) != 0U) {
    new_stereo_mode = dual;
  } else {
  }
  if (itv->dualwatch_stereo_mode == new_stereo_mode) {
    return;
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: dualwatch: change stereo flag from 0x%x to 0x%x.\n", (char *)(& itv->v4l2_dev.name),
           itv->dualwatch_stereo_mode, new_stereo_mode);
  } else {
  }
  tmp___0 = v4l2_ctrl_s_ctrl(itv->cxhdl.__annonCompField92.audio_mode, (s32 )new_stereo_mode);
  if (tmp___0 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: dualwatch: changing stereo flag failed\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  return;
}
}
static void ivtv_update_pgm_info(struct ivtv *itv )
{
  u32 wr_idx ;
  unsigned int tmp ;
  int cnt ;
  int i ;
  int idx ;
  struct v4l2_enc_idx_entry *e ;
  u32 addr ;
  int mapping[8U] ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  tmp = readl((void const volatile *)itv->enc_mem + (unsigned long )itv->pgm_info_offset);
  wr_idx = ((tmp - itv->pgm_info_offset) - 4U) / 24U;
  i = 0;
  if (itv->pgm_info_num <= wr_idx) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Invalid PGM index %d (>= %d)\n", (char *)(& itv->v4l2_dev.name),
             wr_idx, itv->pgm_info_num);
    } else {
    }
    return;
  } else {
  }
  cnt = (int )(((itv->pgm_info_num + wr_idx) - itv->pgm_info_write_idx) % itv->pgm_info_num);
  goto ldv_39399;
  ldv_39398:
  idx = (int )((itv->pgm_info_write_idx + (u32 )i) % itv->pgm_info_num);
  e = (struct v4l2_enc_idx_entry *)(& itv->pgm_info) + (unsigned long )idx;
  addr = (itv->pgm_info_offset + (u32 )(idx * 24)) + 4U;
  mapping[0] = -1;
  mapping[1] = 0;
  mapping[2] = 1;
  mapping[3] = -1;
  mapping[4] = 2;
  mapping[5] = -1;
  mapping[6] = -1;
  mapping[7] = -1;
  tmp___0 = readl((void const volatile *)itv->enc_mem + (unsigned long )(addr + 4U));
  tmp___1 = readl((void const volatile *)itv->enc_mem + (unsigned long )(addr + 8U));
  e->offset = (unsigned long long )tmp___0 + ((unsigned long long )tmp___1 << 32);
  if (e->offset > itv->mpg_data_received) {
    goto ldv_39397;
  } else {
  }
  e->offset = e->offset + itv->vbi_data_inserted;
  e->length = readl((void const volatile *)itv->enc_mem + (unsigned long )addr);
  tmp___2 = readl((void const volatile *)itv->enc_mem + (unsigned long )(addr + 16U));
  tmp___3 = readl((void const volatile *)itv->enc_mem + (unsigned long )(addr + 20U));
  e->pts = (unsigned long long )tmp___2 + (((unsigned long long )tmp___3 & 1ULL) << 32);
  tmp___4 = readl((void const volatile *)itv->enc_mem + (unsigned long )(addr + 12U));
  e->flags = (__u32 )mapping[tmp___4 & 7U];
  i = i + 1;
  ldv_39399: ;
  if (i < cnt) {
    goto ldv_39398;
  } else {
  }
  ldv_39397:
  itv->pgm_info_write_idx = (itv->pgm_info_write_idx + (u32 )i) % itv->pgm_info_num;
  return;
}
}
static struct ivtv_buffer *ivtv_get_buffer(struct ivtv_stream *s , int non_block ,
                                           int *err )
{
  struct ivtv *itv ;
  struct ivtv_stream *s_vbi ;
  struct ivtv_buffer *buf ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  {
  itv = s->itv;
  s_vbi = (struct ivtv_stream *)(& itv->streams) + 2UL;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  *err = 0;
  ldv_39418: ;
  if (s->type == 0) {
    ivtv_update_pgm_info(itv);
    tmp___0 = msecs_to_jiffies(1000U);
    if ((long )((itv->dualwatch_jiffies + tmp___0) - (unsigned long )jiffies) < 0L) {
      itv->dualwatch_jiffies = jiffies;
      ivtv_dualwatch(itv);
    } else {
    }
    tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___1 != 0) {
      tmp___2 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vbi->s_flags));
      if (tmp___2 == 0) {
        goto ldv_39416;
        ldv_39415:
        ivtv_process_vbi_data(itv, buf, s_vbi->dma_pts, s_vbi->type);
        ivtv_enqueue(s_vbi, buf, & s_vbi->q_free);
        ldv_39416:
        buf = ivtv_dequeue(s_vbi, & s_vbi->q_full);
        if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
          goto ldv_39415;
        } else {
        }
      } else {
      }
    } else {
    }
    buf = & itv->vbi.sliced_mpeg_buf;
    if (buf->readpos != buf->bytesused) {
      return (buf);
    } else {
    }
  } else {
  }
  buf = ivtv_dequeue(s, & s->q_io);
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
    return (buf);
  } else {
  }
  buf = ivtv_dequeue(s, & s->q_full);
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
    if (((int )buf->b_flags & 1) == 0) {
      return (buf);
    } else {
    }
    buf->b_flags = (unsigned int )buf->b_flags & 65534U;
    if (s->type == 0) {
      ivtv_buf_swap(buf);
    } else
    if (s->type != 6) {
      ivtv_process_vbi_data(itv, buf, s->dma_pts, s->type);
    } else {
    }
    return (buf);
  } else {
  }
  if (s->type != 6) {
    tmp___3 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp___3 == 0) {
      if ((ivtv_debug & 2) != 0) {
        printk("\016%s:  info: EOS %s\n", (char *)(& itv->v4l2_dev.name), s->name);
      } else {
      }
      return ((struct ivtv_buffer *)0);
    } else {
    }
  } else {
  }
  if (non_block != 0) {
    *err = -11;
    return ((struct ivtv_buffer *)0);
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  prepare_to_wait(& s->waitq, & wait, 1);
  if (s->q_full.buffers == 0U) {
    schedule();
  } else {
  }
  finish_wait(& s->waitq, & wait);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  tmp___4 = get_current();
  tmp___5 = signal_pending___0(tmp___4);
  if (tmp___5 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: User stopped %s\n", (char *)(& itv->v4l2_dev.name), s->name);
    } else {
    }
    *err = -4;
    return ((struct ivtv_buffer *)0);
  } else {
  }
  goto ldv_39418;
}
}
static void ivtv_setup_sliced_vbi_buf(struct ivtv *itv )
{
  int idx ;
  {
  idx = (int )itv->vbi.inserted_frame & 31;
  itv->vbi.sliced_mpeg_buf.buf = (char *)itv->vbi.sliced_mpeg_data[idx];
  itv->vbi.sliced_mpeg_buf.bytesused = itv->vbi.sliced_mpeg_size[idx];
  itv->vbi.sliced_mpeg_buf.readpos = 0U;
  return;
}
}
static size_t ivtv_copy_buf_to_user(struct ivtv_stream *s , struct ivtv_buffer *buf ,
                                    char *ubuf , size_t ucount )
{
  struct ivtv *itv ;
  size_t len ;
  char const *start ;
  char const *p ;
  u8 const *q ;
  u8 ch ;
  int stuffing ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  itv = s->itv;
  len = (size_t )(buf->bytesused - buf->readpos);
  if (len > ucount) {
    len = ucount;
  } else {
  }
  if (itv->vbi.insert_mpeg != 0 && s->type == 0) {
    tmp___0 = ivtv_raw_vbi((struct ivtv const *)itv);
    if (tmp___0 == 0) {
      if ((unsigned long )(& itv->vbi.sliced_mpeg_buf) != (unsigned long )buf) {
        start = (char const *)buf->buf + (unsigned long )buf->readpos;
        p = start + 1UL;
        ch = itv->search_pack_header != 0 ? 186U : 224U;
        goto ldv_39437;
        ldv_39442:
        p = (char const *)q + 1U;
        if ((((unsigned long )((char *)q + 15UL) >= (unsigned long )(buf->buf + (unsigned long )buf->bytesused) || (unsigned int )((unsigned char )*(q + 1UL)) != 0U) || (unsigned int )((unsigned char )*(q + 2UL)) != 1U) || (int )((unsigned char )*(q + 3UL)) != (int )ch) {
          goto ldv_39437;
        } else {
        }
        if (itv->search_pack_header == 0) {
          if (((int )*(q + 6UL) & 192) != 128) {
            goto ldv_39437;
          } else {
          }
          if ((((int )*(q + 7UL) & 192) == 128 && ((int )*(q + 9UL) & 240) == 32) || (((int )*(q + 7UL) & 192) == 192 && ((int )*(q + 9UL) & 240) == 48)) {
            ch = 186U;
            itv->search_pack_header = 1;
            p = (char const *)q + 9U;
          } else {
          }
          goto ldv_39437;
        } else {
        }
        stuffing = (int )*(q + 13UL) & 7;
        i = 0;
        goto ldv_39440;
        ldv_39439: ;
        if ((unsigned int )((unsigned char )*(q + (unsigned long )(i + 14))) != 255U) {
          goto ldv_39438;
        } else {
        }
        i = i + 1;
        ldv_39440: ;
        if (i < stuffing) {
          goto ldv_39439;
        } else {
        }
        ldv_39438: ;
        if (((((i == stuffing && ((int )*(q + 4UL) & 196) == 68) && ((int )*(q + 12UL) & 3) == 3) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 14))) == 0U) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 15))) == 0U) && (unsigned int )((unsigned char )*(q + (unsigned long )(stuffing + 16))) == 1U) {
          itv->search_pack_header = 0;
          len = (size_t )((long )q - (long )start);
          ivtv_setup_sliced_vbi_buf(itv);
          goto ldv_39441;
        } else {
        }
        ldv_39437: ;
        if ((unsigned long )(start + len) > (unsigned long )p) {
          tmp = memchr((void const *)p, 0, (__kernel_size_t )((long )(start + len) - (long )p));
          q = (u8 const *)tmp;
          if ((unsigned long )q != (unsigned long )((u8 const *)0U)) {
            goto ldv_39442;
          } else {
            goto ldv_39441;
          }
        } else {
        }
        ldv_39441: ;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___1 = copy_to_user((void *)ubuf, (void const *)buf->buf + (unsigned long )buf->readpos,
                         len);
  if (tmp___1 != 0UL) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: copy %zd bytes to user failed for %s\n", (char *)(& itv->v4l2_dev.name),
             len, s->name);
    } else {
    }
    return (0xfffffffffffffff2UL);
  } else {
  }
  buf->readpos = buf->readpos + (u32 )len;
  if (s->type == 0 && (unsigned long )(& itv->vbi.sliced_mpeg_buf) != (unsigned long )buf) {
    itv->mpg_data_received = itv->mpg_data_received + (unsigned long long )len;
  } else {
  }
  return (len);
}
}
static ssize_t ivtv_read(struct ivtv_stream *s , char *ubuf , size_t tot_count , int non_block )
{
  struct ivtv *itv ;
  size_t tot_written ;
  int single_frame ;
  int tmp ;
  int tmp___0 ;
  struct ivtv_buffer *buf ;
  int rc ;
  size_t tmp___1 ;
  int idx ;
  {
  itv = s->itv;
  tot_written = 0UL;
  single_frame = 0;
  tmp = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp == 0 && (unsigned long )s->fh == (unsigned long )((struct v4l2_fh *)0)) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Stream %s not initialized before read\n", (char *)(& itv->v4l2_dev.name),
             s->name);
    } else {
    }
    return (-5L);
  } else {
  }
  if (s->type == 6) {
    single_frame = 1;
  } else
  if (s->type == 2) {
    tmp___0 = ivtv_raw_vbi((struct ivtv const *)itv);
    if (tmp___0 == 0) {
      single_frame = 1;
    } else {
    }
  } else {
  }
  ldv_39456:
  buf = ivtv_get_buffer(s, non_block, & rc);
  if ((unsigned long )buf == (unsigned long )((struct ivtv_buffer *)0)) {
    if (tot_written != 0UL) {
      goto ldv_39454;
    } else {
    }
    if (rc == 0) {
      clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
      clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
      ivtv_release_stream(s);
    } else {
    }
    return ((ssize_t )rc);
  } else {
  }
  tmp___1 = ivtv_copy_buf_to_user(s, buf, ubuf + tot_written, tot_count - tot_written);
  rc = (int )tmp___1;
  if ((unsigned long )(& itv->vbi.sliced_mpeg_buf) != (unsigned long )buf) {
    ivtv_enqueue(s, buf, buf->readpos == buf->bytesused ? & s->q_free : & s->q_io);
  } else
  if (buf->readpos == buf->bytesused) {
    idx = (int )itv->vbi.inserted_frame & 31;
    itv->vbi.sliced_mpeg_size[idx] = 0U;
    itv->vbi.inserted_frame = itv->vbi.inserted_frame + 1U;
    itv->vbi_data_inserted = itv->vbi_data_inserted + (u64 )buf->bytesused;
  } else {
  }
  if (rc < 0) {
    return ((ssize_t )rc);
  } else {
  }
  tot_written = (size_t )rc + tot_written;
  if (tot_written == tot_count || single_frame != 0) {
    goto ldv_39454;
  } else {
  }
  goto ldv_39456;
  ldv_39454: ;
  return ((ssize_t )tot_written);
}
}
static ssize_t ivtv_read_pos(struct ivtv_stream *s , char *ubuf , size_t count , loff_t *pos ,
                             int non_block )
{
  ssize_t rc ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  struct ivtv *itv ;
  {
  if (count != 0UL) {
    tmp = ivtv_read(s, ubuf, count, non_block);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0L;
  }
  rc = tmp___0;
  itv = s->itv;
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: read %zd from %s, got %zd\n", (char *)(& itv->v4l2_dev.name),
           count, s->name, rc);
  } else {
  }
  if (rc > 0L) {
    pos = pos + (unsigned long )rc;
  } else {
  }
  return (rc);
}
}
int ivtv_start_capture(struct ivtv_open_id *id )
{
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct ivtv_stream *s_vbi ;
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
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  if (((s->type == 4 || s->type == 5) || s->type == 8) || s->type == 7) {
    return (-22);
  } else {
  }
  tmp = ivtv_claim_stream(id, s->type);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  if (s->type == 6) {
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    return (0);
  } else {
  }
  tmp___0 = constant_test_bit(7L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___0 != 0) {
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    return (0);
  } else {
    tmp___1 = test_and_set_bit(4L, (unsigned long volatile *)(& s->s_flags));
    if (tmp___1 != 0) {
      set_bit(8L, (unsigned long volatile *)(& s->s_flags));
      return (0);
    } else {
    }
  }
  s_vbi = (struct ivtv_stream *)(& itv->streams) + 2UL;
  if (s->type == 0) {
    tmp___3 = constant_test_bit(5L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___3 != 0) {
      tmp___4 = test_and_set_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
      if (tmp___4 == 0) {
        tmp___2 = ivtv_start_v4l2_encode_stream(s_vbi);
        if (tmp___2 != 0) {
          if (ivtv_debug & 1) {
            printk("\016%s:  warn: VBI capture start failed\n", (char *)(& itv->v4l2_dev.name));
          } else {
          }
          clear_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
          clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
          ivtv_release_stream(s);
          return (-5);
        } else {
        }
        if ((ivtv_debug & 2) != 0) {
          printk("\016%s:  info: VBI insertion started\n", (char *)(& itv->v4l2_dev.name));
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___6 = ivtv_start_v4l2_encode_stream(s);
  if (tmp___6 == 0) {
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    tmp___5 = test_and_clear_bit(13L, (unsigned long volatile *)(& itv->i_flags));
    if (tmp___5 != 0) {
      ivtv_vapi(itv, 210, 1, 1);
    } else {
    }
    return (0);
  } else {
  }
  if (ivtv_debug & 1) {
    printk("\016%s:  warn: Failed to start capturing for stream %s\n", (char *)(& itv->v4l2_dev.name),
           s->name);
  } else {
  }
  if (s->type == 0) {
    tmp___7 = constant_test_bit(4L, (unsigned long const volatile *)(& s_vbi->s_flags));
    if (tmp___7 != 0) {
      ivtv_stop_v4l2_encode_stream(s_vbi, 0);
      clear_bit(4L, (unsigned long volatile *)(& s_vbi->s_flags));
    } else {
    }
  } else {
  }
  clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
  ivtv_release_stream(s);
  return (-5);
}
}
ssize_t ivtv_v4l2_read(struct file *filp , char *buf , size_t count , loff_t *pos )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  ssize_t rc ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: read %zd bytes from %s\n", (char *)(& itv->v4l2_dev.name),
           count, s->name);
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& itv->serialize_lock, 0U);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  tmp___1 = ivtv_start_capture(id);
  rc = (ssize_t )tmp___1;
  if (rc == 0L) {
    rc = ivtv_read_pos(s, buf, count, pos, (int )filp->f_flags & 2048);
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  return (rc);
}
}
int ivtv_start_decoding(struct ivtv_open_id *id , int speed )
{
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  tmp___0 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___0 == 0) {
    tmp = ivtv_claim_stream(id, s->type);
    if (tmp != 0) {
      if (ivtv_debug & 1) {
        printk("\016%s:  warn: start decode, stream already claimed\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (-16);
    } else {
    }
    rc = ivtv_start_v4l2_decode_stream(s, 0);
    if (rc < 0) {
      if (rc == -11) {
        rc = ivtv_start_v4l2_decode_stream(s, 0);
      } else {
      }
      if (rc < 0) {
        return (rc);
      } else {
      }
    } else {
    }
  } else {
  }
  if (s->type == 5) {
    tmp___1 = ivtv_set_speed(itv, speed);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
static ssize_t ivtv_write(struct file *filp , char const *user_buf , size_t count ,
                          loff_t *pos )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct yuv_playback_info *yi ;
  struct ivtv_buffer *buf ;
  struct ivtv_queue q ;
  int bytes_written ;
  int mode ;
  int rc ;
  wait_queue_t wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int elems ;
  ssize_t tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  int got_sig ;
  struct task_struct *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  yi = & itv->yuv_info;
  bytes_written = 0;
  tmp___0 = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp___0;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: write %zd bytes to %s\n", (char *)(& itv->v4l2_dev.name),
           count, s->name);
  } else {
  }
  if ((s->type != 5 && s->type != 8) && s->type != 7) {
    return (-22L);
  } else {
  }
  tmp___1 = ivtv_claim_stream(id, s->type);
  if (tmp___1 != 0) {
    return (-16L);
  } else {
  }
  if (s->type == 7) {
    elems = (int )(count / 64UL);
    set_bit(8L, (unsigned long volatile *)(& s->s_flags));
    tmp___2 = ivtv_write_vbi_from_user(itv, (struct v4l2_sliced_vbi_data const *)user_buf,
                                       (size_t )elems);
    return (tmp___2);
  } else {
  }
  mode = s->type == 5 ? 1 : 2;
  tmp___3 = ivtv_set_output_mode(itv, mode);
  if (tmp___3 != mode) {
    ivtv_release_stream(s);
    return (-16L);
  } else {
  }
  ivtv_queue_init(& q);
  set_bit(8L, (unsigned long volatile *)(& s->s_flags));
  rc = ivtv_start_decoding(id, itv->speed);
  if (rc != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Failed start decode stream %s\n", (char *)(& itv->v4l2_dev.name),
             s->name);
    } else {
    }
    clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
    clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
    return ((ssize_t )rc);
  } else {
  }
  retry: ;
  if ((mode == 2 && s->q_full.length == 0U) && itv->dma_data_req_size != 0U) {
    goto ldv_39508;
    ldv_39507:
    rc = ivtv_yuv_udma_stream_frame(itv, (void *)user_buf);
    if (rc < 0) {
      return ((ssize_t )rc);
    } else {
    }
    bytes_written = (int )(itv->dma_data_req_size + (u32 )bytes_written);
    user_buf = user_buf + (unsigned long )itv->dma_data_req_size;
    count = count - (size_t )itv->dma_data_req_size;
    ldv_39508: ;
    if ((size_t )itv->dma_data_req_size <= count) {
      goto ldv_39507;
    } else {
    }
    if (count == 0UL) {
      if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
        printk("\016%s:  file: Wrote %d bytes to %s (%d)\n", (char *)(& itv->v4l2_dev.name),
               bytes_written, s->name, s->q_full.bytesused);
      } else {
      }
      return ((ssize_t )bytes_written);
    } else {
    }
  } else {
  }
  ldv_39517: ;
  goto ldv_39511;
  ldv_39510:
  ivtv_enqueue(s, buf, & q);
  ldv_39511: ;
  if ((size_t )(q.length - q.bytesused) < count) {
    buf = ivtv_dequeue(s, & s->q_io);
    if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
      goto ldv_39510;
    } else {
      goto ldv_39512;
    }
  } else {
  }
  ldv_39512: ;
  goto ldv_39514;
  ldv_39513:
  ivtv_enqueue(s, buf, & q);
  ldv_39514: ;
  if ((size_t )(q.length - q.bytesused) < count) {
    buf = ivtv_dequeue(s, & s->q_free);
    if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
      goto ldv_39513;
    } else {
      goto ldv_39515;
    }
  } else {
  }
  ldv_39515: ;
  if (q.buffers != 0U) {
    goto ldv_39516;
  } else {
  }
  if ((filp->f_flags & 2048U) != 0U) {
    return (-11L);
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  prepare_to_wait(& s->waitq, & wait, 1);
  if (s->q_free.buffers == 0U) {
    schedule();
  } else {
  }
  finish_wait(& s->waitq, & wait);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  tmp___4 = get_current();
  tmp___5 = signal_pending___0(tmp___4);
  if (tmp___5 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: User stopped %s\n", (char *)(& itv->v4l2_dev.name), s->name);
    } else {
    }
    return (-4L);
  } else {
  }
  goto ldv_39517;
  ldv_39516: ;
  goto ldv_39520;
  ldv_39519: ;
  if (s->type == 8 && (size_t )yi->stream_size + count > (size_t )itv->dma_data_req_size) {
    rc = ivtv_buf_copy_from_user(s, buf, user_buf, (int )(itv->dma_data_req_size - (u32 )yi->stream_size));
  } else {
    rc = ivtv_buf_copy_from_user(s, buf, user_buf, (int )count);
  }
  if (rc < 0) {
    ivtv_queue_move(s, & q, (struct ivtv_queue *)0, & s->q_free, 0);
    return ((ssize_t )rc);
  } else {
  }
  user_buf = user_buf + (unsigned long )rc;
  count = count - (size_t )rc;
  bytes_written = bytes_written + rc;
  if (s->type == 8) {
    yi->stream_size = yi->stream_size + rc;
    if ((u32 )yi->stream_size == itv->dma_data_req_size) {
      ivtv_enqueue(s, buf, & s->q_full);
      yi->stream_size = 0;
      goto ldv_39518;
    } else {
    }
  } else {
  }
  if (buf->bytesused != s->buf_size) {
    ivtv_enqueue(s, buf, & s->q_io);
    goto ldv_39518;
  } else {
  }
  if (s->type == 5) {
    ivtv_buf_swap(buf);
  } else {
  }
  ivtv_enqueue(s, buf, & s->q_full);
  ldv_39520:
  buf = ivtv_dequeue(s, & q);
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
    goto ldv_39519;
  } else {
  }
  ldv_39518:
  tmp___8 = constant_test_bit(2L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___8 != 0) {
    if (s->q_full.length >= itv->dma_data_req_size) {
      if (mode == 2) {
        ivtv_yuv_setup_stream_frame(itv);
      } else {
      }
      mutex_unlock(& itv->serialize_lock);
      prepare_to_wait(& itv->dma_waitq, & wait, 1);
      goto ldv_39523;
      ldv_39522:
      schedule();
      ldv_39523:
      tmp___6 = get_current();
      got_sig = signal_pending___0(tmp___6);
      if (got_sig == 0) {
        tmp___7 = constant_test_bit(0L, (unsigned long const volatile *)(& s->s_flags));
        if (tmp___7 != 0) {
          goto ldv_39522;
        } else {
          goto ldv_39524;
        }
      } else {
      }
      ldv_39524:
      finish_wait(& itv->dma_waitq, & wait);
      mutex_lock_nested(& itv->serialize_lock, 0U);
      if (got_sig != 0) {
        if ((ivtv_debug & 2) != 0) {
          printk("\016%s:  info: User interrupted %s\n", (char *)(& itv->v4l2_dev.name),
                 s->name);
        } else {
        }
        return (-4L);
      } else {
      }
      clear_bit(2L, (unsigned long volatile *)(& s->s_flags));
      ivtv_queue_move(s, & s->q_full, (struct ivtv_queue *)0, & s->q_predma, (int )itv->dma_data_req_size);
      ivtv_dma_stream_dec_prepare(s, itv->dma_data_req_offset + 16777216U, 1);
    } else {
    }
  } else {
  }
  if (count != 0UL && (filp->f_flags & 2048U) == 0U) {
    goto retry;
  } else {
  }
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: Wrote %d bytes to %s (%d)\n", (char *)(& itv->v4l2_dev.name),
           bytes_written, s->name, s->q_full.bytesused);
  } else {
  }
  return ((ssize_t )bytes_written);
}
}
ssize_t ivtv_v4l2_write(struct file *filp , char const *user_buf , size_t count ,
                        loff_t *pos )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  ssize_t res ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp;
  itv = id->itv;
  tmp___0 = mutex_lock_interruptible_nested(& itv->serialize_lock, 0U);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  res = ivtv_write(filp, user_buf, count, pos);
  mutex_unlock(& itv->serialize_lock);
  return (res);
}
}
unsigned int ivtv_v4l2_dec_poll(struct file *filp , poll_table *wait )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  int res ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  res = 0;
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: Decoder poll\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& id->fh.subscribed));
  if (tmp___3 == 0) {
    poll_wait(filp, & id->fh.wait, wait);
    clear_bit(31L, (unsigned long volatile *)(& itv->i_flags));
    tmp___0 = v4l2_event_pending(& id->fh);
    if (tmp___0 != 0) {
      res = 2;
    } else {
    }
  } else {
    poll_wait(filp, & s->waitq, wait);
    set_bit(31L, (unsigned long volatile *)(& itv->i_flags));
    tmp___1 = constant_test_bit(29L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___1 != 0) {
      res = 2;
    } else {
      tmp___2 = constant_test_bit(28L, (unsigned long const volatile *)(& itv->i_flags));
      if (tmp___2 != 0) {
        res = 2;
      } else {
      }
    }
  }
  if (s->q_free.buffers != 0U) {
    res = res | 260;
  } else {
  }
  return ((unsigned int )res);
}
}
unsigned int ivtv_v4l2_enc_poll(struct file *filp , poll_table *wait )
{
  unsigned long req_events ;
  unsigned long tmp ;
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp___0 ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  int eof ;
  int tmp___1 ;
  unsigned int res ;
  int rc ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = poll_requested_events((poll_table const *)wait);
  req_events = tmp;
  tmp___0 = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp___0;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  tmp___1 = constant_test_bit(7L, (unsigned long const volatile *)(& s->s_flags));
  eof = tmp___1;
  res = 0U;
  if (eof == 0) {
    tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp___2 == 0) {
      if (s->type != 4) {
        if ((req_events & 65UL) != 0UL) {
          mutex_lock_nested(& itv->serialize_lock, 0U);
          rc = ivtv_start_capture(id);
          mutex_unlock(& itv->serialize_lock);
          if (rc != 0) {
            if ((ivtv_debug & 2) != 0) {
              printk("\016%s:  info: Could not start capture for %s (%d)\n", (char *)(& itv->v4l2_dev.name),
                     s->name, rc);
            } else {
            }
            return (8U);
          } else {
          }
          if ((ivtv_debug & 16) != 0) {
            printk("\016%s:  file: Encoder poll started capture\n", (char *)(& itv->v4l2_dev.name));
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((ivtv_debug & 16) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  file: Encoder poll\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  poll_wait(filp, & s->waitq, wait);
  tmp___3 = v4l2_event_pending(& id->fh);
  if (tmp___3 != 0) {
    res = res | 2U;
  } else {
    poll_wait(filp, & id->fh.wait, wait);
  }
  if (s->q_full.length != 0U || s->q_io.length != 0U) {
    return (res | 65U);
  } else {
  }
  if (eof != 0) {
    return (res | 16U);
  } else {
  }
  return (res);
}
}
void ivtv_stop_capture(struct ivtv_open_id *id , int gop_end )
{
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct ivtv_stream *s_vbi ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  if ((ivtv_debug & 16) != 0) {
    printk("\016%s:  file: close() of %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___2 != 0) {
    s_vbi = (struct ivtv_stream *)(& itv->streams) + 2UL;
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: close stopping capture\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    if (id->type == 0) {
      tmp = constant_test_bit(4L, (unsigned long const volatile *)(& s_vbi->s_flags));
      if (tmp != 0) {
        tmp___0 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vbi->s_flags));
        if (tmp___0 == 0) {
          if ((ivtv_debug & 2) != 0) {
            printk("\016%s:  info: close stopping embedded VBI capture\n", (char *)(& itv->v4l2_dev.name));
          } else {
          }
          ivtv_stop_v4l2_encode_stream(s_vbi, 0);
        } else {
        }
      } else {
      }
    } else {
    }
    if (id->type == 6 || id->type == 2) {
      tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& s->s_flags));
      if (tmp___1 != 0) {
        s->fh = (struct v4l2_fh *)0;
      } else {
        ivtv_stop_v4l2_encode_stream(s, gop_end);
      }
    } else {
      ivtv_stop_v4l2_encode_stream(s, gop_end);
    }
  } else {
  }
  if (gop_end == 0) {
    clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
    clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
    ivtv_release_stream(s);
  } else {
  }
  return;
}
}
static void ivtv_stop_decoding(struct ivtv_open_id *id , int flags , u64 pts )
{
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  int tmp ;
  int tmp___0 ;
  {
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  if ((ivtv_debug & 16) != 0) {
    printk("\016%s:  file: close() of %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  if (id->type == 8) {
    tmp = constant_test_bit(12L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp != 0) {
      ivtv_yuv_close(itv);
    } else {
    }
  } else {
  }
  tmp___0 = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___0 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: close stopping decode\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ivtv_stop_v4l2_decode_stream(s, flags, pts);
    itv->output_mode = 0;
  } else {
  }
  clear_bit(8L, (unsigned long volatile *)(& s->s_flags));
  clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
  if (itv->output_mode == 3 && id->yuv_frames != 0) {
    itv->output_mode = 0;
  } else {
  }
  itv->speed = 0;
  clear_bit(20L, (unsigned long volatile *)(& itv->i_flags));
  ivtv_release_stream(s);
  return;
}
}
int ivtv_v4l2_close(struct file *filp )
{
  struct v4l2_fh *fh ;
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  s32 tmp___0 ;
  s32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct ivtv_stream *s_vout ;
  int tmp___4 ;
  {
  fh = (struct v4l2_fh *)filp->private_data;
  tmp = fh2id(fh);
  id = tmp;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  if ((ivtv_debug & 16) != 0) {
    printk("\016%s:  file: close %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  mutex_lock_nested(& itv->serialize_lock, 0U);
  if (id->type == 4) {
    tmp___3 = v4l2_fh_is_singular_file(filp);
    if (tmp___3 != 0) {
      ivtv_mute(itv);
      clear_bit(5L, (unsigned long volatile *)(& itv->i_flags));
      __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
      goto ldv_39580;
      ldv_39579: ;
      if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                v4l2_std_id ))0)) {
        (*(((__sd->ops)->video)->s_std))(__sd, itv->std);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
      ldv_39580: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
        goto ldv_39579;
      } else {
      }
      ivtv_audio_set_io(itv);
      if ((itv->hw_flags & 258U) != 0U) {
        __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
        __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
        goto ldv_39588;
        ldv_39587: ;
        if (((__sd___0->grp_id & 258U) != 0U && (unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___0->ops)->video)->s_crystal_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                                                        u32 ))0)) {
          (*(((__sd___0->ops)->video)->s_crystal_freq))(__sd___0, 32110000U, 0U);
        } else {
        }
        __mptr___2 = (struct list_head const *)__sd___0->list.next;
        __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
        ldv_39588: ;
        if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
          goto ldv_39587;
        } else {
        }
      } else {
      }
      tmp___2 = atomic_read((atomic_t const *)(& itv->capturing));
      if (tmp___2 > 0) {
        tmp___0 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField95.video_mute);
        tmp___1 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField95.video_mute_yuv);
        ivtv_vapi(itv, 217, 1, tmp___0 | (tmp___1 << 8));
      } else {
      }
      ivtv_unmute(itv);
    } else {
    }
  } else {
  }
  v4l2_fh_del(fh);
  v4l2_fh_exit(fh);
  if ((unsigned long )s->fh != (unsigned long )(& id->fh)) {
    goto close_done;
  } else {
  }
  if (s->type > 4) {
    s_vout = (struct ivtv_stream *)(& itv->streams) + 7UL;
    ivtv_stop_decoding(id, 3, 0ULL);
    if (itv->output_mode == 0) {
      tmp___4 = constant_test_bit(8L, (unsigned long const volatile *)(& s_vout->s_flags));
      if (tmp___4 == 0) {
        ivtv_disable_cc(itv);
      } else {
      }
    } else {
    }
  } else {
    ivtv_stop_capture(id, 0);
  }
  close_done:
  kfree((void const *)id);
  mutex_unlock(& itv->serialize_lock);
  return (0);
}
}
static int ivtv_open(struct file *filp )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct ivtv_stream *s ;
  void *tmp___0 ;
  struct ivtv *itv ;
  struct ivtv_open_id *item ;
  int res ;
  char const *tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___10 ;
  {
  tmp = video_devdata(filp);
  vdev = tmp;
  tmp___0 = video_get_drvdata(vdev);
  s = (struct ivtv_stream *)tmp___0;
  itv = s->itv;
  res = 0;
  if ((ivtv_debug & 16) != 0) {
    printk("\016%s:  file: open %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  tmp___2 = ivtv_init_on_first_open(itv);
  if (tmp___2 != 0) {
    tmp___1 = video_device_node_name(vdev);
    printk("\v%s: Failed to initialize on device %s\n", (char *)(& itv->v4l2_dev.name),
           tmp___1);
    return (-6);
  } else {
  }
  if (ivtv_fw_debug != 0) {
    tmp___3 = video_device_node_name(vdev);
    printk("\f%s: Opening %s with dead firmware lockout disabled\n", (char *)(& itv->v4l2_dev.name),
           tmp___3);
    printk("\f%s: Selected firmware errors will be ignored\n", (char *)(& itv->v4l2_dev.name));
  } else {
    res = ivtv_firmware_check(itv, (char *)"ivtv_serialized_open");
    if (res == -11) {
      res = ivtv_firmware_check(itv, (char *)"ivtv_serialized_open");
    } else {
    }
    if (res < 0) {
      return (-5);
    } else {
    }
  }
  if (s->type == 5) {
    tmp___4 = constant_test_bit(3L, (unsigned long const volatile *)(& itv->streams[8].s_flags));
    if (tmp___4 != 0) {
      return (-16);
    } else {
    }
  } else {
  }
  if (s->type == 8) {
    tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& itv->streams[5].s_flags));
    if (tmp___5 != 0) {
      return (-16);
    } else {
    }
  } else {
  }
  if (s->type == 8) {
    tmp___6 = readl((void const volatile *)itv->reg_mem + 2092U);
    if (tmp___6 == 0U) {
      printk("\v%s: Tried to open YUV output device but need to send data to mpeg decoder before it can be used\n",
             (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ivtv_udma_alloc(itv);
  } else {
  }
  tmp___7 = kzalloc(192UL, 208U);
  item = (struct ivtv_open_id *)tmp___7;
  if ((unsigned long )item == (unsigned long )((struct ivtv_open_id *)0)) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: nomem on v4l2 open\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-12);
  } else {
  }
  v4l2_fh_init(& item->fh, & s->vdev);
  item->itv = itv;
  item->type = s->type;
  filp->private_data = (void *)(& item->fh);
  v4l2_fh_add(& item->fh);
  if (item->type == 4) {
    tmp___10 = v4l2_fh_is_singular_file(filp);
    if (tmp___10 != 0) {
      tmp___9 = constant_test_bit(5L, (unsigned long const volatile *)(& itv->i_flags));
      if (tmp___9 == 0) {
        tmp___8 = atomic_read((atomic_t const *)(& itv->capturing));
        if (tmp___8 > 0) {
          v4l2_fh_del(& item->fh);
          v4l2_fh_exit(& item->fh);
          kfree((void const *)item);
          return (-16);
        } else {
        }
      } else {
      }
      set_bit(5L, (unsigned long volatile *)(& itv->i_flags));
      ivtv_mute(itv);
      __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
      goto ldv_39606;
      ldv_39605: ;
      if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
        (*(((__sd->ops)->tuner)->s_radio))(__sd);
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
      ldv_39606: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
        goto ldv_39605;
      } else {
      }
      ivtv_audio_set_io(itv);
      if ((itv->hw_flags & 258U) != 0U) {
        __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
        __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
        goto ldv_39614;
        ldv_39613: ;
        if (((__sd___0->grp_id & 258U) != 0U && (unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___0->ops)->video)->s_crystal_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                                                                        u32 ))0)) {
          (*(((__sd___0->ops)->video)->s_crystal_freq))(__sd___0, 32110000U, 4U);
        } else {
        }
        __mptr___2 = (struct list_head const *)__sd___0->list.next;
        __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
        ldv_39614: ;
        if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
          goto ldv_39613;
        } else {
        }
      } else {
      }
      ivtv_unmute(itv);
    } else {
    }
  } else {
  }
  if (s->type == 5) {
    clear_bit(7L, (unsigned long volatile *)(& itv->i_flags));
  } else
  if (s->type == 8) {
    set_bit(7L, (unsigned long volatile *)(& itv->i_flags));
    itv->dma_data_req_size = ((itv->yuv_info.v4l2_src_h + 31U) & 4294967264U) * 1080U;
    itv->yuv_info.stream_size = 0;
  } else {
  }
  return (0);
}
}
int ivtv_v4l2_open(struct file *filp )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  int res ;
  int tmp___0 ;
  {
  tmp = video_devdata(filp);
  vdev = tmp;
  tmp___0 = mutex_lock_interruptible_nested(vdev->lock, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  res = ivtv_open(filp);
  mutex_unlock(vdev->lock);
  return (res);
}
}
void ivtv_mute(struct ivtv *itv )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp != 0) {
    ivtv_vapi(itv, 218, 1, 1);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Mute\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  return;
}
}
void ivtv_unmute(struct ivtv *itv )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp != 0) {
    ivtv_msleep_timeout(100U, 0);
    ivtv_vapi(itv, 220, 1, 12);
    ivtv_vapi(itv, 218, 1, 0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Unmute\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
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
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
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
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_91(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_90(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_92(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void __writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)));
  return;
}
}
void ivtv_api_get_data(struct ivtv_mailbox_data *mbdata , int mb , int argc , u32 *data ) ;
void ivtv_mailbox_cache_invalidate(struct ivtv *itv ) ;
int ivtv_yuv_filter_check(struct ivtv *itv ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
static int load_fw_direct(char const *fn , u8 volatile *mem , struct ivtv *itv ,
                          long size )
{
  struct firmware const *fw ;
  int retries ;
  int i ;
  u32 volatile *dst ;
  u32 const *src ;
  int tmp ;
  {
  fw = (struct firmware const *)0;
  retries = 3;
  retry: ;
  if (retries != 0) {
    tmp = request_firmware(& fw, fn, & (itv->pdev)->dev);
    if (tmp == 0) {
      dst = (u32 volatile *)mem;
      src = (u32 const *)fw->data;
      if ((unsigned long )fw->size != (unsigned long )size) {
        printk("\016%s: Retry: file loaded was not %s (expected size %ld, got %zu)\n",
               (char *)(& itv->v4l2_dev.name), fn, size, fw->size);
        release_firmware(fw);
        retries = retries - 1;
        goto retry;
      } else {
      }
      i = 0;
      goto ldv_39110;
      ldv_39109:
      __writel(*src, (void volatile *)dst);
      dst = dst + 1;
      src = src + 1;
      i = i + 4;
      ldv_39110: ;
      if ((unsigned long )i < (unsigned long )fw->size) {
        goto ldv_39109;
      } else {
      }
      printk("\016%s: Loaded %s firmware (%zu bytes)\n", (char *)(& itv->v4l2_dev.name),
             fn, fw->size);
      release_firmware(fw);
      return ((int )size);
    } else {
    }
  } else {
  }
  printk("\v%s: Unable to open firmware %s (must be %ld bytes)\n", (char *)(& itv->v4l2_dev.name),
         fn, size);
  printk("\v%s: Did you put the firmware in the hotplug firmware directory?\n", (char *)(& itv->v4l2_dev.name));
  return (-12);
}
}
void ivtv_halt_firmware(struct ivtv *itv )
{
  struct ivtv_mailbox volatile *tmp ;
  {
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Preparing for firmware halt.\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U && (unsigned long )itv->dec_mbox.mbox != (unsigned long )((struct ivtv_mailbox volatile *)0)) {
    ivtv_vapi(itv, 14, 0);
  } else {
  }
  if ((unsigned long )itv->enc_mbox.mbox != (unsigned long )((struct ivtv_mailbox volatile *)0)) {
    ivtv_vapi(itv, 195, 0);
  } else {
  }
  ivtv_msleep_timeout(10U, 0);
  tmp = (struct ivtv_mailbox volatile *)0;
  itv->dec_mbox.mbox = tmp;
  itv->enc_mbox.mbox = tmp;
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stopping VDM\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(0U, itv->reg_mem + 10240UL);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stopping AO\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(5U, itv->reg_mem + 11520UL);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: pinging (?) APU\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(0U, itv->reg_mem + 41060UL);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stopping VPU\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((unsigned int )itv->has_cx23415 == 0U) {
    writel(4294967278U, itv->reg_mem + 36952UL);
  } else {
    writel(4294967294U, itv->reg_mem + 36952UL);
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Resetting Hw Blocks\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(4294967295U, itv->reg_mem + 36948UL);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stopping SPU\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(1U, itv->reg_mem + 36944UL);
  ivtv_msleep_timeout(10U, 0);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: init Encoder SDRAM pre-charge\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(26U, itv->reg_mem + 2044UL);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: init Encoder SDRAM refresh to 1us\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel(2147485248U, itv->reg_mem + 2040UL);
  if ((unsigned int )itv->has_cx23415 != 0U) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: init Decoder SDRAM pre-charge\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    writel(26U, itv->reg_mem + 2300UL);
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: init Decoder SDRAM refresh to 1us\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    writel(2147485248U, itv->reg_mem + 2296UL);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Sleeping for %dms\n", (char *)(& itv->v4l2_dev.name), 600);
  } else {
  }
  ivtv_msleep_timeout(600U, 0);
  return;
}
}
void ivtv_firmware_versions(struct ivtv *itv )
{
  u32 data[16U] ;
  {
  ivtv_vapi_result(itv, (u32 *)(& data), 196, 0);
  printk("\016%s: Encoder revision: 0x%08x\n", (char *)(& itv->v4l2_dev.name), data[0]);
  if (data[0] != 33947705U) {
    printk("\f%s: Recommended firmware version is 0x02060039.\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U) {
    ivtv_vapi_result(itv, (u32 *)(& data), 17, 0);
    printk("\016%s: Decoder revision: 0x%08x\n", (char *)(& itv->v4l2_dev.name), data[0]);
  } else {
  }
  return;
}
}
static int ivtv_firmware_copy(struct ivtv *itv )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Loading encoder image\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp = load_fw_direct("v4l-cx2341x-enc.fw", (u8 volatile *)itv->enc_mem, itv, 376836L);
  if (tmp != 376836) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: failed loading encoder firmware\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-3);
  } else {
  }
  if ((unsigned int )itv->has_cx23415 == 0U) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Loading decoder image\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp___0 = load_fw_direct("v4l-cx2341x-dec.fw", (u8 volatile *)itv->dec_mem, itv,
                           262144L);
  if (tmp___0 != 262144) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: failed loading decoder firmware\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-1);
  } else {
  }
  return (0);
}
}
static struct ivtv_mailbox volatile *ivtv_search_mailbox(u8 const volatile *mem ,
                                                           u32 size )
{
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  i = 0;
  goto ldv_39128;
  ldv_39127:
  tmp = readl((void const volatile *)mem + (unsigned long )i);
  if (tmp == 305419896U) {
    tmp___0 = readl((void const volatile *)(mem + ((unsigned long )i + 4UL)));
    if (tmp___0 == 878082066U) {
      tmp___1 = readl((void const volatile *)(mem + ((unsigned long )i + 8UL)));
      if (tmp___1 == 1450709556U) {
        tmp___2 = readl((void const volatile *)(mem + ((unsigned long )i + 12UL)));
        if (tmp___2 == 2014458966U) {
          return ((struct ivtv_mailbox volatile *)(mem + ((unsigned long )i + 16UL)));
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 256;
  ldv_39128: ;
  if ((u32 )i < size) {
    goto ldv_39127;
  } else {
  }
  return ((struct ivtv_mailbox volatile *)0);
}
}
int ivtv_firmware_init(struct ivtv *itv )
{
  int err ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ivtv_halt_firmware(itv);
  err = ivtv_firmware_copy(itv);
  if (err != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Error %d loading firmware\n", (char *)(& itv->v4l2_dev.name),
             err);
    } else {
    }
    return (err);
  } else {
  }
  tmp = readl((void const volatile *)itv->reg_mem + 36944U);
  writel(tmp & 4294967294U, itv->reg_mem + 36944UL);
  ivtv_msleep_timeout(100U, 0);
  if ((unsigned int )itv->has_cx23415 != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36952U);
    writel(tmp___0 & 4294967286U, itv->reg_mem + 36952UL);
  } else {
    tmp___1 = readl((void const volatile *)itv->reg_mem + 36952U);
    writel(tmp___1 & 4294967291U, itv->reg_mem + 36952UL);
  }
  ivtv_msleep_timeout(100U, 0);
  itv->enc_mbox.mbox = ivtv_search_mailbox((u8 const volatile *)itv->enc_mem, 8388608U);
  if ((unsigned long )itv->enc_mbox.mbox == (unsigned long )((struct ivtv_mailbox volatile *)0)) {
    printk("\v%s: Encoder mailbox not found\n", (char *)(& itv->v4l2_dev.name));
  } else {
    tmp___2 = ivtv_vapi(itv, 128, 0);
    if (tmp___2 != 0) {
      printk("\v%s: Encoder firmware dead!\n", (char *)(& itv->v4l2_dev.name));
      itv->enc_mbox.mbox = (struct ivtv_mailbox volatile *)0;
    } else {
    }
  }
  if ((unsigned long )itv->enc_mbox.mbox == (unsigned long )((struct ivtv_mailbox volatile *)0)) {
    return (-19);
  } else {
  }
  if ((unsigned int )itv->has_cx23415 == 0U) {
    return (0);
  } else {
  }
  itv->dec_mbox.mbox = ivtv_search_mailbox((u8 const volatile *)itv->dec_mem, 8388608U);
  if ((unsigned long )itv->dec_mbox.mbox == (unsigned long )((struct ivtv_mailbox volatile *)0)) {
    printk("\v%s: Decoder mailbox not found\n", (char *)(& itv->v4l2_dev.name));
  } else
  if ((unsigned int )itv->has_cx23415 != 0U) {
    tmp___3 = ivtv_vapi(itv, 0, 0);
    if (tmp___3 != 0) {
      printk("\v%s: Decoder firmware dead!\n", (char *)(& itv->v4l2_dev.name));
      itv->dec_mbox.mbox = (struct ivtv_mailbox volatile *)0;
    } else {
      ivtv_yuv_filter_check(itv);
    }
  } else {
    ivtv_yuv_filter_check(itv);
  }
  return ((unsigned long )itv->dec_mbox.mbox != (unsigned long )((struct ivtv_mailbox volatile *)0) ? 0 : -19);
}
}
void ivtv_init_mpeg_decoder(struct ivtv *itv )
{
  u32 data[16U] ;
  long readbytes ;
  u8 volatile *mem_offset ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  data[0] = 0U;
  data[1] = (u32 )itv->cxhdl.width;
  data[2] = (u32 )itv->cxhdl.height;
  data[3] = itv->cxhdl.audio_properties;
  tmp = ivtv_api(itv, 26, 4, (u32 *)(& data));
  if (tmp != 0) {
    printk("\v%s: ivtv_init_mpeg_decoder failed to set decoder source\n", (char *)(& itv->v4l2_dev.name));
    return;
  } else {
  }
  tmp___0 = ivtv_vapi(itv, 1, 2, 0, 1);
  if (tmp___0 != 0) {
    printk("\v%s: ivtv_init_mpeg_decoder failed to start playback\n", (char *)(& itv->v4l2_dev.name));
    return;
  } else {
  }
  ivtv_api_get_data(& itv->dec_mbox, 9, 2, (u32 *)(& data));
  mem_offset = (u8 volatile *)itv->dec_mem + (unsigned long )data[1];
  tmp___1 = load_fw_direct("v4l-cx2341x-init.mpg", mem_offset, itv, 155648L);
  readbytes = (long )tmp___1;
  if (readbytes <= 0L) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: failed to read mpeg decoder initialisation file %s\n",
             (char *)(& itv->v4l2_dev.name), (char *)"v4l-cx2341x-init.mpg");
    } else {
    }
  } else {
    ivtv_vapi(itv, 11, 3, 0, readbytes, 0);
    ivtv_msleep_timeout(100U, 0);
  }
  ivtv_vapi(itv, 2, 4, 0, 0, 0, 1);
  return;
}
}
static int ivtv_firmware_restart(struct ivtv *itv )
{
  int rc ;
  v4l2_std_id std ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  rc = 0;
  if ((itv->v4l2_cap & 2U) != 0U) {
    __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
    goto ldv_39151;
    ldv_39150: ;
    if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                 u32 ,
                                                                                                                                                                                                                                                 u32 ,
                                                                                                                                                                                                                                                 u32 ))0)) {
      (*(((__sd->ops)->video)->s_routing))(__sd, 1U, (u32 )((itv->card)->video_outputs + (unsigned long )itv->active_output)->video_output,
                                           0U);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
    ldv_39151: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_39150;
    } else {
    }
  } else {
  }
  mutex_lock_nested(& itv->udma.lock, 0U);
  rc = ivtv_firmware_init(itv);
  if (rc != 0) {
    mutex_unlock(& itv->udma.lock);
    return (rc);
  } else {
  }
  ivtv_mailbox_cache_invalidate(itv);
  std = itv->std;
  itv->std = 0ULL;
  ivtv_s_std_enc(itv, std);
  if ((itv->v4l2_cap & 2U) != 0U) {
    ivtv_init_mpeg_decoder(itv);
    std = itv->std_out;
    itv->std_out = 0ULL;
    ivtv_s_std_dec(itv, std);
    if ((unsigned long )itv->ivtvfb_restore != (unsigned long )((void (*)(struct ivtv * ))0)) {
      (*(itv->ivtvfb_restore))(itv);
    } else {
    }
    ivtv_set_osd_alpha(itv);
    __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
    goto ldv_39159;
    ldv_39158: ;
    if (((__sd___0->grp_id & 4U) != 0U && (unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd___0->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                             u32 ,
                                                                                                                                                                                                                                                             u32 ,
                                                                                                                                                                                                                                                             u32 ))0)) {
      (*(((__sd___0->ops)->video)->s_routing))(__sd___0, 0U, (u32 )((itv->card)->video_outputs + (unsigned long )itv->active_output)->video_output,
                                               0U);
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
    ldv_39159: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
      goto ldv_39158;
    } else {
    }
  } else {
  }
  mutex_unlock(& itv->udma.lock);
  return (rc);
}
}
int ivtv_firmware_check(struct ivtv *itv , char *where )
{
  int res ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  res = 0;
  tmp = ivtv_vapi(itv, 128, 0);
  if (tmp < 0) {
    printk("\f%s: Encoder has died : %s\n", (char *)(& itv->v4l2_dev.name), where);
    res = -1;
  } else {
  }
  if (res == 0) {
    tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___1 == 0) {
      tmp___2 = atomic_read((atomic_t const *)(& itv->decoding));
      if (tmp___2 == 0) {
        goto _L;
      } else {
        tmp___3 = atomic_read((atomic_t const *)(& itv->decoding));
        if (tmp___3 <= 1) {
          tmp___4 = constant_test_bit(7L, (unsigned long const volatile *)(& itv->i_flags));
          if (tmp___4 != 0) {
            _L:
            tmp___0 = ivtv_vapi(itv, 220, 1, 12);
            if (tmp___0 < 0) {
              printk("\f%s: Audio has died (Encoder OK) : %s\n", (char *)(& itv->v4l2_dev.name),
                     where);
              res = -2;
            } else {
            }
          } else {
          }
        } else {
        }
      }
    } else {
    }
  } else {
  }
  if ((itv->v4l2_cap & 2U) != 0U) {
    if (res != -2) {
      tmp___7 = readl((void const volatile *)itv->dec_mem + 256U);
      tmp___8 = readl((void const volatile *)itv->dec_mem + 260U);
      if (tmp___7 != tmp___8) {
        ivtv_msleep_timeout(14U, 0);
        tmp___5 = readl((void const volatile *)itv->dec_mem + 256U);
        tmp___6 = readl((void const volatile *)itv->dec_mem + 260U);
        if (tmp___5 != tmp___6) {
          printk("\f%s: Audio has died (Decoder) : %s\n", (char *)(& itv->v4l2_dev.name),
                 where);
          res = -1;
        } else {
        }
      } else {
      }
    } else {
    }
    tmp___9 = ivtv_vapi(itv, 0, 0);
    if (tmp___9 < 0) {
      printk("\f%s: Decoder has died : %s\n", (char *)(& itv->v4l2_dev.name), where);
      res = -1;
    } else {
    }
  } else {
  }
  if (res != 0) {
    tmp___10 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___10 == 0) {
      tmp___11 = atomic_read((atomic_t const *)(& itv->decoding));
      if (tmp___11 == 0) {
        printk("\016%s: Detected in %s that firmware had failed - Reloading\n", (char *)(& itv->v4l2_dev.name),
               where);
        res = ivtv_firmware_restart(itv);
        if (res == 0) {
          printk("\016%s: Firmware restart okay\n", (char *)(& itv->v4l2_dev.name));
          res = -11;
        } else {
          printk("\016%s: Firmware restart failed\n", (char *)(& itv->v4l2_dev.name));
        }
      } else {
        goto _L___1;
      }
    } else {
      goto _L___1;
    }
  } else
  _L___1:
  if (res != 0) {
    res = -5;
  } else {
  }
  return (res);
}
}
bool ldv_queue_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_90(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_91(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_92(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_queue_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_105(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_104(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_106(struct workqueue_struct *ldv_func_arg1 ) ;
extern long schedule_timeout_interruptible(long ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern void v4l2_ctrl_handler_log_status(struct v4l2_ctrl_handler * , char const * ) ;
extern int v4l2_subdev_queryctrl(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
extern int v4l2_subdev_querymenu(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
extern int v4l2_subdev_g_ext_ctrls(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
extern int v4l2_subdev_try_ext_ctrls(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
extern int v4l2_subdev_s_ext_ctrls(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
extern int v4l2_subdev_g_ctrl(struct v4l2_subdev * , struct v4l2_control * ) ;
extern int v4l2_subdev_s_ctrl(struct v4l2_subdev * , struct v4l2_control * ) ;
extern void v4l2_subdev_init(struct v4l2_subdev * , struct v4l2_subdev_ops const * ) ;
extern int v4l2_device_register_subdev(struct v4l2_device * , struct v4l2_subdev * ) ;
void ivtv_reset_ir_gpio(struct ivtv *itv )
{
  int curdir ;
  int curout ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned long tmp___1 ;
  {
  if ((int )(itv->card)->type != 2) {
    return;
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Resetting PVR150 IR\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp = readl((void const volatile *)itv->reg_mem + 36876U);
  curout = (int )tmp;
  tmp___0 = readl((void const volatile *)itv->reg_mem + 36896U);
  curdir = (int )tmp___0;
  curdir = curdir | 128;
  writel((unsigned int )curdir, itv->reg_mem + 36896UL);
  curout = (curout & -16) | 1;
  writel((unsigned int )curout, itv->reg_mem + 36876UL);
  tmp___1 = msecs_to_jiffies(1U);
  schedule_timeout_interruptible((long )tmp___1);
  curout = curout | 2;
  writel((unsigned int )curout, itv->reg_mem + 36876UL);
  curdir = curdir & -129;
  writel((unsigned int )curdir, itv->reg_mem + 36896UL);
  return;
}
}
int ivtv_reset_tuner_gpio(void *dev , int component , int cmd , int value )
{
  struct i2c_algo_bit_data *algo ;
  struct ivtv *itv ;
  u32 curout ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  algo = (struct i2c_algo_bit_data *)dev;
  itv = (struct ivtv *)algo->data;
  if (cmd != 0) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Resetting tuner\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  curout = readl((void const volatile *)itv->reg_mem + 36876U);
  curout = (u32 )(~ (1 << (int )(itv->card)->xceive_pin)) & curout;
  writel(curout, itv->reg_mem + 36876UL);
  tmp = msecs_to_jiffies(1U);
  schedule_timeout_interruptible((long )tmp);
  curout = (u32 )(1 << (int )(itv->card)->xceive_pin) | curout;
  writel(curout, itv->reg_mem + 36876UL);
  tmp___0 = msecs_to_jiffies(1U);
  schedule_timeout_interruptible((long )tmp___0);
  return (0);
}
}
__inline static struct ivtv *sd_to_ivtv(struct v4l2_subdev *sd )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)sd;
  return ((struct ivtv *)__mptr + 0xfffffffffffffb80UL);
}
}
__inline static struct v4l2_subdev *to_sd(struct v4l2_ctrl *ctrl )
{
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  return (& ((struct ivtv *)__mptr + 0xfffffffffffffc70UL)->sd_gpio);
}
}
static int subdev_s_clock_freq(struct v4l2_subdev *sd , u32 freq )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  mask = (itv->card)->gpio_audio_freq.mask;
  switch (freq) {
  case 32000U:
  data = (itv->card)->gpio_audio_freq.f32000;
  goto ldv_39664;
  case 44100U:
  data = (itv->card)->gpio_audio_freq.f44100;
  goto ldv_39664;
  case 48000U: ;
  default:
  data = (itv->card)->gpio_audio_freq.f48000;
  goto ldv_39664;
  }
  ldv_39664: ;
  if ((unsigned int )mask != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___0 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
}
}
static int subdev_g_tuner(struct v4l2_subdev *sd , struct v4l2_tuner *vt )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  mask = (itv->card)->gpio_audio_detect.mask;
  if ((unsigned int )mask == 0U) {
    vt->rxsubchans = 14U;
  } else {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36872U);
    if ((tmp___0 & (unsigned int )mask) != 0U) {
      vt->rxsubchans = 14U;
    } else {
      vt->rxsubchans = 1U;
    }
  }
  return (0);
}
}
static int subdev_s_tuner(struct v4l2_subdev *sd , struct v4l2_tuner const *vt )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  mask = (itv->card)->gpio_audio_mode.mask;
  switch (vt->audmode) {
  case 3U:
  data = (itv->card)->gpio_audio_mode.lang1;
  goto ldv_39682;
  case 2U:
  data = (itv->card)->gpio_audio_mode.lang2;
  goto ldv_39682;
  case 0U:
  data = (itv->card)->gpio_audio_mode.mono;
  goto ldv_39682;
  case 1U: ;
  case 4U: ;
  default:
  data = (itv->card)->gpio_audio_mode.stereo;
  goto ldv_39682;
  }
  ldv_39682: ;
  if ((unsigned int )mask != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___0 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
}
}
static int subdev_s_radio(struct v4l2_subdev *sd )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  mask = (itv->card)->gpio_audio_input.mask;
  data = (itv->card)->gpio_audio_input.radio;
  if ((unsigned int )mask != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___0 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
}
}
static int subdev_s_audio_routing(struct v4l2_subdev *sd , u32 input , u32 output ,
                                  u32 config )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  if (input > 2U) {
    return (-22);
  } else {
  }
  mask = (itv->card)->gpio_audio_input.mask;
  switch (input) {
  case 0U:
  data = (itv->card)->gpio_audio_input.tuner;
  goto ldv_39704;
  case 1U:
  data = (itv->card)->gpio_audio_input.linein;
  goto ldv_39704;
  case 2U: ;
  default:
  data = (itv->card)->gpio_audio_input.radio;
  goto ldv_39704;
  }
  ldv_39704: ;
  if ((unsigned int )mask != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___0 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
}
}
static int subdev_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct v4l2_subdev *sd ;
  struct v4l2_subdev *tmp ;
  struct ivtv *itv ;
  struct ivtv *tmp___0 ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___1 ;
  {
  tmp = to_sd(ctrl);
  sd = tmp;
  tmp___0 = sd_to_ivtv(sd);
  itv = tmp___0;
  switch (ctrl->id) {
  case 9963785U:
  mask = (itv->card)->gpio_audio_mute.mask;
  data = ctrl->val != 0 ? (u16 )(itv->card)->gpio_audio_mute.mute : 0U;
  if ((unsigned int )mask != 0U) {
    tmp___1 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___1 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
  }
  return (-22);
}
}
static int subdev_log_status(struct v4l2_subdev *sd )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  tmp___0 = readl((void const volatile *)itv->reg_mem + 36872U);
  tmp___1 = readl((void const volatile *)itv->reg_mem + 36876U);
  tmp___2 = readl((void const volatile *)itv->reg_mem + 36896U);
  printk("\016%s: GPIO status: DIR=0x%04x OUT=0x%04x IN=0x%04x\n", (char *)(& itv->v4l2_dev.name),
         tmp___2, tmp___1, tmp___0);
  v4l2_ctrl_handler_log_status(& itv->hdl_gpio, (char const *)(& sd->name));
  return (0);
}
}
static int subdev_s_video_routing(struct v4l2_subdev *sd , u32 input , u32 output ,
                                  u32 config )
{
  struct ivtv *itv ;
  struct ivtv *tmp ;
  u16 mask ;
  u16 data ;
  unsigned int tmp___0 ;
  {
  tmp = sd_to_ivtv(sd);
  itv = tmp;
  if (input > 2U) {
    return (-22);
  } else {
  }
  mask = (itv->card)->gpio_video_input.mask;
  if (input == 0U) {
    data = (itv->card)->gpio_video_input.tuner;
  } else
  if (input == 1U) {
    data = (itv->card)->gpio_video_input.composite;
  } else {
    data = (itv->card)->gpio_video_input.svideo;
  }
  if ((unsigned int )mask != 0U) {
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36876U);
    writel((tmp___0 & (unsigned int )(~ ((int )mask))) | (unsigned int )((int )data & (int )mask),
           itv->reg_mem + 36876UL);
  } else {
  }
  return (0);
}
}
static struct v4l2_ctrl_ops const gpio_ctrl_ops = {0, 0, & subdev_s_ctrl};
static struct v4l2_subdev_core_ops const subdev_core_ops =
     {& subdev_log_status, 0, 0, 0, 0, 0, & v4l2_subdev_queryctrl, & v4l2_subdev_g_ctrl,
    & v4l2_subdev_s_ctrl, & v4l2_subdev_g_ext_ctrls, & v4l2_subdev_s_ext_ctrls, & v4l2_subdev_try_ext_ctrls,
    & v4l2_subdev_querymenu, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_tuner_ops const subdev_tuner_ops =
     {& subdev_s_radio, 0, 0, 0, & subdev_g_tuner, & subdev_s_tuner, 0, 0, 0, 0};
static struct v4l2_subdev_audio_ops const subdev_audio_ops = {& subdev_s_clock_freq, 0, & subdev_s_audio_routing, 0};
static struct v4l2_subdev_video_ops const subdev_video_ops =
     {& subdev_s_video_routing, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0};
static struct v4l2_subdev_ops const subdev_ops =
     {& subdev_core_ops, & subdev_tuner_ops, & subdev_audio_ops, & subdev_video_ops,
    0, 0, 0, 0};
int ivtv_gpio_init(struct ivtv *itv )
{
  u16 pin ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  struct lock_class_key _key ;
  int tmp___1 ;
  {
  pin = 0U;
  if ((unsigned int )((unsigned char )(itv->card)->xceive_pin) != 0U) {
    pin = (u16 )(1 << (int )(itv->card)->xceive_pin);
  } else {
  }
  if ((unsigned int )((int )((unsigned short )(itv->card)->gpio_init.direction) | (int )pin) == 0U) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    tmp = readl((void const volatile *)itv->reg_mem + 36876U);
    tmp___0 = readl((void const volatile *)itv->reg_mem + 36896U);
    printk("\016%s:  info: GPIO initial dir: %08x out: %08x\n", (char *)(& itv->v4l2_dev.name),
           tmp___0, tmp);
  } else {
  }
  writel((unsigned int )((int )((unsigned short )(itv->card)->gpio_init.initial_value) | (int )pin),
         itv->reg_mem + 36876UL);
  writel((unsigned int )((int )((unsigned short )(itv->card)->gpio_init.direction) | (int )pin),
         itv->reg_mem + 36896UL);
  v4l2_subdev_init(& itv->sd_gpio, & subdev_ops);
  snprintf((char *)(& itv->sd_gpio.name), 32UL, "%s-gpio", (char *)(& itv->v4l2_dev.name));
  itv->sd_gpio.grp_id = 32768U;
  v4l2_ctrl_handler_init_class(& itv->hdl_gpio, 1U, & _key, "ivtv_gpio:366:(&itv->hdl_gpio)->_lock");
  v4l2_ctrl_new_std(& itv->hdl_gpio, & gpio_ctrl_ops, 9963785U, 0LL, 1LL, 1ULL, 0LL);
  if (itv->hdl_gpio.error != 0) {
    return (itv->hdl_gpio.error);
  } else {
  }
  itv->sd_gpio.ctrl_handler = & itv->hdl_gpio;
  v4l2_ctrl_handler_setup(& itv->hdl_gpio);
  tmp___1 = v4l2_device_register_subdev(& itv->v4l2_dev, & itv->sd_gpio);
  return (tmp___1);
}
}
void ldv_initialize_v4l2_subdev_audio_ops_11(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  subdev_audio_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_tuner_ops_12(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(304UL);
  subdev_tuner_ops_group0 = (struct v4l2_subdev *)tmp;
  return;
}
}
void ldv_initialize_v4l2_subdev_core_ops_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(8UL);
  subdev_core_ops_group2 = (struct v4l2_control *)tmp;
  tmp___0 = ldv_init_zalloc(304UL);
  subdev_core_ops_group1 = (struct v4l2_subdev *)tmp___0;
  tmp___1 = ldv_init_zalloc(32UL);
  subdev_core_ops_group0 = (struct v4l2_ext_controls *)tmp___1;
  return;
}
}
void ldv_main_exported_11(void)
{
  u32 ldvarg2 ;
  u32 ldvarg0 ;
  u32 ldvarg3 ;
  u32 ldvarg1 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    subdev_s_audio_routing(subdev_audio_ops_group0, ldvarg3, ldvarg2, ldvarg1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_39758;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    subdev_s_clock_freq(subdev_audio_ops_group0, ldvarg0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_39758;
  default:
  ldv_stop();
  }
  ldv_39758: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  struct v4l2_queryctrl *ldvarg90 ;
  void *tmp ;
  struct v4l2_querymenu *ldvarg89 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(68UL);
  ldvarg90 = (struct v4l2_queryctrl *)tmp;
  tmp___0 = ldv_init_zalloc(44UL);
  ldvarg89 = (struct v4l2_querymenu *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_queryctrl(subdev_core_ops_group1, ldvarg90);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_g_ext_ctrls(subdev_core_ops_group1, subdev_core_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_try_ext_ctrls(subdev_core_ops_group1, subdev_core_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_s_ext_ctrls(subdev_core_ops_group1, subdev_core_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 4: ;
  if (ldv_state_variable_13 == 1) {
    subdev_log_status(subdev_core_ops_group1);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 5: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_querymenu(subdev_core_ops_group1, ldvarg89);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 6: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_s_ctrl(subdev_core_ops_group1, subdev_core_ops_group2);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  case 7: ;
  if (ldv_state_variable_13 == 1) {
    v4l2_subdev_g_ctrl(subdev_core_ops_group1, subdev_core_ops_group2);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_39767;
  default:
  ldv_stop();
  }
  ldv_39767: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  u32 ldvarg115 ;
  u32 ldvarg118 ;
  u32 ldvarg117 ;
  struct v4l2_subdev *ldvarg116 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(304UL);
  ldvarg116 = (struct v4l2_subdev *)tmp;
  ldv_memset((void *)(& ldvarg115), 0, 4UL);
  ldv_memset((void *)(& ldvarg118), 0, 4UL);
  ldv_memset((void *)(& ldvarg117), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    subdev_s_video_routing(ldvarg116, ldvarg118, ldvarg117, ldvarg115);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_39784;
  default:
  ldv_stop();
  }
  ldv_39784: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  struct v4l2_tuner *ldvarg103 ;
  void *tmp ;
  struct v4l2_tuner *ldvarg102 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(84UL);
  ldvarg103 = (struct v4l2_tuner *)tmp;
  tmp___0 = ldv_init_zalloc(84UL);
  ldvarg102 = (struct v4l2_tuner *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    subdev_s_tuner(subdev_tuner_ops_group0, (struct v4l2_tuner const *)ldvarg103);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_39792;
  case 1: ;
  if (ldv_state_variable_12 == 1) {
    subdev_g_tuner(subdev_tuner_ops_group0, ldvarg102);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_39792;
  case 2: ;
  if (ldv_state_variable_12 == 1) {
    subdev_s_radio(subdev_tuner_ops_group0);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_39792;
  default:
  ldv_stop();
  }
  ldv_39792: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  struct v4l2_ctrl *ldvarg104 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(208UL);
  ldvarg104 = (struct v4l2_ctrl *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    subdev_s_ctrl(ldvarg104);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_39801;
  default:
  ldv_stop();
  }
  ldv_39801: ;
  return;
}
}
bool ldv_queue_work_on_103(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_104(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_105(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_106(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_107(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern int sprintf(char * , char const * , ...) ;
extern size_t strlen(char const * ) ;
bool ldv_queue_work_on_117(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_119(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_118(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_120(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
extern struct i2c_client *i2c_new_probed_device(struct i2c_adapter * , struct i2c_board_info * ,
                                                unsigned short const * , int (*)(struct i2c_adapter * ,
                                                                                   unsigned short ) ) ;
__inline static void *i2c_get_adapdata(struct i2c_adapter const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
extern int i2c_bit_add_bus(struct i2c_adapter * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device * , struct i2c_adapter * ,
                                                     struct i2c_board_info * , unsigned short const * ) ;
static u8 const hw_addrs[22U] =
  { 68U, 33U, 68U, 64U,
        0U, 27U, 17U, 0U,
        33U, 18U, 92U, 33U,
        26U, 91U, 72U, 0U,
        64U, 26U, 24U, 112U,
        113U, 107U};
static char const * const hw_devicenames[22U] =
  { "cx25840", "saa7115", "saa7127_auto", "msp3400",
        "tuner", "wm8775", "cs53l32a", "tveeprom",
        "saa7114", "upd64031a", "upd64083", "saa717x",
        "wm8739", "vp27smpx", "m52790", "gpio",
        "ir_video", "ir_video", "ir_video", "ir_tx_z8f0811_haup",
        "ir_rx_z8f0811_haup", "ir_video"};
static int get_key_adaptec(struct IR_i2c *ir , enum rc_type *protocol , u32 *scancode ,
                           u8 *toggle )
{
  unsigned char keybuf[4U] ;
  int tmp ;
  {
  keybuf[0] = 0U;
  i2c_master_send((struct i2c_client const *)ir->c, (char const *)(& keybuf),
                  1);
  tmp = i2c_master_recv((struct i2c_client const *)ir->c, (char *)(& keybuf), 4);
  if (tmp != 4) {
    return (0);
  } else {
  }
  if ((unsigned int )keybuf[2] == 255U) {
    return (0);
  } else {
  }
  keybuf[2] = (unsigned int )keybuf[2] & 127U;
  keybuf[3] = (unsigned int )keybuf[3] | 128U;
  *protocol = 0;
  *scancode = (u32 )((((int )keybuf[3] | ((int )keybuf[2] << 8)) | ((int )keybuf[1] << 16)) | ((int )keybuf[0] << 24));
  *toggle = 0U;
  return (1);
}
}
static int ivtv_i2c_new_ir(struct ivtv *itv , u32 hw , char const *type , u8 addr )
{
  struct i2c_board_info info ;
  struct i2c_adapter *adap ;
  struct IR_i2c_init_data *init_data ;
  unsigned short addr_list[2U] ;
  struct i2c_client *tmp ;
  struct i2c_client *tmp___0 ;
  {
  adap = & itv->i2c_adap;
  init_data = & itv->ir_i2c_init_data;
  addr_list[0] = (unsigned short )addr;
  addr_list[1] = 65534U;
  if ((hw & 524288U) != 0U) {
    if ((itv->hw_flags & 524288U) != 0U) {
      return (-1);
    } else {
    }
    memset((void *)(& info), 0, 64UL);
    strlcpy((char *)(& info.type), type, 20UL);
    tmp = i2c_new_probed_device(adap, & info, (unsigned short const *)(& addr_list),
                                (int (*)(struct i2c_adapter * , unsigned short ))0);
    return ((unsigned long )tmp == (unsigned long )((struct i2c_client *)0) ? -1 : 0);
  } else {
  }
  if ((itv->hw_flags & 3604480U) != 0U) {
    return (-1);
  } else {
  }
  switch (hw) {
  case 65536U:
  init_data->ir_codes = (char *)"rc-avermedia-cardbus";
  init_data->internal_get_key_func = 6;
  init_data->type = 2ULL;
  init_data->name = "AVerMedia AVerTV card";
  goto ldv_39133;
  case 131072U: ;
  case 262144U:
  init_data->ir_codes = (char *)"rc-hauppauge";
  init_data->internal_get_key_func = 2;
  init_data->type = 8ULL;
  init_data->name = itv->card_name;
  goto ldv_39133;
  case 1048576U:
  init_data->ir_codes = (char *)"rc-hauppauge";
  init_data->internal_get_key_func = 5;
  init_data->type = 8ULL;
  init_data->name = itv->card_name;
  goto ldv_39133;
  case 2097152U:
  init_data->get_key = & get_key_adaptec;
  init_data->name = itv->card_name;
  init_data->ir_codes = (char *)"rc-empty";
  init_data->type = 1ULL;
  goto ldv_39133;
  }
  ldv_39133:
  memset((void *)(& info), 0, 64UL);
  info.platform_data = (void *)init_data;
  strlcpy((char *)(& info.type), type, 20UL);
  tmp___0 = i2c_new_probed_device(adap, & info, (unsigned short const *)(& addr_list),
                                  (int (*)(struct i2c_adapter * , unsigned short ))0);
  return ((unsigned long )tmp___0 == (unsigned long )((struct i2c_client *)0) ? -1 : 0);
}
}
struct i2c_client *ivtv_i2c_new_ir_legacy(struct ivtv *itv )
{
  struct i2c_board_info info ;
  unsigned short addr_list[3U] ;
  struct i2c_client *tmp ;
  {
  addr_list[0] = 26U;
  addr_list[1] = 24U;
  addr_list[2] = 65534U;
  memset((void *)(& info), 0, 64UL);
  strlcpy((char *)(& info.type), "ir_video", 20UL);
  tmp = i2c_new_probed_device(& itv->i2c_adap, & info, (unsigned short const *)(& addr_list),
                              (int (*)(struct i2c_adapter * , unsigned short ))0);
  return (tmp);
}
}
int ivtv_i2c_register(struct ivtv *itv , unsigned int idx )
{
  struct v4l2_subdev *sd ;
  struct i2c_adapter *adap ;
  char const *type ;
  u32 hw ;
  int tmp ;
  unsigned short __constr_expr_0[2] ;
  struct cx25840_platform_data pdata ;
  struct i2c_board_info cx25840_info ;
  unsigned int tmp___0 ;
  {
  adap = & itv->i2c_adap;
  type = hw_devicenames[idx];
  hw = (u32 )(1 << (int )idx);
  if (hw == 16U) {
    sd = v4l2_i2c_new_subdev(& itv->v4l2_dev, adap, type, 0, (unsigned short const *)(& (itv->card_i2c)->radio));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = (u32 )(1 << (int )idx);
    } else {
    }
    sd = v4l2_i2c_new_subdev(& itv->v4l2_dev, adap, type, 0, (unsigned short const *)(& (itv->card_i2c)->demod));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = (u32 )(1 << (int )idx);
    } else {
    }
    sd = v4l2_i2c_new_subdev(& itv->v4l2_dev, adap, type, 0, (unsigned short const *)(& (itv->card_i2c)->tv));
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      sd->grp_id = (u32 )(1 << (int )idx);
    } else {
    }
    return ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0) ? 0 : -1);
  } else {
  }
  if ((hw & 4128768U) != 0U) {
    tmp = ivtv_i2c_new_ir(itv, hw, type, (int )hw_addrs[idx]);
    return (tmp);
  } else {
  }
  if ((unsigned int )((unsigned char )hw_addrs[idx]) == 0U) {
    return (-1);
  } else {
  }
  if (hw == 512U || hw == 1024U) {
    __constr_expr_0[0] = (unsigned short )hw_addrs[idx];
    __constr_expr_0[1] = 65534U;
    sd = v4l2_i2c_new_subdev(& itv->v4l2_dev, adap, type, 0, (unsigned short const *)(& __constr_expr_0));
  } else
  if (hw == 1U) {
    cx25840_info.type[0] = 'c';
    cx25840_info.type[1] = 'x';
    cx25840_info.type[2] = '2';
    cx25840_info.type[3] = '5';
    cx25840_info.type[4] = '8';
    cx25840_info.type[5] = '4';
    cx25840_info.type[6] = '0';
    cx25840_info.type[7] = '\000';
    tmp___0 = 8U;
    while (1) {
      if (tmp___0 >= 20U) {
        break;
      } else {
      }
      cx25840_info.type[tmp___0] = (char)0;
      tmp___0 = tmp___0 + 1U;
    }
    cx25840_info.flags = (unsigned short)0;
    cx25840_info.addr = (unsigned short )hw_addrs[idx];
    cx25840_info.platform_data = (void *)(& pdata);
    cx25840_info.archdata = 0;
    cx25840_info.of_node = 0;
    cx25840_info.fwnode = 0;
    cx25840_info.irq = 0;
    pdata.pvr150_workaround = (int )itv->pvr150_workaround;
    sd = v4l2_i2c_new_subdev_board(& itv->v4l2_dev, adap, & cx25840_info, (unsigned short const *)0U);
  } else {
    sd = v4l2_i2c_new_subdev(& itv->v4l2_dev, adap, type, (int )hw_addrs[idx], (unsigned short const *)0U);
  }
  if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
    sd->grp_id = (u32 )(1 << (int )idx);
  } else {
  }
  return ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0) ? 0 : -1);
}
}
struct v4l2_subdev *ivtv_find_hw(struct ivtv *itv , u32 hw )
{
  struct v4l2_subdev *result ;
  struct v4l2_subdev *sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  result = (struct v4l2_subdev *)0;
  spin_lock(& itv->v4l2_dev.lock);
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39166;
  ldv_39165: ;
  if (sd->grp_id == hw) {
    result = sd;
    goto ldv_39164;
  } else {
  }
  __mptr___0 = (struct list_head const *)sd->list.next;
  sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39166: ;
  if ((unsigned long )(& sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39165;
  } else {
  }
  ldv_39164:
  spin_unlock(& itv->v4l2_dev.lock);
  return (result);
}
}
static void ivtv_setscl(struct ivtv *itv , int state )
{
  {
  writel((unsigned int )(~ state), itv->reg_mem + 28672UL);
  return;
}
}
static void ivtv_setsda(struct ivtv *itv , int state )
{
  {
  writel((state & 1) == 0, itv->reg_mem + 28676UL);
  return;
}
}
static int ivtv_getscl(struct ivtv *itv )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)itv->reg_mem + 28680U);
  return ((int )tmp & 1);
}
}
static int ivtv_getsda(struct ivtv *itv )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)itv->reg_mem + 28684U);
  return ((int )tmp & 1);
}
}
static void ivtv_scldelay(struct ivtv *itv )
{
  int i ;
  {
  i = 0;
  goto ldv_39186;
  ldv_39185:
  ivtv_getscl(itv);
  i = i + 1;
  ldv_39186: ;
  if (i <= 4) {
    goto ldv_39185;
  } else {
  }
  return;
}
}
static int ivtv_waitscl(struct ivtv *itv , int val )
{
  int i ;
  int tmp ;
  {
  ivtv_scldelay(itv);
  i = 0;
  goto ldv_39194;
  ldv_39193:
  tmp = ivtv_getscl(itv);
  if (tmp == val) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_39194: ;
  if (i <= 999) {
    goto ldv_39193;
  } else {
  }
  return (0);
}
}
static int ivtv_waitsda(struct ivtv *itv , int val )
{
  int i ;
  int tmp ;
  {
  ivtv_scldelay(itv);
  i = 0;
  goto ldv_39202;
  ldv_39201:
  tmp = ivtv_getsda(itv);
  if (tmp == val) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_39202: ;
  if (i <= 999) {
    goto ldv_39201;
  } else {
  }
  return (0);
}
}
static int ivtv_ack(struct ivtv *itv )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret = 0;
  tmp___0 = ivtv_getscl(itv);
  if (tmp___0 == 1) {
    if ((ivtv_debug & 512) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  i2c: SCL was high starting an ack\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ivtv_setscl(itv, 0);
    tmp = ivtv_waitscl(itv, 0);
    if (tmp == 0) {
      if ((ivtv_debug & 512) != 0) {
        printk("\016%s:  i2c: Could not set SCL low starting an ack\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (-121);
    } else {
    }
  } else {
  }
  ivtv_setsda(itv, 1);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 1);
  tmp___1 = ivtv_waitsda(itv, 0);
  if (tmp___1 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Slave did not ack\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ret = -121;
  } else {
  }
  ivtv_setscl(itv, 0);
  tmp___2 = ivtv_waitscl(itv, 0);
  if (tmp___2 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Failed to set SCL low after ACK\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ret = -121;
  } else {
  }
  return (ret);
}
}
static int ivtv_sendbyte(struct ivtv *itv , unsigned char byte )
{
  int i ;
  int bit ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((ivtv_debug & 512) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  i2c: write %x\n", (char *)(& itv->v4l2_dev.name), (int )byte);
  } else {
  }
  i = 0;
  goto ldv_39215;
  ldv_39214:
  ivtv_setscl(itv, 0);
  tmp = ivtv_waitscl(itv, 0);
  if (tmp == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Error setting SCL low\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  bit = ((int )byte >> 7) & 1;
  ivtv_setsda(itv, bit);
  tmp___0 = ivtv_waitsda(itv, bit);
  if (tmp___0 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Error setting SDA\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  ivtv_setscl(itv, 1);
  tmp___1 = ivtv_waitscl(itv, 1);
  if (tmp___1 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Slave not ready for bit\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  i = i + 1;
  byte = (int )byte << 1U;
  ldv_39215: ;
  if (i <= 7) {
    goto ldv_39214;
  } else {
  }
  ivtv_setscl(itv, 0);
  tmp___2 = ivtv_waitscl(itv, 0);
  if (tmp___2 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Error setting SCL low\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  tmp___3 = ivtv_ack(itv);
  return (tmp___3);
}
}
static int ivtv_readbyte(struct ivtv *itv , unsigned char *byte , int nack )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  *byte = 0U;
  ivtv_setsda(itv, 1);
  ivtv_scldelay(itv);
  i = 0;
  goto ldv_39224;
  ldv_39223:
  ivtv_setscl(itv, 0);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 1);
  tmp = ivtv_waitscl(itv, 1);
  if (tmp == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: Error setting SCL high\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  tmp___0 = ivtv_getsda(itv);
  *byte = (unsigned char )((int )((signed char )((int )*byte << 1)) | (int )((signed char )tmp___0));
  i = i + 1;
  ldv_39224: ;
  if (i <= 7) {
    goto ldv_39223;
  } else {
  }
  ivtv_setscl(itv, 0);
  ivtv_scldelay(itv);
  ivtv_setsda(itv, nack);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 1);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 0);
  ivtv_scldelay(itv);
  if ((ivtv_debug & 512) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  i2c: read %x\n", (char *)(& itv->v4l2_dev.name), (int )*byte);
  } else {
  }
  return (0);
}
}
static int ivtv_start(struct ivtv *itv )
{
  int sda ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  sda = ivtv_getsda(itv);
  if (sda != 1) {
    if ((ivtv_debug & 512) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  i2c: SDA was low at start\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ivtv_setsda(itv, 1);
    tmp = ivtv_waitsda(itv, 1);
    if (tmp == 0) {
      if ((ivtv_debug & 512) != 0) {
        printk("\016%s:  i2c: SDA stuck low\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (-121);
    } else {
    }
  } else {
  }
  tmp___1 = ivtv_getscl(itv);
  if (tmp___1 != 1) {
    ivtv_setscl(itv, 1);
    tmp___0 = ivtv_waitscl(itv, 1);
    if (tmp___0 == 0) {
      if ((ivtv_debug & 512) != 0) {
        printk("\016%s:  i2c: SCL stuck low at start\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
      return (-121);
    } else {
    }
  } else {
  }
  ivtv_setsda(itv, 0);
  ivtv_scldelay(itv);
  return (0);
}
}
static int ivtv_stop(struct ivtv *itv )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___0 = ivtv_getscl(itv);
  if (tmp___0 != 0) {
    if ((ivtv_debug & 512) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  i2c: SCL not low when stopping\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    ivtv_setscl(itv, 0);
    tmp = ivtv_waitscl(itv, 0);
    if (tmp == 0) {
      if ((ivtv_debug & 512) != 0) {
        printk("\016%s:  i2c: SCL could not be set low\n", (char *)(& itv->v4l2_dev.name));
      } else {
      }
    } else {
    }
  } else {
  }
  ivtv_setsda(itv, 0);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 1);
  tmp___1 = ivtv_waitscl(itv, 1);
  if (tmp___1 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: SCL could not be set high\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-121);
  } else {
  }
  ivtv_scldelay(itv);
  ivtv_setsda(itv, 1);
  tmp___2 = ivtv_waitsda(itv, 1);
  if (tmp___2 == 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: resetting I2C\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    i = 0;
    goto ldv_39235;
    ldv_39234:
    ivtv_setscl(itv, 0);
    ivtv_scldelay(itv);
    ivtv_setscl(itv, 1);
    ivtv_scldelay(itv);
    ivtv_setsda(itv, 1);
    i = i + 1;
    ldv_39235: ;
    if (i <= 15) {
      goto ldv_39234;
    } else {
    }
    ivtv_waitsda(itv, 1);
    return (-121);
  } else {
  }
  return (0);
}
}
static int ivtv_write___0(struct ivtv *itv , unsigned char addr , unsigned char *data ,
                          u32 len , int do_stop )
{
  int retry ;
  int ret ;
  u32 i ;
  {
  ret = -121;
  retry = 0;
  goto ldv_39251;
  ldv_39250:
  ret = ivtv_start(itv);
  if (ret == 0) {
    ret = ivtv_sendbyte(itv, (int )addr << 1U);
    i = 0U;
    goto ldv_39248;
    ldv_39247:
    ret = ivtv_sendbyte(itv, (int )*(data + (unsigned long )i));
    i = i + 1U;
    ldv_39248: ;
    if (ret == 0 && i < len) {
      goto ldv_39247;
    } else {
    }
  } else {
  }
  if (ret != 0 || do_stop != 0) {
    ivtv_stop(itv);
  } else {
  }
  retry = retry + 1;
  ldv_39251: ;
  if (ret != 0 && retry <= 7) {
    goto ldv_39250;
  } else {
  }
  if (ret != 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: i2c write to %x failed\n", (char *)(& itv->v4l2_dev.name),
             (int )addr);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int ivtv_read___0(struct ivtv *itv , unsigned char addr , unsigned char *data ,
                         u32 len )
{
  int retry ;
  int ret ;
  u32 i ;
  {
  ret = -121;
  retry = 0;
  goto ldv_39266;
  ldv_39265:
  ret = ivtv_start(itv);
  if (ret == 0) {
    ret = ivtv_sendbyte(itv, (int )((unsigned char )((int )((signed char )((int )addr << 1)) | 1)));
  } else {
  }
  i = 0U;
  goto ldv_39263;
  ldv_39262:
  ret = ivtv_readbyte(itv, data + (unsigned long )i, len - 1U == i);
  i = i + 1U;
  ldv_39263: ;
  if (ret == 0 && i < len) {
    goto ldv_39262;
  } else {
  }
  ivtv_stop(itv);
  retry = retry + 1;
  ldv_39266: ;
  if (ret != 0 && retry <= 7) {
    goto ldv_39265;
  } else {
  }
  if (ret != 0) {
    if ((ivtv_debug & 512) != 0) {
      printk("\016%s:  i2c: i2c read from %x failed\n", (char *)(& itv->v4l2_dev.name),
             (int )addr);
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int ivtv_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct v4l2_device *v4l2_dev ;
  void *tmp ;
  struct ivtv *itv ;
  struct ivtv *tmp___0 ;
  int retval ;
  int i ;
  int stop ;
  {
  tmp = i2c_get_adapdata((struct i2c_adapter const *)i2c_adap);
  v4l2_dev = (struct v4l2_device *)tmp;
  tmp___0 = to_ivtv(v4l2_dev);
  itv = tmp___0;
  mutex_lock_nested(& itv->i2c_bus_lock, 0U);
  retval = 0;
  i = retval;
  goto ldv_39279;
  ldv_39278: ;
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    retval = ivtv_read___0(itv, (int )((unsigned char )(msgs + (unsigned long )i)->addr),
                           (msgs + (unsigned long )i)->buf, (u32 )(msgs + (unsigned long )i)->len);
  } else {
    stop = i + 1 >= num || (unsigned int )(msgs + ((unsigned long )i + 1UL))->flags != 1U;
    retval = ivtv_write___0(itv, (int )((unsigned char )(msgs + (unsigned long )i)->addr),
                            (msgs + (unsigned long )i)->buf, (u32 )(msgs + (unsigned long )i)->len,
                            stop);
  }
  i = i + 1;
  ldv_39279: ;
  if (retval == 0 && i < num) {
    goto ldv_39278;
  } else {
  }
  mutex_unlock(& itv->i2c_bus_lock);
  return (retval != 0 ? retval : num);
}
}
static u32 ivtv_functionality(struct i2c_adapter *adap )
{
  {
  return (251592713U);
}
}
static struct i2c_algorithm ivtv_algo = {& ivtv_xfer, 0, & ivtv_functionality, 0, 0};
static struct i2c_adapter ivtv_i2c_adap_hw_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& ivtv_algo), (void *)0,
    {{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {0}, 0, 0, 0, 0, 0, 0, 0}, 0, 0,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
     0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0,
                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                  {0, 0}, {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                 0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, 0, {0},
                  {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0, 0, 0,
                  0UL, 0UL, 0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL, 0, {0, 0},
     0, 0, {0, 0}, 0, 0, 0U, 0U, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'i', 'v', 't', 'v',
                                                              ' ', 'i', '2', 'c',
                                                              ' ', 'd', 'r', 'i',
                                                              'v', 'e', 'r', '\000'},
    {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                     {0, 0}, 0, 0,
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, {0,
                                                                                 0},
    0, 0};
static void ivtv_setscl_old(void *data , int state )
{
  struct ivtv *itv ;
  {
  itv = (struct ivtv *)data;
  if (state != 0) {
    itv->i2c_state = itv->i2c_state | 1;
  } else {
    itv->i2c_state = itv->i2c_state & -2;
  }
  writel((unsigned int )(~ itv->i2c_state), itv->reg_mem + 28672UL);
  return;
}
}
static void ivtv_setsda_old(void *data , int state )
{
  struct ivtv *itv ;
  {
  itv = (struct ivtv *)data;
  if (state != 0) {
    itv->i2c_state = itv->i2c_state | 1;
  } else {
    itv->i2c_state = itv->i2c_state & -2;
  }
  writel((unsigned int )(~ itv->i2c_state), itv->reg_mem + 28676UL);
  return;
}
}
static int ivtv_getscl_old(void *data )
{
  struct ivtv *itv ;
  unsigned int tmp ;
  {
  itv = (struct ivtv *)data;
  tmp = readl((void const volatile *)itv->reg_mem + 28680U);
  return ((int )tmp & 1);
}
}
static int ivtv_getsda_old(void *data )
{
  struct ivtv *itv ;
  unsigned int tmp ;
  {
  itv = (struct ivtv *)data;
  tmp = readl((void const volatile *)itv->reg_mem + 28684U);
  return ((int )tmp & 1);
}
}
static struct i2c_adapter ivtv_i2c_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)0, (void *)0, {{{{0}}, 0U,
                                                                         0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                                                                        {0}, 0, 0,
                                                                        0, 0, 0, 0,
                                                                        0}, 0, 0,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0,
                                                                               (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
     0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0,
                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0}}, 0U, 0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                  {0, 0}, {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                 0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0,
                                                                             (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, 0, {0},
                  {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0, 0, 0,
                  0UL, 0UL, 0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL, 0, {0, 0},
     0, 0, {0, 0}, 0, 0, 0U, 0U, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'i', 'v', 't', 'v',
                                                              ' ', 'i', '2', 'c',
                                                              ' ', 'd', 'r', 'i',
                                                              'v', 'e', 'r', '\000'},
    {0U, {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                     {0, 0}, 0, 0,
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, {0,
                                                                                 0},
    0, 0};
static struct i2c_algo_bit_data const ivtv_i2c_algo_template =
     {0, & ivtv_setsda_old, & ivtv_setscl_old, & ivtv_getsda_old, & ivtv_getscl_old,
    0, 0, 10, 500};
static struct i2c_client ivtv_i2c_client_template =
     {(unsigned short)0, (unsigned short)0, {'i', 'v', 't', 'v', ' ', 'i', 'n', 't',
                                           'e', 'r', 'n', 'a', 'l', '\000'}, 0, {0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0}},
                                                                                  {{{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0UL,
                                                                                    0U,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0,
                                                                                   0},
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0},
                                                                                 0,
                                                                                 0,
                                                                                 {{0},
                                                                                  {{{{{0}},
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
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {{0},
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  {{{{{0}},
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
                                                                                   0},
                                                                                  {0U,
                                                                                   {{{{{{0}},
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
                                                                                     0}}},
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  {{0,
                                                                                    0},
                                                                                   0UL,
                                                                                   0,
                                                                                   0UL,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {(char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0},
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0UL,
                                                                                  {{0L},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  {{{{{{0}},
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
                                                                                    0}},
                                                                                  0,
                                                                                  {0},
                                                                                  {0},
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0ULL,
                                                                                 0UL,
                                                                                 0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0U,
                                                                                 0U,
                                                                                 {{{{{0}},
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
                                                                                  0},
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  {{0}}},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0},
    0, {0, 0}, 0};
int init_ivtv_i2c(struct ivtv *itv )
{
  int retval ;
  size_t tmp ;
  {
  if ((ivtv_debug & 512) != 0) {
    printk("\016%s:  i2c: i2c init\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (itv->options.newi2c > 0) {
    itv->i2c_adap = ivtv_i2c_adap_hw_template;
  } else {
    itv->i2c_adap = ivtv_i2c_adap_template;
    itv->i2c_algo = ivtv_i2c_algo_template;
  }
  itv->i2c_algo.udelay = itv->options.i2c_clock_period / 2;
  itv->i2c_algo.data = (void *)itv;
  itv->i2c_adap.algo_data = (void *)(& itv->i2c_algo);
  tmp = strlen((char const *)(& itv->i2c_adap.name));
  sprintf((char *)(& itv->i2c_adap.name) + tmp, " #%d", (int )itv->instance);
  i2c_set_adapdata(& itv->i2c_adap, (void *)(& itv->v4l2_dev));
  itv->i2c_client = ivtv_i2c_client_template;
  itv->i2c_client.adapter = & itv->i2c_adap;
  itv->i2c_adap.dev.parent = & (itv->pdev)->dev;
  if ((ivtv_debug & 512) != 0) {
    printk("\016%s:  i2c: setting scl and sda to 1\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  ivtv_setscl(itv, 1);
  ivtv_setsda(itv, 1);
  if (itv->options.newi2c > 0) {
    retval = i2c_add_adapter(& itv->i2c_adap);
  } else {
    retval = i2c_bit_add_bus(& itv->i2c_adap);
  }
  return (retval);
}
}
void exit_ivtv_i2c(struct ivtv *itv )
{
  {
  if ((ivtv_debug & 512) != 0) {
    printk("\016%s:  i2c: i2c exit\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  i2c_del_adapter(& itv->i2c_adap);
  return;
}
}
void ldv_initialize_i2c_algorithm_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1936UL);
  ivtv_algo_group0 = (struct i2c_adapter *)tmp;
  return;
}
}
void ldv_main_exported_8(void)
{
  int ldvarg109 ;
  int ldvarg107 ;
  void *ldvarg106 ;
  void *tmp ;
  void *ldvarg108 ;
  void *tmp___0 ;
  void *ldvarg110 ;
  void *tmp___1 ;
  void *ldvarg111 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg106 = tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg108 = tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg110 = tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg111 = tmp___2;
  ldv_memset((void *)(& ldvarg109), 0, 4UL);
  ldv_memset((void *)(& ldvarg107), 0, 4UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    ivtv_getscl_old(ldvarg111);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_39331;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    ivtv_getsda_old(ldvarg110);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_39331;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    ivtv_setsda_old(ldvarg108, ldvarg109);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_39331;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    ivtv_setscl_old(ldvarg106, ldvarg107);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_39331;
  default:
  ldv_stop();
  }
  ldv_39331: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  int ldvarg100 ;
  struct i2c_msg *ldvarg101 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg101 = (struct i2c_msg *)tmp;
  ldv_memset((void *)(& ldvarg100), 0, 4UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    ivtv_xfer(ivtv_algo_group0, ldvarg101, ldvarg100);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_39342;
  case 1: ;
  if (ldv_state_variable_9 == 1) {
    ivtv_functionality(ivtv_algo_group0);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_39342;
  default:
  ldv_stop();
  }
  ldv_39342: ;
  return;
}
}
bool ldv_queue_work_on_117(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_118(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_119(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_120(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_121(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_131(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_133(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_132(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_135(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_134(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static int signal_pending___1(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
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
extern struct v4l2_subscribed_event_ops const v4l2_ctrl_sub_ev_ops ;
int ivtv_passthrough_mode(struct ivtv *itv , int enable ) ;
int ivtv_yuv_prep_frame(struct ivtv *itv , struct ivtv_dma_frame *args ) ;
u16 ivtv_service2vbi(int type ) ;
void ivtv_set_funcs(struct video_device *vdev ) ;
extern int v4l2_event_subscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ,
                                unsigned int , struct v4l2_subscribed_event_ops const * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
u16 ivtv_service2vbi(int type )
{
  {
  switch (type) {
  case 1: ;
  return (1U);
  case 4096: ;
  return (4U);
  case 16384: ;
  return (5U);
  case 1024: ;
  return (7U);
  default: ;
  return (0U);
  }
}
}
static int valid_service_line(int field , int line , int is_pal )
{
  {
  return (((is_pal != 0 && line > 5) && (line != 23 || field == 0)) || ((is_pal == 0 && line > 9) && line <= 21));
}
}
static u16 select_service_from_set(int field , int line , u16 set , int is_pal )
{
  u16 valid_set ;
  int i ;
  int tmp ;
  {
  valid_set = is_pal != 0 ? 17409U : 4096U;
  set = (u16 )((int )set & (int )valid_set);
  if ((unsigned int )set == 0U) {
    return (0U);
  } else {
    tmp = valid_service_line(field, line, is_pal);
    if (tmp == 0) {
      return (0U);
    } else {
    }
  }
  if (is_pal == 0) {
    if (line == 21 && ((int )set & 4096) != 0) {
      return (4096U);
    } else {
    }
  } else {
    if ((line == 16 && field == 0) && ((int )set & 1024) != 0) {
      return (1024U);
    } else {
    }
    if ((line == 23 && field == 0) && ((int )set & 16384) != 0) {
      return (16384U);
    } else {
    }
    if (line == 23) {
      return (0U);
    } else {
    }
  }
  i = 0;
  goto ldv_41992;
  ldv_41991: ;
  if (((int )set >> i) & 1) {
    return ((u16 )(1 << i));
  } else {
  }
  i = i + 1;
  ldv_41992: ;
  if (i <= 31) {
    goto ldv_41991;
  } else {
  }
  return (0U);
}
}
void ivtv_expand_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal )
{
  u16 set ;
  int f ;
  int l ;
  {
  set = fmt->service_set;
  fmt->service_set = 0U;
  f = 0;
  goto ldv_42005;
  ldv_42004:
  l = 0;
  goto ldv_42002;
  ldv_42001:
  fmt->service_lines[f][l] = select_service_from_set(f, l, (int )set, is_pal);
  l = l + 1;
  ldv_42002: ;
  if (l <= 23) {
    goto ldv_42001;
  } else {
  }
  f = f + 1;
  ldv_42005: ;
  if (f <= 1) {
    goto ldv_42004;
  } else {
  }
  return;
}
}
static void check_service_set(struct v4l2_sliced_vbi_format *fmt , int is_pal )
{
  int f ;
  int l ;
  {
  f = 0;
  goto ldv_42017;
  ldv_42016:
  l = 0;
  goto ldv_42014;
  ldv_42013:
  fmt->service_lines[f][l] = select_service_from_set(f, l, (int )fmt->service_lines[f][l],
                                                     is_pal);
  l = l + 1;
  ldv_42014: ;
  if (l <= 23) {
    goto ldv_42013;
  } else {
  }
  f = f + 1;
  ldv_42017: ;
  if (f <= 1) {
    goto ldv_42016;
  } else {
  }
  return;
}
}
u16 ivtv_get_service_set(struct v4l2_sliced_vbi_format *fmt )
{
  int f ;
  int l ;
  u16 set ;
  {
  set = 0U;
  f = 0;
  goto ldv_42029;
  ldv_42028:
  l = 0;
  goto ldv_42026;
  ldv_42025:
  set = (u16 )((int )fmt->service_lines[f][l] | (int )set);
  l = l + 1;
  ldv_42026: ;
  if (l <= 23) {
    goto ldv_42025;
  } else {
  }
  f = f + 1;
  ldv_42029: ;
  if (f <= 1) {
    goto ldv_42028;
  } else {
  }
  return (set);
}
}
void ivtv_set_osd_alpha(struct ivtv *itv )
{
  {
  ivtv_vapi(itv, 75, 3, itv->osd_global_alpha_state, (int )itv->osd_global_alpha,
            itv->osd_local_alpha_state == 0);
  ivtv_vapi(itv, 96, 2, itv->osd_chroma_key_state, itv->osd_chroma_key);
  return;
}
}
int ivtv_set_speed(struct ivtv *itv , int speed )
{
  u32 data[16U] ;
  int single_step ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  s32 tmp___0 ;
  int got_sig ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  single_step = speed == 1 || speed == -1;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  if (speed == 0) {
    speed = 1000;
  } else {
  }
  if (itv->speed == speed && single_step == 0) {
    return (0);
  } else {
  }
  if (single_step != 0 && (speed >= 0) ^ (itv->speed < 0)) {
    ivtv_vapi(itv, 5, 1, 0);
    itv->speed = speed;
    return (0);
  } else {
  }
  if (single_step != 0) {
    speed = speed < 0 ? -1000 : 1000;
  } else {
  }
  data[0] = speed > 1000 || speed < -1000 ? 2147483648U : 0U;
  data[0] = data[0] | (speed > 1000 || speed < -1500 ? 1073741824U : 0U);
  data[1] = speed < 0;
  data[2] = speed < 0 ? 3U : 7U;
  tmp___0 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField93.video_b_frames);
  data[3] = (u32 )tmp___0;
  data[4] = speed == 1500 || speed == 500 ? (u32 )itv->speed_mute_audio : 0U;
  data[5] = 0U;
  data[6] = 0U;
  if (speed == 1500 || speed == -1500) {
    data[0] = data[0] | 1U;
  } else
  if (speed == 2000 || speed == -2000) {
    data[0] = data[0] | 2U;
  } else
  if (speed >= -999 && speed < 0) {
    data[0] = data[0] | (u32 )(-1000 / speed);
  } else
  if (speed <= 999 && speed > 0) {
    data[0] = data[0] | (u32 )(1000 / speed);
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___3 > 0) {
    got_sig = 0;
    ivtv_vapi(itv, 13, 1, 0);
    mutex_unlock(& itv->serialize_lock);
    prepare_to_wait(& itv->dma_waitq, & wait, 1);
    goto ldv_42044;
    ldv_42043:
    tmp___1 = get_current();
    got_sig = signal_pending___1(tmp___1);
    if (got_sig != 0) {
      goto ldv_42042;
    } else {
    }
    got_sig = 0;
    schedule();
    ldv_42044:
    tmp___2 = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___2 != 0) {
      goto ldv_42043;
    } else {
    }
    ldv_42042:
    finish_wait(& itv->dma_waitq, & wait);
    mutex_lock_nested(& itv->serialize_lock, 0U);
    if (got_sig != 0) {
      return (-4);
    } else {
    }
    ivtv_api(itv, 3, 7, (u32 *)(& data));
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
             (char *)(& itv->v4l2_dev.name), data[0], data[1], data[2], data[3], data[4],
             data[5], data[6]);
    } else {
    }
  } else {
  }
  if (single_step != 0) {
    speed = speed < 0 ? -1 : 1;
    ivtv_vapi(itv, 5, 1, 0);
  } else {
  }
  itv->speed = speed;
  return (0);
}
}
static int ivtv_validate_speed(int cur_speed , int new_speed )
{
  int fact ;
  int s ;
  {
  fact = new_speed < 0 ? -1 : 1;
  if (cur_speed == 0) {
    cur_speed = 1000;
  } else {
  }
  if (new_speed < 0) {
    new_speed = - new_speed;
  } else {
  }
  if (cur_speed < 0) {
    cur_speed = - cur_speed;
  } else {
  }
  if (cur_speed <= new_speed) {
    if (new_speed > 1500) {
      return (fact * 2000);
    } else {
    }
    if (new_speed > 1000) {
      return (fact * 1500);
    } else {
    }
  } else {
    if (new_speed > 1999) {
      return (fact * 2000);
    } else {
    }
    if (new_speed > 1499) {
      return (fact * 1500);
    } else {
    }
    if (new_speed > 999) {
      return (fact * 1000);
    } else {
    }
  }
  if (new_speed == 0) {
    return (1000);
  } else {
  }
  if (new_speed == 1 || new_speed == 1000) {
    return (fact * new_speed);
  } else {
  }
  s = new_speed;
  new_speed = 1000 / new_speed;
  if (1000 / cur_speed == new_speed) {
    new_speed = (cur_speed < s ? -1 : 1) + new_speed;
  } else {
  }
  if (new_speed > 60) {
    return (1000 / (fact * 60));
  } else {
  }
  return (1000 / (fact * new_speed));
}
}
static int ivtv_video_command(struct ivtv *itv , struct ivtv_open_id *id , struct v4l2_decoder_cmd *dc ,
                              int try )
{
  struct ivtv_stream *s ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int speed ;
  int tmp___7 ;
  int tmp___8 ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + 5UL;
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  switch (dc->cmd) {
  case 0U:
  dc->flags = dc->flags & 1U;
  dc->__annonCompField85.start.speed = ivtv_validate_speed(itv->speed, dc->__annonCompField85.start.speed);
  if (dc->__annonCompField85.start.speed < 0) {
    dc->__annonCompField85.start.format = 1U;
  } else {
    dc->__annonCompField85.start.format = 0U;
  }
  if (dc->__annonCompField85.start.speed != 500 && dc->__annonCompField85.start.speed != 1500) {
    dc->flags = dc->__annonCompField85.start.speed != 1000;
  } else {
  }
  if (try != 0) {
    goto ldv_42059;
  } else {
  }
  itv->speed_mute_audio = (unsigned int )((u8 )dc->flags) & 1U;
  tmp = ivtv_set_output_mode(itv, 1);
  if (tmp != 1) {
    return (-16);
  } else {
  }
  tmp___0 = test_and_clear_bit(20L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___0 != 0) {
    itv->speed = 0;
  } else {
  }
  tmp___1 = ivtv_start_decoding(id, dc->__annonCompField85.start.speed);
  return (tmp___1);
  case 1U:
  dc->flags = dc->flags & 3U;
  if ((dc->flags & 2U) != 0U) {
    dc->__annonCompField85.stop.pts = 0ULL;
  } else {
  }
  if (try != 0) {
    goto ldv_42059;
  } else {
  }
  tmp___2 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___2 == 0) {
    return (0);
  } else {
  }
  if (itv->output_mode != 1) {
    return (-16);
  } else {
  }
  itv->output_mode = 0;
  tmp___3 = ivtv_stop_v4l2_decode_stream(s, (int )dc->flags, dc->__annonCompField85.stop.pts);
  return (tmp___3);
  case 2U:
  dc->flags = dc->flags & 1U;
  if (try != 0) {
    goto ldv_42059;
  } else {
  }
  tmp___4 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___4 == 0) {
    return (-1);
  } else {
  }
  if (itv->output_mode != 1) {
    return (-16);
  } else {
  }
  tmp___5 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___5 > 0) {
    ivtv_vapi(itv, 13, 1, (int )dc->flags & 1);
    set_bit(20L, (unsigned long volatile *)(& itv->i_flags));
  } else {
  }
  goto ldv_42059;
  case 3U:
  dc->flags = 0U;
  if (try != 0) {
    goto ldv_42059;
  } else {
  }
  tmp___6 = atomic_read((atomic_t const *)(& itv->decoding));
  if (tmp___6 == 0) {
    return (-1);
  } else {
  }
  if (itv->output_mode != 1) {
    return (-16);
  } else {
  }
  tmp___8 = test_and_clear_bit(20L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___8 != 0) {
    speed = itv->speed;
    itv->speed = 0;
    tmp___7 = ivtv_start_decoding(id, speed);
    return (tmp___7);
  } else {
  }
  goto ldv_42059;
  default: ;
  return (-22);
  }
  ldv_42059: ;
  return (0);
}
}
static int ivtv_g_fmt_sliced_vbi_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct v4l2_sliced_vbi_format *vbifmt ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  vbifmt = & fmt->fmt.sliced;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  if ((itv->v4l2_cap & 128U) == 0U) {
    return (-22);
  } else {
  }
  vbifmt->io_size = 2304U;
  memset((void *)(& vbifmt->service_lines), 0, 96UL);
  if ((unsigned int )itv->is_60hz != 0U) {
    vbifmt->service_lines[0][21] = 4096U;
    vbifmt->service_lines[1][21] = 4096U;
  } else {
    vbifmt->service_lines[0][23] = 16384U;
    vbifmt->service_lines[0][16] = 1024U;
  }
  vbifmt->service_set = ivtv_get_service_set(vbifmt);
  return (0);
}
}
static int ivtv_g_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct v4l2_pix_format *pixfmt ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  pixfmt = & fmt->fmt.pix;
  pixfmt->width = (__u32 )itv->cxhdl.width;
  pixfmt->height = (__u32 )itv->cxhdl.height;
  pixfmt->colorspace = 1U;
  pixfmt->field = 4U;
  if (id->type == 1) {
    pixfmt->pixelformat = 842091848U;
    pixfmt->sizeimage = (pixfmt->height * 2160U) / 2U;
    pixfmt->bytesperline = 720U;
  } else {
    pixfmt->pixelformat = 1195724877U;
    pixfmt->sizeimage = 131072U;
    pixfmt->bytesperline = 0U;
  }
  return (0);
}
}
static int ivtv_g_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct v4l2_vbi_format *vbifmt ;
  __u32 tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  vbifmt = & fmt->fmt.vbi;
  vbifmt->sampling_rate = 27000000U;
  vbifmt->offset = 248U;
  vbifmt->samples_per_line = itv->vbi.raw_decoder_line_size - 4U;
  vbifmt->sample_format = 1497715271U;
  vbifmt->start[0] = (__s32 )itv->vbi.start[0];
  vbifmt->start[1] = (__s32 )itv->vbi.start[1];
  tmp___0 = itv->vbi.count;
  vbifmt->count[1] = tmp___0;
  vbifmt->count[0] = tmp___0;
  vbifmt->flags = 0U;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  return (0);
}
}
static int ivtv_g_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct v4l2_sliced_vbi_format *vbifmt ;
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  {
  vbifmt = & fmt->fmt.sliced;
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  vbifmt->io_size = 2304U;
  if (id->type == 6) {
    vbifmt->service_set = (unsigned int )itv->is_50hz != 0U ? 17409U : 4096U;
    ivtv_expand_service_set(vbifmt, (int )itv->is_50hz);
    vbifmt->service_set = ivtv_get_service_set(vbifmt);
    return (0);
  } else {
  }
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->g_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                     struct v4l2_sliced_vbi_format * ))0)) {
      (*((((itv->sd_video)->ops)->vbi)->g_sliced_fmt))(itv->sd_video, vbifmt);
    } else {
    }
  } else {
  }
  vbifmt->service_set = ivtv_get_service_set(vbifmt);
  return (0);
}
}
static int ivtv_g_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct v4l2_pix_format *pixfmt ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  pixfmt = & fmt->fmt.pix;
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  pixfmt->width = itv->main_rect.width;
  pixfmt->height = itv->main_rect.height;
  pixfmt->colorspace = 1U;
  pixfmt->field = 4U;
  if (id->type == 8) {
    switch (itv->yuv_info.lace_mode & 3) {
    case 0:
    pixfmt->field = (itv->yuv_info.lace_mode & 4) != 0 ? 9U : 8U;
    goto ldv_42104;
    case 1:
    pixfmt->field = 1U;
    goto ldv_42104;
    default:
    pixfmt->field = 0U;
    goto ldv_42104;
    }
    ldv_42104:
    pixfmt->pixelformat = 842091848U;
    pixfmt->bytesperline = 720U;
    pixfmt->width = itv->yuv_info.v4l2_src_w;
    pixfmt->height = itv->yuv_info.v4l2_src_h;
    pixfmt->sizeimage = ((pixfmt->height + 31U) & 4294967264U) * 1080U;
  } else {
    pixfmt->pixelformat = 1195724877U;
    pixfmt->sizeimage = 131072U;
    pixfmt->bytesperline = 0U;
  }
  return (0);
}
}
static int ivtv_g_fmt_vid_out_overlay(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  struct v4l2_window *winfmt ;
  __s32 tmp___1 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  winfmt = & fmt->fmt.win;
  if ((s->caps & 512U) == 0U) {
    return (-22);
  } else {
  }
  if (itv->osd_video_pbase == 0UL) {
    return (-22);
  } else {
  }
  winfmt->chromakey = itv->osd_chroma_key;
  winfmt->global_alpha = itv->osd_global_alpha;
  winfmt->field = 4U;
  winfmt->clips = (struct v4l2_clip *)0;
  winfmt->clipcount = 0U;
  winfmt->bitmap = (void *)0;
  tmp___1 = 0;
  winfmt->w.left = tmp___1;
  winfmt->w.top = tmp___1;
  winfmt->w.width = itv->osd_rect.width;
  winfmt->w.height = itv->osd_rect.height;
  return (0);
}
}
static int ivtv_try_fmt_sliced_vbi_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  int tmp ;
  {
  tmp = ivtv_g_fmt_sliced_vbi_out(file, fh, fmt);
  return (tmp);
}
}
static int ivtv_try_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int w ;
  int h ;
  int min_h ;
  int _min1 ;
  int _min2 ;
  int _max1 ;
  int _max2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _max1___0 ;
  int _max2___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  w = (int )fmt->fmt.pix.width;
  h = (int )fmt->fmt.pix.height;
  min_h = 2;
  _min1 = w;
  _min2 = 720;
  w = _min1 < _min2 ? _min1 : _min2;
  _max1 = w;
  _max2 = 2;
  w = _max1 > _max2 ? _max1 : _max2;
  if (id->type == 1) {
    h = h & -32;
    min_h = 32;
  } else {
  }
  _min1___0 = h;
  _min2___0 = (unsigned int )itv->is_50hz != 0U ? 576 : 480;
  h = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _max1___0 = h;
  _max2___0 = min_h;
  h = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  ivtv_g_fmt_vid_cap(file, fh, fmt);
  fmt->fmt.pix.width = (__u32 )w;
  fmt->fmt.pix.height = (__u32 )h;
  return (0);
}
}
static int ivtv_try_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  int tmp ;
  {
  tmp = ivtv_g_fmt_vbi_cap(file, fh, fmt);
  return (tmp);
}
}
static int ivtv_try_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct v4l2_sliced_vbi_format *vbifmt ;
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int tmp___0 ;
  {
  vbifmt = & fmt->fmt.sliced;
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  if (id->type == 6) {
    tmp___0 = ivtv_g_fmt_sliced_vbi_cap(file, fh, fmt);
    return (tmp___0);
  } else {
  }
  vbifmt->io_size = 2304U;
  vbifmt->reserved[0] = 0U;
  vbifmt->reserved[1] = 0U;
  if ((unsigned int )vbifmt->service_set != 0U) {
    ivtv_expand_service_set(vbifmt, (int )itv->is_50hz);
  } else {
  }
  check_service_set(vbifmt, (int )itv->is_50hz);
  vbifmt->service_set = ivtv_get_service_set(vbifmt);
  return (0);
}
}
static int ivtv_try_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  s32 w ;
  s32 h ;
  int field ;
  int ret ;
  int tmp___0 ;
  s32 _min1 ;
  int _min2 ;
  s32 _max1 ;
  int _max2 ;
  s32 _min1___0 ;
  int _min2___0 ;
  s32 _max1___0 ;
  int _max2___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  w = (s32 )fmt->fmt.pix.width;
  h = (s32 )fmt->fmt.pix.height;
  field = (int )fmt->fmt.pix.field;
  tmp___0 = ivtv_g_fmt_vid_out(file, fh, fmt);
  ret = tmp___0;
  _min1 = w;
  _min2 = 720;
  w = _min1 < _min2 ? _min1 : _min2;
  _max1 = w;
  _max2 = 2;
  w = _max1 > _max2 ? _max1 : _max2;
  _min1___0 = h;
  _min2___0 = 576;
  h = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _max1___0 = h;
  _max2___0 = 2;
  h = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  if (id->type == 8) {
    fmt->fmt.pix.field = (__u32 )field;
  } else {
  }
  fmt->fmt.pix.width = (__u32 )w;
  fmt->fmt.pix.height = (__u32 )h;
  return (ret);
}
}
static int ivtv_try_fmt_vid_out_overlay(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  u32 chromakey ;
  u8 global_alpha ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  chromakey = fmt->fmt.win.chromakey;
  global_alpha = fmt->fmt.win.global_alpha;
  if ((s->caps & 512U) == 0U) {
    return (-22);
  } else {
  }
  if (itv->osd_video_pbase == 0UL) {
    return (-22);
  } else {
  }
  ivtv_g_fmt_vid_out_overlay(file, fh, fmt);
  fmt->fmt.win.chromakey = chromakey;
  fmt->fmt.win.global_alpha = global_alpha;
  return (0);
}
}
static int ivtv_s_fmt_sliced_vbi_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  int tmp ;
  {
  tmp = ivtv_g_fmt_sliced_vbi_out(file, fh, fmt);
  return (tmp);
}
}
static int ivtv_s_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct v4l2_subdev_format format ;
  int ret ;
  int tmp___0 ;
  int w ;
  int h ;
  int tmp___1 ;
  s32 tmp___2 ;
  int tmp___3 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  format.which = 1U;
  format.pad = 0U;
  format.format.width = 0U;
  format.format.height = 0U;
  format.format.code = 0U;
  format.format.field = 0U;
  format.format.colorspace = 0U;
  format.format.ycbcr_enc = (unsigned short)0;
  format.format.quantization = (unsigned short)0;
  format.format.xfer_func = (unsigned short)0;
  format.format.reserved[0] = (unsigned short)0;
  format.format.reserved[1] = (unsigned short)0;
  format.format.reserved[2] = (unsigned short)0;
  format.format.reserved[3] = (unsigned short)0;
  format.format.reserved[4] = (unsigned short)0;
  format.format.reserved[5] = (unsigned short)0;
  format.format.reserved[6] = (unsigned short)0;
  format.format.reserved[7] = (unsigned short)0;
  format.format.reserved[8] = (unsigned short)0;
  format.format.reserved[9] = (unsigned short)0;
  format.format.reserved[10] = (unsigned short)0;
  format.reserved[0] = 0U;
  format.reserved[1] = 0U;
  format.reserved[2] = 0U;
  format.reserved[3] = 0U;
  format.reserved[4] = 0U;
  format.reserved[5] = 0U;
  format.reserved[6] = 0U;
  format.reserved[7] = 0U;
  tmp___0 = ivtv_try_fmt_vid_cap(file, fh, fmt);
  ret = tmp___0;
  w = (int )fmt->fmt.pix.width;
  h = (int )fmt->fmt.pix.height;
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((int )itv->cxhdl.width == w && (int )itv->cxhdl.height == h) {
    return (0);
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___1 > 0) {
    return (-16);
  } else {
  }
  itv->cxhdl.width = (u16 )w;
  itv->cxhdl.height = (u16 )h;
  tmp___2 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField94.video_encoding);
  if (tmp___2 == 0) {
    fmt->fmt.pix.width = fmt->fmt.pix.width / 2U;
  } else {
  }
  format.format.width = fmt->fmt.pix.width;
  format.format.height = (__u32 )h;
  format.format.code = 1U;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                struct v4l2_subdev_pad_config * ,
                                                                                                                                                                                                                                struct v4l2_subdev_format * ))0)) {
      (*((((itv->sd_video)->ops)->pad)->set_fmt))(itv->sd_video, (struct v4l2_subdev_pad_config *)0,
                                                  & format);
    } else {
    }
  } else {
  }
  tmp___3 = ivtv_g_fmt_vid_cap(file, fh, fmt);
  return (tmp___3);
}
}
static int ivtv_s_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_raw_vbi((struct ivtv const *)itv);
  if (tmp___0 == 0) {
    tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___1 > 0) {
      return (-16);
    } else {
    }
  } else {
  }
  (itv->vbi.sliced_in)->service_set = 0U;
  itv->vbi.in.type = 4U;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->s_raw_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                  struct v4l2_vbi_format * ))0)) {
      (*((((itv->sd_video)->ops)->vbi)->s_raw_fmt))(itv->sd_video, & fmt->fmt.vbi);
    } else {
    }
  } else {
  }
  tmp___2 = ivtv_g_fmt_vbi_cap(file, fh, fmt);
  return (tmp___2);
}
}
static int ivtv_s_fmt_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct v4l2_sliced_vbi_format *vbifmt ;
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  vbifmt = & fmt->fmt.sliced;
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  tmp___0 = ivtv_try_fmt_sliced_vbi_cap(file, fh, fmt);
  ret = tmp___0;
  if (ret != 0 || id->type == 6) {
    return (ret);
  } else {
  }
  check_service_set(vbifmt, (int )itv->is_50hz);
  tmp___1 = ivtv_raw_vbi((struct ivtv const *)itv);
  if (tmp___1 != 0) {
    tmp___2 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___2 > 0) {
      return (-16);
    } else {
    }
  } else {
  }
  itv->vbi.in.type = 6U;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->s_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                     struct v4l2_sliced_vbi_format * ))0)) {
      (*((((itv->sd_video)->ops)->vbi)->s_sliced_fmt))(itv->sd_video, vbifmt);
    } else {
    }
  } else {
  }
  memcpy((void *)itv->vbi.sliced_in, (void const *)vbifmt, 112UL);
  return (0);
}
}
static int ivtv_s_fmt_vid_out(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct yuv_playback_info *yi ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  yi = & itv->yuv_info;
  tmp___0 = ivtv_try_fmt_vid_out(file, fh, fmt);
  ret = tmp___0;
  if (ret != 0) {
    return (ret);
  } else {
  }
  if (id->type != 8) {
    return (0);
  } else {
  }
  if (yi->stream_size != 0) {
    return (-16);
  } else {
  }
  yi->v4l2_src_w = fmt->fmt.pix.width;
  yi->v4l2_src_h = fmt->fmt.pix.height;
  switch (fmt->fmt.pix.field) {
  case 1U:
  yi->lace_mode = 1;
  goto ldv_42227;
  case 0U:
  yi->lace_mode = 2;
  goto ldv_42227;
  case 9U:
  yi->lace_mode = 4;
  goto ldv_42227;
  case 8U: ;
  default:
  yi->lace_mode = 0;
  goto ldv_42227;
  }
  ldv_42227:
  yi->lace_sync_field = (yi->lace_mode & 4) != 0;
  tmp___1 = constant_test_bit(7L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___1 != 0) {
    itv->dma_data_req_size = ((yi->v4l2_src_h + 31U) & 4294967264U) * 1080U;
  } else {
  }
  return (0);
}
}
static int ivtv_s_fmt_vid_out_overlay(struct file *file , void *fh , struct v4l2_format *fmt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_try_fmt_vid_out_overlay(file, fh, fmt);
  ret = tmp___0;
  if (ret == 0) {
    itv->osd_chroma_key = fmt->fmt.win.chromakey;
    itv->osd_global_alpha = fmt->fmt.win.global_alpha;
    ivtv_set_osd_alpha(itv);
  } else {
  }
  return (ret);
}
}
static int ivtv_itvc(struct ivtv *itv , bool get , u64 reg , u64 *val )
{
  u8 volatile *reg_start ;
  unsigned int tmp ;
  {
  if ((reg & 3ULL) != 0ULL) {
    return (-22);
  } else {
  }
  if (reg > 33554431ULL && reg <= 33619967ULL) {
    reg_start = (u8 volatile *)itv->reg_mem + 0xfffffffffe000000UL;
  } else
  if (((unsigned int )itv->has_cx23415 != 0U && reg > 16777215ULL) && reg <= 25165823ULL) {
    reg_start = (u8 volatile *)itv->dec_mem + 0xffffffffff000000UL;
  } else
  if (reg <= 8388607ULL) {
    reg_start = (u8 volatile *)itv->enc_mem;
  } else {
    return (-22);
  }
  if ((int )get) {
    tmp = readl((void const volatile *)(reg_start + reg));
    *val = (u64 )tmp;
  } else {
    writel((unsigned int )*val, (void volatile *)(reg_start + reg));
  }
  return (0);
}
}
static int ivtv_g_register(struct file *file , void *fh , struct v4l2_dbg_register *reg )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  reg->size = 4U;
  tmp___0 = ivtv_itvc(itv, 1, reg->reg, & reg->val);
  return (tmp___0);
}
}
static int ivtv_s_register(struct file *file , void *fh , struct v4l2_dbg_register const *reg )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  u64 val ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  val = reg->val;
  tmp___0 = ivtv_itvc(itv, 0, reg->reg, & val);
  return (tmp___0);
}
}
static int ivtv_querycap(struct file *file , void *fh , struct v4l2_capability *vcap )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  char const *tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)file->private_data);
  id = tmp;
  itv = id->itv;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  strlcpy((char *)(& vcap->driver), "ivtv", 16UL);
  strlcpy((char *)(& vcap->card), itv->card_name, 32UL);
  tmp___0 = pci_name((struct pci_dev const *)itv->pdev);
  snprintf((char *)(& vcap->bus_info), 32UL, "PCI:%s", tmp___0);
  vcap->capabilities = itv->v4l2_cap | 2147483648U;
  vcap->device_caps = s->caps;
  if ((s->caps & 512U) != 0U && itv->osd_video_pbase == 0UL) {
    vcap->capabilities = vcap->capabilities & 4294966783U;
    vcap->device_caps = vcap->device_caps & 4294966783U;
  } else {
  }
  return (0);
}
}
static int ivtv_enumaudio(struct file *file , void *fh , struct v4l2_audio *vin )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_get_audio_input(itv, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int ivtv_g_audio(struct file *file , void *fh , struct v4l2_audio *vin )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  vin->index = itv->audio_input;
  tmp___0 = ivtv_get_audio_input(itv, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int ivtv_s_audio(struct file *file , void *fh , struct v4l2_audio const *vout )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((unsigned int )vout->index >= (unsigned int )itv->nof_audio_inputs) {
    return (-22);
  } else {
  }
  itv->audio_input = vout->index;
  ivtv_audio_set_io(itv);
  return (0);
}
}
static int ivtv_enumaudout(struct file *file , void *fh , struct v4l2_audioout *vin )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_get_audio_output(itv, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int ivtv_g_audout(struct file *file , void *fh , struct v4l2_audioout *vin )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  vin->index = 0U;
  tmp___0 = ivtv_get_audio_output(itv, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int ivtv_s_audout(struct file *file , void *fh , struct v4l2_audioout const *vout )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((unsigned long )(itv->card)->video_outputs == (unsigned long )((struct ivtv_card_output const * )0) || (unsigned int )vout->index != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int ivtv_enum_input(struct file *file , void *fh , struct v4l2_input *vin )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_get_input(itv, (int )((u16 )vin->index), vin);
  return (tmp___0);
}
}
static int ivtv_enum_output(struct file *file , void *fh , struct v4l2_output *vout )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = ivtv_get_output(itv, (int )((u16 )vout->index), vout);
  return (tmp___0);
}
}
static int ivtv_cropcap(struct file *file , void *fh , struct v4l2_cropcap *cropcap )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  if (cropcap->type == 1U) {
    cropcap->pixelaspect.numerator = (unsigned int )itv->is_50hz != 0U ? 59U : 10U;
    cropcap->pixelaspect.denominator = (unsigned int )itv->is_50hz != 0U ? 54U : 11U;
  } else
  if (cropcap->type == 2U) {
    cropcap->pixelaspect.numerator = (unsigned int )itv->is_out_50hz != 0U ? 59U : 10U;
    cropcap->pixelaspect.denominator = (unsigned int )itv->is_out_50hz != 0U ? 54U : 11U;
  } else {
    return (-22);
  }
  return (0);
}
}
static int ivtv_s_selection(struct file *file , void *fh , struct v4l2_selection *sel )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct yuv_playback_info *yi ;
  struct v4l2_rect r ;
  int streamtype ;
  unsigned int _min1 ;
  __u32 _max1 ;
  unsigned int _max2 ;
  __u32 _min2 ;
  unsigned int _min1___0 ;
  __u32 _max1___0 ;
  unsigned int _max2___0 ;
  __u32 _min2___0 ;
  unsigned int __min1 ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  unsigned int __min2 ;
  unsigned int __min1___0 ;
  unsigned int __max1___0 ;
  unsigned int __max2___0 ;
  unsigned int __min2___0 ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  yi = & itv->yuv_info;
  r.left = 0;
  r.top = 0;
  r.width = 720U;
  r.height = 0U;
  streamtype = id->type;
  if (sel->type != 2U || (itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  if (sel->target != 256U) {
    return (-22);
  } else {
  }
  if (sel->type != 2U || (itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  r.height = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  if (streamtype == 8 && (unsigned int )yi->track_osd != 0U) {
    r.width = yi->osd_full_w;
    r.height = yi->osd_full_h;
  } else {
  }
  _max1 = sel->r.width;
  _max2 = 16U;
  _min1 = _max1 > _max2 ? _max1 : _max2;
  _min2 = r.width;
  sel->r.width = _min1 < _min2 ? _min1 : _min2;
  _max1___0 = sel->r.height;
  _max2___0 = 16U;
  _min1___0 = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  _min2___0 = r.height;
  sel->r.height = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  __max1 = (unsigned int )sel->r.left;
  __max2 = 0U;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = r.width - sel->r.width;
  sel->r.left = (__s32 )(__min1 < __min2 ? __min1 : __min2);
  __max1___0 = (unsigned int )sel->r.top;
  __max2___0 = 0U;
  __min1___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  __min2___0 = r.height - sel->r.height;
  sel->r.top = (__s32 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  if (streamtype == 8) {
    yi->main_rect = sel->r;
    return (0);
  } else {
  }
  tmp___0 = ivtv_vapi(itv, 86, 4, sel->r.width, sel->r.height, sel->r.left, sel->r.top);
  if (tmp___0 == 0) {
    itv->main_rect = sel->r;
    return (0);
  } else {
  }
  return (-22);
}
}
static int ivtv_g_selection(struct file *file , void *fh , struct v4l2_selection *sel )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct yuv_playback_info *yi ;
  struct v4l2_rect r ;
  int streamtype ;
  __s32 tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  yi = & itv->yuv_info;
  r.left = 0;
  r.top = 0;
  r.width = 720U;
  r.height = 0U;
  streamtype = id->type;
  if (sel->type == 1U) {
    switch (sel->target) {
    case 1U: ;
    case 2U:
    tmp___0 = 0;
    sel->r.left = tmp___0;
    sel->r.top = tmp___0;
    sel->r.width = 720U;
    sel->r.height = (unsigned int )itv->is_50hz != 0U ? 576U : 480U;
    return (0);
    default: ;
    return (-22);
    }
  } else {
  }
  if (sel->type != 2U || (itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  switch (sel->target) {
  case 256U: ;
  if (streamtype == 8) {
    sel->r = yi->main_rect;
  } else {
    sel->r = itv->main_rect;
  }
  return (0);
  case 257U: ;
  case 258U:
  r.height = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  if (streamtype == 8 && (unsigned int )yi->track_osd != 0U) {
    r.width = yi->osd_full_w;
    r.height = yi->osd_full_h;
  } else {
  }
  sel->r = r;
  return (0);
  }
  return (-22);
}
}
static int ivtv_enum_fmt_vid_cap(struct file *file , void *fh , struct v4l2_fmtdesc *fmt )
{
  struct v4l2_fmtdesc hm12 ;
  unsigned int tmp ;
  struct v4l2_fmtdesc mpeg ;
  unsigned int tmp___0 ;
  struct ivtv *itv ;
  struct ivtv_open_id *tmp___1 ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___2 ;
  {
  hm12.index = 0U;
  hm12.type = 1U;
  hm12.flags = 0U;
  hm12.description[0] = 'H';
  hm12.description[1] = 'M';
  hm12.description[2] = '1';
  hm12.description[3] = '2';
  hm12.description[4] = ' ';
  hm12.description[5] = '(';
  hm12.description[6] = 'Y';
  hm12.description[7] = 'U';
  hm12.description[8] = 'V';
  hm12.description[9] = ' ';
  hm12.description[10] = '4';
  hm12.description[11] = ':';
  hm12.description[12] = '2';
  hm12.description[13] = ':';
  hm12.description[14] = '0';
  hm12.description[15] = ')';
  hm12.description[16] = '\000';
  tmp = 17U;
  while (1) {
    if (tmp >= 32U) {
      break;
    } else {
    }
    hm12.description[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  hm12.pixelformat = 842091848U;
  hm12.reserved[0] = 0U;
  hm12.reserved[1] = 0U;
  hm12.reserved[2] = 0U;
  hm12.reserved[3] = 0U;
  mpeg.index = 0U;
  mpeg.type = 1U;
  mpeg.flags = 1U;
  mpeg.description[0] = 'M';
  mpeg.description[1] = 'P';
  mpeg.description[2] = 'E';
  mpeg.description[3] = 'G';
  mpeg.description[4] = '\000';
  tmp___0 = 5U;
  while (1) {
    if (tmp___0 >= 32U) {
      break;
    } else {
    }
    mpeg.description[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  mpeg.pixelformat = 1195724877U;
  mpeg.reserved[0] = 0U;
  mpeg.reserved[1] = 0U;
  mpeg.reserved[2] = 0U;
  mpeg.reserved[3] = 0U;
  tmp___1 = fh2id((struct v4l2_fh *)fh);
  itv = tmp___1->itv;
  tmp___2 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___2->type;
  if (fmt->index != 0U) {
    return (-22);
  } else {
  }
  if (s->type == 0) {
    *fmt = mpeg;
  } else
  if (s->type == 1) {
    *fmt = hm12;
  } else {
    return (-22);
  }
  return (0);
}
}
static int ivtv_enum_fmt_vid_out(struct file *file , void *fh , struct v4l2_fmtdesc *fmt )
{
  struct v4l2_fmtdesc hm12 ;
  unsigned int tmp ;
  struct v4l2_fmtdesc mpeg ;
  unsigned int tmp___0 ;
  struct ivtv *itv ;
  struct ivtv_open_id *tmp___1 ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___2 ;
  {
  hm12.index = 0U;
  hm12.type = 2U;
  hm12.flags = 0U;
  hm12.description[0] = 'H';
  hm12.description[1] = 'M';
  hm12.description[2] = '1';
  hm12.description[3] = '2';
  hm12.description[4] = ' ';
  hm12.description[5] = '(';
  hm12.description[6] = 'Y';
  hm12.description[7] = 'U';
  hm12.description[8] = 'V';
  hm12.description[9] = ' ';
  hm12.description[10] = '4';
  hm12.description[11] = ':';
  hm12.description[12] = '2';
  hm12.description[13] = ':';
  hm12.description[14] = '0';
  hm12.description[15] = ')';
  hm12.description[16] = '\000';
  tmp = 17U;
  while (1) {
    if (tmp >= 32U) {
      break;
    } else {
    }
    hm12.description[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  hm12.pixelformat = 842091848U;
  hm12.reserved[0] = 0U;
  hm12.reserved[1] = 0U;
  hm12.reserved[2] = 0U;
  hm12.reserved[3] = 0U;
  mpeg.index = 0U;
  mpeg.type = 2U;
  mpeg.flags = 1U;
  mpeg.description[0] = 'M';
  mpeg.description[1] = 'P';
  mpeg.description[2] = 'E';
  mpeg.description[3] = 'G';
  mpeg.description[4] = '\000';
  tmp___0 = 5U;
  while (1) {
    if (tmp___0 >= 32U) {
      break;
    } else {
    }
    mpeg.description[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  mpeg.pixelformat = 1195724877U;
  mpeg.reserved[0] = 0U;
  mpeg.reserved[1] = 0U;
  mpeg.reserved[2] = 0U;
  mpeg.reserved[3] = 0U;
  tmp___1 = fh2id((struct v4l2_fh *)fh);
  itv = tmp___1->itv;
  tmp___2 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___2->type;
  if (fmt->index != 0U) {
    return (-22);
  } else {
  }
  if (s->type == 5) {
    *fmt = mpeg;
  } else
  if (s->type == 8) {
    *fmt = hm12;
  } else {
    return (-22);
  }
  return (0);
}
}
static int ivtv_g_input(struct file *file , void *fh , unsigned int *i )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  *i = itv->active_input;
  return (0);
}
}
int ivtv_s_input(struct file *file , void *fh , unsigned int inp )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  v4l2_std_id std ;
  int i ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((unsigned int )itv->nof_inputs <= inp) {
    return (-22);
  } else {
  }
  if (itv->active_input == inp) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Input unchanged\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (0);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___0 > 0) {
    return (-16);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Changing input from %d to %d\n", (char *)(& itv->v4l2_dev.name),
           itv->active_input, inp);
  } else {
  }
  itv->active_input = inp;
  itv->audio_input = (u32 )(itv->card)->video_inputs[inp].audio_index;
  if ((unsigned int )((unsigned char )(itv->card)->video_inputs[inp].video_type) == 1U) {
    std = itv->tuner_std;
  } else {
    std = 16777215ULL;
  }
  i = 0;
  goto ldv_42411;
  ldv_42410:
  itv->streams[i].vdev.tvnorms = std;
  i = i + 1;
  ldv_42411: ;
  if (i <= 2) {
    goto ldv_42410;
  } else {
  }
  ivtv_mute(itv);
  ivtv_video_set_io(itv);
  ivtv_audio_set_io(itv);
  ivtv_unmute(itv);
  return (0);
}
}
static int ivtv_g_output(struct file *file , void *fh , unsigned int *i )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  *i = itv->active_output;
  return (0);
}
}
static int ivtv_s_output(struct file *file , void *fh , unsigned int outp )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((unsigned int )(itv->card)->nof_outputs <= outp) {
    return (-22);
  } else {
  }
  if (itv->active_output == outp) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Output unchanged\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Changing output from %d to %d\n", (char *)(& itv->v4l2_dev.name),
           itv->active_output, outp);
  } else {
  }
  itv->active_output = outp;
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42431;
  ldv_42430: ;
  if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0)) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                               u32 ,
                                                                                                                                                                                                                                               u32 ,
                                                                                                                                                                                                                                               u32 ))0)) {
    (*(((__sd->ops)->video)->s_routing))(__sd, 0U, (u32 )((itv->card)->video_outputs + (unsigned long )outp)->video_output,
                                         0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42431: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42430;
  } else {
  }
  return (0);
}
}
static int ivtv_g_frequency(struct file *file , void *fh , struct v4l2_frequency *vf )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  if (s->vdev.vfl_dir != 0) {
    return (-25);
  } else {
  }
  if (vf->tuner != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42446;
  ldv_42445: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency * ))0)) {
    (*(((__sd->ops)->tuner)->g_frequency))(__sd, vf);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42446: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42445;
  } else {
  }
  return (0);
}
}
int ivtv_s_frequency(struct file *file , void *fh , struct v4l2_frequency const *vf )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  if (s->vdev.vfl_dir != 0) {
    return (-25);
  } else {
  }
  if ((unsigned int )vf->tuner != 0U) {
    return (-22);
  } else {
  }
  ivtv_mute(itv);
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: v4l2 ioctl: set frequency %d\n", (char *)(& itv->v4l2_dev.name),
           vf->frequency);
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42461;
  ldv_42460: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, vf);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42461: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42460;
  } else {
  }
  ivtv_unmute(itv);
  return (0);
}
}
static int ivtv_g_std(struct file *file , void *fh , v4l2_std_id *std )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  *std = itv->std;
  return (0);
}
}
void ivtv_s_std_enc(struct ivtv *itv , v4l2_std_id std )
{
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  itv->std = std;
  itv->is_60hz = (std & 63744ULL) != 0ULL;
  itv->is_50hz = (unsigned int )itv->is_60hz == 0U;
  cx2341x_handler_set_50hz(& itv->cxhdl, (int )itv->is_50hz);
  itv->cxhdl.width = 720U;
  itv->cxhdl.height = (unsigned int )itv->is_50hz != 0U ? 576U : 480U;
  itv->vbi.count = (unsigned int )itv->is_50hz != 0U ? 18U : 12U;
  itv->vbi.start[0] = (unsigned int )itv->is_50hz != 0U ? 6U : 10U;
  itv->vbi.start[1] = (unsigned int )itv->is_50hz != 0U ? 318U : 273U;
  if ((int )itv->hw_flags & 1) {
    itv->vbi.sliced_decoder_line_size = (unsigned int )itv->is_60hz != 0U ? 272U : 284U;
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42479;
  ldv_42478: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                            v4l2_std_id ))0)) {
    (*(((__sd->ops)->video)->s_std))(__sd, itv->std);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42479: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42478;
  } else {
  }
  return;
}
}
void ivtv_s_std_dec(struct ivtv *itv , v4l2_std_id std )
{
  struct yuv_playback_info *yi ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  int f ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned int tmp___0 ;
  unsigned long tmp___1 ;
  {
  yi = & itv->yuv_info;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  itv->std_out = std;
  itv->is_out_60hz = (std & 63744ULL) != 0ULL;
  itv->is_out_50hz = (unsigned int )itv->is_out_60hz == 0U;
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42494;
  ldv_42493: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_std_output != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                   v4l2_std_id ))0)) {
    (*(((__sd->ops)->video)->s_std_output))(__sd, itv->std_out);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42494: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42493;
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  f = 0;
  goto ldv_42498;
  ldv_42497:
  prepare_to_wait(& itv->vsync_waitq, & wait, 2);
  tmp___0 = readl((void const volatile *)itv->reg_mem + 10432U);
  if (tmp___0 >> 16 <= 99U) {
    goto ldv_42496;
  } else {
  }
  tmp___1 = msecs_to_jiffies(25U);
  schedule_timeout((long )tmp___1);
  f = f + 1;
  ldv_42498: ;
  if (f <= 3) {
    goto ldv_42497;
  } else {
  }
  ldv_42496:
  finish_wait(& itv->vsync_waitq, & wait);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  if (f == 4) {
    printk("\f%s: Mode change failed to sync to decoder\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  ivtv_vapi(itv, 16, 1, (int )itv->is_out_50hz);
  itv->main_rect.left = 0;
  itv->main_rect.top = 0;
  itv->main_rect.width = 720U;
  itv->main_rect.height = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  ivtv_vapi(itv, 86, 4, 720, itv->main_rect.height, 0, 0);
  yi->main_rect = itv->main_rect;
  if ((unsigned long )itv->osd_info == (unsigned long )((struct osd_info *)0)) {
    yi->osd_full_w = 720U;
    yi->osd_full_h = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  } else {
  }
  return;
}
}
static int ivtv_s_std(struct file *file , void *fh , v4l2_std_id std )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if ((std & 16777215ULL) == 0ULL) {
    return (-22);
  } else {
  }
  if (itv->std == std) {
    return (0);
  } else {
  }
  tmp___0 = constant_test_bit(5L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___0 != 0) {
    return (-16);
  } else {
    tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___1 > 0) {
      return (-16);
    } else {
      tmp___2 = atomic_read((atomic_t const *)(& itv->decoding));
      if (tmp___2 > 0) {
        return (-16);
      } else {
      }
    }
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Switching standard to %llx.\n", (char *)(& itv->v4l2_dev.name),
           itv->std);
  } else {
  }
  ivtv_s_std_enc(itv, std);
  if ((itv->v4l2_cap & 2U) != 0U) {
    ivtv_s_std_dec(itv, std);
  } else {
  }
  return (0);
}
}
static int ivtv_s_tuner(struct file *file , void *fh , struct v4l2_tuner const *vt )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  if ((unsigned int )vt->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42518;
  ldv_42517: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42518: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42517;
  } else {
  }
  return (0);
}
}
static int ivtv_g_tuner(struct file *file , void *fh , struct v4l2_tuner *vt )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if (vt->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42532;
  ldv_42531: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, vt);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42532: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42531;
  } else {
  }
  if (vt->type == 1U) {
    strlcpy((char *)(& vt->name), "ivtv Radio Tuner", 32UL);
  } else {
    strlcpy((char *)(& vt->name), "ivtv TV Tuner", 32UL);
  }
  return (0);
}
}
static int ivtv_g_sliced_vbi_cap(struct file *file , void *fh , struct v4l2_sliced_vbi_cap *cap )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  int set ;
  int f ;
  int l ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  set = (unsigned int )itv->is_50hz != 0U ? 17409 : 4096;
  if (cap->type == 6U) {
    f = 0;
    goto ldv_42547;
    ldv_42546:
    l = 0;
    goto ldv_42544;
    ldv_42543:
    tmp___0 = valid_service_line(f, l, (int )itv->is_50hz);
    if (tmp___0 != 0) {
      cap->service_lines[f][l] = (__u16 )set;
    } else {
    }
    l = l + 1;
    ldv_42544: ;
    if (l <= 23) {
      goto ldv_42543;
    } else {
    }
    f = f + 1;
    ldv_42547: ;
    if (f <= 1) {
      goto ldv_42546;
    } else {
    }
  } else
  if (cap->type == 7U) {
    if ((itv->v4l2_cap & 128U) == 0U) {
      return (-22);
    } else {
    }
    if ((unsigned int )itv->is_60hz != 0U) {
      cap->service_lines[0][21] = 4096U;
      cap->service_lines[1][21] = 4096U;
    } else {
      cap->service_lines[0][23] = 16384U;
      cap->service_lines[0][16] = 1024U;
    }
  } else {
    return (-22);
  }
  set = 0;
  f = 0;
  goto ldv_42553;
  ldv_42552:
  l = 0;
  goto ldv_42550;
  ldv_42549:
  set = (int )cap->service_lines[f][l] | set;
  l = l + 1;
  ldv_42550: ;
  if (l <= 23) {
    goto ldv_42549;
  } else {
  }
  f = f + 1;
  ldv_42553: ;
  if (f <= 1) {
    goto ldv_42552;
  } else {
  }
  cap->service_set = (__u16 )set;
  return (0);
}
}
static int ivtv_g_enc_index(struct file *file , void *fh , struct v4l2_enc_idx *idx )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct v4l2_enc_idx_entry *e ;
  int entries ;
  int i ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  e = (struct v4l2_enc_idx_entry *)(& idx->entry);
  entries = (int )(((itv->pgm_info_write_idx - itv->pgm_info_read_idx) + 400U) % 400U);
  if (entries > 64) {
    entries = 64;
  } else {
  }
  idx->entries = 0U;
  idx->entries_cap = 400U;
  tmp___0 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_42565;
  ldv_42564:
  *e = itv->pgm_info[(itv->pgm_info_read_idx + (u32 )i) % 400U];
  if ((e->flags & 15U) <= 2U) {
    idx->entries = idx->entries + 1U;
    e = e + 1;
  } else {
  }
  i = i + 1;
  ldv_42565: ;
  if (i < entries) {
    goto ldv_42564;
  } else {
  }
  itv->pgm_info_read_idx = (itv->pgm_info_read_idx + idx->entries) % 400U;
  return (0);
}
}
static int ivtv_encoder_cmd(struct file *file , void *fh , struct v4l2_encoder_cmd *enc )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  switch (enc->cmd) {
  case 0U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_START\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___0 = ivtv_start_capture(id);
  return (tmp___0);
  case 1U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_STOP\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = enc->flags & 1U;
  ivtv_stop_capture(id, (int )enc->flags & 1);
  return (0);
  case 2U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___1 == 0) {
    return (-1);
  } else {
  }
  tmp___2 = test_and_set_bit(13L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___2 != 0) {
    return (0);
  } else {
  }
  ivtv_mute(itv);
  ivtv_vapi(itv, 210, 1, 0);
  goto ldv_42577;
  case 3U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_RESUME\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  tmp___3 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___3 == 0) {
    return (-1);
  } else {
  }
  tmp___4 = test_and_clear_bit(13L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___4 == 0) {
    return (0);
  } else {
  }
  ivtv_vapi(itv, 210, 1, 1);
  ivtv_unmute(itv);
  goto ldv_42577;
  default: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: Unknown cmd %d\n", (char *)(& itv->v4l2_dev.name), enc->cmd);
  } else {
  }
  return (-22);
  }
  ldv_42577: ;
  return (0);
}
}
static int ivtv_try_encoder_cmd(struct file *file , void *fh , struct v4l2_encoder_cmd *enc )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  switch (enc->cmd) {
  case 0U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_START\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  return (0);
  case 1U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_STOP\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = enc->flags & 1U;
  return (0);
  case 2U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  return (0);
  case 3U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: V4L2_ENC_CMD_RESUME\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  enc->flags = 0U;
  return (0);
  default: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: Unknown cmd %d\n", (char *)(& itv->v4l2_dev.name), enc->cmd);
  } else {
  }
  return (-22);
  }
}
}
static int ivtv_g_fbuf(struct file *file , void *fh , struct v4l2_framebuffer *fb )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  u32 data[16U] ;
  struct yuv_playback_info *yi ;
  int pixfmt ;
  u32 pixel_format[16U] ;
  unsigned int tmp___1 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  yi = & itv->yuv_info;
  pixel_format[0] = 944521552U;
  pixel_format[1] = 1346520914U;
  pixel_format[2] = 1329743698U;
  pixel_format[3] = 875836498U;
  pixel_format[4] = 876758866U;
  pixel_format[5] = 0U;
  pixel_format[6] = 0U;
  pixel_format[7] = 0U;
  pixel_format[8] = 944521552U;
  pixel_format[9] = 1347835225U;
  pixel_format[10] = 1331058009U;
  pixel_format[11] = 875836505U;
  pixel_format[12] = 878073177U;
  pixel_format[13] = 0U;
  pixel_format[14] = 0U;
  pixel_format[15] = 0U;
  if ((s->caps & 512U) == 0U) {
    return (-25);
  } else {
  }
  if (itv->osd_video_pbase == 0UL) {
    return (-25);
  } else {
  }
  fb->capability = 35U;
  ivtv_vapi_result(itv, (u32 *)(& data), 68, 0);
  tmp___1 = readl((void const volatile *)itv->reg_mem + 10752U);
  data[0] = data[0] | ((tmp___1 >> 7) & 64U);
  pixfmt = (int )(data[0] >> 3) & 15;
  fb->fmt.pixelformat = pixel_format[pixfmt];
  fb->fmt.width = itv->osd_rect.width;
  fb->fmt.height = itv->osd_rect.height;
  fb->fmt.field = 4U;
  fb->fmt.bytesperline = fb->fmt.width;
  fb->fmt.colorspace = 1U;
  fb->fmt.field = 4U;
  if (fb->fmt.pixelformat != 944521552U) {
    fb->fmt.bytesperline = fb->fmt.bytesperline * 2U;
  } else {
  }
  if (fb->fmt.pixelformat == 876758866U || fb->fmt.pixelformat == 878073177U) {
    fb->fmt.bytesperline = fb->fmt.bytesperline * 2U;
  } else {
  }
  fb->fmt.sizeimage = fb->fmt.bytesperline * fb->fmt.height;
  fb->base = (void *)itv->osd_video_pbase;
  fb->flags = 0U;
  if (itv->osd_chroma_key_state != 0) {
    fb->flags = fb->flags | 4U;
  } else {
  }
  if (itv->osd_global_alpha_state != 0) {
    fb->flags = fb->flags | 16U;
  } else {
  }
  if ((unsigned int )yi->track_osd != 0U) {
    fb->flags = fb->flags | 2U;
  } else {
  }
  pixfmt = pixfmt & 7;
  if (pixfmt == 1 || pixfmt > 4) {
    return (0);
  } else {
  }
  if (pixfmt == 2 || pixfmt == 3) {
    fb->capability = fb->capability | 64U;
  } else {
    fb->capability = fb->capability | 16U;
  }
  if (itv->osd_local_alpha_state != 0) {
    if (pixfmt == 2 || pixfmt == 3) {
      fb->flags = fb->flags | 32U;
    } else {
      fb->flags = fb->flags | 8U;
    }
  } else {
  }
  return (0);
}
}
static int ivtv_s_fbuf(struct file *file , void *fh , struct v4l2_framebuffer const *fb )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  struct yuv_playback_info *yi ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  yi = & itv->yuv_info;
  if ((s->caps & 512U) == 0U) {
    return (-25);
  } else {
  }
  if (itv->osd_video_pbase == 0UL) {
    return (-25);
  } else {
  }
  itv->osd_global_alpha_state = ((unsigned int )fb->flags & 16U) != 0U;
  itv->osd_local_alpha_state = ((unsigned int )fb->flags & 40U) != 0U;
  itv->osd_chroma_key_state = ((unsigned int )fb->flags & 4U) != 0U;
  ivtv_set_osd_alpha(itv);
  yi->track_osd = ((unsigned int )fb->flags & 2U) != 0U;
  return (0);
}
}
static int ivtv_overlay(struct file *file , void *fh , unsigned int on )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  struct ivtv_stream *s ;
  struct ivtv_open_id *tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  id = tmp;
  itv = id->itv;
  tmp___0 = fh2id((struct v4l2_fh *)fh);
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )tmp___0->type;
  if ((s->caps & 512U) == 0U) {
    return (-25);
  } else {
  }
  if (itv->osd_video_pbase == 0UL) {
    return (-25);
  } else {
  }
  ivtv_vapi(itv, 69, 1, on != 0U);
  return (0);
}
}
static int ivtv_subscribe_event(struct v4l2_fh *fh , struct v4l2_event_subscription const *sub )
{
  int tmp ;
  int tmp___0 ;
  {
  switch (sub->type) {
  case 1U: ;
  case 2U:
  tmp = v4l2_event_subscribe(fh, sub, 0U, (struct v4l2_subscribed_event_ops const *)0);
  return (tmp);
  case 3U:
  tmp___0 = v4l2_event_subscribe(fh, sub, 0U, & v4l2_ctrl_sub_ev_ops);
  return (tmp___0);
  default: ;
  return (-22);
  }
}
}
static int ivtv_log_status(struct file *file , void *fh )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  u32 data[16U] ;
  int has_output ;
  struct v4l2_input vidin ;
  struct v4l2_audio audin ;
  int i ;
  struct tveeprom tv ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_output vidout ;
  struct v4l2_audioout audout ;
  int mode ;
  char const *output_modes[5U] ;
  char const *alpha_mode[4U] ;
  char const *pixel_format[16U] ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  struct ivtv_stream *s ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  has_output = (int )itv->v4l2_cap & 2;
  printk("\016%s: Version: %s Card: %s\n", (char *)(& itv->v4l2_dev.name), (char *)"1.4.3",
         itv->card_name);
  if ((itv->hw_flags & 128U) != 0U) {
    ivtv_read_eeprom(itv, & tv);
  } else {
  }
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_42644;
  ldv_42643: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->log_status != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
    (*(((__sd->ops)->core)->log_status))(__sd);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_42644: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_42643;
  } else {
  }
  ivtv_get_input(itv, (int )((u16 )itv->active_input), & vidin);
  ivtv_get_audio_input(itv, (int )((u16 )itv->audio_input), & audin);
  printk("\016%s: Video Input:  %s\n", (char *)(& itv->v4l2_dev.name), (__u8 *)(& vidin.name));
  printk("\016%s: Audio Input:  %s%s\n", (char *)(& itv->v4l2_dev.name), (__u8 *)(& audin.name),
         itv->dualwatch_stereo_mode == 2U ? (char *)" (Bilingual)" : (char *)"");
  if (has_output != 0) {
    mode = itv->output_mode;
    output_modes[0] = "None";
    output_modes[1] = "MPEG Streaming";
    output_modes[2] = "YUV Streaming";
    output_modes[3] = "YUV Frames";
    output_modes[4] = "Passthrough";
    alpha_mode[0] = "None";
    alpha_mode[1] = "Global";
    alpha_mode[2] = "Local";
    alpha_mode[3] = "Global and Local";
    pixel_format[0] = "ARGB Indexed";
    pixel_format[1] = "RGB 5:6:5";
    pixel_format[2] = "ARGB 1:5:5:5";
    pixel_format[3] = "ARGB 1:4:4:4";
    pixel_format[4] = "ARGB 8:8:8:8";
    pixel_format[5] = "5";
    pixel_format[6] = "6";
    pixel_format[7] = "7";
    pixel_format[8] = "AYUV Indexed";
    pixel_format[9] = "YUV 5:6:5";
    pixel_format[10] = "AYUV 1:5:5:5";
    pixel_format[11] = "AYUV 1:4:4:4";
    pixel_format[12] = "AYUV 8:8:8:8";
    pixel_format[13] = "13";
    pixel_format[14] = "14";
    pixel_format[15] = "15";
    ivtv_get_output(itv, (int )((u16 )itv->active_output), & vidout);
    ivtv_get_audio_output(itv, 0, & audout);
    printk("\016%s: Video Output: %s\n", (char *)(& itv->v4l2_dev.name), (__u8 *)(& vidout.name));
    if (mode < 0 || mode > 4) {
      mode = 0;
    } else {
    }
    printk("\016%s: Output Mode:  %s\n", (char *)(& itv->v4l2_dev.name), output_modes[mode]);
    ivtv_vapi_result(itv, (u32 *)(& data), 68, 0);
    tmp___0 = readl((void const volatile *)itv->reg_mem + 10752U);
    data[0] = data[0] | ((tmp___0 >> 7) & 64U);
    printk("\016%s: Overlay:      %s, Alpha: %s, Pixel Format: %s\n", (char *)(& itv->v4l2_dev.name),
           (int )data[0] & 1 ? (char *)"On" : (char *)"Off", alpha_mode[(data[0] >> 1) & 3U],
           pixel_format[(data[0] >> 3) & 15U]);
  } else {
  }
  tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& itv->i_flags));
  printk("\016%s: Tuner:  %s\n", (char *)(& itv->v4l2_dev.name), tmp___1 != 0 ? (char *)"Radio" : (char *)"TV");
  v4l2_ctrl_handler_log_status(& itv->cxhdl.hdl, (char const *)(& itv->v4l2_dev.name));
  printk("\016%s: Status flags:    0x%08lx\n", (char *)(& itv->v4l2_dev.name), itv->i_flags);
  i = 0;
  goto ldv_42655;
  ldv_42654:
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )i;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0) || s->buffers == 0U) {
    goto ldv_42653;
  } else {
  }
  printk("\016%s: Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\n",
         (char *)(& itv->v4l2_dev.name), s->name, s->s_flags, ((s->buffers - s->q_free.buffers) * 100U) / s->buffers,
         (s->buffers * s->buf_size) / 1024U, s->buffers);
  ldv_42653:
  i = i + 1;
  ldv_42655: ;
  if (i <= 8) {
    goto ldv_42654;
  } else {
  }
  printk("\016%s: Read MPG/VBI: %lld/%lld bytes\n", (char *)(& itv->v4l2_dev.name),
         (long long )itv->mpg_data_received, (long long )itv->vbi_data_inserted);
  return (0);
}
}
static int ivtv_decoder_cmd(struct file *file , void *fh , struct v4l2_decoder_cmd *dec )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)file->private_data);
  id = tmp;
  itv = id->itv;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDIOC_DECODER_CMD %d\n", (char *)(& itv->v4l2_dev.name),
           dec->cmd);
  } else {
  }
  tmp___0 = ivtv_video_command(itv, id, dec, 0);
  return (tmp___0);
}
}
static int ivtv_try_decoder_cmd(struct file *file , void *fh , struct v4l2_decoder_cmd *dec )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)file->private_data);
  id = tmp;
  itv = id->itv;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDIOC_TRY_DECODER_CMD %d\n", (char *)(& itv->v4l2_dev.name),
           dec->cmd);
  } else {
  }
  tmp___0 = ivtv_video_command(itv, id, dec, 1);
  return (tmp___0);
}
}
static int ivtv_decoder_ioctls(struct file *filp , unsigned int cmd , void *arg )
{
  struct ivtv_open_id *id ;
  struct ivtv_open_id *tmp ;
  struct ivtv *itv ;
  int nonblocking ;
  struct ivtv_stream *s ;
  unsigned long iarg ;
  struct ivtv_dma_frame *args ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  s64 *pts ;
  s64 frame ;
  int tmp___4 ;
  s64 *frame___0 ;
  s64 pts___0 ;
  int tmp___5 ;
  struct v4l2_decoder_cmd dc ;
  int tmp___6 ;
  struct v4l2_decoder_cmd dc___0 ;
  int tmp___7 ;
  struct v4l2_decoder_cmd dc___1 ;
  int tmp___8 ;
  struct v4l2_decoder_cmd dc___2 ;
  int tmp___9 ;
  struct v4l2_decoder_cmd *dc___3 ;
  int try ;
  int tmp___10 ;
  struct video_event *ev ;
  wait_queue_t wait ;
  struct task_struct *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  struct task_struct *tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  {
  tmp = fh2id((struct v4l2_fh *)filp->private_data);
  id = tmp;
  itv = id->itv;
  nonblocking = (int )filp->f_flags & 2048;
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )id->type;
  iarg = (unsigned long )arg;
  switch (cmd) {
  case 1077958336U:
  args = (struct ivtv_dma_frame *)arg;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: IVTV_IOC_DMA_FRAME\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )args->type != 2U) {
    return (-22);
  } else {
  }
  if (itv->output_mode == 3 && (unsigned long )args->y_source == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  tmp___0 = ivtv_start_decoding(id, id->type);
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  tmp___1 = ivtv_set_output_mode(itv, 3);
  if (tmp___1 != 3) {
    ivtv_release_stream(s);
    return (-16);
  } else {
  }
  id->yuv_frames = 1;
  if ((unsigned long )args->y_source == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  tmp___2 = ivtv_yuv_prep_frame(itv, args);
  return (tmp___2);
  case 1074026177U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: IVTV_IOC_PASSTHROUGH_MODE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  tmp___3 = ivtv_passthrough_mode(itv, *((int *)arg) != 0);
  return (tmp___3);
  case 2148036409U:
  pts = (s64 *)arg;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_GET_PTS\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (s->type <= 4) {
    *pts = (s64 )s->dma_pts;
    goto ldv_42687;
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  tmp___4 = ivtv_g_pts_frame(itv, pts, & frame);
  return (tmp___4);
  case 2148036410U:
  frame___0 = (s64 *)arg;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_GET_FRAME_COUNT\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (s->type <= 4) {
    *frame___0 = 0LL;
    goto ldv_42687;
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  tmp___5 = ivtv_g_pts_frame(itv, & pts___0, frame___0);
  return (tmp___5);
  case 28438U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_PLAY\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  memset((void *)(& dc), 0, 72UL);
  dc.cmd = 0U;
  tmp___6 = ivtv_video_command(itv, id, & dc, 0);
  return (tmp___6);
  case 28437U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_STOP\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  memset((void *)(& dc___0), 0, 72UL);
  dc___0.cmd = 1U;
  dc___0.flags = 3U;
  tmp___7 = ivtv_video_command(itv, id, & dc___0, 0);
  return (tmp___7);
  case 28439U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_FREEZE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  memset((void *)(& dc___1), 0, 72UL);
  dc___1.cmd = 2U;
  tmp___8 = ivtv_video_command(itv, id, & dc___1, 0);
  return (tmp___8);
  case 28440U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_CONTINUE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  memset((void *)(& dc___2), 0, 72UL);
  dc___2.cmd = 3U;
  tmp___9 = ivtv_video_command(itv, id, & dc___2, 0);
  return (tmp___9);
  case 3225972539U: ;
  case 3225972540U:
  dc___3 = (struct v4l2_decoder_cmd *)arg;
  try = cmd == 3225972540U;
  if (try != 0) {
    if ((ivtv_debug & 8) != 0) {
      printk("\016%s:  ioctl: VIDEO_TRY_COMMAND %d\n", (char *)(& itv->v4l2_dev.name),
             dc___3->cmd);
    } else {
    }
  } else
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_COMMAND %d\n", (char *)(& itv->v4l2_dev.name), dc___3->cmd);
  } else {
  }
  tmp___10 = ivtv_video_command(itv, id, dc___3, try);
  return (tmp___10);
  case 2149609244U:
  ev = (struct video_event *)arg;
  tmp___11 = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp___11;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_GET_EVENT\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  memset((void *)ev, 0, 32UL);
  set_bit(31L, (unsigned long volatile *)(& itv->i_flags));
  ldv_42706:
  tmp___14 = test_and_clear_bit(28L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___14 != 0) {
    ev->type = 3;
  } else {
    tmp___13 = test_and_clear_bit(29L, (unsigned long volatile *)(& itv->i_flags));
    if (tmp___13 != 0) {
      ev->type = 4;
      tmp___12 = constant_test_bit(30L, (unsigned long const volatile *)(& itv->i_flags));
      ev->u.vsync_field = tmp___12 != 0 ? 1U : 2U;
      if (itv->output_mode == 3 && (itv->yuv_info.lace_mode & 3) == 1) {
        ev->u.vsync_field = 3U;
      } else {
      }
    } else {
    }
  }
  if (ev->type != 0) {
    return (0);
  } else {
  }
  if (nonblocking != 0) {
    return (-11);
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  prepare_to_wait(& itv->event_waitq, & wait, 1);
  tmp___15 = constant_test_bit(28L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___15 == 0) {
    tmp___16 = constant_test_bit(29L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___16 == 0) {
      schedule();
    } else {
    }
  } else {
  }
  finish_wait(& itv->event_waitq, & wait);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  tmp___17 = get_current();
  tmp___18 = signal_pending___1(tmp___17);
  if (tmp___18 != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: User stopped wait for event\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-4);
  } else {
  }
  goto ldv_42706;
  case 28441U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: VIDEO_SELECT_SOURCE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((itv->v4l2_cap & 2U) == 0U) {
    return (-22);
  } else {
  }
  tmp___19 = ivtv_passthrough_mode(itv, iarg == 0UL);
  return (tmp___19);
  case 28422U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: AUDIO_SET_MUTE\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  itv->speed_mute_audio = (u8 )iarg;
  return (0);
  case 28425U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: AUDIO_CHANNEL_SELECT\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (iarg > 4UL) {
    return (-22);
  } else {
  }
  tmp___20 = v4l2_ctrl_s_ctrl(itv->__annonCompField106.ctrl_audio_playback, (s32 )((unsigned int )iarg + 1U));
  return (tmp___20);
  case 28436U: ;
  if ((ivtv_debug & 8) != 0) {
    printk("\016%s:  ioctl: AUDIO_BILINGUAL_CHANNEL_SELECT\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (iarg > 4UL) {
    return (-22);
  } else {
  }
  tmp___21 = v4l2_ctrl_s_ctrl(itv->__annonCompField106.ctrl_audio_multilingual_playback,
                              (s32 )((unsigned int )iarg + 1U));
  return (tmp___21);
  default: ;
  return (-22);
  }
  ldv_42687: ;
  return (0);
}
}
static long ivtv_default(struct file *file , void *fh , bool valid_prio , unsigned int cmd ,
                         void *arg )
{
  struct ivtv *itv ;
  struct ivtv_open_id *tmp ;
  u32 val ;
  int tmp___0 ;
  {
  tmp = fh2id((struct v4l2_fh *)fh);
  itv = tmp->itv;
  if (! valid_prio) {
    switch (cmd) {
    case 1074026177U: ;
    case 28438U: ;
    case 28437U: ;
    case 28439U: ;
    case 28440U: ;
    case 3225972539U: ;
    case 28441U: ;
    case 28422U: ;
    case 28425U: ;
    case 28436U: ;
    return (-16L);
    }
  } else {
  }
  switch (cmd) {
  case 1074029670U:
  val = *((u32 *)arg);
  if ((val == 0U && itv->options.newi2c != 0) || (int )val & 1) {
    ivtv_reset_ir_gpio(itv);
  } else {
  }
  if ((val & 2U) != 0U) {
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                   u32 ))0)) {
        (*((((itv->sd_video)->ops)->core)->reset))(itv->sd_video, 0U);
      } else {
      }
    } else {
    }
  } else {
  }
  goto ldv_42732;
  case 1077958336U: ;
  case 1074026177U: ;
  case 2148036409U: ;
  case 2148036410U: ;
  case 2149609244U: ;
  case 28438U: ;
  case 28437U: ;
  case 28439U: ;
  case 28440U: ;
  case 3225972539U: ;
  case 3225972540U: ;
  case 28441U: ;
  case 28422U: ;
  case 28425U: ;
  case 28436U:
  tmp___0 = ivtv_decoder_ioctls(file, cmd, arg);
  return ((long )tmp___0);
  default: ;
  return (-25L);
  }
  ldv_42732: ;
  return (0L);
}
}
static struct v4l2_ioctl_ops const ivtv_ioctl_ops =
     {& ivtv_querycap, & ivtv_enum_fmt_vid_cap, 0, & ivtv_enum_fmt_vid_out, 0, 0, 0,
    & ivtv_g_fmt_vid_cap, 0, & ivtv_g_fmt_vid_out, & ivtv_g_fmt_vid_out_overlay, & ivtv_g_fmt_vbi_cap,
    0, & ivtv_g_fmt_sliced_vbi_cap, & ivtv_g_fmt_sliced_vbi_out, 0, 0, 0, & ivtv_s_fmt_vid_cap,
    0, & ivtv_s_fmt_vid_out, & ivtv_s_fmt_vid_out_overlay, & ivtv_s_fmt_vbi_cap, 0,
    & ivtv_s_fmt_sliced_vbi_cap, & ivtv_s_fmt_sliced_vbi_out, 0, 0, 0, & ivtv_try_fmt_vid_cap,
    0, & ivtv_try_fmt_vid_out, & ivtv_try_fmt_vid_out_overlay, & ivtv_try_fmt_vbi_cap,
    0, & ivtv_try_fmt_sliced_vbi_cap, & ivtv_try_fmt_sliced_vbi_out, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & ivtv_overlay, & ivtv_g_fbuf, & ivtv_s_fbuf, 0, 0, & ivtv_g_std,
    & ivtv_s_std, 0, & ivtv_enum_input, & ivtv_g_input, & ivtv_s_input, & ivtv_enum_output,
    & ivtv_g_output, & ivtv_s_output, 0, 0, 0, 0, 0, 0, 0, 0, & ivtv_enumaudio, & ivtv_g_audio,
    & ivtv_s_audio, & ivtv_enumaudout, & ivtv_g_audout, & ivtv_s_audout, 0, 0, & ivtv_cropcap,
    0, 0, & ivtv_g_selection, & ivtv_s_selection, 0, 0, & ivtv_g_enc_index, & ivtv_encoder_cmd,
    & ivtv_try_encoder_cmd, & ivtv_decoder_cmd, & ivtv_try_decoder_cmd, 0, 0, & ivtv_g_tuner,
    & ivtv_s_tuner, & ivtv_g_frequency, & ivtv_s_frequency, 0, & ivtv_g_sliced_vbi_cap,
    & ivtv_log_status, 0, & ivtv_g_register, & ivtv_s_register, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & ivtv_subscribe_event, & v4l2_event_unsubscribe, & ivtv_default};
void ivtv_set_funcs(struct video_device *vdev )
{
  {
  vdev->ioctl_ops = & ivtv_ioctl_ops;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  tmp = ldv_init_zalloc(208UL);
  ivtv_ioctl_ops_group6 = (struct v4l2_format *)tmp;
  tmp___0 = ldv_init_zalloc(52UL);
  ivtv_ioctl_ops_group7 = (struct v4l2_audioout *)tmp___0;
  tmp___1 = ldv_init_zalloc(64UL);
  ivtv_ioctl_ops_group0 = (struct v4l2_fmtdesc *)tmp___1;
  tmp___2 = ldv_init_zalloc(32UL);
  ivtv_ioctl_ops_group1 = (struct v4l2_event_subscription const *)tmp___2;
  tmp___3 = ldv_init_zalloc(52UL);
  ivtv_ioctl_ops_group2 = (struct v4l2_audio *)tmp___3;
  ivtv_ioctl_ops_group3 = ldv_malloc(sizeof(struct file));
  tmp___5 = ldv_init_zalloc(176UL);
  ivtv_ioctl_ops_group4 = (struct v4l2_fh *)tmp___5;
  tmp___6 = ldv_init_zalloc(64UL);
  ivtv_ioctl_ops_group9 = (struct v4l2_selection *)tmp___6;
  tmp___7 = ldv_init_zalloc(40UL);
  ivtv_ioctl_ops_group8 = (struct v4l2_encoder_cmd *)tmp___7;
  tmp___8 = ldv_init_zalloc(72UL);
  ivtv_ioctl_ops_group5 = (struct v4l2_decoder_cmd *)tmp___8;
  return;
}
}
void ldv_main_exported_7(void)
{
  struct v4l2_output *ldvarg52 ;
  void *tmp ;
  struct v4l2_tuner *ldvarg74 ;
  void *tmp___0 ;
  void *ldvarg22 ;
  void *tmp___1 ;
  void *ldvarg61 ;
  void *tmp___2 ;
  struct v4l2_frequency *ldvarg17 ;
  void *tmp___3 ;
  struct v4l2_cropcap *ldvarg25 ;
  void *tmp___4 ;
  void *ldvarg21 ;
  void *tmp___5 ;
  v4l2_std_id *ldvarg15 ;
  void *tmp___6 ;
  void *ldvarg78 ;
  void *tmp___7 ;
  void *ldvarg73 ;
  void *tmp___8 ;
  void *ldvarg26 ;
  void *tmp___9 ;
  void *ldvarg27 ;
  void *tmp___10 ;
  bool ldvarg9 ;
  void *ldvarg66 ;
  void *tmp___11 ;
  void *ldvarg65 ;
  void *tmp___12 ;
  void *ldvarg57 ;
  void *tmp___13 ;
  unsigned int ldvarg8 ;
  struct v4l2_frequency *ldvarg62 ;
  void *tmp___14 ;
  void *ldvarg80 ;
  void *tmp___15 ;
  void *ldvarg39 ;
  void *tmp___16 ;
  void *ldvarg34 ;
  void *tmp___17 ;
  void *ldvarg14 ;
  void *tmp___18 ;
  void *ldvarg48 ;
  void *tmp___19 ;
  void *ldvarg38 ;
  void *tmp___20 ;
  struct v4l2_tuner *ldvarg35 ;
  void *tmp___21 ;
  void *ldvarg24 ;
  void *tmp___22 ;
  void *ldvarg29 ;
  void *tmp___23 ;
  void *ldvarg37 ;
  void *tmp___24 ;
  void *ldvarg56 ;
  void *tmp___25 ;
  void *ldvarg72 ;
  void *tmp___26 ;
  struct v4l2_framebuffer *ldvarg71 ;
  void *tmp___27 ;
  void *ldvarg43 ;
  void *tmp___28 ;
  void *ldvarg67 ;
  void *tmp___29 ;
  void *ldvarg23 ;
  void *tmp___30 ;
  void *ldvarg11 ;
  void *tmp___31 ;
  void *ldvarg18 ;
  void *tmp___32 ;
  unsigned int ldvarg77 ;
  void *ldvarg75 ;
  void *tmp___33 ;
  struct v4l2_capability *ldvarg19 ;
  void *tmp___34 ;
  void *ldvarg76 ;
  void *tmp___35 ;
  void *ldvarg82 ;
  void *tmp___36 ;
  void *ldvarg54 ;
  void *tmp___37 ;
  void *ldvarg30 ;
  void *tmp___38 ;
  void *ldvarg68 ;
  void *tmp___39 ;
  void *ldvarg70 ;
  void *tmp___40 ;
  void *ldvarg63 ;
  void *tmp___41 ;
  struct v4l2_sliced_vbi_cap *ldvarg45 ;
  void *tmp___42 ;
  unsigned int *ldvarg81 ;
  void *tmp___43 ;
  struct v4l2_dbg_register *ldvarg40 ;
  void *tmp___44 ;
  void *ldvarg10 ;
  void *tmp___45 ;
  void *ldvarg36 ;
  void *tmp___46 ;
  struct v4l2_dbg_register *ldvarg55 ;
  void *tmp___47 ;
  struct v4l2_input *ldvarg13 ;
  void *tmp___48 ;
  void *ldvarg79 ;
  void *tmp___49 ;
  void *ldvarg49 ;
  void *tmp___50 ;
  void *ldvarg59 ;
  void *tmp___51 ;
  void *ldvarg41 ;
  void *tmp___52 ;
  unsigned int *ldvarg60 ;
  void *tmp___53 ;
  void *ldvarg31 ;
  void *tmp___54 ;
  void *ldvarg20 ;
  void *tmp___55 ;
  unsigned int ldvarg47 ;
  void *ldvarg28 ;
  void *tmp___56 ;
  struct v4l2_audio *ldvarg4 ;
  void *tmp___57 ;
  void *ldvarg16 ;
  void *tmp___58 ;
  void *ldvarg6 ;
  void *tmp___59 ;
  v4l2_std_id ldvarg33 ;
  void *ldvarg5 ;
  void *tmp___60 ;
  void *ldvarg69 ;
  void *tmp___61 ;
  void *ldvarg83 ;
  void *tmp___62 ;
  void *ldvarg44 ;
  void *tmp___63 ;
  struct v4l2_audioout *ldvarg64 ;
  void *tmp___64 ;
  void *ldvarg53 ;
  void *tmp___65 ;
  unsigned int ldvarg58 ;
  void *ldvarg46 ;
  void *tmp___66 ;
  struct v4l2_framebuffer *ldvarg50 ;
  void *tmp___67 ;
  void *ldvarg12 ;
  void *tmp___68 ;
  struct v4l2_enc_idx *ldvarg42 ;
  void *tmp___69 ;
  void *ldvarg7 ;
  void *tmp___70 ;
  void *ldvarg32 ;
  void *tmp___71 ;
  void *ldvarg51 ;
  void *tmp___72 ;
  void *ldvarg84 ;
  void *tmp___73 ;
  int tmp___74 ;
  {
  tmp = ldv_init_zalloc(72UL);
  ldvarg52 = (struct v4l2_output *)tmp;
  tmp___0 = ldv_init_zalloc(84UL);
  ldvarg74 = (struct v4l2_tuner *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg22 = tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg61 = tmp___2;
  tmp___3 = ldv_init_zalloc(44UL);
  ldvarg17 = (struct v4l2_frequency *)tmp___3;
  tmp___4 = ldv_init_zalloc(44UL);
  ldvarg25 = (struct v4l2_cropcap *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg21 = tmp___5;
  tmp___6 = ldv_init_zalloc(8UL);
  ldvarg15 = (v4l2_std_id *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg78 = tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg73 = tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg26 = tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg27 = tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg66 = tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg65 = tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg57 = tmp___13;
  tmp___14 = ldv_init_zalloc(44UL);
  ldvarg62 = (struct v4l2_frequency *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg80 = tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg39 = tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg34 = tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg14 = tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg48 = tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg38 = tmp___20;
  tmp___21 = ldv_init_zalloc(84UL);
  ldvarg35 = (struct v4l2_tuner *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg24 = tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg29 = tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg37 = tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg56 = tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg72 = tmp___26;
  tmp___27 = ldv_init_zalloc(48UL);
  ldvarg71 = (struct v4l2_framebuffer *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg43 = tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg67 = tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg23 = tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg11 = tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg18 = tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg75 = tmp___33;
  tmp___34 = ldv_init_zalloc(104UL);
  ldvarg19 = (struct v4l2_capability *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg76 = tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg82 = tmp___36;
  tmp___37 = ldv_init_zalloc(1UL);
  ldvarg54 = tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg30 = tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg68 = tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg70 = tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg63 = tmp___41;
  tmp___42 = ldv_init_zalloc(116UL);
  ldvarg45 = (struct v4l2_sliced_vbi_cap *)tmp___42;
  tmp___43 = ldv_init_zalloc(4UL);
  ldvarg81 = (unsigned int *)tmp___43;
  tmp___44 = ldv_init_zalloc(56UL);
  ldvarg40 = (struct v4l2_dbg_register *)tmp___44;
  tmp___45 = ldv_init_zalloc(1UL);
  ldvarg10 = tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg36 = tmp___46;
  tmp___47 = ldv_init_zalloc(56UL);
  ldvarg55 = (struct v4l2_dbg_register *)tmp___47;
  tmp___48 = ldv_init_zalloc(80UL);
  ldvarg13 = (struct v4l2_input *)tmp___48;
  tmp___49 = ldv_init_zalloc(1UL);
  ldvarg79 = tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg49 = tmp___50;
  tmp___51 = ldv_init_zalloc(1UL);
  ldvarg59 = tmp___51;
  tmp___52 = ldv_init_zalloc(1UL);
  ldvarg41 = tmp___52;
  tmp___53 = ldv_init_zalloc(4UL);
  ldvarg60 = (unsigned int *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg31 = tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg20 = tmp___55;
  tmp___56 = ldv_init_zalloc(1UL);
  ldvarg28 = tmp___56;
  tmp___57 = ldv_init_zalloc(52UL);
  ldvarg4 = (struct v4l2_audio *)tmp___57;
  tmp___58 = ldv_init_zalloc(1UL);
  ldvarg16 = tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg6 = tmp___59;
  tmp___60 = ldv_init_zalloc(1UL);
  ldvarg5 = tmp___60;
  tmp___61 = ldv_init_zalloc(1UL);
  ldvarg69 = tmp___61;
  tmp___62 = ldv_init_zalloc(1UL);
  ldvarg83 = tmp___62;
  tmp___63 = ldv_init_zalloc(1UL);
  ldvarg44 = tmp___63;
  tmp___64 = ldv_init_zalloc(52UL);
  ldvarg64 = (struct v4l2_audioout *)tmp___64;
  tmp___65 = ldv_init_zalloc(1UL);
  ldvarg53 = tmp___65;
  tmp___66 = ldv_init_zalloc(1UL);
  ldvarg46 = tmp___66;
  tmp___67 = ldv_init_zalloc(48UL);
  ldvarg50 = (struct v4l2_framebuffer *)tmp___67;
  tmp___68 = ldv_init_zalloc(1UL);
  ldvarg12 = tmp___68;
  tmp___69 = ldv_init_zalloc(2072UL);
  ldvarg42 = (struct v4l2_enc_idx *)tmp___69;
  tmp___70 = ldv_init_zalloc(1UL);
  ldvarg7 = tmp___70;
  tmp___71 = ldv_init_zalloc(1UL);
  ldvarg32 = tmp___71;
  tmp___72 = ldv_init_zalloc(1UL);
  ldvarg51 = tmp___72;
  tmp___73 = ldv_init_zalloc(1UL);
  ldvarg84 = tmp___73;
  ldv_memset((void *)(& ldvarg9), 0, 1UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg77), 0, 4UL);
  ldv_memset((void *)(& ldvarg47), 0, 4UL);
  ldv_memset((void *)(& ldvarg33), 0, 8UL);
  ldv_memset((void *)(& ldvarg58), 0, 4UL);
  tmp___74 = __VERIFIER_nondet_int();
  switch (tmp___74) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_vid_out(ivtv_ioctl_ops_group3, ldvarg84, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_sliced_vbi_cap(ivtv_ioctl_ops_group3, ldvarg83, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 2: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_output(ivtv_ioctl_ops_group3, ldvarg82, ldvarg81);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 3: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_vbi_cap(ivtv_ioctl_ops_group3, ldvarg80, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 4: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_vid_out(ivtv_ioctl_ops_group3, ldvarg79, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 5: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_overlay(ivtv_ioctl_ops_group3, ldvarg78, ldvarg77);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 6: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_vid_cap(ivtv_ioctl_ops_group3, ldvarg76, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 7: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_tuner(ivtv_ioctl_ops_group3, ldvarg75, (struct v4l2_tuner const *)ldvarg74);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 8: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_encoder_cmd(ivtv_ioctl_ops_group3, ldvarg73, ivtv_ioctl_ops_group8);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 9: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fbuf(ivtv_ioctl_ops_group3, ldvarg72, ldvarg71);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 10: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enum_fmt_vid_cap(ivtv_ioctl_ops_group3, ldvarg70, ivtv_ioctl_ops_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 11: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_encoder_cmd(ivtv_ioctl_ops_group3, ldvarg69, ivtv_ioctl_ops_group8);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 12: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_vid_cap(ivtv_ioctl_ops_group3, ldvarg68, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 13: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_vid_out_overlay(ivtv_ioctl_ops_group3, ldvarg67, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 14: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_sliced_vbi_out(ivtv_ioctl_ops_group3, ldvarg66, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 15: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_audout(ivtv_ioctl_ops_group3, ldvarg65, (struct v4l2_audioout const *)ldvarg64);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 16: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_frequency(ivtv_ioctl_ops_group3, ldvarg63, ldvarg62);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 17: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_input(ivtv_ioctl_ops_group3, ldvarg61, ldvarg60);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 18: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_output(ivtv_ioctl_ops_group3, ldvarg59, ldvarg58);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 19: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_audout(ivtv_ioctl_ops_group3, ldvarg57, ivtv_ioctl_ops_group7);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 20: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_register(ivtv_ioctl_ops_group3, ldvarg56, ldvarg55);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 21: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enum_fmt_vid_out(ivtv_ioctl_ops_group3, ldvarg54, ivtv_ioctl_ops_group0);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 22: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enum_output(ivtv_ioctl_ops_group3, ldvarg53, ldvarg52);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 23: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fbuf(ivtv_ioctl_ops_group3, ldvarg51, (struct v4l2_framebuffer const *)ldvarg50);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 24: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enumaudout(ivtv_ioctl_ops_group3, ldvarg49, ivtv_ioctl_ops_group7);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 25: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_input(ivtv_ioctl_ops_group3, ldvarg48, ldvarg47);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 26: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_sliced_vbi_cap(ivtv_ioctl_ops_group3, ldvarg46, ldvarg45);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 27: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_sliced_vbi_cap(ivtv_ioctl_ops_group3, ldvarg44, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 28: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_enc_index(ivtv_ioctl_ops_group3, ldvarg43, ldvarg42);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 29: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_register(ivtv_ioctl_ops_group3, ldvarg41, (struct v4l2_dbg_register const *)ldvarg40);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 30: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enumaudio(ivtv_ioctl_ops_group3, ldvarg39, ivtv_ioctl_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 31: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_selection(ivtv_ioctl_ops_group3, ldvarg38, ivtv_ioctl_ops_group9);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 32: ;
  if (ldv_state_variable_7 == 1) {
    v4l2_event_unsubscribe(ivtv_ioctl_ops_group4, ivtv_ioctl_ops_group1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 33: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_vid_out(ivtv_ioctl_ops_group3, ldvarg37, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 34: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_tuner(ivtv_ioctl_ops_group3, ldvarg36, ldvarg35);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 35: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_std(ivtv_ioctl_ops_group3, ldvarg34, ldvarg33);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 36: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_decoder_cmd(ivtv_ioctl_ops_group3, ldvarg32, ivtv_ioctl_ops_group5);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 37: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_vbi_cap(ivtv_ioctl_ops_group3, ldvarg31, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 38: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_log_status(ivtv_ioctl_ops_group3, ldvarg30);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 39: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_decoder_cmd(ivtv_ioctl_ops_group3, ldvarg29, ivtv_ioctl_ops_group5);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 40: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_sliced_vbi_out(ivtv_ioctl_ops_group3, ldvarg28, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 41: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_selection(ivtv_ioctl_ops_group3, ldvarg27, ivtv_ioctl_ops_group9);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 42: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_cropcap(ivtv_ioctl_ops_group3, ldvarg26, ldvarg25);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 43: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_vid_cap(ivtv_ioctl_ops_group3, ldvarg24, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 44: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_sliced_vbi_cap(ivtv_ioctl_ops_group3, ldvarg23, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 45: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_audio(ivtv_ioctl_ops_group3, ldvarg22, ivtv_ioctl_ops_group2);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 46: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_fmt_vid_out_overlay(ivtv_ioctl_ops_group3, ldvarg21, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 47: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_querycap(ivtv_ioctl_ops_group3, ldvarg20, ldvarg19);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 48: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_frequency(ivtv_ioctl_ops_group3, ldvarg18, (struct v4l2_frequency const *)ldvarg17);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 49: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_std(ivtv_ioctl_ops_group3, ldvarg16, ldvarg15);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 50: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_enum_input(ivtv_ioctl_ops_group3, ldvarg14, ldvarg13);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 51: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_vid_out_overlay(ivtv_ioctl_ops_group3, ldvarg12, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 52: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_subscribe_event(ivtv_ioctl_ops_group4, ivtv_ioctl_ops_group1);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 53: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_default(ivtv_ioctl_ops_group3, ldvarg10, (int )ldvarg9, ldvarg8, ldvarg11);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 54: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_g_fmt_vbi_cap(ivtv_ioctl_ops_group3, ldvarg7, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 55: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_try_fmt_sliced_vbi_out(ivtv_ioctl_ops_group3, ldvarg6, ivtv_ioctl_ops_group6);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  case 56: ;
  if (ldv_state_variable_7 == 1) {
    ivtv_s_audio(ivtv_ioctl_ops_group3, ldvarg5, (struct v4l2_audio const *)ldvarg4);
    ldv_state_variable_7 = 1;
  } else {
  }
  goto ldv_42841;
  default:
  ldv_stop();
  }
  ldv_42841: ;
  return;
}
}
bool ldv_queue_work_on_131(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_132(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_133(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_134(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_135(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_150(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_151(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_152(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
bool ldv_queue_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_147(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_148(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  memcpy(dst, (void const *)src, count);
  return;
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
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
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
    ldv_30285: ;
    goto ldv_30285;
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
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
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
                         "i" (120), "i" (12UL));
    ldv_30293: ;
    goto ldv_30293;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
extern bool queue_kthread_work(struct kthread_worker * , struct kthread_work * ) ;
__inline static int ivtv_use_pio(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  {
  itv = s->itv;
  return (s->dma == 3);
}
}
__inline static int ivtv_use_dma(struct ivtv_stream *s )
{
  int tmp ;
  {
  tmp = ivtv_use_pio(s);
  return (tmp == 0);
}
}
__inline static void ivtv_buf_sync_for_cpu(struct ivtv_stream *s , struct ivtv_buffer *buf )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_cpu((s->itv)->pdev, buf->dma_handle, (size_t )(s->buf_size + 256U),
                                s->dma);
  } else {
  }
  return;
}
}
__inline static void ivtv_buf_sync_for_device(struct ivtv_stream *s , struct ivtv_buffer *buf )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_device((s->itv)->pdev, buf->dma_handle, (size_t )(s->buf_size + 256U),
                                   s->dma);
  } else {
  }
  return;
}
}
__inline static void ivtv_stream_sync_for_cpu(struct ivtv_stream *s )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_cpu((s->itv)->pdev, s->sg_handle, 12UL, 1);
  } else {
  }
  return;
}
}
__inline static void ivtv_stream_sync_for_device(struct ivtv_stream *s )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_device((s->itv)->pdev, s->sg_handle, 12UL, 1);
  } else {
  }
  return;
}
}
void ivtv_udma_start(struct ivtv *itv ) ;
void ivtv_vbi_work_handler(struct ivtv *itv ) ;
u32 const yuv_offset[8U] ;
void ivtv_yuv_frame_complete(struct ivtv *itv ) ;
void ivtv_yuv_work_handler(struct ivtv *itv ) ;
extern void v4l2_event_queue(struct video_device * , struct v4l2_event const * ) ;
static void ivtv_dma_dec_start(struct ivtv_stream *s ) ;
static int const ivtv_stream_map[4U] = { 0, 1, 3, 2};
static void ivtv_pcm_work_handler(struct ivtv *itv )
{
  struct ivtv_stream *s ;
  struct ivtv_buffer *buf ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + 3UL;
  ldv_39122:
  buf = ivtv_dequeue(s, & s->q_io);
  if ((unsigned long )buf == (unsigned long )((struct ivtv_buffer *)0)) {
    buf = ivtv_dequeue(s, & s->q_full);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((struct ivtv_buffer *)0)) {
    goto ldv_39121;
  } else {
  }
  if (buf->readpos < buf->bytesused) {
    (*(itv->pcm_announce_callback))(itv->alsa, (u8 *)buf->buf + (unsigned long )buf->readpos,
                                    (unsigned long )(buf->bytesused - buf->readpos));
  } else {
  }
  ivtv_enqueue(s, buf, & s->q_free);
  goto ldv_39122;
  ldv_39121: ;
  return;
}
}
static void ivtv_pio_work_handler(struct ivtv *itv )
{
  struct ivtv_stream *s ;
  struct ivtv_buffer *buf ;
  int i ;
  int tmp ;
  struct list_head const *__mptr ;
  u32 size ;
  struct list_head const *__mptr___0 ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )itv->cur_pio_stream;
  i = 0;
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  dma: ivtv_pio_work_handler\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if ((itv->cur_pio_stream < 0 || itv->cur_pio_stream > 8) || (unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    itv->cur_pio_stream = -1;
    writel(33554432U, itv->reg_mem + 68UL);
    return;
  } else {
    tmp = ivtv_use_pio(s);
    if (tmp == 0) {
      itv->cur_pio_stream = -1;
      writel(33554432U, itv->reg_mem + 68UL);
      return;
    } else {
    }
  }
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  dma: Process PIO %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  __mptr = (struct list_head const *)s->q_dma.list.next;
  buf = (struct ivtv_buffer *)__mptr;
  goto ldv_39136;
  ldv_39135:
  size = (s->sg_processing + (unsigned long )i)->size & 262143U;
  if (s->type == 6) {
    memcpy_fromio((void *)buf->buf, (void const volatile *)(itv->dec_mem + ((unsigned long )(s->sg_processing + (unsigned long )i)->src + 0xffffffffff000000UL)),
                  (size_t )size);
  } else {
    memcpy_fromio((void *)buf->buf, (void const volatile *)itv->enc_mem + (unsigned long )(s->sg_processing + (unsigned long )i)->src,
                  (size_t )size);
  }
  i = i + 1;
  if (s->sg_processing_size == i) {
    goto ldv_39134;
  } else {
  }
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct ivtv_buffer *)__mptr___0;
  ldv_39136: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& s->q_dma.list)) {
    goto ldv_39135;
  } else {
  }
  ldv_39134:
  writel(33554432U, itv->reg_mem + 68UL);
  return;
}
}
void ivtv_irq_work_handler(struct kthread_work *work )
{
  struct ivtv *itv ;
  struct kthread_work const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct kthread_work const *)work;
  itv = (struct ivtv *)__mptr + 0xffffffffffffa690UL;
  tmp = test_and_clear_bit(18L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp != 0) {
    ivtv_pio_work_handler(itv);
  } else {
  }
  tmp___0 = test_and_clear_bit(16L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___0 != 0) {
    ivtv_vbi_work_handler(itv);
  } else {
  }
  tmp___1 = test_and_clear_bit(17L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___1 != 0) {
    ivtv_yuv_work_handler(itv);
  } else {
  }
  tmp___2 = test_and_clear_bit(23L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___2 != 0) {
    ivtv_pcm_work_handler(itv);
  } else {
  }
  return;
}
}
static int stream_enc_dma_append(struct ivtv_stream *s , u32 *data )
{
  struct ivtv *itv ;
  struct ivtv_buffer *buf ;
  u32 bytes_needed ;
  u32 offset ;
  u32 size ;
  u32 UVoffset ;
  u32 UVsize ;
  int skip_bufs ;
  int idx ;
  int rc ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___10 ;
  u32 _min1 ;
  u32 _min2 ;
  struct list_head const *__mptr___1 ;
  {
  itv = s->itv;
  bytes_needed = 0U;
  UVoffset = 0U;
  UVsize = 0U;
  skip_bufs = (int )s->q_predma.buffers;
  idx = s->sg_pending_size;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Stream %s not started\n", (char *)(& itv->v4l2_dev.name),
             s->name);
    } else {
    }
    return (-1);
  } else {
  }
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp == 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Stream %s not open\n", (char *)(& itv->v4l2_dev.name),
             s->name);
    } else {
    }
    return (-1);
  } else {
  }
  switch (s->type) {
  case 0:
  offset = *(data + 1UL);
  size = *(data + 2UL);
  s->pending_pts = 0ULL;
  goto ldv_39158;
  case 1:
  offset = *(data + 1UL);
  size = *(data + 2UL);
  UVoffset = *(data + 3UL);
  UVsize = *(data + 4UL);
  s->pending_pts = ((unsigned long long )*(data + 5UL) << 32) | (unsigned long long )*(data + 6UL);
  goto ldv_39158;
  case 3:
  offset = *(data + 1UL) + 12U;
  size = *(data + 2UL) - 12U;
  tmp___0 = readl((void const volatile *)itv->dec_mem + (unsigned long )(offset - 8U));
  tmp___1 = readl((void const volatile *)itv->dec_mem + (unsigned long )(offset - 12U));
  s->pending_pts = (unsigned long long )tmp___0 | ((unsigned long long )tmp___1 << 32);
  if ((unsigned int )itv->has_cx23415 != 0U) {
    offset = offset + 16777216U;
  } else {
  }
  goto ldv_39158;
  case 2:
  size = itv->vbi.enc_size * (u32 )itv->vbi.fpi;
  tmp___2 = readl((void const volatile *)itv->enc_mem + (unsigned long )(itv->vbi.enc_start - 4U));
  offset = tmp___2 + 12U;
  if (offset == 12U) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: VBI offset == 0\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-1);
  } else {
  }
  tmp___3 = readl((void const volatile *)itv->enc_mem + (unsigned long )(offset - 4U));
  tmp___4 = readl((void const volatile *)itv->enc_mem + (unsigned long )(offset - 8U));
  s->pending_pts = (unsigned long long )tmp___3 | ((unsigned long long )tmp___4 << 32);
  goto ldv_39158;
  case 6:
  tmp___5 = readl((void const volatile *)itv->dec_mem + (unsigned long )(itv->vbi.dec_start + 4U));
  size = tmp___5 + 8U;
  tmp___6 = readl((void const volatile *)itv->dec_mem + (unsigned long )itv->vbi.dec_start);
  offset = tmp___6 + itv->vbi.dec_start;
  s->pending_pts = 0ULL;
  offset = offset + 16777216U;
  goto ldv_39158;
  default: ;
  return (-1);
  }
  ldv_39158: ;
  if (s->sg_pending_size == 0) {
    tmp___7 = ivtv_use_dma(s);
    if (tmp___7 != 0) {
      if ((unsigned int )itv->has_cx23415 != 0U && (s->type == 3 || s->type == 6)) {
        s->pending_backup = readl((void const volatile *)itv->dec_mem + (unsigned long )(offset - 16777216U));
        writel(510U, itv->dec_mem + (unsigned long )(offset - 16777216U));
        readl((void const volatile *)itv->dec_mem + (unsigned long )(offset - 16777216U));
      } else {
        s->pending_backup = readl((void const volatile *)itv->enc_mem + (unsigned long )offset);
        writel(510U, itv->enc_mem + (unsigned long )offset);
        readl((void const volatile *)itv->enc_mem + (unsigned long )offset);
      }
      s->pending_offset = offset;
    } else {
    }
  } else {
  }
  bytes_needed = size;
  if (s->type == 1) {
    bytes_needed = s->buf_size * (((s->buf_size + bytes_needed) - 1U) / s->buf_size);
    bytes_needed = bytes_needed + UVsize;
  } else {
  }
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    tmp___8 = ivtv_use_pio(s);
    printk("\016%s:  dma: %s %s: 0x%08x bytes at 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           tmp___8 != 0 ? (char *)"PIO" : (char *)"DMA", s->name, bytes_needed, offset);
  } else {
  }
  rc = ivtv_queue_move(s, & s->q_free, & s->q_full, & s->q_predma, (int )bytes_needed);
  if (rc < 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Cannot obtain %d bytes for %s data transfer\n", (char *)(& itv->v4l2_dev.name),
             bytes_needed, s->name);
    } else {
    }
    return (-1);
  } else {
  }
  if (rc != 0 && s->buffers_stolen == 0U) {
    tmp___9 = constant_test_bit(8L, (unsigned long const volatile *)(& s->s_flags));
    if (tmp___9 != 0) {
      printk("\f%s: All %s stream buffers are full. Dropping data.\n", (char *)(& itv->v4l2_dev.name),
             s->name);
      printk("\f%s: Cause: the application is not reading fast enough.\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  s->buffers_stolen = (u32 )rc;
  __mptr = (struct list_head const *)s->q_predma.list.next;
  buf = (struct ivtv_buffer *)__mptr;
  memset((void *)buf->buf, 0, 128UL);
  __mptr___0 = (struct list_head const *)s->q_predma.list.next;
  buf = (struct ivtv_buffer *)__mptr___0;
  goto ldv_39175;
  ldv_39174:
  tmp___10 = skip_bufs;
  skip_bufs = skip_bufs - 1;
  if (tmp___10 > 0) {
    goto ldv_39170;
  } else {
  }
  (s->sg_pending + (unsigned long )idx)->dst = (u32 )buf->dma_handle;
  (s->sg_pending + (unsigned long )idx)->src = offset;
  (s->sg_pending + (unsigned long )idx)->size = s->buf_size;
  _min1 = size;
  _min2 = s->buf_size;
  buf->bytesused = _min1 < _min2 ? _min1 : _min2;
  buf->dma_xfer_cnt = s->dma_xfer_cnt;
  s->q_predma.bytesused = s->q_predma.bytesused + buf->bytesused;
  size = size - buf->bytesused;
  offset = s->buf_size + offset;
  ivtv_buf_sync_for_device(s, buf);
  if (size == 0U) {
    offset = UVoffset;
    size = UVsize;
  } else {
  }
  idx = idx + 1;
  ldv_39170:
  __mptr___1 = (struct list_head const *)buf->list.next;
  buf = (struct ivtv_buffer *)__mptr___1;
  ldv_39175: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& s->q_predma.list)) {
    goto ldv_39174;
  } else {
  }
  s->sg_pending_size = idx;
  return (0);
}
}
static void dma_post(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  struct ivtv_buffer *buf ;
  struct list_head *p ;
  u32 offset ;
  __le32 *u32buf ;
  int x ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  itv = s->itv;
  buf = (struct ivtv_buffer *)0;
  x = 0;
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    tmp = ivtv_use_pio(s);
    printk("\016%s:  dma: %s %s completed (%x)\n", (char *)(& itv->v4l2_dev.name),
           tmp != 0 ? (char *)"PIO" : (char *)"DMA", s->name, s->dma_offset);
  } else {
  }
  p = s->q_dma.list.next;
  goto ldv_39192;
  ldv_39191:
  __mptr = (struct list_head const *)p;
  buf = (struct ivtv_buffer *)__mptr;
  u32buf = (__le32 *)buf->buf;
  ivtv_buf_sync_for_cpu(s, buf);
  if (x == 0) {
    tmp___0 = ivtv_use_dma(s);
    if (tmp___0 != 0) {
      offset = s->dma_last_offset;
      if (*(u32buf + (unsigned long )(offset / 4U)) != 510U) {
        offset = 0U;
        goto ldv_39190;
        ldv_39189: ;
        if (*(u32buf + (unsigned long )offset) == 510U) {
          goto ldv_39188;
        } else {
        }
        offset = offset + 1U;
        ldv_39190: ;
        if (offset <= 63U) {
          goto ldv_39189;
        } else {
        }
        ldv_39188:
        offset = offset * 4U;
        if (offset == 256U) {
          if (ivtv_debug & 1) {
            printk("\016%s:  warn: %s: Couldn\'t find start of buffer within the first 256 bytes\n",
                   (char *)(& itv->v4l2_dev.name), s->name);
          } else {
          }
          offset = s->dma_last_offset;
        } else {
        }
        if (s->dma_last_offset != offset) {
          if (ivtv_debug & 1) {
            printk("\016%s:  warn: %s: offset %d -> %d\n", (char *)(& itv->v4l2_dev.name),
                   s->name, s->dma_last_offset, offset);
          } else {
          }
        } else {
        }
        s->dma_last_offset = offset;
      } else {
      }
      if ((unsigned int )itv->has_cx23415 != 0U && (s->type == 3 || s->type == 6)) {
        writel(0U, itv->dec_mem + (unsigned long )(s->dma_offset - 16777216U));
        readl((void const volatile *)itv->dec_mem + (unsigned long )(s->dma_offset - 16777216U));
      } else {
        writel(0U, itv->enc_mem + (unsigned long )s->dma_offset);
        readl((void const volatile *)itv->enc_mem + (unsigned long )s->dma_offset);
      }
      if (offset != 0U) {
        buf->bytesused = buf->bytesused - offset;
        memcpy((void *)buf->buf, (void const *)buf->buf + (unsigned long )offset,
                 (size_t )(buf->bytesused + offset));
      } else {
      }
      *u32buf = s->dma_backup;
    } else {
    }
  } else {
  }
  x = x + 1;
  if (s->type == 0 || s->type == 2) {
    buf->b_flags = (unsigned int )buf->b_flags | 1U;
  } else {
  }
  p = p->next;
  ldv_39192: ;
  if ((unsigned long )(& s->q_dma.list) != (unsigned long )p) {
    goto ldv_39191;
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
    buf->bytesused = buf->bytesused + s->dma_last_offset;
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0) && s->type == 6) {
    __mptr___0 = (struct list_head const *)s->q_dma.list.next;
    buf = (struct ivtv_buffer *)__mptr___0;
    goto ldv_39199;
    ldv_39198:
    s->q_dma.bytesused = s->q_dma.bytesused - buf->bytesused;
    ivtv_process_vbi_data(itv, buf, 0ULL, s->type);
    s->q_dma.bytesused = s->q_dma.bytesused + buf->bytesused;
    __mptr___1 = (struct list_head const *)buf->list.next;
    buf = (struct ivtv_buffer *)__mptr___1;
    ldv_39199: ;
    if ((unsigned long )(& buf->list) != (unsigned long )(& s->q_dma.list)) {
      goto ldv_39198;
    } else {
    }
    if ((unsigned long )s->fh == (unsigned long )((struct v4l2_fh *)0)) {
      ivtv_queue_move(s, & s->q_dma, (struct ivtv_queue *)0, & s->q_free, 0);
      return;
    } else {
    }
  } else {
  }
  ivtv_queue_move(s, & s->q_dma, (struct ivtv_queue *)0, & s->q_full, (int )s->q_dma.bytesused);
  if (s->type == 3 && (unsigned long )itv->pcm_announce_callback != (unsigned long )((void (*)(struct snd_ivtv_card * ,
                                                                                               u8 * ,
                                                                                               size_t ))0)) {
    set_bit(23L, (unsigned long volatile *)(& itv->i_flags));
    set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
  } else {
  }
  if ((unsigned long )s->fh != (unsigned long )((struct v4l2_fh *)0)) {
    __wake_up(& s->waitq, 3U, 1, (void *)0);
  } else {
  }
  return;
}
}
void ivtv_dma_stream_dec_prepare(struct ivtv_stream *s , u32 offset , int lock )
{
  struct ivtv *itv ;
  struct yuv_playback_info *yi ;
  u8 frame ;
  struct yuv_frame_info *f ;
  struct ivtv_buffer *buf ;
  u32 y_size ;
  u32 uv_offset ;
  int y_done ;
  int bytes_written ;
  int idx ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  itv = s->itv;
  yi = & itv->yuv_info;
  frame = yi->draw_frame;
  f = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )frame;
  y_size = ((f->src_h + 31U) & 4294967264U) * 720U;
  uv_offset = offset + 414720U;
  y_done = 0;
  bytes_written = 0;
  idx = 0;
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  dma: DEC PREPARE DMA %s: %08x %08x\n", (char *)(& itv->v4l2_dev.name),
           s->name, s->q_predma.bytesused, offset);
  } else {
  }
  if (s->type == 8 && f->offset_y != 0U) {
    if (yi->blanking_dmaptr != 0ULL) {
      (s->sg_pending + (unsigned long )idx)->src = (u32 )yi->blanking_dmaptr;
      (s->sg_pending + (unsigned long )idx)->dst = offset;
      (s->sg_pending + (unsigned long )idx)->size = 11520U;
    } else {
    }
    offset = offset + 11520U;
    idx = idx + 1;
  } else {
  }
  __mptr = (struct list_head const *)s->q_predma.list.next;
  buf = (struct ivtv_buffer *)__mptr;
  goto ldv_39221;
  ldv_39220: ;
  if ((s->type == 8 && y_done == 0) && buf->bytesused + (u32 )bytes_written >= y_size) {
    (s->sg_pending + (unsigned long )idx)->src = (u32 )buf->dma_handle;
    (s->sg_pending + (unsigned long )idx)->dst = offset;
    (s->sg_pending + (unsigned long )idx)->size = y_size - (u32 )bytes_written;
    offset = uv_offset;
    if ((s->sg_pending + (unsigned long )idx)->size != buf->bytesused) {
      idx = idx + 1;
      (s->sg_pending + (unsigned long )idx)->src = (u32 )buf->dma_handle + (s->sg_pending + ((unsigned long )idx + 0xffffffffffffffffUL))->size;
      (s->sg_pending + (unsigned long )idx)->dst = offset;
      (s->sg_pending + (unsigned long )idx)->size = buf->bytesused - (s->sg_pending + ((unsigned long )idx + 0xffffffffffffffffUL))->size;
      offset = (s->sg_pending + (unsigned long )idx)->size + offset;
    } else {
    }
    y_done = 1;
  } else {
    (s->sg_pending + (unsigned long )idx)->src = (u32 )buf->dma_handle;
    (s->sg_pending + (unsigned long )idx)->dst = offset;
    (s->sg_pending + (unsigned long )idx)->size = buf->bytesused;
    offset = buf->bytesused + offset;
  }
  bytes_written = (int )(buf->bytesused + (u32 )bytes_written);
  ivtv_buf_sync_for_device(s, buf);
  idx = idx + 1;
  __mptr___0 = (struct list_head const *)buf->list.next;
  buf = (struct ivtv_buffer *)__mptr___0;
  ldv_39221: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& s->q_predma.list)) {
    goto ldv_39220;
  } else {
  }
  s->sg_pending_size = idx;
  ivtv_stream_sync_for_device(s);
  if (lock != 0) {
    flags = 0UL;
    tmp = spinlock_check(& itv->dma_reg_lock);
    flags = _raw_spin_lock_irqsave(tmp);
    tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___0 == 0) {
      ivtv_dma_dec_start(s);
    } else {
      set_bit(0L, (unsigned long volatile *)(& s->s_flags));
    }
    spin_unlock_irqrestore(& itv->dma_reg_lock, flags);
  } else {
    tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___1 == 0) {
      ivtv_dma_dec_start(s);
    } else {
      set_bit(0L, (unsigned long volatile *)(& s->s_flags));
    }
  }
  return;
}
}
static void ivtv_dma_enc_start_xfer(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  {
  itv = s->itv;
  (s->sg_dma)->src = (s->sg_processing + (unsigned long )s->sg_processed)->src;
  (s->sg_dma)->dst = (s->sg_processing + (unsigned long )s->sg_processed)->dst;
  (s->sg_dma)->size = (s->sg_processing + (unsigned long )s->sg_processed)->size | 2147483648U;
  s->sg_processed = s->sg_processed + 1;
  ivtv_stream_sync_for_device(s);
  writel((unsigned int )s->sg_handle, itv->reg_mem + 12UL);
  tmp = readl((void const volatile *)itv->reg_mem);
  writel(tmp | 2U, itv->reg_mem);
  readl((void const volatile *)itv->reg_mem);
  tmp___0 = msecs_to_jiffies(300U);
  itv->dma_timer.expires = tmp___0 + (unsigned long )jiffies;
  add_timer(& itv->dma_timer);
  return;
}
}
static void ivtv_dma_dec_start_xfer(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  {
  itv = s->itv;
  (s->sg_dma)->src = (s->sg_processing + (unsigned long )s->sg_processed)->src;
  (s->sg_dma)->dst = (s->sg_processing + (unsigned long )s->sg_processed)->dst;
  (s->sg_dma)->size = (s->sg_processing + (unsigned long )s->sg_processed)->size | 2147483648U;
  s->sg_processed = s->sg_processed + 1;
  ivtv_stream_sync_for_device(s);
  writel((unsigned int )s->sg_handle, itv->reg_mem + 8UL);
  tmp = readl((void const volatile *)itv->reg_mem);
  writel(tmp | 1U, itv->reg_mem);
  readl((void const volatile *)itv->reg_mem);
  tmp___0 = msecs_to_jiffies(300U);
  itv->dma_timer.expires = tmp___0 + (unsigned long )jiffies;
  add_timer(& itv->dma_timer);
  return;
}
}
static void ivtv_dma_enc_start(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  struct ivtv_stream *s_vbi ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  itv = s->itv;
  s_vbi = (struct ivtv_stream *)(& itv->streams) + 2UL;
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    tmp = ivtv_use_dma(s);
    printk("\016%s:  dma: start %s for %s\n", (char *)(& itv->v4l2_dev.name), tmp != 0 ? (char *)"DMA" : (char *)"PIO",
           s->name);
  } else {
  }
  if (s->q_predma.bytesused != 0U) {
    ivtv_queue_move(s, & s->q_predma, (struct ivtv_queue *)0, & s->q_dma, (int )s->q_predma.bytesused);
  } else {
  }
  tmp___0 = ivtv_use_dma(s);
  if (tmp___0 != 0) {
    (s->sg_pending + ((unsigned long )s->sg_pending_size + 0xffffffffffffffffUL))->size = (s->sg_pending + ((unsigned long )s->sg_pending_size + 0xffffffffffffffffUL))->size + 256U;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& s->s_flags));
  if ((s->type == 0 && s_vbi->sg_pending_size != 0) && (u32 )(s->sg_pending_size + s_vbi->sg_pending_size) <= s->buffers) {
    ivtv_queue_move(s_vbi, & s_vbi->q_predma, (struct ivtv_queue *)0, & s_vbi->q_dma,
                    (int )s_vbi->q_predma.bytesused);
    tmp___1 = ivtv_use_dma(s_vbi);
    if (tmp___1 != 0) {
      (s_vbi->sg_pending + ((unsigned long )s_vbi->sg_pending_size + 0xffffffffffffffffUL))->size = (s_vbi->sg_pending + ((unsigned long )s_vbi->sg_pending_size + 0xffffffffffffffffUL))->size + 256U;
    } else {
    }
    i = 0;
    goto ldv_39242;
    ldv_39241:
    tmp___2 = s->sg_pending_size;
    s->sg_pending_size = s->sg_pending_size + 1;
    *(s->sg_pending + (unsigned long )tmp___2) = *(s_vbi->sg_pending + (unsigned long )i);
    i = i + 1;
    ldv_39242: ;
    if (s_vbi->sg_pending_size > i) {
      goto ldv_39241;
    } else {
    }
    s_vbi->dma_offset = s_vbi->pending_offset;
    s_vbi->sg_pending_size = 0;
    s_vbi->dma_xfer_cnt = (u16 )((int )s_vbi->dma_xfer_cnt + 1);
    set_bit(1L, (unsigned long volatile *)(& s->s_flags));
    if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  dma: include DMA for %s\n", (char *)(& itv->v4l2_dev.name),
             s_vbi->name);
    } else {
    }
  } else {
  }
  s->dma_xfer_cnt = (u16 )((int )s->dma_xfer_cnt + 1);
  memcpy((void *)s->sg_processing, (void const *)s->sg_pending, (unsigned long )s->sg_pending_size * 12UL);
  s->sg_processing_size = s->sg_pending_size;
  s->sg_pending_size = 0;
  s->sg_processed = 0;
  s->dma_offset = s->pending_offset;
  s->dma_backup = s->pending_backup;
  s->dma_pts = s->pending_pts;
  tmp___3 = ivtv_use_pio(s);
  if (tmp___3 != 0) {
    set_bit(18L, (unsigned long volatile *)(& itv->i_flags));
    set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
    set_bit(19L, (unsigned long volatile *)(& itv->i_flags));
    itv->cur_pio_stream = s->type;
  } else {
    itv->dma_retries = 0;
    ivtv_dma_enc_start_xfer(s);
    set_bit(0L, (unsigned long volatile *)(& itv->i_flags));
    itv->cur_dma_stream = s->type;
  }
  return;
}
}
static void ivtv_dma_dec_start(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  {
  itv = s->itv;
  if (s->q_predma.bytesused != 0U) {
    ivtv_queue_move(s, & s->q_predma, (struct ivtv_queue *)0, & s->q_dma, (int )s->q_predma.bytesused);
  } else {
  }
  s->dma_xfer_cnt = (u16 )((int )s->dma_xfer_cnt + 1);
  memcpy((void *)s->sg_processing, (void const *)s->sg_pending, (unsigned long )s->sg_pending_size * 12UL);
  s->sg_processing_size = s->sg_pending_size;
  s->sg_pending_size = 0;
  s->sg_processed = 0;
  if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  dma: start DMA for %s\n", (char *)(& itv->v4l2_dev.name), s->name);
  } else {
  }
  itv->dma_retries = 0;
  ivtv_dma_dec_start_xfer(s);
  set_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_dma_stream = s->type;
  return;
}
}
static void ivtv_irq_dma_read(struct ivtv *itv )
{
  struct ivtv_stream *s ;
  struct ivtv_buffer *buf ;
  int hw_stream_type ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  s = (struct ivtv_stream *)0;
  hw_stream_type = 0;
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: DEC DMA READ\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  ldv_del_timer_150(& itv->dma_timer);
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp == 0 && itv->cur_dma_stream < 0) {
    return;
  } else {
  }
  tmp___3 = constant_test_bit(1L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___3 == 0) {
    s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )itv->cur_dma_stream;
    ivtv_stream_sync_for_cpu(s);
    tmp___2 = readl((void const volatile *)itv->reg_mem + 4U);
    if ((tmp___2 & 20U) != 0U) {
      if (ivtv_debug & 1) {
        tmp___0 = readl((void const volatile *)itv->reg_mem + 4U);
        printk("\016%s:  warn: DEC DMA OLD_ERROR %x (xfer %d of %d, retry %d)\n", (char *)(& itv->v4l2_dev.name),
               tmp___0, s->sg_processed, s->sg_processing_size, itv->dma_retries);
      } else {
      }
      tmp___1 = readl((void const volatile *)itv->reg_mem + 4U);
      writel(tmp___1 & 3U, itv->reg_mem + 4UL);
      if (itv->dma_retries == 3) {
        itv->dma_retries = 0;
        s->sg_processed = s->sg_processing_size;
      } else {
        s->sg_processed = 0;
        itv->dma_retries = itv->dma_retries + 1;
      }
    } else {
    }
    if (s->sg_processed < s->sg_processing_size) {
      ivtv_dma_dec_start_xfer(s);
      return;
    } else {
    }
    if (s->type == 8) {
      hw_stream_type = 2;
    } else {
    }
    if ((ivtv_debug & 32) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  dma: DEC DATA READ %s: %d\n", (char *)(& itv->v4l2_dev.name),
             s->name, s->q_dma.bytesused);
    } else {
    }
    ivtv_vapi(itv, 11, 3, 0, s->q_dma.bytesused, hw_stream_type);
    goto ldv_39255;
    ldv_39254:
    ivtv_buf_sync_for_cpu(s, buf);
    ivtv_enqueue(s, buf, & s->q_free);
    ldv_39255:
    buf = ivtv_dequeue(s, & s->q_dma);
    if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
      goto ldv_39254;
    } else {
    }
    __wake_up(& s->waitq, 3U, 1, (void *)0);
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& itv->i_flags));
  clear_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_dma_stream = -1;
  __wake_up(& itv->dma_waitq, 3U, 1, (void *)0);
  return;
}
}
static void ivtv_irq_enc_dma_complete(struct ivtv *itv )
{
  u32 data[16U] ;
  struct ivtv_stream *s ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  ivtv_api_get_data(& itv->enc_mbox, 8, 2, (u32 *)(& data));
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: ENC DMA COMPLETE %x %d (%d)\n", (char *)(& itv->v4l2_dev.name),
           data[0], data[1], itv->cur_dma_stream);
  } else {
  }
  ldv_del_timer_151(& itv->dma_timer);
  if (itv->cur_dma_stream < 0) {
    return;
  } else {
  }
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )itv->cur_dma_stream;
  ivtv_stream_sync_for_cpu(s);
  if ((data[0] & 24U) != 0U) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: ENC DMA OLD_ERROR %x (offset %08x, xfer %d of %d, retry %d)\n",
             (char *)(& itv->v4l2_dev.name), data[0], s->dma_offset, s->sg_processed,
             s->sg_processing_size, itv->dma_retries);
    } else {
    }
    tmp = readl((void const volatile *)itv->reg_mem + 4U);
    writel(tmp & 3U, itv->reg_mem + 4UL);
    if (itv->dma_retries == 3) {
      itv->dma_retries = 0;
      s->sg_processed = s->sg_processing_size;
    } else {
      s->sg_processed = 0;
      itv->dma_retries = itv->dma_retries + 1;
    }
  } else {
  }
  if (s->sg_processed < s->sg_processing_size) {
    ivtv_dma_enc_start_xfer(s);
    return;
  } else {
  }
  clear_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_dma_stream = -1;
  dma_post(s);
  tmp___0 = test_and_clear_bit(1L, (unsigned long volatile *)(& s->s_flags));
  if (tmp___0 != 0) {
    s = (struct ivtv_stream *)(& itv->streams) + 2UL;
    dma_post(s);
  } else {
  }
  s->sg_processing_size = 0;
  s->sg_processed = 0;
  __wake_up(& itv->dma_waitq, 3U, 1, (void *)0);
  return;
}
}
static void ivtv_irq_enc_pio_complete(struct ivtv *itv )
{
  struct ivtv_stream *s ;
  int tmp ;
  {
  if (itv->cur_pio_stream < 0 || itv->cur_pio_stream > 8) {
    itv->cur_pio_stream = -1;
    return;
  } else {
  }
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )itv->cur_pio_stream;
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: ENC PIO COMPLETE %s\n", (char *)(& itv->v4l2_dev.name),
           s->name);
  } else {
  }
  clear_bit(19L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_pio_stream = -1;
  dma_post(s);
  if (s->type == 0) {
    ivtv_vapi(itv, 204, 3, 0, 0, 0);
  } else
  if (s->type == 1) {
    ivtv_vapi(itv, 204, 3, 0, 0, 1);
  } else
  if (s->type == 3) {
    ivtv_vapi(itv, 204, 3, 0, 0, 2);
  } else {
  }
  clear_bit(19L, (unsigned long volatile *)(& itv->i_flags));
  tmp = test_and_clear_bit(1L, (unsigned long volatile *)(& s->s_flags));
  if (tmp != 0) {
    s = (struct ivtv_stream *)(& itv->streams) + 2UL;
    dma_post(s);
  } else {
  }
  __wake_up(& itv->dma_waitq, 3U, 1, (void *)0);
  return;
}
}
static void ivtv_irq_dma_err(struct ivtv *itv )
{
  u32 data[16U] ;
  u32 status ;
  struct ivtv_stream *s ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_del_timer_152(& itv->dma_timer);
  ivtv_api_get_data(& itv->enc_mbox, 8, 2, (u32 *)(& data));
  status = readl((void const volatile *)itv->reg_mem + 4U);
  if (ivtv_debug & 1) {
    printk("\016%s:  warn: DMA OLD_ERROR %08x %08x %08x %d\n", (char *)(& itv->v4l2_dev.name),
           data[0], data[1], status, itv->cur_dma_stream);
  } else {
  }
  status = status & 3U;
  if (status == 3U) {
    writel(status, itv->reg_mem + 4UL);
  } else {
  }
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& itv->i_flags));
  if ((tmp___0 == 0 && itv->cur_dma_stream >= 0) && itv->cur_dma_stream <= 8) {
    s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )itv->cur_dma_stream;
    if (s->type > 4) {
      ivtv_dma_dec_start(s);
      return;
    } else {
      if ((status & 2U) == 0U) {
        tmp = msecs_to_jiffies(600U);
        itv->dma_timer.expires = tmp + (unsigned long )jiffies;
        add_timer(& itv->dma_timer);
        return;
      } else {
      }
      if (itv->dma_retries <= 2) {
        s->sg_processed = 0;
        itv->dma_retries = itv->dma_retries + 1;
        ivtv_dma_enc_start_xfer(s);
        return;
      } else {
      }
    }
  } else {
  }
  tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___1 != 0) {
    ivtv_udma_start(itv);
    return;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& itv->i_flags));
  clear_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_dma_stream = -1;
  __wake_up(& itv->dma_waitq, 3U, 1, (void *)0);
  return;
}
}
static void ivtv_irq_enc_start_cap(struct ivtv *itv )
{
  u32 data[16U] ;
  struct ivtv_stream *s ;
  int tmp ;
  int tmp___0 ;
  {
  ivtv_api_get_data(& itv->enc_mbox, 9, 7, (u32 *)(& data));
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: ENC START CAP %d: %08x %08x\n", (char *)(& itv->v4l2_dev.name),
           data[0], data[1], data[2]);
  } else {
  }
  if ((data[0] > 2U || data[1] == 0U) || data[2] == 0U) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Unknown input: %08x %08x %08x\n", (char *)(& itv->v4l2_dev.name),
             data[0], data[1], data[2]);
    } else {
    }
    return;
  } else {
  }
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )ivtv_stream_map[data[0]];
  tmp___0 = stream_enc_dma_append(s, (u32 *)(& data));
  if (tmp___0 == 0) {
    tmp = ivtv_use_pio(s);
    set_bit(tmp != 0 ? 9L : 0L, (unsigned long volatile *)(& s->s_flags));
  } else {
  }
  return;
}
}
static void ivtv_irq_enc_vbi_cap(struct ivtv *itv )
{
  u32 data[16U] ;
  struct ivtv_stream *s ;
  int tmp ;
  int tmp___0 ;
  {
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: ENC START VBI CAP\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  s = (struct ivtv_stream *)(& itv->streams) + 2UL;
  tmp___0 = stream_enc_dma_append(s, (u32 *)(& data));
  if (tmp___0 == 0) {
    tmp = ivtv_use_pio(s);
    set_bit(tmp != 0 ? 9L : 0L, (unsigned long volatile *)(& s->s_flags));
  } else {
  }
  return;
}
}
static void ivtv_irq_dec_vbi_reinsert(struct ivtv *itv )
{
  u32 data[16U] ;
  struct ivtv_stream *s ;
  int tmp ;
  int tmp___0 ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + 6UL;
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: DEC VBI REINSERT\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp != 0) {
    tmp___0 = stream_enc_dma_append(s, (u32 *)(& data));
    if (tmp___0 == 0) {
      set_bit(9L, (unsigned long volatile *)(& s->s_flags));
    } else {
    }
  } else {
  }
  return;
}
}
static void ivtv_irq_dec_data_req(struct ivtv *itv )
{
  u32 data[16U] ;
  struct ivtv_stream *s ;
  int tmp ;
  u32 __min1 ;
  u32 __min2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = constant_test_bit(7L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___0 != 0) {
    ivtv_api_get_data(& itv->dec_mbox, 9, 2, (u32 *)(& data));
    itv->dma_data_req_size = ((itv->yuv_info.v4l2_src_h + 31U) & 4294967264U) * 1080U;
    itv->dma_data_req_offset = data[1];
    tmp = atomic_read((atomic_t const *)(& itv->yuv_info.next_dma_frame));
    if (tmp >= 0) {
      ivtv_yuv_frame_complete(itv);
    } else {
    }
    s = (struct ivtv_stream *)(& itv->streams) + 8UL;
  } else {
    ivtv_api_get_data(& itv->dec_mbox, 9, 3, (u32 *)(& data));
    __min1 = data[2];
    __min2 = 65536U;
    itv->dma_data_req_size = __min1 < __min2 ? __min1 : __min2;
    itv->dma_data_req_offset = data[1];
    s = (struct ivtv_stream *)(& itv->streams) + 5UL;
  }
  if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
    printk("\016%s:  irq: DEC DATA REQ %s: %d %08x %u\n", (char *)(& itv->v4l2_dev.name),
           s->name, s->q_full.bytesused, itv->dma_data_req_offset, itv->dma_data_req_size);
  } else {
  }
  if (itv->dma_data_req_size == 0U || s->q_full.bytesused < itv->dma_data_req_size) {
    set_bit(2L, (unsigned long volatile *)(& s->s_flags));
  } else {
    tmp___1 = constant_test_bit(7L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___1 != 0) {
      ivtv_yuv_setup_stream_frame(itv);
    } else {
    }
    clear_bit(2L, (unsigned long volatile *)(& s->s_flags));
    ivtv_queue_move(s, & s->q_full, (struct ivtv_queue *)0, & s->q_predma, (int )itv->dma_data_req_size);
    ivtv_dma_stream_dec_prepare(s, itv->dma_data_req_offset + 16777216U, 0);
  }
  return;
}
}
static void ivtv_irq_vsync(struct ivtv *itv )
{
  unsigned int frame ;
  unsigned int tmp ;
  struct yuv_playback_info *yi ;
  int last_dma_frame ;
  int tmp___0 ;
  struct yuv_frame_info *f ;
  int next_dma_frame ;
  int tmp___1 ;
  struct v4l2_event evtop ;
  struct v4l2_event evbottom ;
  struct ivtv_stream *s ;
  struct ivtv_stream *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = readl((void const volatile *)itv->reg_mem + 10432U);
  frame = tmp & 1U;
  yi = & itv->yuv_info;
  tmp___0 = atomic_read((atomic_t const *)(& yi->next_dma_frame));
  last_dma_frame = tmp___0;
  f = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )last_dma_frame;
  if ((f->sync_field == frame && (itv->last_vsync_field & 1U) != f->sync_field) || ((itv->last_vsync_field & 1U) != frame && f->interlaced == 0U)) {
    next_dma_frame = last_dma_frame;
    if ((f->interlaced == 0U || f->delay == 0U) || (unsigned int )yi->fields_lapsed != 0U) {
      if (next_dma_frame >= 0) {
        tmp___1 = atomic_read((atomic_t const *)(& yi->next_fill_frame));
        if (tmp___1 != next_dma_frame) {
          writel(yuv_offset[next_dma_frame] >> 4, itv->reg_mem + 2092UL);
          writel(((unsigned int )yuv_offset[next_dma_frame] + 414720U) >> 4, itv->reg_mem + 2096UL);
          writel(yuv_offset[next_dma_frame] >> 4, itv->reg_mem + 2100UL);
          writel(((unsigned int )yuv_offset[next_dma_frame] + 414720U) >> 4, itv->reg_mem + 2104UL);
          next_dma_frame = (next_dma_frame + 1) % 8;
          atomic_set(& yi->next_dma_frame, next_dma_frame);
          yi->fields_lapsed = 255U;
          yi->running = 1U;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((itv->last_vsync_field & 1U) != frame) {
    evtop.type = 1U;
    evtop.u.vsync.field = 2U;
    evtop.pending = 0U;
    evtop.sequence = 0U;
    evtop.timestamp.tv_sec = 0L;
    evtop.timestamp.tv_nsec = 0L;
    evtop.id = 0U;
    evtop.reserved[0] = 0U;
    evtop.reserved[1] = 0U;
    evtop.reserved[2] = 0U;
    evtop.reserved[3] = 0U;
    evtop.reserved[4] = 0U;
    evtop.reserved[5] = 0U;
    evtop.reserved[6] = 0U;
    evtop.reserved[7] = 0U;
    evbottom.type = 1U;
    evbottom.u.vsync.field = 3U;
    evbottom.pending = 0U;
    evbottom.sequence = 0U;
    evbottom.timestamp.tv_sec = 0L;
    evbottom.timestamp.tv_nsec = 0L;
    evbottom.id = 0U;
    evbottom.reserved[0] = 0U;
    evbottom.reserved[1] = 0U;
    evbottom.reserved[2] = 0U;
    evbottom.reserved[3] = 0U;
    evbottom.reserved[4] = 0U;
    evbottom.reserved[5] = 0U;
    evbottom.reserved[6] = 0U;
    evbottom.reserved[7] = 0U;
    tmp___2 = ivtv_get_output_stream(itv);
    s = tmp___2;
    itv->last_vsync_field = itv->last_vsync_field + 1U;
    if (frame == 0U) {
      clear_bit(14L, (unsigned long volatile *)(& itv->i_flags));
      clear_bit(30L, (unsigned long volatile *)(& itv->i_flags));
    } else {
      set_bit(30L, (unsigned long volatile *)(& itv->i_flags));
    }
    tmp___3 = constant_test_bit(31L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___3 != 0) {
      set_bit(29L, (unsigned long volatile *)(& itv->i_flags));
      __wake_up(& itv->event_waitq, 3U, 1, (void *)0);
      if ((unsigned long )s != (unsigned long )((struct ivtv_stream *)0)) {
        __wake_up(& s->waitq, 3U, 1, (void *)0);
      } else {
      }
    } else {
    }
    if ((unsigned long )s != (unsigned long )((struct ivtv_stream *)0) && (unsigned long )s->vdev.v4l2_dev != (unsigned long )((struct v4l2_device *)0)) {
      v4l2_event_queue(& s->vdev, frame != 0U ? & evtop : & evbottom);
    } else {
    }
    __wake_up(& itv->vsync_waitq, 3U, 1, (void *)0);
    if (frame != 0U) {
      if (itv->output_mode == 4) {
        set_bit(16L, (unsigned long volatile *)(& itv->i_flags));
        set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
      } else {
        tmp___4 = constant_test_bit(10L, (unsigned long const volatile *)(& itv->i_flags));
        if (tmp___4 != 0) {
          set_bit(16L, (unsigned long volatile *)(& itv->i_flags));
          set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
        } else {
          tmp___5 = constant_test_bit(11L, (unsigned long const volatile *)(& itv->i_flags));
          if (tmp___5 != 0) {
            set_bit(16L, (unsigned long volatile *)(& itv->i_flags));
            set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
          } else {
            tmp___6 = constant_test_bit(9L, (unsigned long const volatile *)(& itv->i_flags));
            if (tmp___6 != 0) {
              set_bit(16L, (unsigned long volatile *)(& itv->i_flags));
              set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
            } else {
            }
          }
        }
      }
    } else {
    }
    if ((unsigned int )yi->running != 0U && (yi->yuv_forced_update != 0U || f->update != 0U)) {
      if (f->update == 0U) {
        tmp___7 = atomic_read((atomic_t const *)(& yi->next_dma_frame));
        last_dma_frame = (int )((unsigned int )((unsigned char )tmp___7) - 1U) & 7;
        f = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )last_dma_frame;
      } else {
      }
      if (f->src_w != 0U) {
        yi->update_frame = last_dma_frame;
        f->update = 0U;
        yi->yuv_forced_update = 0U;
        set_bit(17L, (unsigned long volatile *)(& itv->i_flags));
        set_bit(15L, (unsigned long volatile *)(& itv->i_flags));
      } else {
      }
    } else {
    }
    yi->fields_lapsed = (u8 )((int )yi->fields_lapsed + 1);
  } else {
  }
  return;
}
}
irqreturn_t ivtv_irq_handler(int irq , void *dev_id )
{
  struct ivtv *itv ;
  u32 combo ;
  u32 stat ;
  int i ;
  u8 vsync_force ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int idx ;
  struct ivtv_stream *s ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int idx___0 ;
  struct ivtv_stream *s___0 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  itv = (struct ivtv *)dev_id;
  vsync_force = 0U;
  spin_lock(& itv->dma_reg_lock);
  stat = readl((void const volatile *)itv->reg_mem + 64U);
  combo = ~ itv->irqmask & stat;
  if (combo != 0U) {
    writel(combo, itv->reg_mem + 64UL);
  } else {
  }
  if (combo == 0U) {
    if ((itv->irqmask & 1024U) == 0U) {
      tmp___0 = readl((void const volatile *)itv->reg_mem + 10432U);
      if ((int )(itv->last_vsync_field ^ tmp___0) & 1) {
        if ((ivtv_debug & 256) != 0) {
          tmp = readl((void const volatile *)itv->reg_mem + 10432U);
          printk("\016%s:  yuv: VSync interrupt missed %d\n", (char *)(& itv->v4l2_dev.name),
                 tmp >> 16);
        } else {
        }
        vsync_force = 1U;
      } else {
      }
    } else {
    }
    if ((unsigned int )vsync_force == 0U) {
      spin_unlock(& itv->dma_reg_lock);
      return (0);
    } else {
    }
  } else {
  }
  if ((combo & 9632767U) != 0U) {
    if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  irq: ======= valid IRQ bits: 0x%08x ======\n", (char *)(& itv->v4l2_dev.name),
             combo);
    } else {
    }
  } else {
  }
  if ((combo & 1048576U) != 0U) {
    if ((ivtv_debug & 64) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  irq: DEC DMA COMPLETE\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  if ((combo & 65536U) != 0U) {
    ivtv_irq_dma_read(itv);
  } else {
  }
  if ((combo & 134217728U) != 0U) {
    ivtv_irq_enc_dma_complete(itv);
  } else {
  }
  if ((combo & 33554432U) != 0U) {
    ivtv_irq_enc_pio_complete(itv);
  } else {
  }
  if ((combo & 262144U) != 0U) {
    ivtv_irq_dma_err(itv);
  } else {
  }
  if ((int )combo < 0) {
    ivtv_irq_enc_start_cap(itv);
  } else {
  }
  if ((combo & 536870912U) != 0U) {
    ivtv_irq_enc_vbi_cap(itv);
  } else {
  }
  if ((combo & 524288U) != 0U) {
    ivtv_irq_dec_vbi_reinsert(itv);
  } else {
  }
  if ((combo & 1073741824U) != 0U) {
    if ((ivtv_debug & 64) != 0) {
      printk("\016%s:  irq: ENC EOS\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    set_bit(4L, (unsigned long volatile *)(& itv->i_flags));
    __wake_up(& itv->eos_waitq, 3U, 1, (void *)0);
  } else {
  }
  if ((combo & 4194304U) != 0U) {
    ivtv_irq_dec_data_req(itv);
  } else {
  }
  if ((itv->irqmask & 1024U) == 0U) {
    ivtv_irq_vsync(itv);
  } else {
  }
  if ((combo & 268435456U) != 0U) {
    if ((ivtv_debug & 64) != 0) {
      printk("\016%s:  irq: VIM RST\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  if ((combo & 16777216U) != 0U) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: Stereo mode changed\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  if ((combo & 2823618560U) != 0U) {
    tmp___3 = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___3 == 0) {
      itv->irq_rr_idx = itv->irq_rr_idx + 1U;
      i = 0;
      goto ldv_39320;
      ldv_39319:
      idx = (int )((itv->irq_rr_idx + (u32 )i) % 9U);
      s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )idx;
      tmp___1 = test_and_clear_bit(0L, (unsigned long volatile *)(& s->s_flags));
      if (tmp___1 == 0) {
        goto ldv_39317;
      } else {
      }
      if (s->type > 4) {
        ivtv_dma_dec_start(s);
      } else {
        ivtv_dma_enc_start(s);
      }
      goto ldv_39318;
      ldv_39317:
      i = i + 1;
      ldv_39320: ;
      if (i <= 8) {
        goto ldv_39319;
      } else {
      }
      ldv_39318: ;
      if (i == 9) {
        tmp___2 = constant_test_bit(2L, (unsigned long const volatile *)(& itv->i_flags));
        if (tmp___2 != 0) {
          ivtv_udma_start(itv);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((combo & 2823618560U) != 0U) {
    tmp___5 = constant_test_bit(19L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___5 == 0) {
      itv->irq_rr_idx = itv->irq_rr_idx + 1U;
      i = 0;
      goto ldv_39326;
      ldv_39325:
      idx___0 = (int )((itv->irq_rr_idx + (u32 )i) % 9U);
      s___0 = (struct ivtv_stream *)(& itv->streams) + (unsigned long )idx___0;
      tmp___4 = test_and_clear_bit(9L, (unsigned long volatile *)(& s___0->s_flags));
      if (tmp___4 == 0) {
        goto ldv_39323;
      } else {
      }
      if (s___0->type == 6 || s___0->type <= 4) {
        ivtv_dma_enc_start(s___0);
      } else {
      }
      goto ldv_39324;
      ldv_39323:
      i = i + 1;
      ldv_39326: ;
      if (i <= 8) {
        goto ldv_39325;
      } else {
      }
      ldv_39324: ;
    } else {
    }
  } else {
  }
  tmp___6 = test_and_clear_bit(15L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___6 != 0) {
    queue_kthread_work(& itv->irq_worker, & itv->irq_work);
  } else {
  }
  spin_unlock(& itv->dma_reg_lock);
  return ((unsigned int )vsync_force == 0U);
}
}
void ivtv_unfinished_dma(unsigned long arg )
{
  struct ivtv *itv ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  itv = (struct ivtv *)arg;
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = readl((void const volatile *)itv->reg_mem + 4U);
  printk("\v%s: DMA TIMEOUT %08x %d\n", (char *)(& itv->v4l2_dev.name), tmp___0, itv->cur_dma_stream);
  tmp___1 = readl((void const volatile *)itv->reg_mem + 4U);
  writel(tmp___1 & 3U, itv->reg_mem + 4UL);
  clear_bit(1L, (unsigned long volatile *)(& itv->i_flags));
  clear_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  itv->cur_dma_stream = -1;
  __wake_up(& itv->dma_waitq, 3U, 1, (void *)0);
  return;
}
}
bool ldv_queue_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_147(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_148(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_del_timer_150(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_151(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_152(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv__builtin_va_end(__builtin_va_list * ) ;
void ldv__builtin_va_arg(__builtin_va_list , unsigned long , void * ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_166(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_169(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_168(struct workqueue_struct *ldv_func_arg1 ) ;
extern void __const_udelay(unsigned long ) ;
static struct ivtv_api_info const api_info[256U] =
  { {6, "CX2341X_DEC_PING_FW"},
        {66, "CX2341X_DEC_START_PLAYBACK"},
        {2, "CX2341X_DEC_STOP_PLAYBACK"},
        {2, "CX2341X_DEC_SET_PLAYBACK_SPEED"},
        {0, 0},
        {2, "CX2341X_DEC_STEP_VIDEO"},
        {0, 0},
        {0, 0},
        {1, "CX2341X_DEC_SET_DMA_BLOCK_SIZE"},
        {6, "CX2341X_DEC_GET_XFER_INFO"},
        {6, "CX2341X_DEC_GET_DMA_STATUS"},
        {40, "CX2341X_DEC_SCHED_DMA_FROM_HOST"},
        {0, 0},
        {2, "CX2341X_DEC_PAUSE_PLAYBACK"},
        {6, "CX2341X_DEC_HALT_FW"},
        {0, 0},
        {1, "CX2341X_DEC_SET_STANDARD"},
        {6, "CX2341X_DEC_GET_VERSION"},
        {0, 0},
        {0, 0},
        {1, "CX2341X_DEC_SET_STREAM_INPUT"},
        {2, "CX2341X_DEC_GET_TIMING_INFO"},
        {1, "CX2341X_DEC_SET_AUDIO_MODE"},
        {2, "CX2341X_DEC_SET_EVENT_NOTIFICATION"},
        {1, "CX2341X_DEC_SET_DISPLAY_BUFFERS"},
        {2, "CX2341X_DEC_EXTRACT_VBI"},
        {6, "CX2341X_DEC_SET_DECODER_SOURCE"},
        {0, 0},
        {0, 0},
        {0, 0},
        {1, "CX2341X_DEC_SET_PREBUFFERING"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {6, "CX2341X_OSD_GET_FRAMEBUFFER"},
        {6, "CX2341X_OSD_GET_PIXEL_FORMAT"},
        {1, "CX2341X_OSD_SET_PIXEL_FORMAT"},
        {6, "CX2341X_OSD_GET_STATE"},
        {1, "CX2341X_OSD_SET_STATE"},
        {6, "CX2341X_OSD_GET_OSD_COORDS"},
        {1, "CX2341X_OSD_SET_OSD_COORDS"},
        {6, "CX2341X_OSD_GET_SCREEN_COORDS"},
        {1, "CX2341X_OSD_SET_SCREEN_COORDS"},
        {6, "CX2341X_OSD_GET_GLOBAL_ALPHA"},
        {1, "CX2341X_OSD_SET_GLOBAL_ALPHA"},
        {1, "CX2341X_OSD_SET_BLEND_COORDS"},
        {0, 0},
        {0, 0},
        {6, "CX2341X_OSD_GET_FLICKER_STATE"},
        {1, "CX2341X_OSD_SET_FLICKER_STATE"},
        {0, 0},
        {2, "CX2341X_OSD_BLT_COPY"},
        {2, "CX2341X_OSD_BLT_FILL"},
        {2, "CX2341X_OSD_BLT_TEXT"},
        {0, 0},
        {1, "CX2341X_OSD_SET_FRAMEBUFFER_WINDOW"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {1, "CX2341X_OSD_SET_CHROMA_KEY"},
        {6, "CX2341X_OSD_GET_ALPHA_CONTENT_INDEX"},
        {1, "CX2341X_OSD_SET_ALPHA_CONTENT_INDEX"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {6, "CX2341X_ENC_PING_FW"},
        {66, "CX2341X_ENC_START_CAPTURE"},
        {2, "CX2341X_ENC_STOP_CAPTURE"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {1, "CX2341X_ENC_SET_AUDIO_ID"},
        {0, 0},
        {1, "CX2341X_ENC_SET_VIDEO_ID"},
        {0, 0},
        {1, "CX2341X_ENC_SET_PCR_ID"},
        {0, 0},
        {1, "CX2341X_ENC_SET_FRAME_RATE"},
        {0, 0},
        {1, "CX2341X_ENC_SET_FRAME_SIZE"},
        {0, 0},
        {0, 0},
        {0, 0},
        {1, "CX2341X_ENC_SET_BIT_RATE"},
        {0, 0},
        {1, "CX2341X_ENC_SET_GOP_PROPERTIES"},
        {0, 0},
        {1, "CX2341X_ENC_SET_ASPECT_RATIO"},
        {0, 0},
        {1, "CX2341X_ENC_SET_DNR_FILTER_MODE"},
        {0, 0},
        {1, "CX2341X_ENC_SET_DNR_FILTER_PROPS"},
        {0, 0},
        {1, "CX2341X_ENC_SET_CORING_LEVELS"},
        {0, 0},
        {1, "CX2341X_ENC_SET_SPATIAL_FILTER_TYPE"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {1, "0xb1"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {2, "CX2341X_ENC_SET_VBI_LINE"},
        {0, 0},
        {1, "CX2341X_ENC_SET_STREAM_TYPE"},
        {0, 0},
        {1, "CX2341X_ENC_SET_OUTPUT_PORT"},
        {0, 0},
        {1, "CX2341X_ENC_SET_AUDIO_PROPERTIES"},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {6, "CX2341X_ENC_HALT_FW"},
        {6, "CX2341X_ENC_GET_VERSION"},
        {1, "CX2341X_ENC_SET_GOP_CLOSURE"},
        {2, "CX2341X_ENC_GET_SEQ_END"},
        {6, "CX2341X_ENC_SET_PGM_INDEX_INFO"},
        {2, "CX2341X_ENC_SET_VBI_CONFIG"},
        {1, "CX2341X_ENC_SET_DMA_BLOCK_SIZE"},
        {6, "CX2341X_ENC_GET_PREV_DMA_INFO_MB_10"},
        {6, "CX2341X_ENC_GET_PREV_DMA_INFO_MB_9"},
        {40, "CX2341X_ENC_SCHED_DMA_TO_HOST"},
        {2, "CX2341X_ENC_INITIALIZE_INPUT"},
        {0, 0},
        {0, 0},
        {1, "CX2341X_ENC_SET_FRAME_DROP_RATE"},
        {0, 0},
        {2, "CX2341X_ENC_PAUSE_ENCODER"},
        {48, "CX2341X_ENC_REFRESH_INPUT"},
        {1, "CX2341X_ENC_SET_COPYRIGHT"},
        {2, "CX2341X_ENC_SET_EVENT_NOTIFICATION"},
        {1, "CX2341X_ENC_SET_NUM_VSYNC_LINES"},
        {1, "CX2341X_ENC_SET_PLACEHOLDER"},
        {0, 0},
        {2, "CX2341X_ENC_MUTE_VIDEO"},
        {2, "CX2341X_ENC_MUTE_AUDIO"},
        {6, "CX2341X_ENC_SET_VERT_CROP_LINE"},
        {6, "CX2341X_ENC_MISC"}};
static int try_mailbox(struct ivtv *itv , struct ivtv_mailbox_data *mbdata , int mb )
{
  u32 flags ;
  unsigned int tmp ;
  int is_free ;
  int tmp___0 ;
  {
  tmp = readl((void const volatile *)(& (mbdata->mbox + (unsigned long )mb)->flags));
  flags = tmp;
  is_free = flags == 0U || (flags & 4U) != 0U;
  if (is_free != 0) {
    tmp___0 = test_and_set_bit((long )mb, (unsigned long volatile *)(& mbdata->busy));
    if (tmp___0 == 0) {
      writel(1U, (void volatile *)(& (mbdata->mbox + (unsigned long )mb)->flags));
      readl((void const volatile *)(& (mbdata->mbox + (unsigned long )mb)->flags));
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int get_mailbox(struct ivtv *itv , struct ivtv_mailbox_data *mbdata , int flags )
{
  unsigned long then ;
  int i ;
  int mb ;
  int max_mbox ;
  int retries ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  then = jiffies;
  max_mbox = (int )mbdata->max_mbox;
  retries = 100;
  if ((flags & 6) == 2) {
    max_mbox = 1;
  } else {
  }
  i = 0;
  goto ldv_38938;
  ldv_38937:
  mb = 1;
  goto ldv_38928;
  ldv_38927:
  tmp = try_mailbox(itv, mbdata, mb);
  if (tmp != 0) {
    return (mb);
  } else {
  }
  mb = mb + 1;
  ldv_38928: ;
  if (mb <= max_mbox) {
    goto ldv_38927;
  } else {
  }
  if ((flags & 16) == 0) {
    tmp___0 = msecs_to_jiffies((unsigned int const )(retries * 10));
    if ((long )((tmp___0 + then) - (unsigned long )jiffies) < 0L) {
      goto ldv_38936;
    } else {
    }
    ivtv_msleep_timeout(10U, 0);
  } else {
  }
  i = i + 1;
  ldv_38938: ;
  if (i < retries) {
    goto ldv_38937;
  } else {
  }
  ldv_38936: ;
  return (-19);
}
}
static void write_mailbox(struct ivtv_mailbox volatile *mbox , int cmd , int args ,
                          u32 *data )
{
  int i ;
  {
  writel((unsigned int )cmd, (void volatile *)(& mbox->cmd));
  readl((void const volatile *)(& mbox->cmd));
  writel(33554432U, (void volatile *)(& mbox->timeout));
  readl((void const volatile *)(& mbox->timeout));
  i = 0;
  goto ldv_38947;
  ldv_38946:
  writel(*(data + (unsigned long )i), (void volatile *)(& mbox->data) + (unsigned long )i);
  readl((void const volatile *)(& mbox->data) + (unsigned long )i);
  i = i + 1;
  ldv_38947: ;
  if (i <= 15) {
    goto ldv_38946;
  } else {
  }
  writel(3U, (void volatile *)(& mbox->flags));
  readl((void const volatile *)(& mbox->flags));
  return;
}
}
static void clear_all_mailboxes(struct ivtv *itv , struct ivtv_mailbox_data *mbdata )
{
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  i = 0;
  goto ldv_38955;
  ldv_38954: ;
  if (ivtv_debug & 1) {
    tmp = readl((void const volatile *)(& (mbdata->mbox + (unsigned long )i)->flags));
    tmp___0 = readl((void const volatile *)(& (mbdata->mbox + (unsigned long )i)->cmd));
    printk("\016%s:  warn: Clearing mailbox %d: cmd 0x%08x flags 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           i, tmp___0, tmp);
  } else {
  }
  writel(0U, (void volatile *)(& (mbdata->mbox + (unsigned long )i)->flags));
  readl((void const volatile *)(& (mbdata->mbox + (unsigned long )i)->flags));
  clear_bit((long )i, (unsigned long volatile *)(& mbdata->busy));
  i = i + 1;
  ldv_38955: ;
  if ((int )mbdata->max_mbox >= i) {
    goto ldv_38954;
  } else {
  }
  return;
}
}
static int ivtv_api_call(struct ivtv *itv , int cmd , int args , u32 *data )
{
  struct ivtv_mailbox_data *mbdata ;
  struct ivtv_mailbox volatile *mbox ;
  int api_timeout ;
  unsigned long tmp ;
  int flags ;
  int mb ;
  int i ;
  unsigned long then ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned long tmp___4 ;
  unsigned int tmp___5 ;
  unsigned long __ms ;
  unsigned long tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned long tmp___9 ;
  {
  mbdata = cmd > 127 ? & itv->enc_mbox : & itv->dec_mbox;
  tmp = msecs_to_jiffies(1000U);
  api_timeout = (int )tmp;
  if ((unsigned long )mbdata == (unsigned long )((struct ivtv_mailbox_data *)0)) {
    printk("\v%s: No mailbox allocated\n", (char *)(& itv->v4l2_dev.name));
    return (-19);
  } else {
  }
  if ((((args < 0 || args > 16) || cmd < 0) || cmd > 255) || (unsigned long )api_info[cmd].name == (unsigned long )((char const * )0)) {
    printk("\v%s: Invalid MB call: cmd = 0x%02x, args = %d\n", (char *)(& itv->v4l2_dev.name),
           cmd, args);
    return (-22);
  } else {
  }
  if (((int )api_info[cmd].flags & 32) != 0) {
    if ((ivtv_debug & 4) != 0 && (ivtv_debug & 1024) != 0) {
      printk("\016%s:  mb: MB Call: %s\n", (char *)(& itv->v4l2_dev.name), api_info[cmd].name);
    } else {
    }
  } else
  if ((ivtv_debug & 4) != 0) {
    printk("\016%s:  mb: MB Call: %s\n", (char *)(& itv->v4l2_dev.name), api_info[cmd].name);
  } else {
  }
  i = args;
  goto ldv_38971;
  ldv_38970:
  *(data + (unsigned long )i) = 0U;
  i = i + 1;
  ldv_38971: ;
  if (i <= 15) {
    goto ldv_38970;
  } else {
  }
  if (itv->api_cache[cmd].last_jiffies != 0UL) {
    tmp___0 = msecs_to_jiffies(1800000U);
    if ((long )((unsigned long )jiffies - (itv->api_cache[cmd].last_jiffies + tmp___0)) < 0L) {
      tmp___1 = memcmp((void const *)data, (void const *)(& itv->api_cache[cmd].data),
                       64UL);
      if (tmp___1 == 0) {
        itv->api_cache[cmd].last_jiffies = jiffies;
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  flags = api_info[cmd].flags;
  if ((flags & 8) != 0) {
    i = 0;
    goto ldv_38980;
    ldv_38979:
    mb = i % ((int )mbdata->max_mbox + 1);
    tmp___2 = try_mailbox(itv, mbdata, mb);
    if (tmp___2 != 0) {
      write_mailbox(mbdata->mbox + (unsigned long )mb, cmd, args, data);
      clear_bit((long )mb, (unsigned long volatile *)(& mbdata->busy));
      return (0);
    } else {
    }
    if (ivtv_debug & 1) {
      tmp___3 = readl((void const volatile *)(& (mbdata->mbox + (unsigned long )mb)->flags));
      printk("\016%s:  warn: %s: mailbox %d not free %08x\n", (char *)(& itv->v4l2_dev.name),
             api_info[cmd].name, mb, tmp___3);
    } else {
    }
    i = i + 1;
    ldv_38980: ;
    if (i <= 99) {
      goto ldv_38979;
    } else {
    }
    printk("\f%s: Could not find free DMA mailbox for %s\n", (char *)(& itv->v4l2_dev.name),
           api_info[cmd].name);
    clear_all_mailboxes(itv, mbdata);
    return (-16);
  } else {
  }
  if ((flags & 6) == 6) {
    tmp___4 = msecs_to_jiffies(100U);
    api_timeout = (int )tmp___4;
  } else {
  }
  mb = get_mailbox(itv, mbdata, flags);
  if (mb < 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: No free mailbox found (%s)\n", (char *)(& itv->v4l2_dev.name),
             api_info[cmd].name);
    } else {
    }
    clear_all_mailboxes(itv, mbdata);
    return (-16);
  } else {
  }
  mbox = mbdata->mbox + (unsigned long )mb;
  write_mailbox(mbox, cmd, args, data);
  if (flags & 1) {
    memcpy((void *)(& itv->api_cache[cmd].data), (void const *)data, 64UL);
    itv->api_cache[cmd].last_jiffies = jiffies;
  } else {
  }
  if ((flags & 2) == 0) {
    clear_bit((long )mb, (unsigned long volatile *)(& mbdata->busy));
    return (0);
  } else {
  }
  then = jiffies;
  if ((flags & 64) == 0) {
    i = 0;
    goto ldv_38984;
    ldv_38983:
    tmp___5 = readl((void const volatile *)(& mbox->flags));
    if ((tmp___5 & 4U) != 0U) {
      goto ldv_38982;
    } else {
    }
    i = i + 1;
    ldv_38984: ;
    if (i <= 99) {
      goto ldv_38983;
    } else {
    }
    ldv_38982: ;
  } else {
  }
  goto ldv_38996;
  ldv_38995: ;
  if ((long )(((unsigned long )api_timeout + then) - (unsigned long )jiffies) < 0L) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Could not get result (%s)\n", (char *)(& itv->v4l2_dev.name),
             api_info[cmd].name);
    } else {
    }
    writel(0U, (void volatile *)(& mbox->flags));
    readl((void const volatile *)(& mbox->flags));
    clear_bit((long )mb, (unsigned long volatile *)(& mbdata->busy));
    return (-5);
  } else {
  }
  if ((flags & 32) != 0) {
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_38993;
      ldv_38992:
      __const_udelay(4295000UL);
      ldv_38993:
      tmp___6 = __ms;
      __ms = __ms - 1UL;
      if (tmp___6 != 0UL) {
        goto ldv_38992;
      } else {
      }
    }
  } else {
    ivtv_msleep_timeout(1U, 0);
  }
  ldv_38996:
  tmp___7 = readl((void const volatile *)(& mbox->flags));
  if ((tmp___7 & 4U) == 0U) {
    goto ldv_38995;
  } else {
  }
  tmp___9 = msecs_to_jiffies(100U);
  if ((long )((tmp___9 + then) - (unsigned long )jiffies) < 0L) {
    if (ivtv_debug & 1) {
      tmp___8 = jiffies_to_msecs((unsigned long )jiffies - then);
      printk("\016%s:  warn: %s took %u jiffies\n", (char *)(& itv->v4l2_dev.name),
             api_info[cmd].name, tmp___8);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_39005;
  ldv_39004:
  *(data + (unsigned long )i) = readl((void const volatile *)(& mbox->data) + (unsigned long )i);
  i = i + 1;
  ldv_39005: ;
  if (i <= 15) {
    goto ldv_39004;
  } else {
  }
  writel(0U, (void volatile *)(& mbox->flags));
  readl((void const volatile *)(& mbox->flags));
  clear_bit((long )mb, (unsigned long volatile *)(& mbdata->busy));
  return (0);
}
}
int ivtv_api(struct ivtv *itv , int cmd , int args , u32 *data )
{
  int res ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ivtv_api_call(itv, cmd, args, data);
  res = tmp;
  if (res == -16) {
    tmp___0 = ivtv_api_call(itv, cmd, args, data);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = res;
  }
  return (tmp___1);
}
}
int ivtv_api_func(void *priv , u32 cmd , int in , int out , u32 *data )
{
  int tmp ;
  {
  tmp = ivtv_api((struct ivtv *)priv, (int )cmd, in, data);
  return (tmp);
}
}
int ivtv_vapi_result(struct ivtv *itv , u32 *data , int cmd , int args , ...)
{
  va_list ap ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  ldv__builtin_va_start((va_list *)(& ap));
  i = 0;
  goto ldv_39030;
  ldv_39029:
  ldv__builtin_va_arg(ap, sizeof(u32 ), (void *)(& tmp));
  *(data + (unsigned long )i) = tmp;
  i = i + 1;
  ldv_39030: ;
  if (i < args) {
    goto ldv_39029;
  } else {
  }
  ldv__builtin_va_end((va_list *)(& ap));
  tmp___0 = ivtv_api(itv, cmd, args, data);
  return (tmp___0);
}
}
int ivtv_vapi(struct ivtv *itv , int cmd , int args , ...)
{
  u32 data[16U] ;
  va_list ap ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  ldv__builtin_va_start((va_list *)(& ap));
  i = 0;
  goto ldv_39041;
  ldv_39040:
  ldv__builtin_va_arg(ap, sizeof(u32 ), (void *)(& tmp));
  data[i] = tmp;
  i = i + 1;
  ldv_39041: ;
  if (i < args) {
    goto ldv_39040;
  } else {
  }
  ldv__builtin_va_end((va_list *)(& ap));
  tmp___0 = ivtv_api(itv, cmd, args, (u32 *)(& data));
  return (tmp___0);
}
}
void ivtv_api_get_data(struct ivtv_mailbox_data *mbdata , int mb , int argc , u32 *data )
{
  u32 volatile *p ;
  int i ;
  {
  p = (u32 volatile *)(& (mbdata->mbox + (unsigned long )mb)->data);
  i = 0;
  goto ldv_39052;
  ldv_39051:
  *(data + (unsigned long )i) = readl((void const volatile *)p);
  i = i + 1;
  p = p + 1;
  ldv_39052: ;
  if (i < argc) {
    goto ldv_39051;
  } else {
  }
  return;
}
}
void ivtv_mailbox_cache_invalidate(struct ivtv *itv )
{
  int i ;
  {
  i = 0;
  goto ldv_39059;
  ldv_39058:
  itv->api_cache[i].last_jiffies = 0UL;
  i = i + 1;
  ldv_39059: ;
  if (i <= 255) {
    goto ldv_39058;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_165(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_166(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_167(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_168(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_169(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(*p);
  return (tmp);
}
}
__inline static void __swab32s(__u32 *p )
{
  {
  *p = __swab32p((__u32 const *)p);
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
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
extern unsigned long __phys_addr(unsigned long ) ;
bool ldv_queue_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_181(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_180(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_183(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_182(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
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
    ldv_30213: ;
    goto ldv_30213;
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
    ldv_30222: ;
    goto ldv_30222;
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
__inline static void dma_sync_single_for_cpu___0(struct device *dev , dma_addr_t addr ,
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
    ldv_30273: ;
    goto ldv_30273;
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
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu___0(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                     size_t size , int direction )
{
  {
  dma_sync_single_for_cpu___0((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                              dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
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
__inline static int ivtv_might_use_dma(struct ivtv_stream *s )
{
  {
  return (s->dma != 3);
}
}
__inline static void ivtv_buf_sync_for_cpu___0(struct ivtv_stream *s , struct ivtv_buffer *buf )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_cpu___0((s->itv)->pdev, buf->dma_handle, (size_t )(s->buf_size + 256U),
                                    s->dma);
  } else {
  }
  return;
}
}
int ivtv_stream_alloc(struct ivtv_stream *s ) ;
void ivtv_stream_free(struct ivtv_stream *s ) ;
__inline static void ivtv_stream_sync_for_cpu___0(struct ivtv_stream *s )
{
  int tmp ;
  {
  tmp = ivtv_use_dma(s);
  if (tmp != 0) {
    pci_dma_sync_single_for_cpu___0((s->itv)->pdev, s->sg_handle, 12UL, 1);
  } else {
  }
  return;
}
}
int ivtv_buf_copy_from_user(struct ivtv_stream *s , struct ivtv_buffer *buf , char const *src ,
                            int copybytes )
{
  unsigned long tmp ;
  {
  if (s->buf_size - buf->bytesused < (u32 )copybytes) {
    copybytes = (int )(s->buf_size - buf->bytesused);
  } else {
  }
  tmp = copy_from_user((void *)buf->buf + (unsigned long )buf->bytesused, (void const *)src,
                       (unsigned long )copybytes);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  buf->bytesused = buf->bytesused + (u32 )copybytes;
  return (copybytes);
}
}
void ivtv_buf_swap(struct ivtv_buffer *buf )
{
  int i ;
  {
  i = 0;
  goto ldv_38945;
  ldv_38944:
  __swab32s((__u32 *)buf->buf + (unsigned long )i);
  i = i + 4;
  ldv_38945: ;
  if ((u32 )i < buf->bytesused) {
    goto ldv_38944;
  } else {
  }
  return;
}
}
void ivtv_queue_init(struct ivtv_queue *q )
{
  {
  INIT_LIST_HEAD(& q->list);
  q->buffers = 0U;
  q->length = 0U;
  q->bytesused = 0U;
  return;
}
}
void ivtv_enqueue(struct ivtv_stream *s , struct ivtv_buffer *buf , struct ivtv_queue *q )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )(& s->q_free) == (unsigned long )q) {
    buf->bytesused = 0U;
    buf->readpos = 0U;
    buf->b_flags = 0U;
    buf->dma_xfer_cnt = 0U;
  } else {
  }
  tmp = spinlock_check(& s->qlock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_add_tail(& buf->list, & q->list);
  q->buffers = q->buffers + 1U;
  q->length = q->length + s->buf_size;
  q->bytesused = q->bytesused + (buf->bytesused - buf->readpos);
  spin_unlock_irqrestore(& s->qlock, flags);
  return;
}
}
struct ivtv_buffer *ivtv_dequeue(struct ivtv_stream *s , struct ivtv_queue *q )
{
  struct ivtv_buffer *buf ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  buf = (struct ivtv_buffer *)0;
  tmp = spinlock_check(& s->qlock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = list_empty((struct list_head const *)(& q->list));
  if (tmp___0 == 0) {
    __mptr = (struct list_head const *)q->list.next;
    buf = (struct ivtv_buffer *)__mptr;
    list_del_init(q->list.next);
    q->buffers = q->buffers - 1U;
    q->length = q->length - s->buf_size;
    q->bytesused = q->bytesused + (buf->readpos - buf->bytesused);
  } else {
  }
  spin_unlock_irqrestore(& s->qlock, flags);
  return (buf);
}
}
static void ivtv_queue_move_buf(struct ivtv_stream *s , struct ivtv_queue *from ,
                                struct ivtv_queue *to , int clear )
{
  struct ivtv_buffer *buf ;
  struct list_head const *__mptr ;
  u32 tmp ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  {
  __mptr = (struct list_head const *)from->list.next;
  buf = (struct ivtv_buffer *)__mptr;
  list_move_tail(from->list.next, & to->list);
  from->buffers = from->buffers - 1U;
  from->length = from->length - s->buf_size;
  from->bytesused = from->bytesused + (buf->readpos - buf->bytesused);
  if (clear != 0) {
    tmp___1 = 0U;
    buf->dma_xfer_cnt = tmp___1;
    tmp___0 = tmp___1;
    buf->b_flags = tmp___0;
    tmp = (u32 )tmp___0;
    buf->readpos = tmp;
    buf->bytesused = tmp;
  } else {
  }
  to->buffers = to->buffers + 1U;
  to->length = to->length + s->buf_size;
  to->bytesused = to->bytesused + (buf->bytesused - buf->readpos);
  return;
}
}
int ivtv_queue_move(struct ivtv_stream *s , struct ivtv_queue *from , struct ivtv_queue *steal ,
                    struct ivtv_queue *to , int needed_bytes )
{
  unsigned long flags ;
  int rc ;
  int from_free ;
  int to_free ;
  int bytes_available ;
  int bytes_steal ;
  raw_spinlock_t *tmp ;
  struct ivtv_buffer *buf ;
  struct list_head const *__mptr ;
  u16 dma_xfer_cnt ;
  u32 tmp___0 ;
  unsigned short tmp___1 ;
  unsigned short tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  u32 old_length ;
  u32 old_bytesused ;
  {
  rc = 0;
  from_free = (unsigned long )(& s->q_free) == (unsigned long )from;
  to_free = (unsigned long )(& s->q_free) == (unsigned long )to;
  tmp = spinlock_check(& s->qlock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (needed_bytes == 0) {
    from_free = 1;
    needed_bytes = (int )from->length;
  } else {
  }
  bytes_available = (int )(from_free != 0 ? from->length : from->bytesused);
  bytes_steal = from_free != 0 && (unsigned long )steal != (unsigned long )((struct ivtv_queue *)0) ? (int )steal->length : 0;
  if (bytes_available + bytes_steal < needed_bytes) {
    spin_unlock_irqrestore(& s->qlock, flags);
    return (-12);
  } else {
  }
  goto ldv_39005;
  ldv_39004:
  __mptr = (struct list_head const *)steal->list.prev;
  buf = (struct ivtv_buffer *)__mptr;
  dma_xfer_cnt = buf->dma_xfer_cnt;
  goto ldv_39003;
  ldv_39002:
  list_move_tail(steal->list.prev, & from->list);
  rc = rc + 1;
  steal->buffers = steal->buffers - 1U;
  steal->length = steal->length - s->buf_size;
  steal->bytesused = steal->bytesused + (buf->readpos - buf->bytesused);
  tmp___2 = 0U;
  buf->dma_xfer_cnt = tmp___2;
  tmp___1 = tmp___2;
  buf->b_flags = tmp___1;
  tmp___0 = (u32 )tmp___1;
  buf->readpos = tmp___0;
  buf->bytesused = tmp___0;
  from->buffers = from->buffers + 1U;
  from->length = from->length + s->buf_size;
  bytes_available = (int )(s->buf_size + (u32 )bytes_available);
  tmp___3 = list_empty((struct list_head const *)(& steal->list));
  if (tmp___3 != 0) {
    goto ldv_38999;
  } else {
  }
  __mptr___0 = (struct list_head const *)steal->list.prev;
  buf = (struct ivtv_buffer *)__mptr___0;
  ldv_39003: ;
  if ((int )buf->dma_xfer_cnt == (int )dma_xfer_cnt) {
    goto ldv_39002;
  } else {
  }
  ldv_38999: ;
  ldv_39005: ;
  if (bytes_available < needed_bytes) {
    goto ldv_39004;
  } else {
  }
  if (from_free != 0) {
    old_length = to->length;
    goto ldv_39009;
    ldv_39008:
    ivtv_queue_move_buf(s, from, to, 1);
    ldv_39009: ;
    if (to->length - old_length < (u32 )needed_bytes) {
      goto ldv_39008;
    } else {
    }
  } else {
    old_bytesused = to->bytesused;
    goto ldv_39013;
    ldv_39012:
    ivtv_queue_move_buf(s, from, to, to_free);
    ldv_39013: ;
    if (to->bytesused - old_bytesused < (u32 )needed_bytes) {
      goto ldv_39012;
    } else {
    }
  }
  spin_unlock_irqrestore(& s->qlock, flags);
  return (rc);
}
}
void ivtv_flush_queues(struct ivtv_stream *s )
{
  {
  ivtv_queue_move(s, & s->q_io, (struct ivtv_queue *)0, & s->q_free, 0);
  ivtv_queue_move(s, & s->q_full, (struct ivtv_queue *)0, & s->q_free, 0);
  ivtv_queue_move(s, & s->q_dma, (struct ivtv_queue *)0, & s->q_free, 0);
  ivtv_queue_move(s, & s->q_predma, (struct ivtv_queue *)0, & s->q_free, 0);
  return;
}
}
int ivtv_stream_alloc(struct ivtv_stream *s )
{
  struct ivtv *itv ;
  int SGsize ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct ivtv_buffer *buf ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  itv = s->itv;
  SGsize = (int )(s->buffers * 12U);
  if (s->buffers == 0U) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Allocate %s%s stream: %d x %d buffers (%dkB total)\n",
           (char *)(& itv->v4l2_dev.name), s->dma != 3 ? (char *)"DMA " : (char *)"",
           s->name, s->buffers, s->buf_size, (s->buffers * s->buf_size) / 1024U);
  } else {
  }
  tmp = kzalloc((size_t )SGsize, 720U);
  s->sg_pending = (struct ivtv_sg_host_element *)tmp;
  if ((unsigned long )s->sg_pending == (unsigned long )((struct ivtv_sg_host_element *)0)) {
    printk("\v%s: Could not allocate sg_pending for %s stream\n", (char *)(& itv->v4l2_dev.name),
           s->name);
    return (-12);
  } else {
  }
  s->sg_pending_size = 0;
  tmp___0 = kzalloc((size_t )SGsize, 720U);
  s->sg_processing = (struct ivtv_sg_host_element *)tmp___0;
  if ((unsigned long )s->sg_processing == (unsigned long )((struct ivtv_sg_host_element *)0)) {
    printk("\v%s: Could not allocate sg_processing for %s stream\n", (char *)(& itv->v4l2_dev.name),
           s->name);
    kfree((void const *)s->sg_pending);
    s->sg_pending = (struct ivtv_sg_host_element *)0;
    return (-12);
  } else {
  }
  s->sg_processing_size = 0;
  tmp___1 = kzalloc(12UL, 720U);
  s->sg_dma = (struct ivtv_sg_element *)tmp___1;
  if ((unsigned long )s->sg_dma == (unsigned long )((struct ivtv_sg_element *)0)) {
    printk("\v%s: Could not allocate sg_dma for %s stream\n", (char *)(& itv->v4l2_dev.name),
           s->name);
    kfree((void const *)s->sg_pending);
    s->sg_pending = (struct ivtv_sg_host_element *)0;
    kfree((void const *)s->sg_processing);
    s->sg_processing = (struct ivtv_sg_host_element *)0;
    return (-12);
  } else {
  }
  tmp___2 = ivtv_might_use_dma(s);
  if (tmp___2 != 0) {
    s->sg_handle = pci_map_single(itv->pdev, (void *)s->sg_dma, 12UL, 1);
    ivtv_stream_sync_for_cpu___0(s);
  } else {
  }
  i = 0;
  goto ldv_39027;
  ldv_39026:
  tmp___3 = kzalloc(48UL, 720U);
  buf = (struct ivtv_buffer *)tmp___3;
  if ((unsigned long )buf == (unsigned long )((struct ivtv_buffer *)0)) {
    goto ldv_39025;
  } else {
  }
  tmp___4 = kmalloc((size_t )(s->buf_size + 256U), 720U);
  buf->buf = (char *)tmp___4;
  if ((unsigned long )buf->buf == (unsigned long )((char *)0)) {
    kfree((void const *)buf);
    goto ldv_39025;
  } else {
  }
  INIT_LIST_HEAD(& buf->list);
  tmp___5 = ivtv_might_use_dma(s);
  if (tmp___5 != 0) {
    buf->dma_handle = pci_map_single((s->itv)->pdev, (void *)buf->buf, (size_t )(s->buf_size + 256U),
                                     s->dma);
    ivtv_buf_sync_for_cpu___0(s, buf);
  } else {
  }
  ivtv_enqueue(s, buf, & s->q_free);
  i = i + 1;
  ldv_39027: ;
  if ((u32 )i < s->buffers) {
    goto ldv_39026;
  } else {
  }
  ldv_39025: ;
  if ((u32 )i == s->buffers) {
    return (0);
  } else {
  }
  printk("\v%s: Couldn\'t allocate buffers for %s stream\n", (char *)(& itv->v4l2_dev.name),
         s->name);
  ivtv_stream_free(s);
  return (-12);
}
}
void ivtv_stream_free(struct ivtv_stream *s )
{
  struct ivtv_buffer *buf ;
  int tmp ;
  {
  ivtv_flush_queues(s);
  goto ldv_39033;
  ldv_39032:
  tmp = ivtv_might_use_dma(s);
  if (tmp != 0) {
    pci_unmap_single((s->itv)->pdev, buf->dma_handle, (size_t )(s->buf_size + 256U),
                     s->dma);
  } else {
  }
  kfree((void const *)buf->buf);
  kfree((void const *)buf);
  ldv_39033:
  buf = ivtv_dequeue(s, & s->q_free);
  if ((unsigned long )buf != (unsigned long )((struct ivtv_buffer *)0)) {
    goto ldv_39032;
  } else {
  }
  if ((unsigned long )s->sg_dma != (unsigned long )((struct ivtv_sg_element *)0)) {
    if (s->sg_handle != 4294967295ULL) {
      pci_unmap_single((s->itv)->pdev, s->sg_handle, 12UL, 1);
      s->sg_handle = 4294967295ULL;
    } else {
    }
    kfree((void const *)s->sg_pending);
    kfree((void const *)s->sg_processing);
    kfree((void const *)s->sg_dma);
    s->sg_pending = (struct ivtv_sg_host_element *)0;
    s->sg_processing = (struct ivtv_sg_host_element *)0;
    s->sg_dma = (struct ivtv_sg_element *)0;
    s->sg_pending_size = 0;
    s->sg_processing_size = 0;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_179(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_180(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_181(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_182(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_183(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
int ldv_del_timer_198(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_199(struct timer_list *ldv_func_arg1 ) ;
bool ldv_queue_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_195(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_197(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_196(struct workqueue_struct *ldv_func_arg1 ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device_no_warn(struct video_device *vdev , int type ,
                                                  int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 0, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern void video_device_release_empty(struct video_device * ) ;
__inline static void v4l2_disable_ioctl(struct video_device *vdev , unsigned int cmd )
{
  {
  if ((cmd & 255U) <= 191U) {
    set_bit((long )cmd & 255L, (unsigned long volatile *)(& vdev->valid_ioctls));
  } else {
  }
  return;
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern void cx2341x_handler_set_busy(struct cx2341x_handler * , int ) ;
static struct v4l2_file_operations const ivtv_v4l2_enc_fops =
     {& __this_module, & ivtv_v4l2_read, & ivtv_v4l2_write, & ivtv_v4l2_enc_poll, & video_ioctl2,
    0, 0, 0, & ivtv_v4l2_open, & ivtv_v4l2_close};
static struct v4l2_file_operations const ivtv_v4l2_dec_fops =
     {& __this_module, & ivtv_v4l2_read, & ivtv_v4l2_write, & ivtv_v4l2_dec_poll, & video_ioctl2,
    0, 0, 0, & ivtv_v4l2_open, & ivtv_v4l2_close};
static struct v4l2_file_operations const ivtv_v4l2_radio_fops =
     {& __this_module, 0, 0, & ivtv_v4l2_enc_poll, & video_ioctl2, 0, 0, 0, & ivtv_v4l2_open,
    & ivtv_v4l2_close};
static struct __anonstruct_ivtv_stream_info_314 ivtv_stream_info[9U] =
  { {"encoder MPG", 0, 0, 2, 0, 16973825U, & ivtv_v4l2_enc_fops},
        {"encoder YUV", 0, 32, 2, 0, 16973825U, & ivtv_v4l2_enc_fops},
        {"encoder VBI", 1, 0, 2, 0, 16973904U, & ivtv_v4l2_enc_fops},
        {"encoder PCM", 0, 24, 2, 0, 16973824U, & ivtv_v4l2_enc_fops},
        {"encoder radio", 2, 0, 3, 1, 327680U, & ivtv_v4l2_radio_fops},
        {"decoder MPG", 0, 16, 1, 0, 16908802U, & ivtv_v4l2_dec_fops},
        {"decoder VBI", 1, 8, 3, 1, 16777280U, & ivtv_v4l2_enc_fops},
        {"decoder VOUT", 1, 16, 3, 1, 16908416U, & ivtv_v4l2_dec_fops},
        {"decoder YUV", 0, 48, 1, 0, 16908802U, & ivtv_v4l2_dec_fops}};
static void ivtv_stream_init(struct ivtv *itv , int type )
{
  struct ivtv_stream *s ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )type;
  memset((void *)s, 0, 2320UL);
  s->itv = itv;
  s->type = type;
  s->name = ivtv_stream_info[type].name;
  s->caps = ivtv_stream_info[type].v4l2_caps;
  if (ivtv_stream_info[type].pio != 0) {
    s->dma = 3;
  } else {
    s->dma = ivtv_stream_info[type].dma;
  }
  s->buf_size = (u32 )itv->stream_buf_size[type];
  if (s->buf_size != 0U) {
    s->buffers = (((u32 )(itv->options.kilobytes[type] * 1024) + s->buf_size) - 1U) / s->buf_size;
  } else {
  }
  spinlock_check(& s->qlock);
  __raw_spin_lock_init(& s->qlock.__annonCompField18.rlock, "&(&s->qlock)->rlock",
                       & __key);
  __init_waitqueue_head(& s->waitq, "&s->waitq", & __key___0);
  s->sg_handle = 4294967295ULL;
  ivtv_queue_init(& s->q_free);
  ivtv_queue_init(& s->q_full);
  ivtv_queue_init(& s->q_dma);
  ivtv_queue_init(& s->q_predma);
  ivtv_queue_init(& s->q_io);
  return;
}
}
static int ivtv_prep_dev(struct ivtv *itv , int type )
{
  struct ivtv_stream *s ;
  int num_offset ;
  int num ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )type;
  num_offset = ivtv_stream_info[type].num_offset;
  num = ((int )itv->instance + ivtv_first_minor) + num_offset;
  s->vdev.v4l2_dev = (struct v4l2_device *)0;
  s->itv = itv;
  s->type = type;
  s->name = ivtv_stream_info[type].name;
  if (type == 4 && (itv->v4l2_cap & 262144U) == 0U) {
    return (0);
  } else {
  }
  if (type > 4 && (itv->v4l2_cap & 2U) == 0U) {
    return (0);
  } else {
  }
  if (ivtv_stream_info[type].dma != 3 && itv->options.kilobytes[type] == 0) {
    printk("\016%s: Disabled %s device\n", (char *)(& itv->v4l2_dev.name), ivtv_stream_info[type].name);
    return (0);
  } else {
  }
  ivtv_stream_init(itv, type);
  snprintf((char *)(& s->vdev.name), 32UL, "%s %s", (char *)(& itv->v4l2_dev.name),
           s->name);
  s->vdev.num = (u16 )num;
  s->vdev.v4l2_dev = & itv->v4l2_dev;
  if ((ivtv_stream_info[type].v4l2_caps & 130U) != 0U) {
    s->vdev.vfl_dir = 1;
  } else {
  }
  s->vdev.fops = ivtv_stream_info[type].fops;
  s->vdev.ctrl_handler = itv->v4l2_dev.ctrl_handler;
  s->vdev.release = & video_device_release_empty;
  s->vdev.tvnorms = 16777215ULL;
  s->vdev.lock = & itv->serialize_lock;
  if (s->type == 6) {
    v4l2_disable_ioctl(& s->vdev, 1077171746U);
    v4l2_disable_ioctl(& s->vdev, 2150913569U);
    v4l2_disable_ioctl(& s->vdev, 3224655425U);
    v4l2_disable_ioctl(& s->vdev, 3226490394U);
    v4l2_disable_ioctl(& s->vdev, 3221509671U);
    v4l2_disable_ioctl(& s->vdev, 2147767846U);
    v4l2_disable_ioctl(& s->vdev, 1076647481U);
    v4l2_disable_ioctl(& s->vdev, 3224131128U);
    v4l2_disable_ioctl(& s->vdev, 1079268894U);
    v4l2_disable_ioctl(& s->vdev, 3226752541U);
    v4l2_disable_ioctl(& s->vdev, 1074288152U);
  } else {
  }
  ivtv_set_funcs(& s->vdev);
  return (0);
}
}
int ivtv_streams_setup(struct ivtv *itv )
{
  int type ;
  int tmp ;
  int tmp___0 ;
  {
  type = 0;
  goto ldv_39284;
  ldv_39283:
  tmp = ivtv_prep_dev(itv, type);
  if (tmp != 0) {
    goto ldv_39281;
  } else {
  }
  if ((unsigned long )itv->streams[type].vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    goto ldv_39282;
  } else {
  }
  tmp___0 = ivtv_stream_alloc((struct ivtv_stream *)(& itv->streams) + (unsigned long )type);
  if (tmp___0 != 0) {
    goto ldv_39281;
  } else {
  }
  ldv_39282:
  type = type + 1;
  ldv_39284: ;
  if (type <= 8) {
    goto ldv_39283;
  } else {
  }
  ldv_39281: ;
  if (type == 9) {
    return (0);
  } else {
  }
  ivtv_streams_cleanup(itv);
  return (-12);
}
}
static int ivtv_reg_dev(struct ivtv *itv , int type )
{
  struct ivtv_stream *s ;
  int vfl_type ;
  char const *name ;
  int num ;
  struct ivtv_stream *s_mpg ;
  int tmp ;
  {
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )type;
  vfl_type = ivtv_stream_info[type].vfl_type;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (0);
  } else {
  }
  num = (int )s->vdev.num;
  if (type != 0) {
    s_mpg = (struct ivtv_stream *)(& itv->streams);
    if ((unsigned long )s_mpg->vdev.v4l2_dev != (unsigned long )((struct v4l2_device *)0)) {
      num = (int )s_mpg->vdev.num + ivtv_stream_info[type].num_offset;
    } else {
    }
  } else {
  }
  video_set_drvdata(& s->vdev, (void *)s);
  tmp = video_register_device_no_warn(& s->vdev, vfl_type, num);
  if (tmp != 0) {
    printk("\v%s: Couldn\'t register v4l2 device for %s (device node number %d)\n",
           (char *)(& itv->v4l2_dev.name), s->name, num);
    return (-12);
  } else {
  }
  name = video_device_node_name(& s->vdev);
  switch (vfl_type) {
  case 0:
  printk("\016%s: Registered device %s for %s (%d kB)\n", (char *)(& itv->v4l2_dev.name),
         name, s->name, itv->options.kilobytes[type]);
  goto ldv_39295;
  case 2:
  printk("\016%s: Registered device %s for %s\n", (char *)(& itv->v4l2_dev.name),
         name, s->name);
  goto ldv_39295;
  case 1: ;
  if (itv->options.kilobytes[type] != 0) {
    printk("\016%s: Registered device %s for %s (%d kB)\n", (char *)(& itv->v4l2_dev.name),
           name, s->name, itv->options.kilobytes[type]);
  } else {
    printk("\016%s: Registered device %s for %s\n", (char *)(& itv->v4l2_dev.name),
           name, s->name);
  }
  goto ldv_39295;
  }
  ldv_39295: ;
  return (0);
}
}
int ivtv_streams_register(struct ivtv *itv )
{
  int type ;
  int err ;
  int tmp ;
  {
  err = 0;
  type = 0;
  goto ldv_39304;
  ldv_39303:
  tmp = ivtv_reg_dev(itv, type);
  err = tmp | err;
  type = type + 1;
  ldv_39304: ;
  if (type <= 8) {
    goto ldv_39303;
  } else {
  }
  if (err == 0) {
    return (0);
  } else {
  }
  ivtv_streams_cleanup(itv);
  return (-12);
}
}
void ivtv_streams_cleanup(struct ivtv *itv )
{
  int type ;
  struct video_device *vdev ;
  {
  type = 0;
  goto ldv_39313;
  ldv_39312:
  vdev = & itv->streams[type].vdev;
  if ((unsigned long )vdev->v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    goto ldv_39311;
  } else {
  }
  video_unregister_device(vdev);
  ivtv_stream_free((struct ivtv_stream *)(& itv->streams) + (unsigned long )type);
  itv->streams[type].vdev.v4l2_dev = (struct v4l2_device *)0;
  ldv_39311:
  type = type + 1;
  ldv_39313: ;
  if (type <= 8) {
    goto ldv_39312;
  } else {
  }
  return;
}
}
static void ivtv_vbi_setup(struct ivtv *itv )
{
  int raw ;
  int tmp ;
  u32 data[16U] ;
  int lines ;
  int i ;
  int valid ;
  {
  tmp = ivtv_raw_vbi((struct ivtv const *)itv);
  raw = tmp;
  ivtv_vapi(itv, 183, 5, 65535, 0, 0, 0, 0);
  if (raw != 0) {
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->s_raw_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                    struct v4l2_vbi_format * ))0)) {
        (*((((itv->sd_video)->ops)->vbi)->s_raw_fmt))(itv->sd_video, & itv->vbi.in.fmt.vbi);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->s_sliced_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                     struct v4l2_sliced_vbi_format * ))0)) {
      (*((((itv->sd_video)->ops)->vbi)->s_sliced_fmt))(itv->sd_video, & itv->vbi.in.fmt.sliced);
    } else {
    }
  } else {
  }
  if (raw != 0) {
    lines = (int )(itv->vbi.count * 2U);
  } else {
    lines = (unsigned int )itv->is_60hz != 0U ? 24 : 38;
    if ((unsigned int )itv->is_60hz != 0U && (int )itv->hw_flags & 1) {
      lines = lines + 2;
    } else {
    }
  }
  itv->vbi.enc_size = (raw != 0 ? itv->vbi.raw_size : itv->vbi.sliced_size) * (u32 )lines;
  data[0] = (u32 )(raw | 48386);
  data[1] = 1U;
  data[2] = raw == 0 ? (itv->vbi.raw_size / itv->vbi.enc_size) * 4U : 4U;
  if ((int )itv->hw_flags & 1) {
    if (raw != 0) {
      data[3] = 543170656U;
      data[4] = 812658800U;
    } else {
      data[3] = 2968563952U;
      data[4] = 2699075808U;
    }
    data[5] = (u32 )lines;
    data[6] = raw != 0 ? itv->vbi.raw_size : itv->vbi.sliced_size;
  } else {
    if (raw != 0) {
      data[3] = 623207010U;
      data[4] = 947879807U;
    } else {
      data[3] = 2880171244U;
      data[4] = 3069309425U;
    }
    data[5] = (u32 )lines;
    data[6] = itv->vbi.enc_size / (u32 )lines;
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Setup VBI API header 0x%08x pkts %d buffs %d ln %d sz %d\n",
           (char *)(& itv->v4l2_dev.name), data[0], data[1], data[2], data[5], data[6]);
  } else {
  }
  ivtv_api(itv, 200, 7, (u32 *)(& data));
  itv->vbi.enc_start = data[2];
  itv->vbi.fpi = (int )data[0];
  if (itv->vbi.fpi == 0) {
    itv->vbi.fpi = 1;
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Setup VBI start 0x%08x frames %d fpi %d\n", (char *)(& itv->v4l2_dev.name),
           itv->vbi.enc_start, data[1], itv->vbi.fpi);
  } else {
  }
  i = 2;
  goto ldv_39324;
  ldv_39323: ;
  if ((unsigned int )itv->is_60hz != 0U) {
    valid = i > 9 && i <= 21;
  } else {
    valid = i > 5 && i <= 23;
  }
  ivtv_vapi(itv, 183, 5, i + -1, valid, 0, 0, 0);
  ivtv_vapi(itv, 183, 5, (unsigned int )(i + -1) | 2147483648U, valid, 0, 0, 0);
  i = i + 1;
  ldv_39324: ;
  if (i <= 24) {
    goto ldv_39323;
  } else {
  }
  return;
}
}
int ivtv_start_v4l2_encode_stream(struct ivtv_stream *s )
{
  u32 data[16U] ;
  struct ivtv *itv ;
  int captype ;
  int subtype ;
  int enable_passthrough ;
  u64 tmp ;
  s32 tmp___0 ;
  int digitizer ;
  s32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  itv = s->itv;
  captype = 0;
  subtype = 0;
  enable_passthrough = 0;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Start encoder stream %s\n", (char *)(& itv->v4l2_dev.name),
           s->name);
  } else {
  }
  switch (s->type) {
  case 0:
  captype = 0;
  subtype = 3;
  if (itv->output_mode == 4) {
    ivtv_passthrough_mode(itv, 0);
    enable_passthrough = 1;
  } else {
  }
  tmp = 0ULL;
  itv->vbi_data_inserted = tmp;
  itv->mpg_data_received = tmp;
  itv->dualwatch_jiffies = jiffies;
  tmp___0 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField92.audio_mode);
  itv->dualwatch_stereo_mode = (u32 )tmp___0;
  itv->search_pack_header = 0;
  goto ldv_39335;
  case 1: ;
  if (itv->output_mode == 4) {
    captype = 2;
    subtype = 11;
    goto ldv_39335;
  } else {
  }
  captype = 1;
  subtype = 1;
  goto ldv_39335;
  case 3:
  captype = 1;
  subtype = 2;
  goto ldv_39335;
  case 2:
  captype = 1;
  subtype = 4;
  itv->vbi.frame = 0U;
  itv->vbi.inserted_frame = 0U;
  memset((void *)(& itv->vbi.sliced_mpeg_size), 0, 128UL);
  goto ldv_39335;
  default: ;
  return (-22);
  }
  ldv_39335:
  s->subtype = subtype;
  s->buffers_stolen = 0U;
  clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
  tmp___3 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___3 == 0) {
    ivtv_vapi(itv, 201, 2, 1, 1);
    ivtv_vapi(itv, 219, 1, 0);
    ivtv_vapi(itv, 220, 2, 3, (unsigned int )itv->has_cx23415 == 0U);
    ivtv_vapi(itv, 220, 2, 8, 0);
    ivtv_vapi(itv, 220, 2, 4, 1);
    ivtv_vapi(itv, 220, 1, 12);
    ivtv_vapi(itv, 215, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (((unsigned int )(itv->card)->hw_all & 2050U) != 0U) {
      digitizer = 241;
    } else
    if (((unsigned int )(itv->card)->hw_all & 256U) != 0U) {
      digitizer = 239;
    } else {
      digitizer = 320;
    }
    ivtv_vapi(itv, 214, 2, digitizer, digitizer);
    if ((itv->v4l2_cap & 16U) != 0U) {
      ivtv_vbi_setup(itv);
    } else {
    }
    ivtv_vapi_result(itv, (u32 *)(& data), 199, 2, 7, 400);
    itv->pgm_info_offset = data[0];
    itv->pgm_info_num = data[1];
    itv->pgm_info_write_idx = 0U;
    itv->pgm_info_read_idx = 0U;
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: PGM Index at 0x%08x with %d elements\n", (char *)(& itv->v4l2_dev.name),
             itv->pgm_info_offset, itv->pgm_info_num);
    } else {
    }
    cx2341x_handler_setup(& itv->cxhdl);
    tmp___2 = constant_test_bit(5L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___2 != 0) {
      tmp___1 = v4l2_ctrl_g_ctrl(itv->cxhdl.__annonCompField95.video_mute_yuv);
      ivtv_vapi(itv, 217, 1, (tmp___1 << 8) | 1);
    } else {
    }
  } else {
  }
  if ((unsigned int )itv->has_cx23415 != 0U) {
    tmp___4 = test_and_set_bit(6L, (unsigned long volatile *)(& itv->i_flags));
    if (tmp___4 == 0) {
      ivtv_vapi(itv, 213, 4, 0, 1, 268435456, -1);
      ivtv_clear_irq_mask(itv, 268435456U);
    } else {
    }
  } else {
  }
  tmp___5 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___5 == 0) {
    ivtv_set_irq_mask(itv, 3221225472U);
    clear_bit(4L, (unsigned long volatile *)(& itv->i_flags));
    cx2341x_handler_set_busy(& itv->cxhdl, 1);
    if ((unsigned long )itv->sd_audio != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_audio)->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )(((itv->sd_audio)->ops)->audio)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                         int ))0)) {
        (*((((itv->sd_audio)->ops)->audio)->s_stream))(itv->sd_audio, 1);
      } else {
      }
    } else {
    }
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                         int ))0)) {
        (*((((itv->sd_video)->ops)->video)->s_stream))(itv->sd_video, 0);
      } else {
      }
    } else {
    }
    ivtv_msleep_timeout(300U, 0);
    ivtv_vapi(itv, 205, 0);
    if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )((itv->sd_video)->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                         int ))0)) {
        (*((((itv->sd_video)->ops)->video)->s_stream))(itv->sd_video, 1);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___6 = ivtv_vapi(itv, 129, 2, captype, subtype);
  if (tmp___6 != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Error starting capture!\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    return (-22);
  } else {
  }
  if (enable_passthrough != 0) {
    ivtv_passthrough_mode(itv, 1);
  } else {
  }
  if (s->type == 2) {
    ivtv_clear_irq_mask(itv, 536870912U);
  } else {
    ivtv_clear_irq_mask(itv, 3221225472U);
  }
  atomic_inc(& itv->capturing);
  return (0);
}
}
static char const __kstrtab_ivtv_start_v4l2_encode_stream[30U] =
  { 'i', 'v', 't', 'v',
        '_', 's', 't', 'a',
        'r', 't', '_', 'v',
        '4', 'l', '2', '_',
        'e', 'n', 'c', 'o',
        'd', 'e', '_', 's',
        't', 'r', 'e', 'a',
        'm', '\000'};
struct kernel_symbol const __ksymtab_ivtv_start_v4l2_encode_stream ;
struct kernel_symbol const __ksymtab_ivtv_start_v4l2_encode_stream = {(unsigned long )(& ivtv_start_v4l2_encode_stream), (char const *)(& __kstrtab_ivtv_start_v4l2_encode_stream)};
static int ivtv_setup_v4l2_decode_stream(struct ivtv_stream *s )
{
  u32 data[16U] ;
  struct ivtv *itv ;
  int datatype ;
  u16 width ;
  u16 height ;
  int tmp ;
  int tmp___0 ;
  {
  itv = s->itv;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Setting some initial decoder settings\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  width = itv->cxhdl.width;
  height = itv->cxhdl.height;
  ivtv_vapi(itv, 22, 2, (int )itv->audio_bilingual_mode, (int )itv->audio_stereo_mode);
  ivtv_vapi(itv, 24, 1, 0);
  ivtv_vapi(itv, 30, 1, 1);
  ivtv_vapi_result(itv, (u32 *)(& data), 25, 1, 1);
  itv->vbi.dec_start = data[0];
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Decoder VBI RE-Insert start 0x%08x size 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           itv->vbi.dec_start, data[1]);
  } else {
  }
  switch (s->type) {
  case 8: ;
  if (itv->output_mode == 4) {
    datatype = 1;
  } else {
    datatype = 2;
    width = 720U;
    height = (unsigned int )itv->is_out_50hz != 0U ? 576U : 480U;
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Setup DEC YUV Stream data[0] = %d\n", (char *)(& itv->v4l2_dev.name),
           datatype);
  } else {
  }
  goto ldv_39357;
  case 5: ;
  default:
  datatype = 0;
  goto ldv_39357;
  }
  ldv_39357:
  tmp = ivtv_vapi(itv, 26, 4, datatype, (int )width, (int )height, itv->cxhdl.audio_properties);
  if (tmp != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Couldn\'t initialize decoder source\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  } else {
  }
  ivtv_msleep_timeout(10U, 0);
  tmp___0 = ivtv_firmware_check(itv, (char *)"ivtv_setup_v4l2_decode_stream");
  return (tmp___0);
}
}
int ivtv_start_v4l2_decode_stream(struct ivtv_stream *s , int gop_offset )
{
  struct ivtv *itv ;
  int rc ;
  int tmp ;
  {
  itv = s->itv;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  tmp = test_and_set_bit(4L, (unsigned long volatile *)(& s->s_flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Starting decode stream %s (gop_offset %d)\n", (char *)(& itv->v4l2_dev.name),
           s->name, gop_offset);
  } else {
  }
  rc = ivtv_setup_v4l2_decode_stream(s);
  if (rc < 0) {
    clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
    return (rc);
  } else {
  }
  ivtv_vapi(itv, 8, 1, 65536);
  clear_bit(7L, (unsigned long volatile *)(& s->s_flags));
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 8UL)->data));
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 8UL)->data) + 1U);
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 8UL)->data) + 2U);
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 8UL)->data) + 3U);
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 9UL)->data));
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 9UL)->data) + 1U);
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 9UL)->data) + 2U);
  writel(0U, (void volatile *)(& (itv->dec_mbox.mbox + 9UL)->data) + 3U);
  ivtv_vapi(itv, 23, 4, 0, 1, 16777216, -1);
  ivtv_vapi(itv, 1, 2, gop_offset, 0);
  ivtv_msleep_timeout(10U, 0);
  ivtv_clear_irq_mask(itv, 20971520U);
  if ((ivtv_debug & 64) != 0) {
    printk("\016%s:  irq: IRQ Mask is now: 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           itv->irqmask);
  } else {
  }
  atomic_inc(& itv->decoding);
  return (0);
}
}
void ivtv_stop_all_captures(struct ivtv *itv )
{
  int i ;
  struct ivtv_stream *s ;
  int tmp ;
  {
  i = 8;
  goto ldv_39373;
  ldv_39372:
  s = (struct ivtv_stream *)(& itv->streams) + (unsigned long )i;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    goto ldv_39371;
  } else {
  }
  tmp = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp != 0) {
    ivtv_stop_v4l2_encode_stream(s, 0);
  } else {
  }
  ldv_39371:
  i = i - 1;
  ldv_39373: ;
  if (i >= 0) {
    goto ldv_39372;
  } else {
  }
  return;
}
}
int ivtv_stop_v4l2_encode_stream(struct ivtv_stream *s , int gop_end )
{
  struct ivtv *itv ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  int cap_type ;
  int stopmode ;
  int tmp___0 ;
  unsigned long duration ;
  unsigned long then ;
  struct task_struct *tmp___1 ;
  long volatile __ret ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  unsigned long tmp___6 ;
  int tmp___7 ;
  unsigned long tmp___8 ;
  int tmp___9 ;
  struct task_struct *tmp___10 ;
  long volatile __ret___0 ;
  struct task_struct *tmp___11 ;
  struct task_struct *tmp___12 ;
  struct task_struct *tmp___13 ;
  struct task_struct *tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  itv = s->itv;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stop Capture\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (s->type == 7) {
    return (0);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  switch (s->type) {
  case 1:
  cap_type = 1;
  goto ldv_39384;
  case 3:
  cap_type = 1;
  goto ldv_39384;
  case 2:
  cap_type = 1;
  goto ldv_39384;
  case 0: ;
  default:
  cap_type = 0;
  goto ldv_39384;
  }
  ldv_39384: ;
  if (s->type == 0 && gop_end != 0) {
    stopmode = 0;
  } else {
    stopmode = 1;
  }
  ivtv_vapi(itv, 130, 3, stopmode, cap_type, s->subtype);
  tmp___15 = constant_test_bit(6L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp___15 == 0) {
    if (s->type == 0 && gop_end != 0) {
      then = jiffies;
      add_wait_queue(& itv->eos_waitq, & wait);
      tmp___1 = get_current();
      tmp___1->task_state_change = 0UL;
      __ret = 1L;
      switch (8UL) {
      case 1UL:
      tmp___2 = get_current();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___2->state): : "memory",
                           "cc");
      goto ldv_39393;
      case 2UL:
      tmp___3 = get_current();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                           "cc");
      goto ldv_39393;
      case 4UL:
      tmp___4 = get_current();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                           "cc");
      goto ldv_39393;
      case 8UL:
      tmp___5 = get_current();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___5->state): : "memory",
                           "cc");
      goto ldv_39393;
      default:
      __xchg_wrong_size();
      }
      ldv_39393: ;
      goto ldv_39406;
      ldv_39405:
      tmp___6 = msecs_to_jiffies(10U);
      schedule_timeout((long )tmp___6);
      ldv_39406:
      tmp___7 = constant_test_bit(4L, (unsigned long const volatile *)(& itv->i_flags));
      if (tmp___7 == 0) {
        tmp___8 = msecs_to_jiffies(2000U);
        if ((long )((unsigned long )jiffies - (tmp___8 + then)) < 0L) {
          goto ldv_39405;
        } else {
          goto ldv_39407;
        }
      } else {
      }
      ldv_39407:
      duration = ((unsigned long )jiffies - then) * 4UL;
      tmp___9 = constant_test_bit(4L, (unsigned long const volatile *)(& itv->i_flags));
      if (tmp___9 == 0) {
        if (ivtv_debug & 1) {
          printk("\016%s:  warn: %s: EOS interrupt not received! stopping anyway.\n",
                 (char *)(& itv->v4l2_dev.name), s->name);
        } else {
        }
        if (ivtv_debug & 1) {
          printk("\016%s:  warn: %s: waited %lu ms.\n", (char *)(& itv->v4l2_dev.name),
                 s->name, duration);
        } else {
        }
      } else
      if ((ivtv_debug & 2) != 0) {
        printk("\016%s:  info: %s: EOS took %lu ms to occur.\n", (char *)(& itv->v4l2_dev.name),
               s->name, duration);
      } else {
      }
      tmp___10 = get_current();
      tmp___10->task_state_change = 0UL;
      __ret___0 = 0L;
      switch (8UL) {
      case 1UL:
      tmp___11 = get_current();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (tmp___11->state): : "memory",
                           "cc");
      goto ldv_39410;
      case 2UL:
      tmp___12 = get_current();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (tmp___12->state): : "memory",
                           "cc");
      goto ldv_39410;
      case 4UL:
      tmp___13 = get_current();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (tmp___13->state): : "memory",
                           "cc");
      goto ldv_39410;
      case 8UL:
      tmp___14 = get_current();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (tmp___14->state): : "memory",
                           "cc");
      goto ldv_39410;
      default:
      __xchg_wrong_size();
      }
      ldv_39410:
      remove_wait_queue(& itv->eos_waitq, & wait);
      set_bit(7L, (unsigned long volatile *)(& s->s_flags));
    } else {
    }
    ivtv_msleep_timeout(100U, 0);
  } else {
  }
  atomic_dec(& itv->capturing);
  clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
  if (s->type == 2) {
    ivtv_set_irq_mask(itv, 536870912U);
  } else {
  }
  tmp___16 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___16 > 0) {
    return (0);
  } else {
  }
  cx2341x_handler_set_busy(& itv->cxhdl, 0);
  ivtv_set_irq_mask(itv, 3221225472U);
  ldv_del_timer_198(& itv->dma_timer);
  tmp___17 = test_and_clear_bit(6L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___17 != 0) {
    ivtv_vapi(itv, 213, 4, 0, 0, 268435456, -1);
    ivtv_set_irq_mask(itv, 268435456U);
  } else {
  }
  ivtv_vapi(itv, 130, 3, 1, 2, 7);
  __wake_up(& s->waitq, 3U, 1, (void *)0);
  return (0);
}
}
static char const __kstrtab_ivtv_stop_v4l2_encode_stream[29U] =
  { 'i', 'v', 't', 'v',
        '_', 's', 't', 'o',
        'p', '_', 'v', '4',
        'l', '2', '_', 'e',
        'n', 'c', 'o', 'd',
        'e', '_', 's', 't',
        'r', 'e', 'a', 'm',
        '\000'};
struct kernel_symbol const __ksymtab_ivtv_stop_v4l2_encode_stream ;
struct kernel_symbol const __ksymtab_ivtv_stop_v4l2_encode_stream = {(unsigned long )(& ivtv_stop_v4l2_encode_stream), (char const *)(& __kstrtab_ivtv_stop_v4l2_encode_stream)};
int ivtv_stop_v4l2_decode_stream(struct ivtv_stream *s , int flags , u64 pts )
{
  struct v4l2_event ev ;
  struct ivtv *itv ;
  int tmp ;
  u32 tmp___0 ;
  u32 data[16U] ;
  int tmp___1 ;
  {
  ev.type = 2U;
  ev.u.data[0] = (unsigned char)0;
  ev.u.data[1] = (unsigned char)0;
  ev.u.data[2] = (unsigned char)0;
  ev.u.data[3] = (unsigned char)0;
  ev.u.data[4] = (unsigned char)0;
  ev.u.data[5] = (unsigned char)0;
  ev.u.data[6] = (unsigned char)0;
  ev.u.data[7] = (unsigned char)0;
  ev.u.data[8] = (unsigned char)0;
  ev.u.data[9] = (unsigned char)0;
  ev.u.data[10] = (unsigned char)0;
  ev.u.data[11] = (unsigned char)0;
  ev.u.data[12] = (unsigned char)0;
  ev.u.data[13] = (unsigned char)0;
  ev.u.data[14] = (unsigned char)0;
  ev.u.data[15] = (unsigned char)0;
  ev.u.data[16] = (unsigned char)0;
  ev.u.data[17] = (unsigned char)0;
  ev.u.data[18] = (unsigned char)0;
  ev.u.data[19] = (unsigned char)0;
  ev.u.data[20] = (unsigned char)0;
  ev.u.data[21] = (unsigned char)0;
  ev.u.data[22] = (unsigned char)0;
  ev.u.data[23] = (unsigned char)0;
  ev.u.data[24] = (unsigned char)0;
  ev.u.data[25] = (unsigned char)0;
  ev.u.data[26] = (unsigned char)0;
  ev.u.data[27] = (unsigned char)0;
  ev.u.data[28] = (unsigned char)0;
  ev.u.data[29] = (unsigned char)0;
  ev.u.data[30] = (unsigned char)0;
  ev.u.data[31] = (unsigned char)0;
  ev.u.data[32] = (unsigned char)0;
  ev.u.data[33] = (unsigned char)0;
  ev.u.data[34] = (unsigned char)0;
  ev.u.data[35] = (unsigned char)0;
  ev.u.data[36] = (unsigned char)0;
  ev.u.data[37] = (unsigned char)0;
  ev.u.data[38] = (unsigned char)0;
  ev.u.data[39] = (unsigned char)0;
  ev.u.data[40] = (unsigned char)0;
  ev.u.data[41] = (unsigned char)0;
  ev.u.data[42] = (unsigned char)0;
  ev.u.data[43] = (unsigned char)0;
  ev.u.data[44] = (unsigned char)0;
  ev.u.data[45] = (unsigned char)0;
  ev.u.data[46] = (unsigned char)0;
  ev.u.data[47] = (unsigned char)0;
  ev.u.data[48] = (unsigned char)0;
  ev.u.data[49] = (unsigned char)0;
  ev.u.data[50] = (unsigned char)0;
  ev.u.data[51] = (unsigned char)0;
  ev.u.data[52] = (unsigned char)0;
  ev.u.data[53] = (unsigned char)0;
  ev.u.data[54] = (unsigned char)0;
  ev.u.data[55] = (unsigned char)0;
  ev.u.data[56] = (unsigned char)0;
  ev.u.data[57] = (unsigned char)0;
  ev.u.data[58] = (unsigned char)0;
  ev.u.data[59] = (unsigned char)0;
  ev.u.data[60] = (unsigned char)0;
  ev.u.data[61] = (unsigned char)0;
  ev.u.data[62] = (unsigned char)0;
  ev.u.data[63] = (unsigned char)0;
  ev.pending = 0U;
  ev.sequence = 0U;
  ev.timestamp.tv_sec = 0L;
  ev.timestamp.tv_nsec = 0L;
  ev.id = 0U;
  ev.reserved[0] = 0U;
  ev.reserved[1] = 0U;
  ev.reserved[2] = 0U;
  ev.reserved[3] = 0U;
  ev.reserved[4] = 0U;
  ev.reserved[5] = 0U;
  ev.reserved[6] = 0U;
  ev.reserved[7] = 0U;
  itv = s->itv;
  if ((unsigned long )s->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  if (s->type != 8 && s->type != 5) {
    return (-22);
  } else {
  }
  tmp = constant_test_bit(4L, (unsigned long const volatile *)(& s->s_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: Stop Decode at %llu, flags: %x\n", (char *)(& itv->v4l2_dev.name),
           pts, flags);
  } else {
  }
  if ((flags & 2) == 0 || pts != 0ULL) {
    tmp___0 = 0U;
    if (pts != 0ULL) {
      ivtv_vapi(itv, 2, 3, 0, (unsigned int )pts, (unsigned int )(pts >> 32));
    } else {
    }
    ldv_39434:
    ivtv_vapi_result(itv, (u32 *)(& data), 9, 0);
    if (s->q_full.buffers + s->q_dma.buffers == 0U) {
      if (data[3] == tmp___0) {
        goto ldv_39433;
      } else {
      }
      tmp___0 = data[3];
    } else {
    }
    tmp___1 = ivtv_msleep_timeout(100U, 1);
    if (tmp___1 != 0) {
      goto ldv_39433;
    } else {
    }
    goto ldv_39434;
    ldv_39433: ;
  } else {
  }
  ivtv_vapi(itv, 2, 3, flags & 1, 0, 0);
  ivtv_vapi(itv, 23, 4, 0, 0, 16777216, -1);
  ivtv_set_irq_mask(itv, 20971520U);
  ldv_del_timer_199(& itv->dma_timer);
  clear_bit(2L, (unsigned long volatile *)(& s->s_flags));
  clear_bit(4L, (unsigned long volatile *)(& s->s_flags));
  ivtv_flush_queues(s);
  ivtv_msleep_timeout(40U, 0);
  atomic_dec(& itv->decoding);
  set_bit(28L, (unsigned long volatile *)(& itv->i_flags));
  __wake_up(& itv->event_waitq, 3U, 1, (void *)0);
  v4l2_event_queue(& s->vdev, & ev);
  __wake_up(& s->waitq, 3U, 1, (void *)0);
  return (0);
}
}
int ivtv_passthrough_mode(struct ivtv *itv , int enable )
{
  struct ivtv_stream *yuv_stream ;
  struct ivtv_stream *dec_stream ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  yuv_stream = (struct ivtv_stream *)(& itv->streams) + 1UL;
  dec_stream = (struct ivtv_stream *)(& itv->streams) + 8UL;
  if ((unsigned long )yuv_stream->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0) || (unsigned long )dec_stream->vdev.v4l2_dev == (unsigned long )((struct v4l2_device *)0)) {
    return (-22);
  } else {
  }
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: ivtv ioctl: Select passthrough mode\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (enable != 0) {
    if (itv->output_mode == 4) {
      return (0);
    } else {
    }
    tmp = ivtv_set_output_mode(itv, 4);
    if (tmp != 4) {
      return (-16);
    } else {
    }
    set_bit(6L, (unsigned long volatile *)(& dec_stream->s_flags));
    set_bit(4L, (unsigned long volatile *)(& dec_stream->s_flags));
    ivtv_setup_v4l2_decode_stream(dec_stream);
    ivtv_vapi(itv, 1, 2, 0, 1);
    atomic_inc(& itv->decoding);
    tmp___0 = atomic_read((atomic_t const *)(& itv->capturing));
    if (tmp___0 == 0) {
      cx2341x_handler_setup(& itv->cxhdl);
      cx2341x_handler_set_busy(& itv->cxhdl, 1);
    } else {
    }
    ivtv_vapi(itv, 129, 2, 2, 11);
    atomic_inc(& itv->capturing);
    return (0);
  } else {
  }
  if (itv->output_mode != 4) {
    return (0);
  } else {
  }
  ivtv_vapi(itv, 130, 3, 1, 2, 11);
  ivtv_vapi(itv, 2, 3, 1, 0, 0);
  atomic_dec(& itv->capturing);
  atomic_dec(& itv->decoding);
  clear_bit(6L, (unsigned long volatile *)(& dec_stream->s_flags));
  clear_bit(4L, (unsigned long volatile *)(& dec_stream->s_flags));
  itv->output_mode = 0;
  tmp___1 = atomic_read((atomic_t const *)(& itv->capturing));
  if (tmp___1 == 0) {
    cx2341x_handler_set_busy(& itv->cxhdl, 0);
  } else {
  }
  return (0);
}
}
int ldv_retval_4 ;
int ldv_retval_1 ;
int ldv_retval_3 ;
void ldv_initialize_v4l2_file_operations_6(void)
{
  {
  ivtv_v4l2_enc_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_v4l2_file_operations_5(void)
{
  {
  ivtv_v4l2_dec_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_v4l2_file_operations_4(void)
{
  {
  ivtv_v4l2_radio_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_main_exported_6(void)
{
  char *ldvarg99 ;
  void *tmp ;
  char *ldvarg96 ;
  void *tmp___0 ;
  unsigned int ldvarg92 ;
  loff_t *ldvarg97 ;
  void *tmp___1 ;
  size_t ldvarg98 ;
  struct poll_table_struct *ldvarg93 ;
  void *tmp___2 ;
  unsigned long ldvarg91 ;
  loff_t *ldvarg94 ;
  void *tmp___3 ;
  size_t ldvarg95 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg99 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg96 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg97 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  ldvarg93 = (struct poll_table_struct *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg94 = (loff_t *)tmp___3;
  ldv_memset((void *)(& ldvarg92), 0, 4UL);
  ldv_memset((void *)(& ldvarg98), 0, 8UL);
  ldv_memset((void *)(& ldvarg91), 0, 8UL);
  ldv_memset((void *)(& ldvarg95), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_6 == 2) {
    ivtv_v4l2_close(ivtv_v4l2_enc_fops_group0);
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_39466;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    ldv_retval_1 = ivtv_v4l2_open(ivtv_v4l2_enc_fops_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_39466;
  case 2: ;
  if (ldv_state_variable_6 == 2) {
    ivtv_v4l2_write(ivtv_v4l2_enc_fops_group0, (char const *)ldvarg99, ldvarg98,
                    ldvarg97);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_39466;
  case 3: ;
  if (ldv_state_variable_6 == 2) {
    ivtv_v4l2_read(ivtv_v4l2_enc_fops_group0, ldvarg96, ldvarg95, ldvarg94);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_39466;
  case 4: ;
  if (ldv_state_variable_6 == 1) {
    ivtv_v4l2_enc_poll(ivtv_v4l2_enc_fops_group0, ldvarg93);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    ivtv_v4l2_enc_poll(ivtv_v4l2_enc_fops_group0, ldvarg93);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_39466;
  case 5: ;
  if (ldv_state_variable_6 == 1) {
    video_ioctl2(ivtv_v4l2_enc_fops_group0, ldvarg92, ldvarg91);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    video_ioctl2(ivtv_v4l2_enc_fops_group0, ldvarg92, ldvarg91);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_39466;
  default:
  ldv_stop();
  }
  ldv_39466: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  struct poll_table_struct *ldvarg114 ;
  void *tmp ;
  unsigned int ldvarg113 ;
  unsigned long ldvarg112 ;
  int tmp___0 ;
  {
  tmp = ldv_init_zalloc(16UL);
  ldvarg114 = (struct poll_table_struct *)tmp;
  ldv_memset((void *)(& ldvarg113), 0, 4UL);
  ldv_memset((void *)(& ldvarg112), 0, 8UL);
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    ivtv_v4l2_close(ivtv_v4l2_radio_fops_group0);
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_39480;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_3 = ivtv_v4l2_open(ivtv_v4l2_radio_fops_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_39480;
  case 2: ;
  if (ldv_state_variable_4 == 1) {
    ivtv_v4l2_enc_poll(ivtv_v4l2_radio_fops_group0, ldvarg114);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    ivtv_v4l2_enc_poll(ivtv_v4l2_radio_fops_group0, ldvarg114);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_39480;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    video_ioctl2(ivtv_v4l2_radio_fops_group0, ldvarg113, ldvarg112);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    video_ioctl2(ivtv_v4l2_radio_fops_group0, ldvarg113, ldvarg112);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_39480;
  default:
  ldv_stop();
  }
  ldv_39480: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  loff_t *ldvarg125 ;
  void *tmp ;
  unsigned long ldvarg119 ;
  unsigned int ldvarg120 ;
  size_t ldvarg123 ;
  size_t ldvarg126 ;
  loff_t *ldvarg122 ;
  void *tmp___0 ;
  char *ldvarg124 ;
  void *tmp___1 ;
  char *ldvarg127 ;
  void *tmp___2 ;
  struct poll_table_struct *ldvarg121 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg125 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg122 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg124 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg127 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(16UL);
  ldvarg121 = (struct poll_table_struct *)tmp___3;
  ldv_memset((void *)(& ldvarg119), 0, 8UL);
  ldv_memset((void *)(& ldvarg120), 0, 4UL);
  ldv_memset((void *)(& ldvarg123), 0, 8UL);
  ldv_memset((void *)(& ldvarg126), 0, 8UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_5 == 2) {
    ivtv_v4l2_close(ivtv_v4l2_dec_fops_group0);
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_39498;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_4 = ivtv_v4l2_open(ivtv_v4l2_dec_fops_group0);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_39498;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    ivtv_v4l2_write(ivtv_v4l2_dec_fops_group0, (char const *)ldvarg127, ldvarg126,
                    ldvarg125);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_39498;
  case 3: ;
  if (ldv_state_variable_5 == 2) {
    ivtv_v4l2_read(ivtv_v4l2_dec_fops_group0, ldvarg124, ldvarg123, ldvarg122);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_39498;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    ivtv_v4l2_dec_poll(ivtv_v4l2_dec_fops_group0, ldvarg121);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    ivtv_v4l2_dec_poll(ivtv_v4l2_dec_fops_group0, ldvarg121);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_39498;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    video_ioctl2(ivtv_v4l2_dec_fops_group0, ldvarg120, ldvarg119);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    video_ioctl2(ivtv_v4l2_dec_fops_group0, ldvarg120, ldvarg119);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_39498;
  default:
  ldv_stop();
  }
  ldv_39498: ;
  return;
}
}
bool ldv_queue_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_195(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_196(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_197(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_del_timer_198(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_199(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void warn_slowpath_null(char const * , int const ) ;
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
                         "i" (831), "i" (12UL));
    ldv_4860: ;
    goto ldv_4860;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (43UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void arch_local_irq_restore(unsigned long f )
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (836), "i" (12UL));
    ldv_4870: ;
    goto ldv_4870;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
}
}
__inline static void arch_local_irq_disable(void)
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (841), "i" (12UL));
    ldv_4879: ;
    goto ldv_4879;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long arch_local_irq_save(void)
{
  unsigned long f ;
  {
  f = arch_local_save_flags();
  arch_local_irq_disable();
  return (f);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6059;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6059;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6059;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6059;
  default:
  __bad_percpu_size();
  }
  ldv_6059: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6071;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6071;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6071;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6071;
  default:
  __bad_percpu_size();
  }
  ldv_6071: ;
  return;
}
}
bool ldv_queue_work_on_211(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_213(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_212(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_215(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_214(struct workqueue_struct *ldv_func_arg1 ) ;
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
__inline static int PageHighMem(struct page const *page )
{
  {
  return (0);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern long get_user_pages_unlocked(struct task_struct * , struct mm_struct * , unsigned long ,
                                    unsigned long , int , int , struct page ** ) ;
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
                         "i" (90), "i" (12UL));
    ldv_29431: ;
    goto ldv_29431;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (92), "i" (12UL));
    ldv_29432: ;
    goto ldv_29432;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (93), "i" (12UL));
    ldv_29433: ;
    goto ldv_29433;
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
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (123), "i" (12UL));
    ldv_29443: ;
    goto ldv_29443;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (124), "i" (12UL));
    ldv_29444: ;
    goto ldv_29444;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_30235;
  ldv_30234:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_30235: ;
  if (i < nents) {
    goto ldv_30234;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (56), "i" (12UL));
    ldv_30237: ;
    goto ldv_30237;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  tmp___3 = ldv__builtin_expect(ents < 0, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (58), "i" (12UL));
    ldv_30238: ;
    goto ldv_30238;
  } else {
  }
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (70), "i" (12UL));
    ldv_30247: ;
    goto ldv_30247;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
  return;
}
}
__inline static void dma_sync_single_for_device___0(struct device *dev , dma_addr_t addr ,
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
                         "i" (120), "i" (12UL));
    ldv_30281: ;
    goto ldv_30281;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{
  int tmp ;
  {
  tmp = dma_map_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{
  {
  dma_unmap_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static void pci_dma_sync_single_for_device___0(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                        size_t size , int direction )
{
  {
  dma_sync_single_for_device___0((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                                 dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pagefault_disabled_inc(void)
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  tmp->pagefault_disabled = tmp->pagefault_disabled + 1;
  return;
}
}
__inline static void pagefault_disabled_dec(void)
{
  struct task_struct *tmp ;
  int __ret_warn_on ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_current();
  tmp->pagefault_disabled = tmp->pagefault_disabled - 1;
  tmp___0 = get_current();
  __ret_warn_on = tmp___0->pagefault_disabled < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("include/linux/uaccess.h", 15);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return;
}
}
__inline static void pagefault_disable(void)
{
  {
  pagefault_disabled_inc();
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  {
  __asm__ volatile ("": : : "memory");
  pagefault_disabled_dec();
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  pagefault_enable();
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
void ivtv_udma_get_page_info(struct ivtv_dma_page_info *dma_page , unsigned long first ,
                             unsigned long size ) ;
int ivtv_udma_fill_sg_list(struct ivtv_user_dma *dma , struct ivtv_dma_page_info *dma_page ,
                           int map_offset ) ;
void ivtv_udma_fill_sg_array(struct ivtv_user_dma *dma , u32 buffer_offset , u32 buffer_offset_2 ,
                             u32 split ) ;
__inline static void ivtv_udma_sync_for_device(struct ivtv *itv )
{
  {
  pci_dma_sync_single_for_device___0(itv->pdev, itv->udma.SG_handle, 8448UL, 1);
  return;
}
}
__inline static void ivtv_udma_sync_for_cpu(struct ivtv *itv )
{
  {
  pci_dma_sync_single_for_cpu___0(itv->pdev, itv->udma.SG_handle, 8448UL, 1);
  return;
}
}
void ivtv_udma_get_page_info(struct ivtv_dma_page_info *dma_page , unsigned long first ,
                             unsigned long size )
{
  {
  dma_page->uaddr = first & 0xfffffffffffff000UL;
  dma_page->offset = (unsigned int )first & 4095U;
  dma_page->tail = ((((unsigned int )first + (unsigned int )size) - 1U) & 4095U) + 1U;
  dma_page->first = first >> 12;
  dma_page->last = ((first + size) - 1UL) >> 12;
  dma_page->page_count = (int )(((unsigned int )dma_page->last - (unsigned int )dma_page->first) + 1U);
  if (dma_page->page_count == 1) {
    dma_page->tail = dma_page->tail - dma_page->offset;
  } else {
  }
  return;
}
}
int ivtv_udma_fill_sg_list(struct ivtv_user_dma *dma , struct ivtv_dma_page_info *dma_page ,
                           int map_offset )
{
  int i ;
  int offset ;
  unsigned long flags ;
  unsigned int len ;
  void *src ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if (map_offset < 0) {
    return (map_offset);
  } else {
  }
  offset = (int )dma_page->offset;
  i = 0;
  goto ldv_38942;
  ldv_38941:
  len = dma_page->page_count + -1 == i ? dma_page->tail : 4096U - (unsigned int )offset;
  tmp___2 = PageHighMem((struct page const *)dma->map[map_offset]);
  if (tmp___2 != 0) {
    if ((unsigned long )dma->bouncemap[map_offset] == (unsigned long )((struct page *)0)) {
      dma->bouncemap[map_offset] = alloc_pages(208U, 0U);
    } else {
    }
    if ((unsigned long )dma->bouncemap[map_offset] == (unsigned long )((struct page *)0)) {
      return (-1);
    } else {
    }
    flags = arch_local_irq_save();
    trace_hardirqs_off();
    tmp = kmap_atomic(dma->map[map_offset]);
    src = tmp + (unsigned long )offset;
    tmp___0 = lowmem_page_address((struct page const *)dma->bouncemap[map_offset]);
    memcpy(tmp___0 + (unsigned long )offset, (void const *)src, (size_t )len);
    __kunmap_atomic(src);
    tmp___1 = arch_irqs_disabled_flags(flags);
    if (tmp___1 != 0) {
      arch_local_irq_restore(flags);
      trace_hardirqs_off();
    } else {
      trace_hardirqs_on();
      arch_local_irq_restore(flags);
    }
    sg_set_page((struct scatterlist *)(& dma->SGlist) + (unsigned long )map_offset,
                dma->bouncemap[map_offset], len, (unsigned int )offset);
  } else {
    sg_set_page((struct scatterlist *)(& dma->SGlist) + (unsigned long )map_offset,
                dma->map[map_offset], len, (unsigned int )offset);
  }
  offset = 0;
  map_offset = map_offset + 1;
  i = i + 1;
  ldv_38942: ;
  if (dma_page->page_count > i) {
    goto ldv_38941;
  } else {
  }
  return (map_offset);
}
}
void ivtv_udma_fill_sg_array(struct ivtv_user_dma *dma , u32 buffer_offset , u32 buffer_offset_2 ,
                             u32 split )
{
  int i ;
  struct scatterlist *sg ;
  {
  i = 0;
  sg = (struct scatterlist *)(& dma->SGlist);
  goto ldv_38953;
  ldv_38952:
  dma->SGarray[i].size = sg->dma_length;
  dma->SGarray[i].src = (unsigned int )sg->dma_address;
  dma->SGarray[i].dst = buffer_offset;
  buffer_offset = sg->dma_length + buffer_offset;
  split = split - sg->dma_length;
  if (split == 0U) {
    buffer_offset = buffer_offset_2;
  } else {
  }
  i = i + 1;
  sg = sg_next(sg);
  ldv_38953: ;
  if (dma->SG_length > i) {
    goto ldv_38952;
  } else {
  }
  return;
}
}
void ivtv_udma_alloc(struct ivtv *itv )
{
  {
  if (itv->udma.SG_handle == 0ULL) {
    itv->udma.SG_handle = pci_map_single(itv->pdev, (void *)(& itv->udma.SGarray),
                                         8448UL, 1);
    ivtv_udma_sync_for_cpu(itv);
  } else {
  }
  return;
}
}
int ivtv_udma_setup(struct ivtv *itv , unsigned long ivtv_dest_addr , void *userbuf ,
                    int size_in_bytes )
{
  struct ivtv_dma_page_info user_dma ;
  struct ivtv_user_dma *dma ;
  int i ;
  int err ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  dma = & itv->udma;
  if ((ivtv_debug & 32) != 0) {
    printk("\016%s:  dma: ivtv_udma_setup, dst: 0x%08x\n", (char *)(& itv->v4l2_dev.name),
           (unsigned int )ivtv_dest_addr);
  } else {
  }
  if (dma->SG_length != 0 || dma->page_count != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: ivtv_udma_setup: SG_length %d page_count %d still full?\n",
             (char *)(& itv->v4l2_dev.name), dma->SG_length, dma->page_count);
    } else {
    }
    return (-16);
  } else {
  }
  ivtv_udma_get_page_info(& user_dma, (unsigned long )userbuf, (unsigned long )size_in_bytes);
  if (user_dma.page_count <= 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: ivtv_udma_setup: Error %d page_count from %d bytes %d offset\n",
             (char *)(& itv->v4l2_dev.name), user_dma.page_count, size_in_bytes, user_dma.offset);
    } else {
    }
    return (-22);
  } else {
  }
  tmp = get_current();
  tmp___0 = get_current();
  tmp___1 = get_user_pages_unlocked(tmp___0, tmp->mm, user_dma.uaddr, (unsigned long )user_dma.page_count,
                                    0, 1, (struct page **)(& dma->map));
  err = (int )tmp___1;
  if (user_dma.page_count != err) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: failed to map user pages, returned %d instead of %d\n",
             (char *)(& itv->v4l2_dev.name), err, user_dma.page_count);
    } else {
    }
    if (err >= 0) {
      i = 0;
      goto ldv_38969;
      ldv_38968:
      put_page(dma->map[i]);
      i = i + 1;
      ldv_38969: ;
      if (i < err) {
        goto ldv_38968;
      } else {
      }
      return (-22);
    } else {
    }
    return (err);
  } else {
  }
  dma->page_count = user_dma.page_count;
  tmp___2 = ivtv_udma_fill_sg_list(dma, & user_dma, 0);
  if (tmp___2 < 0) {
    i = 0;
    goto ldv_38972;
    ldv_38971:
    put_page(dma->map[i]);
    i = i + 1;
    ldv_38972: ;
    if (dma->page_count > i) {
      goto ldv_38971;
    } else {
    }
    dma->page_count = 0;
    return (-12);
  } else {
  }
  dma->SG_length = pci_map_sg(itv->pdev, (struct scatterlist *)(& dma->SGlist), dma->page_count,
                              1);
  ivtv_udma_fill_sg_array(dma, (u32 )ivtv_dest_addr, 0U, 4294967295U);
  dma->SGarray[dma->SG_length + -1].size = dma->SGarray[dma->SG_length + -1].size | 2147483648U;
  ivtv_udma_sync_for_device(itv);
  return (dma->page_count);
}
}
void ivtv_udma_unmap(struct ivtv *itv )
{
  struct ivtv_user_dma *dma ;
  int i ;
  {
  dma = & itv->udma;
  if ((ivtv_debug & 2) != 0) {
    printk("\016%s:  info: ivtv_unmap_user_dma\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  if (dma->page_count == 0) {
    return;
  } else {
  }
  if (dma->SG_length != 0) {
    pci_unmap_sg(itv->pdev, (struct scatterlist *)(& dma->SGlist), dma->page_count,
                 1);
    dma->SG_length = 0;
  } else {
  }
  ivtv_udma_sync_for_cpu(itv);
  i = 0;
  goto ldv_38980;
  ldv_38979:
  put_page(dma->map[i]);
  i = i + 1;
  ldv_38980: ;
  if (dma->page_count > i) {
    goto ldv_38979;
  } else {
  }
  dma->page_count = 0;
  return;
}
}
void ivtv_udma_free(struct ivtv *itv )
{
  int i ;
  {
  if (itv->udma.SG_handle != 0ULL) {
    pci_unmap_single(itv->pdev, itv->udma.SG_handle, 8448UL, 1);
  } else {
  }
  if (itv->udma.SG_length != 0) {
    pci_unmap_sg(itv->pdev, (struct scatterlist *)(& itv->udma.SGlist), itv->udma.page_count,
                 1);
  } else {
  }
  i = 0;
  goto ldv_38987;
  ldv_38986: ;
  if ((unsigned long )itv->udma.bouncemap[i] != (unsigned long )((struct page *)0)) {
    __free_pages(itv->udma.bouncemap[i], 0U);
  } else {
  }
  i = i + 1;
  ldv_38987: ;
  if ((unsigned int )i <= 703U) {
    goto ldv_38986;
  } else {
  }
  return;
}
}
void ivtv_udma_start(struct ivtv *itv )
{
  unsigned int tmp ;
  {
  if ((ivtv_debug & 32) != 0) {
    printk("\016%s:  dma: start UDMA\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  writel((unsigned int )itv->udma.SG_handle, itv->reg_mem + 8UL);
  tmp = readl((void const volatile *)itv->reg_mem);
  writel(tmp | 1U, itv->reg_mem);
  readl((void const volatile *)itv->reg_mem);
  set_bit(0L, (unsigned long volatile *)(& itv->i_flags));
  set_bit(1L, (unsigned long volatile *)(& itv->i_flags));
  clear_bit(2L, (unsigned long volatile *)(& itv->i_flags));
  return;
}
}
void ivtv_udma_prepare(struct ivtv *itv )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  tmp = spinlock_check(& itv->dma_reg_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___0 == 0) {
    ivtv_udma_start(itv);
  } else {
    set_bit(2L, (unsigned long volatile *)(& itv->i_flags));
  }
  spin_unlock_irqrestore(& itv->dma_reg_lock, flags);
  return;
}
}
bool ldv_queue_work_on_211(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_212(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_213(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_214(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_215(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void *memmove(void * , void const * , size_t ) ;
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_226(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_229(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_228(struct workqueue_struct *ldv_func_arg1 ) ;
static void ivtv_set_vps(struct ivtv *itv , int enabled )
{
  struct v4l2_sliced_vbi_data data ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((itv->v4l2_cap & 2U) == 0U) {
    return;
  } else {
  }
  data.id = 1024U;
  data.field = 0U;
  data.line = enabled != 0 ? 16U : 0U;
  data.data[2] = itv->vbi.vps_payload.data[0];
  data.data[8] = itv->vbi.vps_payload.data[1];
  data.data[9] = itv->vbi.vps_payload.data[2];
  data.data[10] = itv->vbi.vps_payload.data[3];
  data.data[11] = itv->vbi.vps_payload.data[4];
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39100;
  ldv_39099: ;
  if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0)) && (unsigned long )((__sd->ops)->vbi)->s_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                          struct v4l2_sliced_vbi_data const * ))0)) {
    (*(((__sd->ops)->vbi)->s_vbi_data))(__sd, (struct v4l2_sliced_vbi_data const *)(& data));
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39100: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39099;
  } else {
  }
  return;
}
}
static void ivtv_set_cc(struct ivtv *itv , int mode , struct vbi_cc const *cc )
{
  struct v4l2_sliced_vbi_data data ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  if ((itv->v4l2_cap & 2U) == 0U) {
    return;
  } else {
  }
  data.id = 4096U;
  data.field = 0U;
  data.line = mode & 1 ? 21U : 0U;
  data.data[0] = cc->odd[0];
  data.data[1] = cc->odd[1];
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39114;
  ldv_39113: ;
  if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0)) && (unsigned long )((__sd->ops)->vbi)->s_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                          struct v4l2_sliced_vbi_data const * ))0)) {
    (*(((__sd->ops)->vbi)->s_vbi_data))(__sd, (struct v4l2_sliced_vbi_data const *)(& data));
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39114: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39113;
  } else {
  }
  data.field = 1U;
  data.line = (mode & 2) != 0 ? 21U : 0U;
  data.data[0] = cc->even[0];
  data.data[1] = cc->even[1];
  __mptr___1 = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff88UL;
  goto ldv_39122;
  ldv_39121: ;
  if (((__sd___0->grp_id & 4U) != 0U && (unsigned long )(__sd___0->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0)) && (unsigned long )((__sd___0->ops)->vbi)->s_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                                      struct v4l2_sliced_vbi_data const * ))0)) {
    (*(((__sd___0->ops)->vbi)->s_vbi_data))(__sd___0, (struct v4l2_sliced_vbi_data const *)(& data));
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff88UL;
  ldv_39122: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39121;
  } else {
  }
  return;
}
}
static void ivtv_set_wss(struct ivtv *itv , int enabled , int mode )
{
  struct v4l2_sliced_vbi_data data ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((itv->v4l2_cap & 2U) == 0U) {
    return;
  } else {
  }
  if ((itv->std_out & 16713471ULL) != 0ULL && enabled == 0) {
    enabled = 1;
    mode = 8;
  } else {
  }
  data.id = 16384U;
  data.field = 0U;
  data.line = enabled != 0 ? 23U : 0U;
  data.data[0] = (__u8 )mode;
  data.data[1] = (__u8 )(mode >> 8);
  __mptr = (struct list_head const *)itv->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff88UL;
  goto ldv_39136;
  ldv_39135: ;
  if (((__sd->grp_id & 4U) != 0U && (unsigned long )(__sd->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0)) && (unsigned long )((__sd->ops)->vbi)->s_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                          struct v4l2_sliced_vbi_data const * ))0)) {
    (*(((__sd->ops)->vbi)->s_vbi_data))(__sd, (struct v4l2_sliced_vbi_data const *)(& data));
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_39136: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& itv->v4l2_dev.subdevs)) {
    goto ldv_39135;
  } else {
  }
  return;
}
}
static int odd_parity(u8 c )
{
  {
  c = (u8 )(((int )c >> 4) ^ (int )c);
  c = (u8 )(((int )c >> 2) ^ (int )c);
  c = (u8 )(((int )c >> 1) ^ (int )c);
  return ((int )c & 1);
}
}
static void ivtv_write_vbi_line(struct ivtv *itv , struct v4l2_sliced_vbi_data const *d ,
                                struct vbi_cc *cc , int *found_cc )
{
  struct vbi_info *vi ;
  struct vbi_vps vps ;
  int tmp ;
  int wss ;
  {
  vi = & itv->vbi;
  if ((unsigned int )d->id == 4096U && (unsigned int )d->line == 21U) {
    if ((unsigned int )d->field != 0U) {
      cc->even[0] = d->data[0];
      cc->even[1] = d->data[1];
    } else {
      cc->odd[0] = d->data[0];
      cc->odd[1] = d->data[1];
    }
    *found_cc = 1;
  } else
  if (((unsigned int )d->id == 1024U && (unsigned int )d->line == 16U) && (unsigned int )d->field == 0U) {
    vps.data[0] = d->data[2];
    vps.data[1] = d->data[8];
    vps.data[2] = d->data[9];
    vps.data[3] = d->data[10];
    vps.data[4] = d->data[11];
    tmp = memcmp((void const *)(& vps), (void const *)(& vi->vps_payload), 5UL);
    if (tmp != 0) {
      vi->vps_payload = vps;
      set_bit(11L, (unsigned long volatile *)(& itv->i_flags));
    } else {
    }
  } else
  if (((unsigned int )d->id == 16384U && (unsigned int )d->line == 23U) && (unsigned int )d->field == 0U) {
    wss = (int )d->data[0] | ((int )d->data[1] << 8);
    if (vi->wss_payload != wss) {
      vi->wss_payload = wss;
      set_bit(10L, (unsigned long volatile *)(& itv->i_flags));
    } else {
    }
  } else {
  }
  return;
}
}
static void ivtv_write_vbi_cc_lines(struct ivtv *itv , struct vbi_cc const *cc )
{
  struct vbi_info *vi ;
  {
  vi = & itv->vbi;
  if ((unsigned int )vi->cc_payload_idx <= 255U) {
    memcpy((void *)(& vi->cc_payload) + (unsigned long )vi->cc_payload_idx, (void const *)cc,
             4UL);
    vi->cc_payload_idx = vi->cc_payload_idx + 1;
    set_bit(9L, (unsigned long volatile *)(& itv->i_flags));
  } else {
  }
  return;
}
}
static void ivtv_write_vbi(struct ivtv *itv , struct v4l2_sliced_vbi_data const *sliced ,
                           size_t cnt )
{
  struct vbi_cc cc ;
  int found_cc ;
  size_t i ;
  {
  cc.odd[0] = 128U;
  cc.odd[1] = 128U;
  cc.even[0] = 128U;
  cc.even[1] = 128U;
  found_cc = 0;
  i = 0UL;
  goto ldv_39166;
  ldv_39165:
  ivtv_write_vbi_line(itv, sliced + i, & cc, & found_cc);
  i = i + 1UL;
  ldv_39166: ;
  if (i < cnt) {
    goto ldv_39165;
  } else {
  }
  if (found_cc != 0) {
    ivtv_write_vbi_cc_lines(itv, (struct vbi_cc const *)(& cc));
  } else {
  }
  return;
}
}
ssize_t ivtv_write_vbi_from_user(struct ivtv *itv , struct v4l2_sliced_vbi_data const *sliced ,
                                 size_t cnt )
{
  struct vbi_cc cc ;
  int found_cc ;
  size_t i ;
  struct v4l2_sliced_vbi_data d ;
  ssize_t ret ;
  unsigned long tmp ;
  {
  cc.odd[0] = 128U;
  cc.odd[1] = 128U;
  cc.even[0] = 128U;
  cc.even[1] = 128U;
  found_cc = 0;
  ret = (ssize_t )(cnt * 64UL);
  i = 0UL;
  goto ldv_39180;
  ldv_39179:
  tmp = copy_from_user((void *)(& d), (void const *)(sliced + i), 64UL);
  if (tmp != 0UL) {
    ret = -14L;
    goto ldv_39178;
  } else {
  }
  ivtv_write_vbi_line(itv, (struct v4l2_sliced_vbi_data const *)(& d), & cc, & found_cc);
  i = i + 1UL;
  ldv_39180: ;
  if (i < cnt) {
    goto ldv_39179;
  } else {
  }
  ldv_39178: ;
  if (found_cc != 0) {
    ivtv_write_vbi_cc_lines(itv, (struct vbi_cc const *)(& cc));
  } else {
  }
  return (ret);
}
}
static void copy_vbi_data(struct ivtv *itv , int lines , u32 pts_stamp )
{
  int line ;
  int i ;
  u32 linemask[2U] ;
  unsigned short size ;
  u8 mpeg_hdr_data[32U] ;
  int sd ;
  int idx ;
  u8 *dst ;
  int f ;
  int l ;
  u16 tmp ;
  {
  line = 0;
  linemask[0] = 0U;
  linemask[1] = 0U;
  mpeg_hdr_data[0] = 0U;
  mpeg_hdr_data[1] = 0U;
  mpeg_hdr_data[2] = 1U;
  mpeg_hdr_data[3] = 186U;
  mpeg_hdr_data[4] = 68U;
  mpeg_hdr_data[5] = 0U;
  mpeg_hdr_data[6] = 12U;
  mpeg_hdr_data[7] = 102U;
  mpeg_hdr_data[8] = 36U;
  mpeg_hdr_data[9] = 1U;
  mpeg_hdr_data[10] = 1U;
  mpeg_hdr_data[11] = 209U;
  mpeg_hdr_data[12] = 211U;
  mpeg_hdr_data[13] = 250U;
  mpeg_hdr_data[14] = 255U;
  mpeg_hdr_data[15] = 255U;
  mpeg_hdr_data[16] = 0U;
  mpeg_hdr_data[17] = 0U;
  mpeg_hdr_data[18] = 1U;
  mpeg_hdr_data[19] = 189U;
  mpeg_hdr_data[20] = 0U;
  mpeg_hdr_data[21] = 26U;
  mpeg_hdr_data[22] = 132U;
  mpeg_hdr_data[23] = 128U;
  mpeg_hdr_data[24] = 7U;
  mpeg_hdr_data[25] = 33U;
  mpeg_hdr_data[26] = 0U;
  mpeg_hdr_data[27] = 93U;
  mpeg_hdr_data[28] = 99U;
  mpeg_hdr_data[29] = 167U;
  mpeg_hdr_data[30] = 255U;
  mpeg_hdr_data[31] = 255U;
  sd = 32;
  idx = (int )itv->vbi.frame & 31;
  dst = itv->vbi.sliced_mpeg_data[idx];
  i = 0;
  goto ldv_39198;
  ldv_39197: ;
  if (itv->vbi.sliced_data[i].id == 0U) {
    goto ldv_39196;
  } else {
  }
  l = (int )(itv->vbi.sliced_data[i].line - 6U);
  f = (int )itv->vbi.sliced_data[i].field;
  if (f != 0) {
    l = l + 18;
  } else {
  }
  if (l <= 31) {
    linemask[0] = linemask[0] | (u32 )(1 << l);
  } else {
    linemask[1] = linemask[1] | (u32 )(1 << (l + -32));
  }
  tmp = ivtv_service2vbi((int )itv->vbi.sliced_data[i].id);
  *(dst + (unsigned long )((sd + 12) + line * 43)) = (u8 )tmp;
  memcpy((void *)(dst + (((unsigned long )sd + (unsigned long )(line * 43)) + 13UL)),
           (void const *)(& itv->vbi.sliced_data[i].data), 42UL);
  line = line + 1;
  ldv_39196:
  i = i + 1;
  ldv_39198: ;
  if (i < lines) {
    goto ldv_39197;
  } else {
  }
  memcpy((void *)dst, (void const *)(& mpeg_hdr_data), 32UL);
  if (line == 36) {
    memcpy((void *)dst + (unsigned long )sd, (void const *)"ITV0", 4UL);
    memmove((void *)(dst + ((unsigned long )sd + 4UL)), (void const *)(dst + ((unsigned long )sd + 12UL)),
              (size_t )(line * 43));
    size = (((unsigned int )((unsigned short )line) * 43U + 3U) & 65532U) + 4U;
  } else {
    memcpy((void *)dst + (unsigned long )sd, (void const *)"itv0", 4UL);
    memcpy((void *)(dst + ((unsigned long )sd + 4UL)), (void const *)(& linemask),
             8UL);
    size = (((unsigned int )((unsigned short )line) * 43U + 3U) & 65532U) + 12U;
  }
  *(dst + 20UL) = (u8 )(((int )size + 10) >> 8);
  *(dst + 21UL) = (u8 )((unsigned int )((unsigned char )size) + 10U);
  *(dst + 25UL) = ((unsigned int )((u8 )(pts_stamp >> 29)) & 6U) | 33U;
  *(dst + 26UL) = (u8 )(pts_stamp >> 22);
  *(dst + 27UL) = (unsigned int )((u8 )(pts_stamp >> 14)) | 1U;
  *(dst + 28UL) = (u8 )(pts_stamp >> 7);
  *(dst + 29UL) = (unsigned int )((int )((u8 )pts_stamp) << 1U) | 1U;
  itv->vbi.sliced_mpeg_size[idx] = (u32 )((int )size + sd);
  return;
}
}
static int ivtv_convert_ivtv_vbi(struct ivtv *itv , u8 *p )
{
  u32 linemask[2U] ;
  int i ;
  int l ;
  int id2 ;
  int line ;
  int tmp ;
  int tmp___0 ;
  int err ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  line = 0;
  tmp___0 = memcmp((void const *)p, (void const *)"itv0", 4UL);
  if (tmp___0 == 0) {
    memcpy((void *)(& linemask), (void const *)p + 4U, 8UL);
    p = p + 12UL;
  } else {
    tmp = memcmp((void const *)p, (void const *)"ITV0", 4UL);
    if (tmp == 0) {
      linemask[0] = 4294967295U;
      linemask[1] = 15U;
      p = p + 4UL;
    } else {
      linemask[1] = 0U;
      linemask[0] = linemask[1];
    }
  }
  i = 0;
  goto ldv_39218;
  ldv_39217:
  err = 0;
  if (i <= 31 && (linemask[0] & (u32 )(1 << i)) == 0U) {
    goto ldv_39210;
  } else {
  }
  if (i > 31 && (linemask[1] & (u32 )(1 << (i + -32))) == 0U) {
    goto ldv_39210;
  } else {
  }
  id2 = (int )*p & 15;
  switch (id2) {
  case 1:
  id2 = 1;
  goto ldv_39212;
  case 4:
  id2 = 4096;
  tmp___1 = odd_parity((int )*(p + 1UL));
  if (tmp___1 == 0) {
    tmp___3 = 1;
  } else {
    tmp___2 = odd_parity((int )*(p + 2UL));
    if (tmp___2 == 0) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  }
  err = tmp___3;
  goto ldv_39212;
  case 7:
  id2 = 1024;
  goto ldv_39212;
  case 5:
  id2 = 16384;
  goto ldv_39212;
  default:
  id2 = 0;
  goto ldv_39212;
  }
  ldv_39212: ;
  if (err == 0) {
    l = i <= 17 ? i + 6 : i + -12;
    itv->vbi.sliced_dec_data[line].line = (__u32 )l;
    itv->vbi.sliced_dec_data[line].field = i > 17;
    itv->vbi.sliced_dec_data[line].id = (__u32 )id2;
    memcpy((void *)(& itv->vbi.sliced_dec_data[line].data), (void const *)p + 1U,
             42UL);
    line = line + 1;
  } else {
  }
  p = p + 43UL;
  ldv_39210:
  i = i + 1;
  ldv_39218: ;
  if (i <= 35) {
    goto ldv_39217;
  } else {
  }
  goto ldv_39221;
  ldv_39220:
  itv->vbi.sliced_dec_data[line].id = 0U;
  itv->vbi.sliced_dec_data[line].line = 0U;
  itv->vbi.sliced_dec_data[line].field = 0U;
  line = line + 1;
  ldv_39221: ;
  if (line <= 35) {
    goto ldv_39220;
  } else {
  }
  return ((int )((unsigned int )line * 64U));
}
}
static u32 compress_raw_buf(struct ivtv *itv , u8 *buf , u32 size )
{
  u32 line_size ;
  u32 lines ;
  u8 sav1 ;
  u8 sav2 ;
  u8 *q ;
  u8 *p ;
  int i ;
  {
  line_size = itv->vbi.raw_decoder_line_size;
  lines = itv->vbi.count;
  sav1 = itv->vbi.raw_decoder_sav_odd_field;
  sav2 = itv->vbi.raw_decoder_sav_even_field;
  q = buf;
  i = 0;
  goto ldv_39237;
  ldv_39236:
  p = buf + (unsigned long )((u32 )i * line_size);
  if ((((unsigned int )*p != 255U || (unsigned int )*(p + 1UL) != 0U) || (unsigned int )*(p + 2UL) != 0U) || ((int )*(p + 3UL) != (int )sav1 && (int )*(p + 3UL) != (int )sav2)) {
    goto ldv_39235;
  } else {
  }
  memcpy((void *)q, (void const *)p + 4U, (size_t )(line_size - 4U));
  q = q + (unsigned long )(line_size - 4U);
  i = i + 1;
  ldv_39237: ;
  if ((u32 )i < lines) {
    goto ldv_39236;
  } else {
  }
  ldv_39235: ;
  return ((line_size - 4U) * lines);
}
}
static u32 compress_sliced_buf(struct ivtv *itv , u32 line , u8 *buf , u32 size ,
                               u8 sav )
{
  u32 line_size ;
  struct v4l2_decode_vbi_line vbi ;
  int i ;
  unsigned int lines ;
  u8 *p ;
  {
  line_size = itv->vbi.sliced_decoder_line_size;
  lines = 0U;
  i = 0;
  goto ldv_39251;
  ldv_39250: ;
  if ((((unsigned int )*buf == 255U && (unsigned int )*(buf + 1UL) == 0U) && (unsigned int )*(buf + 2UL) == 0U) && (int )*(buf + 3UL) == (int )sav) {
    goto ldv_39249;
  } else {
  }
  i = i + 1;
  buf = buf + 1;
  ldv_39251: ;
  if ((u32 )i < size) {
    goto ldv_39250;
  } else {
  }
  ldv_39249:
  size = size - (u32 )i;
  if (size < line_size) {
    return (line);
  } else {
  }
  i = 0;
  goto ldv_39255;
  ldv_39254:
  p = buf + (unsigned long )((u32 )i * line_size);
  if ((((unsigned int )*p != 255U || (unsigned int )*(p + 1UL) != 0U) || (unsigned int )*(p + 2UL) != 0U) || (int )*(p + 3UL) != (int )sav) {
    goto ldv_39253;
  } else {
  }
  vbi.p = p + 4UL;
  if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->decode_vbi_line != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                        struct v4l2_decode_vbi_line * ))0)) {
      (*((((itv->sd_video)->ops)->vbi)->decode_vbi_line))(itv->sd_video, & vbi);
    } else {
    }
  } else {
  }
  if (vbi.type != 0U && ((unsigned int )(1 << (int )vbi.line) & lines) == 0U) {
    lines = (unsigned int )(1 << (int )vbi.line) | lines;
    itv->vbi.sliced_data[line].id = vbi.type;
    itv->vbi.sliced_data[line].field = vbi.is_second_field;
    itv->vbi.sliced_data[line].line = vbi.line;
    memcpy((void *)(& itv->vbi.sliced_data[line].data), (void const *)vbi.p, 42UL);
    line = line + 1U;
  } else {
  }
  ldv_39253:
  i = i + 1;
  ldv_39255: ;
  if ((u32 )i < size / line_size) {
    goto ldv_39254;
  } else {
  }
  return (line);
}
}
void ivtv_process_vbi_data(struct ivtv *itv , struct ivtv_buffer *buf , u64 pts_stamp ,
                           int streamtype )
{
  u8 *p ;
  u32 size ;
  int y ;
  u8 type ;
  u32 tmp ;
  int tmp___0 ;
  int lines ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int offset ;
  int cnt ;
  {
  p = (u8 *)buf->buf;
  size = buf->bytesused;
  if (streamtype == 2) {
    tmp___0 = ivtv_raw_vbi((struct ivtv const *)itv);
    if (tmp___0 != 0) {
      ivtv_buf_swap(buf);
      type = *(p + 3UL);
      tmp = compress_raw_buf(itv, p, size);
      buf->bytesused = tmp;
      size = tmp;
      if ((int )itv->vbi.raw_decoder_sav_even_field == (int )type) {
        p = p + (unsigned long )(size - 4U);
        memcpy((void *)p, (void const *)(& itv->vbi.frame), 4UL);
        itv->vbi.frame = itv->vbi.frame + 1U;
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  if (streamtype == 2) {
    ivtv_buf_swap(buf);
    tmp___1 = compress_sliced_buf(itv, 0U, p, size / 2U, (int )itv->vbi.sliced_decoder_sav_odd_field);
    lines = (int )tmp___1;
    tmp___2 = compress_sliced_buf(itv, (u32 )lines, p + ((unsigned long )(size / 2U) + 0xffffffffffffffe0UL),
                                  size / 2U + 32U, (int )itv->vbi.sliced_decoder_sav_even_field);
    lines = (int )tmp___2;
    if (lines == 0) {
      itv->vbi.sliced_data[0].id = 0U;
      itv->vbi.sliced_data[0].line = 0U;
      itv->vbi.sliced_data[0].field = 0U;
      lines = 1;
    } else {
    }
    size = (u32 )((unsigned long )lines) * 64U;
    buf->bytesused = size;
    memcpy((void *)p, (void const *)(& itv->vbi.sliced_data), (size_t )size);
    if (itv->vbi.insert_mpeg != 0) {
      copy_vbi_data(itv, lines, (u32 )pts_stamp);
    } else {
    }
    itv->vbi.frame = itv->vbi.frame + 1U;
    return;
  } else {
  }
  if (streamtype == 6) {
    offset = (int )size & 3;
    if (offset != 0) {
      p = p + (unsigned long )(4 - offset);
    } else {
    }
    y = 0;
    goto ldv_39271;
    ldv_39270:
    __swab32s((__u32 *)p + (unsigned long )y);
    y = y + 4;
    ldv_39271: ;
    if ((u32 )y < size) {
      goto ldv_39270;
    } else {
    }
    cnt = ivtv_convert_ivtv_vbi(itv, p + (unsigned long )offset);
    memcpy((void *)buf->buf, (void const *)(& itv->vbi.sliced_dec_data), (size_t )cnt);
    buf->bytesused = (u32 )cnt;
    ivtv_write_vbi(itv, (struct v4l2_sliced_vbi_data const *)(& itv->vbi.sliced_dec_data),
                   (unsigned long )cnt / 64UL);
    return;
  } else {
  }
  return;
}
}
void ivtv_disable_cc(struct ivtv *itv )
{
  struct vbi_cc cc ;
  {
  cc.odd[0] = 128U;
  cc.odd[1] = 128U;
  cc.even[0] = 128U;
  cc.even[1] = 128U;
  clear_bit(9L, (unsigned long volatile *)(& itv->i_flags));
  ivtv_set_cc(itv, 0, (struct vbi_cc const *)(& cc));
  itv->vbi.cc_payload_idx = 0;
  return;
}
}
void ivtv_vbi_work_handler(struct ivtv *itv )
{
  struct vbi_info *vi ;
  struct v4l2_sliced_vbi_data data ;
  struct vbi_cc cc ;
  int tmp ;
  int mode ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  vi = & itv->vbi;
  cc.odd[0] = 128U;
  cc.odd[1] = 128U;
  cc.even[0] = 128U;
  cc.even[1] = 128U;
  if (itv->output_mode == 4) {
    if ((unsigned int )itv->is_50hz != 0U) {
      data.id = 16384U;
      data.field = 0U;
      if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
        if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->g_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                       struct v4l2_sliced_vbi_data * ))0)) {
          tmp = (*((((itv->sd_video)->ops)->vbi)->g_vbi_data))(itv->sd_video, & data);
          if (tmp == 0) {
            ivtv_set_wss(itv, 1, (int )data.data[0] & 15);
            vi->wss_missing_cnt = 0U;
          } else {
            goto _L;
          }
        } else {
          goto _L;
        }
      } else
      _L:
      if ((unsigned int )vi->wss_missing_cnt == 4U) {
        ivtv_set_wss(itv, 1, 8);
      } else {
        vi->wss_missing_cnt = (u8 )((int )vi->wss_missing_cnt + 1);
      }
    } else {
      mode = 0;
      data.id = 4096U;
      data.field = 0U;
      if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
        if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->g_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                       struct v4l2_sliced_vbi_data * ))0)) {
          tmp___0 = (*((((itv->sd_video)->ops)->vbi)->g_vbi_data))(itv->sd_video,
                                                                   & data);
          if (tmp___0 == 0) {
            mode = mode | 1;
            cc.odd[0] = data.data[0];
            cc.odd[1] = data.data[1];
          } else {
          }
        } else {
        }
      } else {
      }
      data.field = 1U;
      if ((unsigned long )itv->sd_video != (unsigned long )((struct v4l2_subdev *)0)) {
        if ((unsigned long )((itv->sd_video)->ops)->vbi != (unsigned long )((struct v4l2_subdev_vbi_ops const * )0) && (unsigned long )(((itv->sd_video)->ops)->vbi)->g_vbi_data != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                       struct v4l2_sliced_vbi_data * ))0)) {
          tmp___1 = (*((((itv->sd_video)->ops)->vbi)->g_vbi_data))(itv->sd_video,
                                                                   & data);
          if (tmp___1 == 0) {
            mode = mode | 2;
            cc.even[0] = data.data[0];
            cc.even[1] = data.data[1];
          } else {
          }
        } else {
        }
      } else {
      }
      if (mode != 0) {
        vi->cc_missing_cnt = 0U;
        ivtv_set_cc(itv, mode, (struct vbi_cc const *)(& cc));
      } else
      if ((unsigned int )vi->cc_missing_cnt == 4U) {
        ivtv_set_cc(itv, 0, (struct vbi_cc const *)(& cc));
      } else {
        vi->cc_missing_cnt = (u8 )((int )vi->cc_missing_cnt + 1);
      }
    }
    return;
  } else {
  }
  tmp___2 = test_and_clear_bit(10L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___2 != 0) {
    ivtv_set_wss(itv, 1, vi->wss_payload & 15);
  } else {
  }
  tmp___3 = constant_test_bit(9L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___3 != 0) {
    if (vi->cc_payload_idx == 0) {
      clear_bit(9L, (unsigned long volatile *)(& itv->i_flags));
      ivtv_set_cc(itv, 3, (struct vbi_cc const *)(& cc));
    } else {
    }
    goto ldv_39284;
    ldv_39286:
    cc = vi->cc_payload[0];
    memmove((void *)(& vi->cc_payload), (void const *)(& vi->cc_payload) + 1U,
              1020UL);
    vi->cc_payload_idx = vi->cc_payload_idx - 1;
    if ((vi->cc_payload_idx != 0 && (unsigned int )cc.odd[0] == 128U) && (unsigned int )cc.odd[1] == 128U) {
      goto ldv_39284;
    } else {
    }
    ivtv_set_cc(itv, 3, (struct vbi_cc const *)(& cc));
    goto ldv_39285;
    ldv_39284: ;
    if (vi->cc_payload_idx != 0) {
      goto ldv_39286;
    } else {
    }
    ldv_39285: ;
  } else {
  }
  tmp___4 = test_and_clear_bit(11L, (unsigned long volatile *)(& itv->i_flags));
  if (tmp___4 != 0) {
    ivtv_set_vps(itv, 1);
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_226(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_228(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_229(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
bool ldv_queue_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_241(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_240(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_243(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_242(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static int signal_pending___2(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern long get_user_pages(struct task_struct * , struct mm_struct * , unsigned long ,
                           unsigned long , int , int , struct page ** , struct vm_area_struct ** ) ;
u32 const yuv_offset[8U] =
  { 1738240U, 2360320U, 2982400U, 3604480U,
        167936U, 790016U, 7013376U, 7635456U};
static int ivtv_yuv_prep_user_dma(struct ivtv *itv , struct ivtv_user_dma *dma , struct ivtv_dma_frame *args )
{
  struct ivtv_dma_page_info y_dma ;
  struct ivtv_dma_page_info uv_dma ;
  struct yuv_playback_info *yi ;
  u8 frame ;
  struct yuv_frame_info *f ;
  int i ;
  int y_pages ;
  int uv_pages ;
  unsigned long y_buffer_offset ;
  unsigned long uv_buffer_offset ;
  int y_decode_height ;
  int uv_decode_height ;
  int y_size ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  long tmp___5 ;
  struct task_struct *tmp___6 ;
  int rc ;
  int tmp___7 ;
  int tmp___8 ;
  {
  yi = & itv->yuv_info;
  frame = yi->draw_frame;
  f = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )frame;
  y_buffer_offset = (unsigned long )((unsigned int )yuv_offset[(int )frame] + 16777216U);
  uv_buffer_offset = y_buffer_offset + 414720UL;
  uv_decode_height = (int )(f->src_h + (u32 )f->src_y);
  y_decode_height = uv_decode_height;
  if (f->offset_y != 0U) {
    y_buffer_offset = y_buffer_offset + 11520UL;
  } else {
  }
  if ((y_decode_height & 15) != 0) {
    y_decode_height = (y_decode_height + 16) & -16;
  } else {
  }
  if ((uv_decode_height & 31) != 0) {
    uv_decode_height = (uv_decode_height + 32) & -32;
  } else {
  }
  y_size = y_decode_height * 720;
  if (dma->SG_length != 0 || dma->page_count != 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: prep_user_dma: SG_length %d page_count %d still full?\n",
             (char *)(& itv->v4l2_dev.name), dma->SG_length, dma->page_count);
    } else {
    }
    return (-16);
  } else {
  }
  ivtv_udma_get_page_info(& y_dma, (unsigned long )args->y_source, (unsigned long )(y_decode_height * 720));
  ivtv_udma_get_page_info(& uv_dma, (unsigned long )args->uv_source, (unsigned long )(uv_decode_height * 360));
  tmp = get_current();
  down_read(& (tmp->mm)->mmap_sem);
  tmp___0 = get_current();
  tmp___1 = get_current();
  tmp___2 = get_user_pages(tmp___1, tmp___0->mm, y_dma.uaddr, (unsigned long )y_dma.page_count,
                           0, 1, (struct page **)(& dma->map), (struct vm_area_struct **)0);
  y_pages = (int )tmp___2;
  uv_pages = 0;
  if (y_dma.page_count == y_pages) {
    tmp___3 = get_current();
    tmp___4 = get_current();
    tmp___5 = get_user_pages(tmp___4, tmp___3->mm, uv_dma.uaddr, (unsigned long )uv_dma.page_count,
                             0, 1, (struct page **)(& dma->map) + (unsigned long )y_pages,
                             (struct vm_area_struct **)0);
    uv_pages = (int )tmp___5;
  } else {
  }
  tmp___6 = get_current();
  up_read(& (tmp___6->mm)->mmap_sem);
  if (y_dma.page_count != y_pages || uv_dma.page_count != uv_pages) {
    rc = -14;
    if (y_dma.page_count == y_pages) {
      if (ivtv_debug & 1) {
        printk("\016%s:  warn: failed to map uv user pages, returned %d expecting %d\n",
               (char *)(& itv->v4l2_dev.name), uv_pages, uv_dma.page_count);
      } else {
      }
      if (uv_pages >= 0) {
        i = 0;
        goto ldv_38951;
        ldv_38950:
        put_page(dma->map[y_pages + i]);
        i = i + 1;
        ldv_38951: ;
        if (i < uv_pages) {
          goto ldv_38950;
        } else {
        }
        rc = -14;
      } else {
        rc = uv_pages;
      }
    } else
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: failed to map y user pages, returned %d expecting %d\n",
             (char *)(& itv->v4l2_dev.name), y_pages, y_dma.page_count);
    } else {
    }
    if (y_pages >= 0) {
      i = 0;
      goto ldv_38954;
      ldv_38953:
      put_page(dma->map[i]);
      i = i + 1;
      ldv_38954: ;
      if (i < y_pages) {
        goto ldv_38953;
      } else {
      }
    } else {
      rc = y_pages;
    }
    return (rc);
  } else {
  }
  dma->page_count = y_pages + uv_pages;
  tmp___7 = ivtv_udma_fill_sg_list(dma, & y_dma, 0);
  tmp___8 = ivtv_udma_fill_sg_list(dma, & uv_dma, tmp___7);
  if (tmp___8 < 0) {
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: could not allocate bounce buffers for highmem userspace buffers\n",
             (char *)(& itv->v4l2_dev.name));
    } else {
    }
    i = 0;
    goto ldv_38957;
    ldv_38956:
    put_page(dma->map[i]);
    i = i + 1;
    ldv_38957: ;
    if (dma->page_count > i) {
      goto ldv_38956;
    } else {
    }
    dma->page_count = 0;
    return (-12);
  } else {
  }
  dma->SG_length = pci_map_sg(itv->pdev, (struct scatterlist *)(& dma->SGlist), dma->page_count,
                              1);
  ivtv_udma_fill_sg_array(dma, (u32 )y_buffer_offset, (u32 )uv_buffer_offset, (u32 )y_size);
  if (f->offset_y != 0U && yi->blanking_dmaptr != 0ULL) {
    dma->SGarray[dma->SG_length].size = 11520U;
    dma->SGarray[dma->SG_length].src = (unsigned int )yi->blanking_dmaptr;
    dma->SGarray[dma->SG_length].dst = (unsigned int )yuv_offset[(int )frame] + 16777216U;
    dma->SG_length = dma->SG_length + 1;
  } else {
  }
  dma->SGarray[dma->SG_length + -1].size = dma->SGarray[dma->SG_length + -1].size | 2147483648U;
  ivtv_udma_sync_for_device(itv);
  return (0);
}
}
int ivtv_yuv_filter_check(struct ivtv *itv )
{
  int i ;
  int y ;
  int uv ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  i = 0;
  y = 16;
  uv = 4;
  goto ldv_38966;
  ldv_38965:
  tmp = readl((void const volatile *)itv->dec_mem + (unsigned long )((unsigned int )(y + 9688)));
  if (tmp != (unsigned int )(i << 16)) {
    printk("\f%s: YUV filter table not found in firmware.\n", (char *)(& itv->v4l2_dev.name));
    return (-1);
  } else {
    tmp___0 = readl((void const volatile *)itv->dec_mem + (unsigned long )((unsigned int )(uv + 13144)));
    if (tmp___0 != (unsigned int )(i << 16)) {
      printk("\f%s: YUV filter table not found in firmware.\n", (char *)(& itv->v4l2_dev.name));
      return (-1);
    } else {
    }
  }
  i = i + 1;
  y = y + 24;
  uv = uv + 12;
  ldv_38966: ;
  if (i <= 15) {
    goto ldv_38965;
  } else {
  }
  return (0);
}
}
static void ivtv_yuv_filter(struct ivtv *itv , int h_filter , int v_filter_1 , int v_filter_2 )
{
  u32 i ;
  u32 line ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  {
  if (h_filter >= 0) {
    if (h_filter > 4) {
      h_filter = 4;
    } else {
    }
    i = (u32 )(h_filter * 384 + 9688);
    line = 0U;
    goto ldv_38977;
    ldv_38976:
    tmp = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp, itv->reg_mem + 10244UL);
    tmp___0 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___0, itv->reg_mem + 10268UL);
    i = i + 4U;
    tmp___1 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___1, itv->reg_mem + 10248UL);
    tmp___2 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___2, itv->reg_mem + 10272UL);
    i = i + 4U;
    tmp___3 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___3, itv->reg_mem + 10252UL);
    tmp___4 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___4, itv->reg_mem + 10276UL);
    i = i + 4U;
    tmp___5 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___5, itv->reg_mem + 10256UL);
    tmp___6 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___6, itv->reg_mem + 10280UL);
    i = i + 4U;
    tmp___7 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___7, itv->reg_mem + 10260UL);
    tmp___8 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___8, itv->reg_mem + 10284UL);
    i = i + 8U;
    writel(0U, itv->reg_mem + 10264UL);
    writel(0U, itv->reg_mem + 10288UL);
    line = line + 1U;
    ldv_38977: ;
    if (line <= 15U) {
      goto ldv_38976;
    } else {
    }
    if ((ivtv_debug & 256) != 0) {
      printk("\016%s:  yuv: h_filter -> %d\n", (char *)(& itv->v4l2_dev.name), h_filter);
    } else {
    }
  } else {
  }
  if (v_filter_1 >= 0) {
    if (v_filter_1 > 4) {
      v_filter_1 = 4;
    } else {
    }
    i = (u32 )(v_filter_1 * 192 + 13144);
    line = 0U;
    goto ldv_38980;
    ldv_38979:
    tmp___9 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___9, itv->reg_mem + 10496UL);
    i = i + 4U;
    tmp___10 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___10, itv->reg_mem + 10500UL);
    i = i + 8U;
    writel(0U, itv->reg_mem + 10504UL);
    line = line + 1U;
    ldv_38980: ;
    if (line <= 15U) {
      goto ldv_38979;
    } else {
    }
    if ((ivtv_debug & 256) != 0) {
      printk("\016%s:  yuv: v_filter_1 -> %d\n", (char *)(& itv->v4l2_dev.name), v_filter_1);
    } else {
    }
  } else {
  }
  if (v_filter_2 >= 0) {
    if (v_filter_2 > 4) {
      v_filter_2 = 4;
    } else {
    }
    i = (u32 )(v_filter_2 * 192 + 13144);
    line = 0U;
    goto ldv_38983;
    ldv_38982:
    tmp___11 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___11, itv->reg_mem + 10508UL);
    i = i + 4U;
    tmp___12 = readl((void const volatile *)itv->dec_mem + (unsigned long )i);
    writel(tmp___12, itv->reg_mem + 10512UL);
    i = i + 8U;
    writel(0U, itv->reg_mem + 10516UL);
    line = line + 1U;
    ldv_38983: ;
    if (line <= 15U) {
      goto ldv_38982;
    } else {
    }
    if ((ivtv_debug & 256) != 0) {
      printk("\016%s:  yuv: v_filter_2 -> %d\n", (char *)(& itv->v4l2_dev.name), v_filter_2);
    } else {
    }
  } else {
  }
  return;
}
}
static void ivtv_yuv_handle_horizontal(struct ivtv *itv , struct yuv_frame_info *f )
{
  struct yuv_playback_info *yi ;
  u32 reg_2834 ;
  u32 reg_2838 ;
  u32 reg_283c ;
  u32 reg_2844 ;
  u32 reg_2854 ;
  u32 reg_285c ;
  u32 reg_2864 ;
  u32 reg_2874 ;
  u32 reg_2890 ;
  u32 reg_2870 ;
  u32 reg_2870_base ;
  u32 reg_2870_offset ;
  int x_cutoff ;
  int h_filter ;
  u32 master_width ;
  {
  yi = & itv->yuv_info;
  if (ivtv_debug & 1) {
    printk("\016%s:  warn: Adjust to width %d src_w %d dst_w %d src_x %d dst_x %d\n",
           (char *)(& itv->v4l2_dev.name), f->tru_w, f->src_w, f->dst_w, f->src_x,
           f->dst_x);
  } else {
  }
  x_cutoff = (int )(f->src_w + (u32 )f->src_x);
  reg_2834 = f->dst_w;
  reg_2838 = reg_2834;
  reg_2890 = (u32 )f->dst_x;
  reg_2870 = 0U;
  if (f->vis_w == 720U) {
    if ((f->tru_x - f->pan_x >= 0 && f->tru_x - f->pan_x <= 40) && f->dst_w > 679U) {
      reg_2870 = (u32 )(10 - (f->tru_x - f->pan_x) / 4);
    } else
    if ((f->tru_x - f->pan_x < 0 && f->tru_x - f->pan_x >= -20) && f->dst_w > 659U) {
      reg_2870 = (u32 )((f->tru_x - f->pan_x) / 2 + 10);
    } else {
    }
    if (f->dst_w >= f->src_w) {
      reg_2870 = (reg_2870 << 16) | reg_2870;
    } else {
      reg_2870 = ((reg_2870 & 4294967294U) << 15) | (reg_2870 & 4294967294U);
    }
  } else {
  }
  if (f->dst_w < f->src_w) {
    reg_2870 = 851982U - reg_2870;
  } else {
    reg_2870 = 1179662U - reg_2870;
  }
  reg_2870_offset = (u32 )f->src_x * ((f->dst_w << 21) / f->src_w) >> 19;
  if (f->dst_w >= f->src_w) {
    x_cutoff = x_cutoff & -2;
    master_width = (f->src_w * 2097152U) / f->dst_w;
    if (f->dst_w * master_width != f->src_w * 2097152U) {
      master_width = master_width + 1U;
    } else {
    }
    reg_2834 = (reg_2834 << 16) | (u32 )x_cutoff;
    reg_2838 = (reg_2838 << 16) | (u32 )x_cutoff;
    reg_283c = master_width >> 2;
    reg_2844 = master_width >> 2;
    reg_2854 = master_width;
    reg_285c = master_width >> 1;
    reg_2864 = master_width >> 1;
    if (f->dst_w > f->src_w) {
      reg_2870_base = ((f->dst_w - f->src_w) << 16) / (f->src_w << 14);
    } else {
      reg_2870_base = 0U;
    }
    reg_2870 = ((((reg_2870_offset << 14) & 4294901760U) | (reg_2870_offset >> 2)) + ((reg_2870_base << 17) | reg_2870_base)) + reg_2870;
    reg_2874 = 0U;
  } else
  if (f->dst_w < f->src_w / 2U) {
    master_width = (f->src_w * 524288U) / f->dst_w;
    if (f->dst_w * master_width != f->src_w * 524288U) {
      master_width = master_width + 1U;
    } else {
    }
    reg_2834 = (reg_2834 << 16) | (u32 )x_cutoff;
    reg_2838 = (reg_2838 << 16) | (u32 )x_cutoff;
    reg_283c = master_width >> 2;
    reg_2844 = master_width >> 1;
    reg_2854 = master_width;
    reg_285c = master_width >> 1;
    reg_2864 = master_width >> 1;
    reg_2870 = (((reg_2870_offset << 15) & 4294901760U) | reg_2870_offset) + reg_2870;
    reg_2870 = ((5U - ((f->src_w + f->src_w / 2U) - 1U) / f->dst_w) << 16) + reg_2870;
    reg_2874 = 18U;
  } else {
    master_width = (f->src_w * 1048576U) / f->dst_w;
    if (f->dst_w * master_width != f->src_w * 1048576U) {
      master_width = master_width + 1U;
    } else {
    }
    reg_2834 = (reg_2834 << 16) | (u32 )x_cutoff;
    reg_2838 = (reg_2838 << 16) | (u32 )x_cutoff;
    reg_283c = master_width >> 2;
    reg_2844 = master_width >> 1;
    reg_2854 = master_width;
    reg_285c = master_width >> 1;
    reg_2864 = master_width >> 1;
    reg_2870 = (((reg_2870_offset << 14) & 4294901760U) | (reg_2870_offset >> 1)) + reg_2870;
    reg_2870 = ((5U - (f->src_w * 3U - 1U) / f->dst_w) << 16) + reg_2870;
    reg_2874 = 1U;
  }
  if (f->src_w == f->dst_w) {
    h_filter = 0;
  } else {
    h_filter = (int )((f->src_w << 16) / f->dst_w >> 15);
    h_filter = (h_filter >> 1) + (h_filter & 1);
    h_filter = (h_filter == 0) + h_filter;
  }
  writel(reg_2834, itv->reg_mem + 10292UL);
  writel(reg_2838, itv->reg_mem + 10296UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2834 %08x->%08x 0x2838 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2834, reg_2834, yi->reg_2838, reg_2838);
  } else {
  }
  writel(reg_283c, itv->reg_mem + 10300UL);
  writel(reg_2844, itv->reg_mem + 10308UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x283c %08x->%08x 0x2844 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_283c, reg_283c, yi->reg_2844, reg_2844);
  } else {
  }
  writel(525588U, itv->reg_mem + 10304UL);
  writel(1049876U, itv->reg_mem + 10312UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2840 %08x->%08x 0x2848 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2840, 525588, yi->reg_2848, 1049876);
  } else {
  }
  writel(reg_2854, itv->reg_mem + 10324UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2854 %08x->%08x \n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2854, reg_2854);
  } else {
  }
  writel(reg_285c, itv->reg_mem + 10332UL);
  writel(reg_2864, itv->reg_mem + 10340UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x285c %08x->%08x 0x2864 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_285c, reg_285c, yi->reg_2864, reg_2864);
  } else {
  }
  writel(reg_2874, itv->reg_mem + 10356UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2874 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2874, reg_2874);
  } else {
  }
  writel(reg_2870, itv->reg_mem + 10352UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2870 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2870, reg_2870);
  } else {
  }
  writel(reg_2890, itv->reg_mem + 10384UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2890 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2890, reg_2890);
  } else {
  }
  if (yi->h_filter != h_filter) {
    ivtv_yuv_filter(itv, h_filter, -1, -1);
    yi->h_filter = h_filter;
  } else {
  }
  return;
}
}
static void ivtv_yuv_handle_vertical(struct ivtv *itv , struct yuv_frame_info *f )
{
  struct yuv_playback_info *yi ;
  u32 master_height ;
  u32 reg_2918 ;
  u32 reg_291c ;
  u32 reg_2920 ;
  u32 reg_2928 ;
  u32 reg_2930 ;
  u32 reg_2934 ;
  u32 reg_293c ;
  u32 reg_2940 ;
  u32 reg_2944 ;
  u32 reg_294c ;
  u32 reg_2950 ;
  u32 reg_2954 ;
  u32 reg_2958 ;
  u32 reg_295c ;
  u32 reg_2960 ;
  u32 reg_2964 ;
  u32 reg_2968 ;
  u32 reg_296c ;
  u32 reg_289c ;
  u32 src_major_y ;
  u32 src_minor_y ;
  u32 src_major_uv ;
  u32 src_minor_uv ;
  u32 reg_2964_base ;
  u32 reg_2968_base ;
  int v_filter_1 ;
  int v_filter_2 ;
  {
  yi = & itv->yuv_info;
  if (ivtv_debug & 1) {
    printk("\016%s:  warn: Adjust to height %d src_h %d dst_h %d src_y %d dst_y %d\n",
           (char *)(& itv->v4l2_dev.name), f->tru_h, f->src_h, f->dst_h, f->src_y,
           f->dst_y);
  } else {
  }
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Scaling mode Y: %s\n", (char *)(& itv->v4l2_dev.name), f->interlaced_y != 0U ? (char *)"Interlaced" : (char *)"Progressive");
  } else {
  }
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Scaling mode UV: %s\n", (char *)(& itv->v4l2_dev.name),
           f->interlaced_uv != 0U ? (char *)"Interlaced" : (char *)"Progressive");
  } else {
  }
  if (ivtv_debug & 1) {
    printk("\016%s:  warn: Source video: %s\n", (char *)(& itv->v4l2_dev.name), f->interlaced != 0U ? (char *)"Interlaced" : (char *)"Progressive");
  } else {
  }
  if (f->src_y <= 7) {
    src_minor_uv = (u32 )f->src_y;
    src_major_uv = 0U;
  } else {
    src_minor_uv = 8U;
    src_major_uv = (u32 )(f->src_y + -8);
  }
  src_minor_y = src_minor_uv;
  src_major_y = src_major_uv;
  if (f->offset_y != 0U) {
    src_minor_y = src_minor_y + 16U;
  } else {
  }
  if (f->interlaced_y != 0U) {
    reg_2918 = (f->dst_h << 16) | (f->src_h + src_minor_y);
  } else {
    reg_2918 = (f->dst_h << 16) | ((f->src_h + src_minor_y) << 1);
  }
  if (f->interlaced_uv != 0U) {
    reg_291c = (f->dst_h << 16) | ((f->src_h + src_minor_uv) >> 1);
  } else {
    reg_291c = (f->dst_h << 16) | (f->src_h + src_minor_uv);
  }
  reg_2964_base = ((f->dst_h << 16) / f->src_h) * src_minor_y >> 14;
  reg_2968_base = ((f->dst_h << 16) / f->src_h) * src_minor_uv >> 14;
  if (f->dst_h / 2U >= f->src_h && f->interlaced_y == 0U) {
    master_height = (f->src_h * 4194304U) / f->dst_h;
    if (f->src_h * 4194304U - f->dst_h * master_height >= f->dst_h / 2U) {
      master_height = master_height + 1U;
    } else {
    }
    reg_2920 = master_height >> 2;
    reg_2928 = master_height >> 3;
    reg_2930 = master_height;
    reg_2940 = master_height >> 1;
    reg_2964_base = reg_2964_base >> 3;
    reg_2968_base = reg_2968_base >> 3;
    reg_296c = 0U;
  } else
  if (f->dst_h >= f->src_h) {
    master_height = (f->src_h * 4194304U) / f->dst_h;
    master_height = (master_height >> 1) + (master_height & 1U);
    reg_2920 = master_height >> 2;
    reg_2928 = master_height >> 2;
    reg_2930 = master_height;
    reg_2940 = master_height >> 1;
    reg_296c = 0U;
    if (f->interlaced_y != 0U) {
      reg_2964_base = reg_2964_base >> 3;
    } else {
      reg_296c = reg_296c + 1U;
      reg_2964_base = reg_2964_base >> 2;
    }
    if (f->interlaced_uv != 0U) {
      reg_2928 = reg_2928 >> 1;
    } else {
    }
    reg_2968_base = reg_2968_base >> 3;
  } else
  if (f->dst_h >= f->src_h / 2U) {
    master_height = (f->src_h * 2097152U) / f->dst_h;
    master_height = (master_height >> 1) + (master_height & 1U);
    reg_2920 = master_height >> 2;
    reg_2928 = master_height >> 2;
    reg_2930 = master_height;
    reg_2940 = master_height;
    reg_296c = 257U;
    if (f->interlaced_y != 0U) {
      reg_2964_base = reg_2964_base >> 2;
    } else {
      reg_296c = reg_296c + 1U;
      reg_2964_base = reg_2964_base >> 1;
    }
    if (f->interlaced_uv != 0U) {
      reg_2928 = reg_2928 >> 1;
    } else {
    }
    reg_2968_base = reg_2968_base >> 2;
  } else {
    master_height = (f->src_h * 1048576U) / f->dst_h;
    master_height = (master_height >> 1) + (master_height & 1U);
    reg_2920 = master_height >> 2;
    reg_2928 = master_height >> 2;
    reg_2930 = master_height;
    reg_2940 = master_height;
    reg_2964_base = reg_2964_base >> 1;
    reg_2968_base = reg_2968_base >> 2;
    reg_296c = 258U;
  }
  if (f->src_h == f->dst_h) {
    reg_2934 = 131072U;
    reg_293c = 1048576U;
    reg_2944 = 262144U;
    reg_294c = 720896U;
  } else {
    reg_2934 = 4080U;
    reg_293c = 4080U;
    reg_2944 = 4080U;
    reg_294c = 4080U;
  }
  reg_2950 = src_major_y + 65536U;
  if (f->interlaced_y != 0U) {
    reg_2950 = reg_2950 + 65536U;
  } else {
  }
  reg_2954 = reg_2950 + 1U;
  reg_2958 = (src_major_y >> 1) + 65536U;
  if (f->interlaced_uv != 0U) {
    reg_2958 = reg_2958 + 65536U;
  } else {
  }
  reg_295c = reg_2958 + 1U;
  if (yi->decode_height == 480) {
    reg_289c = 18743319U;
  } else {
    reg_289c = 22020119U;
  }
  if (f->dst_y < 0) {
    reg_289c = (reg_289c - (u32 )((f->dst_y & -2) << 15)) - (u32 )(f->dst_y >> 1);
  } else {
    reg_289c = ((u32 )((f->dst_y & -2) << 15) + reg_289c) + (u32 )(f->dst_y >> 1);
  }
  reg_2960 = (((f->src_h + src_minor_y) + src_major_y) - 1U) | (((((f->src_h + src_minor_uv) + src_major_uv) - 1U) & 4294967294U) << 15);
  if (f->src_h == f->dst_h) {
    reg_2964 = 1U;
  } else {
    reg_2964 = (f->dst_h << 1) / f->src_h + 2U;
    reg_2964 = (reg_2964 >> 1) + (reg_2964 & 1U);
  }
  reg_2968 = ((reg_2964 << 16) + reg_2964) + (reg_2964 >> 1);
  reg_2964 = ((reg_2964 << 16) + reg_2964) + (reg_2964 * 46U) / 94U;
  reg_2964 = ((reg_2964 & 65535U) - (reg_2964 >> 16)) + 65537U;
  reg_2968 = ((reg_2968 & 65535U) - (reg_2968 >> 16)) + 65537U;
  if (reg_2964 != 65537U && f->dst_h / 2U <= f->src_h) {
    reg_2964 = (reg_2964 & 4294901760U) + (reg_2964 & 65535U) / 2U;
  } else {
  }
  if (f->interlaced_y == 0U) {
    reg_2964 = reg_2964 - 65537U;
  } else {
  }
  if (f->interlaced_uv == 0U) {
    reg_2968 = reg_2968 - 65537U;
  } else {
  }
  reg_2964 = ((reg_2964_base << 16) | reg_2964_base) + reg_2964;
  reg_2968 = ((reg_2968_base << 16) | reg_2968_base) + reg_2968;
  if (f->src_h == f->dst_h) {
    v_filter_1 = 0;
    v_filter_2 = 1;
  } else {
    v_filter_1 = (int )((f->src_h << 16) / f->dst_h >> 15);
    v_filter_1 = (v_filter_1 >> 1) + (v_filter_1 & 1);
    v_filter_1 = (v_filter_1 == 0) + v_filter_1;
    v_filter_2 = v_filter_1;
  }
  writel(reg_2934, itv->reg_mem + 10548UL);
  writel(reg_293c, itv->reg_mem + 10556UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2934 %08x->%08x 0x293c %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2934, reg_2934, yi->reg_293c, reg_293c);
  } else {
  }
  writel(reg_2944, itv->reg_mem + 10564UL);
  writel(reg_294c, itv->reg_mem + 10572UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2944 %08x->%08x 0x294c %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2944, reg_2944, yi->reg_294c, reg_294c);
  } else {
  }
  writel(reg_2930, itv->reg_mem + 10552UL);
  writel(reg_2930, itv->reg_mem + 10544UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2930 %08x->%08x 0x2938 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2930, reg_2930, yi->reg_2938, reg_2930);
  } else {
  }
  writel(reg_2928, itv->reg_mem + 10536UL);
  writel(reg_2928 + 1300U, itv->reg_mem + 10540UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2928 %08x->%08x 0x292c %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2928, reg_2928, yi->reg_292c, reg_2928 + 1300U);
  } else {
  }
  writel(reg_2920, itv->reg_mem + 10528UL);
  writel(reg_2920 + 1300U, itv->reg_mem + 10532UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2920 %08x->%08x 0x2924 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2920, reg_2920, yi->reg_2924, reg_2920 + 1300U);
  } else {
  }
  writel(reg_2918, itv->reg_mem + 10520UL);
  writel(reg_291c, itv->reg_mem + 10524UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2918 %08x->%08x 0x291C %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2918, reg_2918, yi->reg_291c, reg_291c);
  } else {
  }
  writel(reg_296c, itv->reg_mem + 10604UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x296c %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_296c, reg_296c);
  } else {
  }
  writel(reg_2940, itv->reg_mem + 10568UL);
  writel(reg_2940, itv->reg_mem + 10560UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2940 %08x->%08x 0x2948 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2940, reg_2940, yi->reg_2948, reg_2940);
  } else {
  }
  writel(reg_2950, itv->reg_mem + 10576UL);
  writel(reg_2954, itv->reg_mem + 10580UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2950 %08x->%08x 0x2954 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2950, reg_2950, yi->reg_2954, reg_2954);
  } else {
  }
  writel(reg_2958, itv->reg_mem + 10584UL);
  writel(reg_295c, itv->reg_mem + 10588UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2958 %08x->%08x 0x295C %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2958, reg_2958, yi->reg_295c, reg_295c);
  } else {
  }
  writel(reg_2960, itv->reg_mem + 10592UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2960 %08x->%08x \n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2960, reg_2960);
  } else {
  }
  writel(reg_2964, itv->reg_mem + 10596UL);
  writel(reg_2968, itv->reg_mem + 10600UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x2964 %08x->%08x 0x2968 %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_2964, reg_2964, yi->reg_2968, reg_2968);
  } else {
  }
  writel(reg_289c, itv->reg_mem + 10396UL);
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update reg 0x289c %08x->%08x\n", (char *)(& itv->v4l2_dev.name),
           yi->reg_289c, reg_289c);
  } else {
  }
  if (yi->v_filter_1 != v_filter_1) {
    ivtv_yuv_filter(itv, -1, v_filter_1, -1);
    yi->v_filter_1 = v_filter_1;
  } else {
  }
  if (yi->v_filter_2 != v_filter_2) {
    ivtv_yuv_filter(itv, -1, -1, v_filter_2);
    yi->v_filter_2 = v_filter_2;
  } else {
  }
  return;
}
}
static u32 ivtv_yuv_window_setup(struct ivtv *itv , struct yuv_frame_info *f )
{
  struct yuv_frame_info *of ;
  int osd_crop ;
  u32 osd_scale ;
  u32 yuv_update ;
  {
  of = & itv->yuv_info.old_frame_info;
  yuv_update = 0U;
  if (f->src_x < 0) {
    f->src_x = 0;
  } else {
  }
  if (f->src_y < 0) {
    f->src_y = 0;
  } else {
  }
  osd_crop = (int )(f->src_w - f->dst_w * 4U);
  if (osd_crop > 0) {
    f->src_x = f->src_x + osd_crop / 2;
    f->src_w = (f->src_w - (u32 )osd_crop) & 4294967292U;
    f->dst_w = f->src_w / 4U;
    f->dst_w = f->dst_w + (f->dst_w & 1U);
  } else {
  }
  if (f->src_h / f->dst_h > 1U) {
    f->interlaced_y = 1U;
    osd_crop = (int )(f->src_h - f->dst_h * 4U);
    if (osd_crop > 0) {
      f->src_y = f->src_y + osd_crop / 2;
      f->src_h = (f->src_h - (u32 )osd_crop) & 4294967292U;
      f->dst_h = f->src_h / 4U;
      f->dst_h = f->dst_h + (f->dst_h & 1U);
    } else {
    }
  } else {
  }
  if ((((int )f->dst_w <= 2 || (int )f->dst_h <= 2) || (int )f->src_w <= 2) || (int )f->src_h <= 2) {
    return (4U);
  } else {
  }
  osd_scale = (f->src_h << 16) / f->dst_h;
  osd_crop = f->pan_y - f->dst_y;
  if (osd_crop > 0) {
    f->src_y = (s32 )((u32 )f->src_y + (osd_scale * (u32 )osd_crop >> 16));
    f->src_h = f->src_h - (osd_scale * (u32 )osd_crop >> 16);
    f->dst_h = f->dst_h - (u32 )osd_crop;
    f->dst_y = 0;
  } else {
    f->dst_y = f->dst_y - f->pan_y;
  }
  osd_crop = (int )((f->dst_h + (u32 )f->dst_y) - f->vis_h);
  if (osd_crop > 0) {
    f->dst_h = f->dst_h - (u32 )osd_crop;
    f->src_h = f->src_h - (osd_scale * (u32 )osd_crop >> 16);
  } else {
  }
  osd_scale = (f->src_w << 16) / f->dst_w;
  osd_crop = f->pan_x - f->dst_x;
  if (osd_crop > 0) {
    f->src_x = (s32 )((u32 )f->src_x + (osd_scale * (u32 )osd_crop >> 16));
    f->src_w = f->src_w - (osd_scale * (u32 )osd_crop >> 16);
    f->dst_w = f->dst_w - (u32 )osd_crop;
    f->dst_x = 0;
  } else {
    f->dst_x = f->dst_x - f->pan_x;
  }
  osd_crop = (int )((f->dst_w + (u32 )f->dst_x) - f->vis_w);
  if (osd_crop > 0) {
    f->dst_w = f->dst_w - (u32 )osd_crop;
    f->src_w = f->src_w - (osd_scale * (u32 )osd_crop >> 16);
  } else {
  }
  if ((unsigned int )itv->yuv_info.track_osd != 0U) {
    f->dst_x = (s32 )((u32 )f->dst_x + itv->yuv_info.osd_x_offset);
    f->dst_y = (s32 )((u32 )f->dst_y + itv->yuv_info.osd_y_offset);
  } else {
  }
  f->dst_w = f->dst_w & 4294967294U;
  f->dst_x = f->dst_x & -2;
  f->src_w = f->src_w + ((u32 )f->src_x & 1U);
  f->src_x = f->src_x & -2;
  f->src_w = f->src_w & 4294967294U;
  f->dst_w = f->dst_w & 4294967294U;
  f->dst_h = f->dst_h & 4294967294U;
  f->dst_y = f->dst_y & -2;
  f->src_h = f->src_h + ((u32 )f->src_y & 1U);
  f->src_y = f->src_y & -2;
  f->src_h = f->src_h & 4294967294U;
  f->dst_h = f->dst_h & 4294967294U;
  if (f->dst_w < f->src_w / 4U) {
    f->src_w = f->src_w & 4294967292U;
    f->dst_w = f->src_w / 4U;
    f->dst_w = f->dst_w + (f->dst_w & 1U);
  } else {
  }
  if (f->dst_h < f->src_h / 4U) {
    f->src_h = f->src_h & 4294967292U;
    f->dst_h = f->src_h / 4U;
    f->dst_h = f->dst_h + (f->dst_h & 1U);
  } else {
  }
  if ((((int )f->dst_w <= 2 || (int )f->dst_h <= 2) || (int )f->src_w <= 2) || (int )f->src_h <= 2) {
    return (4U);
  } else {
  }
  if (((((of->dst_w != f->dst_w || of->src_w != f->src_w) || of->dst_x != f->dst_x) || of->src_x != f->src_x) || of->pan_x != f->pan_x) || of->vis_w != f->vis_w) {
    yuv_update = yuv_update | 1U;
  } else {
  }
  if ((((((((of->src_h != f->src_h || of->dst_h != f->dst_h) || of->dst_y != f->dst_y) || of->src_y != f->src_y) || of->pan_y != f->pan_y) || of->vis_h != f->vis_h) || of->lace_mode != f->lace_mode) || of->interlaced_y != f->interlaced_y) || of->interlaced_uv != f->interlaced_uv) {
    yuv_update = yuv_update | 2U;
  } else {
  }
  return (yuv_update);
}
}
void ivtv_yuv_work_handler(struct ivtv *itv )
{
  struct yuv_playback_info *yi ;
  struct yuv_frame_info f ;
  int frame ;
  u32 yuv_update ;
  {
  yi = & itv->yuv_info;
  frame = yi->update_frame;
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: Update yuv registers for frame %d\n", (char *)(& itv->v4l2_dev.name),
           frame);
  } else {
  }
  f = yi->new_frame_info[frame];
  if ((unsigned int )yi->track_osd != 0U) {
    f.pan_x = (s32 )yi->osd_x_pan;
    f.pan_y = (s32 )yi->osd_y_pan;
    f.vis_w = yi->osd_vis_w;
    f.vis_h = yi->osd_vis_h;
  } else {
    f.pan_x = 0;
    f.pan_y = 0;
    f.vis_w = 720U;
    f.vis_h = (u32 )yi->decode_height;
  }
  yuv_update = ivtv_yuv_window_setup(itv, & f);
  if (yuv_update == 0U) {
    return;
  } else {
  }
  if ((yuv_update & 4U) != 0U) {
    writel(16810112U, itv->reg_mem + 10392UL);
  } else
  if (yuv_update != 0U) {
    writel(1081472U, itv->reg_mem + 10392UL);
    if ((int )yuv_update & 1) {
      ivtv_yuv_handle_horizontal(itv, & f);
    } else {
    }
    if ((yuv_update & 2U) != 0U) {
      ivtv_yuv_handle_vertical(itv, & f);
    } else {
    }
  } else {
  }
  yi->old_frame_info = f;
  return;
}
}
static void ivtv_yuv_init(struct ivtv *itv )
{
  struct yuv_playback_info *yi ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  yi = & itv->yuv_info;
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: ivtv_yuv_init\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  yi->reg_2834 = readl((void const volatile *)itv->reg_mem + 10292U);
  yi->reg_2838 = readl((void const volatile *)itv->reg_mem + 10296U);
  yi->reg_283c = readl((void const volatile *)itv->reg_mem + 10300U);
  yi->reg_2840 = readl((void const volatile *)itv->reg_mem + 10304U);
  yi->reg_2844 = readl((void const volatile *)itv->reg_mem + 10308U);
  yi->reg_2848 = readl((void const volatile *)itv->reg_mem + 10312U);
  yi->reg_2854 = readl((void const volatile *)itv->reg_mem + 10324U);
  yi->reg_285c = readl((void const volatile *)itv->reg_mem + 10332U);
  yi->reg_2864 = readl((void const volatile *)itv->reg_mem + 10340U);
  yi->reg_2870 = readl((void const volatile *)itv->reg_mem + 10352U);
  yi->reg_2874 = readl((void const volatile *)itv->reg_mem + 10356U);
  yi->reg_2898 = readl((void const volatile *)itv->reg_mem + 10392U);
  yi->reg_2890 = readl((void const volatile *)itv->reg_mem + 10384U);
  yi->reg_289c = readl((void const volatile *)itv->reg_mem + 10396U);
  yi->reg_2918 = readl((void const volatile *)itv->reg_mem + 10520U);
  yi->reg_291c = readl((void const volatile *)itv->reg_mem + 10524U);
  yi->reg_2920 = readl((void const volatile *)itv->reg_mem + 10528U);
  yi->reg_2924 = readl((void const volatile *)itv->reg_mem + 10532U);
  yi->reg_2928 = readl((void const volatile *)itv->reg_mem + 10536U);
  yi->reg_292c = readl((void const volatile *)itv->reg_mem + 10540U);
  yi->reg_2930 = readl((void const volatile *)itv->reg_mem + 10544U);
  yi->reg_2934 = readl((void const volatile *)itv->reg_mem + 10548U);
  yi->reg_2938 = readl((void const volatile *)itv->reg_mem + 10552U);
  yi->reg_293c = readl((void const volatile *)itv->reg_mem + 10556U);
  yi->reg_2940 = readl((void const volatile *)itv->reg_mem + 10560U);
  yi->reg_2944 = readl((void const volatile *)itv->reg_mem + 10564U);
  yi->reg_2948 = readl((void const volatile *)itv->reg_mem + 10568U);
  yi->reg_294c = readl((void const volatile *)itv->reg_mem + 10572U);
  yi->reg_2950 = readl((void const volatile *)itv->reg_mem + 10576U);
  yi->reg_2954 = readl((void const volatile *)itv->reg_mem + 10580U);
  yi->reg_2958 = readl((void const volatile *)itv->reg_mem + 10584U);
  yi->reg_295c = readl((void const volatile *)itv->reg_mem + 10588U);
  yi->reg_2960 = readl((void const volatile *)itv->reg_mem + 10592U);
  yi->reg_2964 = readl((void const volatile *)itv->reg_mem + 10596U);
  yi->reg_2968 = readl((void const volatile *)itv->reg_mem + 10600U);
  yi->reg_296c = readl((void const volatile *)itv->reg_mem + 10604U);
  yi->reg_2970 = readl((void const volatile *)itv->reg_mem + 10608U);
  yi->v_filter_1 = -1;
  yi->v_filter_2 = -1;
  yi->h_filter = -1;
  tmp = readl((void const volatile *)itv->reg_mem + 10756U);
  yi->osd_x_offset = tmp & 4095U;
  tmp___0 = readl((void const volatile *)itv->reg_mem + 10756U);
  yi->osd_y_offset = (tmp___0 >> 16) & 4095U;
  tmp___1 = readl((void const volatile *)itv->reg_mem + 10360U);
  if ((tmp___1 & 4U) != 0U) {
    yi->decode_height = 576;
  } else {
    yi->decode_height = 480;
  }
  if ((unsigned long )itv->osd_info == (unsigned long )((struct osd_info *)0)) {
    yi->osd_vis_w = 720U - yi->osd_x_offset;
    yi->osd_vis_h = (u32 )yi->decode_height - yi->osd_y_offset;
  } else {
    if (yi->osd_vis_w == 0U) {
      yi->osd_vis_w = 720U - yi->osd_x_offset;
    } else {
    }
    if (yi->osd_vis_h == 0U) {
      yi->osd_vis_h = (u32 )yi->decode_height - yi->osd_y_offset;
    } else
    if (yi->osd_vis_h + yi->osd_y_offset > (u32 )yi->decode_height) {
      if (ivtv_debug & 1) {
        printk("\016%s:  warn: Clipping yuv output - fb size (%d) exceeds video standard limit (%d)\n",
               (char *)(& itv->v4l2_dev.name), yi->osd_vis_h + yi->osd_y_offset, yi->decode_height);
      } else {
      }
      yi->osd_vis_h = (u32 )yi->decode_height - yi->osd_y_offset;
    } else {
    }
  }
  yi->blanking_ptr = kzalloc(11520UL, 720U);
  if ((unsigned long )yi->blanking_ptr != (unsigned long )((void *)0)) {
    yi->blanking_dmaptr = pci_map_single(itv->pdev, yi->blanking_ptr, 11520UL, 1);
  } else {
    yi->blanking_dmaptr = 0ULL;
    if (ivtv_debug & 1) {
      printk("\016%s:  warn: Failed to allocate yuv blanking buffer\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
  }
  writel(1U, itv->reg_mem + 10240UL);
  readl((void const volatile *)itv->reg_mem + 10240U);
  set_bit(12L, (unsigned long volatile *)(& itv->i_flags));
  atomic_set(& yi->next_dma_frame, 0);
  return;
}
}
static void ivtv_yuv_next_free(struct ivtv *itv )
{
  int draw ;
  int display ;
  struct yuv_playback_info *yi ;
  int tmp ;
  {
  yi = & itv->yuv_info;
  tmp = atomic_read((atomic_t const *)(& yi->next_dma_frame));
  if (tmp == -1) {
    ivtv_yuv_init(itv);
  } else {
  }
  draw = atomic_read((atomic_t const *)(& yi->next_fill_frame));
  display = atomic_read((atomic_t const *)(& yi->next_dma_frame));
  if (display > draw) {
    display = display + -8;
  } else {
  }
  if (draw - display >= (int )yi->max_frames_buffered) {
    draw = (int )((unsigned int )((unsigned char )draw) - 1U) & 7;
  } else {
    yi->new_frame_info[draw].update = 0U;
  }
  yi->draw_frame = (u8 )draw;
  return;
}
}
static void ivtv_yuv_setup_frame(struct ivtv *itv , struct ivtv_dma_frame *args )
{
  struct yuv_playback_info *yi ;
  u8 frame ;
  u8 last_frame ;
  struct yuv_frame_info *nf ;
  struct yuv_frame_info *of ;
  int lace_threshold ;
  int update ;
  int tmp ;
  {
  yi = & itv->yuv_info;
  frame = yi->draw_frame;
  last_frame = (unsigned int )((u8 )((unsigned int )frame - 1U)) & 7U;
  nf = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )frame;
  of = (struct yuv_frame_info *)(& yi->new_frame_info) + (unsigned long )last_frame;
  lace_threshold = yi->lace_threshold;
  update = (int )nf->update;
  nf->src_x = args->src.left;
  nf->src_y = args->src.top;
  nf->src_w = args->src.width;
  nf->src_h = args->src.height;
  nf->dst_x = args->dst.left;
  nf->dst_y = args->dst.top;
  nf->dst_w = args->dst.width;
  nf->dst_h = args->dst.height;
  nf->tru_x = args->dst.left;
  nf->tru_w = args->src_width;
  nf->tru_h = args->src_height;
  nf->offset_y = nf->tru_h + (u32 )nf->src_x <= 495U;
  nf->update = 0U;
  nf->interlaced_y = 0U;
  nf->interlaced_uv = 0U;
  nf->delay = 0U;
  nf->sync_field = 0U;
  nf->lace_mode = yi->lace_mode & 3;
  if (lace_threshold < 0) {
    lace_threshold = yi->decode_height + -1;
  } else {
  }
  switch (nf->lace_mode) {
  case 1:
  nf->interlaced = 0U;
  if (nf->tru_h <= 511U || (nf->tru_h > 576U && nf->tru_h <= 1020U)) {
    nf->interlaced_y = 0U;
  } else {
    nf->interlaced_y = 1U;
  }
  if (nf->tru_h <= 1020U && nf->dst_h >= nf->src_h / 2U) {
    nf->interlaced_uv = 0U;
  } else {
    nf->interlaced_uv = 1U;
  }
  goto ldv_39075;
  case 2: ;
  if ((nf->tru_h <= (u32 )lace_threshold || nf->tru_h > 576U) || nf->tru_w > 720U) {
    nf->interlaced = 0U;
    if ((nf->tru_h <= 511U || (nf->tru_h > 576U && nf->tru_h <= 1020U)) || (nf->tru_w > 720U && nf->tru_h <= 1020U)) {
      nf->interlaced_y = 0U;
    } else {
      nf->interlaced_y = 1U;
    }
    if (nf->tru_h <= 1020U && nf->dst_h >= nf->src_h / 2U) {
      nf->interlaced_uv = 0U;
    } else {
      nf->interlaced_uv = 1U;
    }
  } else {
    nf->interlaced = 1U;
    nf->interlaced_y = 1U;
    nf->interlaced_uv = 1U;
  }
  goto ldv_39075;
  case 0: ;
  default:
  nf->interlaced = 1U;
  nf->interlaced_y = 1U;
  nf->interlaced_uv = 1U;
  goto ldv_39075;
  }
  ldv_39075:
  tmp = memcmp((void const *)(& yi->old_frame_info_args), (void const *)nf, 92UL);
  if (tmp != 0) {
    yi->old_frame_info_args = *nf;
    nf->update = 1U;
    if ((ivtv_debug & 256) != 0) {
      printk("\016%s:  yuv: Requesting reg update for frame %d\n", (char *)(& itv->v4l2_dev.name),
             (int )frame);
    } else {
    }
  } else {
  }
  nf->update = nf->update | (u32 )update;
  nf->sync_field = (u32 )yi->lace_sync_field;
  nf->delay = nf->sync_field != of->sync_field;
  return;
}
}
void ivtv_yuv_frame_complete(struct ivtv *itv )
{
  {
  atomic_set(& itv->yuv_info.next_fill_frame, ((int )itv->yuv_info.draw_frame + 1) % 8);
  return;
}
}
static int ivtv_yuv_udma_frame(struct ivtv *itv , struct ivtv_dma_frame *args )
{
  wait_queue_t wait ;
  struct task_struct *tmp ;
  int rc ;
  int got_sig ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  rc = 0;
  got_sig = 0;
  mutex_lock_nested(& itv->udma.lock, 0U);
  rc = ivtv_yuv_prep_user_dma(itv, & itv->udma, args);
  if (rc != 0) {
    mutex_unlock(& itv->udma.lock);
    return (rc);
  } else {
  }
  ivtv_udma_prepare(itv);
  prepare_to_wait(& itv->dma_waitq, & wait, 1);
  goto ldv_39091;
  ldv_39090:
  tmp___0 = get_current();
  got_sig = signal_pending___2(tmp___0);
  if (got_sig != 0) {
    tmp___1 = test_and_clear_bit(2L, (unsigned long volatile *)(& itv->i_flags));
    if (tmp___1 != 0) {
      goto ldv_39089;
    } else {
    }
  } else {
  }
  got_sig = 0;
  schedule();
  ldv_39091:
  tmp___2 = constant_test_bit(2L, (unsigned long const volatile *)(& itv->i_flags));
  if (tmp___2 != 0) {
    goto ldv_39090;
  } else {
    tmp___3 = constant_test_bit(1L, (unsigned long const volatile *)(& itv->i_flags));
    if (tmp___3 != 0) {
      goto ldv_39090;
    } else {
      goto ldv_39089;
    }
  }
  ldv_39089:
  finish_wait(& itv->dma_waitq, & wait);
  ivtv_udma_unmap(itv);
  if (got_sig != 0) {
    if ((ivtv_debug & 2) != 0) {
      printk("\016%s:  info: User stopped YUV UDMA\n", (char *)(& itv->v4l2_dev.name));
    } else {
    }
    mutex_unlock(& itv->udma.lock);
    return (-4);
  } else {
  }
  ivtv_yuv_frame_complete(itv);
  mutex_unlock(& itv->udma.lock);
  return (rc);
}
}
void ivtv_yuv_setup_stream_frame(struct ivtv *itv )
{
  struct yuv_playback_info *yi ;
  struct ivtv_dma_frame dma_args ;
  {
  yi = & itv->yuv_info;
  ivtv_yuv_next_free(itv);
  dma_args.y_source = (void *)0;
  dma_args.uv_source = (void *)0;
  dma_args.src.left = 0;
  dma_args.src.top = 0;
  dma_args.src.width = yi->v4l2_src_w;
  dma_args.src.height = yi->v4l2_src_h;
  dma_args.dst = yi->main_rect;
  dma_args.src_width = yi->v4l2_src_w;
  dma_args.src_height = yi->v4l2_src_h;
  ivtv_yuv_setup_frame(itv, & dma_args);
  if (itv->dma_data_req_offset == 0U) {
    itv->dma_data_req_offset = yuv_offset[(int )yi->draw_frame];
  } else {
  }
  return;
}
}
int ivtv_yuv_udma_stream_frame(struct ivtv *itv , void *src )
{
  struct yuv_playback_info *yi ;
  struct ivtv_dma_frame dma_args ;
  int res ;
  {
  yi = & itv->yuv_info;
  ivtv_yuv_setup_stream_frame(itv);
  dma_args.y_source = src;
  dma_args.uv_source = src + (unsigned long )(((yi->v4l2_src_h + 31U) & 4294967264U) * 720U);
  mutex_unlock(& itv->serialize_lock);
  res = ivtv_yuv_udma_frame(itv, & dma_args);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  return (res);
}
}
int ivtv_yuv_prep_frame(struct ivtv *itv , struct ivtv_dma_frame *args )
{
  int res ;
  {
  ivtv_yuv_next_free(itv);
  ivtv_yuv_setup_frame(itv, args);
  mutex_unlock(& itv->serialize_lock);
  res = ivtv_yuv_udma_frame(itv, args);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  return (res);
}
}
void ivtv_yuv_close(struct ivtv *itv )
{
  struct yuv_playback_info *yi ;
  int h_filter ;
  int v_filter_1 ;
  int v_filter_2 ;
  {
  yi = & itv->yuv_info;
  if ((ivtv_debug & 256) != 0) {
    printk("\016%s:  yuv: ivtv_yuv_close\n", (char *)(& itv->v4l2_dev.name));
  } else {
  }
  mutex_unlock(& itv->serialize_lock);
  ivtv_waitq(& itv->vsync_waitq);
  mutex_lock_nested(& itv->serialize_lock, 0U);
  yi->running = 0U;
  atomic_set(& yi->next_dma_frame, -1);
  atomic_set(& yi->next_fill_frame, 0);
  writel(yi->reg_2898 | 16777216U, itv->reg_mem + 10392UL);
  writel(yi->reg_2834, itv->reg_mem + 10292UL);
  writel(yi->reg_2838, itv->reg_mem + 10296UL);
  writel(yi->reg_283c, itv->reg_mem + 10300UL);
  writel(yi->reg_2840, itv->reg_mem + 10304UL);
  writel(yi->reg_2844, itv->reg_mem + 10308UL);
  writel(yi->reg_2848, itv->reg_mem + 10312UL);
  writel(yi->reg_2854, itv->reg_mem + 10324UL);
  writel(yi->reg_285c, itv->reg_mem + 10332UL);
  writel(yi->reg_2864, itv->reg_mem + 10340UL);
  writel(yi->reg_2870, itv->reg_mem + 10352UL);
  writel(yi->reg_2874, itv->reg_mem + 10356UL);
  writel(yi->reg_2890, itv->reg_mem + 10384UL);
  writel(yi->reg_289c, itv->reg_mem + 10396UL);
  writel(yi->reg_2918, itv->reg_mem + 10520UL);
  writel(yi->reg_291c, itv->reg_mem + 10524UL);
  writel(yi->reg_2920, itv->reg_mem + 10528UL);
  writel(yi->reg_2924, itv->reg_mem + 10532UL);
  writel(yi->reg_2928, itv->reg_mem + 10536UL);
  writel(yi->reg_292c, itv->reg_mem + 10540UL);
  writel(yi->reg_2930, itv->reg_mem + 10544UL);
  writel(yi->reg_2934, itv->reg_mem + 10548UL);
  writel(yi->reg_2938, itv->reg_mem + 10552UL);
  writel(yi->reg_293c, itv->reg_mem + 10556UL);
  writel(yi->reg_2940, itv->reg_mem + 10560UL);
  writel(yi->reg_2944, itv->reg_mem + 10564UL);
  writel(yi->reg_2948, itv->reg_mem + 10568UL);
  writel(yi->reg_294c, itv->reg_mem + 10572UL);
  writel(yi->reg_2950, itv->reg_mem + 10576UL);
  writel(yi->reg_2954, itv->reg_mem + 10580UL);
  writel(yi->reg_2958, itv->reg_mem + 10584UL);
  writel(yi->reg_295c, itv->reg_mem + 10588UL);
  writel(yi->reg_2960, itv->reg_mem + 10592UL);
  writel(yi->reg_2964, itv->reg_mem + 10596UL);
  writel(yi->reg_2968, itv->reg_mem + 10600UL);
  writel(yi->reg_296c, itv->reg_mem + 10604UL);
  writel(yi->reg_2970, itv->reg_mem + 10608UL);
  if ((yi->reg_2834 & 65535U) == yi->reg_2834 >> 16) {
    h_filter = 0;
  } else {
    h_filter = (int )((yi->reg_2834 << 16) / (yi->reg_2834 >> 16) >> 15);
    h_filter = (h_filter >> 1) + (h_filter & 1);
    h_filter = (h_filter == 0) + h_filter;
  }
  if ((yi->reg_2918 & 65535U) == yi->reg_2918 >> 16) {
    v_filter_1 = 0;
    v_filter_2 = 1;
  } else {
    v_filter_1 = (int )((yi->reg_2918 << 16) / (yi->reg_2918 >> 16) >> 15);
    v_filter_1 = (v_filter_1 >> 1) + (v_filter_1 & 1);
    v_filter_1 = (v_filter_1 == 0) + v_filter_1;
    v_filter_2 = v_filter_1;
  }
  ivtv_yuv_filter(itv, h_filter, v_filter_1, v_filter_2);
  writel(0U, itv->reg_mem + 10260UL);
  writel(0U, itv->reg_mem + 10284UL);
  writel(0U, itv->reg_mem + 10500UL);
  writel(0U, itv->reg_mem + 10512UL);
  if ((unsigned long )yi->blanking_ptr != (unsigned long )((void *)0)) {
    kfree((void const *)yi->blanking_ptr);
    yi->blanking_ptr = (void *)0;
    pci_unmap_single(itv->pdev, yi->blanking_dmaptr, 11520UL, 1);
  } else {
  }
  yi->old_frame_info.src_w = 0U;
  yi->old_frame_info.src_h = 0U;
  yi->old_frame_info_args.src_w = 0U;
  yi->old_frame_info_args.src_h = 0U;
  clear_bit(12L, (unsigned long volatile *)(& itv->i_flags));
  return;
}
}
bool ldv_queue_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_240(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_241(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_242(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_243(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
void __init_kthread_worker(struct kthread_worker *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int __v4l2_ctrl_s_ctrl(struct v4l2_ctrl *arg0, s32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
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
void add_timer(struct timer_list *arg0) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int cx2341x_handler_init(struct cx2341x_handler *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void cx2341x_handler_set_50hz(struct cx2341x_handler *arg0, int arg1) {
  return;
}
void cx2341x_handler_set_busy(struct cx2341x_handler *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx2341x_handler_setup(struct cx2341x_handler *arg0) {
  return __VERIFIER_nondet_int();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
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
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_kthread_worker(struct kthread_worker *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int get_user_pages(struct task_struct *arg0, struct mm_struct *arg1, unsigned long arg2, unsigned long arg3, int arg4, int arg5, struct page **arg6, struct vm_area_struct **arg7) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int get_user_pages_unlocked(struct task_struct *arg0, struct mm_struct *arg1, unsigned long arg2, unsigned long arg3, int arg4, int arg5, struct page **arg6) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_bit_add_bus(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_send(const struct i2c_client *arg0, const char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
struct i2c_client *i2c_new_probed_device(struct i2c_adapter *arg0, struct i2c_board_info *arg1, const unsigned short *arg2, int (*arg3)(struct i2c_adapter *, unsigned short)) {
  return ldv_malloc(sizeof(struct i2c_client));
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv__builtin_va_arg(__builtin_va_list arg0, unsigned long arg1, void *arg2) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_15() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
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
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
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
bool queue_kthread_work(struct kthread_worker *arg0, struct kthread_work *arg1) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
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
int __VERIFIER_nondet_int(void);
int sched_setscheduler(struct task_struct *arg0, int arg1, const struct sched_param *arg2) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int tveeprom_read(struct i2c_client *arg0, unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void v4l2_ctrl_cluster(unsigned int arg0, struct v4l2_ctrl **arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_log_status(struct v4l2_ctrl_handler *arg0, const char *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s64 arg3, s64 arg4, u64 arg5, s64 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, u8 arg3, u64 arg4, u8 arg5) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register_subdev(struct v4l2_device *arg0, struct v4l2_subdev *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_set_name(struct v4l2_device *arg0, const char *arg1, atomic_t *arg2) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_pending(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_event_queue(struct video_device *arg0, const struct v4l2_event *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_subscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1, unsigned int arg2, const struct v4l2_subscribed_event_ops *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_is_singular(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device *arg0, struct i2c_adapter *arg1, struct i2c_board_info *arg2, const unsigned short *arg3) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_g_ctrl(struct v4l2_subdev *arg0, struct v4l2_control *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_g_ext_ctrls(struct v4l2_subdev *arg0, struct v4l2_ext_controls *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_subdev_init(struct v4l2_subdev *arg0, const struct v4l2_subdev_ops *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_queryctrl(struct v4l2_subdev *arg0, struct v4l2_queryctrl *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_querymenu(struct v4l2_subdev *arg0, struct v4l2_querymenu *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_s_ctrl(struct v4l2_subdev *arg0, struct v4l2_control *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_s_ext_ctrls(struct v4l2_subdev *arg0, struct v4l2_ext_controls *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_try_ext_ctrls(struct v4l2_subdev *arg0, struct v4l2_ext_controls *arg1) {
  return __VERIFIER_nondet_int();
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
