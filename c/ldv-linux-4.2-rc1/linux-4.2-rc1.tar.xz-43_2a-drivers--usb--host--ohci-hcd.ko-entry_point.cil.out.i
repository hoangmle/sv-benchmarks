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
typedef __u16 __le16;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct file_operations;
struct completion;
struct atomic_notifier_head;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct atomic_notifier_head {
   spinlock_t lock ;
   struct notifier_block *head ;
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
struct urb;
struct usb_hcd;
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
struct dma_pool;
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
enum usb3_link_state {
    USB3_LPM_U0 = 0,
    USB3_LPM_U1 = 1,
    USB3_LPM_U2 = 2,
    USB3_LPM_U3 = 3
} ;
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
struct block_device;
struct export_operations;
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
struct regulator;
struct phy;
struct phy_ops {
   int (*init)(struct phy * ) ;
   int (*exit)(struct phy * ) ;
   int (*power_on)(struct phy * ) ;
   int (*power_off)(struct phy * ) ;
   struct module *owner ;
};
struct phy_attrs {
   u32 bus_width ;
};
struct phy {
   struct device dev ;
   int id ;
   struct phy_ops const *ops ;
   struct mutex mutex ;
   int init_count ;
   int power_count ;
   struct phy_attrs attrs ;
   struct regulator *pwr ;
};
enum usb_phy_events {
    USB_EVENT_NONE = 0,
    USB_EVENT_VBUS = 1,
    USB_EVENT_ID = 2,
    USB_EVENT_CHARGER = 3,
    USB_EVENT_ENUMERATED = 4
} ;
enum usb_phy_type {
    USB_PHY_TYPE_UNDEFINED = 0,
    USB_PHY_TYPE_USB2 = 1,
    USB_PHY_TYPE_USB3 = 2
} ;
enum usb_otg_state {
    OTG_STATE_UNDEFINED = 0,
    OTG_STATE_B_IDLE = 1,
    OTG_STATE_B_SRP_INIT = 2,
    OTG_STATE_B_PERIPHERAL = 3,
    OTG_STATE_B_WAIT_ACON = 4,
    OTG_STATE_B_HOST = 5,
    OTG_STATE_A_IDLE = 6,
    OTG_STATE_A_WAIT_VRISE = 7,
    OTG_STATE_A_WAIT_BCON = 8,
    OTG_STATE_A_HOST = 9,
    OTG_STATE_A_SUSPEND = 10,
    OTG_STATE_A_PERIPHERAL = 11,
    OTG_STATE_A_WAIT_VFALL = 12,
    OTG_STATE_A_VBUS_ERR = 13
} ;
struct usb_phy;
struct usb_otg;
struct usb_phy_io_ops {
   int (*read)(struct usb_phy * , u32 ) ;
   int (*write)(struct usb_phy * , u32 , u32 ) ;
};
struct usb_phy {
   struct device *dev ;
   char const *label ;
   unsigned int flags ;
   enum usb_phy_type type ;
   enum usb_phy_events last_event ;
   struct usb_otg *otg ;
   struct device *io_dev ;
   struct usb_phy_io_ops *io_ops ;
   void *io_priv ;
   struct atomic_notifier_head notifier ;
   u16 port_status ;
   u16 port_change ;
   struct list_head head ;
   int (*init)(struct usb_phy * ) ;
   void (*shutdown)(struct usb_phy * ) ;
   int (*set_vbus)(struct usb_phy * , int ) ;
   int (*set_power)(struct usb_phy * , unsigned int ) ;
   int (*set_suspend)(struct usb_phy * , int ) ;
   int (*set_wakeup)(struct usb_phy * , bool ) ;
   int (*notify_connect)(struct usb_phy * , enum usb_device_speed ) ;
   int (*notify_disconnect)(struct usb_phy * , enum usb_device_speed ) ;
};
struct usb_gadget;
struct usb_otg {
   u8 default_a ;
   struct phy *phy ;
   struct usb_phy *usb_phy ;
   struct usb_bus *host ;
   struct usb_gadget *gadget ;
   enum usb_otg_state state ;
   int (*set_host)(struct usb_otg * , struct usb_bus * ) ;
   int (*set_peripheral)(struct usb_otg * , struct usb_gadget * ) ;
   int (*set_vbus)(struct usb_otg * , bool ) ;
   int (*start_srp)(struct usb_otg * ) ;
   int (*start_hnp)(struct usb_otg * ) ;
};
struct giveback_urb_bh {
   bool running ;
   spinlock_t lock ;
   struct list_head head ;
   struct tasklet_struct bh ;
   struct usb_host_endpoint *completing_ep ;
};
struct hc_driver;
struct usb_hcd {
   struct usb_bus self ;
   struct kref kref ;
   char const *product_desc ;
   int speed ;
   char irq_descr[24U] ;
   struct timer_list rh_timer ;
   struct urb *status_urb ;
   struct work_struct wakeup_work ;
   struct hc_driver const *driver ;
   struct usb_phy *usb_phy ;
   struct phy *phy ;
   unsigned long flags ;
   unsigned char rh_registered : 1 ;
   unsigned char rh_pollable : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char remove_phy : 1 ;
   unsigned char uses_new_polling : 1 ;
   unsigned char wireless : 1 ;
   unsigned char authorized_default : 1 ;
   unsigned char has_tt : 1 ;
   unsigned char amd_resume_bug : 1 ;
   unsigned char can_do_streams : 1 ;
   unsigned char tpl_support : 1 ;
   unsigned char cant_recv_wakeups : 1 ;
   unsigned int irq ;
   void *regs ;
   resource_size_t rsrc_start ;
   resource_size_t rsrc_len ;
   unsigned int power_budget ;
   struct giveback_urb_bh high_prio_bh ;
   struct giveback_urb_bh low_prio_bh ;
   struct mutex *bandwidth_mutex ;
   struct usb_hcd *shared_hcd ;
   struct usb_hcd *primary_hcd ;
   struct dma_pool *pool[4U] ;
   int state ;
   unsigned long hcd_priv[0U] ;
};
struct hc_driver {
   char const *description ;
   char const *product_desc ;
   size_t hcd_priv_size ;
   irqreturn_t (*irq)(struct usb_hcd * ) ;
   int flags ;
   int (*reset)(struct usb_hcd * ) ;
   int (*start)(struct usb_hcd * ) ;
   int (*pci_suspend)(struct usb_hcd * , bool ) ;
   int (*pci_resume)(struct usb_hcd * , bool ) ;
   void (*stop)(struct usb_hcd * ) ;
   void (*shutdown)(struct usb_hcd * ) ;
   int (*get_frame_number)(struct usb_hcd * ) ;
   int (*urb_enqueue)(struct usb_hcd * , struct urb * , gfp_t ) ;
   int (*urb_dequeue)(struct usb_hcd * , struct urb * , int ) ;
   int (*map_urb_for_dma)(struct usb_hcd * , struct urb * , gfp_t ) ;
   void (*unmap_urb_for_dma)(struct usb_hcd * , struct urb * ) ;
   void (*endpoint_disable)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   void (*endpoint_reset)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*hub_status_data)(struct usb_hcd * , char * ) ;
   int (*hub_control)(struct usb_hcd * , u16 , u16 , u16 , char * , u16 ) ;
   int (*bus_suspend)(struct usb_hcd * ) ;
   int (*bus_resume)(struct usb_hcd * ) ;
   int (*start_port_reset)(struct usb_hcd * , unsigned int ) ;
   void (*relinquish_port)(struct usb_hcd * , int ) ;
   int (*port_handed_over)(struct usb_hcd * , int ) ;
   void (*clear_tt_buffer_complete)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*alloc_dev)(struct usb_hcd * , struct usb_device * ) ;
   void (*free_dev)(struct usb_hcd * , struct usb_device * ) ;
   int (*alloc_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                        unsigned int , unsigned int , gfp_t ) ;
   int (*free_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                       unsigned int , gfp_t ) ;
   int (*add_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*drop_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*check_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   void (*reset_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   int (*address_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*enable_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_hub_device)(struct usb_hcd * , struct usb_device * , struct usb_tt * ,
                            gfp_t ) ;
   int (*reset_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*set_usb2_hw_lpm)(struct usb_hcd * , struct usb_device * , int ) ;
   int (*enable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*disable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*find_raw_port_number)(struct usb_hcd * , int ) ;
   int (*port_power)(struct usb_hcd * , int , bool ) ;
};
struct __anonstruct_hs_255 {
   __u8 DeviceRemovable[4U] ;
   __u8 PortPwrCtrlMask[4U] ;
};
struct __anonstruct_ss_256 {
   __u8 bHubHdrDecLat ;
   __le16 wHubDelay ;
   __le16 DeviceRemovable ;
};
union __anonunion_u_254 {
   struct __anonstruct_hs_255 hs ;
   struct __anonstruct_ss_256 ss ;
};
struct usb_hub_descriptor {
   __u8 bDescLength ;
   __u8 bDescriptorType ;
   __u8 bNbrPorts ;
   __le16 wHubCharacteristics ;
   __u8 bPwrOn2PwrGood ;
   __u8 bHubContrCurrent ;
   union __anonunion_u_254 u ;
};
struct usb_tt {
   struct usb_device *hub ;
   int multi ;
   unsigned int think_time ;
   void *hcpriv ;
   spinlock_t lock ;
   struct list_head clear_list ;
   struct work_struct clear_work ;
};
typedef __u32 __hc32;
typedef __u16 __hc16;
struct td;
struct ed {
   __hc32 hwINFO ;
   __hc32 hwTailP ;
   __hc32 hwHeadP ;
   __hc32 hwNextED ;
   dma_addr_t dma ;
   struct td *dummy ;
   struct ed *ed_next ;
   struct ed *ed_prev ;
   struct list_head td_list ;
   struct list_head in_use_list ;
   u8 state ;
   u8 type ;
   u8 branch ;
   u16 interval ;
   u16 load ;
   u16 last_iso ;
   u16 tick ;
   unsigned int takeback_wdh_cnt ;
   struct td *pending_td ;
};
struct td {
   __hc32 hwINFO ;
   __hc32 hwCBP ;
   __hc32 hwNextTD ;
   __hc32 hwBE ;
   __hc16 hwPSW[2U] ;
   __u8 index ;
   struct ed *ed ;
   struct td *td_hash ;
   struct td *next_dl_td ;
   struct urb *urb ;
   dma_addr_t td_dma ;
   dma_addr_t data_dma ;
   struct list_head td_list ;
};
struct ohci_hcca {
   __hc32 int_table[32U] ;
   __hc32 frame_no ;
   __hc32 done_head ;
   u8 reserved_for_hc[116U] ;
   u8 what[4U] ;
};
struct ohci_roothub_regs {
   __hc32 a ;
   __hc32 b ;
   __hc32 status ;
   __hc32 portstatus[15U] ;
};
struct ohci_regs {
   __hc32 revision ;
   __hc32 control ;
   __hc32 cmdstatus ;
   __hc32 intrstatus ;
   __hc32 intrenable ;
   __hc32 intrdisable ;
   __hc32 hcca ;
   __hc32 ed_periodcurrent ;
   __hc32 ed_controlhead ;
   __hc32 ed_controlcurrent ;
   __hc32 ed_bulkhead ;
   __hc32 ed_bulkcurrent ;
   __hc32 donehead ;
   __hc32 fminterval ;
   __hc32 fmremaining ;
   __hc32 fmnumber ;
   __hc32 periodicstart ;
   __hc32 lsthresh ;
   struct ohci_roothub_regs roothub ;
};
struct urb_priv {
   struct ed *ed ;
   u16 length ;
   u16 td_cnt ;
   struct list_head pending ;
   struct td *td[0U] ;
};
typedef struct urb_priv urb_priv_t;
enum ohci_rh_state {
    OHCI_RH_HALTED = 0,
    OHCI_RH_SUSPENDED = 1,
    OHCI_RH_RUNNING = 2
} ;
struct ohci_hcd {
   spinlock_t lock ;
   struct ohci_regs *regs ;
   struct ohci_hcca *hcca ;
   dma_addr_t hcca_dma ;
   struct ed *ed_rm_list ;
   struct ed *ed_bulktail ;
   struct ed *ed_controltail ;
   struct ed *periodic[32U] ;
   void (*start_hnp)(struct ohci_hcd * ) ;
   struct dma_pool *td_cache ;
   struct dma_pool *ed_cache ;
   struct td *td_hash[64U] ;
   struct td *dl_start ;
   struct td *dl_end ;
   struct list_head pending ;
   struct list_head eds_in_use ;
   enum ohci_rh_state rh_state ;
   int num_ports ;
   int load[32U] ;
   u32 hc_control ;
   unsigned long next_statechange ;
   u32 fminterval ;
   unsigned char autostop : 1 ;
   unsigned char working : 1 ;
   unsigned char restart_work : 1 ;
   unsigned long flags ;
   unsigned int prev_frame_no ;
   unsigned int wdh_cnt ;
   unsigned int prev_wdh_cnt ;
   u32 prev_donehead ;
   struct timer_list io_watchdog ;
   struct work_struct nec_work ;
   struct dentry *debug_dir ;
   struct dentry *debug_async ;
   struct dentry *debug_periodic ;
   struct dentry *debug_registers ;
   unsigned long priv[0U] ;
};
struct ohci_driver_overrides {
   char const *product_desc ;
   size_t extra_priv_size ;
   int (*reset)(struct usb_hcd * ) ;
};
struct debug_buffer {
   ssize_t (*fill_func)(struct debug_buffer * ) ;
   struct ohci_hcd *ohci ;
   struct mutex mutex ;
   size_t count ;
   char *page ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
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
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern int printk(char const * , ...) ;
extern void __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
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
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
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
__inline static void ldv_spin_lock_irq_8(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_11(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.pprev != (unsigned long )((struct hlist_node ** )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_27(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_28(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void set_timer_slack(struct timer_list * , int ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_24(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
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
extern unsigned long get_zeroed_page(gfp_t ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern long schedule_timeout_uninterruptible(long ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
struct urb *ohci_hc_driver_group0 ;
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct timer_list *ldv_timer_list_1_1 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
int ldv_state_variable_2 ;
int ldv_timer_1_1 ;
struct timer_list *ldv_timer_list_1_2 ;
struct file *debug_async_fops_group2 ;
struct file *debug_periodic_fops_group2 ;
struct inode *debug_periodic_fops_group1 ;
struct inode *debug_registers_fops_group1 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_1_0 ;
struct usb_hcd *ohci_hc_driver_group1 ;
struct file *debug_registers_fops_group2 ;
int ldv_state_variable_3 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
struct inode *debug_async_fops_group1 ;
void timer_init_1(void) ;
void ldv_initialize_hc_driver_2(void) ;
void ldv_file_operations_3(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(void) ;
void ldv_file_operations_5(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void ldv_file_operations_4(void) ;
__inline static bool device_may_wakeup(struct device *dev )
{
  {
  return ((bool )((unsigned int )*((unsigned char *)dev + 524UL) != 0U && (unsigned long )dev->power.wakeup != (unsigned long )((struct wakeup_source *)0)));
}
}
extern void device_set_wakeup_capable(struct device * , bool ) ;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
void *ldv_dma_pool_alloc_25(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_26(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
extern void synchronize_irq(unsigned int ) ;
extern void free_irq(unsigned int , void * ) ;
extern loff_t default_llseek(struct file * , loff_t , int ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern int usb_disabled(void) ;
__inline static __u16 usb_maxpacket(struct usb_device *udev , int pipe , int is_out )
{
  struct usb_host_endpoint *ep ;
  unsigned int epnum ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  int tmp___1 ;
  {
  epnum = (unsigned int )(pipe >> 15) & 15U;
  if (is_out != 0) {
    __ret_warn_on = (pipe & 128) != 0;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/usb.h", 1846);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    ep = udev->ep_out[epnum];
  } else {
    __ret_warn_on___0 = (pipe & 128) == 0;
    tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/usb.h", 1849);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    ep = udev->ep_in[epnum];
  }
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (0U);
  } else {
  }
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  return ((__u16 )tmp___1);
}
}
extern struct dentry *usb_debug_root ;
extern int usb_hcd_link_urb_to_ep(struct usb_hcd * , struct urb * ) ;
extern int usb_hcd_check_unlink_urb(struct usb_hcd * , struct urb * , int ) ;
extern void usb_hcd_unlink_urb_from_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hcd_giveback_urb(struct usb_hcd * , struct urb * , int ) ;
extern void usb_hc_died(struct usb_hcd * ) ;
extern void usb_hcd_poll_rh_status(struct usb_hcd * ) ;
extern long usb_calc_bus_time(int , int , int , int ) ;
extern void usb_root_hub_lost_power(struct usb_device * ) ;
extern void usb_hcd_resume_root_hub(struct usb_hcd * ) ;
extern unsigned long usb_hcds_loaded ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
static char const hcd_name[9U] =
  { 'o', 'h', 'c', 'i',
        '_', 'h', 'c', 'd',
        '\000'};
static int const cc_to_error[16U] =
  { 0, -84, -71, -84,
        -32, -62, -71, -71,
        -75, -121, -5, -5,
        -70, -63, -114, -114};
__inline static int quirk_nec(struct ohci_hcd *ohci )
{
  {
  return ((int )ohci->flags & 64);
}
}
__inline static int quirk_zfmicro(struct ohci_hcd *ohci )
{
  {
  return ((int )ohci->flags & 32);
}
}
__inline static int quirk_amdiso(struct ohci_hcd *ohci )
{
  {
  return ((int )ohci->flags & 512);
}
}
__inline static int quirk_amdprefetch(struct ohci_hcd *ohci )
{
  {
  return ((int )ohci->flags & 1024);
}
}
__inline static struct ohci_hcd *hcd_to_ohci(struct usb_hcd *hcd )
{
  {
  return ((struct ohci_hcd *)(& hcd->hcd_priv));
}
}
__inline static struct usb_hcd *ohci_to_hcd(struct ohci_hcd const *ohci )
{
  unsigned long const (*__mptr)[0U] ;
  {
  __mptr = (unsigned long const *)ohci;
  return ((struct usb_hcd *)__mptr + 0xfffffffffffffc38UL);
}
}
__inline static unsigned int _ohci_readl(struct ohci_hcd const *ohci , __hc32 *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)regs);
  return (tmp);
}
}
__inline static void _ohci_writel(struct ohci_hcd const *ohci , unsigned int const val ,
                                  __hc32 *regs )
{
  {
  writel(val, (void volatile *)regs);
  return;
}
}
__inline static __hc16 cpu_to_hc16(struct ohci_hcd const *ohci , u16 const x )
{
  {
  return ((__hc16 )x);
}
}
__inline static __hc32 cpu_to_hc32(struct ohci_hcd const *ohci , u32 const x )
{
  {
  return ((__hc32 )x);
}
}
__inline static u16 hc16_to_cpup(struct ohci_hcd const *ohci , __hc16 const *x )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup(x);
  return (tmp);
}
}
__inline static u32 hc32_to_cpu(struct ohci_hcd const *ohci , __hc32 const x )
{
  {
  return ((u32 )x);
}
}
__inline static u32 hc32_to_cpup(struct ohci_hcd const *ohci , __hc32 const *x )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup(x);
  return (tmp);
}
}
__inline static u16 ohci_frame_no(struct ohci_hcd const *ohci )
{
  u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)(& (ohci->hcca)->frame_no));
  return ((u16 )tmp);
}
}
__inline static __hc16 *ohci_hwPSWp(struct ohci_hcd const *ohci , struct td const *td ,
                                    int index )
{
  {
  return ((__hc16 *)(& td->hwPSW) + (unsigned long )index);
}
}
__inline static u16 ohci_hwPSW(struct ohci_hcd const *ohci , struct td const *td ,
                               int index )
{
  __hc16 *tmp ;
  u16 tmp___0 ;
  {
  tmp = ohci_hwPSWp(ohci, td, index);
  tmp___0 = hc16_to_cpup(ohci, (__hc16 const *)tmp);
  return (tmp___0);
}
}
__inline static void periodic_reinit(struct ohci_hcd *ohci )
{
  u32 fi ;
  u32 fit ;
  unsigned int tmp ;
  {
  fi = ohci->fminterval & 16383U;
  tmp = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fminterval);
  fit = tmp & 2147483648U;
  _ohci_writel((struct ohci_hcd const *)ohci, (fit ^ 2147483648U) | ohci->fminterval,
               & (ohci->regs)->fminterval);
  _ohci_writel((struct ohci_hcd const *)ohci, (fi * 9U) / 10U & 16383U, & (ohci->regs)->periodicstart);
  return;
}
}
__inline static u32 roothub_a(struct ohci_hcd *hc )
{
  u32 temp ;
  unsigned int tmp ;
  {
  tmp = _ohci_readl((struct ohci_hcd const *)hc, & (hc->regs)->roothub.a);
  temp = tmp;
  if (temp == 4294967295U) {
    hc->rh_state = 0;
  } else
  if ((int )hc->flags & 1) {
    goto ldv_35566;
    ldv_35565:
    temp = _ohci_readl((struct ohci_hcd const *)hc, & (hc->regs)->roothub.a);
    ldv_35566: ;
    if ((temp & 4228898816U) != 0U) {
      goto ldv_35565;
    } else {
    }
  } else {
  }
  return (temp);
}
}
__inline static u32 roothub_b(struct ohci_hcd *hc )
{
  unsigned int tmp ;
  {
  tmp = _ohci_readl((struct ohci_hcd const *)hc, & (hc->regs)->roothub.b);
  return (tmp);
}
}
__inline static u32 roothub_status(struct ohci_hcd *hc )
{
  unsigned int tmp ;
  {
  tmp = _ohci_readl((struct ohci_hcd const *)hc, & (hc->regs)->roothub.status);
  return (tmp);
}
}
__inline static u32 roothub_portstatus(struct ohci_hcd *hc , int i )
{
  u32 temp ;
  unsigned int tmp ;
  {
  tmp = _ohci_readl((struct ohci_hcd const *)hc, (__hc32 *)(& (hc->regs)->roothub.portstatus) + (unsigned long )i);
  temp = tmp;
  if (temp == 4294967295U) {
    hc->rh_state = 0;
  } else
  if ((int )hc->flags & 1) {
    goto ldv_35581;
    ldv_35580:
    temp = _ohci_readl((struct ohci_hcd const *)hc, (__hc32 *)(& (hc->regs)->roothub.portstatus) + (unsigned long )i);
    ldv_35581: ;
    if ((temp & 4292934880U) != 0U) {
      goto ldv_35580;
    } else {
    }
  } else {
  }
  return (temp);
}
}
void ohci_init_driver(struct hc_driver *drv , struct ohci_driver_overrides const *over ) ;
int ohci_restart(struct ohci_hcd *ohci ) ;
int ohci_setup(struct usb_hcd *hcd ) ;
int ohci_suspend(struct usb_hcd *hcd , bool do_wakeup ) ;
int ohci_resume(struct usb_hcd *hcd , bool hibernated ) ;
int ohci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength ) ;
int ohci_hub_status_data(struct usb_hcd *hcd , char *buf ) ;
extern void usb_amd_dev_put(void) ;
extern void usb_amd_quirk_pll_disable(void) ;
extern void usb_amd_quirk_pll_enable(void) ;
extern void sb800_prefetch(struct device * , int ) ;
static void ohci_dump(struct ohci_hcd *controller ) ;
static void ohci_stop(struct usb_hcd *hcd ) ;
static void io_watchdog_func(unsigned long _ohci ) ;
static void update_done_list(struct ohci_hcd *ohci ) ;
static void ohci_work(struct ohci_hcd *ohci ) ;
static int ohci_rh_suspend(struct ohci_hcd *ohci , int autostop )
{
  int status ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  __hc32 *portstat ;
  int i ;
  unsigned int temp ;
  struct usb_hcd *tmp___9 ;
  unsigned long tmp___10 ;
  {
  status = 0;
  ohci->hc_control = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  switch (ohci->hc_control & 192U) {
  case 64U:
  descriptor.modname = "ohci_hcd";
  descriptor.function = "ohci_rh_suspend";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
  descriptor.format = "resume/suspend?\n";
  descriptor.lineno = 55U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "resume/suspend?\n");
  } else {
  }
  ohci->hc_control = ohci->hc_control & 4294967103U;
  ohci->hc_control = ohci->hc_control;
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  case 0U:
  status = -16;
  descriptor___0.modname = "ohci_hcd";
  descriptor___0.function = "ohci_rh_suspend";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
  descriptor___0.format = "needs reinit!\n";
  descriptor___0.lineno = 63U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "needs reinit!\n");
  } else {
  }
  goto done;
  case 192U: ;
  if ((unsigned int )*((unsigned char *)ohci + 1116UL) == 0U) {
    descriptor___1.modname = "ohci_hcd";
    descriptor___1.function = "ohci_rh_suspend";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___1.format = "already suspended\n";
    descriptor___1.lineno = 67U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "already suspended\n");
    } else {
    }
    goto done;
  } else {
  }
  }
  descriptor___2.modname = "ohci_hcd";
  descriptor___2.function = "ohci_rh_suspend";
  descriptor___2.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
  descriptor___2.format = "%s root hub\n";
  descriptor___2.lineno = 72U;
  descriptor___2.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "%s root hub\n", autostop != 0 ? (char *)"auto-stop" : (char *)"suspend");
  } else {
  }
  if (autostop == 0 && (ohci->hc_control & 60U) != 0U) {
    ohci->hc_control = ohci->hc_control & 4294967235U;
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    ohci->hc_control = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
    _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->intrstatus);
    descriptor___3.modname = "ohci_hcd";
    descriptor___3.function = "ohci_rh_suspend";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___3.format = "stopping schedules ...\n";
    descriptor___3.lineno = 84U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                        "stopping schedules ...\n");
    } else {
    }
    ohci->autostop = 0U;
    spin_unlock_irq(& ohci->lock);
    msleep(8U);
    spin_lock_irq(& ohci->lock);
  } else {
  }
  update_done_list(ohci);
  ohci_work(ohci);
  if ((ohci->flags & 2048UL) != 0UL) {
    portstat = (__hc32 *)(& (ohci->regs)->roothub.portstatus);
    i = 0;
    goto ldv_35668;
    ldv_35667:
    temp = _ohci_readl((struct ohci_hcd const *)ohci, portstat);
    if ((temp & 6U) == 2U) {
      _ohci_writel((struct ohci_hcd const *)ohci, 4U, portstat);
    } else {
    }
    i = i + 1;
    portstat = portstat + 1;
    ldv_35668: ;
    if (ohci->num_ports > i) {
      goto ldv_35667;
    } else {
    }
  } else {
  }
  tmp___9 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  if ((unsigned int )*((unsigned char *)tmp___9->self.root_hub + 1960UL) != 0U || autostop != 0) {
    ohci->hc_control = ohci->hc_control | 1024U;
  } else {
    _ohci_writel((struct ohci_hcd const *)ohci, 72U, & (ohci->regs)->intrdisable);
    ohci->hc_control = ohci->hc_control & 4294966271U;
  }
  ohci->hc_control = ohci->hc_control & 4294967103U;
  ohci->hc_control = ohci->hc_control | 192U;
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if (autostop == 0) {
    tmp___10 = msecs_to_jiffies(5U);
    ohci->next_statechange = tmp___10 + (unsigned long )jiffies;
    ohci->autostop = 0U;
    ohci->rh_state = 1;
  } else {
  }
  done: ;
  return (status);
}
}
__inline static struct ed *find_head(struct ed *ed )
{
  {
  goto ldv_35674;
  ldv_35673:
  ed = ed->ed_prev;
  ldv_35674: ;
  if ((unsigned long )ed->ed_prev != (unsigned long )((struct ed *)0)) {
    goto ldv_35673;
  } else {
  }
  return (ed);
}
}
static int ohci_rh_resume(struct ohci_hcd *ohci )
{
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  u32 temp ;
  u32 enables ;
  int status ;
  int autostopped ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct usb_hcd *tmp___12 ;
  unsigned long tmp___13 ;
  struct ed *tmp___14 ;
  struct ed *tmp___15 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  {
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  hcd = tmp;
  status = -115;
  autostopped = (int )ohci->autostop;
  ohci->autostop = 0U;
  ohci->hc_control = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if ((ohci->hc_control & 316U) != 0U) {
    if ((unsigned int )ohci->rh_state != 2U) {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "ohci_rh_resume";
      descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
      descriptor.format = "BIOS/SMM active, control %03x\n";
      descriptor.lineno = 164U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "BIOS/SMM active, control %03x\n", ohci->hc_control);
      } else {
      }
      status = -16;
    } else {
      descriptor___0.modname = "ohci_hcd";
      descriptor___0.function = "ohci_rh_resume";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
      descriptor___0.format = "duplicate resume\n";
      descriptor___0.lineno = 168U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                          "duplicate resume\n");
      } else {
      }
      status = 0;
    }
  } else {
    switch (ohci->hc_control & 192U) {
    case 192U:
    ohci->hc_control = ohci->hc_control & 4294967043U;
    ohci->hc_control = ohci->hc_control | 64U;
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
    descriptor___1.modname = "ohci_hcd";
    descriptor___1.function = "ohci_rh_resume";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___1.format = "%s root hub\n";
    descriptor___1.lineno = 178U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                        "%s root hub\n", autostopped != 0 ? (char *)"auto-start" : (char *)"resume");
    } else {
    }
    goto ldv_35689;
    case 64U:
    descriptor___2.modname = "ohci_hcd";
    descriptor___2.function = "ohci_rh_resume";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___2.format = "%swakeup root hub\n";
    descriptor___2.lineno = 183U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                        "%swakeup root hub\n", autostopped != 0 ? (char *)"auto-" : (char *)"");
    } else {
    }
    goto ldv_35689;
    case 128U:
    descriptor___3.modname = "ohci_hcd";
    descriptor___3.function = "ohci_rh_resume";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___3.format = "snapshot resume? reinit\n";
    descriptor___3.lineno = 187U;
    descriptor___3.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                        "snapshot resume? reinit\n");
    } else {
    }
    status = -16;
    goto ldv_35689;
    default:
    descriptor___4.modname = "ohci_hcd";
    descriptor___4.function = "ohci_rh_resume";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___4.format = "lost power\n";
    descriptor___4.lineno = 191U;
    descriptor___4.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      tmp___10 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___10->self.controller,
                        "lost power\n");
    } else {
    }
    status = -16;
    }
    ldv_35689: ;
  }
  if (status == -16) {
    if (autostopped == 0) {
      spin_unlock_irq(& ohci->lock);
      status = ohci_restart(ohci);
      usb_root_hub_lost_power(hcd->self.root_hub);
      spin_lock_irq(& ohci->lock);
    } else {
    }
    return (status);
  } else {
  }
  if (status != -115) {
    return (status);
  } else {
  }
  if (autostopped != 0) {
    goto skip_resume;
  } else {
  }
  spin_unlock_irq(& ohci->lock);
  msleep(33U);
  temp = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  temp = temp & 192U;
  if (temp != 64U) {
    tmp___12 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_err((struct device const *)tmp___12->self.controller, "controller won\'t resume\n");
    spin_lock_irq(& ohci->lock);
    return (-16);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_controlhead);
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_controlcurrent);
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_bulkhead);
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_bulkcurrent);
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_periodcurrent);
  _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int )ohci->hcca_dma, & (ohci->regs)->hcca);
  periodic_reinit(ohci);
  skip_resume:
  _ohci_writel((struct ohci_hcd const *)ohci, 2147483738U, & (ohci->regs)->intrenable);
  if ((unsigned long )ohci->ed_rm_list != (unsigned long )((struct ed *)0)) {
    _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->intrenable);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 128U, & (ohci->regs)->control);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if (autostopped == 0) {
    msleep(3U);
  } else {
  }
  temp = ohci->hc_control;
  temp = temp & 512U;
  temp = temp | 131U;
  ohci->hc_control = temp;
  _ohci_writel((struct ohci_hcd const *)ohci, temp, & (ohci->regs)->control);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if (autostopped == 0) {
    msleep(10U);
    spin_lock_irq(& ohci->lock);
  } else {
  }
  tmp___13 = msecs_to_jiffies(300U);
  ohci->next_statechange = tmp___13 + (unsigned long )jiffies;
  enables = 0U;
  temp = 0U;
  if ((unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) {
    if ((unsigned long )ohci->ed_controltail != (unsigned long )((struct ed *)0)) {
      tmp___14 = find_head(ohci->ed_controltail);
      _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )tmp___14->dma,
                   & (ohci->regs)->ed_controlhead);
      enables = enables | 16U;
      temp = temp | 2U;
    } else {
    }
    if ((unsigned long )ohci->ed_bulktail != (unsigned long )((struct ed *)0)) {
      tmp___15 = find_head(ohci->ed_bulktail);
      _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )tmp___15->dma,
                   & (ohci->regs)->ed_bulkhead);
      enables = enables | 32U;
      temp = temp | 4U;
    } else {
    }
  } else {
  }
  if (hcd->self.bandwidth_isoc_reqs != 0 || hcd->self.bandwidth_int_reqs != 0) {
    enables = enables | 12U;
  } else {
  }
  if (enables != 0U) {
    descriptor___5.modname = "ohci_hcd";
    descriptor___5.function = "ohci_rh_resume";
    descriptor___5.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor___5.format = "restarting schedules ... %08x\n";
    descriptor___5.lineno = 288U;
    descriptor___5.flags = 0U;
    tmp___17 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___16->self.controller,
                        "restarting schedules ... %08x\n", enables);
    } else {
    }
    ohci->hc_control = ohci->hc_control | enables;
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    if (temp != 0U) {
      _ohci_writel((struct ohci_hcd const *)ohci, temp, & (ohci->regs)->cmdstatus);
    } else {
    }
    _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  } else {
  }
  ohci->rh_state = 2;
  return (0);
}
}
static int ohci_bus_suspend(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int rc ;
  long tmp___0 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  spin_lock_irq(& ohci->lock);
  tmp___0 = ldv__builtin_expect((hcd->flags & 1UL) == 0UL, 0L);
  if (tmp___0 != 0L) {
    rc = -108;
  } else {
    rc = ohci_rh_suspend(ohci, 0);
  }
  spin_unlock_irq(& ohci->lock);
  if (rc == 0) {
    ldv_del_timer_sync_24(& ohci->io_watchdog);
  } else {
  }
  return (rc);
}
}
static int ohci_bus_resume(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int rc ;
  long tmp___0 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  if ((long )((unsigned long )jiffies - ohci->next_statechange) < 0L) {
    msleep(5U);
  } else {
  }
  spin_lock_irq(& ohci->lock);
  tmp___0 = ldv__builtin_expect((hcd->flags & 1UL) == 0UL, 0L);
  if (tmp___0 != 0L) {
    rc = -108;
  } else {
    rc = ohci_rh_resume(ohci);
  }
  spin_unlock_irq(& ohci->lock);
  if (rc == 0) {
    usb_hcd_poll_rh_status(hcd);
  } else {
  }
  return (rc);
}
}
static int ohci_root_hub_state_changes(struct ohci_hcd *ohci , int changed , int any_connected ,
                                       int rhsc_status )
{
  int poll_rh ;
  int rhsc_enable ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  {
  poll_rh = 1;
  tmp = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->intrenable);
  rhsc_enable = (int )tmp & 64;
  switch (ohci->hc_control & 192U) {
  case 128U: ;
  if ((rhsc_enable == 0 && rhsc_status == 0) && changed == 0) {
    rhsc_enable = 64;
    _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )rhsc_enable,
                 & (ohci->regs)->intrenable);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ohci + 1116UL) == 0U) {
    if (any_connected != 0) {
      goto _L;
    } else {
      tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      tmp___1 = device_may_wakeup(& (tmp___0->self.root_hub)->dev);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        _L:
        if (rhsc_enable != 0) {
          poll_rh = 0;
        } else {
        }
      } else {
        ohci->autostop = 1U;
        ohci->next_statechange = (unsigned long )jiffies + 250UL;
      }
    }
  } else
  if (changed != 0 || any_connected != 0) {
    ohci->autostop = 0U;
    tmp___3 = msecs_to_jiffies(300U);
    ohci->next_statechange = tmp___3 + (unsigned long )jiffies;
  } else
  if (((long )((unsigned long )jiffies - ohci->next_statechange) >= 0L && (unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) && (ohci->hc_control & 60U) == 0U) {
    ohci_rh_suspend(ohci, 1);
    if (rhsc_enable != 0) {
      poll_rh = 0;
    } else {
    }
  } else {
  }
  goto ldv_35729;
  case 192U: ;
  case 64U: ;
  if (changed != 0) {
    if ((unsigned int )*((unsigned char *)ohci + 1116UL) != 0U) {
      ohci_rh_resume(ohci);
    } else {
      tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      usb_hcd_resume_root_hub(tmp___4);
    }
  } else
  if ((unsigned int )*((unsigned char *)ohci + 1116UL) == 0U) {
    tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    if ((unsigned int )*((unsigned char *)tmp___5->self.root_hub + 1960UL) == 0U) {
      poll_rh = 0;
    } else {
      goto _L___0;
    }
  } else {
    _L___0:
    if (rhsc_enable == 0 && rhsc_status == 0) {
      rhsc_enable = 64;
      _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )rhsc_enable,
                   & (ohci->regs)->intrenable);
    } else {
    }
    if (rhsc_enable != 0) {
      poll_rh = 0;
    } else {
    }
  }
  goto ldv_35729;
  }
  ldv_35729: ;
  return (poll_rh);
}
}
int ohci_hub_status_data(struct usb_hcd *hcd , char *buf )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int i ;
  int changed ;
  int length ;
  int any_connected ;
  int rhsc_status ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  struct usb_hcd *tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  unsigned int tmp___4 ;
  u32 status ;
  u32 tmp___5 ;
  int tmp___6 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  changed = 0;
  length = 1;
  any_connected = 0;
  ldv_spin_lock();
  if ((hcd->flags & 1UL) == 0UL) {
    goto done;
  } else {
  }
  if ((int )ohci->flags & 1) {
    tmp___2 = roothub_a(ohci);
    if ((tmp___2 & 255U) > 15U) {
      tmp___0 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->roothub.a);
      tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      dev_warn((struct device const *)tmp___1->self.controller, "bogus NDP, rereads as NDP=%d\n",
               tmp___0 & 255U);
      goto done;
    } else {
    }
  } else {
  }
  tmp___3 = roothub_status(ohci);
  if ((tmp___3 & 196608U) != 0U) {
    changed = 1;
    *buf = 1;
  } else {
    *buf = 0;
  }
  if (ohci->num_ports > 7) {
    *(buf + 1UL) = 0;
    length = length + 1;
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 64U, & (ohci->regs)->intrstatus);
  tmp___4 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->intrstatus);
  rhsc_status = (int )tmp___4 & 64;
  i = 0;
  goto ldv_35746;
  ldv_35745:
  tmp___5 = roothub_portstatus(ohci, i);
  status = tmp___5;
  any_connected = (int )((status & 1U) | (u32 )any_connected);
  if ((status & 2031616U) != 0U) {
    changed = 1;
    if (i <= 6) {
      *buf = (int )*buf | (int )((char )(1 << (i + 1)));
    } else {
      *(buf + 1UL) = (int )*(buf + 1UL) | (int )((char )(1 << (i + -7)));
    }
  } else {
  }
  i = i + 1;
  ldv_35746: ;
  if (ohci->num_ports > i) {
    goto ldv_35745;
  } else {
  }
  tmp___6 = ohci_root_hub_state_changes(ohci, changed, any_connected, rhsc_status);
  if (tmp___6 != 0) {
    set_bit(2L, (unsigned long volatile *)(& hcd->flags));
  } else {
    clear_bit(2L, (unsigned long volatile *)(& hcd->flags));
  }
  done:
  spin_unlock_irqrestore(& ohci->lock, flags);
  return (changed != 0 ? length : 0);
}
}
static char const __kstrtab_ohci_hub_status_data[21U] =
  { 'o', 'h', 'c', 'i',
        '_', 'h', 'u', 'b',
        '_', 's', 't', 'a',
        't', 'u', 's', '_',
        'd', 'a', 't', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_ohci_hub_status_data ;
struct kernel_symbol const __ksymtab_ohci_hub_status_data = {(unsigned long )(& ohci_hub_status_data), (char const *)(& __kstrtab_ohci_hub_status_data)};
static void ohci_hub_descriptor(struct ohci_hcd *ohci , struct usb_hub_descriptor *desc )
{
  u32 rh ;
  u32 tmp ;
  u16 temp ;
  {
  tmp = roothub_a(ohci);
  rh = tmp;
  desc->bDescriptorType = 41U;
  desc->bPwrOn2PwrGood = (__u8 )(rh >> 24);
  desc->bHubContrCurrent = 0U;
  desc->bNbrPorts = (__u8 )ohci->num_ports;
  temp = (unsigned int )((u16 )(ohci->num_ports / 8)) + 1U;
  desc->bDescLength = (unsigned int )((__u8 )temp) * 2U + 7U;
  temp = 0U;
  if ((rh & 512U) != 0U) {
    temp = (u16 )((unsigned int )temp | 2U);
  } else {
  }
  if ((rh & 256U) != 0U) {
    temp = (u16 )((unsigned int )temp | 1U);
  } else {
  }
  if ((rh & 4096U) != 0U) {
    temp = (u16 )((unsigned int )temp | 16U);
  } else
  if ((rh & 2048U) != 0U) {
    temp = (u16 )((unsigned int )temp | 8U);
  } else {
  }
  desc->wHubCharacteristics = temp;
  rh = roothub_b(ohci);
  memset((void *)(& desc->u.hs.DeviceRemovable), 255, 4UL);
  desc->u.hs.DeviceRemovable[0] = (__u8 )rh;
  if (ohci->num_ports > 7) {
    desc->u.hs.DeviceRemovable[1] = (__u8 )((rh & 65535U) >> 8);
    desc->u.hs.DeviceRemovable[2] = 255U;
  } else {
    desc->u.hs.DeviceRemovable[1] = 255U;
  }
  return;
}
}
static int ohci_start_port_reset(struct usb_hcd *hcd , unsigned int port )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  u32 status ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  if (port == 0U) {
    return (-22);
  } else {
  }
  port = port - 1U;
  status = _ohci_readl((struct ohci_hcd const *)ohci, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )port);
  if ((status & 1U) == 0U) {
    return (-19);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 16U, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )port);
  return (0);
}
}
__inline static int root_port_reset(struct ohci_hcd *ohci , unsigned int port )
{
  __hc32 *portstat ;
  u32 temp ;
  u16 now ;
  unsigned int tmp ;
  u16 reset_done ;
  int limit_1 ;
  int limit_2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  {
  portstat = (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )port;
  temp = 0U;
  tmp = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fmnumber);
  now = (u16 )tmp;
  reset_done = (unsigned int )now + 50U;
  limit_1 = 5;
  ldv_35784:
  limit_2 = 20;
  goto ldv_35780;
  ldv_35779:
  temp = _ohci_readl((struct ohci_hcd const *)ohci, portstat);
  if (temp == 4294967295U) {
    return (-108);
  } else {
  }
  if ((temp & 16U) == 0U) {
    goto ldv_35778;
  } else {
  }
  __const_udelay(2147500UL);
  ldv_35780:
  limit_2 = limit_2 - 1;
  if (limit_2 >= 0) {
    goto ldv_35779;
  } else {
  }
  ldv_35778: ;
  if (limit_2 < 0) {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "root_port_reset";
    descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor.format = "port[%d] reset timeout, stat %08x\n";
    descriptor.lineno = 648U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "port[%d] reset timeout, stat %08x\n", port, temp);
    } else {
    }
    goto ldv_35783;
  } else {
  }
  if ((temp & 1U) == 0U) {
    goto ldv_35783;
  } else {
  }
  if ((temp & 1048576U) != 0U) {
    _ohci_writel((struct ohci_hcd const *)ohci, 1048576U, portstat);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 16U, portstat);
  msleep(10U);
  tmp___2 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fmnumber);
  now = (u16 )tmp___2;
  if ((int )((short )((int )now - (int )reset_done)) < 0) {
    limit_1 = limit_1 - 1;
    if (limit_1 >= 0) {
      goto ldv_35784;
    } else {
      goto ldv_35783;
    }
  } else {
  }
  ldv_35783: ;
  return (0);
}
}
int ohci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int ports ;
  u32 temp ;
  int retval ;
  long tmp___0 ;
  u32 tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ports = ohci->num_ports;
  retval = 0;
  tmp___0 = ldv__builtin_expect((hcd->flags & 1UL) == 0UL, 0L);
  if (tmp___0 != 0L) {
    return (-108);
  } else {
  }
  switch ((int )typeReq) {
  case 8193: ;
  switch ((int )wValue) {
  case 1:
  _ohci_writel((struct ohci_hcd const *)ohci, 131072U, & (ohci->regs)->roothub.status);
  case 0: ;
  goto ldv_35800;
  default: ;
  goto error;
  }
  ldv_35800: ;
  goto ldv_35803;
  case 8961: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  switch ((int )wValue) {
  case 1:
  temp = 1U;
  goto ldv_35806;
  case 17:
  temp = 131072U;
  goto ldv_35806;
  case 2:
  temp = 8U;
  goto ldv_35806;
  case 18:
  temp = 262144U;
  goto ldv_35806;
  case 8:
  temp = 512U;
  goto ldv_35806;
  case 16:
  temp = 65536U;
  goto ldv_35806;
  case 19:
  temp = 524288U;
  goto ldv_35806;
  case 20:
  temp = 1048576U;
  goto ldv_35806;
  default: ;
  goto error;
  }
  ldv_35806:
  _ohci_writel((struct ohci_hcd const *)ohci, temp, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )wIndex);
  goto ldv_35803;
  case 40966:
  ohci_hub_descriptor(ohci, (struct usb_hub_descriptor *)buf);
  goto ldv_35803;
  case 40960:
  tmp___1 = roothub_status(ohci);
  temp = tmp___1 & 2147450879U;
  put_unaligned_le32(temp, (void *)buf);
  goto ldv_35803;
  case 41728: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = roothub_portstatus(ohci, (int )wIndex);
  put_unaligned_le32(temp, (void *)buf);
  if ((unsigned int )*((u16 *)buf + 2U) != 0U) {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_hub_control";
    descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-hub.c";
    descriptor.format = "%s roothub.portstatus [%d] = 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\n";
    descriptor.lineno = 750U;
    descriptor.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                        "%s roothub.portstatus [%d] = 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\n",
                        (char *)"GetStatus", (int )wIndex, temp, (temp & 1048576U) != 0U ? (char *)" PRSC" : (char *)"",
                        (temp & 524288U) != 0U ? (char *)" OCIC" : (char *)"", (temp & 262144U) != 0U ? (char *)" PSSC" : (char *)"",
                        (temp & 131072U) != 0U ? (char *)" PESC" : (char *)"", (temp & 65536U) != 0U ? (char *)" CSC" : (char *)"",
                        (temp & 512U) != 0U ? (char *)" LSDA" : (char *)"", (temp & 256U) != 0U ? (char *)" PPS" : (char *)"",
                        (temp & 16U) != 0U ? (char *)" PRS" : (char *)"", (temp & 8U) != 0U ? (char *)" POCI" : (char *)"",
                        (temp & 4U) != 0U ? (char *)" PSS" : (char *)"", (temp & 2U) != 0U ? (char *)" PES" : (char *)"",
                        (int )temp & 1 ? (char *)" CCS" : (char *)"");
    } else {
    }
  } else {
  }
  goto ldv_35803;
  case 8195: ;
  switch ((int )wValue) {
  case 1: ;
  case 0: ;
  goto ldv_35823;
  default: ;
  goto error;
  }
  ldv_35823: ;
  goto ldv_35803;
  case 8963: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  switch ((int )wValue) {
  case 2: ;
  if ((int )hcd->self.otg_port == (int )wIndex + 1 && (unsigned int )*((unsigned char *)hcd + 27UL) != 0U) {
    (*(ohci->start_hnp))(ohci);
  } else {
    _ohci_writel((struct ohci_hcd const *)ohci, 4U, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )wIndex);
  }
  goto ldv_35827;
  case 8:
  _ohci_writel((struct ohci_hcd const *)ohci, 256U, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )wIndex);
  goto ldv_35827;
  case 4:
  retval = root_port_reset(ohci, (unsigned int )wIndex);
  goto ldv_35827;
  default: ;
  goto error;
  }
  ldv_35827: ;
  goto ldv_35803;
  default: ;
  error:
  retval = -32;
  }
  ldv_35803: ;
  return (retval);
}
}
static char const __kstrtab_ohci_hub_control[17U] =
  { 'o', 'h', 'c', 'i',
        '_', 'h', 'u', 'b',
        '_', 'c', 'o', 'n',
        't', 'r', 'o', 'l',
        '\000'};
struct kernel_symbol const __ksymtab_ohci_hub_control ;
struct kernel_symbol const __ksymtab_ohci_hub_control = {(unsigned long )(& ohci_hub_control), (char const *)(& __kstrtab_ohci_hub_control)};
static void ohci_dump_intr_mask(struct ohci_hcd *ohci , char *label , u32 mask , char **next ,
                                unsigned int *size )
{
  unsigned int s_len ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )next != (unsigned long )((char **)0)) {
    tmp = scnprintf(*next, (size_t )*size, "%s 0x%08x%s%s%s%s%s%s%s%s%s\n", label,
                    mask, (int )mask < 0 ? (char *)" MIE" : (char *)"", (mask & 1073741824U) != 0U ? (char *)" OC" : (char *)"",
                    (mask & 64U) != 0U ? (char *)" RHSC" : (char *)"", (mask & 32U) != 0U ? (char *)" FNO" : (char *)"",
                    (mask & 16U) != 0U ? (char *)" UE" : (char *)"", (mask & 8U) != 0U ? (char *)" RD" : (char *)"",
                    (mask & 4U) != 0U ? (char *)" SF" : (char *)"", (mask & 2U) != 0U ? (char *)" WDH" : (char *)"",
                    (int )mask & 1 ? (char *)" SO" : (char *)"");
    s_len = (unsigned int )tmp;
    *size = *size - s_len;
    *next = *next + (unsigned long )s_len;
  } else {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_dump_intr_mask";
    descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor.format = "%s 0x%08x%s%s%s%s%s%s%s%s%s\n";
    descriptor.lineno = 60U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "%s 0x%08x%s%s%s%s%s%s%s%s%s\n", label, mask, (int )mask < 0 ? (char *)" MIE" : (char *)"",
                        (mask & 1073741824U) != 0U ? (char *)" OC" : (char *)"", (mask & 64U) != 0U ? (char *)" RHSC" : (char *)"",
                        (mask & 32U) != 0U ? (char *)" FNO" : (char *)"", (mask & 16U) != 0U ? (char *)" UE" : (char *)"",
                        (mask & 8U) != 0U ? (char *)" RD" : (char *)"", (mask & 4U) != 0U ? (char *)" SF" : (char *)"",
                        (mask & 2U) != 0U ? (char *)" WDH" : (char *)"", (int )mask & 1 ? (char *)" SO" : (char *)"");
    } else {
    }
  }
  return;
}
}
static void maybe_print_eds(struct ohci_hcd *ohci , char *label , u32 value , char **next ,
                            unsigned int *size )
{
  unsigned int s_len ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  if (value != 0U) {
    if ((unsigned long )next != (unsigned long )((char **)0)) {
      tmp = scnprintf(*next, (size_t )*size, "%s %08x\n", label, value);
      s_len = (unsigned int )tmp;
      *size = *size - s_len;
      *next = *next + (unsigned long )s_len;
    } else {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "maybe_print_eds";
      descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
      descriptor.format = "%s %08x\n";
      descriptor.lineno = 71U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "%s %08x\n", label, value);
      } else {
      }
    }
  } else {
  }
  return;
}
}
static char *hcfs2string(int state )
{
  {
  switch (state) {
  case 0: ;
  return ((char *)"reset");
  case 64: ;
  return ((char *)"resume");
  case 128: ;
  return ((char *)"operational");
  case 192: ;
  return ((char *)"suspend");
  }
  return ((char *)"?");
}
}
static char const *rh_state_string(struct ohci_hcd *ohci )
{
  {
  switch ((unsigned int )ohci->rh_state) {
  case 0U: ;
  return ("halted");
  case 1U: ;
  return ("suspended");
  case 2U: ;
  return ("running");
  }
  return ("?");
}
}
static void ohci_dump_status(struct ohci_hcd *controller , char **next , unsigned int *size )
{
  struct ohci_regs *regs ;
  u32 temp ;
  unsigned int tmp ;
  unsigned int s_len ;
  char const *tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  char const *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  unsigned int s_len___0 ;
  char *tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___0 ;
  char *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  unsigned int s_len___1 ;
  int tmp___10 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  {
  regs = controller->regs;
  tmp = _ohci_readl((struct ohci_hcd const *)controller, & regs->revision);
  temp = tmp & 255U;
  if ((unsigned long )next != (unsigned long )((char **)0)) {
    tmp___0 = rh_state_string(controller);
    tmp___1 = scnprintf(*next, (size_t )*size, "OHCI %d.%d, %s legacy support registers, rh state %s\n",
                        (temp >> 4) & 3U, temp & 15U, (temp & 256U) != 0U ? (char *)"with" : (char *)"NO",
                        tmp___0);
    s_len = (unsigned int )tmp___1;
    *size = *size - s_len;
    *next = *next + (unsigned long )s_len;
  } else {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_dump_status";
    descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor.format = "OHCI %d.%d, %s legacy support registers, rh state %s\n";
    descriptor.lineno = 110U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___2 = rh_state_string(controller);
      tmp___3 = ohci_to_hcd((struct ohci_hcd const *)controller);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "OHCI %d.%d, %s legacy support registers, rh state %s\n",
                        (temp >> 4) & 3U, temp & 15U, (temp & 256U) != 0U ? (char *)"with" : (char *)"NO",
                        tmp___2);
    } else {
    }
  }
  temp = _ohci_readl((struct ohci_hcd const *)controller, & regs->control);
  if ((unsigned long )next != (unsigned long )((char **)0)) {
    tmp___5 = hcfs2string((int )temp & 192);
    tmp___6 = scnprintf(*next, (size_t )*size, "control 0x%03x%s%s%s HCFS=%s%s%s%s%s CBSR=%d\n",
                        temp, (temp & 1024U) != 0U ? (char *)" RWE" : (char *)"",
                        (temp & 512U) != 0U ? (char *)" RWC" : (char *)"", (temp & 256U) != 0U ? (char *)" IR" : (char *)"",
                        tmp___5, (temp & 32U) != 0U ? (char *)" BLE" : (char *)"",
                        (temp & 16U) != 0U ? (char *)" CLE" : (char *)"", (temp & 8U) != 0U ? (char *)" IE" : (char *)"",
                        (temp & 4U) != 0U ? (char *)" PLE" : (char *)"", temp & 3U);
    s_len___0 = (unsigned int )tmp___6;
    *size = *size - s_len___0;
    *next = *next + (unsigned long )s_len___0;
  } else {
    descriptor___0.modname = "ohci_hcd";
    descriptor___0.function = "ohci_dump_status";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor___0.format = "control 0x%03x%s%s%s HCFS=%s%s%s%s%s CBSR=%d\n";
    descriptor___0.lineno = 125U;
    descriptor___0.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___7 = hcfs2string((int )temp & 192);
      tmp___8 = ohci_to_hcd((struct ohci_hcd const *)controller);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___8->self.controller,
                        "control 0x%03x%s%s%s HCFS=%s%s%s%s%s CBSR=%d\n", temp, (temp & 1024U) != 0U ? (char *)" RWE" : (char *)"",
                        (temp & 512U) != 0U ? (char *)" RWC" : (char *)"", (temp & 256U) != 0U ? (char *)" IR" : (char *)"",
                        tmp___7, (temp & 32U) != 0U ? (char *)" BLE" : (char *)"",
                        (temp & 16U) != 0U ? (char *)" CLE" : (char *)"", (temp & 8U) != 0U ? (char *)" IE" : (char *)"",
                        (temp & 4U) != 0U ? (char *)" PLE" : (char *)"", temp & 3U);
    } else {
    }
  }
  temp = _ohci_readl((struct ohci_hcd const *)controller, & regs->cmdstatus);
  if ((unsigned long )next != (unsigned long )((char **)0)) {
    tmp___10 = scnprintf(*next, (size_t )*size, "cmdstatus 0x%05x SOC=%d%s%s%s%s\n",
                         temp, (temp & 196608U) >> 16, (temp & 8U) != 0U ? (char *)" OCR" : (char *)"",
                         (temp & 4U) != 0U ? (char *)" BLF" : (char *)"", (temp & 2U) != 0U ? (char *)" CLF" : (char *)"",
                         (int )temp & 1 ? (char *)" HCR" : (char *)"");
    s_len___1 = (unsigned int )tmp___10;
    *size = *size - s_len___1;
    *next = *next + (unsigned long )s_len___1;
  } else {
    descriptor___1.modname = "ohci_hcd";
    descriptor___1.function = "ohci_dump_status";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor___1.format = "cmdstatus 0x%05x SOC=%d%s%s%s%s\n";
    descriptor___1.lineno = 135U;
    descriptor___1.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = ohci_to_hcd((struct ohci_hcd const *)controller);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___11->self.controller,
                        "cmdstatus 0x%05x SOC=%d%s%s%s%s\n", temp, (temp & 196608U) >> 16,
                        (temp & 8U) != 0U ? (char *)" OCR" : (char *)"", (temp & 4U) != 0U ? (char *)" BLF" : (char *)"",
                        (temp & 2U) != 0U ? (char *)" CLF" : (char *)"", (int )temp & 1 ? (char *)" HCR" : (char *)"");
    } else {
    }
  }
  tmp___13 = _ohci_readl((struct ohci_hcd const *)controller, & regs->intrstatus);
  ohci_dump_intr_mask(controller, (char *)"intrstatus", tmp___13, next, size);
  tmp___14 = _ohci_readl((struct ohci_hcd const *)controller, & regs->intrenable);
  ohci_dump_intr_mask(controller, (char *)"intrenable", tmp___14, next, size);
  tmp___15 = _ohci_readl((struct ohci_hcd const *)controller, & regs->ed_periodcurrent);
  maybe_print_eds(controller, (char *)"ed_periodcurrent", tmp___15, next, size);
  tmp___16 = _ohci_readl((struct ohci_hcd const *)controller, & regs->ed_controlhead);
  maybe_print_eds(controller, (char *)"ed_controlhead", tmp___16, next, size);
  tmp___17 = _ohci_readl((struct ohci_hcd const *)controller, & regs->ed_controlcurrent);
  maybe_print_eds(controller, (char *)"ed_controlcurrent", tmp___17, next, size);
  tmp___18 = _ohci_readl((struct ohci_hcd const *)controller, & regs->ed_bulkhead);
  maybe_print_eds(controller, (char *)"ed_bulkhead", tmp___18, next, size);
  tmp___19 = _ohci_readl((struct ohci_hcd const *)controller, & regs->ed_bulkcurrent);
  maybe_print_eds(controller, (char *)"ed_bulkcurrent", tmp___19, next, size);
  tmp___20 = _ohci_readl((struct ohci_hcd const *)controller, & regs->donehead);
  maybe_print_eds(controller, (char *)"donehead", tmp___20, next, size);
  return;
}
}
static void ohci_dump_roothub(struct ohci_hcd *controller , int verbose , char **next ,
                              unsigned int *size )
{
  u32 temp ;
  u32 i ;
  unsigned int s_len ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  unsigned int s_len___0 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  unsigned int s_len___1 ;
  int tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  unsigned int s_len___2 ;
  int tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  temp = roothub_a(controller);
  if (temp == 4294967295U) {
    return;
  } else {
  }
  if (verbose != 0) {
    if ((unsigned long )next != (unsigned long )((char **)0)) {
      tmp = scnprintf(*next, (size_t )*size, "roothub.a %08x POTPGT=%d%s%s%s%s%s NDP=%d(%d)\n",
                      temp, temp >> 24, (temp & 4096U) != 0U ? (char *)" NOCP" : (char *)"",
                      (temp & 2048U) != 0U ? (char *)" OCPM" : (char *)"", (temp & 1024U) != 0U ? (char *)" DT" : (char *)"",
                      (temp & 512U) != 0U ? (char *)" NPS" : (char *)"", (temp & 256U) != 0U ? (char *)" PSM" : (char *)"",
                      temp & 255U, controller->num_ports);
      s_len = (unsigned int )tmp;
      *size = *size - s_len;
      *next = *next + (unsigned long )s_len;
    } else {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "ohci_dump_roothub";
      descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
      descriptor.format = "roothub.a %08x POTPGT=%d%s%s%s%s%s NDP=%d(%d)\n";
      descriptor.lineno = 212U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = ohci_to_hcd((struct ohci_hcd const *)controller);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "roothub.a %08x POTPGT=%d%s%s%s%s%s NDP=%d(%d)\n", temp,
                          temp >> 24, (temp & 4096U) != 0U ? (char *)" NOCP" : (char *)"",
                          (temp & 2048U) != 0U ? (char *)" OCPM" : (char *)"", (temp & 1024U) != 0U ? (char *)" DT" : (char *)"",
                          (temp & 512U) != 0U ? (char *)" NPS" : (char *)"", (temp & 256U) != 0U ? (char *)" PSM" : (char *)"",
                          temp & 255U, controller->num_ports);
      } else {
      }
    }
    temp = roothub_b(controller);
    if ((unsigned long )next != (unsigned long )((char **)0)) {
      tmp___2 = scnprintf(*next, (size_t )*size, "roothub.b %08x PPCM=%04x DR=%04x\n",
                          temp, temp >> 16, temp & 65535U);
      s_len___0 = (unsigned int )tmp___2;
      *size = *size - s_len___0;
      *next = *next + (unsigned long )s_len___0;
    } else {
      descriptor___0.modname = "ohci_hcd";
      descriptor___0.function = "ohci_dump_roothub";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
      descriptor___0.format = "roothub.b %08x PPCM=%04x DR=%04x\n";
      descriptor___0.lineno = 219U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        tmp___3 = ohci_to_hcd((struct ohci_hcd const *)controller);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                          "roothub.b %08x PPCM=%04x DR=%04x\n", temp, temp >> 16,
                          temp & 65535U);
      } else {
      }
    }
    temp = roothub_status(controller);
    if ((unsigned long )next != (unsigned long )((char **)0)) {
      tmp___5 = scnprintf(*next, (size_t )*size, "roothub.status %08x%s%s%s%s%s%s\n",
                          temp, (int )temp < 0 ? (char *)" CRWE" : (char *)"", (temp & 131072U) != 0U ? (char *)" OCIC" : (char *)"",
                          (temp & 65536U) != 0U ? (char *)" LPSC" : (char *)"", (temp & 32768U) != 0U ? (char *)" DRWE" : (char *)"",
                          (temp & 2U) != 0U ? (char *)" OCI" : (char *)"", (int )temp & 1 ? (char *)" LPS" : (char *)"");
      s_len___1 = (unsigned int )tmp___5;
      *size = *size - s_len___1;
      *next = *next + (unsigned long )s_len___1;
    } else {
      descriptor___1.modname = "ohci_hcd";
      descriptor___1.function = "ohci_dump_roothub";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
      descriptor___1.format = "roothub.status %08x%s%s%s%s%s%s\n";
      descriptor___1.lineno = 230U;
      descriptor___1.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        tmp___6 = ohci_to_hcd((struct ohci_hcd const *)controller);
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                          "roothub.status %08x%s%s%s%s%s%s\n", temp, (int )temp < 0 ? (char *)" CRWE" : (char *)"",
                          (temp & 131072U) != 0U ? (char *)" OCIC" : (char *)"", (temp & 65536U) != 0U ? (char *)" LPSC" : (char *)"",
                          (temp & 32768U) != 0U ? (char *)" DRWE" : (char *)"", (temp & 2U) != 0U ? (char *)" OCI" : (char *)"",
                          (int )temp & 1 ? (char *)" LPS" : (char *)"");
      } else {
      }
    }
  } else {
  }
  i = 0U;
  goto ldv_35909;
  ldv_35908:
  temp = roothub_portstatus(controller, (int )i);
  if ((unsigned long )next != (unsigned long )((char **)0)) {
    tmp___8 = scnprintf(*next, (size_t )*size, "roothub.portstatus [%d] 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\n",
                        i, temp, (temp & 1048576U) != 0U ? (char *)" PRSC" : (char *)"",
                        (temp & 524288U) != 0U ? (char *)" OCIC" : (char *)"", (temp & 262144U) != 0U ? (char *)" PSSC" : (char *)"",
                        (temp & 131072U) != 0U ? (char *)" PESC" : (char *)"", (temp & 65536U) != 0U ? (char *)" CSC" : (char *)"",
                        (temp & 512U) != 0U ? (char *)" LSDA" : (char *)"", (temp & 256U) != 0U ? (char *)" PPS" : (char *)"",
                        (temp & 16U) != 0U ? (char *)" PRS" : (char *)"", (temp & 8U) != 0U ? (char *)" POCI" : (char *)"",
                        (temp & 4U) != 0U ? (char *)" PSS" : (char *)"", (temp & 2U) != 0U ? (char *)" PES" : (char *)"",
                        (int )temp & 1 ? (char *)" CCS" : (char *)"");
    s_len___2 = (unsigned int )tmp___8;
    *size = *size - s_len___2;
    *next = *next + (unsigned long )s_len___2;
  } else {
    descriptor___2.modname = "ohci_hcd";
    descriptor___2.function = "ohci_dump_roothub";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor___2.format = "roothub.portstatus [%d] 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\n";
    descriptor___2.lineno = 235U;
    descriptor___2.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = ohci_to_hcd((struct ohci_hcd const *)controller);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "roothub.portstatus [%d] 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\n",
                        i, temp, (temp & 1048576U) != 0U ? (char *)" PRSC" : (char *)"",
                        (temp & 524288U) != 0U ? (char *)" OCIC" : (char *)"", (temp & 262144U) != 0U ? (char *)" PSSC" : (char *)"",
                        (temp & 131072U) != 0U ? (char *)" PESC" : (char *)"", (temp & 65536U) != 0U ? (char *)" CSC" : (char *)"",
                        (temp & 512U) != 0U ? (char *)" LSDA" : (char *)"", (temp & 256U) != 0U ? (char *)" PPS" : (char *)"",
                        (temp & 16U) != 0U ? (char *)" PRS" : (char *)"", (temp & 8U) != 0U ? (char *)" POCI" : (char *)"",
                        (temp & 4U) != 0U ? (char *)" PSS" : (char *)"", (temp & 2U) != 0U ? (char *)" PES" : (char *)"",
                        (int )temp & 1 ? (char *)" CCS" : (char *)"");
    } else {
    }
  }
  i = i + 1U;
  ldv_35909: ;
  if ((u32 )controller->num_ports > i) {
    goto ldv_35908;
  } else {
  }
  return;
}
}
static void ohci_dump(struct ohci_hcd *controller )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  u16 tmp___1 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  descriptor.modname = "ohci_hcd";
  descriptor.function = "ohci_dump";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
  descriptor.format = "OHCI controller state\n";
  descriptor.lineno = 241U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = ohci_to_hcd((struct ohci_hcd const *)controller);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "OHCI controller state\n");
  } else {
  }
  ohci_dump_status(controller, (char **)0, (unsigned int *)0U);
  if ((unsigned long )controller->hcca != (unsigned long )((struct ohci_hcca *)0)) {
    descriptor___0.modname = "ohci_hcd";
    descriptor___0.function = "ohci_dump";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
    descriptor___0.format = "hcca frame #%04x\n";
    descriptor___0.lineno = 247U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = ohci_frame_no((struct ohci_hcd const *)controller);
      tmp___2 = ohci_to_hcd((struct ohci_hcd const *)controller);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "hcca frame #%04x\n", (int )tmp___1);
    } else {
    }
  } else {
  }
  ohci_dump_roothub(controller, 1, (char **)0, (unsigned int *)0U);
  return;
}
}
static char const data0[6U] = { 'D', 'A', 'T', 'A',
        '0', '\000'};
static char const data1[6U] = { 'D', 'A', 'T', 'A',
        '1', '\000'};
static int debug_async_open(struct inode *inode , struct file *file ) ;
static int debug_periodic_open(struct inode *inode , struct file *file ) ;
static int debug_registers_open(struct inode *inode , struct file *file ) ;
static ssize_t debug_output(struct file *file , char *user_buf , size_t len , loff_t *offset ) ;
static int debug_close(struct inode *inode , struct file *file ) ;
static struct file_operations const debug_async_fops =
     {& __this_module, & default_llseek, & debug_output, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & debug_async_open, 0, & debug_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const debug_periodic_fops =
     {& __this_module, & default_llseek, & debug_output, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & debug_periodic_open, 0, & debug_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const debug_registers_fops =
     {& __this_module, & default_llseek, & debug_output, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & debug_registers_open, 0, & debug_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct dentry *ohci_debug_root ;
static ssize_t show_list(struct ohci_hcd *ohci , char *buf , size_t count , struct ed *ed )
{
  unsigned int temp ;
  unsigned int size ;
  u32 info ;
  u32 tmp ;
  u32 headp ;
  u32 tmp___0 ;
  struct list_head *entry ;
  struct td *td ;
  int tmp___1 ;
  u32 cbp ;
  u32 be ;
  struct list_head const *__mptr ;
  char *pid ;
  int tmp___2 ;
  int tmp___3 ;
  {
  size = (unsigned int )count;
  if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
    return (0L);
  } else {
  }
  goto ldv_36021;
  ldv_36020:
  ed = ed->ed_prev;
  ldv_36021: ;
  if ((unsigned long )ed->ed_prev != (unsigned long )((struct ed *)0)) {
    goto ldv_36020;
  } else {
  }
  goto ldv_36042;
  ldv_36041:
  tmp = hc32_to_cpu((struct ohci_hcd const *)ohci, ed->hwINFO);
  info = tmp;
  tmp___0 = hc32_to_cpu((struct ohci_hcd const *)ohci, ed->hwHeadP);
  headp = tmp___0;
  tmp___1 = scnprintf(buf, (size_t )size, "ed/%p %cs dev%d ep%d%s max %d %08x%s%s %s",
                      ed, (info & 8192U) != 0U ? 108 : 102, info & 127U, (info >> 7) & 15U,
                      (info & 4096U) != 0U ? (char *)"in" : (char *)"out", (info >> 16) & 1023U,
                      info, (info & 16384U) != 0U ? (char *)" s" : (char *)"", (int )headp & 1 ? (char *)" H" : (char *)"",
                      (headp & 2U) != 0U ? (char const *)(& data1) : (char const *)(& data0));
  temp = (unsigned int )tmp___1;
  size = size - temp;
  buf = buf + (unsigned long )temp;
  entry = ed->td_list.next;
  goto ldv_36039;
  ldv_36038:
  __mptr = (struct list_head const *)entry;
  td = (struct td *)__mptr + 0xffffffffffffffb8UL;
  info = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwINFO));
  cbp = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwCBP));
  be = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwBE));
  switch (info & 1572864U) {
  case 0U:
  pid = (char *)"setup";
  goto ldv_36033;
  case 1048576U:
  pid = (char *)"in";
  goto ldv_36033;
  case 524288U:
  pid = (char *)"out";
  goto ldv_36033;
  default:
  pid = (char *)"(?)";
  goto ldv_36033;
  }
  ldv_36033:
  tmp___2 = scnprintf(buf, (size_t )size, "\n\ttd %p %s %d cc=%x urb %p (%08x)", td,
                      pid, cbp != 0U ? (be - cbp) + 1U : 0U, info >> 28, td->urb,
                      info);
  temp = (unsigned int )tmp___2;
  size = size - temp;
  buf = buf + (unsigned long )temp;
  entry = entry->next;
  ldv_36039: ;
  if ((unsigned long )(& ed->td_list) != (unsigned long )entry) {
    goto ldv_36038;
  } else {
  }
  tmp___3 = scnprintf(buf, (size_t )size, "\n");
  temp = (unsigned int )tmp___3;
  size = size - temp;
  buf = buf + (unsigned long )temp;
  ed = ed->ed_next;
  ldv_36042: ;
  if ((unsigned long )ed != (unsigned long )((struct ed *)0)) {
    goto ldv_36041;
  } else {
  }
  return ((ssize_t )(count - (size_t )size));
}
}
static ssize_t fill_async_buffer(struct debug_buffer *buf )
{
  struct ohci_hcd *ohci ;
  size_t temp ;
  size_t size ;
  unsigned long flags ;
  ssize_t tmp ;
  ssize_t tmp___0 ;
  {
  ohci = buf->ohci;
  size = 4096UL;
  ldv_spin_lock();
  tmp = show_list(ohci, buf->page, size, ohci->ed_controltail);
  temp = (size_t )tmp;
  tmp___0 = show_list(ohci, buf->page + temp, size - temp, ohci->ed_bulktail);
  temp = (unsigned long )tmp___0 + temp;
  spin_unlock_irqrestore(& ohci->lock, flags);
  return ((ssize_t )temp);
}
}
static ssize_t fill_periodic_buffer(struct debug_buffer *buf )
{
  struct ohci_hcd *ohci ;
  struct ed **seen ;
  struct ed *ed ;
  unsigned long flags ;
  unsigned int temp ;
  unsigned int size ;
  unsigned int seen_count ;
  char *next ;
  unsigned int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 info ;
  u32 tmp___3 ;
  struct list_head *entry ;
  unsigned int qlen ;
  __hc32 tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  {
  tmp = kmalloc(512UL, 32U);
  seen = (struct ed **)tmp;
  if ((unsigned long )seen == (unsigned long )((struct ed **)0)) {
    return (0L);
  } else {
  }
  seen_count = 0U;
  ohci = buf->ohci;
  next = buf->page;
  size = 4096U;
  tmp___0 = scnprintf(next, (size_t )size, "size = %d\n", 32);
  temp = (unsigned int )tmp___0;
  size = size - temp;
  next = next + (unsigned long )temp;
  ldv_spin_lock();
  i = 0U;
  goto ldv_36076;
  ldv_36075:
  ed = ohci->periodic[i];
  if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
    goto ldv_36063;
  } else {
  }
  tmp___1 = scnprintf(next, (size_t )size, "%2d [%3d]:", i, ohci->load[i]);
  temp = (unsigned int )tmp___1;
  size = size - temp;
  next = next + (unsigned long )temp;
  ldv_36073:
  tmp___2 = scnprintf(next, (size_t )size, " ed%d/%p", (int )ed->interval, ed);
  temp = (unsigned int )tmp___2;
  size = size - temp;
  next = next + (unsigned long )temp;
  temp = 0U;
  goto ldv_36066;
  ldv_36065: ;
  if ((unsigned long )*(seen + (unsigned long )temp) == (unsigned long )ed) {
    goto ldv_36064;
  } else {
  }
  temp = temp + 1U;
  ldv_36066: ;
  if (temp < seen_count) {
    goto ldv_36065;
  } else {
  }
  ldv_36064: ;
  if (temp == seen_count) {
    tmp___3 = hc32_to_cpu((struct ohci_hcd const *)ohci, ed->hwINFO);
    info = tmp___3;
    qlen = 0U;
    entry = ed->td_list.next;
    goto ldv_36071;
    ldv_36070:
    qlen = qlen + 1U;
    entry = entry->next;
    ldv_36071: ;
    if ((unsigned long )(& ed->td_list) != (unsigned long )entry) {
      goto ldv_36070;
    } else {
    }
    tmp___4 = cpu_to_hc32((struct ohci_hcd const *)ohci, 1U);
    tmp___5 = scnprintf(next, (size_t )size, " (%cs dev%d ep%d%s-%s qlen %u max %d %08x%s%s)",
                        (info & 8192U) != 0U ? 108 : 102, info & 127U, (info >> 7) & 15U,
                        (info & 4096U) != 0U ? (char *)"in" : (char *)"out", (info & 32768U) != 0U ? (char *)"iso" : (char *)"int",
                        qlen, (info >> 16) & 1023U, info, (info & 16384U) != 0U ? (char *)" K" : (char *)"",
                        (ed->hwHeadP & tmp___4) != 0U ? (char *)" H" : (char *)"");
    temp = (unsigned int )tmp___5;
    size = size - temp;
    next = next + (unsigned long )temp;
    if (seen_count <= 63U) {
      tmp___6 = seen_count;
      seen_count = seen_count + 1U;
      *(seen + (unsigned long )tmp___6) = ed;
    } else {
    }
    ed = ed->ed_next;
  } else {
    temp = 0U;
    ed = (struct ed *)0;
  }
  if ((unsigned long )ed != (unsigned long )((struct ed *)0)) {
    goto ldv_36073;
  } else {
  }
  tmp___7 = scnprintf(next, (size_t )size, "\n");
  temp = (unsigned int )tmp___7;
  size = size - temp;
  next = next + (unsigned long )temp;
  ldv_36063:
  i = i + 1U;
  ldv_36076: ;
  if (i <= 31U) {
    goto ldv_36075;
  } else {
  }
  spin_unlock_irqrestore(& ohci->lock, flags);
  kfree((void const *)seen);
  return ((ssize_t )(4096UL - (unsigned long )size));
}
}
static ssize_t fill_registers_buffer(struct debug_buffer *buf )
{
  struct usb_hcd *hcd ;
  struct ohci_hcd *ohci ;
  struct ohci_regs *regs ;
  unsigned long flags ;
  unsigned int temp ;
  unsigned int size ;
  char *next ;
  u32 rdata ;
  unsigned int s_len ;
  char const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int s_len___0 ;
  u16 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct usb_hcd *tmp___8 ;
  int tmp___9 ;
  {
  ohci = buf->ohci;
  hcd = ohci_to_hcd((struct ohci_hcd const *)ohci);
  regs = ohci->regs;
  next = buf->page;
  size = 4096U;
  ldv_spin_lock();
  tmp = dev_name((struct device const *)hcd->self.controller);
  tmp___0 = scnprintf(next, (size_t )size, "bus %s, device %s\n%s\n%s\n", ((hcd->self.controller)->bus)->name,
                      tmp, hcd->product_desc, (char const *)(& hcd_name));
  s_len = (unsigned int )tmp___0;
  size = size - s_len;
  next = next + (unsigned long )s_len;
  if ((hcd->flags & 1UL) == 0UL) {
    tmp___1 = scnprintf(next, (size_t )size, "SUSPENDED (no register access)\n");
    size = size - (unsigned int )tmp___1;
    goto done;
  } else {
  }
  ohci_dump_status(ohci, & next, & size);
  if ((unsigned long )ohci->hcca != (unsigned long )((struct ohci_hcca *)0)) {
    tmp___2 = ohci_frame_no((struct ohci_hcd const *)ohci);
    tmp___3 = scnprintf(next, (size_t )size, "hcca frame 0x%04x\n", (int )tmp___2);
    s_len___0 = (unsigned int )tmp___3;
    size = size - s_len___0;
    next = next + (unsigned long )s_len___0;
  } else {
  }
  rdata = _ohci_readl((struct ohci_hcd const *)ohci, & regs->fminterval);
  tmp___4 = scnprintf(next, (size_t )size, "fmintvl 0x%08x %sFSMPS=0x%04x FI=0x%04x\n",
                      rdata, (int )rdata < 0 ? (char *)"FIT " : (char *)"", (rdata >> 16) & 61439U,
                      rdata & 65535U);
  temp = (unsigned int )tmp___4;
  size = size - temp;
  next = next + (unsigned long )temp;
  rdata = _ohci_readl((struct ohci_hcd const *)ohci, & regs->fmremaining);
  tmp___5 = scnprintf(next, (size_t )size, "fmremaining 0x%08x %sFR=0x%04x\n", rdata,
                      (int )rdata < 0 ? (char *)"FRT " : (char *)"", rdata & 16383U);
  temp = (unsigned int )tmp___5;
  size = size - temp;
  next = next + (unsigned long )temp;
  rdata = _ohci_readl((struct ohci_hcd const *)ohci, & regs->periodicstart);
  tmp___6 = scnprintf(next, (size_t )size, "periodicstart 0x%04x\n", rdata & 16383U);
  temp = (unsigned int )tmp___6;
  size = size - temp;
  next = next + (unsigned long )temp;
  rdata = _ohci_readl((struct ohci_hcd const *)ohci, & regs->lsthresh);
  tmp___7 = scnprintf(next, (size_t )size, "lsthresh 0x%04x\n", rdata & 16383U);
  temp = (unsigned int )tmp___7;
  size = size - temp;
  next = next + (unsigned long )temp;
  tmp___8 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___9 = scnprintf(next, (size_t )size, "hub poll timer %s\n", (tmp___8->flags & 4UL) != 0UL ? (char *)"ON" : (char *)"off");
  temp = (unsigned int )tmp___9;
  size = size - temp;
  next = next + (unsigned long )temp;
  ohci_dump_roothub(ohci, 1, & next, & size);
  done:
  spin_unlock_irqrestore(& ohci->lock, flags);
  return ((ssize_t )(4096UL - (unsigned long )size));
}
}
static struct debug_buffer *alloc_buffer(struct ohci_hcd *ohci , ssize_t (*fill_func)(struct debug_buffer * ) )
{
  struct debug_buffer *buf ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kmalloc(192UL, 208U);
  buf = (struct debug_buffer *)tmp;
  if ((unsigned long )buf != (unsigned long )((struct debug_buffer *)0)) {
    buf->ohci = ohci;
    buf->fill_func = fill_func;
    __mutex_init(& buf->mutex, "&buf->mutex", & __key);
  } else {
  }
  return (buf);
}
}
static int fill_buffer(struct debug_buffer *buf )
{
  int ret ;
  unsigned long tmp ;
  ssize_t tmp___0 ;
  {
  ret = 0;
  if ((unsigned long )buf->page == (unsigned long )((char *)0)) {
    tmp = get_zeroed_page(208U);
    buf->page = (char *)tmp;
  } else {
  }
  if ((unsigned long )buf->page == (unsigned long )((char *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  tmp___0 = (*(buf->fill_func))(buf);
  ret = (int )tmp___0;
  if (ret >= 0) {
    buf->count = (size_t )ret;
    ret = 0;
  } else {
  }
  out: ;
  return (ret);
}
}
static ssize_t debug_output(struct file *file , char *user_buf , size_t len , loff_t *offset )
{
  struct debug_buffer *buf ;
  int ret ;
  ssize_t tmp ;
  {
  buf = (struct debug_buffer *)file->private_data;
  ret = 0;
  mutex_lock_nested(& buf->mutex, 0U);
  if (buf->count == 0UL) {
    ret = fill_buffer(buf);
    if (ret != 0) {
      mutex_unlock(& buf->mutex);
      goto out;
    } else {
    }
  } else {
  }
  mutex_unlock(& buf->mutex);
  tmp = simple_read_from_buffer((void *)user_buf, len, offset, (void const *)buf->page,
                                buf->count);
  ret = (int )tmp;
  out: ;
  return ((ssize_t )ret);
}
}
static int debug_close(struct inode *inode , struct file *file )
{
  struct debug_buffer *buf ;
  {
  buf = (struct debug_buffer *)file->private_data;
  if ((unsigned long )buf != (unsigned long )((struct debug_buffer *)0)) {
    if ((unsigned long )buf->page != (unsigned long )((char *)0)) {
      free_pages((unsigned long )buf->page, 0U);
    } else {
    }
    kfree((void const *)buf);
  } else {
  }
  return (0);
}
}
static int debug_async_open(struct inode *inode , struct file *file )
{
  struct debug_buffer *tmp ;
  {
  tmp = alloc_buffer((struct ohci_hcd *)inode->i_private, & fill_async_buffer);
  file->private_data = (void *)tmp;
  return ((unsigned long )file->private_data != (unsigned long )((void *)0) ? 0 : -12);
}
}
static int debug_periodic_open(struct inode *inode , struct file *file )
{
  struct debug_buffer *tmp ;
  {
  tmp = alloc_buffer((struct ohci_hcd *)inode->i_private, & fill_periodic_buffer);
  file->private_data = (void *)tmp;
  return ((unsigned long )file->private_data != (unsigned long )((void *)0) ? 0 : -12);
}
}
static int debug_registers_open(struct inode *inode , struct file *file )
{
  struct debug_buffer *tmp ;
  {
  tmp = alloc_buffer((struct ohci_hcd *)inode->i_private, & fill_registers_buffer);
  file->private_data = (void *)tmp;
  return ((unsigned long )file->private_data != (unsigned long )((void *)0) ? 0 : -12);
}
}
__inline static void create_debug_files(struct ohci_hcd *ohci )
{
  struct usb_bus *bus ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  bus = & tmp->self;
  ohci->debug_dir = debugfs_create_dir(bus->bus_name, ohci_debug_root);
  if ((unsigned long )ohci->debug_dir == (unsigned long )((struct dentry *)0)) {
    goto dir_error;
  } else {
  }
  ohci->debug_async = debugfs_create_file("async", 292, ohci->debug_dir, (void *)ohci,
                                          & debug_async_fops);
  if ((unsigned long )ohci->debug_async == (unsigned long )((struct dentry *)0)) {
    goto async_error;
  } else {
  }
  ohci->debug_periodic = debugfs_create_file("periodic", 292, ohci->debug_dir, (void *)ohci,
                                             & debug_periodic_fops);
  if ((unsigned long )ohci->debug_periodic == (unsigned long )((struct dentry *)0)) {
    goto periodic_error;
  } else {
  }
  ohci->debug_registers = debugfs_create_file("registers", 292, ohci->debug_dir, (void *)ohci,
                                              & debug_registers_fops);
  if ((unsigned long )ohci->debug_registers == (unsigned long )((struct dentry *)0)) {
    goto registers_error;
  } else {
  }
  descriptor.modname = "ohci_hcd";
  descriptor.function = "create_debug_files";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-dbg.c";
  descriptor.format = "created debug files\n";
  descriptor.lineno = 787U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "created debug files\n");
  } else {
  }
  return;
  registers_error:
  debugfs_remove(ohci->debug_periodic);
  periodic_error:
  debugfs_remove(ohci->debug_async);
  async_error:
  debugfs_remove(ohci->debug_dir);
  dir_error:
  ohci->debug_periodic = (struct dentry *)0;
  ohci->debug_async = (struct dentry *)0;
  ohci->debug_dir = (struct dentry *)0;
  return;
}
}
__inline static void remove_debug_files(struct ohci_hcd *ohci )
{
  {
  debugfs_remove(ohci->debug_registers);
  debugfs_remove(ohci->debug_periodic);
  debugfs_remove(ohci->debug_async);
  debugfs_remove(ohci->debug_dir);
  return;
}
}
static void ohci_hcd_init(struct ohci_hcd *ohci )
{
  struct lock_class_key __key ;
  {
  ohci->next_statechange = jiffies;
  spinlock_check(& ohci->lock);
  __raw_spin_lock_init(& ohci->lock.__annonCompField18.rlock, "&(&ohci->lock)->rlock",
                       & __key);
  INIT_LIST_HEAD(& ohci->pending);
  INIT_LIST_HEAD(& ohci->eds_in_use);
  return;
}
}
static int ohci_mem_init(struct ohci_hcd *ohci )
{
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  ohci->td_cache = dma_pool_create("ohci_td", tmp->self.controller, 96UL, 32UL, 0UL);
  if ((unsigned long )ohci->td_cache == (unsigned long )((struct dma_pool *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  ohci->ed_cache = dma_pool_create("ohci_ed", tmp___0->self.controller, 112UL, 16UL,
                                   0UL);
  if ((unsigned long )ohci->ed_cache == (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(ohci->td_cache);
    return (-12);
  } else {
  }
  return (0);
}
}
static void ohci_mem_cleanup(struct ohci_hcd *ohci )
{
  {
  if ((unsigned long )ohci->td_cache != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(ohci->td_cache);
    ohci->td_cache = (struct dma_pool *)0;
  } else {
  }
  if ((unsigned long )ohci->ed_cache != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(ohci->ed_cache);
    ohci->ed_cache = (struct dma_pool *)0;
  } else {
  }
  return;
}
}
__inline static struct td *dma_to_td(struct ohci_hcd *hc , dma_addr_t td_dma )
{
  struct td *td ;
  {
  td_dma = td_dma & 4294967264ULL;
  td = hc->td_hash[((td_dma >> 6) ^ td_dma) & 63ULL];
  goto ldv_36159;
  ldv_36158:
  td = td->td_hash;
  ldv_36159: ;
  if ((unsigned long )td != (unsigned long )((struct td *)0) && td->td_dma != td_dma) {
    goto ldv_36158;
  } else {
  }
  return (td);
}
}
static struct td *td_alloc(struct ohci_hcd *hc , gfp_t mem_flags )
{
  dma_addr_t dma ;
  struct td *td ;
  void *tmp ;
  {
  tmp = ldv_dma_pool_alloc_25(hc->td_cache, mem_flags, & dma);
  td = (struct td *)tmp;
  if ((unsigned long )td != (unsigned long )((struct td *)0)) {
    memset((void *)td, 0, 96UL);
    td->hwNextTD = cpu_to_hc32((struct ohci_hcd const *)hc, (u32 const )dma);
    td->td_dma = dma;
  } else {
  }
  return (td);
}
}
static void td_free(struct ohci_hcd *hc , struct td *td )
{
  struct td **prev ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  __hc32 tmp___1 ;
  {
  prev = (struct td **)(& hc->td_hash) + ((td->td_dma ^ (td->td_dma >> 6)) & 63ULL);
  goto ldv_36173;
  ldv_36172:
  prev = & (*prev)->td_hash;
  ldv_36173: ;
  if ((unsigned long )*prev != (unsigned long )((struct td *)0) && (unsigned long )*prev != (unsigned long )td) {
    goto ldv_36172;
  } else {
  }
  if ((unsigned long )*prev != (unsigned long )((struct td *)0)) {
    *prev = td->td_hash;
  } else {
    tmp___1 = cpu_to_hc32((struct ohci_hcd const *)hc, 131072U);
    if ((td->hwINFO & tmp___1) != 0U) {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "td_free";
      descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-mem.c";
      descriptor.format = "no hash for td %p\n";
      descriptor.lineno = 112U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        tmp = ohci_to_hcd((struct ohci_hcd const *)hc);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                          "no hash for td %p\n", td);
      } else {
      }
    } else {
    }
  }
  dma_pool_free(hc->td_cache, (void *)td, td->td_dma);
  return;
}
}
static struct ed *ed_alloc(struct ohci_hcd *hc , gfp_t mem_flags )
{
  dma_addr_t dma ;
  struct ed *ed ;
  void *tmp ;
  {
  tmp = ldv_dma_pool_alloc_26(hc->ed_cache, mem_flags, & dma);
  ed = (struct ed *)tmp;
  if ((unsigned long )ed != (unsigned long )((struct ed *)0)) {
    memset((void *)ed, 0, 112UL);
    INIT_LIST_HEAD(& ed->td_list);
    ed->dma = dma;
  } else {
  }
  return (ed);
}
}
static void ed_free(struct ohci_hcd *hc , struct ed *ed )
{
  {
  dma_pool_free(hc->ed_cache, (void *)ed, ed->dma);
  return;
}
}
static void urb_free_priv(struct ohci_hcd *hc , urb_priv_t *urb_priv )
{
  int last ;
  int i ;
  struct td *td ;
  {
  last = (int )urb_priv->length + -1;
  if (last >= 0) {
    i = 0;
    goto ldv_36195;
    ldv_36194:
    td = urb_priv->td[i];
    if ((unsigned long )td != (unsigned long )((struct td *)0)) {
      td_free(hc, td);
    } else {
    }
    i = i + 1;
    ldv_36195: ;
    if (i <= last) {
      goto ldv_36194;
    } else {
    }
  } else {
  }
  list_del(& urb_priv->pending);
  kfree((void const *)urb_priv);
  return;
}
}
static void finish_urb(struct ohci_hcd *ohci , struct urb *urb , int status )
{
  struct device *dev ;
  struct usb_hcd *tmp ;
  struct usb_host_endpoint *ep ;
  struct urb_priv *urb_priv ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct usb_hcd *tmp___9 ;
  struct list_head const *__mptr ;
  int tmp___10 ;
  {
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  dev = tmp->self.controller;
  ep = urb->ep;
  restart:
  urb_free_priv(ohci, (urb_priv_t *)urb->hcpriv);
  urb->hcpriv = (void *)0;
  tmp___0 = ldv__builtin_expect(status == -115, 1L);
  if (tmp___0 != 0L) {
    status = 0;
  } else {
  }
  switch (urb->pipe >> 30) {
  case 0U:
  tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___1->self.bandwidth_isoc_reqs = tmp___1->self.bandwidth_isoc_reqs - 1;
  tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  if (tmp___4->self.bandwidth_isoc_reqs == 0) {
    tmp___2 = quirk_amdiso(ohci);
    if (tmp___2 != 0) {
      usb_amd_quirk_pll_enable();
    } else {
    }
    tmp___3 = quirk_amdprefetch(ohci);
    if (tmp___3 != 0) {
      sb800_prefetch(dev, 0);
    } else {
    }
  } else {
  }
  goto ldv_36207;
  case 1U:
  tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___5->self.bandwidth_int_reqs = tmp___5->self.bandwidth_int_reqs - 1;
  goto ldv_36207;
  }
  ldv_36207:
  tmp___6 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  usb_hcd_unlink_urb_from_ep(tmp___6, urb);
  spin_unlock(& ohci->lock);
  tmp___7 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  usb_hcd_giveback_urb(tmp___7, urb, status);
  spin_lock(& ohci->lock);
  tmp___8 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  if (tmp___8->self.bandwidth_isoc_reqs == 0) {
    tmp___9 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    if (tmp___9->self.bandwidth_int_reqs == 0) {
      ohci->hc_control = ohci->hc_control & 4294967283U;
      _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    } else {
    }
  } else {
  }
  tmp___10 = list_empty((struct list_head const *)(& ep->urb_list));
  if (tmp___10 == 0) {
    __mptr = (struct list_head const *)ep->urb_list.next;
    urb = (struct urb *)__mptr + 0xffffffffffffffe0UL;
    urb_priv = (struct urb_priv *)urb->hcpriv;
    if ((int )urb_priv->td_cnt > (int )urb_priv->length) {
      status = 0;
      goto restart;
    } else {
    }
  } else {
  }
  return;
}
}
static int balance(struct ohci_hcd *ohci , int interval , int load )
{
  int i ;
  int branch ;
  int j ;
  {
  branch = -28;
  if (interval > 32) {
    interval = 32;
  } else {
  }
  i = 0;
  goto ldv_36224;
  ldv_36223: ;
  if (branch < 0 || ohci->load[branch] > ohci->load[i]) {
    j = i;
    goto ldv_36221;
    ldv_36220: ;
    if (ohci->load[j] + load > 900) {
      goto ldv_36219;
    } else {
    }
    j = j + interval;
    ldv_36221: ;
    if (j <= 31) {
      goto ldv_36220;
    } else {
    }
    ldv_36219: ;
    if (j <= 31) {
      goto ldv_36222;
    } else {
    }
    branch = i;
  } else {
  }
  ldv_36222:
  i = i + 1;
  ldv_36224: ;
  if (i < interval) {
    goto ldv_36223;
  } else {
  }
  return (branch);
}
}
static void periodic_link(struct ohci_hcd *ohci , struct ed *ed )
{
  unsigned int i ;
  struct _ddebug descriptor ;
  __hc32 tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct ed **prev ;
  __hc32 *prev_p ;
  struct ed *here ;
  struct usb_hcd *tmp___2 ;
  {
  descriptor.modname = "ohci_hcd";
  descriptor.function = "periodic_link";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
  descriptor.format = "link %sed %p branch %d [%dus.], interval %d\n";
  descriptor.lineno = 148U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = cpu_to_hc32((struct ohci_hcd const *)ohci, 32768U);
    tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "link %sed %p branch %d [%dus.], interval %d\n", (ed->hwINFO & tmp) != 0U ? (char *)"iso " : (char *)"",
                      ed, (int )ed->branch, (int )ed->load, (int )ed->interval);
  } else {
  }
  i = (unsigned int )ed->branch;
  goto ldv_36240;
  ldv_36239:
  prev = (struct ed **)(& ohci->periodic) + (unsigned long )i;
  prev_p = (__hc32 *)(& (ohci->hcca)->int_table) + (unsigned long )i;
  here = *prev;
  goto ldv_36238;
  ldv_36237: ;
  if ((int )ed->interval > (int )here->interval) {
    goto ldv_36236;
  } else {
  }
  prev = & here->ed_next;
  prev_p = & here->hwNextED;
  here = *prev;
  ldv_36238: ;
  if ((unsigned long )here != (unsigned long )((struct ed *)0) && (unsigned long )ed != (unsigned long )here) {
    goto ldv_36237;
  } else {
  }
  ldv_36236: ;
  if ((unsigned long )ed != (unsigned long )here) {
    ed->ed_next = here;
    if ((unsigned long )here != (unsigned long )((struct ed *)0)) {
      ed->hwNextED = *prev_p;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    *prev = ed;
    *prev_p = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )ed->dma);
    __asm__ volatile ("sfence": : : "memory");
  } else {
  }
  ohci->load[i] = ohci->load[i] + (int )ed->load;
  i = (unsigned int )ed->interval + i;
  ldv_36240: ;
  if (i <= 31U) {
    goto ldv_36239;
  } else {
  }
  tmp___2 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___2->self.bandwidth_allocated = tmp___2->self.bandwidth_allocated + (int )ed->load / (int )ed->interval;
  return;
}
}
static int ed_schedule(struct ohci_hcd *ohci , struct ed *ed )
{
  int branch ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  ed->state = 2U;
  ed->ed_prev = (struct ed *)0;
  ed->ed_next = (struct ed *)0;
  ed->hwNextED = 0U;
  __asm__ volatile ("sfence": : : "memory");
  switch ((int )ed->type) {
  case 2: ;
  if ((unsigned long )ohci->ed_controltail == (unsigned long )((struct ed *)0)) {
    __ret_warn_on = (ohci->hc_control & 16U) != 0U;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c",
                         205);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )ed->dma,
                 & (ohci->regs)->ed_controlhead);
  } else {
    (ohci->ed_controltail)->ed_next = ed;
    (ohci->ed_controltail)->hwNextED = cpu_to_hc32((struct ohci_hcd const *)ohci,
                                                   (u32 const )ed->dma);
  }
  ed->ed_prev = ohci->ed_controltail;
  if ((unsigned long )ohci->ed_controltail == (unsigned long )((struct ed *)0) && (unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) {
    __asm__ volatile ("sfence": : : "memory");
    ohci->hc_control = ohci->hc_control | 16U;
    _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_controlcurrent);
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  } else {
  }
  ohci->ed_controltail = ed;
  goto ldv_36250;
  case 3: ;
  if ((unsigned long )ohci->ed_bulktail == (unsigned long )((struct ed *)0)) {
    __ret_warn_on___0 = (ohci->hc_control & 32U) != 0U;
    tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c",
                         226);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )ed->dma,
                 & (ohci->regs)->ed_bulkhead);
  } else {
    (ohci->ed_bulktail)->ed_next = ed;
    (ohci->ed_bulktail)->hwNextED = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )ed->dma);
  }
  ed->ed_prev = ohci->ed_bulktail;
  if ((unsigned long )ohci->ed_bulktail == (unsigned long )((struct ed *)0) && (unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) {
    __asm__ volatile ("sfence": : : "memory");
    ohci->hc_control = ohci->hc_control | 32U;
    _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_bulkcurrent);
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  } else {
  }
  ohci->ed_bulktail = ed;
  goto ldv_36250;
  default:
  branch = balance(ohci, (int )ed->interval, (int )ed->load);
  if (branch < 0) {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ed_schedule";
    descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
    descriptor.format = "ERR %d, interval %d msecs, load %d\n";
    descriptor.lineno = 251U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "ERR %d, interval %d msecs, load %d\n", branch, (int )ed->interval,
                        (int )ed->load);
    } else {
    }
    return (branch);
  } else {
  }
  ed->branch = (u8 )branch;
  periodic_link(ohci, ed);
  }
  ldv_36250: ;
  return (0);
}
}
static void periodic_unlink(struct ohci_hcd *ohci , struct ed *ed )
{
  int i ;
  struct ed *temp ;
  struct ed **prev ;
  __hc32 *prev_p ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  __hc32 tmp___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  i = (int )ed->branch;
  goto ldv_36269;
  ldv_36268:
  prev = (struct ed **)(& ohci->periodic) + (unsigned long )i;
  prev_p = (__hc32 *)(& (ohci->hcca)->int_table) + (unsigned long )i;
  goto ldv_36266;
  ldv_36265:
  prev_p = & temp->hwNextED;
  prev = & temp->ed_next;
  ldv_36266: ;
  if ((unsigned long )*prev != (unsigned long )((struct ed *)0)) {
    temp = *prev;
    if ((unsigned long )temp != (unsigned long )ed) {
      goto ldv_36265;
    } else {
      goto ldv_36267;
    }
  } else {
  }
  ldv_36267: ;
  if ((unsigned long )*prev != (unsigned long )((struct ed *)0)) {
    *prev_p = ed->hwNextED;
    *prev = ed->ed_next;
  } else {
  }
  ohci->load[i] = ohci->load[i] - (int )ed->load;
  i = (int )ed->interval + i;
  ldv_36269: ;
  if (i <= 31) {
    goto ldv_36268;
  } else {
  }
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp->self.bandwidth_allocated = tmp->self.bandwidth_allocated - (int )ed->load / (int )ed->interval;
  descriptor.modname = "ohci_hcd";
  descriptor.function = "periodic_unlink";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
  descriptor.format = "unlink %sed %p branch %d [%dus.], interval %d\n";
  descriptor.lineno = 291U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = cpu_to_hc32((struct ohci_hcd const *)ohci, 32768U);
    tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "unlink %sed %p branch %d [%dus.], interval %d\n", (ed->hwINFO & tmp___0) != 0U ? (char *)"iso " : (char *)"",
                      ed, (int )ed->branch, (int )ed->load, (int )ed->interval);
  } else {
  }
  return;
}
}
static void ed_deschedule(struct ohci_hcd *ohci , struct ed *ed )
{
  __hc32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = cpu_to_hc32((struct ohci_hcd const *)ohci, 16384U);
  ed->hwINFO = ed->hwINFO | tmp;
  __asm__ volatile ("sfence": : : "memory");
  ed->state = 1U;
  switch ((int )ed->type) {
  case 2: ;
  if ((unsigned long )ed->ed_prev == (unsigned long )((struct ed *)0)) {
    if (ed->hwNextED == 0U) {
      ohci->hc_control = ohci->hc_control & 4294967279U;
      _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    } else {
      tmp___0 = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& ed->hwNextED));
      _ohci_writel((struct ohci_hcd const *)ohci, tmp___0, & (ohci->regs)->ed_controlhead);
    }
  } else {
    (ed->ed_prev)->ed_next = ed->ed_next;
    (ed->ed_prev)->hwNextED = ed->hwNextED;
  }
  if ((unsigned long )ohci->ed_controltail == (unsigned long )ed) {
    ohci->ed_controltail = ed->ed_prev;
    if ((unsigned long )ohci->ed_controltail != (unsigned long )((struct ed *)0)) {
      (ohci->ed_controltail)->ed_next = (struct ed *)0;
    } else {
    }
  } else
  if ((unsigned long )ed->ed_next != (unsigned long )((struct ed *)0)) {
    (ed->ed_next)->ed_prev = ed->ed_prev;
  } else {
  }
  goto ldv_36278;
  case 3: ;
  if ((unsigned long )ed->ed_prev == (unsigned long )((struct ed *)0)) {
    if (ed->hwNextED == 0U) {
      ohci->hc_control = ohci->hc_control & 4294967263U;
      _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    } else {
      tmp___1 = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& ed->hwNextED));
      _ohci_writel((struct ohci_hcd const *)ohci, tmp___1, & (ohci->regs)->ed_bulkhead);
    }
  } else {
    (ed->ed_prev)->ed_next = ed->ed_next;
    (ed->ed_prev)->hwNextED = ed->hwNextED;
  }
  if ((unsigned long )ohci->ed_bulktail == (unsigned long )ed) {
    ohci->ed_bulktail = ed->ed_prev;
    if ((unsigned long )ohci->ed_bulktail != (unsigned long )((struct ed *)0)) {
      (ohci->ed_bulktail)->ed_next = (struct ed *)0;
    } else {
    }
  } else
  if ((unsigned long )ed->ed_next != (unsigned long )((struct ed *)0)) {
    (ed->ed_next)->ed_prev = ed->ed_prev;
  } else {
  }
  goto ldv_36278;
  default:
  periodic_unlink(ohci, ed);
  goto ldv_36278;
  }
  ldv_36278: ;
  return;
}
}
static struct ed *ed_get(struct ohci_hcd *ohci , struct usb_host_endpoint *ep , struct usb_device *udev ,
                         unsigned int pipe , int interval )
{
  struct ed *ed ;
  unsigned long flags ;
  struct td *td ;
  int is_out ;
  u32 info ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  ldv_spin_lock();
  ed = (struct ed *)ep->hcpriv;
  if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
    ed = ed_alloc(ohci, 32U);
    if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
      goto done;
    } else {
    }
    td = td_alloc(ohci, 32U);
    if ((unsigned long )td == (unsigned long )((struct td *)0)) {
      ed_free(ohci, ed);
      ed = (struct ed *)0;
      goto done;
    } else {
    }
    ed->dummy = td;
    ed->hwTailP = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )td->td_dma);
    ed->hwHeadP = ed->hwTailP;
    ed->state = 0U;
    is_out = (int )((signed char )ep->desc.bEndpointAddress) >= 0;
    info = (pipe >> 8) & 127U;
    ed->type = (u8 )(pipe >> 30);
    info = (u32 )(((int )ep->desc.bEndpointAddress & -129) << 7) | info;
    tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
    info = (u32 )(tmp << 16) | info;
    if ((unsigned int )udev->speed == 1U) {
      info = info | 8192U;
    } else {
    }
    if ((unsigned int )ed->type != 2U) {
      info = (is_out != 0 ? 2048U : 4096U) | info;
      if ((unsigned int )ed->type != 3U) {
        if ((unsigned int )ed->type == 0U) {
          info = info | 32768U;
        } else
        if (interval > 32) {
          interval = 32;
        } else {
        }
        ed->interval = (u16 )interval;
        tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
        tmp___1 = usb_calc_bus_time((int )udev->speed, is_out == 0, (unsigned int )ed->type == 0U,
                                    tmp___0);
        ed->load = (u16 )(tmp___1 / 1000L);
      } else {
      }
    } else {
    }
    ed->hwINFO = cpu_to_hc32((struct ohci_hcd const *)ohci, info);
    ep->hcpriv = (void *)ed;
  } else {
  }
  done:
  spin_unlock_irqrestore(& ohci->lock, flags);
  return (ed);
}
}
static void start_ed_unlink(struct ohci_hcd *ohci , struct ed *ed )
{
  __hc32 tmp ;
  u16 tmp___0 ;
  {
  tmp = cpu_to_hc32((struct ohci_hcd const *)ohci, 134217728U);
  ed->hwINFO = ed->hwINFO | tmp;
  ed_deschedule(ohci, ed);
  ed->ed_next = ohci->ed_rm_list;
  ed->ed_prev = (struct ed *)0;
  ohci->ed_rm_list = ed;
  _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->intrstatus);
  _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->intrenable);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  tmp___0 = ohci_frame_no((struct ohci_hcd const *)ohci);
  ed->tick = (unsigned int )tmp___0 + 1U;
  return;
}
}
static void td_fill(struct ohci_hcd *ohci , u32 info , dma_addr_t data , int len ,
                    struct urb *urb , int index )
{
  struct td *td ;
  struct td *td_pt ;
  struct urb_priv *urb_priv ;
  int is_iso ;
  int hash ;
  struct td *tmp ;
  __hc16 *tmp___0 ;
  {
  urb_priv = (struct urb_priv *)urb->hcpriv;
  is_iso = (int )info & 65536;
  if ((int )urb_priv->length + -1 != index || (urb->transfer_flags & 128U) != 0U) {
    info = info | 12582912U;
  } else {
  }
  td_pt = urb_priv->td[index];
  tmp = (urb_priv->ed)->dummy;
  urb_priv->td[index] = tmp;
  td = tmp;
  (urb_priv->ed)->dummy = td_pt;
  td->ed = urb_priv->ed;
  td->next_dl_td = (struct td *)0;
  td->index = (__u8 )index;
  td->urb = urb;
  td->data_dma = data;
  if (len == 0) {
    data = 0ULL;
  } else {
  }
  td->hwINFO = cpu_to_hc32((struct ohci_hcd const *)ohci, info);
  if (is_iso != 0) {
    td->hwCBP = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )data & 4294963200U);
    tmp___0 = ohci_hwPSWp((struct ohci_hcd const *)ohci, (struct td const *)td,
                          0);
    *tmp___0 = cpu_to_hc16((struct ohci_hcd const *)ohci, (int )(((unsigned int )((u16 const )data) & 4095U) | 57344U));
  } else {
    td->hwCBP = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )data);
  }
  if (data != 0ULL) {
    td->hwBE = cpu_to_hc32((struct ohci_hcd const *)ohci, ((u32 const )data + (u32 const )len) - 1U);
  } else {
    td->hwBE = 0U;
  }
  td->hwNextTD = cpu_to_hc32((struct ohci_hcd const *)ohci, (u32 const )td_pt->td_dma);
  list_add_tail(& td->td_list, & (td->ed)->td_list);
  hash = (int )((unsigned int )td->td_dma ^ (unsigned int )(td->td_dma >> 6)) & 63;
  td->td_hash = ohci->td_hash[hash];
  ohci->td_hash[hash] = td;
  __asm__ volatile ("sfence": : : "memory");
  (td->ed)->hwTailP = td->hwNextTD;
  return;
}
}
static void td_submit_urb(struct ohci_hcd *ohci , struct urb *urb )
{
  struct urb_priv *urb_priv ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  dma_addr_t data ;
  int data_len ;
  int cnt ;
  u32 info ;
  int is_out ;
  int periodic ;
  int i ;
  int this_sg_len ;
  int n ;
  struct scatterlist *sg ;
  __hc32 tmp___0 ;
  int __min1 ;
  int __min2 ;
  struct usb_hcd *tmp___1 ;
  int tmp___2 ;
  struct usb_hcd *tmp___3 ;
  int tmp___4 ;
  int _min1 ;
  int _min2 ;
  int __min1___0 ;
  int __min2___0 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int frame ;
  int tmp___8 ;
  int tmp___9 ;
  struct usb_hcd *tmp___10 ;
  struct usb_hcd *tmp___11 ;
  int tmp___12 ;
  struct usb_hcd *tmp___13 ;
  int tmp___14 ;
  {
  urb_priv = (struct urb_priv *)urb->hcpriv;
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  dev = tmp->self.controller;
  data_len = (int )urb->transfer_buffer_length;
  cnt = 0;
  info = 0U;
  is_out = (urb->pipe & 128U) == 0U;
  periodic = 0;
  if ((((urb->dev)->toggle[is_out] >> ((int )(urb->pipe >> 15) & 15)) & 1U) == 0U) {
    (urb->dev)->toggle[is_out] = ((urb->dev)->toggle[is_out] & (unsigned int )(~ (1 << ((int )(urb->pipe >> 15) & 15)))) | (unsigned int )(1 << ((int )(urb->pipe >> 15) & 15));
    tmp___0 = cpu_to_hc32((struct ohci_hcd const *)ohci, 2U);
    (urb_priv->ed)->hwHeadP = (urb_priv->ed)->hwHeadP & ~ tmp___0;
  } else {
  }
  list_add(& urb_priv->pending, & ohci->pending);
  i = urb->num_mapped_sgs;
  if (data_len > 0 && i > 0) {
    sg = urb->sg;
    data = sg->dma_address;
    __min1 = (int )sg->dma_length;
    __min2 = data_len;
    this_sg_len = __min1 < __min2 ? __min1 : __min2;
  } else {
    sg = (struct scatterlist *)0;
    if (data_len != 0) {
      data = urb->transfer_dma;
    } else {
      data = 0ULL;
    }
    this_sg_len = data_len;
  }
  switch ((int )(urb_priv->ed)->type) {
  case 1:
  tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___2 = tmp___1->self.bandwidth_int_reqs;
  tmp___1->self.bandwidth_int_reqs = tmp___1->self.bandwidth_int_reqs + 1;
  if (tmp___2 == 0) {
    tmp___3 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    if (tmp___3->self.bandwidth_isoc_reqs == 0) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  } else {
    tmp___4 = 0;
  }
  periodic = tmp___4;
  case 3:
  info = is_out != 0 ? 4027056128U : 4027580416U;
  ldv_36339:
  _min1 = this_sg_len;
  _min2 = 4096;
  n = _min1 < _min2 ? _min1 : _min2;
  if (n >= data_len || (i == 1 && n >= this_sg_len)) {
    if ((urb->transfer_flags & 1U) == 0U) {
      info = info | 262144U;
    } else {
    }
  } else {
  }
  td_fill(ohci, info, data, n, urb, cnt);
  this_sg_len = this_sg_len - n;
  data_len = data_len - n;
  data = (dma_addr_t )n + data;
  cnt = cnt + 1;
  if (this_sg_len <= 0) {
    i = i - 1;
    if (i <= 0 || data_len <= 0) {
      goto ldv_36335;
    } else {
    }
    sg = sg_next(sg);
    data = sg->dma_address;
    __min1___0 = (int )sg->dma_length;
    __min2___0 = data_len;
    this_sg_len = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  } else {
  }
  goto ldv_36339;
  ldv_36335: ;
  if ((urb->transfer_flags & 64U) != 0U && (int )urb_priv->length > cnt) {
    td_fill(ohci, info, 0ULL, 0, urb, cnt);
    cnt = cnt + 1;
  } else {
  }
  if ((unsigned int )(urb_priv->ed)->type == 3U) {
    __asm__ volatile ("sfence": : : "memory");
    _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->cmdstatus);
  } else {
  }
  goto ldv_36340;
  case 2:
  info = 4060086272U;
  tmp___5 = cnt;
  cnt = cnt + 1;
  td_fill(ohci, info, urb->setup_dma, 8, urb, tmp___5);
  if (data_len > 0) {
    info = 4077125632U;
    info = (is_out != 0 ? 524288U : 1048576U) | info;
    tmp___6 = cnt;
    cnt = cnt + 1;
    td_fill(ohci, info, data, data_len, urb, tmp___6);
  } else {
  }
  info = is_out != 0 || data_len == 0 ? 4077912064U : 4077387776U;
  tmp___7 = cnt;
  cnt = cnt + 1;
  td_fill(ohci, info, data, 0, urb, tmp___7);
  __asm__ volatile ("sfence": : : "memory");
  _ohci_writel((struct ohci_hcd const *)ohci, 2U, & (ohci->regs)->cmdstatus);
  goto ldv_36340;
  case 0:
  cnt = (int )urb_priv->td_cnt;
  goto ldv_36345;
  ldv_36344:
  frame = urb->start_frame;
  frame = urb->interval * cnt + frame;
  frame = frame & 65535;
  td_fill(ohci, (unsigned int )frame | 4026597376U, (dma_addr_t )urb->iso_frame_desc[cnt].offset + data,
          (int )urb->iso_frame_desc[cnt].length, urb, cnt);
  cnt = cnt + 1;
  ldv_36345: ;
  if (urb->number_of_packets > cnt) {
    goto ldv_36344;
  } else {
  }
  tmp___10 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  if (tmp___10->self.bandwidth_isoc_reqs == 0) {
    tmp___8 = quirk_amdiso(ohci);
    if (tmp___8 != 0) {
      usb_amd_quirk_pll_disable();
    } else {
    }
    tmp___9 = quirk_amdprefetch(ohci);
    if (tmp___9 != 0) {
      sb800_prefetch(dev, 1);
    } else {
    }
  } else {
  }
  tmp___11 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  tmp___12 = tmp___11->self.bandwidth_isoc_reqs;
  tmp___11->self.bandwidth_isoc_reqs = tmp___11->self.bandwidth_isoc_reqs + 1;
  if (tmp___12 == 0) {
    tmp___13 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    if (tmp___13->self.bandwidth_int_reqs == 0) {
      tmp___14 = 1;
    } else {
      tmp___14 = 0;
    }
  } else {
    tmp___14 = 0;
  }
  periodic = tmp___14;
  goto ldv_36340;
  }
  ldv_36340: ;
  if (periodic != 0) {
    __asm__ volatile ("sfence": : : "memory");
    ohci->hc_control = ohci->hc_control | 12U;
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  } else {
  }
  return;
}
}
static int td_done(struct ohci_hcd *ohci , struct urb *urb , struct td *td )
{
  u32 tdINFO ;
  u32 tmp ;
  int cc ;
  int status ;
  u16 tdPSW ;
  u16 tmp___0 ;
  int dlen ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int type ;
  u32 tdBE ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  tmp = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwINFO));
  tdINFO = tmp;
  cc = 0;
  status = -115;
  list_del(& td->td_list);
  if ((tdINFO & 65536U) != 0U) {
    tmp___0 = ohci_hwPSW((struct ohci_hcd const *)ohci, (struct td const *)td,
                         0);
    tdPSW = tmp___0;
    dlen = 0;
    cc = ((int )tdPSW >> 12) & 15;
    if ((tdINFO & 4026531840U) != 0U) {
      return (status);
    } else {
    }
    if ((urb->pipe & 128U) == 0U) {
      dlen = (int )urb->iso_frame_desc[(int )td->index].length;
    } else {
      if (cc == 9) {
        cc = 0;
      } else {
      }
      dlen = (int )tdPSW & 1023;
    }
    urb->actual_length = urb->actual_length + (u32 )dlen;
    urb->iso_frame_desc[(int )td->index].actual_length = (unsigned int )dlen;
    urb->iso_frame_desc[(int )td->index].status = cc_to_error[cc];
    if (cc != 0) {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "td_done";
      descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
      descriptor.format = "urb %p iso td %p (%d) len %d cc %d\n";
      descriptor.lineno = 790U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                          "urb %p iso td %p (%d) len %d cc %d\n", urb, td, (int )td->index + 1,
                          dlen, cc);
      } else {
      }
    } else {
    }
  } else {
    type = (int )(urb->pipe >> 30);
    tmp___3 = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwBE));
    tdBE = tmp___3;
    cc = (int )(tdINFO >> 28);
    if (cc == 9 && (urb->transfer_flags & 1U) == 0U) {
      cc = 0;
    } else {
    }
    if (cc != 0 && cc <= 13) {
      status = cc_to_error[cc];
    } else {
    }
    if ((type != 2 || (unsigned int )td->index != 0U) && tdBE != 0U) {
      if (td->hwCBP == 0U) {
        urb->actual_length = (urb->actual_length + (tdBE - (u32 )td->data_dma)) + 1U;
      } else {
        tmp___4 = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwCBP));
        urb->actual_length = urb->actual_length + (tmp___4 - (u32 )td->data_dma);
      }
    } else {
    }
    if (cc != 0 && cc <= 13) {
      descriptor___0.modname = "ohci_hcd";
      descriptor___0.function = "td_done";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
      descriptor___0.format = "urb %p td %p (%d) cc %d, len=%d/%d\n";
      descriptor___0.lineno = 824U;
      descriptor___0.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___5->self.controller,
                          "urb %p td %p (%d) cc %d, len=%d/%d\n", urb, td, (int )td->index + 1,
                          cc, urb->actual_length, urb->transfer_buffer_length);
      } else {
      }
    } else {
    }
  }
  return (status);
}
}
static void ed_halted(struct ohci_hcd *ohci , struct td *td , int cc )
{
  struct urb *urb ;
  urb_priv_t *urb_priv ;
  struct ed *ed ;
  struct list_head *tmp ;
  __hc32 toggle ;
  __hc32 tmp___0 ;
  __hc32 tmp___1 ;
  __hc32 tmp___2 ;
  struct td *next ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor ;
  u32 tmp___3 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  {
  urb = td->urb;
  urb_priv = (urb_priv_t *)urb->hcpriv;
  ed = td->ed;
  tmp = td->td_list.next;
  tmp___0 = cpu_to_hc32((struct ohci_hcd const *)ohci, 2U);
  toggle = ed->hwHeadP & tmp___0;
  tmp___1 = cpu_to_hc32((struct ohci_hcd const *)ohci, 16384U);
  ed->hwINFO = ed->hwINFO | tmp___1;
  __asm__ volatile ("sfence": : : "memory");
  tmp___2 = cpu_to_hc32((struct ohci_hcd const *)ohci, 1U);
  ed->hwHeadP = ed->hwHeadP & ~ tmp___2;
  goto ldv_36377;
  ldv_36376:
  __mptr = (struct list_head const *)tmp;
  next = (struct td *)__mptr + 0xffffffffffffffb8UL;
  tmp = next->td_list.next;
  if ((unsigned long )next->urb != (unsigned long )urb) {
    goto ldv_36375;
  } else {
  }
  list_del(& next->td_list);
  urb_priv->td_cnt = (u16 )((int )urb_priv->td_cnt + 1);
  ed->hwHeadP = next->hwNextTD | toggle;
  ldv_36377: ;
  if ((unsigned long )(& ed->td_list) != (unsigned long )tmp) {
    goto ldv_36376;
  } else {
  }
  ldv_36375: ;
  switch (cc) {
  case 9: ;
  if ((urb->transfer_flags & 1U) == 0U) {
    goto ldv_36379;
  } else {
  }
  case 4: ;
  if (urb->pipe >> 30 == 2U) {
    goto ldv_36379;
  } else {
  }
  default:
  descriptor.modname = "ohci_hcd";
  descriptor.function = "ed_halted";
  descriptor.filename = "/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/usb/host/ohci-q.c";
  descriptor.format = "urb %p path %s ep%d%s %08x cc %d --> status %d\n";
  descriptor.lineno = 892U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___3 = hc32_to_cpu((struct ohci_hcd const *)ohci, td->hwINFO);
    tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                      "urb %p path %s ep%d%s %08x cc %d --> status %d\n", urb, (char *)(& (urb->dev)->devpath),
                      (urb->pipe >> 15) & 15U, (urb->pipe & 128U) != 0U ? (char *)"in" : (char *)"out",
                      tmp___3, cc, cc_to_error[cc]);
  } else {
  }
  }
  ldv_36379: ;
  return;
}
}
static void add_to_done_list(struct ohci_hcd *ohci , struct td *td )
{
  struct td *td2 ;
  struct td *td_prev ;
  struct ed *ed ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct td *tmp ;
  {
  if ((unsigned long )td->next_dl_td != (unsigned long )((struct td *)0)) {
    return;
  } else {
  }
  ed = td->ed;
  td_prev = td;
  td2 = td_prev;
  __mptr = (struct list_head const *)td2->td_list.prev;
  td2 = (struct td *)__mptr + 0xffffffffffffffb8UL;
  goto ldv_36397;
  ldv_36396: ;
  if ((unsigned long )td2->next_dl_td != (unsigned long )((struct td *)0)) {
    goto ldv_36395;
  } else {
  }
  td2->next_dl_td = td_prev;
  td_prev = td2;
  __mptr___0 = (struct list_head const *)td2->td_list.prev;
  td2 = (struct td *)__mptr___0 + 0xffffffffffffffb8UL;
  ldv_36397: ;
  if ((unsigned long )(& td2->td_list) != (unsigned long )(& ed->td_list)) {
    goto ldv_36396;
  } else {
  }
  ldv_36395: ;
  if ((unsigned long )ohci->dl_end != (unsigned long )((struct td *)0)) {
    (ohci->dl_end)->next_dl_td = td_prev;
  } else {
    ohci->dl_start = td_prev;
  }
  tmp = td;
  td->next_dl_td = tmp;
  ohci->dl_end = tmp;
  td2 = ed->pending_td;
  if ((unsigned long )td2 != (unsigned long )((struct td *)0) && (unsigned long )td2->next_dl_td != (unsigned long )((struct td *)0)) {
    ed->pending_td = (struct td *)0;
  } else {
  }
  return;
}
}
static void update_done_list(struct ohci_hcd *ohci )
{
  u32 td_dma ;
  struct td *td ;
  int cc ;
  struct usb_hcd *tmp ;
  __hc32 tmp___0 ;
  u32 tmp___1 ;
  __hc32 tmp___2 ;
  {
  td = (struct td *)0;
  td_dma = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& (ohci->hcca)->done_head));
  (ohci->hcca)->done_head = 0U;
  __asm__ volatile ("sfence": : : "memory");
  goto ldv_36406;
  ldv_36405:
  td = dma_to_td(ohci, (dma_addr_t )td_dma);
  if ((unsigned long )td == (unsigned long )((struct td *)0)) {
    tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_err((struct device const *)tmp->self.controller, "bad entry %8x\n", td_dma);
    goto ldv_36404;
  } else {
  }
  tmp___0 = cpu_to_hc32((struct ohci_hcd const *)ohci, 131072U);
  td->hwINFO = td->hwINFO | tmp___0;
  tmp___1 = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwINFO));
  cc = (int )(tmp___1 >> 28);
  if (cc != 0) {
    tmp___2 = cpu_to_hc32((struct ohci_hcd const *)ohci, 1U);
    if (((td->ed)->hwHeadP & tmp___2) != 0U) {
      ed_halted(ohci, td, cc);
    } else {
    }
  } else {
  }
  td_dma = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td->hwNextTD));
  add_to_done_list(ohci, td);
  ldv_36406: ;
  if (td_dma != 0U) {
    goto ldv_36405;
  } else {
  }
  ldv_36404: ;
  return;
}
}
static void finish_unlinks(struct ohci_hcd *ohci )
{
  unsigned int tick ;
  u16 tmp ;
  struct ed *ed ;
  struct ed **last ;
  struct list_head *entry ;
  struct list_head *tmp___0 ;
  int completed ;
  int modified ;
  __hc32 *prev ;
  long tmp___1 ;
  struct td *td ;
  u32 head ;
  struct list_head const *__mptr ;
  u32 tmp___2 ;
  int tmp___3 ;
  __hc32 tmp___4 ;
  __hc32 tmp___5 ;
  struct td *td___0 ;
  struct urb *urb ;
  urb_priv_t *urb_priv ;
  __hc32 savebits ;
  u32 tdINFO ;
  struct list_head const *__mptr___0 ;
  __hc32 tmp___6 ;
  __hc32 tmp___7 ;
  __hc32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  u32 command ;
  u32 control ;
  unsigned long __ms ;
  unsigned long tmp___11 ;
  int tmp___12 ;
  unsigned long __ms___0 ;
  unsigned long tmp___13 ;
  int tmp___14 ;
  unsigned long __ms___1 ;
  unsigned long tmp___15 ;
  int tmp___16 ;
  unsigned long __ms___2 ;
  unsigned long tmp___17 ;
  int tmp___18 ;
  {
  tmp = ohci_frame_no((struct ohci_hcd const *)ohci);
  tick = (unsigned int )tmp;
  rescan_all:
  last = & ohci->ed_rm_list;
  ed = *last;
  goto ldv_36439;
  ldv_36438: ;
  if ((unsigned int )ed->state == 0U) {
    goto ed_idle;
  } else {
  }
  tmp___1 = ldv__builtin_expect((unsigned int )ohci->rh_state == 2U, 1L);
  if (tmp___1 != 0L && (int )((short )((int )((unsigned short )tick) - (int )ed->tick)) < 0) {
    skip_ed:
    last = & ed->ed_next;
    goto ldv_36421;
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& ed->td_list));
  if (tmp___3 == 0) {
    __mptr = (struct list_head const *)ed->td_list.next;
    td = (struct td *)__mptr + 0xffffffffffffffb8UL;
    tmp___2 = hc32_to_cpu((struct ohci_hcd const *)ohci, ed->hwHeadP);
    head = tmp___2 & 4294967264U;
    if (td->td_dma != (dma_addr_t )head && (unsigned int )ohci->rh_state == 2U) {
      goto skip_ed;
    } else {
    }
    if ((unsigned long )td->next_dl_td != (unsigned long )((struct td *)0)) {
      goto skip_ed;
    } else {
    }
  } else {
  }
  ed->state = 0U;
  tmp___4 = cpu_to_hc32((struct ohci_hcd const *)ohci, 1U);
  ed->hwHeadP = ed->hwHeadP & ~ tmp___4;
  ed->hwNextED = 0U;
  __asm__ volatile ("sfence": : : "memory");
  tmp___5 = cpu_to_hc32((struct ohci_hcd const *)ohci, 134234112U);
  ed->hwINFO = ed->hwINFO & ~ tmp___5;
  ed_idle:
  modified = 0;
  rescan_this:
  completed = 0;
  prev = & ed->hwHeadP;
  entry = ed->td_list.next;
  tmp___0 = entry->next;
  goto ldv_36436;
  ldv_36435:
  __mptr___0 = (struct list_head const *)entry;
  td___0 = (struct td *)__mptr___0 + 0xffffffffffffffb8UL;
  urb = td___0->urb;
  urb_priv = (urb_priv_t *)(td___0->urb)->hcpriv;
  if (urb->unlinked == 0) {
    prev = & td___0->hwNextTD;
    goto ldv_36434;
  } else {
  }
  tmp___6 = cpu_to_hc32((struct ohci_hcd const *)ohci, 4294967264U);
  savebits = *prev & ~ tmp___6;
  *prev = td___0->hwNextTD | savebits;
  tdINFO = hc32_to_cpup((struct ohci_hcd const *)ohci, (__hc32 const *)(& td___0->hwINFO));
  if ((tdINFO & 50331648U) == 33554432U) {
    tmp___7 = cpu_to_hc32((struct ohci_hcd const *)ohci, 2U);
    ed->hwHeadP = ed->hwHeadP & ~ tmp___7;
  } else
  if ((tdINFO & 50331648U) == 50331648U) {
    tmp___8 = cpu_to_hc32((struct ohci_hcd const *)ohci, 2U);
    ed->hwHeadP = ed->hwHeadP | tmp___8;
  } else {
  }
  td_done(ohci, urb, td___0);
  urb_priv->td_cnt = (u16 )((int )urb_priv->td_cnt + 1);
  if ((int )urb_priv->td_cnt >= (int )urb_priv->length) {
    completed = 1;
    modified = completed;
    finish_urb(ohci, urb, 0);
  } else {
  }
  ldv_36434:
  entry = tmp___0;
  tmp___0 = entry->next;
  ldv_36436: ;
  if ((unsigned long )(& ed->td_list) != (unsigned long )entry) {
    goto ldv_36435;
  } else {
  }
  if (completed != 0) {
    tmp___9 = list_empty((struct list_head const *)(& ed->td_list));
    if (tmp___9 == 0) {
      goto rescan_this;
    } else {
    }
  } else {
  }
  tmp___10 = list_empty((struct list_head const *)(& ed->td_list));
  if (tmp___10 != 0) {
    *last = ed->ed_next;
    ed->ed_next = (struct ed *)0;
    list_del(& ed->in_use_list);
  } else
  if ((unsigned int )ohci->rh_state == 2U) {
    *last = ed->ed_next;
    ed->ed_next = (struct ed *)0;
    ed_schedule(ohci, ed);
  } else {
    last = & ed->ed_next;
  }
  if (modified != 0) {
    goto rescan_all;
  } else {
  }
  ldv_36421:
  ed = *last;
  ldv_36439: ;
  if ((unsigned long )ed != (unsigned long )((struct ed *)0)) {
    goto ldv_36438;
  } else {
  }
  if ((unsigned int )ohci->rh_state == 2U && (unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) {
    command = 0U;
    control = 0U;
    if ((unsigned long )ohci->ed_controltail != (unsigned long )((struct ed *)0)) {
      command = command | 2U;
      tmp___12 = quirk_zfmicro(ohci);
      if (tmp___12 != 0) {
        if (1) {
          __const_udelay(4295000UL);
        } else {
          __ms = 1UL;
          goto ldv_36445;
          ldv_36444:
          __const_udelay(4295000UL);
          ldv_36445:
          tmp___11 = __ms;
          __ms = __ms - 1UL;
          if (tmp___11 != 0UL) {
            goto ldv_36444;
          } else {
          }
        }
      } else {
      }
      if ((ohci->hc_control & 16U) == 0U) {
        control = control | 16U;
        _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_controlcurrent);
      } else {
      }
    } else {
    }
    if ((unsigned long )ohci->ed_bulktail != (unsigned long )((struct ed *)0)) {
      command = command | 4U;
      tmp___14 = quirk_zfmicro(ohci);
      if (tmp___14 != 0) {
        if (1) {
          __const_udelay(4295000UL);
        } else {
          __ms___0 = 1UL;
          goto ldv_36449;
          ldv_36448:
          __const_udelay(4295000UL);
          ldv_36449:
          tmp___13 = __ms___0;
          __ms___0 = __ms___0 - 1UL;
          if (tmp___13 != 0UL) {
            goto ldv_36448;
          } else {
          }
        }
      } else {
      }
      if ((ohci->hc_control & 32U) == 0U) {
        control = control | 32U;
        _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_bulkcurrent);
      } else {
      }
    } else {
    }
    if (control != 0U) {
      ohci->hc_control = ohci->hc_control | control;
      tmp___16 = quirk_zfmicro(ohci);
      if (tmp___16 != 0) {
        if (1) {
          __const_udelay(4295000UL);
        } else {
          __ms___1 = 1UL;
          goto ldv_36453;
          ldv_36452:
          __const_udelay(4295000UL);
          ldv_36453:
          tmp___15 = __ms___1;
          __ms___1 = __ms___1 - 1UL;
          if (tmp___15 != 0UL) {
            goto ldv_36452;
          } else {
          }
        }
      } else {
      }
      _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    } else {
    }
    if (command != 0U) {
      tmp___18 = quirk_zfmicro(ohci);
      if (tmp___18 != 0) {
        if (1) {
          __const_udelay(4295000UL);
        } else {
          __ms___2 = 1UL;
          goto ldv_36457;
          ldv_36456:
          __const_udelay(4295000UL);
          ldv_36457:
          tmp___17 = __ms___2;
          __ms___2 = __ms___2 - 1UL;
          if (tmp___17 != 0UL) {
            goto ldv_36456;
          } else {
          }
        }
      } else {
      }
      _ohci_writel((struct ohci_hcd const *)ohci, command, & (ohci->regs)->cmdstatus);
    } else {
    }
  } else {
  }
  return;
}
}
static void takeback_td(struct ohci_hcd *ohci , struct td *td )
{
  struct urb *urb ;
  urb_priv_t *urb_priv ;
  struct ed *ed ;
  int status ;
  struct list_head const *__mptr ;
  __hc32 tmp ;
  __hc32 tmp___0 ;
  __hc32 tmp___1 ;
  __hc32 tmp___2 ;
  int tmp___3 ;
  {
  urb = td->urb;
  urb_priv = (urb_priv_t *)urb->hcpriv;
  ed = td->ed;
  status = td_done(ohci, urb, td);
  urb_priv->td_cnt = (u16 )((int )urb_priv->td_cnt + 1);
  if ((int )urb_priv->td_cnt >= (int )urb_priv->length) {
    finish_urb(ohci, urb, status);
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& ed->td_list));
  if (tmp___3 != 0) {
    if ((unsigned int )ed->state == 2U) {
      start_ed_unlink(ohci, ed);
    } else {
    }
  } else {
    tmp___1 = cpu_to_hc32((struct ohci_hcd const *)ohci, 134234112U);
    tmp___2 = cpu_to_hc32((struct ohci_hcd const *)ohci, 16384U);
    if ((ed->hwINFO & tmp___1) == tmp___2) {
      __mptr = (struct list_head const *)ed->td_list.next;
      td = (struct td *)__mptr + 0xffffffffffffffb8UL;
      tmp___0 = cpu_to_hc32((struct ohci_hcd const *)ohci, 131072U);
      if ((td->hwINFO & tmp___0) == 0U) {
        tmp = cpu_to_hc32((struct ohci_hcd const *)ohci, 16384U);
        ed->hwINFO = ed->hwINFO & ~ tmp;
        switch ((int )ed->type) {
        case 2:
        _ohci_writel((struct ohci_hcd const *)ohci, 2U, & (ohci->regs)->cmdstatus);
        goto ldv_36470;
        case 3:
        _ohci_writel((struct ohci_hcd const *)ohci, 4U, & (ohci->regs)->cmdstatus);
        goto ldv_36470;
        }
        ldv_36470: ;
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void process_done_list(struct ohci_hcd *ohci )
{
  struct td *td ;
  struct td *tmp ;
  {
  goto ldv_36477;
  ldv_36476:
  td = ohci->dl_start;
  if ((unsigned long )ohci->dl_end == (unsigned long )td) {
    tmp = (struct td *)0;
    ohci->dl_end = tmp;
    ohci->dl_start = tmp;
  } else {
    ohci->dl_start = td->next_dl_td;
  }
  takeback_td(ohci, td);
  ldv_36477: ;
  if ((unsigned long )ohci->dl_start != (unsigned long )((struct td *)0)) {
    goto ldv_36476;
  } else {
  }
  return;
}
}
static void ohci_work(struct ohci_hcd *ohci )
{
  {
  if ((unsigned int )*((unsigned char *)ohci + 1116UL) != 0U) {
    ohci->restart_work = 1U;
    return;
  } else {
  }
  ohci->working = 1U;
  restart:
  process_done_list(ohci);
  if ((unsigned long )ohci->ed_rm_list != (unsigned long )((struct ed *)0)) {
    finish_unlinks(ohci);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ohci + 1116UL) != 0U) {
    ohci->restart_work = 0U;
    goto restart;
  } else {
  }
  ohci->working = 0U;
  return;
}
}
static bool distrust_firmware = 1;
static bool no_handshake = 0;
static int number_of_tds(struct urb *urb )
{
  int len ;
  int i ;
  int num ;
  int this_sg_len ;
  struct scatterlist *sg ;
  int __min1 ;
  int __min2 ;
  {
  len = (int )urb->transfer_buffer_length;
  i = urb->num_mapped_sgs;
  if (len > 0 && i > 0) {
    num = 0;
    sg = urb->sg;
    ldv_36535:
    __min1 = (int )sg->dma_length;
    __min2 = len;
    this_sg_len = __min1 < __min2 ? __min1 : __min2;
    num = (this_sg_len + 4095) / 4096 + num;
    len = len - this_sg_len;
    i = i - 1;
    if (i <= 0 || len <= 0) {
      goto ldv_36534;
    } else {
    }
    sg = sg_next(sg);
    goto ldv_36535;
    ldv_36534: ;
  } else {
    num = (len + 4095) / 4096;
  }
  return (num);
}
}
static int ohci_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  struct ed *ed ;
  urb_priv_t *urb_priv ;
  unsigned int pipe ;
  int i ;
  int size ;
  unsigned long flags ;
  int retval ;
  int tmp___0 ;
  __u16 tmp___1 ;
  void *tmp___2 ;
  u16 tmp___3 ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u16 frame ;
  u16 tmp___7 ;
  u16 __max1 ;
  u16 __max2 ;
  u16 next ;
  u16 tmp___8 ;
  u16 frame___0 ;
  u16 length ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  pipe = urb->pipe;
  size = 0;
  retval = 0;
  ed = ed_get(ohci, urb->ep, urb->dev, pipe, urb->interval);
  if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
    return (-12);
  } else {
  }
  switch ((int )ed->type) {
  case 2: ;
  if (urb->transfer_buffer_length > 4096U) {
    return (-90);
  } else {
  }
  size = 2;
  default:
  tmp___0 = number_of_tds(urb);
  size = tmp___0 + size;
  if (size == 0) {
    size = size + 1;
  } else
  if ((urb->transfer_flags & 64U) != 0U) {
    tmp___1 = usb_maxpacket(urb->dev, (int )pipe, (pipe & 128U) == 0U);
    if (urb->transfer_buffer_length % (u32 )tmp___1 == 0U) {
      size = size + 1;
    } else {
    }
  } else {
  }
  goto ldv_36551;
  case 0:
  size = urb->number_of_packets;
  goto ldv_36551;
  }
  ldv_36551:
  tmp___2 = kmalloc(((unsigned long )size + 4UL) * 8UL, mem_flags);
  urb_priv = (urb_priv_t *)tmp___2;
  if ((unsigned long )urb_priv == (unsigned long )((urb_priv_t *)0)) {
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& urb_priv->pending);
  urb_priv->length = (u16 )size;
  urb_priv->ed = ed;
  i = 0;
  goto ldv_36554;
  ldv_36553:
  urb_priv->td[i] = td_alloc(ohci, mem_flags);
  if ((unsigned long )urb_priv->td[i] == (unsigned long )((struct td *)0)) {
    urb_priv->length = (u16 )i;
    urb_free_priv(ohci, urb_priv);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_36554: ;
  if (i < size) {
    goto ldv_36553;
  } else {
  }
  ldv_spin_lock();
  if ((hcd->flags & 1UL) == 0UL) {
    retval = -19;
    goto fail;
  } else {
  }
  if ((unsigned int )ohci->rh_state != 2U) {
    retval = -19;
    goto fail;
  } else {
  }
  retval = usb_hcd_link_urb_to_ep(hcd, urb);
  if (retval != 0) {
    goto fail;
  } else {
  }
  if ((unsigned int )ed->state == 0U) {
    retval = ed_schedule(ohci, ed);
    if (retval < 0) {
      usb_hcd_unlink_urb_from_ep(hcd, urb);
      goto fail;
    } else {
    }
    tmp___5 = timer_pending((struct timer_list const *)(& ohci->io_watchdog));
    if (tmp___5 == 0) {
      tmp___6 = list_empty((struct list_head const *)(& ohci->eds_in_use));
      if (tmp___6 != 0) {
        tmp___3 = ohci_frame_no((struct ohci_hcd const *)ohci);
        ohci->prev_frame_no = (unsigned int )tmp___3;
        tmp___4 = msecs_to_jiffies(250U);
        ldv_mod_timer_27(& ohci->io_watchdog, tmp___4 + (unsigned long )jiffies);
      } else {
      }
    } else {
    }
    list_add(& ed->in_use_list, & ohci->eds_in_use);
    if ((unsigned int )ed->type == 0U) {
      tmp___7 = ohci_frame_no((struct ohci_hcd const *)ohci);
      frame = tmp___7;
      __max1 = 8U;
      __max2 = ed->interval;
      frame = (int )((u16 )((int )__max1 > (int )__max2 ? __max1 : __max2)) + (int )frame;
      frame = (u16 )((int )((short )(- ((int )ed->interval))) & (int )((short )frame));
      frame = (int )((u16 )ed->branch) | (int )frame;
      urb->start_frame = (int )frame;
      ed->last_iso = (int )ed->interval * (int )((u16 )(size + -1)) + (int )frame;
    } else {
    }
  } else
  if ((unsigned int )ed->type == 0U) {
    tmp___8 = ohci_frame_no((struct ohci_hcd const *)ohci);
    next = (unsigned int )tmp___8 + 1U;
    frame___0 = (int )ed->last_iso + (int )ed->interval;
    length = (int )ed->interval * (int )((u16 )(size + -1));
    tmp___11 = ldv__builtin_expect((int )((short )((int )frame___0 - (int )next)) < 0,
                                0L);
    if (tmp___11 != 0L) {
      if ((urb->transfer_flags & 2U) != 0U) {
        frame___0 = (int )((u16 )((int )((short )((unsigned int )(((int )next - (int )frame___0) + (int )ed->interval) + 65535U)) & (int )((short )(- ((int )ed->interval))))) + (int )frame___0;
      } else {
        urb_priv->td_cnt = (u16 )(((((int )next - (int )frame___0) + (int )ed->interval) + -1) / (int )ed->interval);
        if ((int )urb_priv->td_cnt >= (int )urb_priv->length) {
          urb_priv->td_cnt = (u16 )((int )urb_priv->td_cnt + 1);
          descriptor.modname = "ohci_hcd";
          descriptor.function = "ohci_urb_enqueue";
          descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
          descriptor.format = "iso underrun %p (%u+%u < %u)\n";
          descriptor.lineno = 283U;
          descriptor.flags = 0U;
          tmp___10 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
          if (tmp___10 != 0L) {
            tmp___9 = ohci_to_hcd((struct ohci_hcd const *)ohci);
            __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___9->self.controller,
                              "iso underrun %p (%u+%u < %u)\n", urb, (int )frame___0,
                              (int )length, (int )next);
          } else {
          }
        } else {
        }
      }
    } else {
    }
    urb->start_frame = (int )frame___0;
    ed->last_iso = (int )frame___0 + (int )length;
  } else {
  }
  urb->hcpriv = (void *)urb_priv;
  td_submit_urb(ohci, urb);
  fail: ;
  if (retval != 0) {
    urb_free_priv(ohci, urb_priv);
  } else {
  }
  spin_unlock_irqrestore(& ohci->lock, flags);
  return (retval);
}
}
static int ohci_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  unsigned long flags ;
  int rc ;
  urb_priv_t *urb_priv ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ldv_spin_lock();
  rc = usb_hcd_check_unlink_urb(hcd, urb, status);
  if (rc == 0) {
    urb_priv = (urb_priv_t *)urb->hcpriv;
    if ((unsigned int )(urb_priv->ed)->state == 2U) {
      start_ed_unlink(ohci, urb_priv->ed);
    } else {
    }
    if ((unsigned int )ohci->rh_state != 2U) {
      ohci_work(ohci);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& ohci->lock, flags);
  return (rc);
}
}
static void ohci_endpoint_disable(struct usb_hcd *hcd , struct usb_host_endpoint *ep )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  unsigned long flags ;
  struct ed *ed ;
  unsigned int limit ;
  struct usb_hcd *tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ed = (struct ed *)ep->hcpriv;
  limit = 1000U;
  if ((unsigned long )ed == (unsigned long )((struct ed *)0)) {
    return;
  } else {
  }
  rescan:
  ldv_spin_lock();
  if ((unsigned int )ohci->rh_state != 2U) {
    sanitize:
    ed->state = 0U;
    ohci_work(ohci);
  } else {
  }
  switch ((int )ed->state) {
  case 1:
  tmp___1 = limit;
  limit = limit - 1U;
  if (tmp___1 == 0U) {
    tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_warn((struct device const *)tmp___0->self.controller, "ED unlink timeout\n");
    goto sanitize;
  } else {
  }
  spin_unlock_irqrestore(& ohci->lock, flags);
  schedule_timeout_uninterruptible(1L);
  goto rescan;
  case 0:
  tmp___2 = list_empty((struct list_head const *)(& ed->td_list));
  if (tmp___2 != 0) {
    td_free(ohci, ed->dummy);
    ed_free(ohci, ed);
    goto ldv_36587;
  } else {
  }
  default:
  tmp___3 = list_empty((struct list_head const *)(& ed->td_list));
  tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
  dev_err((struct device const *)tmp___4->self.controller, "leak ed %p (#%02x) state %d%s\n",
          ed, (int )ep->desc.bEndpointAddress, (int )ed->state, tmp___3 != 0 ? (char *)"" : (char *)" (has tds)");
  td_free(ohci, ed->dummy);
  goto ldv_36587;
  }
  ldv_36587:
  ep->hcpriv = (void *)0;
  spin_unlock_irqrestore(& ohci->lock, flags);
  return;
}
}
static int ohci_get_frame(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  u16 tmp___0 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  tmp___0 = ohci_frame_no((struct ohci_hcd const *)ohci);
  return ((int )tmp___0);
}
}
static void ohci_usb_reset(struct ohci_hcd *ohci )
{
  {
  ohci->hc_control = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  ohci->hc_control = ohci->hc_control & 512U;
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  ohci->rh_state = 0;
  return;
}
}
static void ohci_shutdown(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  {
  ohci = hcd_to_ohci(hcd);
  _ohci_writel((struct ohci_hcd const *)ohci, 4294967295U, & (ohci->regs)->intrdisable);
  _ohci_writel((struct ohci_hcd const *)ohci, 1U, & (ohci->regs)->cmdstatus);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->cmdstatus);
  __const_udelay(42950UL);
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->fminterval, & (ohci->regs)->fminterval);
  ohci->rh_state = 0;
  return;
}
}
static int ohci_init(struct ohci_hcd *ohci )
{
  int ret ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  u32 tmp___6 ;
  unsigned long tmp___7 ;
  void *tmp___8 ;
  {
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  hcd = tmp;
  hcd->self.sg_tablesize = 4294967295U;
  if ((int )distrust_firmware) {
    ohci->flags = ohci->flags | 256UL;
  } else {
  }
  ohci->rh_state = 0;
  ohci->regs = (struct ohci_regs *)hcd->regs;
  if (! no_handshake) {
    tmp___4 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
    if ((tmp___4 & 256U) != 0U) {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "ohci_init";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
      descriptor.format = "USB HC TakeOver from BIOS/SMM\n";
      descriptor.lineno = 465U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "USB HC TakeOver from BIOS/SMM\n");
      } else {
      }
      temp = 500U;
      _ohci_writel((struct ohci_hcd const *)ohci, 1073741824U, & (ohci->regs)->intrenable);
      _ohci_writel((struct ohci_hcd const *)ohci, 8U, & (ohci->regs)->cmdstatus);
      goto ldv_36609;
      ldv_36608:
      msleep(10U);
      temp = temp - 1U;
      if (temp == 0U) {
        tmp___2 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        dev_err((struct device const *)tmp___2->self.controller, "USB HC takeover failed!  (BIOS/SMM bug)\n");
        return (-16);
      } else {
      }
      ldv_36609:
      tmp___3 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
      if ((tmp___3 & 256U) != 0U) {
        goto ldv_36608;
      } else {
      }
      ohci_usb_reset(ohci);
    } else {
    }
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 2147483648U, & (ohci->regs)->intrdisable);
  tmp___5 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if ((tmp___5 & 512U) != 0U) {
    ohci->hc_control = ohci->hc_control | 512U;
  } else {
  }
  if (ohci->num_ports == 0) {
    tmp___6 = roothub_a(ohci);
    ohci->num_ports = (int )tmp___6 & 255;
  } else {
  }
  if ((unsigned long )ohci->hcca != (unsigned long )((struct ohci_hcca *)0)) {
    return (0);
  } else {
  }
  reg_timer_1(& ohci->io_watchdog, & io_watchdog_func, (unsigned long )ohci);
  tmp___7 = msecs_to_jiffies(20U);
  set_timer_slack(& ohci->io_watchdog, (int )tmp___7);
  tmp___8 = dma_alloc_attrs(hcd->self.controller, 256UL, & ohci->hcca_dma, 208U, (struct dma_attrs *)0);
  ohci->hcca = (struct ohci_hcca *)tmp___8;
  if ((unsigned long )ohci->hcca == (unsigned long )((struct ohci_hcca *)0)) {
    return (-12);
  } else {
  }
  ret = ohci_mem_init(ohci);
  if (ret < 0) {
    ohci_stop(hcd);
  } else {
    create_debug_files(ohci);
  }
  return (ret);
}
}
static int ohci_run(struct ohci_hcd *ohci )
{
  u32 mask ;
  u32 val ;
  int first ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  unsigned int tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  struct usb_hcd *tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned long tmp___11 ;
  unsigned long __ms ;
  unsigned long tmp___12 ;
  {
  first = ohci->fminterval == 0U;
  tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
  hcd = tmp;
  ohci->rh_state = 0;
  if (first != 0) {
    val = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fminterval);
    ohci->fminterval = val & 16383U;
    if (ohci->fminterval != 11999U) {
      descriptor.modname = "ohci_hcd";
      descriptor.function = "ohci_run";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
      descriptor.format = "fminterval delta %d\n";
      descriptor.lineno = 540U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "fminterval delta %d\n", ohci->fminterval - 11999U);
      } else {
      }
    } else {
    }
    ohci->fminterval = ohci->fminterval | (((ohci->fminterval * 6U + 4294966036U) / 7U & 32767U) << 16);
  } else {
  }
  if ((ohci->hc_control & 512U) != 0U) {
    device_set_wakeup_capable(hcd->self.controller, 1);
  } else {
  }
  switch (ohci->hc_control & 192U) {
  case 128U:
  val = 0U;
  goto ldv_36621;
  case 192U: ;
  case 64U:
  ohci->hc_control = ohci->hc_control & 512U;
  ohci->hc_control = ohci->hc_control | 64U;
  val = 10U;
  goto ldv_36621;
  default:
  ohci->hc_control = ohci->hc_control & 512U;
  ohci->hc_control = ohci->hc_control;
  val = 50U;
  goto ldv_36621;
  }
  ldv_36621:
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  msleep(val);
  memset((void *)ohci->hcca, 0, 256UL);
  spin_lock_irq(& ohci->lock);
  retry:
  _ohci_writel((struct ohci_hcd const *)ohci, 1U, & (ohci->regs)->cmdstatus);
  val = 30U;
  goto ldv_36627;
  ldv_36626:
  val = val - 1U;
  if (val == 0U) {
    spin_unlock_irq(& ohci->lock);
    tmp___2 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_err((struct device const *)tmp___2->self.controller, "USB HC reset timed out!\n");
    return (-1);
  } else {
  }
  __const_udelay(4295UL);
  ldv_36627:
  tmp___3 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->cmdstatus);
  if ((int )tmp___3 & 1) {
    goto ldv_36626;
  } else {
  }
  if ((ohci->flags & 4UL) != 0UL) {
    _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
    _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_controlhead);
  _ohci_writel((struct ohci_hcd const *)ohci, 0U, & (ohci->regs)->ed_bulkhead);
  _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int )ohci->hcca_dma, & (ohci->regs)->hcca);
  periodic_reinit(ohci);
  tmp___9 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fminterval);
  if ((tmp___9 & 1073676288U) == 0U) {
    goto _L;
  } else {
    tmp___10 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->periodicstart);
    if (tmp___10 == 0U) {
      _L:
      if ((ohci->flags & 4UL) == 0UL) {
        ohci->flags = ohci->flags | 4UL;
        descriptor___0.modname = "ohci_hcd";
        descriptor___0.function = "ohci_run";
        descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
        descriptor___0.format = "enabling initreset quirk\n";
        descriptor___0.lineno = 626U;
        descriptor___0.flags = 0U;
        tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___5 != 0L) {
          tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
          __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                            "enabling initreset quirk\n");
        } else {
        }
        goto retry;
      } else {
      }
      spin_unlock_irq(& ohci->lock);
      tmp___6 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->periodicstart);
      tmp___7 = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->fminterval);
      tmp___8 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      dev_err((struct device const *)tmp___8->self.controller, "init err (%08x %04x)\n",
              tmp___7, tmp___6);
      return (-75);
    } else {
    }
  }
  set_bit(2L, (unsigned long volatile *)(& hcd->flags));
  hcd->uses_new_polling = 1U;
  ohci->hc_control = ohci->hc_control & 512U;
  ohci->hc_control = ohci->hc_control | 131U;
  _ohci_writel((struct ohci_hcd const *)ohci, ohci->hc_control, & (ohci->regs)->control);
  ohci->rh_state = 2;
  _ohci_writel((struct ohci_hcd const *)ohci, 32768U, & (ohci->regs)->roothub.status);
  mask = 2147483738U;
  _ohci_writel((struct ohci_hcd const *)ohci, 4294967295U, & (ohci->regs)->intrstatus);
  _ohci_writel((struct ohci_hcd const *)ohci, mask, & (ohci->regs)->intrenable);
  val = roothub_a(ohci);
  val = val & 4294964991U;
  if ((ohci->flags & 2UL) != 0UL) {
    val = val | 4096U;
    val = val & 16776703U;
    _ohci_writel((struct ohci_hcd const *)ohci, val, & (ohci->regs)->roothub.a);
  } else
  if ((int )ohci->flags & 1 || (ohci->flags & 256UL) != 0UL) {
    val = val | 512U;
    _ohci_writel((struct ohci_hcd const *)ohci, val, & (ohci->regs)->roothub.a);
  } else {
  }
  _ohci_writel((struct ohci_hcd const *)ohci, 65536U, & (ohci->regs)->roothub.status);
  _ohci_writel((struct ohci_hcd const *)ohci, (val & 512U) != 0U ? 0U : 4294901760U,
               & (ohci->regs)->roothub.b);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  tmp___11 = msecs_to_jiffies(300U);
  ohci->next_statechange = tmp___11 + (unsigned long )jiffies;
  spin_unlock_irq(& ohci->lock);
  __ms = (unsigned long )(val >> 23) & 510UL;
  goto ldv_36632;
  ldv_36631:
  __const_udelay(4295000UL);
  ldv_36632:
  tmp___12 = __ms;
  __ms = __ms - 1UL;
  if (tmp___12 != 0UL) {
    goto ldv_36631;
  } else {
  }
  ohci_dump(ohci);
  return (0);
}
}
int ohci_setup(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int tmp___0 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ohci_hcd_init(ohci);
  tmp___0 = ohci_init(ohci);
  return (tmp___0);
}
}
static char const __kstrtab_ohci_setup[11U] =
  { 'o', 'h', 'c', 'i',
        '_', 's', 'e', 't',
        'u', 'p', '\000'};
struct kernel_symbol const __ksymtab_ohci_setup ;
struct kernel_symbol const __ksymtab_ohci_setup = {(unsigned long )(& ohci_setup), (char const *)(& __kstrtab_ohci_setup)};
static int ohci_start(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int ret ;
  struct usb_hcd *tmp___0 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ret = ohci_run(ohci);
  if (ret < 0) {
    tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_err((struct device const *)tmp___0->self.controller, "can\'t start\n");
    ohci_stop(hcd);
  } else {
  }
  return (ret);
}
}
static void io_watchdog_func(unsigned long _ohci )
{
  struct ohci_hcd *ohci ;
  bool takeback_all_pending ;
  u32 status ;
  u32 head ;
  struct ed *ed ;
  struct td *td ;
  struct td *td_start ;
  struct td *td_next ;
  unsigned int frame_no ;
  unsigned long flags ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct list_head const *__mptr ;
  unsigned int tmp___2 ;
  u32 tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  __hc32 __var ;
  u32 tmp___6 ;
  struct list_head const *__mptr___2 ;
  struct td *tmp___7 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  u16 tmp___8 ;
  int active_cnt ;
  int i ;
  unsigned int tmp___9 ;
  struct usb_hcd *tmp___10 ;
  unsigned long tmp___11 ;
  int tmp___12 ;
  {
  ohci = (struct ohci_hcd *)_ohci;
  takeback_all_pending = 0;
  ldv_spin_lock();
  status = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->intrstatus);
  if ((status & 2U) == 0U && ohci->wdh_cnt == ohci->prev_wdh_cnt) {
    if (ohci->prev_donehead != 0U) {
      tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
      dev_err((struct device const *)tmp->self.controller, "HcDoneHead not written back; disabled\n");
      died:
      tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      usb_hc_died(tmp___0);
      ohci_dump(ohci);
      tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      ohci_shutdown(tmp___1);
      goto done;
    } else {
      takeback_all_pending = 1;
    }
  } else {
  }
  __mptr = (struct list_head const *)ohci->eds_in_use.next;
  ed = (struct ed *)__mptr + 0xffffffffffffffc0UL;
  goto ldv_36691;
  ldv_36690: ;
  if ((unsigned long )ed->pending_td != (unsigned long )((struct td *)0)) {
    if ((int )takeback_all_pending || (int )(ohci->wdh_cnt - ed->takeback_wdh_cnt) >= 0) {
      tmp___3 = hc32_to_cpu((struct ohci_hcd const *)ohci, ed->hwINFO);
      tmp___2 = tmp___3;
      descriptor.modname = "ohci_hcd";
      descriptor.function = "io_watchdog_func";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
      descriptor.format = "takeback pending TD for dev %d ep 0x%x\n";
      descriptor.lineno = 770U;
      descriptor.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                          "takeback pending TD for dev %d ep 0x%x\n", tmp___2 & 127U,
                          ((tmp___2 >> 7) & 15U) + ((tmp___2 & 4096U) >> 5));
      } else {
      }
      add_to_done_list(ohci, ed->pending_td);
    } else {
    }
  } else {
  }
  td = ed->pending_td;
  if ((unsigned long )td == (unsigned long )((struct td *)0)) {
    __mptr___0 = (struct list_head const *)ed->td_list.next;
    td_next = (struct td *)__mptr___0 + 0xffffffffffffffb8UL;
    goto ldv_36678;
    ldv_36677: ;
    if ((unsigned long )td_next->next_dl_td == (unsigned long )((struct td *)0)) {
      goto ldv_36676;
    } else {
    }
    td = td_next;
    __mptr___1 = (struct list_head const *)td_next->td_list.next;
    td_next = (struct td *)__mptr___1 + 0xffffffffffffffb8UL;
    ldv_36678: ;
    if ((unsigned long )(& td_next->td_list) != (unsigned long )(& ed->td_list)) {
      goto ldv_36677;
    } else {
    }
    ldv_36676: ;
  } else {
  }
  __var = 0U;
  tmp___6 = hc32_to_cpu((struct ohci_hcd const *)ohci, *((__hc32 volatile *)(& ed->hwHeadP)));
  head = tmp___6 & 4294967264U;
  td_start = td;
  tmp___7 = (unsigned long )td != (unsigned long )((struct td *)0);
  if (tmp___7) {
  } else {
    __mptr___2 = (struct list_head const *)(& ed->td_list);
    tmp___7 = (struct td *)__mptr___2 + 0xffffffffffffffb8UL;
  }
  td_next = tmp___7;
  __mptr___3 = (struct list_head const *)td_next->td_list.next;
  td_next = (struct td *)__mptr___3 + 0xffffffffffffffb8UL;
  goto ldv_36689;
  ldv_36688: ;
  if ((u32 )td_next->td_dma == head) {
    goto ldv_36687;
  } else {
  }
  td = td_next;
  __mptr___4 = (struct list_head const *)td_next->td_list.next;
  td_next = (struct td *)__mptr___4 + 0xffffffffffffffb8UL;
  ldv_36689: ;
  if ((unsigned long )(& td_next->td_list) != (unsigned long )(& ed->td_list)) {
    goto ldv_36688;
  } else {
  }
  ldv_36687: ;
  if ((unsigned long )td != (unsigned long )td_start) {
    ed->takeback_wdh_cnt = ohci->wdh_cnt + 2U;
    ed->pending_td = td;
  } else {
  }
  __mptr___5 = (struct list_head const *)ed->in_use_list.next;
  ed = (struct ed *)__mptr___5 + 0xffffffffffffffc0UL;
  ldv_36691: ;
  if ((unsigned long )(& ed->in_use_list) != (unsigned long )(& ohci->eds_in_use)) {
    goto ldv_36690;
  } else {
  }
  ohci_work(ohci);
  if ((unsigned int )ohci->rh_state == 2U) {
    tmp___8 = ohci_frame_no((struct ohci_hcd const *)ohci);
    frame_no = (unsigned int )tmp___8;
    if (ohci->prev_frame_no == frame_no) {
      active_cnt = 0;
      i = 0;
      goto ldv_36697;
      ldv_36696:
      tmp___9 = roothub_portstatus(ohci, i);
      if ((tmp___9 & 2U) != 0U && (tmp___9 & 4U) == 0U) {
        active_cnt = active_cnt + 1;
      } else {
      }
      i = i + 1;
      ldv_36697: ;
      if (ohci->num_ports > i) {
        goto ldv_36696;
      } else {
      }
      if (active_cnt > 0) {
        tmp___10 = ohci_to_hcd((struct ohci_hcd const *)ohci);
        dev_err((struct device const *)tmp___10->self.controller, "frame counter not updating; disabled\n");
        goto died;
      } else {
      }
    } else {
    }
    tmp___12 = list_empty((struct list_head const *)(& ohci->eds_in_use));
    if (tmp___12 == 0) {
      ohci->prev_frame_no = frame_no;
      ohci->prev_wdh_cnt = ohci->wdh_cnt;
      ohci->prev_donehead = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->donehead);
      tmp___11 = msecs_to_jiffies(250U);
      ldv_mod_timer_28(& ohci->io_watchdog, tmp___11 + (unsigned long )jiffies);
    } else {
    }
  } else {
  }
  done:
  spin_unlock_irqrestore(& ohci->lock, flags);
  return;
}
}
static irqreturn_t ohci_irq(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  struct ohci_regs *regs ;
  int ints ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  unsigned long tmp___10 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  regs = ohci->regs;
  tmp___0 = _ohci_readl((struct ohci_hcd const *)ohci, & regs->intrstatus);
  ints = (int )tmp___0;
  if (ints == -1) {
    ohci->rh_state = 0;
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_irq";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
    descriptor.format = "device removed!\n";
    descriptor.lineno = 870U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "device removed!\n");
    } else {
    }
    usb_hc_died(hcd);
    return (1);
  } else {
  }
  tmp___3 = _ohci_readl((struct ohci_hcd const *)ohci, & regs->intrenable);
  ints = (int )(tmp___3 & (unsigned int )ints);
  if (ints == 0) {
    return (0);
  } else {
    tmp___4 = ldv__builtin_expect((unsigned int )ohci->rh_state == 0U, 0L);
    if (tmp___4 != 0L) {
      return (0);
    } else {
    }
  }
  if ((ints & 16) != 0) {
    tmp___7 = quirk_nec(ohci);
    if (tmp___7 != 0) {
      tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      dev_err((struct device const *)tmp___5->self.controller, "OHCI Unrecoverable Error, scheduling NEC chip restart\n");
      _ohci_writel((struct ohci_hcd const *)ohci, 16U, & regs->intrdisable);
      schedule_work(& ohci->nec_work);
    } else {
      tmp___6 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      dev_err((struct device const *)tmp___6->self.controller, "OHCI Unrecoverable Error, disabled\n");
      ohci->rh_state = 0;
      usb_hc_died(hcd);
    }
    ohci_dump(ohci);
    ohci_usb_reset(ohci);
  } else {
  }
  if ((ints & 64) != 0) {
    descriptor___0.modname = "ohci_hcd";
    descriptor___0.function = "ohci_irq";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
    descriptor___0.format = "rhsc\n";
    descriptor___0.lineno = 904U;
    descriptor___0.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___8->self.controller,
                        "rhsc\n");
    } else {
    }
    tmp___10 = msecs_to_jiffies(300U);
    ohci->next_statechange = tmp___10 + (unsigned long )jiffies;
    _ohci_writel((struct ohci_hcd const *)ohci, 72U, & regs->intrstatus);
    _ohci_writel((struct ohci_hcd const *)ohci, 64U, & regs->intrdisable);
    usb_hcd_poll_rh_status(hcd);
  } else
  if ((ints & 8) != 0) {
    descriptor___1.modname = "ohci_hcd";
    descriptor___1.function = "ohci_irq";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
    descriptor___1.format = "resume detect\n";
    descriptor___1.lineno = 926U;
    descriptor___1.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___11->self.controller,
                        "resume detect\n");
    } else {
    }
    _ohci_writel((struct ohci_hcd const *)ohci, 8U, & regs->intrstatus);
    set_bit(2L, (unsigned long volatile *)(& hcd->flags));
    if ((unsigned int )*((unsigned char *)ohci + 1116UL) != 0U) {
      spin_lock(& ohci->lock);
      ohci_rh_resume(ohci);
      spin_unlock(& ohci->lock);
    } else {
      usb_hcd_resume_root_hub(hcd);
    }
  } else {
  }
  spin_lock(& ohci->lock);
  if ((ints & 2) != 0) {
    update_done_list(ohci);
  } else {
  }
  ohci_work(ohci);
  if (((ints & 4) != 0 && (unsigned long )ohci->ed_rm_list == (unsigned long )((struct ed *)0)) && (unsigned int )ohci->rh_state == 2U) {
    _ohci_writel((struct ohci_hcd const *)ohci, 4U, & regs->intrdisable);
  } else {
  }
  if ((unsigned int )ohci->rh_state == 2U) {
    _ohci_writel((struct ohci_hcd const *)ohci, (unsigned int const )ints, & regs->intrstatus);
    if ((ints & 2) != 0) {
      ohci->wdh_cnt = ohci->wdh_cnt + 1U;
    } else {
    }
    _ohci_writel((struct ohci_hcd const *)ohci, 2147483648U, & regs->intrenable);
    _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  } else {
  }
  spin_unlock(& ohci->lock);
  return (1);
}
}
static void ohci_stop(struct usb_hcd *hcd )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  ohci_dump(ohci);
  tmp___0 = quirk_nec(ohci);
  if (tmp___0 != 0) {
    flush_work(& ohci->nec_work);
  } else {
  }
  ldv_del_timer_sync_29(& ohci->io_watchdog);
  _ohci_writel((struct ohci_hcd const *)ohci, 2147483648U, & (ohci->regs)->intrdisable);
  ohci_usb_reset(ohci);
  free_irq(hcd->irq, (void *)hcd);
  hcd->irq = 0U;
  tmp___1 = quirk_amdiso(ohci);
  if (tmp___1 != 0) {
    usb_amd_dev_put();
  } else {
  }
  remove_debug_files(ohci);
  ohci_mem_cleanup(ohci);
  if ((unsigned long )ohci->hcca != (unsigned long )((struct ohci_hcca *)0)) {
    dma_free_attrs(hcd->self.controller, 256UL, (void *)ohci->hcca, ohci->hcca_dma,
                   (struct dma_attrs *)0);
    ohci->hcca = (struct ohci_hcca *)0;
    ohci->hcca_dma = 0ULL;
  } else {
  }
  return;
}
}
int ohci_restart(struct ohci_hcd *ohci )
{
  int temp ;
  int i ;
  struct urb_priv *priv ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct urb *urb ;
  struct ed *ed ;
  __hc32 tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct list_head const *__mptr___0 ;
  struct usb_hcd *tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  ohci_init(ohci);
  spin_lock_irq(& ohci->lock);
  ohci->rh_state = 0;
  tmp___1 = list_empty((struct list_head const *)(& ohci->pending));
  if (tmp___1 == 0) {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_restart";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
    descriptor.format = "abort schedule...\n";
    descriptor.lineno = 1013U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "abort schedule...\n");
    } else {
    }
  } else {
  }
  __mptr = (struct list_head const *)ohci->pending.next;
  priv = (struct urb_priv *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_36733;
  ldv_36732:
  urb = (priv->td[0])->urb;
  ed = priv->ed;
  switch ((int )ed->state) {
  case 2:
  ed->state = 1U;
  tmp___2 = cpu_to_hc32((struct ohci_hcd const *)ohci, 134217728U);
  ed->hwINFO = ed->hwINFO | tmp___2;
  ed_deschedule(ohci, ed);
  ed->ed_next = ohci->ed_rm_list;
  ed->ed_prev = (struct ed *)0;
  ohci->ed_rm_list = ed;
  case 1: ;
  goto ldv_36729;
  default:
  descriptor___0.modname = "ohci_hcd";
  descriptor___0.function = "ohci_restart";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
  descriptor___0.format = "bogus ed %p state %d\n";
  descriptor___0.lineno = 1032U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "bogus ed %p state %d\n", ed, (int )ed->state);
  } else {
  }
  }
  ldv_36729: ;
  if (urb->unlinked == 0) {
    urb->unlinked = -108;
  } else {
  }
  __mptr___0 = (struct list_head const *)priv->pending.next;
  priv = (struct urb_priv *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_36733: ;
  if ((unsigned long )(& priv->pending) != (unsigned long )(& ohci->pending)) {
    goto ldv_36732;
  } else {
  }
  ohci_work(ohci);
  spin_unlock_irq(& ohci->lock);
  i = 0;
  goto ldv_36736;
  ldv_36735:
  ohci->load[i] = 0;
  i = i + 1;
  ldv_36736: ;
  if (i <= 31) {
    goto ldv_36735;
  } else {
  }
  i = 0;
  goto ldv_36739;
  ldv_36738:
  (ohci->hcca)->int_table[i] = 0U;
  i = i + 1;
  ldv_36739: ;
  if (i <= 31) {
    goto ldv_36738;
  } else {
  }
  ohci->ed_rm_list = (struct ed *)0;
  ohci->ed_controltail = (struct ed *)0;
  ohci->ed_bulktail = (struct ed *)0;
  temp = ohci_run(ohci);
  if (temp < 0) {
    tmp___5 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    dev_err((struct device const *)tmp___5->self.controller, "can\'t restart, %d\n",
            temp);
    return (temp);
  } else {
  }
  descriptor___1.modname = "ohci_hcd";
  descriptor___1.function = "ohci_restart";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
  descriptor___1.format = "restart complete\n";
  descriptor___1.lineno = 1058U;
  descriptor___1.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = ohci_to_hcd((struct ohci_hcd const *)ohci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "restart complete\n");
  } else {
  }
  return (0);
}
}
static char const __kstrtab_ohci_restart[13U] =
  { 'o', 'h', 'c', 'i',
        '_', 'r', 'e', 's',
        't', 'a', 'r', 't',
        '\000'};
struct kernel_symbol const __ksymtab_ohci_restart ;
struct kernel_symbol const __ksymtab_ohci_restart = {(unsigned long )(& ohci_restart), (char const *)(& __kstrtab_ohci_restart)};
int ohci_suspend(struct usb_hcd *hcd , bool do_wakeup )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  unsigned long flags ;
  int rc ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  rc = 0;
  ldv_spin_lock();
  _ohci_writel((struct ohci_hcd const *)ohci, 2147483648U, & (ohci->regs)->intrdisable);
  _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->intrdisable);
  clear_bit(0L, (unsigned long volatile *)(& hcd->flags));
  spin_unlock_irqrestore(& ohci->lock, flags);
  synchronize_irq(hcd->irq);
  if ((int )do_wakeup && (hcd->flags & 16UL) != 0UL) {
    ohci_resume(hcd, 0);
    rc = -16;
  } else {
  }
  return (rc);
}
}
static char const __kstrtab_ohci_suspend[13U] =
  { 'o', 'h', 'c', 'i',
        '_', 's', 'u', 's',
        'p', 'e', 'n', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_ohci_suspend ;
struct kernel_symbol const __ksymtab_ohci_suspend = {(unsigned long )(& ohci_suspend), (char const *)(& __kstrtab_ohci_suspend)};
int ohci_resume(struct usb_hcd *hcd , bool hibernated )
{
  struct ohci_hcd *ohci ;
  struct ohci_hcd *tmp ;
  int port ;
  bool need_reinit ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = hcd_to_ohci(hcd);
  ohci = tmp;
  need_reinit = 0;
  set_bit(0L, (unsigned long volatile *)(& hcd->flags));
  if ((int )hibernated) {
    ohci_usb_reset(ohci);
  } else {
  }
  ohci->hc_control = _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->control);
  if ((ohci->hc_control & 316U) != 0U) {
    need_reinit = 1;
  } else {
    switch (ohci->hc_control & 192U) {
    case 128U: ;
    case 0U:
    need_reinit = 1;
    }
  }
  if ((int )need_reinit) {
    spin_lock_irq(& ohci->lock);
    ohci_rh_resume(ohci);
    ohci_rh_suspend(ohci, 0);
    spin_unlock_irq(& ohci->lock);
  } else {
    descriptor.modname = "ohci_hcd";
    descriptor.function = "ohci_resume";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
    descriptor.format = "powerup ports\n";
    descriptor.lineno = 1129U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = ohci_to_hcd((struct ohci_hcd const *)ohci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "powerup ports\n");
    } else {
    }
    port = 0;
    goto ldv_36776;
    ldv_36775:
    _ohci_writel((struct ohci_hcd const *)ohci, 256U, (__hc32 *)(& (ohci->regs)->roothub.portstatus) + (unsigned long )port);
    port = port + 1;
    ldv_36776: ;
    if (ohci->num_ports > port) {
      goto ldv_36775;
    } else {
    }
    _ohci_writel((struct ohci_hcd const *)ohci, 2147483648U, & (ohci->regs)->intrenable);
    _ohci_readl((struct ohci_hcd const *)ohci, & (ohci->regs)->intrenable);
    msleep(20U);
  }
  usb_hcd_resume_root_hub(hcd);
  return (0);
}
}
static char const __kstrtab_ohci_resume[12U] =
  { 'o', 'h', 'c', 'i',
        '_', 'r', 'e', 's',
        'u', 'm', 'e', '\000'};
struct kernel_symbol const __ksymtab_ohci_resume ;
struct kernel_symbol const __ksymtab_ohci_resume = {(unsigned long )(& ohci_resume), (char const *)(& __kstrtab_ohci_resume)};
static struct hc_driver const ohci_hc_driver =
     {(char const *)(& hcd_name), "OHCI Host Controller", 1384UL, & ohci_irq, 17,
    & ohci_setup, & ohci_start, 0, 0, & ohci_stop, & ohci_shutdown, & ohci_get_frame,
    & ohci_urb_enqueue, & ohci_urb_dequeue, 0, 0, & ohci_endpoint_disable, 0, & ohci_hub_status_data,
    & ohci_hub_control, & ohci_bus_suspend, & ohci_bus_resume, & ohci_start_port_reset,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void ohci_init_driver(struct hc_driver *drv , struct ohci_driver_overrides const *over )
{
  {
  *drv = ohci_hc_driver;
  if ((unsigned long )over != (unsigned long )((struct ohci_driver_overrides const *)0)) {
    drv->product_desc = over->product_desc;
    drv->hcd_priv_size = drv->hcd_priv_size + (unsigned long )over->extra_priv_size;
    if ((unsigned long )over->reset != (unsigned long )((int (* )(struct usb_hcd * ))0)) {
      drv->reset = over->reset;
    } else {
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_ohci_init_driver[17U] =
  { 'o', 'h', 'c', 'i',
        '_', 'i', 'n', 'i',
        't', '_', 'd', 'r',
        'i', 'v', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ohci_init_driver ;
struct kernel_symbol const __ksymtab_ohci_init_driver = {(unsigned long )(& ohci_init_driver), (char const *)(& __kstrtab_ohci_init_driver)};
static int ohci_hcd_mod_init(void)
{
  int retval ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  retval = 0;
  tmp = usb_disabled();
  if (tmp != 0) {
    return (-19);
  } else {
  }
  printk("\016%s: USB 1.1 \'Open\' Host Controller (OHCI) Driver\n", (char const *)(& hcd_name));
  descriptor.modname = "ohci_hcd";
  descriptor.function = "ohci_hcd_mod_init";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/9563/dscv_tempdir/dscv/ri/43_2a/drivers/usb/host/ohci-hcd.c";
  descriptor.format = "%s: block sizes: ed %Zd td %Zd\n";
  descriptor.lineno = 1267U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: block sizes: ed %Zd td %Zd\n", (char const *)(& hcd_name),
                       112UL, 96UL);
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& usb_hcds_loaded));
  ohci_debug_root = debugfs_create_dir("ohci", usb_debug_root);
  if ((unsigned long )ohci_debug_root == (unsigned long )((struct dentry *)0)) {
    retval = -2;
    goto error_debug;
  } else {
  }
  return (retval);
  debugfs_remove(ohci_debug_root);
  ohci_debug_root = (struct dentry *)0;
  error_debug:
  clear_bit(1L, (unsigned long volatile *)(& usb_hcds_loaded));
  return (retval);
}
}
static void ohci_hcd_mod_exit(void)
{
  {
  debugfs_remove(ohci_debug_root);
  clear_bit(1L, (unsigned long volatile *)(& usb_hcds_loaded));
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_4 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
void ldv_initialize_hc_driver_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(192UL);
  ohci_hc_driver_group0 = (struct urb *)tmp;
  tmp___0 = ldv_init_zalloc(968UL);
  ohci_hc_driver_group1 = (struct usb_hcd *)tmp___0;
  return;
}
}
void ldv_file_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  debug_registers_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  debug_registers_fops_group2 = (struct file *)tmp___0;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& io_watchdog_func)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_36864;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_36864;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_36864;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_36864;
  default:
  ldv_stop();
  }
  ldv_36864: ;
  return;
}
}
void ldv_file_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  debug_async_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  debug_async_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  io_watchdog_func(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void ldv_file_operations_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  debug_periodic_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  debug_periodic_fops_group2 = (struct file *)tmp___0;
  return;
}
}
int main(void)
{
  loff_t ldvarg1 ;
  char *ldvarg4 ;
  void *tmp ;
  size_t ldvarg3 ;
  int ldvarg0 ;
  loff_t *ldvarg2 ;
  void *tmp___0 ;
  size_t ldvarg8 ;
  loff_t *ldvarg7 ;
  void *tmp___1 ;
  char *ldvarg9 ;
  void *tmp___2 ;
  int ldvarg5 ;
  loff_t ldvarg6 ;
  struct usb_host_endpoint *ldvarg18 ;
  void *tmp___3 ;
  u16 ldvarg11 ;
  u16 ldvarg12 ;
  unsigned int ldvarg16 ;
  gfp_t ldvarg15 ;
  char *ldvarg14 ;
  void *tmp___4 ;
  char *ldvarg17 ;
  void *tmp___5 ;
  u16 ldvarg13 ;
  u16 ldvarg10 ;
  int ldvarg19 ;
  char *ldvarg24 ;
  void *tmp___6 ;
  loff_t ldvarg21 ;
  int ldvarg20 ;
  size_t ldvarg23 ;
  loff_t *ldvarg22 ;
  void *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg2 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg7 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(72UL);
  ldvarg18 = (struct usb_host_endpoint *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(8UL);
  ldvarg22 = (loff_t *)tmp___7;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 2UL);
  ldv_memset((void *)(& ldvarg12), 0, 2UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 2UL);
  ldv_memset((void *)(& ldvarg10), 0, 2UL);
  ldv_memset((void *)(& ldvarg19), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 8UL);
  ldv_memset((void *)(& ldvarg20), 0, 4UL);
  ldv_memset((void *)(& ldvarg23), 0, 8UL);
  ldv_state_variable_4 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_36964:
  tmp___8 = __VERIFIER_nondet_int();
  switch (tmp___8) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_4 == 2) {
      debug_close(debug_periodic_fops_group1, debug_periodic_fops_group2);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36919;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      debug_output(debug_periodic_fops_group2, ldvarg4, ldvarg3, ldvarg2);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_36919;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      default_llseek(debug_periodic_fops_group2, ldvarg1, ldvarg0);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_36919;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = debug_periodic_open(debug_periodic_fops_group1, debug_periodic_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36919;
    default:
    ldv_stop();
    }
    ldv_36919: ;
  } else {
  }
  goto ldv_36924;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_36924;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      ohci_hcd_mod_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_36929;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = ohci_hcd_mod_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_file_operations_5();
        ldv_state_variable_2 = 1;
        ldv_initialize_hc_driver_2();
        ldv_state_variable_3 = 1;
        ldv_file_operations_3();
        ldv_state_variable_4 = 1;
        ldv_file_operations_4();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_36929;
    default:
    ldv_stop();
    }
    ldv_36929: ;
  } else {
  }
  goto ldv_36924;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_3 == 2) {
      debug_close(debug_registers_fops_group1, debug_registers_fops_group2);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36934;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      debug_output(debug_registers_fops_group2, ldvarg9, ldvarg8, ldvarg7);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_36934;
    case 2: ;
    if (ldv_state_variable_3 == 2) {
      default_llseek(debug_registers_fops_group2, ldvarg6, ldvarg5);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_36934;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = debug_registers_open(debug_registers_fops_group1, debug_registers_fops_group2);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36934;
    default:
    ldv_stop();
    }
    ldv_36934: ;
  } else {
  }
  goto ldv_36924;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_3 = ohci_start(ohci_hc_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36941;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      ohci_urb_dequeue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg19);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_urb_dequeue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg19);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_urb_dequeue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg19);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 2: ;
    if (ldv_state_variable_2 == 1) {
      ohci_endpoint_disable(ohci_hc_driver_group1, ldvarg18);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_endpoint_disable(ohci_hc_driver_group1, ldvarg18);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_endpoint_disable(ohci_hc_driver_group1, ldvarg18);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 3: ;
    if (ldv_state_variable_2 == 1) {
      ohci_bus_resume(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_bus_resume(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_bus_resume(ohci_hc_driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      ohci_bus_suspend(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_bus_suspend(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_bus_suspend(ohci_hc_driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 5: ;
    if (ldv_state_variable_2 == 2) {
      ohci_shutdown(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_36941;
    case 6: ;
    if (ldv_state_variable_2 == 1) {
      ohci_setup(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_setup(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_setup(ohci_hc_driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 7: ;
    if (ldv_state_variable_2 == 1) {
      ohci_irq(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_irq(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_irq(ohci_hc_driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 8: ;
    if (ldv_state_variable_2 == 1) {
      ohci_hub_status_data(ohci_hc_driver_group1, ldvarg17);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_hub_status_data(ohci_hc_driver_group1, ldvarg17);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_hub_status_data(ohci_hc_driver_group1, ldvarg17);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 9: ;
    if (ldv_state_variable_2 == 3) {
      ohci_stop(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_stop(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36941;
    case 10: ;
    if (ldv_state_variable_2 == 1) {
      ohci_start_port_reset(ohci_hc_driver_group1, ldvarg16);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_start_port_reset(ohci_hc_driver_group1, ldvarg16);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_start_port_reset(ohci_hc_driver_group1, ldvarg16);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 11: ;
    if (ldv_state_variable_2 == 1) {
      ohci_urb_enqueue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg15);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_urb_enqueue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg15);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_urb_enqueue(ohci_hc_driver_group1, ohci_hc_driver_group0, ldvarg15);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 12: ;
    if (ldv_state_variable_2 == 1) {
      ohci_hub_control(ohci_hc_driver_group1, (int )ldvarg13, (int )ldvarg12, (int )ldvarg11,
                       ldvarg14, (int )ldvarg10);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_hub_control(ohci_hc_driver_group1, (int )ldvarg13, (int )ldvarg12, (int )ldvarg11,
                       ldvarg14, (int )ldvarg10);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_hub_control(ohci_hc_driver_group1, (int )ldvarg13, (int )ldvarg12, (int )ldvarg11,
                       ldvarg14, (int )ldvarg10);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    case 13: ;
    if (ldv_state_variable_2 == 1) {
      ohci_get_frame(ohci_hc_driver_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      ohci_get_frame(ohci_hc_driver_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ohci_get_frame(ohci_hc_driver_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_36941;
    default:
    ldv_stop();
    }
    ldv_36941: ;
  } else {
  }
  goto ldv_36924;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_5 == 2) {
      debug_close(debug_async_fops_group1, debug_async_fops_group2);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36958;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      debug_output(debug_async_fops_group2, ldvarg24, ldvarg23, ldvarg22);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_36958;
    case 2: ;
    if (ldv_state_variable_5 == 2) {
      default_llseek(debug_async_fops_group2, ldvarg21, ldvarg20);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_36958;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_4 = debug_async_open(debug_async_fops_group1, debug_async_fops_group2);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36958;
    default:
    ldv_stop();
    }
    ldv_36958: ;
  } else {
  }
  goto ldv_36924;
  default:
  ldv_stop();
  }
  ldv_36924: ;
  goto ldv_36964;
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
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_8(lock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_11(lock);
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
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(size);
  return (tmp);
}
}
int ldv_del_timer_sync_24(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void *ldv_dma_pool_alloc_25(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(96UL);
  return (tmp);
}
}
void *ldv_dma_pool_alloc_26(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(112UL);
  return (tmp);
}
}
int ldv_mod_timer_27(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
int ldv_mod_timer_28(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_29(struct timer_list *ldv_func_arg1 )
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
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t default_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void device_set_wakeup_capable(struct device *arg0, bool arg1) {
  return;
}
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_zeroed_page(gfp_t arg0) {
  return __VERIFIER_nondet_ulong();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
void list_del(struct list_head *arg0) {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void sb800_prefetch(struct device *arg0, int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void set_timer_slack(struct timer_list *arg0, int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void usb_amd_dev_put() {
  return;
}
void usb_amd_quirk_pll_disable() {
  return;
}
void usb_amd_quirk_pll_enable() {
  return;
}
long __VERIFIER_nondet_long(void);
long int usb_calc_bus_time(int arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int usb_disabled() {
  return __VERIFIER_nondet_int();
}
void usb_hc_died(struct usb_hcd *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_check_unlink_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_giveback_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_link_urb_to_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_poll_rh_status(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_resume_root_hub(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_unlink_urb_from_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return;
}
void usb_root_hub_lost_power(struct usb_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
