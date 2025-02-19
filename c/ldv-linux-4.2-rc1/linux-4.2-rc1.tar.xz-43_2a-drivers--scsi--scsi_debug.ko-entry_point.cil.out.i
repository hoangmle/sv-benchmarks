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
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __be64;
typedef __u16 __sum16;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_off_t off_t;
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
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   unsigned int flags ;
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
enum hrtimer_mode {
    HRTIMER_MODE_ABS = 0,
    HRTIMER_MODE_REL = 1,
    HRTIMER_MODE_PINNED = 2,
    HRTIMER_MODE_ABS_PINNED = 2,
    HRTIMER_MODE_REL_PINNED = 3
} ;
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
struct device_driver;
struct scsi_cmnd;
struct Scsi_Host;
struct scsi_device;
struct device_type;
struct class;
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
union __anonunion____missing_field_name_230 {
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
   union __anonunion____missing_field_name_230 __annonCompField64 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t __bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct bdi_writeback;
struct export_operations;
struct hd_geometry;
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
struct partition {
   unsigned char boot_ind ;
   unsigned char head ;
   unsigned char sector ;
   unsigned char cyl ;
   unsigned char sys_ind ;
   unsigned char end_head ;
   unsigned char end_sector ;
   unsigned char end_cyl ;
   __le32 start_sect ;
   __le32 nr_sects ;
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
struct proc_dir_entry;
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
struct sg_page_iter {
   struct scatterlist *sg ;
   unsigned int sg_pgoffset ;
   unsigned int __nents ;
   int __pg_advance ;
};
struct sg_mapping_iter {
   struct page *page ;
   void *addr ;
   size_t length ;
   size_t consumed ;
   struct sg_page_iter piter ;
   unsigned int __offset ;
   unsigned int __remaining ;
   unsigned int __flags ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
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
union __anonunion____missing_field_name_249 {
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
   union __anonunion____missing_field_name_249 __annonCompField76 ;
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
union __anonunion____missing_field_name_250 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_251 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_250 __annonCompField77 ;
   union __anonunion____missing_field_name_251 __annonCompField78 ;
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
struct blk_trace;
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
union __anonunion____missing_field_name_252 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_253 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_254 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_256 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_257 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_255 {
   struct __anonstruct_elv_256 elv ;
   struct __anonstruct_flush_257 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_252 __annonCompField79 ;
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
   union __anonunion____missing_field_name_253 __annonCompField80 ;
   union __anonunion____missing_field_name_254 __annonCompField81 ;
   union __anonunion____missing_field_name_255 __annonCompField82 ;
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
   struct blk_trace *blk_trace ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct scsi_lun {
   __u8 scsi_lun[8U] ;
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
struct scsi_target;
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
struct __anonstruct____missing_field_name_259 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_259 __annonCompField83 ;
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
union __anonunion____missing_field_name_260 {
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
   union __anonunion____missing_field_name_260 __annonCompField84 ;
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
struct sd_dif_tuple {
   __be16 guard_tag ;
   __be16 app_tag ;
   __be32 ref_tag ;
};
struct sdebug_dev_info;
struct opcode_info_t {
   u8 num_attached ;
   u8 opcode ;
   u16 sa ;
   u32 flags ;
   int (*pfp)(struct scsi_cmnd * , struct sdebug_dev_info * ) ;
   struct opcode_info_t const *arrp ;
   u8 len_mask[16U] ;
};
struct sdebug_scmd_extra_t {
   bool inj_recovered ;
   bool inj_transport ;
   bool inj_dif ;
   bool inj_dix ;
   bool inj_short ;
};
struct sdebug_host_info;
struct sdebug_dev_info {
   struct list_head dev_list ;
   unsigned int channel ;
   unsigned int target ;
   u64 lun ;
   struct sdebug_host_info *sdbg_host ;
   unsigned long uas_bm[1U] ;
   atomic_t num_in_q ;
   char stopped ;
   bool used ;
};
struct sdebug_host_info {
   struct list_head host_list ;
   struct Scsi_Host *shost ;
   struct device dev ;
   struct list_head dev_info_list ;
};
struct sdebug_hrtimer {
   struct hrtimer hrt ;
   int qa_indx ;
};
struct sdebug_queued_cmd {
   struct timer_list *cmnd_timerp ;
   struct tasklet_struct *tletp ;
   struct sdebug_hrtimer *sd_hrtp ;
   struct scsi_cmnd *a_cmnd ;
};
enum sdeb_cmd_data {
    SDEB_IN_DATA = 0,
    SDEB_IN_CDB = 1
} ;
struct unmap_block_desc {
   __be64 lba ;
   __be32 blocks ;
   __be32 __reserved ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef struct Scsi_Host *ldv_func_ret_type___5;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
extern unsigned long find_next_zero_bit(unsigned long const * , unsigned long ,
                                        unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
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
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )*p);
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
__inline static __u64 __swab64p(__u64 const *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(*p);
  return (tmp);
}
}
__inline static __u64 __be64_to_cpup(__be64 const *p )
{
  __u64 tmp ;
  {
  tmp = __swab64p(p);
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{
  __u32 tmp ;
  {
  tmp = __swab32p(p);
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  tmp = __swab16p(p);
  return (tmp);
}
}
extern unsigned long find_last_bit(unsigned long const * , unsigned long ) ;
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strncasecmp(char const * , char const * , size_t ) ;
__inline static void bitmap_zero(unsigned long *dst , unsigned int nbits )
{
  unsigned int len ;
  {
  len = (unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U;
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
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
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  default:
  __xadd_wrong_size();
  }
  ldv_5763: ;
  return (__ret + i);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
extern unsigned long _raw_read_lock_irqsave(rwlock_t * ) ;
extern unsigned long _raw_write_lock_irqsave(rwlock_t * ) ;
extern void _raw_read_unlock_irqrestore(rwlock_t * , unsigned long ) ;
extern void _raw_write_unlock_irqrestore(rwlock_t * , unsigned long ) ;
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
__inline static u64 get_jiffies_64(void)
{
  {
  return ((u64 )jiffies);
}
}
__inline static ktime_t ktime_set(s64 const secs , unsigned long const nsecs )
{
  ktime_t __constr_expr_0 ;
  long tmp ;
  ktime_t __constr_expr_1 ;
  {
  tmp = ldv__builtin_expect((long long )secs > 9223372035LL, 0L);
  if (tmp != 0L) {
    __constr_expr_0.tv64 = 9223372036854775807LL;
    return (__constr_expr_0);
  } else {
  }
  __constr_expr_1.tv64 = (long long )secs * 1000000000LL + (long long )nsecs;
  return (__constr_expr_1);
}
}
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 ) ;
extern bool capable(int ) ;
extern void hrtimer_init(struct hrtimer * , clockid_t , enum hrtimer_mode ) ;
extern void hrtimer_start_range_ns(struct hrtimer * , ktime_t , unsigned long ,
                                   enum hrtimer_mode const ) ;
__inline static void hrtimer_start(struct hrtimer *timer , ktime_t tim , enum hrtimer_mode const mode )
{
  {
  hrtimer_start_range_ns(timer, tim, 0UL, mode);
  return;
}
}
extern int hrtimer_cancel(struct hrtimer * ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
int ldv_state_variable_8 ;
struct device_driver *driver_attr_host_lock_group0 ;
int ldv_state_variable_15 ;
int ldv_state_variable_20 ;
struct device_driver *driver_attr_every_nth_group0 ;
struct device *pseudo_lld_bus_group0 ;
int ldv_state_variable_30 ;
int ldv_state_variable_0 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
struct device_driver *driver_attr_dsense_group0 ;
struct scsi_cmnd *sdebug_driver_template_group0 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
int ldv_state_variable_29 ;
int ldv_state_variable_17 ;
struct device_driver *driver_attr_add_host_group0 ;
struct device_driver *driver_attr_no_lun_0_group0 ;
int ldv_state_variable_19 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
int ldv_state_variable_24 ;
int ref_cnt ;
struct device_driver *driver_attr_max_queue_group0 ;
struct device_driver *driver_attr_virtual_gb_group0 ;
int ldv_state_variable_1 ;
struct timer_list *ldv_timer_list_1 ;
int ldv_state_variable_7 ;
struct device_driver *driver_attr_ndelay_group0 ;
struct device_driver *driver_attr_ptype_group0 ;
int ldv_state_variable_23 ;
struct device_driver *driver_attr_delay_group0 ;
struct device_driver *driver_attr_num_tgts_group0 ;
struct Scsi_Host *sdebug_driver_template_group1 ;
struct device_driver *driver_attr_strict_group0 ;
struct scsi_device *sdebug_driver_template_group2 ;
int ldv_state_variable_10 ;
struct device_driver *driver_attr_fake_rw_group0 ;
struct device_driver *driver_attr_opts_group0 ;
int ldv_state_variable_6 ;
int ldv_state_variable_16 ;
int ldv_state_variable_2 ;
int ldv_state_variable_25 ;
int ldv_state_variable_26 ;
int ldv_state_variable_28 ;
int ldv_state_variable_11 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_18 ;
struct device_driver *driver_attr_vpd_use_hostno_group0 ;
struct device_driver *driver_attr_removable_group0 ;
int ldv_state_variable_3 ;
int ldv_timer_state_1 = 0;
struct device_driver *driver_attr_max_luns_group0 ;
int ldv_state_variable_4 ;
void ldv_initialize_driver_attribute_20(void) ;
void ldv_initialize_driver_attribute_24(void) ;
void ldv_initialize_driver_attribute_6(void) ;
void ldv_initialize_driver_attribute_5(void) ;
void ldv_initialize_driver_attribute_15(void) ;
void ldv_initialize_driver_attribute_25(void) ;
void ldv_initialize_driver_attribute_18(void) ;
void ldv_initialize_driver_attribute_19(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_driver_attribute_26(void) ;
void ldv_initialize_driver_attribute_30(void) ;
void ldv_initialize_driver_attribute_29(void) ;
int reg_timer_1(struct timer_list *timer ) ;
void ldv_initialize_driver_attribute_23(void) ;
void ldv_initialize_scsi_host_template_3(void) ;
void ldv_initialize_driver_attribute_28(void) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void ldv_initialize_bus_type_2(void) ;
void ldv_initialize_driver_attribute_27(void) ;
void ldv_initialize_driver_attribute_14(void) ;
void choose_timer_1(struct timer_list *timer ) ;
void ldv_initialize_driver_attribute_4(void) ;
void ldv_initialize_driver_attribute_13(void) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int bus_register(struct bus_type * ) ;
extern void bus_unregister(struct bus_type * ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
extern int device_register(struct device * ) ;
extern void device_unregister(struct device * ) ;
extern struct device *__root_device_register(char const * , struct module * ) ;
extern void root_device_unregister(struct device * ) ;
void *ldv_vmalloc_27(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_28(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_29(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_30(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
extern size_t sg_copy_buffer(struct scatterlist * , unsigned int , void * , size_t ,
                             off_t , bool ) ;
extern size_t sg_copy_from_buffer(struct scatterlist * , unsigned int , void const * ,
                                  size_t ) ;
extern size_t sg_copy_to_buffer(struct scatterlist * , unsigned int , void * , size_t ) ;
extern void sg_miter_start(struct sg_mapping_iter * , struct scatterlist * , unsigned int ,
                           unsigned int ) ;
extern bool sg_miter_next(struct sg_mapping_iter * ) ;
extern void sg_miter_stop(struct sg_mapping_iter * ) ;
__inline static void queue_flag_set_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  __set_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  return;
}
}
extern void blk_queue_max_segment_size(struct request_queue * , unsigned int ) ;
extern __u16 crc_t10dif(unsigned char const * , size_t ) ;
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
extern void __tasklet_hi_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_hi_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_hi_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern __sum16 ip_compute_csum(void const * , int ) ;
__inline static u16 get_unaligned_be16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __be16_to_cpup((__be16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_be32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __be32_to_cpup((__be32 const *)p);
  return (tmp);
}
}
__inline static u64 get_unaligned_be64(void const *p )
{
  __u64 tmp ;
  {
  tmp = __be64_to_cpup((__be64 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be32(u32 val , void *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(val);
  *((__be32 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be64(u64 val , void *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(val);
  *((__be64 *)p) = tmp;
  return;
}
}
extern void sdev_prefix_printk(char const * , struct scsi_device const * , char const * ,
                               char const * , ...) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
__inline static void *scsi_cmd_priv(struct scsi_cmnd *cmd )
{
  {
  return ((void *)cmd + 1U);
}
}
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
__inline static int scsi_bidi_cmnd(struct scsi_cmnd *cmd )
{
  {
  return ((unsigned long )(cmd->request)->next_rq != (unsigned long )((struct request *)0) && (unsigned long )((cmd->request)->next_rq)->special != (unsigned long )((void *)0));
}
}
__inline static struct scsi_data_buffer *scsi_in(struct scsi_cmnd *cmd )
{
  int tmp ;
  {
  tmp = scsi_bidi_cmnd(cmd);
  return (tmp != 0 ? (struct scsi_data_buffer *)((cmd->request)->next_rq)->special : & cmd->sdb);
}
}
__inline static struct scsi_data_buffer *scsi_out(struct scsi_cmnd *cmd )
{
  {
  return (& cmd->sdb);
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
__inline static unsigned int scsi_prot_sg_count(struct scsi_cmnd *cmd )
{
  {
  return ((unsigned long )cmd->prot_sdb != (unsigned long )((struct scsi_data_buffer *)0) ? (cmd->prot_sdb)->table.nents : 0U);
}
}
__inline static struct scatterlist *scsi_prot_sglist(struct scsi_cmnd *cmd )
{
  {
  return ((unsigned long )cmd->prot_sdb != (unsigned long )((struct scsi_data_buffer *)0) ? (cmd->prot_sdb)->table.sgl : (struct scatterlist *)0);
}
}
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_31(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_24(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_32(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_24(host, dev, dev);
  return (tmp);
}
}
__inline static void scsi_host_set_prot(struct Scsi_Host *shost , unsigned int mask )
{
  {
  shost->prot_capabilities = mask;
  return;
}
}
__inline static void scsi_host_set_guard(struct Scsi_Host *shost , unsigned char type )
{
  {
  shost->prot_guard_type = type;
  return;
}
}
extern void scsi_build_sense_buffer(int , u8 * , u8 , u8 , u8 ) ;
__inline static int scsi_medium_access_command(struct scsi_cmnd *scmd )
{
  {
  switch ((int )*(scmd->cmnd)) {
  case 8: ;
  case 40: ;
  case 168: ;
  case 136: ;
  case 53: ;
  case 47: ;
  case 175: ;
  case 143: ;
  case 10: ;
  case 42: ;
  case 170: ;
  case 138: ;
  case 65: ;
  case 147: ;
  case 66: ;
  return (1);
  case 127: ;
  switch ((int )*(scmd->cmnd + 9UL)) {
  case 9: ;
  case 10: ;
  case 11: ;
  case 13: ;
  return (1);
  }
  }
  return (0);
}
}
static char const *scsi_debug_version_date = "20141022";
static unsigned char const opcode_ind_arr[256U] =
  { 4U, 21U, 0U, 3U,
        0U, 0U, 0U, 0U,
        9U, 0U, 10U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 1U, 0U,
        0U, 6U, 18U, 19U,
        0U, 0U, 5U, 11U,
        0U, 23U, 20U, 0U,
        0U, 0U, 0U, 0U,
        0U, 8U, 0U, 0U,
        9U, 0U, 10U, 0U,
        0U, 0U, 0U, 16U,
        0U, 0U, 0U, 0U,
        0U, 28U, 0U, 0U,
        0U, 0U, 0U, 26U,
        0U, 0U, 0U, 0U,
        0U, 27U, 24U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 7U, 0U, 0U,
        0U, 0U, 0U, 25U,
        0U, 6U, 18U, 19U,
        0U, 0U, 5U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 17U,
        0U, 0U, 0U, 0U,
        0U, 22U, 0U, 0U,
        9U, 29U, 10U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 27U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 12U, 13U,
        2U, 22U, 0U, 14U,
        15U, 0U, 0U, 0U,
        9U, 13U, 10U, 12U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static int resp_inquiry(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_report_luns(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_requests(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_mode_sense(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_mode_select(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_log_sense(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_readcap(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_read_dt0(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_write_dt0(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_start_stop(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_readcap16(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_get_lba_status(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_report_tgtpgs(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_unmap(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_rsup_opcodes(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_rsup_tmfs(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_write_same_10(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_write_same_16(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_xdwriteread_10(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_comp_write(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static int resp_write_buffer(struct scsi_cmnd *scp , struct sdebug_dev_info *devip ) ;
static struct opcode_info_t const msense_iarr[1U] = { {0U, 26U, 0U, 1U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {6U, 232U, 255U, 255U, 255U, 199U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static struct opcode_info_t const mselect_iarr[1U] = { {0U, 21U, 0U, 2U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {6U, 241U, 0U, 0U, 255U, 199U, 0U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static struct opcode_info_t const read_iarr[3U] = { {0U, 40U, 0U, 3073U, & resp_read_dt0, (struct opcode_info_t const *)0, {10U,
                                                                               255U,
                                                                               255U,
                                                                               255U,
                                                                               255U,
                                                                               255U,
                                                                               31U,
                                                                               255U,
                                                                               255U,
                                                                               199U,
                                                                               0U,
                                                                               0U,
                                                                               0U,
                                                                               0U,
                                                                               0U,
                                                                               0U}},
        {0U,
      8U, 0U, 3073U, & resp_read_dt0, (struct opcode_info_t const *)0, {6U, 255U,
                                                                          255U, 255U,
                                                                          255U, 199U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U,
                                                                          0U, 0U}},
        {0U,
      168U, 0U, 3073U, & resp_read_dt0, (struct opcode_info_t const *)0, {12U, 255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            159U,
                                                                            199U,
                                                                            0U, 0U,
                                                                            0U, 0U}}};
static struct opcode_info_t const write_iarr[3U] = { {0U, 42U, 0U, 3074U, & resp_write_dt0, (struct opcode_info_t const *)0, {10U,
                                                                                251U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                255U,
                                                                                31U,
                                                                                255U,
                                                                                255U,
                                                                                199U,
                                                                                0U,
                                                                                0U,
                                                                                0U,
                                                                                0U,
                                                                                0U,
                                                                                0U}},
        {0U,
      10U, 0U, 3074U, & resp_write_dt0, (struct opcode_info_t const *)0, {6U, 255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            199U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U}},
        {0U,
      170U, 0U, 3074U, & resp_write_dt0, (struct opcode_info_t const *)0, {12U,
                                                                             251U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             159U,
                                                                             199U,
                                                                             0U, 0U,
                                                                             0U, 0U}}};
static struct opcode_info_t const sa_in_iarr[1U] = { {0U, 158U, 18U, 129U, & resp_get_lba_status, (struct opcode_info_t const *)0,
      {16U, 18U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U,
       255U, 0U, 199U}}};
static struct opcode_info_t const vl_iarr[1U] = { {0U, 127U, 11U, 3330U, & resp_write_dt0, (struct opcode_info_t const *)0, {32U,
                                                                                  199U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  31U,
                                                                                  24U,
                                                                                  0U,
                                                                                  11U,
                                                                                  250U,
                                                                                  0U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U}}};
static struct opcode_info_t const maint_in_iarr[2U] = { {0U, 163U, 12U, 129U, & resp_rsup_opcodes, (struct opcode_info_t const *)0,
      {12U, 12U, 135U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 0U, 199U, 0U, 0U,
       0U, 0U}},
        {0U, 163U, 13U, 129U, & resp_rsup_tmfs, (struct opcode_info_t const *)0, {12U,
                                                                                 13U,
                                                                                 128U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 255U,
                                                                                 255U,
                                                                                 255U,
                                                                                 255U,
                                                                                 0U,
                                                                                 199U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U}}};
static struct opcode_info_t const write_same_iarr[1U] = { {0U, 147U, 0U, 3076U, & resp_write_same_16, (struct opcode_info_t const *)0,
      {16U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U,
       255U, 31U, 199U}}};
static struct opcode_info_t const reserve_iarr[1U] = { {0U, 22U, 0U, 2U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {6U, 31U, 255U, 255U, 255U, 199U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static struct opcode_info_t const release_iarr[1U] = { {0U, 23U, 0U, 2U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {6U, 31U, 255U, 0U, 0U, 199U, 0U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static struct opcode_info_t const opcode_info_arr[31U] =
  { {0U, 0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 18U, 0U, 113U, & resp_inquiry, (struct opcode_info_t const *)0, {6U, 227U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             199U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U}},
        {0U,
      160U, 0U, 113U, & resp_report_luns, (struct opcode_info_t const *)0, {12U,
                                                                              227U,
                                                                              255U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              255U,
                                                                              255U,
                                                                              255U,
                                                                              255U,
                                                                              0U,
                                                                              199U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U}},
        {0U,
      3U, 0U, 113U, & resp_requests, (struct opcode_info_t const *)0, {6U, 225U,
                                                                         0U, 0U, 255U,
                                                                         199U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U}},
        {0U,
      0U, 0U, 2064U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)0,
      {6U, 0U, 0U, 0U, 0U, 199U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {1U, 90U, 0U, 1U, & resp_mode_sense, (struct opcode_info_t const *)(& msense_iarr),
      {10U, 248U, 255U, 255U, 0U, 0U, 0U, 255U, 255U, 199U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {1U,
      85U, 0U, 2U, & resp_mode_select, (struct opcode_info_t const *)(& mselect_iarr),
      {10U, 241U, 0U, 0U, 0U, 0U, 0U, 255U, 255U, 199U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 77U, 0U, 1U, & resp_log_sense, (struct opcode_info_t const *)0, {10U,
                                                                             227U,
                                                                             255U,
                                                                             255U,
                                                                             0U, 255U,
                                                                             255U,
                                                                             255U,
                                                                             255U,
                                                                             199U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U}},
        {0U,
      37U, 0U, 1U, & resp_readcap, (struct opcode_info_t const *)0, {10U, 225U,
                                                                       255U, 255U,
                                                                       255U, 255U,
                                                                       0U, 0U, 1U,
                                                                       199U, 0U, 0U,
                                                                       0U, 0U, 0U,
                                                                       0U}},
        {3U, 136U, 0U, 3073U, & resp_read_dt0, (struct opcode_info_t const *)(& read_iarr),
      {16U, 254U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U,
       255U, 159U, 199U}},
        {3U, 138U, 0U, 3074U, & resp_write_dt0, (struct opcode_info_t const *)(& write_iarr),
      {16U, 250U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U,
       255U, 159U, 199U}},
        {0U, 27U, 0U, 0U, & resp_start_stop, (struct opcode_info_t const *)0, {6U,
                                                                              1U,
                                                                              0U,
                                                                              15U,
                                                                              247U,
                                                                              199U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U,
                                                                              0U}},
        {1U,
      158U, 16U, 129U, & resp_readcap16, (struct opcode_info_t const *)(& sa_in_iarr),
      {16U, 16U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U, 255U,
       255U, 1U, 199U}},
        {0U, 0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U}},
        {2U, 163U, 10U, 129U, & resp_report_tgtpgs, (struct opcode_info_t const *)(& maint_in_iarr),
      {12U, 234U, 0U, 0U, 0U, 0U, 255U, 255U, 255U, 255U, 0U, 199U, 0U, 0U, 0U, 0U}},
        {0U,
      0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)0,
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U}},
        {1U, 127U, 9U, 3329U, & resp_read_dt0, (struct opcode_info_t const *)(& vl_iarr),
      {32U, 199U, 0U, 0U, 0U, 0U, 31U, 24U, 0U, 9U, 254U, 0U, 255U, 255U, 255U, 255U}},
        {1U,
      86U, 0U, 2U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)(& reserve_iarr),
      {10U, 255U, 255U, 255U, 0U, 0U, 0U, 255U, 255U, 199U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {1U,
      87U, 0U, 2U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)(& release_iarr),
      {10U, 19U, 255U, 255U, 0U, 0U, 0U, 255U, 255U, 199U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U,
      0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)0,
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 1U, 0U, 0U, & resp_start_stop, (struct opcode_info_t const *)0, {6U, 1U,
                                                                             0U, 0U,
                                                                             0U, 199U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U,
                                                                             0U, 0U}},
        {0U,
      0U, 0U, 624U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)0,
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 29U, 2U, 0U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {6U, 247U, 0U, 255U, 255U, 199U, 0U, 0U,
                                          0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 66U, 0U, 3074U, & resp_unmap, (struct opcode_info_t const *)0, {10U, 1U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            31U, 255U,
                                                                            255U,
                                                                            199U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U}},
        {0U,
      83U, 0U, 3075U, & resp_xdwriteread_10, (struct opcode_info_t const *)0, {10U,
                                                                                 255U,
                                                                                 255U,
                                                                                 255U,
                                                                                 255U,
                                                                                 255U,
                                                                                 31U,
                                                                                 255U,
                                                                                 255U,
                                                                                 199U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U}},
        {0U,
      59U, 0U, 4U, & resp_write_buffer, (struct opcode_info_t const *)0, {10U, 255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            255U,
                                                                            199U,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U, 0U}},
        {1U,
      65U, 0U, 3076U, & resp_write_same_10, (struct opcode_info_t const *)(& write_same_iarr),
      {10U, 255U, 255U, 255U, 255U, 255U, 31U, 255U, 255U, 199U, 0U, 0U, 0U, 0U, 0U,
       0U}},
        {0U, 53U, 0U, 3136U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0,
      (struct opcode_info_t const *)0, {10U, 7U, 255U, 255U, 255U, 255U, 31U, 255U,
                                          255U, 199U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {0U, 137U, 0U, 3074U, & resp_comp_write, (struct opcode_info_t const *)0, {16U,
                                                                                  248U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  255U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  255U,
                                                                                  31U,
                                                                                  199U}},
        {255U,
      0U, 0U, 0U, (int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0, (struct opcode_info_t const *)0,
      {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static int scsi_debug_add_host = 1;
static int scsi_debug_ato = 1;
static int scsi_debug_delay = 1;
static int scsi_debug_dev_size_mb = 8;
static int scsi_debug_dif = 0;
static int scsi_debug_dix = 0;
static int scsi_debug_dsense = 0;
static int scsi_debug_every_nth = 0;
static int scsi_debug_fake_rw = 0;
static unsigned int scsi_debug_guard = 0U;
static int scsi_debug_lowest_aligned = 0;
static int scsi_debug_max_luns = 1;
static int scsi_debug_max_queue = 576;
static atomic_t retired_max_queue ;
static int scsi_debug_ndelay = 0;
static int scsi_debug_no_lun_0 = 0;
static int scsi_debug_no_uld = 0;
static int scsi_debug_num_parts = 0;
static int scsi_debug_num_tgts = 1;
static int scsi_debug_opt_blks = 64;
static int scsi_debug_opts = 0;
static int scsi_debug_physblk_exp = 0;
static int scsi_debug_ptype = 0;
static int scsi_debug_scsi_level = 6;
static int scsi_debug_sector_size = 512;
static int scsi_debug_virtual_gb = 0;
static int scsi_debug_vpd_use_hostno = 1;
static unsigned int scsi_debug_lbpu = 0U;
static unsigned int scsi_debug_lbpws = 0U;
static unsigned int scsi_debug_lbpws10 = 0U;
static unsigned int scsi_debug_lbprz = 1U;
static unsigned int scsi_debug_unmap_alignment = 0U;
static unsigned int scsi_debug_unmap_granularity = 1U;
static unsigned int scsi_debug_unmap_max_blocks = 4294967295U;
static unsigned int scsi_debug_unmap_max_desc = 256U;
static unsigned int scsi_debug_write_same_length = 65535U;
static bool scsi_debug_removable = 0;
static bool scsi_debug_clustering ;
static bool scsi_debug_host_lock = 0;
static bool scsi_debug_strict = 0;
static bool sdebug_any_injecting_opt ;
static atomic_t sdebug_cmnd_count ;
static atomic_t sdebug_completions ;
static atomic_t sdebug_a_tsf ;
static unsigned int sdebug_store_sectors ;
static sector_t sdebug_capacity ;
static int sdebug_heads ;
static int sdebug_cylinders_per ;
static int sdebug_sectors_per ;
static unsigned int scsi_debug_lbp(void)
{
  {
  return ((unsigned int )(scsi_debug_fake_rw == 0 && ((scsi_debug_lbpu | scsi_debug_lbpws) | scsi_debug_lbpws10) != 0U));
}
}
static struct list_head sdebug_host_list = {& sdebug_host_list, & sdebug_host_list};
static spinlock_t sdebug_host_list_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "sdebug_host_list_lock",
                                                    0, 0UL}}}};
static struct sdebug_queued_cmd queued_arr[576U] ;
static unsigned long queued_in_use_bm[9U] ;
static unsigned char *fake_storep ;
static struct sd_dif_tuple *dif_storep ;
static void *map_storep ;
static unsigned long map_size ;
static int num_aborts ;
static int num_dev_resets ;
static int num_target_resets ;
static int num_bus_resets ;
static int num_host_resets ;
static int dix_writes ;
static int dix_reads ;
static int dif_errors ;
static spinlock_t queued_arr_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "queued_arr_lock",
                                                    0, 0UL}}}};
static rwlock_t atomic_rw = {{{0}, {{0}}}, 3736018669U, 4294967295U, (void *)-1, {0, {0, 0}, "atomic_rw", 0,
                                                         0UL}};
static char sdebug_proc_name[11U] =
  { 's', 'c', 's', 'i',
        '_', 'd', 'e', 'b',
        'u', 'g', '\000'};
static char const *my_name = "scsi_debug";
static struct bus_type pseudo_lld_bus ;
static struct device_driver sdebug_driverfs_driver =
     {(char const *)(& sdebug_proc_name), & pseudo_lld_bus, 0, 0, (_Bool)0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static int const check_condition_result = 134217730;
static int const illegal_condition_result = 134545410;
static int const device_qfull_result = 40;
static unsigned char caching_pg[20U] =
  { 8U, 18U, 20U, 0U,
        255U, 255U, 0U, 0U,
        255U, 255U, 255U, 255U,
        128U, 20U, 0U, 0U,
        0U, 0U, 0U, 0U};
static unsigned char ctrl_m_pg[12U] =
  { 10U, 10U, 2U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 2U, 75U};
static unsigned char iec_m_pg[12U] =
  { 28U, 10U, 8U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static void *fake_store(unsigned long long lba )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  __base = sdebug_store_sectors;
  __rem = (uint32_t )(lba % (unsigned long long )__base);
  lba = lba / (unsigned long long )__base;
  lba = (unsigned long long )__rem;
  return ((void *)(fake_storep + (unsigned long long )scsi_debug_sector_size * lba));
}
}
static struct sd_dif_tuple *dif_store(sector_t sector )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  __base = sdebug_store_sectors;
  __rem = (uint32_t )((unsigned long long )sector % (unsigned long long )__base);
  sector = (sector_t )((unsigned long long )sector / (unsigned long long )__base);
  sector = (sector_t )__rem;
  return (dif_storep + sector);
}
}
static int sdebug_add_adapter(void) ;
static void sdebug_remove_adapter(void) ;
static void sdebug_max_tgts_luns(void)
{
  struct sdebug_host_info *sdbg_host ;
  struct Scsi_Host *hpnt ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  spin_lock(& sdebug_host_list_lock);
  __mptr = (struct list_head const *)sdebug_host_list.next;
  sdbg_host = (struct sdebug_host_info *)__mptr;
  goto ldv_35951;
  ldv_35950:
  hpnt = sdbg_host->shost;
  if (hpnt->this_id >= 0 && hpnt->this_id < scsi_debug_num_tgts) {
    hpnt->max_id = (unsigned int )(scsi_debug_num_tgts + 1);
  } else {
    hpnt->max_id = (unsigned int )scsi_debug_num_tgts;
  }
  hpnt->max_lun = 49409ULL;
  __mptr___0 = (struct list_head const *)sdbg_host->host_list.next;
  sdbg_host = (struct sdebug_host_info *)__mptr___0;
  ldv_35951: ;
  if ((unsigned long )(& sdbg_host->host_list) != (unsigned long )(& sdebug_host_list)) {
    goto ldv_35950;
  } else {
  }
  spin_unlock(& sdebug_host_list_lock);
  return;
}
}
static void mk_sense_invalid_fld(struct scsi_cmnd *scp , enum sdeb_cmd_data c_d ,
                                 int in_byte , int in_bit )
{
  unsigned char *sbuff ;
  u8 sks[4U] ;
  int sl ;
  int asc ;
  {
  sbuff = scp->sense_buffer;
  if ((unsigned long )sbuff == (unsigned long )((unsigned char *)0U)) {
    sdev_prefix_printk("\v", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: sense_buffer is NULL\n", "mk_sense_invalid_fld");
    return;
  } else {
  }
  asc = (unsigned int )c_d != 0U ? 36 : 38;
  memset((void *)sbuff, 0, 96UL);
  scsi_build_sense_buffer(scsi_debug_dsense, sbuff, 5, (int )((u8 )asc), 0);
  memset((void *)(& sks), 0, 4UL);
  sks[0] = 128U;
  if ((unsigned int )c_d != 0U) {
    sks[0] = (u8 )((unsigned int )sks[0] | 64U);
  } else {
  }
  if (in_bit >= 0) {
    sks[0] = (u8 )((unsigned int )sks[0] | 8U);
    sks[0] = (u8 )((int )((signed char )sks[0]) | ((int )((signed char )in_bit) & 7));
  } else {
  }
  put_unaligned_be16((int )((u16 )in_byte), (void *)(& sks) + 1U);
  if (scsi_debug_dsense != 0) {
    sl = (int )*(sbuff + 7UL) + 8;
    *(sbuff + 7UL) = (unsigned char )sl;
    *(sbuff + (unsigned long )sl) = 2U;
    *(sbuff + ((unsigned long )sl + 1UL)) = 6U;
    memcpy((void *)(sbuff + ((unsigned long )sl + 4UL)), (void const *)(& sks),
             3UL);
  } else {
    memcpy((void *)sbuff + 15U, (void const *)(& sks), 3UL);
  }
  if (scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s:  [sense_key,asc,ascq]: [0x5,0x%x,0x0] %c byte=%d, bit=%d\n",
                       my_name, asc, (unsigned int )c_d != 0U ? 67 : 68, in_byte,
                       in_bit);
  } else {
  }
  return;
}
}
static void mk_sense_buffer(struct scsi_cmnd *scp , int key , int asc , int asq )
{
  unsigned char *sbuff ;
  {
  sbuff = scp->sense_buffer;
  if ((unsigned long )sbuff == (unsigned long )((unsigned char *)0U)) {
    sdev_prefix_printk("\v", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: sense_buffer is NULL\n", "mk_sense_buffer");
    return;
  } else {
  }
  memset((void *)sbuff, 0, 96UL);
  scsi_build_sense_buffer(scsi_debug_dsense, sbuff, (int )((u8 )key), (int )((u8 )asc),
                          (int )((u8 )asq));
  if (scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s:  [sense_key,asc,ascq]: [0x%x,0x%x,0x%x]\n", my_name, key,
                       asc, asq);
  } else {
  }
  return;
}
}
static void mk_sense_invalid_opcode(struct scsi_cmnd *scp )
{
  {
  mk_sense_buffer(scp, 5, 32, 0);
  return;
}
}
static int scsi_debug_ioctl(struct scsi_device *dev , int cmd , void *arg )
{
  {
  if (scsi_debug_opts & 1) {
    if (cmd == 4705) {
      sdev_prefix_printk("\016", (struct scsi_device const *)dev, (char const *)0,
                         "%s: BLKFLSBUF [0x1261]\n", "scsi_debug_ioctl");
    } else
    if (cmd == 21297) {
      sdev_prefix_printk("\016", (struct scsi_device const *)dev, (char const *)0,
                         "%s: CDROM_GET_CAPABILITY [0x5331]\n", "scsi_debug_ioctl");
    } else {
      sdev_prefix_printk("\016", (struct scsi_device const *)dev, (char const *)0,
                         "%s: cmd=0x%x\n", "scsi_debug_ioctl", cmd);
    }
  } else {
  }
  return (-22);
}
}
static void clear_luns_changed_on_target(struct sdebug_dev_info *devip )
{
  struct sdebug_host_info *sdhp ;
  struct sdebug_dev_info *dp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  spin_lock(& sdebug_host_list_lock);
  __mptr = (struct list_head const *)sdebug_host_list.next;
  sdhp = (struct sdebug_host_info *)__mptr;
  goto ldv_36001;
  ldv_36000:
  __mptr___0 = (struct list_head const *)sdhp->dev_info_list.next;
  dp = (struct sdebug_dev_info *)__mptr___0;
  goto ldv_35998;
  ldv_35997: ;
  if ((unsigned long )devip->sdbg_host == (unsigned long )dp->sdbg_host && devip->target == dp->target) {
    clear_bit(4L, (unsigned long volatile *)(& dp->uas_bm));
  } else {
  }
  __mptr___1 = (struct list_head const *)dp->dev_list.next;
  dp = (struct sdebug_dev_info *)__mptr___1;
  ldv_35998: ;
  if ((unsigned long )(& dp->dev_list) != (unsigned long )(& sdhp->dev_info_list)) {
    goto ldv_35997;
  } else {
  }
  __mptr___2 = (struct list_head const *)sdhp->host_list.next;
  sdhp = (struct sdebug_host_info *)__mptr___2;
  ldv_36001: ;
  if ((unsigned long )(& sdhp->host_list) != (unsigned long )(& sdebug_host_list)) {
    goto ldv_36000;
  } else {
  }
  spin_unlock(& sdebug_host_list_lock);
  return;
}
}
static int check_readiness(struct scsi_cmnd *SCpnt , int uas_only , struct sdebug_dev_info *devip )
{
  int k ;
  bool debug ;
  unsigned long tmp ;
  char const *cp ;
  {
  debug = (scsi_debug_opts & 1) != 0;
  tmp = find_first_bit((unsigned long const *)(& devip->uas_bm), 7UL);
  k = (int )tmp;
  if (k != 7) {
    cp = (char const *)0;
    switch (k) {
    case 0:
    mk_sense_buffer(SCpnt, 6, 41, 0);
    if ((int )debug) {
      cp = "power on reset";
    } else {
    }
    goto ldv_36012;
    case 1:
    mk_sense_buffer(SCpnt, 6, 41, 2);
    if ((int )debug) {
      cp = "bus reset";
    } else {
    }
    goto ldv_36012;
    case 2:
    mk_sense_buffer(SCpnt, 6, 42, 1);
    if ((int )debug) {
      cp = "mode parameters changed";
    } else {
    }
    goto ldv_36012;
    case 3:
    mk_sense_buffer(SCpnt, 6, 42, 9);
    if ((int )debug) {
      cp = "capacity data changed";
    } else {
    }
    goto ldv_36012;
    case 5:
    mk_sense_buffer(SCpnt, 6, 63, 1);
    if ((int )debug) {
      cp = "microcode has been changed";
    } else {
    }
    goto ldv_36012;
    case 6:
    mk_sense_buffer(SCpnt, 6, 63, 22);
    if ((int )debug) {
      cp = "microcode has been changed without reset";
    } else {
    }
    goto ldv_36012;
    case 4: ;
    if (scsi_debug_scsi_level > 5) {
      clear_luns_changed_on_target(devip);
    } else {
    }
    mk_sense_buffer(SCpnt, 6, 63, 14);
    if ((int )debug) {
      cp = "reported luns data has changed";
    } else {
    }
    goto ldv_36012;
    default:
    printk("\f%s: unexpected unit attention code=%d\n", "check_readiness", k);
    if ((int )debug) {
      cp = "unknown";
    } else {
    }
    goto ldv_36012;
    }
    ldv_36012:
    clear_bit((long )k, (unsigned long volatile *)(& devip->uas_bm));
    if ((int )debug) {
      sdev_prefix_printk("\016", (struct scsi_device const *)SCpnt->device, (char const *)0,
                         "%s reports: Unit attention: %s\n", my_name, cp);
    } else {
    }
    return ((int )check_condition_result);
  } else {
  }
  if (uas_only == 0 && (int )((signed char )devip->stopped) != 0) {
    mk_sense_buffer(SCpnt, 2, 4, 2);
    if ((int )debug) {
      sdev_prefix_printk("\016", (struct scsi_device const *)SCpnt->device, (char const *)0,
                         "%s reports: Not ready: %s\n", my_name, (char *)"initializing command required");
    } else {
    }
    return ((int )check_condition_result);
  } else {
  }
  return (0);
}
}
static int fill_from_dev_buffer(struct scsi_cmnd *scp , unsigned char *arr , int arr_len )
{
  int act_len ;
  struct scsi_data_buffer *sdb ;
  struct scsi_data_buffer *tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = scsi_in(scp);
  sdb = tmp;
  if (sdb->length == 0U) {
    return (0);
  } else {
  }
  tmp___0 = scsi_bidi_cmnd(scp);
  if (tmp___0 == 0 && (unsigned int )scp->sc_data_direction != 2U) {
    return (458752);
  } else {
  }
  tmp___1 = sg_copy_from_buffer(sdb->table.sgl, sdb->table.nents, (void const *)arr,
                                (size_t )arr_len);
  act_len = (int )tmp___1;
  tmp___2 = scsi_bufflen(scp);
  sdb->resid = (int )(tmp___2 - (unsigned int )act_len);
  return (0);
}
}
static int fetch_to_dev_buffer(struct scsi_cmnd *scp , unsigned char *arr , int arr_len )
{
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = scsi_bufflen(scp);
  if (tmp == 0U) {
    return (0);
  } else {
  }
  tmp___0 = scsi_bidi_cmnd(scp);
  if (tmp___0 == 0 && (unsigned int )scp->sc_data_direction != 1U) {
    return (-1);
  } else {
  }
  tmp___1 = scsi_sg_copy_to_buffer(scp, (void *)arr, arr_len);
  return (tmp___1);
}
}
static char const *inq_vendor_id = "Linux   ";
static char const *inq_product_id = "scsi_debug      ";
static char const *inq_product_rev = "0184";
static int inquiry_evpd_83(unsigned char *arr , int port_group_id , int target_dev_id ,
                           int dev_id_num , char const *dev_id_str , int dev_id_str_len )
{
  int num ;
  int port_a ;
  char b[32U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  {
  port_a = target_dev_id + 1;
  *arr = 2U;
  *(arr + 1UL) = 1U;
  *(arr + 2UL) = 0U;
  memcpy((void *)arr + 4U, (void const *)inq_vendor_id, 8UL);
  memcpy((void *)arr + 12U, (void const *)inq_product_id, 16UL);
  memcpy((void *)arr + 28U, (void const *)dev_id_str, (size_t )dev_id_str_len);
  num = dev_id_str_len + 24;
  *(arr + 3UL) = (unsigned char )num;
  num = num + 4;
  if (dev_id_num >= 0) {
    tmp = num;
    num = num + 1;
    *(arr + (unsigned long )tmp) = 1U;
    tmp___0 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___0) = 3U;
    tmp___1 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___1) = 0U;
    tmp___2 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___2) = 8U;
    tmp___3 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___3) = 83U;
    tmp___4 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___4) = 51U;
    tmp___5 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___5) = 51U;
    tmp___6 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___6) = 48U;
    tmp___7 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___7) = (unsigned char )(dev_id_num >> 24);
    tmp___8 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___8) = (unsigned char )(dev_id_num >> 16);
    tmp___9 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___9) = (unsigned char )(dev_id_num >> 8);
    tmp___10 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___10) = (unsigned char )dev_id_num;
    tmp___11 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___11) = 97U;
    tmp___12 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___12) = 148U;
    tmp___13 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___13) = 0U;
    tmp___14 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___14) = 4U;
    tmp___15 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___15) = 0U;
    tmp___16 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___16) = 0U;
    tmp___17 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___17) = 0U;
    tmp___18 = num;
    num = num + 1;
    *(arr + (unsigned long )tmp___18) = 1U;
  } else {
  }
  tmp___19 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___19) = 97U;
  tmp___20 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___20) = 147U;
  tmp___21 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___21) = 0U;
  tmp___22 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___22) = 8U;
  tmp___23 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___23) = 82U;
  tmp___24 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___24) = 34U;
  tmp___25 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___25) = 34U;
  tmp___26 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___26) = 32U;
  tmp___27 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___27) = (unsigned char )(port_a >> 24);
  tmp___28 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___28) = (unsigned char )(port_a >> 16);
  tmp___29 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___29) = (unsigned char )(port_a >> 8);
  tmp___30 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___30) = (unsigned char )port_a;
  tmp___31 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___31) = 97U;
  tmp___32 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___32) = 149U;
  tmp___33 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___33) = 0U;
  tmp___34 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___34) = 4U;
  tmp___35 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___35) = 0U;
  tmp___36 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___36) = 0U;
  tmp___37 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___37) = (unsigned char )(port_group_id >> 8);
  tmp___38 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___38) = (unsigned char )port_group_id;
  tmp___39 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___39) = 97U;
  tmp___40 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___40) = 163U;
  tmp___41 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___41) = 0U;
  tmp___42 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___42) = 8U;
  tmp___43 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___43) = 82U;
  tmp___44 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___44) = 34U;
  tmp___45 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___45) = 34U;
  tmp___46 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___46) = 32U;
  tmp___47 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___47) = (unsigned char )(target_dev_id >> 24);
  tmp___48 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___48) = (unsigned char )(target_dev_id >> 16);
  tmp___49 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___49) = (unsigned char )(target_dev_id >> 8);
  tmp___50 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___50) = (unsigned char )target_dev_id;
  tmp___51 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___51) = 99U;
  tmp___52 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___52) = 168U;
  tmp___53 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___53) = 0U;
  tmp___54 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___54) = 24U;
  memcpy((void *)arr + (unsigned long )num, (void const *)"naa.52222220", 12UL);
  num = num + 12;
  snprintf((char *)(& b), 32UL, "%08X", target_dev_id);
  memcpy((void *)arr + (unsigned long )num, (void const *)(& b), 8UL);
  num = num + 8;
  memset((void *)arr + (unsigned long )num, 0, 4UL);
  num = num + 4;
  return (num);
}
}
static unsigned char vpd84_data[18U] =
  { 34U, 34U, 34U, 0U,
        187U, 0U, 34U, 34U,
        34U, 0U, 187U, 1U,
        34U, 34U, 34U, 0U,
        187U, 2U};
static int inquiry_evpd_84(unsigned char *arr )
{
  {
  memcpy((void *)arr, (void const *)(& vpd84_data), 18UL);
  return (18);
}
}
static int inquiry_evpd_85(unsigned char *arr )
{
  int num ;
  char const *na1 ;
  char const *na2 ;
  int plen ;
  int olen ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  size_t tmp___7 ;
  int tmp___8 ;
  {
  num = 0;
  na1 = "https://www.kernel.org/config";
  na2 = "http://www.kernel.org/log";
  tmp = num;
  num = num + 1;
  *(arr + (unsigned long )tmp) = 1U;
  tmp___0 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___0) = 0U;
  tmp___1 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___1) = 0U;
  tmp___2 = strlen(na1);
  olen = (int )tmp___2;
  plen = olen + 1;
  if (((unsigned int )plen & 3U) != 0U) {
    plen = (plen / 4 + 1) * 4;
  } else {
  }
  tmp___3 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___3) = (unsigned char )plen;
  memcpy((void *)arr + (unsigned long )num, (void const *)na1, (size_t )olen);
  memset((void *)(arr + ((unsigned long )num + (unsigned long )olen)), 0, (size_t )(plen - olen));
  num = num + plen;
  tmp___4 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___4) = 4U;
  tmp___5 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___5) = 0U;
  tmp___6 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___6) = 0U;
  tmp___7 = strlen(na2);
  olen = (int )tmp___7;
  plen = olen + 1;
  if (((unsigned int )plen & 3U) != 0U) {
    plen = (plen / 4 + 1) * 4;
  } else {
  }
  tmp___8 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___8) = (unsigned char )plen;
  memcpy((void *)arr + (unsigned long )num, (void const *)na2, (size_t )olen);
  memset((void *)(arr + ((unsigned long )num + (unsigned long )olen)), 0, (size_t )(plen - olen));
  num = num + plen;
  return (num);
}
}
static int inquiry_evpd_88(unsigned char *arr , int target_dev_id )
{
  int num ;
  int port_a ;
  int port_b ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  {
  num = 0;
  port_a = target_dev_id + 1;
  port_b = port_a + 1;
  tmp = num;
  num = num + 1;
  *(arr + (unsigned long )tmp) = 0U;
  tmp___0 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___0) = 0U;
  tmp___1 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___1) = 0U;
  tmp___2 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___2) = 1U;
  memset((void *)arr + (unsigned long )num, 0, 6UL);
  num = num + 6;
  tmp___3 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___3) = 0U;
  tmp___4 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___4) = 12U;
  tmp___5 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___5) = 97U;
  tmp___6 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___6) = 147U;
  tmp___7 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___7) = 0U;
  tmp___8 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___8) = 8U;
  tmp___9 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___9) = 82U;
  tmp___10 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___10) = 34U;
  tmp___11 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___11) = 34U;
  tmp___12 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___12) = 32U;
  tmp___13 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___13) = (unsigned char )(port_a >> 24);
  tmp___14 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___14) = (unsigned char )(port_a >> 16);
  tmp___15 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___15) = (unsigned char )(port_a >> 8);
  tmp___16 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___16) = (unsigned char )port_a;
  tmp___17 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___17) = 0U;
  tmp___18 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___18) = 0U;
  tmp___19 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___19) = 0U;
  tmp___20 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___20) = 2U;
  memset((void *)arr + (unsigned long )num, 0, 6UL);
  num = num + 6;
  tmp___21 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___21) = 0U;
  tmp___22 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___22) = 12U;
  tmp___23 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___23) = 97U;
  tmp___24 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___24) = 147U;
  tmp___25 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___25) = 0U;
  tmp___26 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___26) = 8U;
  tmp___27 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___27) = 82U;
  tmp___28 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___28) = 34U;
  tmp___29 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___29) = 34U;
  tmp___30 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___30) = 32U;
  tmp___31 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___31) = (unsigned char )(port_b >> 24);
  tmp___32 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___32) = (unsigned char )(port_b >> 16);
  tmp___33 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___33) = (unsigned char )(port_b >> 8);
  tmp___34 = num;
  num = num + 1;
  *(arr + (unsigned long )tmp___34) = (unsigned char )port_b;
  return (num);
}
}
static unsigned char vpd89_data[568U] =
  { 0U, 0U, 0U, 0U,
        108U, 105U, 110U, 117U,
        120U, 32U, 32U, 32U,
        83U, 65U, 84U, 32U,
        115U, 99U, 115U, 105U,
        95U, 100U, 101U, 98U,
        117U, 103U, 32U, 32U,
        49U, 50U, 51U, 52U,
        52U, 0U, 0U, 0U,
        1U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        1U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        236U, 0U, 0U, 0U,
        90U, 12U, 255U, 63U,
        55U, 200U, 16U, 0U,
        0U, 0U, 0U, 0U,
        63U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        88U, 88U, 88U, 88U,
        88U, 88U, 88U, 88U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        0U, 0U, 0U, 64U,
        4U, 0U, 46U, 51U,
        56U, 49U, 32U, 32U,
        32U, 32U, 84U, 83U,
        56U, 51U, 48U, 48U,
        51U, 49U, 83U, 65U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 32U, 32U,
        32U, 32U, 16U, 128U,
        0U, 0U, 0U, 47U,
        0U, 0U, 0U, 2U,
        0U, 2U, 7U, 0U,
        255U, 255U, 1U, 0U,
        63U, 0U, 193U, 255U,
        62U, 0U, 16U, 1U,
        176U, 248U, 80U, 9U,
        0U, 0U, 7U, 0U,
        3U, 0U, 120U, 0U,
        120U, 0U, 240U, 0U,
        120U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        2U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        126U, 0U, 27U, 0U,
        107U, 52U, 1U, 125U,
        3U, 64U, 105U, 52U,
        1U, 60U, 3U, 64U,
        127U, 64U, 0U, 0U,
        0U, 0U, 254U, 254U,
        0U, 0U, 0U, 0U,
        0U, 254U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        176U, 248U, 80U, 9U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        1U, 0U, 176U, 248U,
        80U, 9U, 176U, 248U,
        80U, 9U, 32U, 32U,
        2U, 0U, 182U, 66U,
        0U, 128U, 138U, 0U,
        6U, 60U, 10U, 60U,
        255U, 255U, 198U, 7U,
        0U, 1U, 0U, 8U,
        240U, 15U, 0U, 16U,
        2U, 0U, 48U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 6U, 254U,
        0U, 0U, 2U, 0U,
        80U, 0U, 138U, 0U,
        79U, 149U, 0U, 0U,
        33U, 0U, 11U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 165U, 81U};
static int inquiry_evpd_89(unsigned char *arr )
{
  {
  memcpy((void *)arr, (void const *)(& vpd89_data), 568UL);
  return (568);
}
}
static unsigned char vpdb0_data[60U] =
  { 0U, 0U, 0U, 4U,
        0U, 0U, 4U, 0U,
        0U, 0U, 0U, 64U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static int inquiry_evpd_b0(unsigned char *arr )
{
  unsigned int gran ;
  {
  memcpy((void *)arr, (void const *)(& vpdb0_data), 60UL);
  gran = (unsigned int )(1 << scsi_debug_physblk_exp);
  *(arr + 2UL) = (unsigned char )(gran >> 8);
  *(arr + 3UL) = (unsigned char )gran;
  if (sdebug_store_sectors > 1024U) {
    *(arr + 4UL) = (unsigned char )(sdebug_store_sectors >> 24);
    *(arr + 5UL) = (unsigned char )(sdebug_store_sectors >> 16);
    *(arr + 6UL) = (unsigned char )(sdebug_store_sectors >> 8);
    *(arr + 7UL) = (unsigned char )sdebug_store_sectors;
  } else {
  }
  put_unaligned_be32((u32 )scsi_debug_opt_blks, (void *)arr + 8U);
  if (scsi_debug_lbpu != 0U) {
    put_unaligned_be32(scsi_debug_unmap_max_blocks, (void *)arr + 16U);
    put_unaligned_be32(scsi_debug_unmap_max_desc, (void *)arr + 20U);
  } else {
  }
  if (scsi_debug_unmap_alignment != 0U) {
    put_unaligned_be32(scsi_debug_unmap_alignment, (void *)arr + 28U);
    *(arr + 28UL) = (unsigned int )*(arr + 28UL) | 128U;
  } else {
  }
  put_unaligned_be32(scsi_debug_unmap_granularity, (void *)arr + 24U);
  put_unaligned_be64((u64 )scsi_debug_write_same_length, (void *)arr + 32U);
  return (60);
  return (60);
}
}
static int inquiry_evpd_b1(unsigned char *arr )
{
  {
  memset((void *)arr, 0, 60UL);
  *arr = 0U;
  *(arr + 1UL) = 1U;
  *(arr + 2UL) = 0U;
  *(arr + 3UL) = 5U;
  return (60);
}
}
static int inquiry_evpd_b2(unsigned char *arr )
{
  {
  memset((void *)arr, 0, 4UL);
  *arr = 0U;
  if (scsi_debug_lbpu != 0U) {
    *(arr + 1UL) = 128U;
  } else {
  }
  if (scsi_debug_lbpws != 0U) {
    *(arr + 1UL) = (unsigned int )*(arr + 1UL) | 64U;
  } else {
  }
  if (scsi_debug_lbpws10 != 0U) {
    *(arr + 1UL) = (unsigned int )*(arr + 1UL) | 32U;
  } else {
  }
  if (scsi_debug_lbprz != 0U) {
    *(arr + 1UL) = (unsigned int )*(arr + 1UL) | 4U;
  } else {
  }
  return (4);
}
}
static int resp_inquiry(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char pq_pdt ;
  unsigned char *arr ;
  unsigned char *cmd ;
  int alloc_len ;
  int n ;
  int ret ;
  bool have_wlun ;
  void *tmp ;
  int lu_id_num ;
  int port_group_id ;
  int target_dev_id ;
  int len ;
  char lu_id_str[6U] ;
  int host_no ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int _min1___1 ;
  int _min2___1 ;
  {
  cmd = scp->cmnd;
  alloc_len = ((int )*(cmd + 3UL) << 8) + (int )*(cmd + 4UL);
  tmp = kmalloc(584UL, 32U);
  arr = (unsigned char *)tmp;
  if ((unsigned long )arr == (unsigned long )((unsigned char *)0U)) {
    return (851968);
  } else {
  }
  have_wlun = (scp->device)->lun == 49409ULL;
  if ((int )have_wlun) {
    pq_pdt = 30U;
  } else
  if (scsi_debug_no_lun_0 != 0 && devip->lun == 0ULL) {
    pq_pdt = 127U;
  } else {
    pq_pdt = (unsigned int )((unsigned char )scsi_debug_ptype) & 31U;
  }
  *arr = pq_pdt;
  if (((unsigned int )*(cmd + 1UL) & 2U) != 0U) {
    mk_sense_invalid_fld(scp, 1, 1, 1);
    kfree((void const *)arr);
    return ((int )check_condition_result);
  } else
  if ((int )*(cmd + 1UL) & 1) {
    host_no = (int )((devip->sdbg_host)->shost)->host_no;
    port_group_id = (int )((unsigned int )(((host_no + 1) & 127) << 8) + (devip->channel & 127U));
    if (scsi_debug_vpd_use_hostno == 0) {
      host_no = 0;
    } else {
    }
    lu_id_num = (int )have_wlun ? -1 : (int )(((unsigned int )((host_no + 1) * 2000) + devip->target * 1000U) + (unsigned int )devip->lun);
    target_dev_id = (int )(((unsigned int )((host_no + 1) * 2000) + devip->target * 1000U) - 3U);
    len = scnprintf((char *)(& lu_id_str), 6UL, "%d", lu_id_num);
    if ((unsigned int )*(cmd + 2UL) == 0U) {
      *(arr + 1UL) = *(cmd + 2UL);
      n = 4;
      tmp___0 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___0) = 0U;
      tmp___1 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___1) = 128U;
      tmp___2 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___2) = 131U;
      tmp___3 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___3) = 132U;
      tmp___4 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___4) = 133U;
      tmp___5 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___5) = 134U;
      tmp___6 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___6) = 135U;
      tmp___7 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___7) = 136U;
      tmp___8 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___8) = 137U;
      tmp___9 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___9) = 176U;
      tmp___10 = n;
      n = n + 1;
      *(arr + (unsigned long )tmp___10) = 177U;
      tmp___12 = scsi_debug_lbp();
      if (tmp___12 != 0U) {
        tmp___11 = n;
        n = n + 1;
        *(arr + (unsigned long )tmp___11) = 178U;
      } else {
      }
      *(arr + 3UL) = (unsigned int )((unsigned char )n) + 252U;
    } else
    if ((unsigned int )*(cmd + 2UL) == 128U) {
      *(arr + 1UL) = *(cmd + 2UL);
      *(arr + 3UL) = (unsigned char )len;
      memcpy((void *)arr + 4U, (void const *)(& lu_id_str), (size_t )len);
    } else
    if ((unsigned int )*(cmd + 2UL) == 131U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___13 = inquiry_evpd_83(arr + 4UL, port_group_id, target_dev_id, lu_id_num,
                                 (char const *)(& lu_id_str), len);
      *(arr + 3UL) = (unsigned char )tmp___13;
    } else
    if ((unsigned int )*(cmd + 2UL) == 132U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___14 = inquiry_evpd_84(arr + 4UL);
      *(arr + 3UL) = (unsigned char )tmp___14;
    } else
    if ((unsigned int )*(cmd + 2UL) == 133U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___15 = inquiry_evpd_85(arr + 4UL);
      *(arr + 3UL) = (unsigned char )tmp___15;
    } else
    if ((unsigned int )*(cmd + 2UL) == 134U) {
      *(arr + 1UL) = *(cmd + 2UL);
      *(arr + 3UL) = 60U;
      if (scsi_debug_dif == 3) {
        *(arr + 4UL) = 4U;
      } else
      if (scsi_debug_dif != 0) {
        *(arr + 4UL) = 5U;
      } else {
        *(arr + 4UL) = 0U;
      }
      *(arr + 5UL) = 7U;
    } else
    if ((unsigned int )*(cmd + 2UL) == 135U) {
      *(arr + 1UL) = *(cmd + 2UL);
      *(arr + 3UL) = 8U;
      *(arr + 4UL) = 2U;
      *(arr + 6UL) = 128U;
      *(arr + 8UL) = 24U;
      *(arr + 10UL) = 130U;
    } else
    if ((unsigned int )*(cmd + 2UL) == 136U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___16 = inquiry_evpd_88(arr + 4UL, target_dev_id);
      *(arr + 3UL) = (unsigned char )tmp___16;
    } else
    if ((unsigned int )*(cmd + 2UL) == 137U) {
      *(arr + 1UL) = *(cmd + 2UL);
      n = inquiry_evpd_89(arr + 4UL);
      *(arr + 2UL) = (unsigned char )(n >> 8);
      *(arr + 3UL) = (unsigned char )n;
    } else
    if ((unsigned int )*(cmd + 2UL) == 176U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___17 = inquiry_evpd_b0(arr + 4UL);
      *(arr + 3UL) = (unsigned char )tmp___17;
    } else
    if ((unsigned int )*(cmd + 2UL) == 177U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___18 = inquiry_evpd_b1(arr + 4UL);
      *(arr + 3UL) = (unsigned char )tmp___18;
    } else
    if ((unsigned int )*(cmd + 2UL) == 178U) {
      *(arr + 1UL) = *(cmd + 2UL);
      tmp___19 = inquiry_evpd_b2(arr + 4UL);
      *(arr + 3UL) = (unsigned char )tmp___19;
    } else {
      mk_sense_invalid_fld(scp, 1, 2, -1);
      kfree((void const *)arr);
      return ((int )check_condition_result);
    }
    _min1 = (((int )*(arr + 2UL) << 8) + (int )*(arr + 3UL)) + 4;
    _min2 = alloc_len;
    len = _min1 < _min2 ? _min1 : _min2;
    _min1___0 = len;
    _min2___0 = 584;
    ret = fill_from_dev_buffer(scp, arr, _min1___0 < _min2___0 ? _min1___0 : _min2___0);
    kfree((void const *)arr);
    return (ret);
  } else {
  }
  *(arr + 1UL) = (int )scsi_debug_removable ? 128U : 0U;
  *(arr + 2UL) = (unsigned char )scsi_debug_scsi_level;
  *(arr + 3UL) = 2U;
  *(arr + 4UL) = 91U;
  *(arr + 5UL) = scsi_debug_dif != 0;
  if (scsi_debug_vpd_use_hostno == 0) {
    *(arr + 5UL) = 16U;
  } else {
  }
  *(arr + 6UL) = 16U;
  *(arr + 7UL) = 10U;
  memcpy((void *)arr + 8U, (void const *)inq_vendor_id, 8UL);
  memcpy((void *)arr + 16U, (void const *)inq_product_id, 16UL);
  memcpy((void *)arr + 32U, (void const *)inq_product_rev, 4UL);
  *(arr + 58UL) = 0U;
  *(arr + 59UL) = 162U;
  *(arr + 60UL) = 4U;
  *(arr + 61UL) = 104U;
  n = 62;
  if (scsi_debug_ptype == 0) {
    tmp___20 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___20) = 4U;
    tmp___21 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___21) = 197U;
  } else
  if (scsi_debug_ptype == 1) {
    tmp___22 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___22) = 5U;
    tmp___23 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___23) = 37U;
  } else {
  }
  tmp___24 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___24) = 32U;
  tmp___25 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___25) = 230U;
  _min1___1 = alloc_len;
  _min2___1 = 96;
  ret = fill_from_dev_buffer(scp, arr, _min1___1 < _min2___1 ? _min1___1 : _min2___1);
  kfree((void const *)arr);
  return (ret);
}
}
static int resp_requests(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char *sbuff ;
  unsigned char *cmd ;
  unsigned char arr[96U] ;
  bool dsense ;
  bool want_dsense ;
  int len ;
  int tmp ;
  {
  cmd = scp->cmnd;
  len = 18;
  memset((void *)(& arr), 0, 96UL);
  dsense = ((int )*(cmd + 1UL) & 1) != 0;
  want_dsense = (bool )((int )dsense || scsi_debug_dsense != 0);
  sbuff = scp->sense_buffer;
  if (((int )iec_m_pg[2] & 4) != 0 && ((int )iec_m_pg[3] & 15) == 6) {
    if ((int )dsense) {
      arr[0] = 114U;
      arr[1] = 0U;
      arr[2] = 93U;
      arr[3] = 255U;
      len = 8;
    } else {
      arr[0] = 112U;
      arr[2] = 0U;
      arr[7] = 10U;
      arr[12] = 93U;
      arr[13] = 255U;
    }
  } else {
    memcpy((void *)(& arr), (void const *)sbuff, 96UL);
    if ((unsigned int )arr[0] > 111U && (int )dsense == scsi_debug_dsense) {
    } else
    if ((unsigned int )arr[0] <= 112U) {
      if ((int )dsense) {
        memset((void *)(& arr), 0, 8UL);
        arr[0] = 114U;
        len = 8;
      } else {
        memset((void *)(& arr), 0, 18UL);
        arr[0] = 112U;
        arr[7] = 10U;
      }
    } else
    if ((int )dsense) {
      memset((void *)(& arr), 0, 8UL);
      arr[0] = 114U;
      arr[1] = *(sbuff + 2UL);
      arr[2] = *(sbuff + 12UL);
      arr[3] = *(sbuff + 13UL);
      len = 8;
    } else {
      memset((void *)(& arr), 0, 18UL);
      arr[0] = 112U;
      arr[2] = *(sbuff + 1UL);
      arr[7] = 10U;
      arr[12] = *(sbuff + 1UL);
      arr[13] = *(sbuff + 3UL);
    }
  }
  mk_sense_buffer(scp, 0, 0, 0);
  tmp = fill_from_dev_buffer(scp, (unsigned char *)(& arr), len);
  return (tmp);
}
}
static int resp_start_stop(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char *cmd ;
  int power_cond ;
  int start ;
  {
  cmd = scp->cmnd;
  power_cond = (int )*(cmd + 4UL) >> 4;
  if (power_cond != 0) {
    mk_sense_invalid_fld(scp, 1, 4, 7);
    return ((int )check_condition_result);
  } else {
  }
  start = (int )*(cmd + 4UL) & 1;
  if ((int )devip->stopped == start) {
    devip->stopped = start == 0;
  } else {
  }
  return (0);
}
}
static sector_t get_sdebug_capacity(void)
{
  {
  if (scsi_debug_virtual_gb > 0) {
    return ((unsigned long )scsi_debug_virtual_gb * (unsigned long )(1073741824 / scsi_debug_sector_size));
  } else {
    return ((sector_t )sdebug_store_sectors);
  }
}
}
static int resp_readcap(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char arr[8U] ;
  unsigned int capac ;
  int tmp ;
  {
  sdebug_capacity = get_sdebug_capacity();
  memset((void *)(& arr), 0, 8UL);
  if (sdebug_capacity <= 4294967294UL) {
    capac = (unsigned int )sdebug_capacity - 1U;
    arr[0] = (unsigned char )(capac >> 24);
    arr[1] = (unsigned char )(capac >> 16);
    arr[2] = (unsigned char )(capac >> 8);
    arr[3] = (unsigned char )capac;
  } else {
    arr[0] = 255U;
    arr[1] = 255U;
    arr[2] = 255U;
    arr[3] = 255U;
  }
  arr[6] = (unsigned char )(scsi_debug_sector_size >> 8);
  arr[7] = (unsigned char )scsi_debug_sector_size;
  tmp = fill_from_dev_buffer(scp, (unsigned char *)(& arr), 8);
  return (tmp);
}
}
static int resp_readcap16(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char *cmd ;
  unsigned char arr[32U] ;
  unsigned long long capac ;
  int k ;
  int alloc_len ;
  unsigned int tmp ;
  int _min1 ;
  int _min2 ;
  int tmp___0 ;
  {
  cmd = scp->cmnd;
  alloc_len = ((((int )*(cmd + 10UL) << 24) + ((int )*(cmd + 11UL) << 16)) + ((int )*(cmd + 12UL) << 8)) + (int )*(cmd + 13UL);
  sdebug_capacity = get_sdebug_capacity();
  memset((void *)(& arr), 0, 32UL);
  capac = (unsigned long long )(sdebug_capacity - 1UL);
  k = 0;
  goto ldv_36143;
  ldv_36142:
  arr[7 - k] = (unsigned char )capac;
  k = k + 1;
  capac = capac >> 8;
  ldv_36143: ;
  if (k <= 7) {
    goto ldv_36142;
  } else {
  }
  arr[8] = (unsigned char )((unsigned int )scsi_debug_sector_size >> 24);
  arr[9] = (unsigned char )(scsi_debug_sector_size >> 16);
  arr[10] = (unsigned char )(scsi_debug_sector_size >> 8);
  arr[11] = (unsigned char )scsi_debug_sector_size;
  arr[13] = (unsigned int )((unsigned char )scsi_debug_physblk_exp) & 15U;
  arr[14] = (unsigned int )((unsigned char )(scsi_debug_lowest_aligned >> 8)) & 63U;
  tmp = scsi_debug_lbp();
  if (tmp != 0U) {
    arr[14] = (unsigned int )arr[14] | 128U;
    if (scsi_debug_lbprz != 0U) {
      arr[14] = (unsigned int )arr[14] | 64U;
    } else {
    }
  } else {
  }
  arr[15] = (unsigned char )scsi_debug_lowest_aligned;
  if (scsi_debug_dif != 0) {
    arr[12] = ((unsigned int )((unsigned char )scsi_debug_dif) + 255U) << 1U;
    arr[12] = (unsigned int )arr[12] | 1U;
  } else {
  }
  _min1 = alloc_len;
  _min2 = 32;
  tmp___0 = fill_from_dev_buffer(scp, (unsigned char *)(& arr), _min1 < _min2 ? _min1 : _min2);
  return (tmp___0);
}
}
static int resp_report_tgtpgs(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char *cmd ;
  unsigned char *arr ;
  int host_no ;
  int n ;
  int ret ;
  int alen ;
  int rlen ;
  int port_group_a ;
  int port_group_b ;
  int port_a ;
  int port_b ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  cmd = scp->cmnd;
  host_no = (int )((devip->sdbg_host)->shost)->host_no;
  alen = ((((int )*(cmd + 6UL) << 24) + ((int )*(cmd + 7UL) << 16)) + ((int )*(cmd + 8UL) << 8)) + (int )*(cmd + 9UL);
  tmp = kmalloc(1412UL, 32U);
  arr = (unsigned char *)tmp;
  if ((unsigned long )arr == (unsigned long )((unsigned char *)0U)) {
    return (851968);
  } else {
  }
  port_a = 1;
  port_b = 2;
  port_group_a = (int )((unsigned int )(((host_no + 1) & 127) << 8) + (devip->channel & 127U));
  port_group_b = (int )(((unsigned int )(((host_no + 1) & 127) << 8) + (devip->channel & 127U)) + 128U);
  n = 4;
  if (scsi_debug_vpd_use_hostno == 0) {
    tmp___0 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___0) = (unsigned char )(host_no % 3);
    tmp___1 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___1) = 15U;
  } else {
    tmp___2 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___2) = 0U;
    tmp___3 = n;
    n = n + 1;
    *(arr + (unsigned long )tmp___3) = 1U;
  }
  tmp___4 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___4) = (unsigned char )(port_group_a >> 8);
  tmp___5 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___5) = (unsigned char )port_group_a;
  tmp___6 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___6) = 0U;
  tmp___7 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___7) = 0U;
  tmp___8 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___8) = 0U;
  tmp___9 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___9) = 1U;
  tmp___10 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___10) = 0U;
  tmp___11 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___11) = 0U;
  tmp___12 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___12) = (unsigned char )(port_a >> 8);
  tmp___13 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___13) = (unsigned char )port_a;
  tmp___14 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___14) = 3U;
  tmp___15 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___15) = 8U;
  tmp___16 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___16) = (unsigned char )(port_group_b >> 8);
  tmp___17 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___17) = (unsigned char )port_group_b;
  tmp___18 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___18) = 0U;
  tmp___19 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___19) = 0U;
  tmp___20 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___20) = 0U;
  tmp___21 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___21) = 1U;
  tmp___22 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___22) = 0U;
  tmp___23 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___23) = 0U;
  tmp___24 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___24) = (unsigned char )(port_b >> 8);
  tmp___25 = n;
  n = n + 1;
  *(arr + (unsigned long )tmp___25) = (unsigned char )port_b;
  rlen = n + -4;
  *arr = (unsigned char )((unsigned int )rlen >> 24);
  *(arr + 1UL) = (unsigned char )(rlen >> 16);
  *(arr + 2UL) = (unsigned char )(rlen >> 8);
  *(arr + 3UL) = (unsigned char )rlen;
  _min1 = alen;
  _min2 = n;
  rlen = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = rlen;
  _min2___0 = 1412;
  ret = fill_from_dev_buffer(scp, arr, _min1___0 < _min2___0 ? _min1___0 : _min2___0);
  kfree((void const *)arr);
  return (ret);
}
}
static int resp_rsup_opcodes(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  bool rctd ;
  u8 reporting_opts ;
  u8 req_opcode ;
  u8 sdeb_i ;
  u8 supp ;
  u16 req_sa ;
  u16 u ;
  u32 alloc_len ;
  u32 a_len ;
  int k ;
  int offset ;
  int len ;
  int errsts ;
  int count ;
  int bump ;
  int na ;
  struct opcode_info_t const *oip ;
  struct opcode_info_t const *r_oip ;
  u8 *arr ;
  u8 *cmd ;
  void *tmp ;
  {
  cmd = scp->cmnd;
  rctd = (int )((signed char )*(cmd + 2UL)) < 0;
  reporting_opts = (unsigned int )*(cmd + 2UL) & 7U;
  req_opcode = *(cmd + 3UL);
  req_sa = get_unaligned_be16((void const *)cmd + 4U);
  alloc_len = get_unaligned_be32((void const *)cmd + 6U);
  if (alloc_len <= 3U || alloc_len > 65535U) {
    mk_sense_invalid_fld(scp, 1, 6, -1);
    return ((int )check_condition_result);
  } else {
  }
  if (alloc_len > 8192U) {
    a_len = 8192U;
  } else {
    a_len = alloc_len;
  }
  tmp = kmalloc(a_len > 255U ? (size_t )(a_len + 64U) : 320UL, 32U);
  arr = (u8 *)tmp;
  if ((unsigned long )arr == (unsigned long )((u8 *)0U)) {
    mk_sense_buffer(scp, 5, 85, 3);
    return ((int )check_condition_result);
  } else {
  }
  switch ((int )reporting_opts) {
  case 0:
  count = 0;
  oip = (struct opcode_info_t const *)(& opcode_info_arr);
  goto ldv_36196;
  ldv_36195: ;
  if (((unsigned int )oip->flags & 512U) != 0U) {
    goto ldv_36194;
  } else {
  }
  count = ((int )oip->num_attached + 1) + count;
  ldv_36194:
  oip = oip + 1;
  ldv_36196: ;
  if ((unsigned int )((unsigned char )oip->num_attached) != 255U) {
    goto ldv_36195;
  } else {
  }
  bump = (int )rctd ? 20 : 8;
  put_unaligned_be32((u32 )(count * bump), (void *)arr);
  offset = 4;
  oip = (struct opcode_info_t const *)(& opcode_info_arr);
  goto ldv_36204;
  ldv_36203: ;
  if (((unsigned int )oip->flags & 512U) != 0U) {
    goto ldv_36198;
  } else {
  }
  na = (int )oip->num_attached;
  *(arr + (unsigned long )offset) = oip->opcode;
  put_unaligned_be16((int )oip->sa, (void *)(arr + ((unsigned long )offset + 2UL)));
  if ((int )rctd) {
    *(arr + ((unsigned long )offset + 5UL)) = (u8 )((unsigned int )*(arr + ((unsigned long )offset + 5UL)) | 2U);
  } else {
  }
  if (((unsigned int )oip->flags & 384U) != 0U) {
    *(arr + ((unsigned long )offset + 5UL)) = (u8 )((unsigned int )*(arr + ((unsigned long )offset + 5UL)) | 1U);
  } else {
  }
  put_unaligned_be16((int )oip->len_mask[0], (void *)(arr + ((unsigned long )offset + 6UL)));
  if ((int )rctd) {
    put_unaligned_be16(10, (void *)(arr + ((unsigned long )offset + 8UL)));
  } else {
  }
  r_oip = oip;
  k = 0;
  oip = oip->arrp;
  goto ldv_36201;
  ldv_36200: ;
  if (((unsigned int )oip->flags & 512U) != 0U) {
    goto ldv_36199;
  } else {
  }
  offset = offset + bump;
  *(arr + (unsigned long )offset) = oip->opcode;
  put_unaligned_be16((int )oip->sa, (void *)(arr + ((unsigned long )offset + 2UL)));
  if ((int )rctd) {
    *(arr + ((unsigned long )offset + 5UL)) = (u8 )((unsigned int )*(arr + ((unsigned long )offset + 5UL)) | 2U);
  } else {
  }
  if (((unsigned int )oip->flags & 384U) != 0U) {
    *(arr + ((unsigned long )offset + 5UL)) = (u8 )((unsigned int )*(arr + ((unsigned long )offset + 5UL)) | 1U);
  } else {
  }
  put_unaligned_be16((int )oip->len_mask[0], (void *)(arr + ((unsigned long )offset + 6UL)));
  if ((int )rctd) {
    put_unaligned_be16(10, (void *)(arr + ((unsigned long )offset + 8UL)));
  } else {
  }
  ldv_36199:
  k = k + 1;
  oip = oip + 1;
  ldv_36201: ;
  if (k < na) {
    goto ldv_36200;
  } else {
  }
  oip = r_oip;
  offset = offset + bump;
  ldv_36198:
  oip = oip + 1;
  ldv_36204: ;
  if ((unsigned int )((unsigned char )oip->num_attached) != 255U && (u32 )offset < a_len) {
    goto ldv_36203;
  } else {
  }
  goto ldv_36206;
  case 1: ;
  case 2: ;
  case 3:
  sdeb_i = opcode_ind_arr[(int )req_opcode];
  oip = (struct opcode_info_t const *)(& opcode_info_arr) + (unsigned long )sdeb_i;
  if (((unsigned int )oip->flags & 512U) != 0U) {
    supp = 1U;
    offset = 4;
  } else {
    if ((unsigned int )reporting_opts == 1U) {
      if (((unsigned int )oip->flags & 384U) != 0U) {
        mk_sense_invalid_fld(scp, 1, 2, 2);
        kfree((void const *)arr);
        return ((int )check_condition_result);
      } else {
      }
      req_sa = 0U;
    } else
    if ((unsigned int )reporting_opts == 2U && ((unsigned int )oip->flags & 384U) == 0U) {
      mk_sense_invalid_fld(scp, 1, 4, -1);
      kfree((void const *)arr);
      return ((int )check_condition_result);
    } else {
    }
    if (((unsigned int )oip->flags & 384U) == 0U && (int )((unsigned char )oip->opcode) == (int )req_opcode) {
      supp = 3U;
    } else
    if (((unsigned int )oip->flags & 384U) == 0U) {
      na = (int )oip->num_attached;
      k = 0;
      oip = oip->arrp;
      goto ldv_36212;
      ldv_36211: ;
      if ((int )((unsigned char )oip->opcode) == (int )req_opcode) {
        goto ldv_36210;
      } else {
      }
      k = k + 1;
      oip = oip + 1;
      ldv_36212: ;
      if (k < na) {
        goto ldv_36211;
      } else {
      }
      ldv_36210:
      supp = k >= na ? 1U : 3U;
    } else
    if ((int )((unsigned short )oip->sa) != (int )req_sa) {
      na = (int )oip->num_attached;
      k = 0;
      oip = oip->arrp;
      goto ldv_36215;
      ldv_36214: ;
      if ((int )((unsigned short )oip->sa) == (int )req_sa) {
        goto ldv_36213;
      } else {
      }
      k = k + 1;
      oip = oip + 1;
      ldv_36215: ;
      if (k < na) {
        goto ldv_36214;
      } else {
      }
      ldv_36213:
      supp = k >= na ? 1U : 3U;
    } else {
      supp = 3U;
    }
    if ((unsigned int )supp == 3U) {
      u = (u16 )oip->len_mask[0];
      put_unaligned_be16((int )u, (void *)arr + 2U);
      *(arr + 4UL) = oip->opcode;
      k = 1;
      goto ldv_36217;
      ldv_36216:
      *(arr + (unsigned long )(k + 4)) = k <= 15 ? oip->len_mask[k] : 255U;
      k = k + 1;
      ldv_36217: ;
      if ((int )u > k) {
        goto ldv_36216;
      } else {
      }
      offset = (int )u + 4;
    } else {
      offset = 4;
    }
  }
  *(arr + 1UL) = (u8 )(((int )rctd ? -128 : 0) | (int )((signed char )supp));
  if ((int )rctd) {
    put_unaligned_be16(10, (void *)arr + (unsigned long )offset);
    offset = offset + 12;
  } else {
  }
  goto ldv_36206;
  default:
  mk_sense_invalid_fld(scp, 1, 2, 2);
  kfree((void const *)arr);
  return ((int )check_condition_result);
  }
  ldv_36206:
  offset = (int )(a_len < (u32 )offset ? a_len : (u32 )offset);
  len = (int )(alloc_len < (u32 )offset ? alloc_len : (u32 )offset);
  errsts = fill_from_dev_buffer(scp, arr, len);
  kfree((void const *)arr);
  return (errsts);
}
}
static int resp_rsup_tmfs(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  bool repd ;
  u32 alloc_len ;
  u32 len ;
  u8 arr[16U] ;
  u8 *cmd ;
  int tmp ;
  {
  cmd = scp->cmnd;
  memset((void *)(& arr), 0, 16UL);
  repd = (int )((signed char )*(cmd + 2UL)) < 0;
  alloc_len = get_unaligned_be32((void const *)cmd + 6U);
  if (alloc_len <= 3U) {
    mk_sense_invalid_fld(scp, 1, 6, -1);
    return ((int )check_condition_result);
  } else {
  }
  arr[0] = 200U;
  arr[1] = 1U;
  if ((int )repd) {
    arr[3] = 12U;
    len = 16U;
  } else {
    len = 4U;
  }
  len = len < alloc_len ? len : alloc_len;
  tmp = fill_from_dev_buffer(scp, (unsigned char *)(& arr), (int )len);
  return (tmp);
}
}
static int resp_err_recov_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char err_recov_pg[12U] ;
  {
  err_recov_pg[0] = 1U;
  err_recov_pg[1] = 10U;
  err_recov_pg[2] = 192U;
  err_recov_pg[3] = 11U;
  err_recov_pg[4] = 240U;
  err_recov_pg[5] = 0U;
  err_recov_pg[6] = 0U;
  err_recov_pg[7] = 0U;
  err_recov_pg[8] = 5U;
  err_recov_pg[9] = 0U;
  err_recov_pg[10] = 255U;
  err_recov_pg[11] = 255U;
  memcpy((void *)p, (void const *)(& err_recov_pg), 12UL);
  if (pcontrol == 1) {
    memset((void *)p + 2U, 0, 10UL);
  } else {
  }
  return (12);
}
}
static int resp_disconnect_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char disconnect_pg[16U] ;
  {
  disconnect_pg[0] = 2U;
  disconnect_pg[1] = 14U;
  disconnect_pg[2] = 128U;
  disconnect_pg[3] = 128U;
  disconnect_pg[4] = 0U;
  disconnect_pg[5] = 10U;
  disconnect_pg[6] = 0U;
  disconnect_pg[7] = 0U;
  disconnect_pg[8] = 0U;
  disconnect_pg[9] = 0U;
  disconnect_pg[10] = 0U;
  disconnect_pg[11] = 0U;
  disconnect_pg[12] = 0U;
  disconnect_pg[13] = 0U;
  disconnect_pg[14] = 0U;
  disconnect_pg[15] = 0U;
  memcpy((void *)p, (void const *)(& disconnect_pg), 16UL);
  if (pcontrol == 1) {
    memset((void *)p + 2U, 0, 14UL);
  } else {
  }
  return (16);
}
}
static int resp_format_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char format_pg[24U] ;
  {
  format_pg[0] = 3U;
  format_pg[1] = 22U;
  format_pg[2] = 0U;
  format_pg[3] = 0U;
  format_pg[4] = 0U;
  format_pg[5] = 0U;
  format_pg[6] = 0U;
  format_pg[7] = 0U;
  format_pg[8] = 0U;
  format_pg[9] = 0U;
  format_pg[10] = 0U;
  format_pg[11] = 0U;
  format_pg[12] = 0U;
  format_pg[13] = 0U;
  format_pg[14] = 0U;
  format_pg[15] = 0U;
  format_pg[16] = 0U;
  format_pg[17] = 0U;
  format_pg[18] = 0U;
  format_pg[19] = 0U;
  format_pg[20] = 64U;
  format_pg[21] = 0U;
  format_pg[22] = 0U;
  format_pg[23] = 0U;
  memcpy((void *)p, (void const *)(& format_pg), 24UL);
  *(p + 10UL) = (unsigned char )(sdebug_sectors_per >> 8);
  *(p + 11UL) = (unsigned char )sdebug_sectors_per;
  *(p + 12UL) = (unsigned char )(scsi_debug_sector_size >> 8);
  *(p + 13UL) = (unsigned char )scsi_debug_sector_size;
  if ((int )scsi_debug_removable) {
    *(p + 20UL) = (unsigned int )*(p + 20UL) | 32U;
  } else {
  }
  if (pcontrol == 1) {
    memset((void *)p + 2U, 0, 22UL);
  } else {
  }
  return (24);
}
}
static int resp_caching_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char ch_caching_pg[18U] ;
  unsigned char d_caching_pg[20U] ;
  {
  ch_caching_pg[0] = 4U;
  ch_caching_pg[1] = 0U;
  ch_caching_pg[2] = 0U;
  ch_caching_pg[3] = 0U;
  ch_caching_pg[4] = 0U;
  ch_caching_pg[5] = 0U;
  ch_caching_pg[6] = 0U;
  ch_caching_pg[7] = 0U;
  ch_caching_pg[8] = 0U;
  ch_caching_pg[9] = 0U;
  ch_caching_pg[10] = 0U;
  ch_caching_pg[11] = 0U;
  ch_caching_pg[12] = 0U;
  ch_caching_pg[13] = 0U;
  ch_caching_pg[14] = 0U;
  ch_caching_pg[15] = 0U;
  ch_caching_pg[16] = 0U;
  ch_caching_pg[17] = 0U;
  d_caching_pg[0] = 8U;
  d_caching_pg[1] = 18U;
  d_caching_pg[2] = 20U;
  d_caching_pg[3] = 0U;
  d_caching_pg[4] = 255U;
  d_caching_pg[5] = 255U;
  d_caching_pg[6] = 0U;
  d_caching_pg[7] = 0U;
  d_caching_pg[8] = 255U;
  d_caching_pg[9] = 255U;
  d_caching_pg[10] = 255U;
  d_caching_pg[11] = 255U;
  d_caching_pg[12] = 128U;
  d_caching_pg[13] = 20U;
  d_caching_pg[14] = 0U;
  d_caching_pg[15] = 0U;
  d_caching_pg[16] = 0U;
  d_caching_pg[17] = 0U;
  d_caching_pg[18] = 0U;
  d_caching_pg[19] = 0U;
  if ((scsi_debug_opts & 4096) != 0) {
    caching_pg[2] = (unsigned int )caching_pg[2] & 251U;
  } else {
  }
  memcpy((void *)p, (void const *)(& caching_pg), 20UL);
  if (pcontrol == 1) {
    memcpy((void *)p + 2U, (void const *)(& ch_caching_pg), 18UL);
  } else
  if (pcontrol == 2) {
    memcpy((void *)p, (void const *)(& d_caching_pg), 20UL);
  } else {
  }
  return (20);
}
}
static int resp_ctrl_m_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char ch_ctrl_m_pg[10U] ;
  unsigned char d_ctrl_m_pg[12U] ;
  {
  ch_ctrl_m_pg[0] = 6U;
  ch_ctrl_m_pg[1] = 0U;
  ch_ctrl_m_pg[2] = 0U;
  ch_ctrl_m_pg[3] = 0U;
  ch_ctrl_m_pg[4] = 0U;
  ch_ctrl_m_pg[5] = 0U;
  ch_ctrl_m_pg[6] = 0U;
  ch_ctrl_m_pg[7] = 0U;
  ch_ctrl_m_pg[8] = 0U;
  ch_ctrl_m_pg[9] = 0U;
  d_ctrl_m_pg[0] = 10U;
  d_ctrl_m_pg[1] = 10U;
  d_ctrl_m_pg[2] = 2U;
  d_ctrl_m_pg[3] = 0U;
  d_ctrl_m_pg[4] = 0U;
  d_ctrl_m_pg[5] = 0U;
  d_ctrl_m_pg[6] = 0U;
  d_ctrl_m_pg[7] = 0U;
  d_ctrl_m_pg[8] = 0U;
  d_ctrl_m_pg[9] = 0U;
  d_ctrl_m_pg[10] = 2U;
  d_ctrl_m_pg[11] = 75U;
  if (scsi_debug_dsense != 0) {
    ctrl_m_pg[2] = (unsigned int )ctrl_m_pg[2] | 4U;
  } else {
    ctrl_m_pg[2] = (unsigned int )ctrl_m_pg[2] & 251U;
  }
  if (scsi_debug_ato != 0) {
    ctrl_m_pg[5] = (unsigned int )ctrl_m_pg[5] | 128U;
  } else {
  }
  memcpy((void *)p, (void const *)(& ctrl_m_pg), 12UL);
  if (pcontrol == 1) {
    memcpy((void *)p + 2U, (void const *)(& ch_ctrl_m_pg), 10UL);
  } else
  if (pcontrol == 2) {
    memcpy((void *)p, (void const *)(& d_ctrl_m_pg), 12UL);
  } else {
  }
  return (12);
}
}
static int resp_iec_m_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char ch_iec_m_pg[10U] ;
  unsigned char d_iec_m_pg[12U] ;
  {
  ch_iec_m_pg[0] = 4U;
  ch_iec_m_pg[1] = 15U;
  ch_iec_m_pg[2] = 0U;
  ch_iec_m_pg[3] = 0U;
  ch_iec_m_pg[4] = 0U;
  ch_iec_m_pg[5] = 0U;
  ch_iec_m_pg[6] = 0U;
  ch_iec_m_pg[7] = 0U;
  ch_iec_m_pg[8] = 0U;
  ch_iec_m_pg[9] = 0U;
  d_iec_m_pg[0] = 28U;
  d_iec_m_pg[1] = 10U;
  d_iec_m_pg[2] = 8U;
  d_iec_m_pg[3] = 0U;
  d_iec_m_pg[4] = 0U;
  d_iec_m_pg[5] = 0U;
  d_iec_m_pg[6] = 0U;
  d_iec_m_pg[7] = 0U;
  d_iec_m_pg[8] = 0U;
  d_iec_m_pg[9] = 0U;
  d_iec_m_pg[10] = 0U;
  d_iec_m_pg[11] = 0U;
  memcpy((void *)p, (void const *)(& iec_m_pg), 12UL);
  if (pcontrol == 1) {
    memcpy((void *)p + 2U, (void const *)(& ch_iec_m_pg), 10UL);
  } else
  if (pcontrol == 2) {
    memcpy((void *)p, (void const *)(& d_iec_m_pg), 12UL);
  } else {
  }
  return (12);
}
}
static int resp_sas_sf_m_pg(unsigned char *p , int pcontrol , int target )
{
  unsigned char sas_sf_m_pg[8U] ;
  {
  sas_sf_m_pg[0] = 25U;
  sas_sf_m_pg[1] = 6U;
  sas_sf_m_pg[2] = 6U;
  sas_sf_m_pg[3] = 0U;
  sas_sf_m_pg[4] = 7U;
  sas_sf_m_pg[5] = 208U;
  sas_sf_m_pg[6] = 0U;
  sas_sf_m_pg[7] = 0U;
  memcpy((void *)p, (void const *)(& sas_sf_m_pg), 8UL);
  if (pcontrol == 1) {
    memset((void *)p + 2U, 0, 6UL);
  } else {
  }
  return (8);
}
}
static int resp_sas_pcd_m_spg(unsigned char *p , int pcontrol , int target , int target_dev_id )
{
  unsigned char sas_pcd_m_pg[104U] ;
  int port_a ;
  int port_b ;
  {
  sas_pcd_m_pg[0] = 89U;
  sas_pcd_m_pg[1] = 1U;
  sas_pcd_m_pg[2] = 0U;
  sas_pcd_m_pg[3] = 100U;
  sas_pcd_m_pg[4] = 0U;
  sas_pcd_m_pg[5] = 6U;
  sas_pcd_m_pg[6] = 0U;
  sas_pcd_m_pg[7] = 2U;
  sas_pcd_m_pg[8] = 0U;
  sas_pcd_m_pg[9] = 0U;
  sas_pcd_m_pg[10] = 0U;
  sas_pcd_m_pg[11] = 0U;
  sas_pcd_m_pg[12] = 16U;
  sas_pcd_m_pg[13] = 9U;
  sas_pcd_m_pg[14] = 8U;
  sas_pcd_m_pg[15] = 0U;
  sas_pcd_m_pg[16] = 82U;
  sas_pcd_m_pg[17] = 34U;
  sas_pcd_m_pg[18] = 34U;
  sas_pcd_m_pg[19] = 32U;
  sas_pcd_m_pg[20] = 0U;
  sas_pcd_m_pg[21] = 0U;
  sas_pcd_m_pg[22] = 0U;
  sas_pcd_m_pg[23] = 0U;
  sas_pcd_m_pg[24] = 81U;
  sas_pcd_m_pg[25] = 17U;
  sas_pcd_m_pg[26] = 17U;
  sas_pcd_m_pg[27] = 16U;
  sas_pcd_m_pg[28] = 0U;
  sas_pcd_m_pg[29] = 0U;
  sas_pcd_m_pg[30] = 0U;
  sas_pcd_m_pg[31] = 1U;
  sas_pcd_m_pg[32] = 2U;
  sas_pcd_m_pg[33] = 0U;
  sas_pcd_m_pg[34] = 0U;
  sas_pcd_m_pg[35] = 0U;
  sas_pcd_m_pg[36] = 0U;
  sas_pcd_m_pg[37] = 0U;
  sas_pcd_m_pg[38] = 0U;
  sas_pcd_m_pg[39] = 0U;
  sas_pcd_m_pg[40] = 136U;
  sas_pcd_m_pg[41] = 153U;
  sas_pcd_m_pg[42] = 0U;
  sas_pcd_m_pg[43] = 0U;
  sas_pcd_m_pg[44] = 0U;
  sas_pcd_m_pg[45] = 0U;
  sas_pcd_m_pg[46] = 0U;
  sas_pcd_m_pg[47] = 0U;
  sas_pcd_m_pg[48] = 0U;
  sas_pcd_m_pg[49] = 0U;
  sas_pcd_m_pg[50] = 0U;
  sas_pcd_m_pg[51] = 0U;
  sas_pcd_m_pg[52] = 0U;
  sas_pcd_m_pg[53] = 0U;
  sas_pcd_m_pg[54] = 0U;
  sas_pcd_m_pg[55] = 0U;
  sas_pcd_m_pg[56] = 0U;
  sas_pcd_m_pg[57] = 1U;
  sas_pcd_m_pg[58] = 0U;
  sas_pcd_m_pg[59] = 0U;
  sas_pcd_m_pg[60] = 16U;
  sas_pcd_m_pg[61] = 9U;
  sas_pcd_m_pg[62] = 8U;
  sas_pcd_m_pg[63] = 0U;
  sas_pcd_m_pg[64] = 82U;
  sas_pcd_m_pg[65] = 34U;
  sas_pcd_m_pg[66] = 34U;
  sas_pcd_m_pg[67] = 32U;
  sas_pcd_m_pg[68] = 0U;
  sas_pcd_m_pg[69] = 0U;
  sas_pcd_m_pg[70] = 0U;
  sas_pcd_m_pg[71] = 0U;
  sas_pcd_m_pg[72] = 81U;
  sas_pcd_m_pg[73] = 17U;
  sas_pcd_m_pg[74] = 17U;
  sas_pcd_m_pg[75] = 16U;
  sas_pcd_m_pg[76] = 0U;
  sas_pcd_m_pg[77] = 0U;
  sas_pcd_m_pg[78] = 0U;
  sas_pcd_m_pg[79] = 1U;
  sas_pcd_m_pg[80] = 3U;
  sas_pcd_m_pg[81] = 0U;
  sas_pcd_m_pg[82] = 0U;
  sas_pcd_m_pg[83] = 0U;
  sas_pcd_m_pg[84] = 0U;
  sas_pcd_m_pg[85] = 0U;
  sas_pcd_m_pg[86] = 0U;
  sas_pcd_m_pg[87] = 0U;
  sas_pcd_m_pg[88] = 136U;
  sas_pcd_m_pg[89] = 153U;
  sas_pcd_m_pg[90] = 0U;
  sas_pcd_m_pg[91] = 0U;
  sas_pcd_m_pg[92] = 0U;
  sas_pcd_m_pg[93] = 0U;
  sas_pcd_m_pg[94] = 0U;
  sas_pcd_m_pg[95] = 0U;
  sas_pcd_m_pg[96] = 0U;
  sas_pcd_m_pg[97] = 0U;
  sas_pcd_m_pg[98] = 0U;
  sas_pcd_m_pg[99] = 0U;
  sas_pcd_m_pg[100] = 0U;
  sas_pcd_m_pg[101] = 0U;
  sas_pcd_m_pg[102] = 0U;
  sas_pcd_m_pg[103] = 0U;
  port_a = target_dev_id + 1;
  port_b = port_a + 1;
  memcpy((void *)p, (void const *)(& sas_pcd_m_pg), 104UL);
  *(p + 20UL) = (unsigned char )(port_a >> 24);
  *(p + 21UL) = (unsigned char )(port_a >> 16);
  *(p + 22UL) = (unsigned char )(port_a >> 8);
  *(p + 23UL) = (unsigned char )port_a;
  *(p + 68UL) = (unsigned char )(port_b >> 24);
  *(p + 69UL) = (unsigned char )(port_b >> 16);
  *(p + 70UL) = (unsigned char )(port_b >> 8);
  *(p + 71UL) = (unsigned char )port_b;
  if (pcontrol == 1) {
    memset((void *)p + 4U, 0, 100UL);
  } else {
  }
  return (104);
}
}
static int resp_sas_sha_m_spg(unsigned char *p , int pcontrol )
{
  unsigned char sas_sha_m_pg[16U] ;
  {
  sas_sha_m_pg[0] = 89U;
  sas_sha_m_pg[1] = 2U;
  sas_sha_m_pg[2] = 0U;
  sas_sha_m_pg[3] = 12U;
  sas_sha_m_pg[4] = 0U;
  sas_sha_m_pg[5] = 6U;
  sas_sha_m_pg[6] = 16U;
  sas_sha_m_pg[7] = 0U;
  sas_sha_m_pg[8] = 0U;
  sas_sha_m_pg[9] = 0U;
  sas_sha_m_pg[10] = 0U;
  sas_sha_m_pg[11] = 0U;
  sas_sha_m_pg[12] = 0U;
  sas_sha_m_pg[13] = 0U;
  sas_sha_m_pg[14] = 0U;
  sas_sha_m_pg[15] = 0U;
  memcpy((void *)p, (void const *)(& sas_sha_m_pg), 16UL);
  if (pcontrol == 1) {
    memset((void *)p + 4U, 0, 12UL);
  } else {
  }
  return (16);
}
}
static int resp_mode_sense(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char dbd ;
  unsigned char llbaa ;
  int pcontrol ;
  int pcode ;
  int subpcode ;
  int bd_len ;
  unsigned char dev_spec ;
  int k ;
  int alloc_len ;
  int msense_6 ;
  int offset ;
  int len ;
  int target_dev_id ;
  int target ;
  unsigned char *ap ;
  unsigned char arr[256U] ;
  unsigned char *cmd ;
  unsigned long long capac ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int _min1 ;
  int _min2 ;
  int tmp___10 ;
  {
  target = (int )(scp->device)->id;
  cmd = scp->cmnd;
  dbd = ((int )*(cmd + 1UL) & 8) != 0;
  pcontrol = (int )*(cmd + 2UL) >> 6;
  pcode = (int )*(cmd + 2UL) & 63;
  subpcode = (int )*(cmd + 3UL);
  msense_6 = (unsigned int )*cmd == 26U;
  llbaa = (unsigned char )(msense_6 == 0 && ((int )*(cmd + 1UL) & 16) != 0);
  if (scsi_debug_ptype == 0 && (unsigned int )dbd == 0U) {
    bd_len = (unsigned int )llbaa != 0U ? 16 : 8;
  } else {
    bd_len = 0;
  }
  alloc_len = msense_6 != 0 ? (int )*(cmd + 4UL) : ((int )*(cmd + 7UL) << 8) | (int )*(cmd + 8UL);
  memset((void *)(& arr), 0, 256UL);
  if (pcontrol == 3) {
    mk_sense_buffer(scp, 5, 57, 0);
    return ((int )check_condition_result);
  } else {
  }
  target_dev_id = (int )(((((devip->sdbg_host)->shost)->host_no + 1U) * 2000U + devip->target * 1000U) - 3U);
  if (scsi_debug_ptype == 0) {
    dev_spec = 16U;
  } else {
    dev_spec = 0U;
  }
  if (msense_6 != 0) {
    arr[2] = dev_spec;
    arr[3] = (unsigned char )bd_len;
    offset = 4;
  } else {
    arr[3] = dev_spec;
    if (bd_len == 16) {
      arr[4] = 1U;
    } else {
    }
    arr[7] = (unsigned char )bd_len;
    offset = 8;
  }
  ap = (unsigned char *)(& arr) + (unsigned long )offset;
  if (bd_len > 0 && sdebug_capacity == 0UL) {
    sdebug_capacity = get_sdebug_capacity();
  } else {
  }
  if (bd_len == 8) {
    if (sdebug_capacity > 4294967294UL) {
      *ap = 255U;
      *(ap + 1UL) = 255U;
      *(ap + 2UL) = 255U;
      *(ap + 3UL) = 255U;
    } else {
      *ap = (unsigned char )(sdebug_capacity >> 24);
      *(ap + 1UL) = (unsigned char )(sdebug_capacity >> 16);
      *(ap + 2UL) = (unsigned char )(sdebug_capacity >> 8);
      *(ap + 3UL) = (unsigned char )sdebug_capacity;
    }
    *(ap + 6UL) = (unsigned char )(scsi_debug_sector_size >> 8);
    *(ap + 7UL) = (unsigned char )scsi_debug_sector_size;
    offset = offset + bd_len;
    ap = (unsigned char *)(& arr) + (unsigned long )offset;
  } else
  if (bd_len == 16) {
    capac = (unsigned long long )sdebug_capacity;
    k = 0;
    goto ldv_36311;
    ldv_36310:
    *(ap + (unsigned long )(7 - k)) = (unsigned char )capac;
    k = k + 1;
    capac = capac >> 8;
    ldv_36311: ;
    if (k <= 7) {
      goto ldv_36310;
    } else {
    }
    *(ap + 12UL) = (unsigned char )((unsigned int )scsi_debug_sector_size >> 24);
    *(ap + 13UL) = (unsigned char )(scsi_debug_sector_size >> 16);
    *(ap + 14UL) = (unsigned char )(scsi_debug_sector_size >> 8);
    *(ap + 15UL) = (unsigned char )scsi_debug_sector_size;
    offset = offset + bd_len;
    ap = (unsigned char *)(& arr) + (unsigned long )offset;
  } else {
  }
  if ((subpcode > 0 && subpcode <= 254) && pcode != 25) {
    mk_sense_invalid_fld(scp, 1, 3, -1);
    return ((int )check_condition_result);
  } else {
  }
  switch (pcode) {
  case 1:
  len = resp_err_recov_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 2:
  len = resp_disconnect_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 3:
  len = resp_format_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 8:
  len = resp_caching_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 10:
  len = resp_ctrl_m_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 25: ;
  if (subpcode > 2 && subpcode <= 254) {
    mk_sense_invalid_fld(scp, 1, 3, -1);
    return ((int )check_condition_result);
  } else {
  }
  len = 0;
  if (subpcode == 0 || subpcode == 255) {
    tmp = resp_sas_sf_m_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp + len;
  } else {
  }
  if (subpcode == 1 || subpcode == 255) {
    tmp___0 = resp_sas_pcd_m_spg(ap + (unsigned long )len, pcontrol, target, target_dev_id);
    len = tmp___0 + len;
  } else {
  }
  if (subpcode == 2 || subpcode == 255) {
    tmp___1 = resp_sas_sha_m_spg(ap + (unsigned long )len, pcontrol);
    len = tmp___1 + len;
  } else {
  }
  offset = offset + len;
  goto ldv_36314;
  case 28:
  len = resp_iec_m_pg(ap, pcontrol, target);
  offset = offset + len;
  goto ldv_36314;
  case 63: ;
  if (subpcode == 0 || subpcode == 255) {
    len = resp_err_recov_pg(ap, pcontrol, target);
    tmp___2 = resp_disconnect_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___2 + len;
    tmp___3 = resp_format_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___3 + len;
    tmp___4 = resp_caching_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___4 + len;
    tmp___5 = resp_ctrl_m_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___5 + len;
    tmp___6 = resp_sas_sf_m_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___6 + len;
    if (subpcode == 255) {
      tmp___7 = resp_sas_pcd_m_spg(ap + (unsigned long )len, pcontrol, target, target_dev_id);
      len = tmp___7 + len;
      tmp___8 = resp_sas_sha_m_spg(ap + (unsigned long )len, pcontrol);
      len = tmp___8 + len;
    } else {
    }
    tmp___9 = resp_iec_m_pg(ap + (unsigned long )len, pcontrol, target);
    len = tmp___9 + len;
  } else {
    mk_sense_invalid_fld(scp, 1, 3, -1);
    return ((int )check_condition_result);
  }
  offset = offset + len;
  goto ldv_36314;
  default:
  mk_sense_invalid_fld(scp, 1, 2, 5);
  return ((int )check_condition_result);
  }
  ldv_36314: ;
  if (msense_6 != 0) {
    arr[0] = (unsigned int )((unsigned char )offset) + 255U;
  } else {
    arr[0] = (unsigned char )((offset + -2) >> 8);
    arr[1] = (unsigned int )((unsigned char )offset) + 254U;
  }
  _min1 = alloc_len;
  _min2 = offset;
  tmp___10 = fill_from_dev_buffer(scp, (unsigned char *)(& arr), _min1 < _min2 ? _min1 : _min2);
  return (tmp___10);
}
}
static int resp_mode_select(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  int pf ;
  int sp ;
  int ps ;
  int md_len ;
  int bd_len ;
  int off ;
  int spf ;
  int pg_len ;
  int param_len ;
  int res ;
  int mpage ;
  unsigned char arr[512U] ;
  unsigned char *cmd ;
  int mselect6 ;
  {
  cmd = scp->cmnd;
  mselect6 = (unsigned int )*cmd == 21U;
  memset((void *)(& arr), 0, 512UL);
  pf = (int )*(cmd + 1UL) & 16;
  sp = (int )*(cmd + 1UL) & 1;
  param_len = mselect6 != 0 ? (int )*(cmd + 4UL) : ((int )*(cmd + 7UL) << 8) + (int )*(cmd + 8UL);
  if ((pf == 0 || sp != 0) || param_len > 512) {
    mk_sense_invalid_fld(scp, 1, mselect6 != 0 ? 4 : 7, -1);
    return ((int )check_condition_result);
  } else {
  }
  res = fetch_to_dev_buffer(scp, (unsigned char *)(& arr), param_len);
  if (res == -1) {
    return (458752);
  } else
  if (res < param_len && scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: cdb indicated=%d, IO sent=%d bytes\n", "resp_mode_select",
                       param_len, res);
  } else {
  }
  md_len = mselect6 != 0 ? (int )arr[0] + 1 : (((int )arr[0] << 8) + (int )arr[1]) + 2;
  bd_len = mselect6 != 0 ? (int )arr[3] : ((int )arr[6] << 8) + (int )arr[7];
  if (md_len > 2) {
    mk_sense_invalid_fld(scp, 0, 0, -1);
    return ((int )check_condition_result);
  } else {
  }
  off = (mselect6 != 0 ? 4 : 8) + bd_len;
  mpage = (int )arr[off] & 63;
  ps = (int )((signed char )arr[off]) < 0;
  if (ps != 0) {
    mk_sense_invalid_fld(scp, 0, off, 7);
    return ((int )check_condition_result);
  } else {
  }
  spf = ((int )arr[off] & 64) != 0;
  pg_len = spf != 0 ? (((int )arr[off + 2] << 8) + (int )arr[off + 3]) + 4 : (int )arr[off + 1] + 2;
  if (pg_len + off > param_len) {
    mk_sense_buffer(scp, 5, 26, 0);
    return ((int )check_condition_result);
  } else {
  }
  switch (mpage) {
  case 8: ;
  if ((int )caching_pg[1] == (int )arr[off + 1]) {
    memcpy((void *)(& caching_pg) + 2U, (void const *)(& arr) + ((unsigned long )off + 2UL),
             18UL);
    goto set_mode_changed_ua;
  } else {
  }
  goto ldv_36347;
  case 10: ;
  if ((int )ctrl_m_pg[1] == (int )arr[off + 1]) {
    memcpy((void *)(& ctrl_m_pg) + 2U, (void const *)(& arr) + ((unsigned long )off + 2UL),
             10UL);
    scsi_debug_dsense = ((int )ctrl_m_pg[2] & 4) != 0;
    goto set_mode_changed_ua;
  } else {
  }
  goto ldv_36347;
  case 28: ;
  if ((int )iec_m_pg[1] == (int )arr[off + 1]) {
    memcpy((void *)(& iec_m_pg) + 2U, (void const *)(& arr) + ((unsigned long )off + 2UL),
             10UL);
    goto set_mode_changed_ua;
  } else {
  }
  goto ldv_36347;
  default: ;
  goto ldv_36347;
  }
  ldv_36347:
  mk_sense_invalid_fld(scp, 0, off, 5);
  return ((int )check_condition_result);
  set_mode_changed_ua:
  set_bit(2L, (unsigned long volatile *)(& devip->uas_bm));
  return (0);
}
}
static int resp_temp_l_pg(unsigned char *arr )
{
  unsigned char temp_l_pg[12U] ;
  {
  temp_l_pg[0] = 0U;
  temp_l_pg[1] = 0U;
  temp_l_pg[2] = 3U;
  temp_l_pg[3] = 2U;
  temp_l_pg[4] = 0U;
  temp_l_pg[5] = 38U;
  temp_l_pg[6] = 0U;
  temp_l_pg[7] = 1U;
  temp_l_pg[8] = 3U;
  temp_l_pg[9] = 2U;
  temp_l_pg[10] = 0U;
  temp_l_pg[11] = 65U;
  memcpy((void *)arr, (void const *)(& temp_l_pg), 12UL);
  return (12);
}
}
static int resp_ie_l_pg(unsigned char *arr )
{
  unsigned char ie_l_pg[7U] ;
  {
  ie_l_pg[0] = 0U;
  ie_l_pg[1] = 0U;
  ie_l_pg[2] = 3U;
  ie_l_pg[3] = 3U;
  ie_l_pg[4] = 0U;
  ie_l_pg[5] = 0U;
  ie_l_pg[6] = 38U;
  memcpy((void *)arr, (void const *)(& ie_l_pg), 7UL);
  if (((int )iec_m_pg[2] & 4) != 0) {
    *(arr + 4UL) = 93U;
    *(arr + 5UL) = 255U;
  } else {
  }
  return (7);
}
}
static int resp_log_sense(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  int ppc ;
  int sp ;
  int pcontrol ;
  int pcode ;
  int subpcode ;
  int alloc_len ;
  int len ;
  int n ;
  unsigned char arr[512U] ;
  unsigned char *cmd ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp___16 ;
  {
  cmd = scp->cmnd;
  memset((void *)(& arr), 0, 512UL);
  ppc = (int )*(cmd + 1UL) & 2;
  sp = (int )*(cmd + 1UL) & 1;
  if (ppc != 0 || sp != 0) {
    mk_sense_invalid_fld(scp, 1, 1, ppc != 0);
    return ((int )check_condition_result);
  } else {
  }
  pcontrol = (int )*(cmd + 2UL) >> 6;
  pcode = (int )*(cmd + 2UL) & 63;
  subpcode = (int )*(cmd + 3UL);
  alloc_len = ((int )*(cmd + 7UL) << 8) + (int )*(cmd + 8UL);
  arr[0] = (unsigned char )pcode;
  if (subpcode == 0) {
    switch (pcode) {
    case 0:
    n = 4;
    tmp = n;
    n = n + 1;
    arr[tmp] = 0U;
    tmp___0 = n;
    n = n + 1;
    arr[tmp___0] = 13U;
    tmp___1 = n;
    n = n + 1;
    arr[tmp___1] = 47U;
    arr[3] = (unsigned int )((unsigned char )n) + 252U;
    goto ldv_36374;
    case 13:
    tmp___2 = resp_temp_l_pg((unsigned char *)(& arr) + 4UL);
    arr[3] = (unsigned char )tmp___2;
    goto ldv_36374;
    case 47:
    tmp___3 = resp_ie_l_pg((unsigned char *)(& arr) + 4UL);
    arr[3] = (unsigned char )tmp___3;
    goto ldv_36374;
    default:
    mk_sense_invalid_fld(scp, 1, 2, 5);
    return ((int )check_condition_result);
    }
    ldv_36374: ;
  } else
  if (subpcode == 255) {
    arr[0] = (unsigned int )arr[0] | 64U;
    arr[1] = (unsigned char )subpcode;
    switch (pcode) {
    case 0:
    n = 4;
    tmp___4 = n;
    n = n + 1;
    arr[tmp___4] = 0U;
    tmp___5 = n;
    n = n + 1;
    arr[tmp___5] = 0U;
    tmp___6 = n;
    n = n + 1;
    arr[tmp___6] = 0U;
    tmp___7 = n;
    n = n + 1;
    arr[tmp___7] = 255U;
    tmp___8 = n;
    n = n + 1;
    arr[tmp___8] = 13U;
    tmp___9 = n;
    n = n + 1;
    arr[tmp___9] = 0U;
    tmp___10 = n;
    n = n + 1;
    arr[tmp___10] = 47U;
    tmp___11 = n;
    n = n + 1;
    arr[tmp___11] = 0U;
    arr[3] = (unsigned int )((unsigned char )n) + 252U;
    goto ldv_36379;
    case 13:
    n = 4;
    tmp___12 = n;
    n = n + 1;
    arr[tmp___12] = 13U;
    tmp___13 = n;
    n = n + 1;
    arr[tmp___13] = 0U;
    arr[3] = (unsigned int )((unsigned char )n) + 252U;
    goto ldv_36379;
    case 47:
    n = 4;
    tmp___14 = n;
    n = n + 1;
    arr[tmp___14] = 47U;
    tmp___15 = n;
    n = n + 1;
    arr[tmp___15] = 0U;
    arr[3] = (unsigned int )((unsigned char )n) + 252U;
    goto ldv_36379;
    default:
    mk_sense_invalid_fld(scp, 1, 2, 5);
    return ((int )check_condition_result);
    }
    ldv_36379: ;
  } else {
    mk_sense_invalid_fld(scp, 1, 3, -1);
    return ((int )check_condition_result);
  }
  _min1 = (((int )arr[2] << 8) + (int )arr[3]) + 4;
  _min2 = alloc_len;
  len = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = len;
  _min2___0 = 584;
  tmp___16 = fill_from_dev_buffer(scp, (unsigned char *)(& arr), _min1___0 < _min2___0 ? _min1___0 : _min2___0);
  return (tmp___16);
}
}
static int check_device_access_params(struct scsi_cmnd *scp , unsigned long long lba ,
                                      unsigned int num )
{
  {
  if ((unsigned long long )num + lba > (unsigned long long )sdebug_capacity) {
    mk_sense_buffer(scp, 5, 33, 0);
    return ((int )check_condition_result);
  } else {
  }
  if (num > sdebug_store_sectors) {
    mk_sense_buffer(scp, 5, 36, 0);
    return ((int )check_condition_result);
  } else {
  }
  return (0);
}
}
static int do_device_access(struct scsi_cmnd *scmd , u64 lba , u32 num , bool do_write )
{
  int ret ;
  u64 block ;
  u64 rest ;
  struct scsi_data_buffer *sdb ;
  enum dma_data_direction dir ;
  int tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  {
  rest = 0ULL;
  if ((int )do_write) {
    sdb = scsi_out(scmd);
    dir = 1;
  } else {
    sdb = scsi_in(scmd);
    dir = 2;
  }
  if (sdb->length == 0U) {
    return (0);
  } else {
  }
  tmp = scsi_bidi_cmnd(scmd);
  if (tmp == 0 && (unsigned int )scmd->sc_data_direction != (unsigned int )dir) {
    return (-1);
  } else {
  }
  __base = sdebug_store_sectors;
  __rem = (uint32_t )(lba % (u64 )__base);
  lba = lba / (u64 )__base;
  block = (u64 )__rem;
  if ((u64 )num + block > (u64 )sdebug_store_sectors) {
    rest = ((u64 )num + block) - (u64 )sdebug_store_sectors;
  } else {
  }
  tmp___0 = sg_copy_buffer(sdb->table.sgl, sdb->table.nents, (void *)(fake_storep + (u64 )scsi_debug_sector_size * block),
                           (size_t )(((u64 )num - rest) * (u64 )scsi_debug_sector_size),
                           0L, (int )do_write);
  ret = (int )tmp___0;
  if ((u64 )ret != ((u64 )num - rest) * (u64 )scsi_debug_sector_size) {
    return (ret);
  } else {
  }
  if (rest != 0ULL) {
    tmp___1 = sg_copy_buffer(sdb->table.sgl, sdb->table.nents, (void *)fake_storep,
                             (size_t )((u64 )scsi_debug_sector_size * rest), (off_t )(((u64 )num - rest) * (u64 )scsi_debug_sector_size),
                             (int )do_write);
    ret = (int )((unsigned int )tmp___1 + (unsigned int )ret);
  } else {
  }
  return (ret);
}
}
static bool comp_write_worker(u64 lba , u32 num , u8 const *arr )
{
  bool res ;
  u64 block ;
  u64 rest ;
  u32 store_blks ;
  u32 lb_size ;
  uint32_t __base ;
  uint32_t __rem ;
  int tmp ;
  int tmp___0 ;
  {
  rest = 0ULL;
  store_blks = sdebug_store_sectors;
  lb_size = (u32 )scsi_debug_sector_size;
  __base = store_blks;
  __rem = (uint32_t )(lba % (u64 )__base);
  lba = lba / (u64 )__base;
  block = (u64 )__rem;
  if ((u64 )num + block > (u64 )store_blks) {
    rest = ((u64 )num + block) - (u64 )store_blks;
  } else {
  }
  tmp = memcmp((void const *)(fake_storep + (u64 )lb_size * block), (void const *)arr,
               (size_t )(((u64 )num - rest) * (u64 )lb_size));
  res = tmp == 0;
  if (! res) {
    return (res);
  } else {
  }
  if (rest != 0ULL) {
    tmp___0 = memcmp((void const *)fake_storep, (void const *)(arr + ((u64 )num - rest) * (u64 )lb_size),
                     (size_t )((u64 )lb_size * rest));
    res = tmp___0 != 0;
  } else {
  }
  if (! res) {
    return (res);
  } else {
  }
  arr = arr + (unsigned long )(num * lb_size);
  memcpy((void *)(fake_storep + (u64 )lb_size * block), (void const *)arr, (size_t )(((u64 )num - rest) * (u64 )lb_size));
  if (rest != 0ULL) {
    memcpy((void *)fake_storep, (void const *)(arr + ((u64 )num - rest) * (u64 )lb_size),
             (size_t )((u64 )lb_size * rest));
  } else {
  }
  return (res);
}
}
static __be16 dif_compute_csum(void const *buf , int len )
{
  __be16 csum ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  if (scsi_debug_guard != 0U) {
    csum = ip_compute_csum(buf, len);
  } else {
    tmp = crc_t10dif((unsigned char const *)buf, (size_t )len);
    tmp___0 = __fswab16((int )tmp);
    csum = tmp___0;
  }
  return (csum);
}
}
static int dif_verify(struct sd_dif_tuple *sdt , void const *data , sector_t sector ,
                      u32 ei_lba )
{
  __be16 csum ;
  __be16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  tmp = dif_compute_csum(data, scsi_debug_sector_size);
  csum = tmp;
  if ((int )sdt->guard_tag != (int )csum) {
    tmp___0 = __fswab16((int )csum);
    tmp___1 = __fswab16((int )sdt->guard_tag);
    printk("\v%s: GUARD check failed on sector %lu rcvd 0x%04x, data 0x%04x\n", "dif_verify",
           sector, (int )tmp___1, (int )tmp___0);
    return (1);
  } else {
  }
  if (scsi_debug_dif == 1) {
    tmp___2 = __fswab32(sdt->ref_tag);
    if ((sector_t )tmp___2 != (sector & 4294967295UL)) {
      printk("\v%s: REF check failed on sector %lu\n", "dif_verify", sector);
      return (3);
    } else {
    }
  } else {
  }
  if (scsi_debug_dif == 2) {
    tmp___3 = __fswab32(sdt->ref_tag);
    if (tmp___3 != ei_lba) {
      printk("\v%s: REF check failed on sector %lu\n", "dif_verify", sector);
      return (3);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void dif_copy_prot(struct scsi_cmnd *SCpnt , sector_t sector , unsigned int sectors ,
                          bool read )
{
  size_t resid ;
  void *paddr ;
  void const *dif_store_end ;
  struct sg_mapping_iter miter ;
  unsigned int tmp ;
  struct scatterlist *tmp___0 ;
  size_t len ;
  size_t _min1 ;
  size_t _min2 ;
  void *start ;
  struct sd_dif_tuple *tmp___1 ;
  size_t rest ;
  bool tmp___2 ;
  {
  dif_store_end = (void const *)dif_storep + (unsigned long )sdebug_store_sectors;
  resid = (unsigned long )sectors * 8UL;
  tmp = scsi_prot_sg_count(SCpnt);
  tmp___0 = scsi_prot_sglist(SCpnt);
  sg_miter_start(& miter, tmp___0, tmp, (int )read ? 3U : 5U);
  goto ldv_36451;
  ldv_36450:
  _min1 = miter.length;
  _min2 = resid;
  len = _min1 < _min2 ? _min1 : _min2;
  tmp___1 = dif_store(sector);
  start = (void *)tmp___1;
  rest = 0UL;
  if ((unsigned long )((void const *)(start + len)) > (unsigned long )dif_store_end) {
    rest = (size_t )((long )(start + len) - (long )dif_store_end);
  } else {
  }
  paddr = miter.addr;
  if ((int )read) {
    memcpy(paddr, (void const *)start, len - rest);
  } else {
    memcpy(start, (void const *)paddr, len - rest);
  }
  if (rest != 0UL) {
    if ((int )read) {
      memcpy(paddr + (len - rest), (void const *)dif_storep, rest);
    } else {
      memcpy((void *)dif_storep, (void const *)(paddr + (len - rest)), rest);
    }
  } else {
  }
  sector = len / 8UL + sector;
  resid = resid - len;
  ldv_36451:
  tmp___2 = sg_miter_next(& miter);
  if ((int )tmp___2 && resid != 0UL) {
    goto ldv_36450;
  } else {
  }
  sg_miter_stop(& miter);
  return;
}
}
static int prot_verify_read(struct scsi_cmnd *SCpnt , sector_t start_sec , unsigned int sectors ,
                            u32 ei_lba )
{
  unsigned int i ;
  struct sd_dif_tuple *sdt ;
  sector_t sector ;
  int ret ;
  void *tmp ;
  {
  i = 0U;
  goto ldv_36465;
  ldv_36464:
  sector = (sector_t )i + start_sec;
  sdt = dif_store(sector);
  if ((unsigned int )sdt->app_tag == 65535U) {
    goto ldv_36463;
  } else {
  }
  tmp = fake_store((unsigned long long )sector);
  ret = dif_verify(sdt, (void const *)tmp, sector, ei_lba);
  if (ret != 0) {
    dif_errors = dif_errors + 1;
    return (ret);
  } else {
  }
  ldv_36463:
  i = i + 1U;
  ei_lba = ei_lba + 1U;
  ldv_36465: ;
  if (i < sectors) {
    goto ldv_36464;
  } else {
  }
  dif_copy_prot(SCpnt, start_sec, sectors, 1);
  dix_reads = dix_reads + 1;
  return (0);
}
}
static int resp_read_dt0(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u64 lba ;
  u32 num ;
  u32 ei_lba ;
  unsigned long iflags ;
  int ret ;
  bool check_prot ;
  u32 tmp ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u16 tmp___3 ;
  struct sdebug_scmd_extra_t *ep ;
  void *tmp___4 ;
  unsigned int tmp___5 ;
  int prot_ret ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  struct scsi_data_buffer *tmp___8 ;
  unsigned int tmp___9 ;
  struct sdebug_scmd_extra_t *ep___0 ;
  void *tmp___10 ;
  {
  cmd = scp->cmnd;
  switch ((int )*cmd) {
  case 136:
  ei_lba = 0U;
  lba = get_unaligned_be64((void const *)cmd + 2U);
  num = get_unaligned_be32((void const *)cmd + 10U);
  check_prot = 1;
  goto ldv_36479;
  case 40:
  ei_lba = 0U;
  tmp = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp;
  tmp___0 = get_unaligned_be16((void const *)cmd + 7U);
  num = (u32 )tmp___0;
  check_prot = 1;
  goto ldv_36479;
  case 8:
  ei_lba = 0U;
  lba = (u64 )(((unsigned int )*(cmd + 3UL) | ((unsigned int )*(cmd + 2UL) << 8)) | (((unsigned int )*(cmd + 1UL) & 31U) << 16));
  num = (unsigned int )*(cmd + 4UL) != 0U ? (u32 )*(cmd + 4UL) : 256U;
  check_prot = 1;
  goto ldv_36479;
  case 168:
  ei_lba = 0U;
  tmp___1 = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp___1;
  num = get_unaligned_be32((void const *)cmd + 6U);
  check_prot = 1;
  goto ldv_36479;
  case 83:
  ei_lba = 0U;
  tmp___2 = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp___2;
  tmp___3 = get_unaligned_be16((void const *)cmd + 7U);
  num = (u32 )tmp___3;
  check_prot = 0;
  goto ldv_36479;
  default:
  lba = get_unaligned_be64((void const *)cmd + 12U);
  ei_lba = get_unaligned_be32((void const *)cmd + 20U);
  num = get_unaligned_be32((void const *)cmd + 28U);
  check_prot = 0;
  goto ldv_36479;
  }
  ldv_36479: ;
  if ((int )check_prot) {
    if (scsi_debug_dif == 2 && ((int )*(cmd + 1UL) & 224) != 0) {
      mk_sense_invalid_opcode(scp);
      return ((int )check_condition_result);
    } else {
    }
    if ((scsi_debug_dif == 1 || scsi_debug_dif == 3) && ((int )*(cmd + 1UL) & 224) == 0) {
      sdev_prefix_printk("\v", (struct scsi_device const *)scp->device, (char const *)0,
                         "Unprotected RD to DIF device\n");
    } else {
    }
  } else {
  }
  if ((int )sdebug_any_injecting_opt) {
    tmp___4 = scsi_cmd_priv(scp);
    ep = (struct sdebug_scmd_extra_t *)tmp___4;
    if ((int )ep->inj_short) {
      num = num / 2U;
    } else {
    }
  } else {
  }
  if ((u64 )num + lba > (unsigned long long )sdebug_capacity) {
    mk_sense_buffer(scp, 5, 33, 0);
    return ((int )check_condition_result);
  } else {
  }
  if (num > sdebug_store_sectors) {
    mk_sense_buffer(scp, 5, 36, 0);
    return ((int )check_condition_result);
  } else {
  }
  if (((scsi_debug_opts & 2) != 0 && lba <= 4669ULL) && (u64 )num + lba > 4660ULL) {
    mk_sense_buffer(scp, 3, 17, 0);
    if (((int )*(scp->sense_buffer) & 127) == 112) {
      *(scp->sense_buffer) = (unsigned int )*(scp->sense_buffer) | 128U;
      ret = lba > 4659ULL ? (int )lba : 4660;
      put_unaligned_be32((u32 )ret, (void *)scp->sense_buffer + 3U);
    } else {
    }
    tmp___5 = scsi_bufflen(scp);
    scsi_set_resid(scp, (int )tmp___5);
    return ((int )check_condition_result);
  } else {
  }
  iflags = _raw_read_lock_irqsave(& atomic_rw);
  if (scsi_debug_dix != 0) {
    tmp___7 = scsi_prot_sg_count(scp);
    if (tmp___7 != 0U) {
      tmp___6 = prot_verify_read(scp, (sector_t )lba, num, ei_lba);
      prot_ret = tmp___6;
      if (prot_ret != 0) {
        _raw_read_unlock_irqrestore(& atomic_rw, iflags);
        mk_sense_buffer(scp, 11, 16, prot_ret);
        return ((int )illegal_condition_result);
      } else {
      }
    } else {
    }
  } else {
  }
  ret = do_device_access(scp, lba, num, 0);
  _raw_read_unlock_irqrestore(& atomic_rw, iflags);
  if (ret == -1) {
    return (458752);
  } else {
  }
  tmp___8 = scsi_in(scp);
  tmp___9 = scsi_bufflen(scp);
  tmp___8->resid = (int )(tmp___9 - (unsigned int )ret);
  if ((int )sdebug_any_injecting_opt) {
    tmp___10 = scsi_cmd_priv(scp);
    ep___0 = (struct sdebug_scmd_extra_t *)tmp___10;
    if ((int )ep___0->inj_recovered) {
      mk_sense_buffer(scp, 1, 93, 0);
      return ((int )check_condition_result);
    } else
    if ((int )ep___0->inj_transport) {
      mk_sense_buffer(scp, 11, 75, 3);
      return ((int )check_condition_result);
    } else
    if ((int )ep___0->inj_dif) {
      mk_sense_buffer(scp, 11, 16, 1);
      return ((int )illegal_condition_result);
    } else
    if ((int )ep___0->inj_dix) {
      mk_sense_buffer(scp, 5, 16, 1);
      return ((int )illegal_condition_result);
    } else {
    }
  } else {
  }
  return (0);
}
}
void dump_sector(unsigned char *buf , int len )
{
  int i ;
  int j ;
  int n ;
  char b[128U] ;
  unsigned char c ;
  int tmp ;
  int tmp___0 ;
  {
  printk("\v>>> Sector Dump <<<\n");
  i = 0;
  goto ldv_36510;
  ldv_36509:
  j = 0;
  n = 0;
  goto ldv_36507;
  ldv_36506:
  c = *(buf + (unsigned long )(i + j));
  if ((unsigned int )c > 31U && (unsigned int )c <= 125U) {
    tmp = scnprintf((char *)(& b) + (unsigned long )n, 128UL - (unsigned long )n,
                    " %c ", (int )*(buf + (unsigned long )(i + j)));
    n = tmp + n;
  } else {
    tmp___0 = scnprintf((char *)(& b) + (unsigned long )n, 128UL - (unsigned long )n,
                        "%02x ", (int )*(buf + (unsigned long )(i + j)));
    n = tmp___0 + n;
  }
  j = j + 1;
  ldv_36507: ;
  if (j <= 15) {
    goto ldv_36506;
  } else {
  }
  printk("\v%04d: %s\n", i, (char *)(& b));
  i = i + 16;
  ldv_36510: ;
  if (i < len) {
    goto ldv_36509;
  } else {
  }
  return;
}
}
static int prot_verify_write(struct scsi_cmnd *SCpnt , sector_t start_sec , unsigned int sectors ,
                             u32 ei_lba )
{
  int ret ;
  struct sd_dif_tuple *sdt ;
  void *daddr ;
  sector_t sector ;
  int ppage_offset ;
  int dpage_offset ;
  struct sg_mapping_iter diter ;
  struct sg_mapping_iter piter ;
  unsigned int tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  struct scatterlist *tmp___4 ;
  unsigned int tmp___5 ;
  struct scatterlist *tmp___6 ;
  int __ret_warn_on ;
  bool tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int __ret_warn_on___0 ;
  bool tmp___11 ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  bool tmp___15 ;
  {
  sector = start_sec;
  tmp = scsi_sg_count(SCpnt);
  tmp___0 = ldv__builtin_expect(tmp == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c"),
                         "i" (2717), "i" (12UL));
    ldv_36526: ;
    goto ldv_36526;
  } else {
  }
  tmp___1 = scsi_prot_sg_count(SCpnt);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c"),
                         "i" (2718), "i" (12UL));
    ldv_36527: ;
    goto ldv_36527;
  } else {
  }
  tmp___3 = scsi_prot_sg_count(SCpnt);
  tmp___4 = scsi_prot_sglist(SCpnt);
  sg_miter_start(& piter, tmp___4, tmp___3, 5U);
  tmp___5 = scsi_sg_count(SCpnt);
  tmp___6 = scsi_sglist(SCpnt);
  sg_miter_start(& diter, tmp___6, tmp___5, 5U);
  goto ldv_36537;
  ldv_36536:
  dpage_offset = 0;
  tmp___7 = sg_miter_next(& diter);
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  __ret_warn_on = tmp___8;
  tmp___9 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___9 != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c",
                       2729);
  } else {
  }
  tmp___10 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___10 != 0L) {
    ret = 1;
    goto out;
  } else {
  }
  ppage_offset = 0;
  goto ldv_36534;
  ldv_36533: ;
  if ((size_t )dpage_offset >= diter.length) {
    tmp___11 = sg_miter_next(& diter);
    if (tmp___11) {
      tmp___12 = 0;
    } else {
      tmp___12 = 1;
    }
    __ret_warn_on___0 = tmp___12;
    tmp___13 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___13 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c",
                         2740);
    } else {
    }
    tmp___14 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___14 != 0L) {
      ret = 1;
      goto out;
    } else {
    }
    dpage_offset = 0;
  } else {
  }
  sdt = (struct sd_dif_tuple *)piter.addr + (unsigned long )ppage_offset;
  daddr = diter.addr + (unsigned long )dpage_offset;
  ret = dif_verify(sdt, (void const *)daddr, sector, ei_lba);
  if (ret != 0) {
    dump_sector((unsigned char *)daddr, scsi_debug_sector_size);
    goto out;
  } else {
  }
  sector = sector + 1UL;
  ei_lba = ei_lba + 1U;
  dpage_offset = dpage_offset + scsi_debug_sector_size;
  ppage_offset = (int )((unsigned int )ppage_offset + 8U);
  ldv_36534: ;
  if ((size_t )ppage_offset < piter.length) {
    goto ldv_36533;
  } else {
  }
  diter.consumed = (size_t )dpage_offset;
  sg_miter_stop(& diter);
  ldv_36537:
  tmp___15 = sg_miter_next(& piter);
  if ((int )tmp___15) {
    goto ldv_36536;
  } else {
  }
  sg_miter_stop(& piter);
  dif_copy_prot(SCpnt, start_sec, sectors, 0);
  dix_writes = dix_writes + 1;
  return (0);
  out:
  dif_errors = dif_errors + 1;
  sg_miter_stop(& diter);
  sg_miter_stop(& piter);
  return (ret);
}
}
static unsigned long lba_to_map_index(sector_t lba )
{
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (scsi_debug_unmap_alignment != 0U) {
    lba = (sector_t )(scsi_debug_unmap_granularity - scsi_debug_unmap_alignment) + lba;
  } else {
  }
  __base = scsi_debug_unmap_granularity;
  __rem = (uint32_t )((unsigned long long )lba % (unsigned long long )__base);
  lba = (sector_t )((unsigned long long )lba / (unsigned long long )__base);
  return (lba);
}
}
static sector_t map_index_to_lba(unsigned long index )
{
  sector_t lba ;
  {
  lba = (unsigned long )scsi_debug_unmap_granularity * index;
  if (scsi_debug_unmap_alignment != 0U) {
    lba = lba - (sector_t )(scsi_debug_unmap_granularity - scsi_debug_unmap_alignment);
  } else {
  }
  return (lba);
}
}
static unsigned int map_state(sector_t lba , unsigned int *num )
{
  sector_t end ;
  unsigned int mapped ;
  unsigned long index ;
  unsigned long next ;
  int tmp ;
  sector_t __min1 ;
  sector_t __min2 ;
  sector_t tmp___0 ;
  {
  index = lba_to_map_index(lba);
  tmp = variable_test_bit((long )index, (unsigned long const volatile *)map_storep);
  mapped = (unsigned int )tmp;
  if (mapped != 0U) {
    next = find_next_zero_bit((unsigned long const *)map_storep, map_size, index);
  } else {
    next = find_next_bit((unsigned long const *)map_storep, map_size, index);
  }
  __min1 = (sector_t )sdebug_store_sectors;
  tmp___0 = map_index_to_lba(next);
  __min2 = tmp___0;
  end = __min1 < __min2 ? __min1 : __min2;
  *num = (unsigned int )end - (unsigned int )lba;
  return (mapped);
}
}
static void map_region(sector_t lba , unsigned int len )
{
  sector_t end ;
  unsigned long index ;
  unsigned long tmp ;
  {
  end = (sector_t )len + lba;
  goto ldv_36567;
  ldv_36566:
  tmp = lba_to_map_index(lba);
  index = tmp;
  if (index < map_size) {
    set_bit((long )index, (unsigned long volatile *)map_storep);
  } else {
  }
  lba = map_index_to_lba(index + 1UL);
  ldv_36567: ;
  if (lba < end) {
    goto ldv_36566;
  } else {
  }
  return;
}
}
static void unmap_region(sector_t lba , unsigned int len )
{
  sector_t end ;
  unsigned long index ;
  unsigned long tmp ;
  sector_t tmp___0 ;
  {
  end = (sector_t )len + lba;
  goto ldv_36576;
  ldv_36575:
  tmp = lba_to_map_index(lba);
  index = tmp;
  tmp___0 = map_index_to_lba(index);
  if ((tmp___0 == lba && (sector_t )scsi_debug_unmap_granularity + lba <= end) && index < map_size) {
    clear_bit((long )index, (unsigned long volatile *)map_storep);
    if (scsi_debug_lbprz != 0U) {
      memset((void *)(fake_storep + (sector_t )scsi_debug_sector_size * lba), 0,
               (size_t )((unsigned int )scsi_debug_sector_size * scsi_debug_unmap_granularity));
    } else {
    }
    if ((unsigned long )dif_storep != (unsigned long )((struct sd_dif_tuple *)0)) {
      memset((void *)(dif_storep + lba), 255, (unsigned long )scsi_debug_unmap_granularity * 8UL);
    } else {
    }
  } else {
  }
  lba = map_index_to_lba(index + 1UL);
  ldv_36576: ;
  if (lba < end) {
    goto ldv_36575;
  } else {
  }
  return;
}
}
static int resp_write_dt0(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u64 lba ;
  u32 num ;
  u32 ei_lba ;
  unsigned long iflags ;
  int ret ;
  bool check_prot ;
  u32 tmp ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u16 tmp___3 ;
  int prot_ret ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  struct sdebug_scmd_extra_t *ep ;
  void *tmp___7 ;
  {
  cmd = scp->cmnd;
  switch ((int )*cmd) {
  case 138:
  ei_lba = 0U;
  lba = get_unaligned_be64((void const *)cmd + 2U);
  num = get_unaligned_be32((void const *)cmd + 10U);
  check_prot = 1;
  goto ldv_36590;
  case 42:
  ei_lba = 0U;
  tmp = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp;
  tmp___0 = get_unaligned_be16((void const *)cmd + 7U);
  num = (u32 )tmp___0;
  check_prot = 1;
  goto ldv_36590;
  case 10:
  ei_lba = 0U;
  lba = (u64 )(((unsigned int )*(cmd + 3UL) | ((unsigned int )*(cmd + 2UL) << 8)) | (((unsigned int )*(cmd + 1UL) & 31U) << 16));
  num = (unsigned int )*(cmd + 4UL) != 0U ? (u32 )*(cmd + 4UL) : 256U;
  check_prot = 1;
  goto ldv_36590;
  case 170:
  ei_lba = 0U;
  tmp___1 = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp___1;
  num = get_unaligned_be32((void const *)cmd + 6U);
  check_prot = 1;
  goto ldv_36590;
  case 83:
  ei_lba = 0U;
  tmp___2 = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp___2;
  tmp___3 = get_unaligned_be16((void const *)cmd + 7U);
  num = (u32 )tmp___3;
  check_prot = 0;
  goto ldv_36590;
  default:
  lba = get_unaligned_be64((void const *)cmd + 12U);
  ei_lba = get_unaligned_be32((void const *)cmd + 20U);
  num = get_unaligned_be32((void const *)cmd + 28U);
  check_prot = 0;
  goto ldv_36590;
  }
  ldv_36590: ;
  if ((int )check_prot) {
    if (scsi_debug_dif == 2 && ((int )*(cmd + 1UL) & 224) != 0) {
      mk_sense_invalid_opcode(scp);
      return ((int )check_condition_result);
    } else {
    }
    if ((scsi_debug_dif == 1 || scsi_debug_dif == 3) && ((int )*(cmd + 1UL) & 224) == 0) {
      sdev_prefix_printk("\v", (struct scsi_device const *)scp->device, (char const *)0,
                         "Unprotected WR to DIF device\n");
    } else {
    }
  } else {
  }
  if ((u64 )num + lba > (unsigned long long )sdebug_capacity) {
    mk_sense_buffer(scp, 5, 33, 0);
    return ((int )check_condition_result);
  } else {
  }
  if (num > sdebug_store_sectors) {
    mk_sense_buffer(scp, 5, 36, 0);
    return ((int )check_condition_result);
  } else {
  }
  iflags = _raw_write_lock_irqsave(& atomic_rw);
  if (scsi_debug_dix != 0) {
    tmp___5 = scsi_prot_sg_count(scp);
    if (tmp___5 != 0U) {
      tmp___4 = prot_verify_write(scp, (sector_t )lba, num, ei_lba);
      prot_ret = tmp___4;
      if (prot_ret != 0) {
        _raw_write_unlock_irqrestore(& atomic_rw, iflags);
        mk_sense_buffer(scp, 5, 16, prot_ret);
        return ((int )illegal_condition_result);
      } else {
      }
    } else {
    }
  } else {
  }
  ret = do_device_access(scp, lba, num, 1);
  tmp___6 = scsi_debug_lbp();
  if (tmp___6 != 0U) {
    map_region((sector_t )lba, num);
  } else {
  }
  _raw_write_unlock_irqrestore(& atomic_rw, iflags);
  if (ret == -1) {
    return (458752);
  } else
  if ((u32 )ret < num * (u32 )scsi_debug_sector_size && scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: write: cdb indicated=%u, IO sent=%d bytes\n", my_name,
                       num * (u32 )scsi_debug_sector_size, ret);
  } else {
  }
  if ((int )sdebug_any_injecting_opt) {
    tmp___7 = scsi_cmd_priv(scp);
    ep = (struct sdebug_scmd_extra_t *)tmp___7;
    if ((int )ep->inj_recovered) {
      mk_sense_buffer(scp, 1, 93, 0);
      return ((int )check_condition_result);
    } else
    if ((int )ep->inj_dif) {
      mk_sense_buffer(scp, 11, 16, 1);
      return ((int )illegal_condition_result);
    } else
    if ((int )ep->inj_dix) {
      mk_sense_buffer(scp, 5, 16, 1);
      return ((int )illegal_condition_result);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int resp_write_same(struct scsi_cmnd *scp , u64 lba , u32 num , u32 ei_lba ,
                           bool unmap , bool ndob )
{
  unsigned long iflags ;
  unsigned long long i ;
  int ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  ret = check_device_access_params(scp, lba, num);
  if (ret != 0) {
    return (ret);
  } else {
  }
  iflags = _raw_write_lock_irqsave(& atomic_rw);
  if ((int )unmap) {
    tmp = scsi_debug_lbp();
    if (tmp != 0U) {
      unmap_region((sector_t )lba, num);
      goto out;
    } else {
    }
  } else {
  }
  if ((int )ndob) {
    memset((void *)(fake_storep + (u64 )scsi_debug_sector_size * lba), 0, (size_t )scsi_debug_sector_size);
    ret = 0;
  } else {
    ret = fetch_to_dev_buffer(scp, fake_storep + (u64 )scsi_debug_sector_size * lba,
                              scsi_debug_sector_size);
  }
  if (ret == -1) {
    _raw_write_unlock_irqrestore(& atomic_rw, iflags);
    return (458752);
  } else
  if ((u32 )ret < num * (u32 )scsi_debug_sector_size && scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: %s: cdb indicated=%u, IO sent=%d bytes\n", my_name, (char *)"write same",
                       num * (u32 )scsi_debug_sector_size, ret);
  } else {
  }
  i = 1ULL;
  goto ldv_36626;
  ldv_36625:
  memcpy((void *)(fake_storep + (lba + i) * (unsigned long long )scsi_debug_sector_size),
           (void const *)(fake_storep + (u64 )scsi_debug_sector_size * lba), (size_t )scsi_debug_sector_size);
  i = i + 1ULL;
  ldv_36626: ;
  if ((unsigned long long )num > i) {
    goto ldv_36625;
  } else {
  }
  tmp___0 = scsi_debug_lbp();
  if (tmp___0 != 0U) {
    map_region((sector_t )lba, num);
  } else {
  }
  out:
  _raw_write_unlock_irqrestore(& atomic_rw, iflags);
  return (0);
}
}
static int resp_write_same_10(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u32 lba ;
  u16 num ;
  u32 ei_lba ;
  bool unmap ;
  int tmp ;
  {
  cmd = scp->cmnd;
  ei_lba = 0U;
  unmap = 0;
  if (((int )*(cmd + 1UL) & 8) != 0) {
    if (scsi_debug_lbpws10 == 0U) {
      mk_sense_invalid_fld(scp, 1, 1, 3);
      return ((int )check_condition_result);
    } else {
      unmap = 1;
    }
  } else {
  }
  lba = get_unaligned_be32((void const *)cmd + 2U);
  num = get_unaligned_be16((void const *)cmd + 7U);
  if ((unsigned int )num > scsi_debug_write_same_length) {
    mk_sense_invalid_fld(scp, 1, 7, -1);
    return ((int )check_condition_result);
  } else {
  }
  tmp = resp_write_same(scp, (u64 )lba, (u32 )num, ei_lba, (int )unmap, 0);
  return (tmp);
}
}
static int resp_write_same_16(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u64 lba ;
  u32 num ;
  u32 ei_lba ;
  bool unmap ;
  bool ndob ;
  int tmp ;
  {
  cmd = scp->cmnd;
  ei_lba = 0U;
  unmap = 0;
  ndob = 0;
  if (((int )*(cmd + 1UL) & 8) != 0) {
    if (scsi_debug_lbpws == 0U) {
      mk_sense_invalid_fld(scp, 1, 1, 3);
      return ((int )check_condition_result);
    } else {
      unmap = 1;
    }
  } else {
  }
  if ((int )*(cmd + 1UL) & 1) {
    ndob = 1;
  } else {
  }
  lba = get_unaligned_be64((void const *)cmd + 2U);
  num = get_unaligned_be32((void const *)cmd + 10U);
  if (num > scsi_debug_write_same_length) {
    mk_sense_invalid_fld(scp, 1, 10, -1);
    return ((int )check_condition_result);
  } else {
  }
  tmp = resp_write_same(scp, lba, num, ei_lba, (int )unmap, (int )ndob);
  return (tmp);
}
}
static int resp_write_buffer(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  struct scsi_device *sdp ;
  struct sdebug_dev_info *dp ;
  u8 mode ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  cmd = scp->cmnd;
  sdp = scp->device;
  mode = (unsigned int )*(cmd + 1UL) & 31U;
  switch ((int )mode) {
  case 4:
  set_bit(1L, (unsigned long volatile *)(& devip->uas_bm));
  set_bit(5L, (unsigned long volatile *)(& devip->uas_bm));
  goto ldv_36659;
  case 5:
  set_bit(6L, (unsigned long volatile *)(& devip->uas_bm));
  goto ldv_36659;
  case 6:
  __mptr = (struct list_head const *)(devip->sdbg_host)->dev_info_list.next;
  dp = (struct sdebug_dev_info *)__mptr;
  goto ldv_36667;
  ldv_36666: ;
  if (dp->target == sdp->id) {
    set_bit(1L, (unsigned long volatile *)(& dp->uas_bm));
    if ((unsigned long )devip != (unsigned long )dp) {
      set_bit(5L, (unsigned long volatile *)(& dp->uas_bm));
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)dp->dev_list.next;
  dp = (struct sdebug_dev_info *)__mptr___0;
  ldv_36667: ;
  if ((unsigned long )(& dp->dev_list) != (unsigned long )(& (devip->sdbg_host)->dev_info_list)) {
    goto ldv_36666;
  } else {
  }
  goto ldv_36659;
  case 7:
  __mptr___1 = (struct list_head const *)(devip->sdbg_host)->dev_info_list.next;
  dp = (struct sdebug_dev_info *)__mptr___1;
  goto ldv_36675;
  ldv_36674: ;
  if (dp->target == sdp->id) {
    set_bit(6L, (unsigned long volatile *)(& dp->uas_bm));
  } else {
  }
  __mptr___2 = (struct list_head const *)dp->dev_list.next;
  dp = (struct sdebug_dev_info *)__mptr___2;
  ldv_36675: ;
  if ((unsigned long )(& dp->dev_list) != (unsigned long )(& (devip->sdbg_host)->dev_info_list)) {
    goto ldv_36674;
  } else {
  }
  goto ldv_36659;
  default: ;
  goto ldv_36659;
  }
  ldv_36659: ;
  return (0);
}
}
static int resp_comp_write(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u8 *arr ;
  u8 *fake_storep_hold ;
  u64 lba ;
  u32 dnum ;
  u32 lb_size ;
  u8 num ;
  unsigned long iflags ;
  int ret ;
  int retval ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  cmd = scp->cmnd;
  lb_size = (u32 )scsi_debug_sector_size;
  retval = 0;
  lba = get_unaligned_be64((void const *)cmd + 2U);
  num = *(cmd + 13UL);
  if ((unsigned int )num == 0U) {
    return (0);
  } else {
  }
  if (scsi_debug_dif == 2 && ((int )*(cmd + 1UL) & 224) != 0) {
    mk_sense_invalid_opcode(scp);
    return ((int )check_condition_result);
  } else {
  }
  if ((scsi_debug_dif == 1 || scsi_debug_dif == 3) && ((int )*(cmd + 1UL) & 224) == 0) {
    sdev_prefix_printk("\v", (struct scsi_device const *)scp->device, (char const *)0,
                       "Unprotected WR to DIF device\n");
  } else {
  }
  if ((u64 )num + lba > (unsigned long long )sdebug_capacity) {
    mk_sense_buffer(scp, 5, 33, 0);
    return ((int )check_condition_result);
  } else {
  }
  if ((unsigned int )num > sdebug_store_sectors) {
    mk_sense_buffer(scp, 5, 36, 0);
    return ((int )check_condition_result);
  } else {
  }
  dnum = (u32 )((int )num * 2);
  tmp = kmalloc((size_t )(dnum * lb_size), 32U);
  arr = (u8 *)tmp;
  if ((unsigned long )arr == (unsigned long )((u8 *)0U)) {
    mk_sense_buffer(scp, 5, 85, 3);
    return ((int )check_condition_result);
  } else {
  }
  iflags = _raw_write_lock_irqsave(& atomic_rw);
  fake_storep_hold = fake_storep;
  fake_storep = arr;
  ret = do_device_access(scp, 0ULL, dnum, 1);
  fake_storep = fake_storep_hold;
  if (ret == -1) {
    retval = 458752;
    goto cleanup;
  } else
  if ((u32 )ret < dnum * lb_size && scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)scp->device, (char const *)0,
                       "%s: compare_write: cdb indicated=%u, IO sent=%d bytes\n",
                       my_name, dnum * lb_size, ret);
  } else {
  }
  tmp___0 = comp_write_worker(lba, (u32 )num, (u8 const *)arr);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    mk_sense_buffer(scp, 14, 29, 0);
    retval = check_condition_result;
    goto cleanup;
  } else {
  }
  tmp___2 = scsi_debug_lbp();
  if (tmp___2 != 0U) {
    map_region((sector_t )lba, (unsigned int )num);
  } else {
  }
  cleanup:
  _raw_write_unlock_irqrestore(& atomic_rw, iflags);
  kfree((void const *)arr);
  return (retval);
}
}
static int resp_unmap(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned char *buf ;
  struct unmap_block_desc *desc ;
  unsigned int i ;
  unsigned int payload_len ;
  unsigned int descriptors ;
  int ret ;
  unsigned long iflags ;
  unsigned int tmp ;
  u16 tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  void *tmp___4 ;
  unsigned int tmp___5 ;
  u16 tmp___6 ;
  long tmp___7 ;
  u16 tmp___8 ;
  long tmp___9 ;
  unsigned long long lba ;
  u64 tmp___10 ;
  unsigned int num ;
  u32 tmp___11 ;
  {
  tmp = scsi_debug_lbp();
  if (tmp == 0U) {
    return (0);
  } else {
  }
  tmp___0 = get_unaligned_be16((void const *)scp->cmnd + 7U);
  payload_len = (unsigned int )tmp___0;
  tmp___1 = scsi_bufflen(scp);
  tmp___2 = ldv__builtin_expect(tmp___1 != payload_len, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c"),
                         "i" (3232), "i" (12UL));
    ldv_36714: ;
    goto ldv_36714;
  } else {
  }
  descriptors = (payload_len - 8U) / 16U;
  if (descriptors > scsi_debug_unmap_max_desc) {
    mk_sense_invalid_fld(scp, 1, 7, -1);
    return ((int )check_condition_result);
  } else {
  }
  tmp___3 = scsi_bufflen(scp);
  tmp___4 = kmalloc((size_t )tmp___3, 32U);
  buf = (unsigned char *)tmp___4;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    mk_sense_buffer(scp, 5, 85, 3);
    return ((int )check_condition_result);
  } else {
  }
  tmp___5 = scsi_bufflen(scp);
  scsi_sg_copy_to_buffer(scp, (void *)buf, (int )tmp___5);
  tmp___6 = get_unaligned_be16((void const *)buf);
  tmp___7 = ldv__builtin_expect((unsigned int )tmp___6 != payload_len - 2U, 0L);
  if (tmp___7 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c"),
                         "i" (3249), "i" (12UL));
    ldv_36715: ;
    goto ldv_36715;
  } else {
  }
  tmp___8 = get_unaligned_be16((void const *)buf + 2U);
  tmp___9 = ldv__builtin_expect((unsigned int )tmp___8 != descriptors * 16U, 0L);
  if (tmp___9 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3533/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/scsi_debug.c"),
                         "i" (3250), "i" (12UL));
    ldv_36716: ;
    goto ldv_36716;
  } else {
  }
  desc = (struct unmap_block_desc *)buf + 8U;
  iflags = _raw_write_lock_irqsave(& atomic_rw);
  i = 0U;
  goto ldv_36724;
  ldv_36723:
  tmp___10 = get_unaligned_be64((void const *)(& (desc + (unsigned long )i)->lba));
  lba = tmp___10;
  tmp___11 = get_unaligned_be32((void const *)(& (desc + (unsigned long )i)->blocks));
  num = tmp___11;
  ret = check_device_access_params(scp, lba, num);
  if (ret != 0) {
    goto out;
  } else {
  }
  unmap_region((sector_t )lba, num);
  i = i + 1U;
  ldv_36724: ;
  if (i < descriptors) {
    goto ldv_36723;
  } else {
  }
  ret = 0;
  out:
  _raw_write_unlock_irqrestore(& atomic_rw, iflags);
  kfree((void const *)buf);
  return (ret);
}
}
static int resp_get_lba_status(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u64 lba ;
  u32 alloc_len ;
  u32 mapped ;
  u32 num ;
  u8 arr[32U] ;
  int ret ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  cmd = scp->cmnd;
  lba = get_unaligned_be64((void const *)cmd + 2U);
  alloc_len = get_unaligned_be32((void const *)cmd + 10U);
  if (alloc_len <= 23U) {
    return (0);
  } else {
  }
  ret = check_device_access_params(scp, lba, 1U);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = scsi_debug_lbp();
  if (tmp != 0U) {
    mapped = map_state((sector_t )lba, & num);
  } else {
    mapped = 1U;
    sdebug_capacity = get_sdebug_capacity();
    if ((unsigned long long )sdebug_capacity - lba <= 4294967295ULL) {
      num = (u32 )sdebug_capacity - (u32 )lba;
    } else {
      num = 4294967295U;
    }
  }
  memset((void *)(& arr), 0, 32UL);
  put_unaligned_be32(20U, (void *)(& arr));
  put_unaligned_be64(lba, (void *)(& arr) + 8U);
  put_unaligned_be32(num, (void *)(& arr) + 16U);
  arr[20] = mapped == 0U;
  tmp___0 = fill_from_dev_buffer(scp, (unsigned char *)(& arr), 32);
  return (tmp___0);
}
}
static int resp_report_luns(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  unsigned int alloc_len ;
  int lun_cnt ;
  int i ;
  int upper ;
  int num ;
  int n ;
  int want_wlun ;
  int shortish ;
  u64 lun ;
  unsigned char *cmd ;
  int select_report ;
  struct scsi_lun *one_lun ;
  unsigned char arr[256U] ;
  unsigned char *max_addr ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp ;
  {
  cmd = scp->cmnd;
  select_report = (int )*(cmd + 2UL);
  clear_luns_changed_on_target(devip);
  alloc_len = (unsigned int )((((int )*(cmd + 9UL) + ((int )*(cmd + 8UL) << 8)) + ((int )*(cmd + 7UL) << 16)) + ((int )*(cmd + 6UL) << 24));
  shortish = alloc_len <= 3U;
  if (shortish != 0 || select_report > 2) {
    mk_sense_invalid_fld(scp, 1, shortish != 0 ? 6 : 2, -1);
    return ((int )check_condition_result);
  } else {
  }
  memset((void *)(& arr), 0, 256UL);
  lun_cnt = scsi_debug_max_luns;
  if (select_report == 1) {
    lun_cnt = 0;
  } else
  if (scsi_debug_no_lun_0 != 0 && lun_cnt > 0) {
    lun_cnt = lun_cnt - 1;
  } else {
  }
  want_wlun = select_report > 0;
  num = lun_cnt + want_wlun;
  arr[2] = (unsigned char )((unsigned long )num * 8UL >> 8);
  arr[3] = (unsigned int )((unsigned char )((unsigned long )num)) * 8U;
  _min1 = 31;
  _min2 = num;
  n = _min1 < _min2 ? _min1 : _min2;
  if (n < num) {
    want_wlun = 0;
    lun_cnt = n;
  } else {
  }
  one_lun = (struct scsi_lun *)(& arr) + 8U;
  max_addr = (unsigned char *)(& arr) + 256UL;
  i = 0;
  lun = scsi_debug_no_lun_0 != 0;
  goto ldv_36762;
  ldv_36761:
  upper = (int )(lun >> 8) & 63;
  if (upper != 0) {
    (one_lun + (unsigned long )i)->scsi_lun[0] = (__u8 )upper;
  } else {
  }
  (one_lun + (unsigned long )i)->scsi_lun[1] = (__u8 )lun;
  i = i + 1;
  lun = lun + 1ULL;
  ldv_36762: ;
  if (i < lun_cnt && (unsigned long )((unsigned char *)one_lun + (unsigned long )i) < (unsigned long )max_addr) {
    goto ldv_36761;
  } else {
  }
  if (want_wlun != 0) {
    (one_lun + (unsigned long )i)->scsi_lun[0] = 193U;
    (one_lun + (unsigned long )i)->scsi_lun[1] = 1U;
    i = i + 1;
  } else {
  }
  alloc_len = (unsigned int )((long )((unsigned char *)one_lun + (unsigned long )i)) - (unsigned int )((long )(& arr));
  _min1___0 = (int )alloc_len;
  _min2___0 = 256;
  tmp = fill_from_dev_buffer(scp, (unsigned char *)(& arr), _min1___0 < _min2___0 ? _min1___0 : _min2___0);
  return (tmp);
}
}
static int resp_xdwriteread(struct scsi_cmnd *scp , unsigned long long lba , unsigned int num ,
                            struct sdebug_dev_info *devip )
{
  int j ;
  unsigned char *kaddr ;
  unsigned char *buf ;
  unsigned int offset ;
  struct scsi_data_buffer *sdb ;
  struct scsi_data_buffer *tmp ;
  struct sg_mapping_iter miter ;
  unsigned int tmp___0 ;
  void *tmp___1 ;
  unsigned int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = scsi_in(scp);
  sdb = tmp;
  tmp___0 = scsi_bufflen(scp);
  tmp___1 = kmalloc((size_t )tmp___0, 32U);
  buf = (unsigned char *)tmp___1;
  if ((unsigned long )buf == (unsigned long )((unsigned char *)0U)) {
    mk_sense_buffer(scp, 5, 85, 3);
    return ((int )check_condition_result);
  } else {
  }
  tmp___2 = scsi_bufflen(scp);
  scsi_sg_copy_to_buffer(scp, (void *)buf, (int )tmp___2);
  offset = 0U;
  sg_miter_start(& miter, sdb->table.sgl, sdb->table.nents, 3U);
  goto ldv_36783;
  ldv_36782:
  kaddr = (unsigned char *)miter.addr;
  j = 0;
  goto ldv_36780;
  ldv_36779:
  *(kaddr + (unsigned long )j) = (int )*(kaddr + (unsigned long )j) ^ (int )*(buf + ((unsigned long )offset + (unsigned long )j));
  j = j + 1;
  ldv_36780: ;
  if ((size_t )j < miter.length) {
    goto ldv_36779;
  } else {
  }
  offset = (unsigned int )miter.length + offset;
  ldv_36783:
  tmp___3 = sg_miter_next(& miter);
  if ((int )tmp___3) {
    goto ldv_36782;
  } else {
  }
  sg_miter_stop(& miter);
  kfree((void const *)buf);
  return (0);
}
}
static int resp_xdwriteread_10(struct scsi_cmnd *scp , struct sdebug_dev_info *devip )
{
  u8 *cmd ;
  u64 lba ;
  u32 num ;
  int errsts ;
  int tmp ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  {
  cmd = scp->cmnd;
  tmp = scsi_bidi_cmnd(scp);
  if (tmp == 0) {
    mk_sense_buffer(scp, 5, 85, 3);
    return ((int )check_condition_result);
  } else {
  }
  errsts = resp_read_dt0(scp, devip);
  if (errsts != 0) {
    return (errsts);
  } else {
  }
  if (((int )*(cmd + 1UL) & 4) == 0) {
    errsts = resp_write_dt0(scp, devip);
    if (errsts != 0) {
      return (errsts);
    } else {
    }
  } else {
  }
  tmp___0 = get_unaligned_be32((void const *)cmd + 2U);
  lba = (u64 )tmp___0;
  tmp___1 = get_unaligned_be16((void const *)cmd + 7U);
  num = (u32 )tmp___1;
  tmp___2 = resp_xdwriteread(scp, lba, num, devip);
  return (tmp___2);
}
}
static void sdebug_q_cmd_complete(unsigned long indx )
{
  int qa_indx ;
  int retiring ;
  unsigned long iflags ;
  struct sdebug_queued_cmd *sqcp ;
  struct scsi_cmnd *scp ;
  struct sdebug_dev_info *devip ;
  int tmp ;
  int tmp___0 ;
  int k ;
  int retval ;
  unsigned long tmp___1 ;
  long tmp___2 ;
  {
  retiring = 0;
  atomic_inc(& sdebug_completions);
  qa_indx = (int )indx;
  if (qa_indx < 0 || qa_indx > 575) {
    printk("\v%s: wild qa_indx=%d\n", "sdebug_q_cmd_complete", qa_indx);
    return;
  } else {
  }
  ldv_spin_lock();
  sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )qa_indx;
  scp = sqcp->a_cmnd;
  if ((unsigned long )scp == (unsigned long )((struct scsi_cmnd *)0)) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    printk("\v%s: scp is NULL\n", "sdebug_q_cmd_complete");
    return;
  } else {
  }
  devip = (struct sdebug_dev_info *)(scp->device)->hostdata;
  if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
    atomic_dec(& devip->num_in_q);
  } else {
    printk("\v%s: devip=NULL\n", "sdebug_q_cmd_complete");
  }
  tmp = atomic_read((atomic_t const *)(& retired_max_queue));
  if (tmp > 0) {
    retiring = 1;
  } else {
  }
  sqcp->a_cmnd = (struct scsi_cmnd *)0;
  tmp___0 = test_and_clear_bit((long )qa_indx, (unsigned long volatile *)(& queued_in_use_bm));
  if (tmp___0 == 0) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    printk("\v%s: Unexpected completion\n", "sdebug_q_cmd_complete");
    return;
  } else {
  }
  tmp___2 = ldv__builtin_expect(retiring != 0, 0L);
  if (tmp___2 != 0L) {
    retval = atomic_read((atomic_t const *)(& retired_max_queue));
    if (qa_indx >= retval) {
      spin_unlock_irqrestore(& queued_arr_lock, iflags);
      printk("\v%s: index %d too large\n", "sdebug_q_cmd_complete", retval);
      return;
    } else {
    }
    tmp___1 = find_last_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )retval);
    k = (int )tmp___1;
    if (k < scsi_debug_max_queue || k == retval) {
      atomic_set(& retired_max_queue, 0);
    } else {
      atomic_set(& retired_max_queue, k + 1);
    }
  } else {
  }
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  (*(scp->scsi_done))(scp);
  return;
}
}
static enum hrtimer_restart sdebug_q_cmd_hrt_complete(struct hrtimer *timer )
{
  int qa_indx ;
  int retiring ;
  unsigned long iflags ;
  struct sdebug_hrtimer *sd_hrtp ;
  struct sdebug_queued_cmd *sqcp ;
  struct scsi_cmnd *scp ;
  struct sdebug_dev_info *devip ;
  int tmp ;
  int tmp___0 ;
  int k ;
  int retval ;
  unsigned long tmp___1 ;
  long tmp___2 ;
  {
  retiring = 0;
  sd_hrtp = (struct sdebug_hrtimer *)timer;
  atomic_inc(& sdebug_completions);
  qa_indx = sd_hrtp->qa_indx;
  if (qa_indx < 0 || qa_indx > 575) {
    printk("\v%s: wild qa_indx=%d\n", "sdebug_q_cmd_hrt_complete", qa_indx);
    goto the_end;
  } else {
  }
  ldv_spin_lock();
  sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )qa_indx;
  scp = sqcp->a_cmnd;
  if ((unsigned long )scp == (unsigned long )((struct scsi_cmnd *)0)) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    printk("\v%s: scp is NULL\n", "sdebug_q_cmd_hrt_complete");
    goto the_end;
  } else {
  }
  devip = (struct sdebug_dev_info *)(scp->device)->hostdata;
  if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
    atomic_dec(& devip->num_in_q);
  } else {
    printk("\v%s: devip=NULL\n", "sdebug_q_cmd_hrt_complete");
  }
  tmp = atomic_read((atomic_t const *)(& retired_max_queue));
  if (tmp > 0) {
    retiring = 1;
  } else {
  }
  sqcp->a_cmnd = (struct scsi_cmnd *)0;
  tmp___0 = test_and_clear_bit((long )qa_indx, (unsigned long volatile *)(& queued_in_use_bm));
  if (tmp___0 == 0) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    printk("\v%s: Unexpected completion\n", "sdebug_q_cmd_hrt_complete");
    goto the_end;
  } else {
  }
  tmp___2 = ldv__builtin_expect(retiring != 0, 0L);
  if (tmp___2 != 0L) {
    retval = atomic_read((atomic_t const *)(& retired_max_queue));
    if (qa_indx >= retval) {
      spin_unlock_irqrestore(& queued_arr_lock, iflags);
      printk("\v%s: index %d too large\n", "sdebug_q_cmd_hrt_complete", retval);
      goto the_end;
    } else {
    }
    tmp___1 = find_last_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )retval);
    k = (int )tmp___1;
    if (k < scsi_debug_max_queue || k == retval) {
      atomic_set(& retired_max_queue, 0);
    } else {
      atomic_set(& retired_max_queue, k + 1);
    }
  } else {
  }
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  (*(scp->scsi_done))(scp);
  the_end: ;
  return (0);
}
}
static struct sdebug_dev_info *sdebug_device_create(struct sdebug_host_info *sdbg_host ,
                                                    gfp_t flags )
{
  struct sdebug_dev_info *devip ;
  void *tmp ;
  {
  tmp = kmalloc(56UL, flags);
  devip = (struct sdebug_dev_info *)tmp;
  if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
    devip->sdbg_host = sdbg_host;
    list_add_tail(& devip->dev_list, & sdbg_host->dev_info_list);
  } else {
  }
  return (devip);
}
}
static struct sdebug_dev_info *devInfoReg(struct scsi_device *sdev )
{
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *open_devip ;
  struct sdebug_dev_info *devip ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  open_devip = (struct sdebug_dev_info *)0;
  devip = (struct sdebug_dev_info *)sdev->hostdata;
  if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
    return (devip);
  } else {
  }
  tmp = shost_priv(sdev->host);
  sdbg_host = *((struct sdebug_host_info **)tmp);
  if ((unsigned long )sdbg_host == (unsigned long )((struct sdebug_host_info *)0)) {
    printk("\v%s: Host info NULL\n", "devInfoReg");
    return ((struct sdebug_dev_info *)0);
  } else {
  }
  __mptr = (struct list_head const *)sdbg_host->dev_info_list.next;
  devip = (struct sdebug_dev_info *)__mptr;
  goto ldv_36836;
  ldv_36835: ;
  if ((((int )devip->used && devip->channel == sdev->channel) && devip->target == sdev->id) && devip->lun == sdev->lun) {
    return (devip);
  } else
  if (! devip->used && (unsigned long )open_devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    open_devip = devip;
  } else {
  }
  __mptr___0 = (struct list_head const *)devip->dev_list.next;
  devip = (struct sdebug_dev_info *)__mptr___0;
  ldv_36836: ;
  if ((unsigned long )(& devip->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
    goto ldv_36835;
  } else {
  }
  if ((unsigned long )open_devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    open_devip = sdebug_device_create(sdbg_host, 32U);
    if ((unsigned long )open_devip == (unsigned long )((struct sdebug_dev_info *)0)) {
      printk("\v%s: out of memory at line %d\n", "devInfoReg", 3600);
      return ((struct sdebug_dev_info *)0);
    } else {
    }
  } else {
  }
  open_devip->channel = sdev->channel;
  open_devip->target = sdev->id;
  open_devip->lun = sdev->lun;
  open_devip->sdbg_host = sdbg_host;
  atomic_set(& open_devip->num_in_q, 0);
  set_bit(0L, (unsigned long volatile *)(& open_devip->uas_bm));
  open_devip->used = 1;
  return (open_devip);
}
}
static int scsi_debug_slave_alloc(struct scsi_device *sdp )
{
  {
  if (scsi_debug_opts & 1) {
    printk("\016scsi_debug: slave_alloc <%u %u %u %llu>\n", (sdp->host)->host_no,
           sdp->channel, sdp->id, sdp->lun);
  } else {
  }
  queue_flag_set_unlocked(7U, sdp->request_queue);
  return (0);
}
}
static int scsi_debug_slave_configure(struct scsi_device *sdp )
{
  struct sdebug_dev_info *devip ;
  {
  if (scsi_debug_opts & 1) {
    printk("\016scsi_debug: slave_configure <%u %u %u %llu>\n", (sdp->host)->host_no,
           sdp->channel, sdp->id, sdp->lun);
  } else {
  }
  if ((unsigned int )(sdp->host)->max_cmd_len != 32U) {
    (sdp->host)->max_cmd_len = 32U;
  } else {
  }
  devip = devInfoReg(sdp);
  if ((unsigned long )devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    return (1);
  } else {
  }
  sdp->hostdata = (void *)devip;
  blk_queue_max_segment_size(sdp->request_queue, 4294967295U);
  if (scsi_debug_no_uld != 0) {
    sdp->no_uld_attach = 1U;
  } else {
  }
  return (0);
}
}
static void scsi_debug_slave_destroy(struct scsi_device *sdp )
{
  struct sdebug_dev_info *devip ;
  {
  devip = (struct sdebug_dev_info *)sdp->hostdata;
  if (scsi_debug_opts & 1) {
    printk("\016scsi_debug: slave_destroy <%u %u %u %llu>\n", (sdp->host)->host_no,
           sdp->channel, sdp->id, sdp->lun);
  } else {
  }
  if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
    devip->used = 0;
    sdp->hostdata = (void *)0;
  } else {
  }
  return;
}
}
static int stop_queued_cmnd(struct scsi_cmnd *cmnd )
{
  unsigned long iflags ;
  int k ;
  int qmax ;
  int r_qmax ;
  struct sdebug_queued_cmd *sqcp ;
  struct sdebug_dev_info *devip ;
  int tmp ;
  {
  ldv_spin_lock();
  qmax = scsi_debug_max_queue;
  r_qmax = atomic_read((atomic_t const *)(& retired_max_queue));
  if (r_qmax > qmax) {
    qmax = r_qmax;
  } else {
  }
  k = 0;
  goto ldv_36859;
  ldv_36858:
  tmp = variable_test_bit((long )k, (unsigned long const volatile *)(& queued_in_use_bm));
  if (tmp != 0) {
    sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )k;
    if ((unsigned long )sqcp->a_cmnd == (unsigned long )cmnd) {
      devip = (struct sdebug_dev_info *)(cmnd->device)->hostdata;
      if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
        atomic_dec(& devip->num_in_q);
      } else {
      }
      sqcp->a_cmnd = (struct scsi_cmnd *)0;
      spin_unlock_irqrestore(& queued_arr_lock, iflags);
      if (scsi_debug_ndelay > 0) {
        if ((unsigned long )sqcp->sd_hrtp != (unsigned long )((struct sdebug_hrtimer *)0)) {
          hrtimer_cancel(& (sqcp->sd_hrtp)->hrt);
        } else {
        }
      } else
      if (scsi_debug_delay > 0) {
        if ((unsigned long )sqcp->cmnd_timerp != (unsigned long )((struct timer_list *)0)) {
          ldv_del_timer_sync_25(sqcp->cmnd_timerp);
        } else {
        }
      } else
      if (scsi_debug_delay < 0) {
        if ((unsigned long )sqcp->tletp != (unsigned long )((struct tasklet_struct *)0)) {
          tasklet_kill(sqcp->tletp);
        } else {
        }
      } else {
      }
      clear_bit((long )k, (unsigned long volatile *)(& queued_in_use_bm));
      return (1);
    } else {
    }
  } else {
  }
  k = k + 1;
  ldv_36859: ;
  if (k < qmax) {
    goto ldv_36858;
  } else {
  }
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  return (0);
}
}
static void stop_all_queued(void)
{
  unsigned long iflags ;
  int k ;
  struct sdebug_queued_cmd *sqcp ;
  struct sdebug_dev_info *devip ;
  int tmp ;
  {
  ldv_spin_lock();
  k = 0;
  goto ldv_36869;
  ldv_36868:
  tmp = variable_test_bit((long )k, (unsigned long const volatile *)(& queued_in_use_bm));
  if (tmp != 0) {
    sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )k;
    if ((unsigned long )sqcp->a_cmnd != (unsigned long )((struct scsi_cmnd *)0)) {
      devip = (struct sdebug_dev_info *)((sqcp->a_cmnd)->device)->hostdata;
      if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
        atomic_dec(& devip->num_in_q);
      } else {
      }
      sqcp->a_cmnd = (struct scsi_cmnd *)0;
      spin_unlock_irqrestore(& queued_arr_lock, iflags);
      if (scsi_debug_ndelay > 0) {
        if ((unsigned long )sqcp->sd_hrtp != (unsigned long )((struct sdebug_hrtimer *)0)) {
          hrtimer_cancel(& (sqcp->sd_hrtp)->hrt);
        } else {
        }
      } else
      if (scsi_debug_delay > 0) {
        if ((unsigned long )sqcp->cmnd_timerp != (unsigned long )((struct timer_list *)0)) {
          ldv_del_timer_sync_26(sqcp->cmnd_timerp);
        } else {
        }
      } else
      if (scsi_debug_delay < 0) {
        if ((unsigned long )sqcp->tletp != (unsigned long )((struct tasklet_struct *)0)) {
          tasklet_kill(sqcp->tletp);
        } else {
        }
      } else {
      }
      clear_bit((long )k, (unsigned long volatile *)(& queued_in_use_bm));
      ldv_spin_lock();
    } else {
    }
  } else {
  }
  k = k + 1;
  ldv_36869: ;
  if (k <= 575) {
    goto ldv_36868;
  } else {
  }
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  return;
}
}
static void free_all_queued(void)
{
  unsigned long iflags ;
  int k ;
  struct sdebug_queued_cmd *sqcp ;
  {
  ldv_spin_lock();
  k = 0;
  goto ldv_36878;
  ldv_36877:
  sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )k;
  kfree((void const *)sqcp->cmnd_timerp);
  sqcp->cmnd_timerp = (struct timer_list *)0;
  kfree((void const *)sqcp->tletp);
  sqcp->tletp = (struct tasklet_struct *)0;
  kfree((void const *)sqcp->sd_hrtp);
  sqcp->sd_hrtp = (struct sdebug_hrtimer *)0;
  k = k + 1;
  ldv_36878: ;
  if (k <= 575) {
    goto ldv_36877;
  } else {
  }
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  return;
}
}
static int scsi_debug_abort(struct scsi_cmnd *SCpnt )
{
  {
  num_aborts = num_aborts + 1;
  if ((unsigned long )SCpnt != (unsigned long )((struct scsi_cmnd *)0)) {
    if ((unsigned long )SCpnt->device != (unsigned long )((struct scsi_device *)0) && (scsi_debug_opts & 8705) != 0) {
      sdev_prefix_printk("\016", (struct scsi_device const *)SCpnt->device, (char const *)0,
                         "%s\n", "scsi_debug_abort");
    } else {
    }
    stop_queued_cmnd(SCpnt);
  } else {
  }
  return (8194);
}
}
static int scsi_debug_device_reset(struct scsi_cmnd *SCpnt )
{
  struct sdebug_dev_info *devip ;
  struct scsi_device *sdp ;
  {
  num_dev_resets = num_dev_resets + 1;
  if ((unsigned long )SCpnt != (unsigned long )((struct scsi_cmnd *)0) && (unsigned long )SCpnt->device != (unsigned long )((struct scsi_device *)0)) {
    sdp = SCpnt->device;
    if ((scsi_debug_opts & 8705) != 0) {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                         "%s\n", "scsi_debug_device_reset");
    } else {
    }
    devip = devInfoReg(sdp);
    if ((unsigned long )devip != (unsigned long )((struct sdebug_dev_info *)0)) {
      set_bit(0L, (unsigned long volatile *)(& devip->uas_bm));
    } else {
    }
  } else {
  }
  return (8194);
}
}
static int scsi_debug_target_reset(struct scsi_cmnd *SCpnt )
{
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *devip ;
  struct scsi_device *sdp ;
  struct Scsi_Host *hp ;
  int k ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  k = 0;
  num_target_resets = num_target_resets + 1;
  if ((unsigned long )SCpnt == (unsigned long )((struct scsi_cmnd *)0)) {
    goto lie;
  } else {
  }
  sdp = SCpnt->device;
  if ((unsigned long )sdp == (unsigned long )((struct scsi_device *)0)) {
    goto lie;
  } else {
  }
  if ((scsi_debug_opts & 8705) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s\n", "scsi_debug_target_reset");
  } else {
  }
  hp = sdp->host;
  if ((unsigned long )hp == (unsigned long )((struct Scsi_Host *)0)) {
    goto lie;
  } else {
  }
  tmp = shost_priv(hp);
  sdbg_host = *((struct sdebug_host_info **)tmp);
  if ((unsigned long )sdbg_host != (unsigned long )((struct sdebug_host_info *)0)) {
    __mptr = (struct list_head const *)sdbg_host->dev_info_list.next;
    devip = (struct sdebug_dev_info *)__mptr;
    goto ldv_36905;
    ldv_36904: ;
    if (devip->target == sdp->id) {
      set_bit(1L, (unsigned long volatile *)(& devip->uas_bm));
      k = k + 1;
    } else {
    }
    __mptr___0 = (struct list_head const *)devip->dev_list.next;
    devip = (struct sdebug_dev_info *)__mptr___0;
    ldv_36905: ;
    if ((unsigned long )(& devip->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
      goto ldv_36904;
    } else {
    }
  } else {
  }
  if ((scsi_debug_opts & 8192) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s: %d device(s) found in target\n", "scsi_debug_target_reset",
                       k);
  } else {
  }
  lie: ;
  return (8194);
}
}
static int scsi_debug_bus_reset(struct scsi_cmnd *SCpnt )
{
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *devip ;
  struct scsi_device *sdp ;
  struct Scsi_Host *hp ;
  int k ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  k = 0;
  num_bus_resets = num_bus_resets + 1;
  if ((unsigned long )SCpnt == (unsigned long )((struct scsi_cmnd *)0) || (unsigned long )SCpnt->device == (unsigned long )((struct scsi_device *)0)) {
    goto lie;
  } else {
  }
  sdp = SCpnt->device;
  if ((scsi_debug_opts & 8705) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s\n", "scsi_debug_bus_reset");
  } else {
  }
  hp = sdp->host;
  if ((unsigned long )hp != (unsigned long )((struct Scsi_Host *)0)) {
    tmp = shost_priv(hp);
    sdbg_host = *((struct sdebug_host_info **)tmp);
    if ((unsigned long )sdbg_host != (unsigned long )((struct sdebug_host_info *)0)) {
      __mptr = (struct list_head const *)sdbg_host->dev_info_list.next;
      devip = (struct sdebug_dev_info *)__mptr;
      goto ldv_36922;
      ldv_36921:
      set_bit(1L, (unsigned long volatile *)(& devip->uas_bm));
      k = k + 1;
      __mptr___0 = (struct list_head const *)devip->dev_list.next;
      devip = (struct sdebug_dev_info *)__mptr___0;
      ldv_36922: ;
      if ((unsigned long )(& devip->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
        goto ldv_36921;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((scsi_debug_opts & 8192) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s: %d device(s) found in host\n", "scsi_debug_bus_reset",
                       k);
  } else {
  }
  lie: ;
  return (8194);
}
}
static int scsi_debug_host_reset(struct scsi_cmnd *SCpnt )
{
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *devip ;
  int k ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  k = 0;
  num_host_resets = num_host_resets + 1;
  if ((unsigned long )SCpnt->device != (unsigned long )((struct scsi_device *)0) && (scsi_debug_opts & 8705) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)SCpnt->device, (char const *)0,
                       "%s\n", "scsi_debug_host_reset");
  } else {
  }
  spin_lock(& sdebug_host_list_lock);
  __mptr = (struct list_head const *)sdebug_host_list.next;
  sdbg_host = (struct sdebug_host_info *)__mptr;
  goto ldv_36943;
  ldv_36942:
  __mptr___0 = (struct list_head const *)sdbg_host->dev_info_list.next;
  devip = (struct sdebug_dev_info *)__mptr___0;
  goto ldv_36940;
  ldv_36939:
  set_bit(1L, (unsigned long volatile *)(& devip->uas_bm));
  k = k + 1;
  __mptr___1 = (struct list_head const *)devip->dev_list.next;
  devip = (struct sdebug_dev_info *)__mptr___1;
  ldv_36940: ;
  if ((unsigned long )(& devip->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
    goto ldv_36939;
  } else {
  }
  __mptr___2 = (struct list_head const *)sdbg_host->host_list.next;
  sdbg_host = (struct sdebug_host_info *)__mptr___2;
  ldv_36943: ;
  if ((unsigned long )(& sdbg_host->host_list) != (unsigned long )(& sdebug_host_list)) {
    goto ldv_36942;
  } else {
  }
  spin_unlock(& sdebug_host_list_lock);
  stop_all_queued();
  if ((scsi_debug_opts & 8192) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)SCpnt->device, (char const *)0,
                       "%s: %d device(s) found\n", "scsi_debug_host_reset", k);
  } else {
  }
  return (8194);
}
}
static void sdebug_build_parts(unsigned char *ramp , unsigned long store_size )
{
  struct partition *pp ;
  int starts[6U] ;
  int sectors_per_part ;
  int num_sectors ;
  int k ;
  int heads_by_sects ;
  int start_sec ;
  int end_sec ;
  {
  if (scsi_debug_num_parts <= 0 || store_size <= 1048575UL) {
    return;
  } else {
  }
  if (scsi_debug_num_parts > 4) {
    scsi_debug_num_parts = 4;
    printk("\f%s: reducing partitions to %d\n", "sdebug_build_parts", 4);
  } else {
  }
  num_sectors = (int )sdebug_store_sectors;
  sectors_per_part = (num_sectors - sdebug_sectors_per) / scsi_debug_num_parts;
  heads_by_sects = sdebug_heads * sdebug_sectors_per;
  starts[0] = sdebug_sectors_per;
  k = 1;
  goto ldv_36959;
  ldv_36958:
  starts[k] = ((k * sectors_per_part) / heads_by_sects) * heads_by_sects;
  k = k + 1;
  ldv_36959: ;
  if (k < scsi_debug_num_parts) {
    goto ldv_36958;
  } else {
  }
  starts[scsi_debug_num_parts] = num_sectors;
  starts[scsi_debug_num_parts + 1] = 0;
  *(ramp + 510UL) = 85U;
  *(ramp + 511UL) = 170U;
  pp = (struct partition *)ramp + 446U;
  k = 0;
  goto ldv_36962;
  ldv_36961:
  start_sec = starts[k];
  end_sec = starts[k + 1] + -1;
  pp->boot_ind = 0U;
  pp->cyl = (unsigned char )(start_sec / heads_by_sects);
  pp->head = (unsigned char )((start_sec - (int )pp->cyl * heads_by_sects) / sdebug_sectors_per);
  pp->sector = (unsigned int )((unsigned char )(start_sec % sdebug_sectors_per)) + 1U;
  pp->end_cyl = (unsigned char )(end_sec / heads_by_sects);
  pp->end_head = (unsigned char )((end_sec - (int )pp->end_cyl * heads_by_sects) / sdebug_sectors_per);
  pp->end_sector = (unsigned int )((unsigned char )(end_sec % sdebug_sectors_per)) + 1U;
  pp->start_sect = (unsigned int )start_sec;
  pp->nr_sects = (unsigned int )((end_sec - start_sec) + 1);
  pp->sys_ind = 131U;
  k = k + 1;
  pp = pp + 1;
  ldv_36962: ;
  if (starts[k + 1] != 0) {
    goto ldv_36961;
  } else {
  }
  return;
}
}
static int schedule_resp(struct scsi_cmnd *cmnd , struct sdebug_dev_info *devip ,
                         int scsi_result , int delta_jiff )
{
  unsigned long iflags ;
  int k ;
  int num_in_q ;
  int qdepth ;
  int inject ;
  struct sdebug_queued_cmd *sqcp ;
  struct scsi_device *sdp ;
  int tmp ;
  long ret ;
  int __x___0 ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  u64 tmp___2 ;
  ktime_t kt ;
  ktime_t tmp___3 ;
  struct sdebug_hrtimer *sd_hp ;
  void *tmp___4 ;
  void *tmp___5 ;
  {
  sqcp = (struct sdebug_queued_cmd *)0;
  sdp = cmnd->device;
  if ((unsigned long )cmnd == (unsigned long )((struct scsi_cmnd *)0) || (unsigned long )devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    printk("\f%s: called with NULL cmnd or devip pointer\n", "schedule_resp");
    return (4181);
  } else {
  }
  if (scsi_result != 0 && scsi_debug_opts & 1) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s: non-zero result=0x%x\n", "schedule_resp", scsi_result);
  } else {
  }
  if (delta_jiff == 0) {
    goto respond_in_thread;
  } else {
  }
  ldv_spin_lock();
  num_in_q = atomic_read((atomic_t const *)(& devip->num_in_q));
  qdepth = (int )(cmnd->device)->queue_depth;
  inject = 0;
  if (qdepth > 0 && num_in_q >= qdepth) {
    if (scsi_result != 0) {
      spin_unlock_irqrestore(& queued_arr_lock, iflags);
      goto respond_in_thread;
    } else {
      scsi_result = device_qfull_result;
    }
  } else
  if ((scsi_debug_every_nth != 0 && (scsi_debug_opts & 2048) != 0) && scsi_result == 0) {
    if (qdepth + -1 == num_in_q) {
      tmp = atomic_add_return(1, & sdebug_a_tsf);
      __x___0 = scsi_debug_every_nth;
      ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
      if ((long )tmp >= ret) {
        atomic_set(& sdebug_a_tsf, 0);
        inject = 1;
        scsi_result = device_qfull_result;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___0 = find_first_zero_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
  k = (int )tmp___0;
  if (k >= scsi_debug_max_queue) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    if (scsi_result != 0) {
      goto respond_in_thread;
    } else
    if ((scsi_debug_opts & 1024) != 0) {
      scsi_result = device_qfull_result;
    } else {
    }
    if ((scsi_debug_opts & 512) != 0) {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                         "%s: max_queue=%d exceeded, %s\n", "schedule_resp", scsi_debug_max_queue,
                         scsi_result != 0 ? (char *)"status: TASK SET FULL" : (char *)"report: host busy");
    } else {
    }
    if (scsi_result != 0) {
      goto respond_in_thread;
    } else {
      return (4181);
    }
  } else {
  }
  __set_bit((long )k, (unsigned long volatile *)(& queued_in_use_bm));
  atomic_inc(& devip->num_in_q);
  sqcp = (struct sdebug_queued_cmd *)(& queued_arr) + (unsigned long )k;
  sqcp->a_cmnd = cmnd;
  cmnd->result = scsi_result;
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  if (delta_jiff > 0) {
    if ((unsigned long )sqcp->cmnd_timerp == (unsigned long )((struct timer_list *)0)) {
      tmp___1 = kmalloc(128UL, 32U);
      sqcp->cmnd_timerp = (struct timer_list *)tmp___1;
      if ((unsigned long )sqcp->cmnd_timerp == (unsigned long )((struct timer_list *)0)) {
        return (4181);
      } else {
      }
      reg_timer_1(sqcp->cmnd_timerp);
    } else {
    }
    (sqcp->cmnd_timerp)->function = & sdebug_q_cmd_complete;
    (sqcp->cmnd_timerp)->data = (unsigned long )k;
    tmp___2 = get_jiffies_64();
    (sqcp->cmnd_timerp)->expires = (unsigned long )(tmp___2 + (u64 )delta_jiff);
    add_timer(sqcp->cmnd_timerp);
  } else
  if (scsi_debug_ndelay > 0) {
    tmp___3 = ktime_set(0LL, (unsigned long const )scsi_debug_ndelay);
    kt = tmp___3;
    sd_hp = sqcp->sd_hrtp;
    if ((unsigned long )sd_hp == (unsigned long )((struct sdebug_hrtimer *)0)) {
      tmp___4 = kmalloc(104UL, 32U);
      sd_hp = (struct sdebug_hrtimer *)tmp___4;
      if ((unsigned long )sd_hp == (unsigned long )((struct sdebug_hrtimer *)0)) {
        return (4181);
      } else {
      }
      sqcp->sd_hrtp = sd_hp;
      hrtimer_init(& sd_hp->hrt, 1, 1);
      sd_hp->hrt.function = & sdebug_q_cmd_hrt_complete;
      sd_hp->qa_indx = k;
    } else {
    }
    hrtimer_start(& sd_hp->hrt, kt, 1);
  } else {
    if ((unsigned long )sqcp->tletp == (unsigned long )((struct tasklet_struct *)0)) {
      tmp___5 = kmalloc(40UL, 32U);
      sqcp->tletp = (struct tasklet_struct *)tmp___5;
      if ((unsigned long )sqcp->tletp == (unsigned long )((struct tasklet_struct *)0)) {
        return (4181);
      } else {
      }
      tasklet_init(sqcp->tletp, & sdebug_q_cmd_complete, (unsigned long )k);
    } else {
    }
    if (delta_jiff == -1) {
      tasklet_hi_schedule(sqcp->tletp);
    } else {
      tasklet_schedule(sqcp->tletp);
    }
  }
  if ((scsi_debug_opts & 512) != 0 && scsi_result == (int )device_qfull_result) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s: num_in_q=%d +1, %s%s\n", "schedule_resp", num_in_q, inject != 0 ? (char *)"<inject> " : (char *)"",
                       (char *)"status: TASK SET FULL");
  } else {
  }
  return (0);
  respond_in_thread:
  cmnd->result = scsi_result;
  (*(cmnd->scsi_done))(cmnd);
  return (0);
}
}
static char sdebug_info[256U] ;
static char const *scsi_debug_info(struct Scsi_Host *shp )
{
  {
  sprintf((char *)(& sdebug_info), "scsi_debug, version %s [%s], dev_size_mb=%d, opts=0x%x",
          (char *)"1.85", scsi_debug_version_date, scsi_debug_dev_size_mb, scsi_debug_opts);
  return ((char const *)(& sdebug_info));
}
}
static int scsi_debug_write_info(struct Scsi_Host *host , char *buffer , int length )
{
  char arr[16U] ;
  int opts ;
  int minLen ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  minLen = 15 < length ? 15 : length;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
    tmp___1 = capable(17);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-13);
    } else {
    }
  }
  memcpy((void *)(& arr), (void const *)buffer, (size_t )minLen);
  arr[minLen] = 0;
  tmp___3 = sscanf((char const *)(& arr), "%d", & opts);
  if (tmp___3 != 1) {
    return (-22);
  } else {
  }
  scsi_debug_opts = opts;
  if (scsi_debug_every_nth != 0) {
    atomic_set(& sdebug_cmnd_count, 0);
  } else {
  }
  return (length);
}
}
static int scsi_debug_show_info(struct seq_file *m , struct Scsi_Host *host )
{
  int f ;
  int l ;
  char b[32U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  {
  if (scsi_debug_every_nth > 0) {
    if ((scsi_debug_opts & 2048) != 0) {
      tmp = atomic_read((atomic_t const *)(& sdebug_a_tsf));
      tmp___1 = tmp;
    } else {
      tmp___0 = atomic_read((atomic_t const *)(& sdebug_cmnd_count));
      tmp___1 = tmp___0;
    }
    snprintf((char *)(& b), 32UL, " (curr:%d)", tmp___1);
  } else {
    b[0] = 0;
  }
  tmp___2 = atomic_read((atomic_t const *)(& sdebug_completions));
  seq_printf(m, "scsi_debug adapter driver, version %s [%s]\nnum_tgts=%d, shared (ram) size=%d MB, opts=0x%x, every_nth=%d%s\ndelay=%d, ndelay=%d, max_luns=%d, q_completions=%d\nsector_size=%d bytes, cylinders=%d, heads=%d, sectors=%d\ncommand aborts=%d; RESETs: device=%d, target=%d, bus=%d, host=%d\ndix_reads=%d dix_writes=%d dif_errors=%d usec_in_jiffy=%lu\n",
             (char *)"1.85", scsi_debug_version_date, scsi_debug_num_tgts, scsi_debug_dev_size_mb,
             scsi_debug_opts, scsi_debug_every_nth, (char *)(& b), scsi_debug_delay,
             scsi_debug_ndelay, scsi_debug_max_luns, tmp___2, scsi_debug_sector_size,
             sdebug_cylinders_per, sdebug_heads, sdebug_sectors_per, num_aborts, num_dev_resets,
             num_target_resets, num_bus_resets, num_host_resets, dix_reads, dix_writes,
             dif_errors, 4000L);
  tmp___3 = find_first_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
  f = (int )tmp___3;
  if (f != scsi_debug_max_queue) {
    tmp___4 = find_last_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
    l = (int )tmp___4;
    seq_printf(m, "   %s BUSY: first,last bits set: %d,%d\n", (char *)"queued_in_use_bm",
               f, l);
  } else {
  }
  return (0);
}
}
static ssize_t delay_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_delay);
  return ((ssize_t )tmp);
}
}
static ssize_t delay_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int delay ;
  int res ;
  unsigned long iflags ;
  int k ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  if (count != 0UL) {
    tmp___0 = sscanf(buf, "%d", & delay);
    if (tmp___0 == 1) {
      res = (int )count;
      if (scsi_debug_delay != delay) {
        ldv_spin_lock();
        tmp = find_first_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
        k = (int )tmp;
        if (k != scsi_debug_max_queue) {
          res = -16;
        } else {
          scsi_debug_delay = delay;
          scsi_debug_ndelay = 0;
        }
        spin_unlock_irqrestore(& queued_arr_lock, iflags);
      } else {
      }
      return ((ssize_t )res);
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_delay = {{"delay", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & delay_show,
    & delay_store};
static ssize_t ndelay_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_ndelay);
  return ((ssize_t )tmp);
}
}
static ssize_t ndelay_store(struct device_driver *ddp , char const *buf , size_t count )
{
  unsigned long iflags ;
  int ndelay ;
  int res ;
  int k ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  if (count != 0UL) {
    tmp___0 = sscanf(buf, "%d", & ndelay);
    if (tmp___0 == 1) {
      if (ndelay >= 0) {
        if (ndelay <= 999999999) {
          res = (int )count;
          if (scsi_debug_ndelay != ndelay) {
            ldv_spin_lock();
            tmp = find_first_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
            k = (int )tmp;
            if (k != scsi_debug_max_queue) {
              res = -16;
            } else {
              scsi_debug_ndelay = ndelay;
              scsi_debug_delay = ndelay != 0 ? -9999 : 1;
            }
            spin_unlock_irqrestore(& queued_arr_lock, iflags);
          } else {
          }
          return ((ssize_t )res);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_ndelay = {{"ndelay", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & ndelay_show,
    & ndelay_store};
static ssize_t opts_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "0x%x\n", scsi_debug_opts);
  return ((ssize_t )tmp);
}
}
static ssize_t opts_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int opts ;
  char work[20U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___2 = sscanf(buf, "%10s", (char *)(& work));
  if (tmp___2 == 1) {
    tmp___1 = strncasecmp((char const *)(& work), "0x", 2UL);
    if (tmp___1 == 0) {
      tmp = sscanf((char const *)(& work) + 2U, "%x", & opts);
      if (tmp == 1) {
        goto opts_done;
      } else {
      }
    } else {
      tmp___0 = sscanf((char const *)(& work), "%d", & opts);
      if (tmp___0 == 1) {
        goto opts_done;
      } else {
      }
    }
  } else {
  }
  return (-22L);
  opts_done:
  scsi_debug_opts = opts;
  if ((opts & 8) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 16) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 32) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 64) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 256) != 0) {
    sdebug_any_injecting_opt = 1;
  } else {
  }
  atomic_set(& sdebug_cmnd_count, 0);
  atomic_set(& sdebug_a_tsf, 0);
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_opts = {{"opts", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & opts_show,
    & opts_store};
static ssize_t ptype_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_ptype);
  return ((ssize_t )tmp);
}
}
static ssize_t ptype_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_ptype = n;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_ptype = {{"ptype", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & ptype_show,
    & ptype_store};
static ssize_t dsense_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_dsense);
  return ((ssize_t )tmp);
}
}
static ssize_t dsense_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_dsense = n;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_dsense = {{"dsense", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & dsense_show,
    & dsense_store};
static ssize_t fake_rw_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_fake_rw);
  return ((ssize_t )tmp);
}
}
static ssize_t fake_rw_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  unsigned long sz ;
  void *tmp ;
  int tmp___0 ;
  {
  if (count != 0UL) {
    tmp___0 = sscanf(buf, "%d", & n);
    if (tmp___0 == 1) {
      if (n >= 0) {
        n = n > 0;
        scsi_debug_fake_rw = scsi_debug_fake_rw > 0;
        if (scsi_debug_fake_rw != n) {
          if (n == 0 && (unsigned long )fake_storep == (unsigned long )((unsigned char *)0U)) {
            sz = (unsigned long )scsi_debug_dev_size_mb * 1048576UL;
            tmp = ldv_vmalloc_27(sz);
            fake_storep = (unsigned char *)tmp;
            if ((unsigned long )fake_storep == (unsigned long )((unsigned char *)0U)) {
              printk("\v%s: out of memory, 9\n", "fake_rw_store");
              return (-12L);
            } else {
            }
            memset((void *)fake_storep, 0, sz);
          } else {
          }
          scsi_debug_fake_rw = n;
        } else {
        }
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_fake_rw = {{"fake_rw", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & fake_rw_show,
    & fake_rw_store};
static ssize_t no_lun_0_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_no_lun_0);
  return ((ssize_t )tmp);
}
}
static ssize_t no_lun_0_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_no_lun_0 = n;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_no_lun_0 = {{"no_lun_0", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & no_lun_0_show, & no_lun_0_store};
static ssize_t num_tgts_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_num_tgts);
  return ((ssize_t )tmp);
}
}
static ssize_t num_tgts_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_num_tgts = n;
        sdebug_max_tgts_luns();
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_num_tgts = {{"num_tgts", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & num_tgts_show, & num_tgts_store};
static ssize_t dev_size_mb_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_dev_size_mb);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_dev_size_mb = {{"dev_size_mb", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dev_size_mb_show, 0};
static ssize_t num_parts_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_num_parts);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_num_parts = {{"num_parts", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & num_parts_show, 0};
static ssize_t every_nth_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_every_nth);
  return ((ssize_t )tmp);
}
}
static ssize_t every_nth_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int nth ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & nth);
    if (tmp == 1) {
      scsi_debug_every_nth = nth;
      atomic_set(& sdebug_cmnd_count, 0);
      return ((ssize_t )count);
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_every_nth = {{"every_nth", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & every_nth_show, & every_nth_store};
static ssize_t max_luns_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_max_luns);
  return ((ssize_t )tmp);
}
}
static ssize_t max_luns_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  bool changed ;
  struct sdebug_host_info *sdhp ;
  struct sdebug_dev_info *dp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        changed = scsi_debug_max_luns != n;
        scsi_debug_max_luns = n;
        sdebug_max_tgts_luns();
        if ((int )changed && scsi_debug_scsi_level > 4) {
          spin_lock(& sdebug_host_list_lock);
          __mptr = (struct list_head const *)sdebug_host_list.next;
          sdhp = (struct sdebug_host_info *)__mptr;
          goto ldv_38001;
          ldv_38000:
          __mptr___0 = (struct list_head const *)sdhp->dev_info_list.next;
          dp = (struct sdebug_dev_info *)__mptr___0;
          goto ldv_37998;
          ldv_37997:
          set_bit(4L, (unsigned long volatile *)(& dp->uas_bm));
          __mptr___1 = (struct list_head const *)dp->dev_list.next;
          dp = (struct sdebug_dev_info *)__mptr___1;
          ldv_37998: ;
          if ((unsigned long )(& dp->dev_list) != (unsigned long )(& sdhp->dev_info_list)) {
            goto ldv_37997;
          } else {
          }
          __mptr___2 = (struct list_head const *)sdhp->host_list.next;
          sdhp = (struct sdebug_host_info *)__mptr___2;
          ldv_38001: ;
          if ((unsigned long )(& sdhp->host_list) != (unsigned long )(& sdebug_host_list)) {
            goto ldv_38000;
          } else {
          }
          spin_unlock(& sdebug_host_list_lock);
        } else {
        }
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_max_luns = {{"max_luns", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & max_luns_show, & max_luns_store};
static ssize_t max_queue_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_max_queue);
  return ((ssize_t )tmp);
}
}
static ssize_t max_queue_store(struct device_driver *ddp , char const *buf , size_t count )
{
  unsigned long iflags ;
  int n ;
  int k ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  if (count != 0UL) {
    tmp___0 = sscanf(buf, "%d", & n);
    if (tmp___0 == 1) {
      if (n > 0) {
        if (n <= 576) {
          ldv_spin_lock();
          tmp = find_last_bit((unsigned long const *)(& queued_in_use_bm), 576UL);
          k = (int )tmp;
          scsi_debug_max_queue = n;
          if (k == 576) {
            atomic_set(& retired_max_queue, 0);
          } else
          if (k >= n) {
            atomic_set(& retired_max_queue, k + 1);
          } else {
            atomic_set(& retired_max_queue, 0);
          }
          spin_unlock_irqrestore(& queued_arr_lock, iflags);
          return ((ssize_t )count);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_max_queue = {{"max_queue", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & max_queue_show, & max_queue_store};
static ssize_t no_uld_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_no_uld);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_no_uld = {{"no_uld", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & no_uld_show,
    0};
static ssize_t scsi_level_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_scsi_level);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_scsi_level = {{"scsi_level", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & scsi_level_show, 0};
static ssize_t virtual_gb_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_virtual_gb);
  return ((ssize_t )tmp);
}
}
static ssize_t virtual_gb_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  bool changed ;
  struct sdebug_host_info *sdhp ;
  struct sdebug_dev_info *dp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        changed = scsi_debug_virtual_gb != n;
        scsi_debug_virtual_gb = n;
        sdebug_capacity = get_sdebug_capacity();
        if ((int )changed) {
          spin_lock(& sdebug_host_list_lock);
          __mptr = (struct list_head const *)sdebug_host_list.next;
          sdhp = (struct sdebug_host_info *)__mptr;
          goto ldv_38076;
          ldv_38075:
          __mptr___0 = (struct list_head const *)sdhp->dev_info_list.next;
          dp = (struct sdebug_dev_info *)__mptr___0;
          goto ldv_38073;
          ldv_38072:
          set_bit(3L, (unsigned long volatile *)(& dp->uas_bm));
          __mptr___1 = (struct list_head const *)dp->dev_list.next;
          dp = (struct sdebug_dev_info *)__mptr___1;
          ldv_38073: ;
          if ((unsigned long )(& dp->dev_list) != (unsigned long )(& sdhp->dev_info_list)) {
            goto ldv_38072;
          } else {
          }
          __mptr___2 = (struct list_head const *)sdhp->host_list.next;
          sdhp = (struct sdebug_host_info *)__mptr___2;
          ldv_38076: ;
          if ((unsigned long )(& sdhp->host_list) != (unsigned long )(& sdebug_host_list)) {
            goto ldv_38075;
          } else {
          }
          spin_unlock(& sdebug_host_list_lock);
        } else {
        }
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_virtual_gb = {{"virtual_gb", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & virtual_gb_show, & virtual_gb_store};
static ssize_t add_host_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_add_host);
  return ((ssize_t )tmp);
}
}
static ssize_t add_host_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int delta_hosts ;
  int tmp ;
  {
  tmp = sscanf(buf, "%d", & delta_hosts);
  if (tmp != 1) {
    return (-22L);
  } else {
  }
  if (delta_hosts > 0) {
    ldv_38101:
    sdebug_add_adapter();
    delta_hosts = delta_hosts - 1;
    if (delta_hosts != 0) {
      goto ldv_38101;
    } else {
    }
  } else
  if (delta_hosts < 0) {
    ldv_38103:
    sdebug_remove_adapter();
    delta_hosts = delta_hosts + 1;
    if (delta_hosts != 0) {
      goto ldv_38103;
    } else {
    }
  } else {
  }
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_add_host = {{"add_host", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & add_host_show, & add_host_store};
static ssize_t vpd_use_hostno_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_vpd_use_hostno);
  return ((ssize_t )tmp);
}
}
static ssize_t vpd_use_hostno_store(struct device_driver *ddp , char const *buf ,
                                    size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_vpd_use_hostno = n;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_vpd_use_hostno = {{"vpd_use_hostno", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & vpd_use_hostno_show, & vpd_use_hostno_store};
static ssize_t sector_size_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%u\n", scsi_debug_sector_size);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_sector_size = {{"sector_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sector_size_show, 0};
static ssize_t dix_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_dix);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_dix = {{"dix", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & dix_show, 0};
static ssize_t dif_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_dif);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_dif = {{"dif", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & dif_show, 0};
static ssize_t guard_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%u\n", scsi_debug_guard);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_guard = {{"guard", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & guard_show,
    0};
static ssize_t ato_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", scsi_debug_ato);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_ato = {{"ato", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & ato_show, 0};
static ssize_t map_show(struct device_driver *ddp , char *buf )
{
  ssize_t count ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  {
  tmp___0 = scsi_debug_lbp();
  if (tmp___0 == 0U) {
    tmp = scnprintf(buf, 4096UL, "0-%u\n", sdebug_store_sectors);
    return ((ssize_t )tmp);
  } else {
  }
  tmp___1 = scnprintf(buf, 4095UL, "%*pbl", (int )map_size, map_storep);
  count = (ssize_t )tmp___1;
  tmp___2 = count;
  count = count + 1L;
  *(buf + (unsigned long )tmp___2) = 10;
  *(buf + (unsigned long )count) = 0;
  return (count);
}
}
static struct driver_attribute driver_attr_map = {{"map", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & map_show, 0};
static ssize_t removable_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", (int )scsi_debug_removable);
  return ((ssize_t )tmp);
}
}
static ssize_t removable_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_removable = n > 0;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_removable = {{"removable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & removable_show, & removable_store};
static ssize_t host_lock_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", (int )scsi_debug_host_lock);
  return ((ssize_t )tmp);
}
}
static ssize_t host_lock_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int res ;
  bool new_host_lock ;
  unsigned long iflags ;
  int k ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  if (count != 0UL) {
    tmp___0 = sscanf(buf, "%d", & n);
    if (tmp___0 == 1) {
      if (n >= 0) {
        new_host_lock = n > 0;
        res = (int )count;
        if ((int )new_host_lock != (int )scsi_debug_host_lock) {
          ldv_spin_lock();
          tmp = find_first_bit((unsigned long const *)(& queued_in_use_bm), (unsigned long )scsi_debug_max_queue);
          k = (int )tmp;
          if (k != scsi_debug_max_queue) {
            res = -16;
          } else {
            scsi_debug_host_lock = new_host_lock;
          }
          spin_unlock_irqrestore(& queued_arr_lock, iflags);
        } else {
        }
        return ((ssize_t )res);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_host_lock = {{"host_lock", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & host_lock_show, & host_lock_store};
static ssize_t strict_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  tmp = scnprintf(buf, 4096UL, "%d\n", (int )scsi_debug_strict);
  return ((ssize_t )tmp);
}
}
static ssize_t strict_store(struct device_driver *ddp , char const *buf , size_t count )
{
  int n ;
  int tmp ;
  {
  if (count != 0UL) {
    tmp = sscanf(buf, "%d", & n);
    if (tmp == 1) {
      if (n >= 0) {
        scsi_debug_strict = n > 0;
        return ((ssize_t )count);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-22L);
}
}
static struct driver_attribute driver_attr_strict = {{"strict", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & strict_show,
    & strict_store};
static struct attribute *sdebug_drv_attrs[28U] =
  { & driver_attr_delay.attr, & driver_attr_opts.attr, & driver_attr_ptype.attr, & driver_attr_dsense.attr,
        & driver_attr_fake_rw.attr, & driver_attr_no_lun_0.attr, & driver_attr_num_tgts.attr, & driver_attr_dev_size_mb.attr,
        & driver_attr_num_parts.attr, & driver_attr_every_nth.attr, & driver_attr_max_luns.attr, & driver_attr_max_queue.attr,
        & driver_attr_no_uld.attr, & driver_attr_scsi_level.attr, & driver_attr_virtual_gb.attr, & driver_attr_add_host.attr,
        & driver_attr_vpd_use_hostno.attr, & driver_attr_sector_size.attr, & driver_attr_dix.attr, & driver_attr_dif.attr,
        & driver_attr_guard.attr, & driver_attr_ato.attr, & driver_attr_map.attr, & driver_attr_removable.attr,
        & driver_attr_host_lock.attr, & driver_attr_ndelay.attr, & driver_attr_strict.attr, (struct attribute *)0};
static struct attribute_group const sdebug_drv_group = {0, 0, (struct attribute **)(& sdebug_drv_attrs), 0};
static struct attribute_group const *sdebug_drv_groups[2U] = { & sdebug_drv_group, (struct attribute_group const *)0};
static struct device *pseudo_primary ;
static int scsi_debug_init(void)
{
  unsigned long sz ;
  int host_to_add ;
  int k ;
  int ret ;
  void *tmp ;
  int dif_size ;
  void *tmp___0 ;
  unsigned int _min1 ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _max1___0 ;
  unsigned int _max2___0 ;
  unsigned int _min2___0 ;
  unsigned int _min1___1 ;
  unsigned int _max1___1 ;
  unsigned int _max2___1 ;
  unsigned int _min2___1 ;
  unsigned long tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  atomic_set(& sdebug_cmnd_count, 0);
  atomic_set(& sdebug_completions, 0);
  atomic_set(& retired_max_queue, 0);
  if (scsi_debug_ndelay > 999999999) {
    printk("\f%s: ndelay must be less than 1 second, ignored\n", "scsi_debug_init");
    scsi_debug_ndelay = 0;
  } else
  if (scsi_debug_ndelay > 0) {
    scsi_debug_delay = -9999;
  } else {
  }
  switch (scsi_debug_sector_size) {
  case 512: ;
  case 1024: ;
  case 2048: ;
  case 4096: ;
  goto ldv_38261;
  default:
  printk("\v%s: invalid sector_size %d\n", "scsi_debug_init", scsi_debug_sector_size);
  return (-22);
  }
  ldv_38261: ;
  switch (scsi_debug_dif) {
  case 0: ;
  case 1: ;
  case 2: ;
  case 3: ;
  goto ldv_38267;
  default:
  printk("\v%s: dif must be 0, 1, 2 or 3\n", "scsi_debug_init");
  return (-22);
  }
  ldv_38267: ;
  if (scsi_debug_guard > 1U) {
    printk("\v%s: guard must be 0 or 1\n", "scsi_debug_init");
    return (-22);
  } else {
  }
  if (scsi_debug_ato > 1) {
    printk("\v%s: ato must be 0 or 1\n", "scsi_debug_init");
    return (-22);
  } else {
  }
  if (scsi_debug_physblk_exp > 15) {
    printk("\v%s: invalid physblk_exp %u\n", "scsi_debug_init", scsi_debug_physblk_exp);
    return (-22);
  } else {
  }
  if (scsi_debug_lowest_aligned > 16383) {
    printk("\v%s: lowest_aligned too big: %u\n", "scsi_debug_init", scsi_debug_lowest_aligned);
    return (-22);
  } else {
  }
  if (scsi_debug_dev_size_mb <= 0) {
    scsi_debug_dev_size_mb = 1;
  } else {
  }
  sz = (unsigned long )scsi_debug_dev_size_mb * 1048576UL;
  sdebug_store_sectors = (unsigned int )(sz / (unsigned long )scsi_debug_sector_size);
  sdebug_capacity = get_sdebug_capacity();
  sdebug_heads = 8;
  sdebug_sectors_per = 32;
  if (scsi_debug_dev_size_mb > 15) {
    sdebug_heads = 32;
  } else
  if (scsi_debug_dev_size_mb > 255) {
    sdebug_heads = 64;
  } else {
  }
  sdebug_cylinders_per = (int )(sdebug_capacity / (sector_t )(sdebug_sectors_per * sdebug_heads));
  if (sdebug_cylinders_per > 1023) {
    sdebug_heads = 255;
    sdebug_sectors_per = 63;
    sdebug_cylinders_per = (int )(sdebug_capacity / (sector_t )(sdebug_sectors_per * sdebug_heads));
  } else {
  }
  if (scsi_debug_fake_rw == 0) {
    tmp = ldv_vmalloc_28(sz);
    fake_storep = (unsigned char *)tmp;
    if ((unsigned long )fake_storep == (unsigned long )((unsigned char *)0U)) {
      printk("\v%s: out of memory, 1\n", "scsi_debug_init");
      return (-12);
    } else {
    }
    memset((void *)fake_storep, 0, sz);
    if (scsi_debug_num_parts > 0) {
      sdebug_build_parts(fake_storep, sz);
    } else {
    }
  } else {
  }
  if (scsi_debug_dix != 0) {
    dif_size = (int )(sdebug_store_sectors * 8U);
    tmp___0 = ldv_vmalloc_29((unsigned long )dif_size);
    dif_storep = (struct sd_dif_tuple *)tmp___0;
    printk("\v%s: dif_storep %u bytes @ %p\n", "scsi_debug_init", dif_size, dif_storep);
    if ((unsigned long )dif_storep == (unsigned long )((struct sd_dif_tuple *)0)) {
      printk("\v%s: out of mem. (DIX)\n", "scsi_debug_init");
      ret = -12;
      goto free_vm;
    } else {
    }
    memset((void *)dif_storep, 255, (size_t )dif_size);
  } else {
  }
  tmp___2 = scsi_debug_lbp();
  if (tmp___2 != 0U) {
    _max1 = scsi_debug_unmap_max_blocks;
    _max2 = 0U;
    _min1 = _max1 > _max2 ? _max1 : _max2;
    _min2 = 4294967295U;
    scsi_debug_unmap_max_blocks = _min1 < _min2 ? _min1 : _min2;
    _max1___0 = scsi_debug_unmap_max_desc;
    _max2___0 = 0U;
    _min1___0 = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
    _min2___0 = 256U;
    scsi_debug_unmap_max_desc = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    _max1___1 = scsi_debug_unmap_granularity;
    _max2___1 = 1U;
    _min1___1 = _max1___1 > _max2___1 ? _max1___1 : _max2___1;
    _min2___1 = 4294967295U;
    scsi_debug_unmap_granularity = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
    if (scsi_debug_unmap_alignment != 0U && scsi_debug_unmap_granularity <= scsi_debug_unmap_alignment) {
      printk("\v%s: ERR: unmap_granularity <= unmap_alignment\n", "scsi_debug_init");
      return (-22);
    } else {
    }
    tmp___1 = lba_to_map_index((sector_t )(sdebug_store_sectors - 1U));
    map_size = tmp___1 + 1UL;
    map_storep = ldv_vmalloc_30(((map_size + 63UL) / 64UL) * 8UL);
    printk("\016%s: %lu provisioning blocks\n", "scsi_debug_init", map_size);
    if ((unsigned long )map_storep == (unsigned long )((void *)0)) {
      printk("\v%s: out of mem. (MAP)\n", "scsi_debug_init");
      ret = -12;
      goto free_vm;
    } else {
    }
    bitmap_zero((unsigned long *)map_storep, (unsigned int )map_size);
    if (scsi_debug_num_parts != 0) {
      map_region(0UL, 2U);
    } else {
    }
  } else {
  }
  pseudo_primary = __root_device_register("pseudo_0", & __this_module);
  tmp___4 = IS_ERR((void const *)pseudo_primary);
  if ((int )tmp___4) {
    printk("\f%s: root_device_register() error\n", "scsi_debug_init");
    tmp___3 = PTR_ERR((void const *)pseudo_primary);
    ret = (int )tmp___3;
    goto free_vm;
  } else {
  }
  ret = bus_register(& pseudo_lld_bus);
  if (ret < 0) {
    printk("\f%s: bus_register error: %d\n", "scsi_debug_init", ret);
    goto dev_unreg;
  } else {
  }
  ret = driver_register(& sdebug_driverfs_driver);
  if (ret < 0) {
    printk("\f%s: driver_register error: %d\n", "scsi_debug_init", ret);
    goto bus_unreg;
  } else {
  }
  host_to_add = scsi_debug_add_host;
  scsi_debug_add_host = 0;
  k = 0;
  goto ldv_38302;
  ldv_38301:
  tmp___5 = sdebug_add_adapter();
  if (tmp___5 != 0) {
    printk("\v%s: sdebug_add_adapter failed k=%d\n", "scsi_debug_init", k);
    goto ldv_38300;
  } else {
  }
  k = k + 1;
  ldv_38302: ;
  if (k < host_to_add) {
    goto ldv_38301;
  } else {
  }
  ldv_38300: ;
  if (scsi_debug_opts & 1) {
    printk("\016%s: built %d host(s)\n", "scsi_debug_init", scsi_debug_add_host);
  } else {
  }
  return (0);
  bus_unreg:
  bus_unregister(& pseudo_lld_bus);
  dev_unreg:
  root_device_unregister(pseudo_primary);
  free_vm: ;
  if ((unsigned long )map_storep != (unsigned long )((void *)0)) {
    vfree((void const *)map_storep);
  } else {
  }
  if ((unsigned long )dif_storep != (unsigned long )((struct sd_dif_tuple *)0)) {
    vfree((void const *)dif_storep);
  } else {
  }
  vfree((void const *)fake_storep);
  return (ret);
}
}
static void scsi_debug_exit(void)
{
  int k ;
  {
  k = scsi_debug_add_host;
  stop_all_queued();
  free_all_queued();
  goto ldv_38308;
  ldv_38307:
  sdebug_remove_adapter();
  k = k - 1;
  ldv_38308: ;
  if (k != 0) {
    goto ldv_38307;
  } else {
  }
  driver_unregister(& sdebug_driverfs_driver);
  bus_unregister(& pseudo_lld_bus);
  root_device_unregister(pseudo_primary);
  if ((unsigned long )dif_storep != (unsigned long )((struct sd_dif_tuple *)0)) {
    vfree((void const *)dif_storep);
  } else {
  }
  vfree((void const *)fake_storep);
  return;
}
}
static void sdebug_release_adapter(struct device *dev )
{
  struct sdebug_host_info *sdbg_host ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  sdbg_host = (struct sdebug_host_info *)__mptr + 0xffffffffffffffe8UL;
  kfree((void const *)sdbg_host);
  return;
}
}
static int sdebug_add_adapter(void)
{
  int k ;
  int devs_per_host ;
  int error ;
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *sdbg_devinfo ;
  struct sdebug_dev_info *tmp ;
  void *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  error = 0;
  tmp___0 = kmalloc(1456UL, 208U);
  sdbg_host = (struct sdebug_host_info *)tmp___0;
  if ((unsigned long )sdbg_host == (unsigned long )((struct sdebug_host_info *)0)) {
    printk("\v%s: out of memory at line %d\n", "sdebug_add_adapter", 5016);
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& sdbg_host->dev_info_list);
  devs_per_host = scsi_debug_num_tgts * scsi_debug_max_luns;
  k = 0;
  goto ldv_38338;
  ldv_38337:
  sdbg_devinfo = sdebug_device_create(sdbg_host, 208U);
  if ((unsigned long )sdbg_devinfo == (unsigned long )((struct sdebug_dev_info *)0)) {
    printk("\v%s: out of memory at line %d\n", "sdebug_add_adapter", 5027);
    error = -12;
    goto clean;
  } else {
  }
  k = k + 1;
  ldv_38338: ;
  if (k < devs_per_host) {
    goto ldv_38337;
  } else {
  }
  spin_lock(& sdebug_host_list_lock);
  list_add_tail(& sdbg_host->host_list, & sdebug_host_list);
  spin_unlock(& sdebug_host_list_lock);
  sdbg_host->dev.bus = & pseudo_lld_bus;
  sdbg_host->dev.parent = pseudo_primary;
  sdbg_host->dev.release = & sdebug_release_adapter;
  dev_set_name(& sdbg_host->dev, "adapter%d", scsi_debug_add_host);
  error = device_register(& sdbg_host->dev);
  if (error != 0) {
    goto clean;
  } else {
  }
  scsi_debug_add_host = scsi_debug_add_host + 1;
  return (error);
  clean:
  __mptr = (struct list_head const *)sdbg_host->dev_info_list.next;
  sdbg_devinfo = (struct sdebug_dev_info *)__mptr;
  __mptr___0 = (struct list_head const *)sdbg_devinfo->dev_list.next;
  tmp = (struct sdebug_dev_info *)__mptr___0;
  goto ldv_38347;
  ldv_38346:
  list_del(& sdbg_devinfo->dev_list);
  kfree((void const *)sdbg_devinfo);
  sdbg_devinfo = tmp;
  __mptr___1 = (struct list_head const *)tmp->dev_list.next;
  tmp = (struct sdebug_dev_info *)__mptr___1;
  ldv_38347: ;
  if ((unsigned long )(& sdbg_devinfo->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
    goto ldv_38346;
  } else {
  }
  kfree((void const *)sdbg_host);
  return (error);
}
}
static void sdebug_remove_adapter(void)
{
  struct sdebug_host_info *sdbg_host ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  sdbg_host = (struct sdebug_host_info *)0;
  spin_lock(& sdebug_host_list_lock);
  tmp = list_empty((struct list_head const *)(& sdebug_host_list));
  if (tmp == 0) {
    __mptr = (struct list_head const *)sdebug_host_list.prev;
    sdbg_host = (struct sdebug_host_info *)__mptr;
    list_del(& sdbg_host->host_list);
  } else {
  }
  spin_unlock(& sdebug_host_list_lock);
  if ((unsigned long )sdbg_host == (unsigned long )((struct sdebug_host_info *)0)) {
    return;
  } else {
  }
  device_unregister(& sdbg_host->dev);
  scsi_debug_add_host = scsi_debug_add_host - 1;
  return;
}
}
static int sdebug_change_qdepth(struct scsi_device *sdev , int qdepth )
{
  int num_in_q ;
  unsigned long iflags ;
  struct sdebug_dev_info *devip ;
  {
  num_in_q = 0;
  ldv_spin_lock();
  devip = (struct sdebug_dev_info *)sdev->hostdata;
  if ((unsigned long )devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    spin_unlock_irqrestore(& queued_arr_lock, iflags);
    return (-19);
  } else {
  }
  num_in_q = atomic_read((atomic_t const *)(& devip->num_in_q));
  spin_unlock_irqrestore(& queued_arr_lock, iflags);
  if (qdepth <= 0) {
    qdepth = 1;
  } else {
  }
  if (qdepth > 586) {
    qdepth = 586;
  } else {
  }
  scsi_change_queue_depth(sdev, qdepth);
  if ((scsi_debug_opts & 512) != 0) {
    sdev_prefix_printk("\016", (struct scsi_device const *)sdev, (char const *)0,
                       "%s: qdepth=%d, num_in_q=%d\n", "sdebug_change_qdepth", qdepth,
                       num_in_q);
  } else {
  }
  return ((int )sdev->queue_depth);
}
}
static int check_inject(struct scsi_cmnd *scp )
{
  struct sdebug_scmd_extra_t *ep ;
  void *tmp ;
  int tmp___0 ;
  int opts ;
  int tmp___1 ;
  long ret ;
  int __x___0 ;
  {
  tmp = scsi_cmd_priv(scp);
  ep = (struct sdebug_scmd_extra_t *)tmp;
  memset((void *)ep, 0, 5UL);
  tmp___1 = atomic_add_return(1, & sdebug_cmnd_count);
  __x___0 = scsi_debug_every_nth;
  ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
  if ((long )tmp___1 >= ret) {
    atomic_set(& sdebug_cmnd_count, 0);
    if (scsi_debug_every_nth < -1) {
      scsi_debug_every_nth = -1;
    } else {
    }
    if ((scsi_debug_opts & 4) != 0) {
      return (1);
    } else
    if ((scsi_debug_opts & 128) != 0) {
      tmp___0 = scsi_medium_access_command(scp);
      if (tmp___0 != 0) {
        return (1);
      } else {
      }
    } else {
    }
    if ((int )sdebug_any_injecting_opt) {
      opts = scsi_debug_opts;
      if ((opts & 8) != 0) {
        ep->inj_recovered = 1;
      } else
      if ((opts & 16) != 0) {
        ep->inj_transport = 1;
      } else
      if ((opts & 32) != 0) {
        ep->inj_dif = 1;
      } else
      if ((opts & 64) != 0) {
        ep->inj_dix = 1;
      } else
      if ((opts & 256) != 0) {
        ep->inj_short = 1;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int scsi_debug_queuecommand(struct scsi_cmnd *scp )
{
  u8 sdeb_i ;
  struct scsi_device *sdp ;
  struct opcode_info_t const *oip ;
  struct opcode_info_t const *r_oip ;
  struct sdebug_dev_info *devip ;
  u8 *cmd ;
  int (*r_pfp)(struct scsi_cmnd * , struct sdebug_dev_info * ) ;
  int k ;
  int na ;
  int errsts ;
  int errsts_no_connect ;
  u32 flags ;
  u16 sa ;
  u8 opcode ;
  bool has_wlun_rl ;
  bool debug ;
  char b[120U] ;
  int n ;
  int len ;
  int sb ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u8 rem ;
  int j ;
  unsigned long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  sdp = scp->device;
  cmd = scp->cmnd;
  errsts = 0;
  errsts_no_connect = 65536;
  opcode = *cmd;
  debug = (scsi_debug_opts & 1) != 0;
  scsi_set_resid(scp, 0);
  if ((int )debug && (scsi_debug_opts & 16384) == 0) {
    len = (int )scp->cmd_len;
    sb = 120;
    if (len > 32) {
      strcpy((char *)(& b), "too long, over 32 bytes");
    } else {
      k = 0;
      n = 0;
      goto ldv_38398;
      ldv_38397:
      tmp = scnprintf((char *)(& b) + (unsigned long )n, (size_t )(sb - n), "%02x ",
                      (unsigned int )*(cmd + (unsigned long )k));
      n = tmp + n;
      k = k + 1;
      ldv_38398: ;
      if (k < len && n < sb) {
        goto ldv_38397;
      } else {
      }
    }
    sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                       "%s: cmd %s\n", my_name, (char *)(& b));
  } else {
  }
  has_wlun_rl = sdp->lun == 49409ULL;
  if (sdp->lun >= (u64 )scsi_debug_max_luns && ! has_wlun_rl) {
    tmp___0 = schedule_resp(scp, (struct sdebug_dev_info *)0, errsts_no_connect, 0);
    return (tmp___0);
  } else {
  }
  sdeb_i = opcode_ind_arr[(int )opcode];
  oip = (struct opcode_info_t const *)(& opcode_info_arr) + (unsigned long )sdeb_i;
  devip = (struct sdebug_dev_info *)sdp->hostdata;
  if ((unsigned long )devip == (unsigned long )((struct sdebug_dev_info *)0)) {
    devip = devInfoReg(sdp);
    if ((unsigned long )devip == (unsigned long )((struct sdebug_dev_info *)0)) {
      tmp___1 = schedule_resp(scp, (struct sdebug_dev_info *)0, errsts_no_connect,
                              0);
      return (tmp___1);
    } else {
    }
  } else {
  }
  na = (int )oip->num_attached;
  r_pfp = oip->pfp;
  if (na != 0) {
    r_oip = oip;
    if (((unsigned int )r_oip->flags & 384U) != 0U) {
      if (((unsigned int )oip->flags & 128U) != 0U) {
        sa = (unsigned int )((u16 )*(cmd + 1UL)) & 31U;
      } else {
        sa = get_unaligned_be16((void const *)cmd + 8U);
      }
      k = 0;
      goto ldv_38402;
      ldv_38401: ;
      if ((int )((unsigned char )oip->opcode) == (int )opcode && (int )((unsigned short )oip->sa) == (int )sa) {
        goto ldv_38400;
      } else {
      }
      tmp___2 = k;
      k = k + 1;
      oip = r_oip->arrp + (unsigned long )tmp___2;
      ldv_38402: ;
      if (k <= na) {
        goto ldv_38401;
      } else {
      }
      ldv_38400: ;
    } else {
      k = 0;
      goto ldv_38405;
      ldv_38404: ;
      if ((int )((unsigned char )oip->opcode) == (int )opcode) {
        goto ldv_38403;
      } else {
      }
      tmp___3 = k;
      k = k + 1;
      oip = r_oip->arrp + (unsigned long )tmp___3;
      ldv_38405: ;
      if (k <= na) {
        goto ldv_38404;
      } else {
      }
      ldv_38403: ;
    }
    if (k > na) {
      if (((unsigned int )r_oip->flags & 128U) != 0U) {
        mk_sense_invalid_fld(scp, 1, 1, 4);
      } else
      if (((unsigned int )r_oip->flags & 256U) != 0U) {
        mk_sense_invalid_fld(scp, 1, 8, 7);
      } else {
        mk_sense_invalid_opcode(scp);
      }
      goto check_cond;
    } else {
    }
  } else {
  }
  flags = oip->flags;
  if ((flags & 512U) != 0U) {
    mk_sense_invalid_opcode(scp);
    goto check_cond;
  } else {
  }
  if ((int )has_wlun_rl && (flags & 16U) == 0U) {
    if ((int )debug) {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                         "scsi_debug: Opcode: 0x%x not supported for wlun\n", (int )opcode);
    } else {
    }
    mk_sense_invalid_opcode(scp);
    goto check_cond;
  } else {
  }
  if ((int )scsi_debug_strict) {
    k = 1;
    goto ldv_38413;
    ldv_38412:
    rem = (u8 )(~ ((int )((signed char )oip->len_mask[k])) & (int )((signed char )*(cmd + (unsigned long )k)));
    if ((unsigned int )rem != 0U) {
      j = 7;
      goto ldv_38411;
      ldv_38410: ;
      if ((int )((signed char )rem) < 0) {
        goto ldv_38409;
      } else {
      }
      j = j - 1;
      rem = (int )rem << 1U;
      ldv_38411: ;
      if (j >= 0) {
        goto ldv_38410;
      } else {
      }
      ldv_38409:
      mk_sense_invalid_fld(scp, 1, k, j);
      goto check_cond;
    } else {
    }
    k = k + 1;
    ldv_38413: ;
    if ((int )oip->len_mask[0] > k && k <= 15) {
      goto ldv_38412;
    } else {
    }
  } else {
  }
  if ((flags & 32U) == 0U) {
    tmp___4 = find_first_bit((unsigned long const *)(& devip->uas_bm), 7UL);
    if (tmp___4 != 7UL) {
      errsts = check_readiness(scp, 1, devip);
      if (errsts != 0) {
        goto check_cond;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((flags & 2048U) != 0U && (int )((signed char )devip->stopped) != 0) {
    mk_sense_buffer(scp, 2, 4, 2);
    if ((int )debug) {
      sdev_prefix_printk("\016", (struct scsi_device const *)sdp, (char const *)0,
                         "%s reports: Not ready: %s\n", my_name, (char *)"initializing command required");
    } else {
    }
    errsts = check_condition_result;
    goto fini;
  } else {
  }
  if (scsi_debug_fake_rw != 0 && (flags & 1024U) != 0U) {
    goto fini;
  } else {
  }
  if (scsi_debug_every_nth != 0) {
    tmp___5 = check_inject(scp);
    if (tmp___5 != 0) {
      return (0);
    } else {
    }
  } else {
  }
  if ((unsigned long )oip->pfp != (unsigned long )((int (* )(struct scsi_cmnd * ,
                                                                        struct sdebug_dev_info * ))0)) {
    errsts = (*(oip->pfp))(scp, devip);
  } else
  if ((unsigned long )r_pfp != (unsigned long )((int (*)(struct scsi_cmnd * , struct sdebug_dev_info * ))0)) {
    errsts = (*r_pfp)(scp, devip);
  } else {
  }
  fini:
  tmp___6 = schedule_resp(scp, devip, errsts, (flags & 64U) == 0U ? scsi_debug_delay : 0);
  return (tmp___6);
  check_cond:
  tmp___7 = schedule_resp(scp, devip, check_condition_result, 0);
  return (tmp___7);
}
}
static int sdebug_queuecommand_lock_or_not(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long iflags ;
  int rc ;
  int tmp ;
  {
  if ((int )scsi_debug_host_lock) {
    ldv_spin_lock();
    rc = scsi_debug_queuecommand(cmd);
    spin_unlock_irqrestore(shost->host_lock, iflags);
    return (rc);
  } else {
    tmp = scsi_debug_queuecommand(cmd);
    return (tmp);
  }
}
}
static struct scsi_host_template sdebug_driver_template =
     {& __this_module, "SCSI DEBUG", 0, 0, & scsi_debug_info, & scsi_debug_ioctl, 0,
    & sdebug_queuecommand_lock_or_not, & scsi_debug_abort, & scsi_debug_device_reset,
    & scsi_debug_target_reset, & scsi_debug_bus_reset, & scsi_debug_host_reset, & scsi_debug_slave_alloc,
    & scsi_debug_slave_configure, & scsi_debug_slave_destroy, 0, 0, 0, 0, & sdebug_change_qdepth,
    0, 0, & scsi_debug_show_info, & scsi_debug_write_info, 0, 0, (char const *)(& sdebug_proc_name),
    0, 576, 7, 2048U, (unsigned short)0, 4294967295U, 0UL, 255, (unsigned char)0,
    0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 0U, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 0U, 0, 0, {0, 0}, 0ULL,
    5U, 0, (_Bool)0};
static int sdebug_driver_probe(struct device *dev )
{
  int error ;
  int opts ;
  struct sdebug_host_info *sdbg_host ;
  struct Scsi_Host *hpnt ;
  int host_prot ;
  struct device const *__mptr ;
  {
  error = 0;
  __mptr = (struct device const *)dev;
  sdbg_host = (struct sdebug_host_info *)__mptr + 0xffffffffffffffe8UL;
  sdebug_driver_template.can_queue = scsi_debug_max_queue;
  if ((int )scsi_debug_clustering) {
    sdebug_driver_template.use_clustering = 1U;
  } else {
  }
  hpnt = ldv_scsi_host_alloc_31(& sdebug_driver_template, 8);
  if ((unsigned long )hpnt == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\v%s: scsi_host_alloc failed\n", "sdebug_driver_probe");
    error = -19;
    return (error);
  } else {
  }
  sdbg_host->shost = hpnt;
  *((struct sdebug_host_info **)(& hpnt->hostdata)) = sdbg_host;
  if (hpnt->this_id >= 0 && hpnt->this_id < scsi_debug_num_tgts) {
    hpnt->max_id = (unsigned int )(scsi_debug_num_tgts + 1);
  } else {
    hpnt->max_id = (unsigned int )scsi_debug_num_tgts;
  }
  hpnt->max_lun = 49409ULL;
  host_prot = 0;
  switch (scsi_debug_dif) {
  case 1:
  host_prot = 1;
  if (scsi_debug_dix != 0) {
    host_prot = host_prot | 16;
  } else {
  }
  goto ldv_38435;
  case 2:
  host_prot = 2;
  if (scsi_debug_dix != 0) {
    host_prot = host_prot | 32;
  } else {
  }
  goto ldv_38435;
  case 3:
  host_prot = 4;
  if (scsi_debug_dix != 0) {
    host_prot = host_prot | 64;
  } else {
  }
  goto ldv_38435;
  default: ;
  if (scsi_debug_dix != 0) {
    host_prot = host_prot | 8;
  } else {
  }
  goto ldv_38435;
  }
  ldv_38435:
  scsi_host_set_prot(hpnt, (unsigned int )host_prot);
  printk("\016scsi_debug: host protection%s%s%s%s%s%s%s\n", host_prot & 1 ? (char *)" DIF1" : (char *)"",
         (host_prot & 2) != 0 ? (char *)" DIF2" : (char *)"", (host_prot & 4) != 0 ? (char *)" DIF3" : (char *)"",
         (host_prot & 8) != 0 ? (char *)" DIX0" : (char *)"", (host_prot & 16) != 0 ? (char *)" DIX1" : (char *)"",
         (host_prot & 32) != 0 ? (char *)" DIX2" : (char *)"", (host_prot & 64) != 0 ? (char *)" DIX3" : (char *)"");
  if (scsi_debug_guard == 1U) {
    scsi_host_set_guard(hpnt, 2);
  } else {
    scsi_host_set_guard(hpnt, 1);
  }
  opts = scsi_debug_opts;
  if ((opts & 8) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 16) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 32) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 64) != 0) {
    sdebug_any_injecting_opt = 1;
  } else
  if ((opts & 256) != 0) {
    sdebug_any_injecting_opt = 1;
  } else {
  }
  error = scsi_add_host(hpnt, & sdbg_host->dev);
  if (error != 0) {
    printk("\v%s: scsi_add_host failed\n", "sdebug_driver_probe");
    error = -19;
    scsi_host_put(hpnt);
  } else {
    scsi_scan_host(hpnt);
  }
  return (error);
}
}
static int sdebug_driver_remove(struct device *dev )
{
  struct sdebug_host_info *sdbg_host ;
  struct sdebug_dev_info *sdbg_devinfo ;
  struct sdebug_dev_info *tmp ;
  struct device const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  __mptr = (struct device const *)dev;
  sdbg_host = (struct sdebug_host_info *)__mptr + 0xffffffffffffffe8UL;
  if ((unsigned long )sdbg_host == (unsigned long )((struct sdebug_host_info *)0)) {
    printk("\v%s: Unable to locate host info\n", "sdebug_driver_remove");
    return (-19);
  } else {
  }
  ldv_scsi_remove_host_32(sdbg_host->shost);
  __mptr___0 = (struct list_head const *)sdbg_host->dev_info_list.next;
  sdbg_devinfo = (struct sdebug_dev_info *)__mptr___0;
  __mptr___1 = (struct list_head const *)sdbg_devinfo->dev_list.next;
  tmp = (struct sdebug_dev_info *)__mptr___1;
  goto ldv_38455;
  ldv_38454:
  list_del(& sdbg_devinfo->dev_list);
  kfree((void const *)sdbg_devinfo);
  sdbg_devinfo = tmp;
  __mptr___2 = (struct list_head const *)tmp->dev_list.next;
  tmp = (struct sdebug_dev_info *)__mptr___2;
  ldv_38455: ;
  if ((unsigned long )(& sdbg_devinfo->dev_list) != (unsigned long )(& sdbg_host->dev_info_list)) {
    goto ldv_38454;
  } else {
  }
  scsi_host_put(sdbg_host->shost);
  return (0);
}
}
static int pseudo_lld_bus_match(struct device *dev , struct device_driver *dev_driver )
{
  {
  return (1);
}
}
static struct bus_type pseudo_lld_bus =
     {"pseudo", 0, 0, 0, 0, 0, (struct attribute_group const **)(& sdebug_drv_groups),
    & pseudo_lld_bus_match, 0, & sdebug_driver_probe, & sdebug_driver_remove, 0, 0,
    0, 0, 0, 0, 0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                        {(char)0}, {(char)0}}}};
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_release_3(void) ;
extern int ldv_probe_3(void) ;
void ldv_initialize_driver_attribute_20(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_every_nth_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_24(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_no_lun_0_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_removable_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_host_lock_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_15(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_virtual_gb_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_25(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_fake_rw_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_18(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_max_queue_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_19(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_max_luns_group0 = (struct device_driver *)tmp;
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
void ldv_initialize_driver_attribute_26(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_dsense_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_30(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_delay_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_29(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_ndelay_group0 = (struct device_driver *)tmp;
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
void ldv_initialize_driver_attribute_23(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_num_tgts_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_scsi_host_template_3(void)
{
  void *tmp___0 ;
  {
  sdebug_driver_template_group0 = ldv_malloc(sizeof(struct scsi_cmnd));
  tmp___0 = ldv_init_zalloc(3816UL);
  sdebug_driver_template_group1 = (struct Scsi_Host *)tmp___0;
  sdebug_driver_template_group2 = ldv_malloc(sizeof(struct scsi_device));
  return;
}
}
void ldv_initialize_driver_attribute_28(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_opts_group0 = (struct device_driver *)tmp;
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
void ldv_initialize_bus_type_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  pseudo_lld_bus_group0 = (struct device *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_27(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_ptype_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_14(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_add_host_group0 = (struct device_driver *)tmp;
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
void ldv_initialize_driver_attribute_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_strict_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_13(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_vpd_use_hostno_group0 = (struct device_driver *)tmp;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device_driver *ldvarg0 ;
  void *tmp___0 ;
  char *ldvarg3 ;
  void *tmp___1 ;
  struct device_driver *ldvarg2 ;
  void *tmp___2 ;
  struct device_driver *ldvarg4 ;
  void *tmp___3 ;
  char *ldvarg5 ;
  void *tmp___4 ;
  char *ldvarg8 ;
  void *tmp___5 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___6 ;
  char *ldvarg10 ;
  void *tmp___7 ;
  struct device_driver *ldvarg9 ;
  void *tmp___8 ;
  struct device_driver *ldvarg11 ;
  void *tmp___9 ;
  char *ldvarg13 ;
  void *tmp___10 ;
  struct device_driver *ldvarg12 ;
  void *tmp___11 ;
  char *ldvarg14 ;
  void *tmp___12 ;
  char *ldvarg16 ;
  void *tmp___13 ;
  size_t ldvarg15 ;
  size_t ldvarg18 ;
  char *ldvarg17 ;
  void *tmp___14 ;
  char *ldvarg19 ;
  void *tmp___15 ;
  size_t ldvarg21 ;
  char *ldvarg20 ;
  void *tmp___16 ;
  char *ldvarg22 ;
  void *tmp___17 ;
  char *ldvarg24 ;
  void *tmp___18 ;
  struct device_driver *ldvarg23 ;
  void *tmp___19 ;
  char *ldvarg27 ;
  void *tmp___20 ;
  size_t ldvarg26 ;
  char *ldvarg25 ;
  void *tmp___21 ;
  size_t ldvarg29 ;
  char *ldvarg28 ;
  void *tmp___22 ;
  char *ldvarg30 ;
  void *tmp___23 ;
  size_t ldvarg32 ;
  char *ldvarg31 ;
  void *tmp___24 ;
  char *ldvarg33 ;
  void *tmp___25 ;
  size_t ldvarg35 ;
  char *ldvarg36 ;
  void *tmp___26 ;
  char *ldvarg34 ;
  void *tmp___27 ;
  char *ldvarg39 ;
  void *tmp___28 ;
  char *ldvarg37 ;
  void *tmp___29 ;
  size_t ldvarg38 ;
  size_t ldvarg41 ;
  char *ldvarg42 ;
  void *tmp___30 ;
  char *ldvarg40 ;
  void *tmp___31 ;
  struct seq_file *ldvarg48 ;
  void *tmp___32 ;
  int ldvarg45 ;
  void *ldvarg43 ;
  void *tmp___33 ;
  int ldvarg44 ;
  int ldvarg47 ;
  char *ldvarg46 ;
  void *tmp___34 ;
  struct device_driver *ldvarg49 ;
  void *tmp___35 ;
  char *ldvarg50 ;
  void *tmp___36 ;
  struct device_driver *ldvarg51 ;
  void *tmp___37 ;
  char *ldvarg52 ;
  void *tmp___38 ;
  size_t ldvarg54 ;
  char *ldvarg53 ;
  void *tmp___39 ;
  char *ldvarg55 ;
  void *tmp___40 ;
  size_t ldvarg57 ;
  char *ldvarg58 ;
  void *tmp___41 ;
  char *ldvarg56 ;
  void *tmp___42 ;
  char *ldvarg61 ;
  void *tmp___43 ;
  size_t ldvarg60 ;
  char *ldvarg59 ;
  void *tmp___44 ;
  char *ldvarg63 ;
  void *tmp___45 ;
  struct device_driver *ldvarg62 ;
  void *tmp___46 ;
  size_t ldvarg65 ;
  char *ldvarg66 ;
  void *tmp___47 ;
  char *ldvarg64 ;
  void *tmp___48 ;
  char *ldvarg67 ;
  void *tmp___49 ;
  size_t ldvarg68 ;
  char *ldvarg69 ;
  void *tmp___50 ;
  char *ldvarg70 ;
  void *tmp___51 ;
  size_t ldvarg71 ;
  char *ldvarg72 ;
  void *tmp___52 ;
  struct device_driver *ldvarg73 ;
  void *tmp___53 ;
  char *ldvarg74 ;
  void *tmp___54 ;
  char *ldvarg77 ;
  void *tmp___55 ;
  size_t ldvarg76 ;
  char *ldvarg75 ;
  void *tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  int tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  int tmp___70 ;
  int tmp___71 ;
  int tmp___72 ;
  int tmp___73 ;
  int tmp___74 ;
  int tmp___75 ;
  int tmp___76 ;
  int tmp___77 ;
  int tmp___78 ;
  int tmp___79 ;
  int tmp___80 ;
  int tmp___81 ;
  int tmp___82 ;
  int tmp___83 ;
  int tmp___84 ;
  int tmp___85 ;
  int tmp___86 ;
  int tmp___87 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(120UL);
  ldvarg0 = (struct device_driver *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(120UL);
  ldvarg2 = (struct device_driver *)tmp___2;
  tmp___3 = ldv_init_zalloc(120UL);
  ldvarg4 = (struct device_driver *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(120UL);
  ldvarg9 = (struct device_driver *)tmp___8;
  tmp___9 = ldv_init_zalloc(120UL);
  ldvarg11 = (struct device_driver *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___10;
  tmp___11 = ldv_init_zalloc(120UL);
  ldvarg12 = (struct device_driver *)tmp___11;
  tmp___12 = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg16 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg22 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(120UL);
  ldvarg23 = (struct device_driver *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg25 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg28 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg31 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg37 = (char *)tmp___29;
  tmp___30 = ldv_init_zalloc(1UL);
  ldvarg42 = (char *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg40 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(256UL);
  ldvarg48 = (struct seq_file *)tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg43 = tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___34;
  tmp___35 = ldv_init_zalloc(120UL);
  ldvarg49 = (struct device_driver *)tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___36;
  tmp___37 = ldv_init_zalloc(120UL);
  ldvarg51 = (struct device_driver *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg52 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg55 = (char *)tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg58 = (char *)tmp___41;
  tmp___42 = ldv_init_zalloc(1UL);
  ldvarg56 = (char *)tmp___42;
  tmp___43 = ldv_init_zalloc(1UL);
  ldvarg61 = (char *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(1UL);
  ldvarg63 = (char *)tmp___45;
  tmp___46 = ldv_init_zalloc(120UL);
  ldvarg62 = (struct device_driver *)tmp___46;
  tmp___47 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___47;
  tmp___48 = ldv_init_zalloc(1UL);
  ldvarg64 = (char *)tmp___48;
  tmp___49 = ldv_init_zalloc(1UL);
  ldvarg67 = (char *)tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg69 = (char *)tmp___50;
  tmp___51 = ldv_init_zalloc(1UL);
  ldvarg70 = (char *)tmp___51;
  tmp___52 = ldv_init_zalloc(1UL);
  ldvarg72 = (char *)tmp___52;
  tmp___53 = ldv_init_zalloc(120UL);
  ldvarg73 = (struct device_driver *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg74 = (char *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg77 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(1UL);
  ldvarg75 = (char *)tmp___56;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg15), 0, 8UL);
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  ldv_memset((void *)(& ldvarg21), 0, 8UL);
  ldv_memset((void *)(& ldvarg26), 0, 8UL);
  ldv_memset((void *)(& ldvarg29), 0, 8UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  ldv_memset((void *)(& ldvarg35), 0, 8UL);
  ldv_memset((void *)(& ldvarg38), 0, 8UL);
  ldv_memset((void *)(& ldvarg41), 0, 8UL);
  ldv_memset((void *)(& ldvarg45), 0, 4UL);
  ldv_memset((void *)(& ldvarg44), 0, 4UL);
  ldv_memset((void *)(& ldvarg47), 0, 4UL);
  ldv_memset((void *)(& ldvarg54), 0, 8UL);
  ldv_memset((void *)(& ldvarg57), 0, 8UL);
  ldv_memset((void *)(& ldvarg60), 0, 8UL);
  ldv_memset((void *)(& ldvarg65), 0, 8UL);
  ldv_memset((void *)(& ldvarg68), 0, 8UL);
  ldv_memset((void *)(& ldvarg71), 0, 8UL);
  ldv_memset((void *)(& ldvarg76), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_30 = 0;
  ldv_state_variable_23 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_38845:
  tmp___57 = __VERIFIER_nondet_int();
  switch (tmp___57) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      dix_show(ldvarg0, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_38688;
    default:
    ldv_stop();
    }
    ldv_38688: ;
  } else {
  }
  goto ldv_38690;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___59 = __VERIFIER_nondet_int();
    switch (tmp___59) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      num_parts_show(ldvarg2, ldvarg3);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_38693;
    default:
    ldv_stop();
    }
    ldv_38693: ;
  } else {
  }
  goto ldv_38690;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___60 = __VERIFIER_nondet_int();
    switch (tmp___60) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      map_show(ldvarg4, ldvarg5);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38697;
    default:
    ldv_stop();
    }
    ldv_38697: ;
  } else {
  }
  goto ldv_38690;
  case 3: ;
  if (ldv_state_variable_26 != 0) {
    tmp___61 = __VERIFIER_nondet_int();
    switch (tmp___61) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      dsense_store(driver_attr_dsense_group0, (char const *)ldvarg8, ldvarg7);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_38701;
    case 1: ;
    if (ldv_state_variable_26 == 1) {
      dsense_show(driver_attr_dsense_group0, ldvarg6);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_38701;
    default:
    ldv_stop();
    }
    ldv_38701: ;
  } else {
  }
  goto ldv_38690;
  case 4: ;
  if (ldv_state_variable_17 != 0) {
    tmp___62 = __VERIFIER_nondet_int();
    switch (tmp___62) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      no_uld_show(ldvarg9, ldvarg10);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_38706;
    default:
    ldv_stop();
    }
    ldv_38706: ;
  } else {
  }
  goto ldv_38690;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    tmp___63 = __VERIFIER_nondet_int();
    switch (tmp___63) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_0 = sdebug_driver_probe(pseudo_lld_bus_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38710;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      pseudo_lld_bus_match(pseudo_lld_bus_group0, ldvarg11);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      pseudo_lld_bus_match(pseudo_lld_bus_group0, ldvarg11);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_38710;
    case 2: ;
    if (ldv_state_variable_2 == 2) {
      sdebug_driver_remove(pseudo_lld_bus_group0);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38710;
    default:
    ldv_stop();
    }
    ldv_38710: ;
  } else {
  }
  goto ldv_38690;
  case 6: ;
  if (ldv_state_variable_22 != 0) {
    tmp___64 = __VERIFIER_nondet_int();
    switch (tmp___64) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      dev_size_mb_show(ldvarg12, ldvarg13);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_38716;
    default:
    ldv_stop();
    }
    ldv_38716: ;
  } else {
  }
  goto ldv_38690;
  case 7: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1(ldv_timer_list_1);
  } else {
  }
  goto ldv_38690;
  case 8: ;
  if (ldv_state_variable_18 != 0) {
    tmp___65 = __VERIFIER_nondet_int();
    switch (tmp___65) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      max_queue_store(driver_attr_max_queue_group0, (char const *)ldvarg16, ldvarg15);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_38721;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      max_queue_show(driver_attr_max_queue_group0, ldvarg14);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_38721;
    default:
    ldv_stop();
    }
    ldv_38721: ;
  } else {
  }
  goto ldv_38690;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___66 = __VERIFIER_nondet_int();
    switch (tmp___66) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      scsi_debug_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_38727;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = scsi_debug_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_driver_attribute_5();
        ldv_state_variable_10 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_driver_attribute_19();
        ldv_state_variable_24 = 1;
        ldv_initialize_driver_attribute_24();
        ldv_state_variable_4 = 1;
        ldv_initialize_driver_attribute_4();
        ldv_state_variable_8 = 1;
        ldv_state_variable_15 = 1;
        ldv_initialize_driver_attribute_15();
        ldv_state_variable_14 = 1;
        ldv_initialize_driver_attribute_14();
        ldv_state_variable_20 = 1;
        ldv_initialize_driver_attribute_20();
        ldv_state_variable_12 = 1;
        ldv_state_variable_9 = 1;
        ldv_state_variable_28 = 1;
        ldv_initialize_driver_attribute_28();
        ldv_state_variable_6 = 1;
        ldv_initialize_driver_attribute_6();
        ldv_state_variable_25 = 1;
        ldv_initialize_driver_attribute_25();
        ldv_state_variable_27 = 1;
        ldv_initialize_driver_attribute_27();
        ldv_state_variable_29 = 1;
        ldv_initialize_driver_attribute_29();
        ldv_state_variable_13 = 1;
        ldv_initialize_driver_attribute_13();
        ldv_state_variable_16 = 1;
        ldv_state_variable_23 = 1;
        ldv_initialize_driver_attribute_23();
        ldv_state_variable_30 = 1;
        ldv_initialize_driver_attribute_30();
        ldv_state_variable_18 = 1;
        ldv_initialize_driver_attribute_18();
        ldv_state_variable_22 = 1;
        ldv_state_variable_2 = 1;
        ldv_initialize_bus_type_2();
        ldv_state_variable_17 = 1;
        ldv_state_variable_26 = 1;
        ldv_initialize_driver_attribute_26();
        ldv_state_variable_7 = 1;
        ldv_state_variable_21 = 1;
        ldv_state_variable_11 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_38727;
    default:
    ldv_stop();
    }
    ldv_38727: ;
  } else {
  }
  goto ldv_38690;
  case 10: ;
  if (ldv_state_variable_30 != 0) {
    tmp___67 = __VERIFIER_nondet_int();
    switch (tmp___67) {
    case 0: ;
    if (ldv_state_variable_30 == 1) {
      delay_store(driver_attr_delay_group0, (char const *)ldvarg19, ldvarg18);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_38732;
    case 1: ;
    if (ldv_state_variable_30 == 1) {
      delay_show(driver_attr_delay_group0, ldvarg17);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_38732;
    default:
    ldv_stop();
    }
    ldv_38732: ;
  } else {
  }
  goto ldv_38690;
  case 11: ;
  if (ldv_state_variable_23 != 0) {
    tmp___68 = __VERIFIER_nondet_int();
    switch (tmp___68) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      num_tgts_store(driver_attr_num_tgts_group0, (char const *)ldvarg22, ldvarg21);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38737;
    case 1: ;
    if (ldv_state_variable_23 == 1) {
      num_tgts_show(driver_attr_num_tgts_group0, ldvarg20);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38737;
    default:
    ldv_stop();
    }
    ldv_38737: ;
  } else {
  }
  goto ldv_38690;
  case 12: ;
  if (ldv_state_variable_16 != 0) {
    tmp___69 = __VERIFIER_nondet_int();
    switch (tmp___69) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      scsi_level_show(ldvarg23, ldvarg24);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_38742;
    default:
    ldv_stop();
    }
    ldv_38742: ;
  } else {
  }
  goto ldv_38690;
  case 13: ;
  if (ldv_state_variable_13 != 0) {
    tmp___70 = __VERIFIER_nondet_int();
    switch (tmp___70) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      vpd_use_hostno_store(driver_attr_vpd_use_hostno_group0, (char const *)ldvarg27,
                           ldvarg26);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_38746;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      vpd_use_hostno_show(driver_attr_vpd_use_hostno_group0, ldvarg25);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_38746;
    default:
    ldv_stop();
    }
    ldv_38746: ;
  } else {
  }
  goto ldv_38690;
  case 14: ;
  if (ldv_state_variable_29 != 0) {
    tmp___71 = __VERIFIER_nondet_int();
    switch (tmp___71) {
    case 0: ;
    if (ldv_state_variable_29 == 1) {
      ndelay_store(driver_attr_ndelay_group0, (char const *)ldvarg30, ldvarg29);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_38751;
    case 1: ;
    if (ldv_state_variable_29 == 1) {
      ndelay_show(driver_attr_ndelay_group0, ldvarg28);
      ldv_state_variable_29 = 1;
    } else {
    }
    goto ldv_38751;
    default:
    ldv_stop();
    }
    ldv_38751: ;
  } else {
  }
  goto ldv_38690;
  case 15: ;
  if (ldv_state_variable_27 != 0) {
    tmp___72 = __VERIFIER_nondet_int();
    switch (tmp___72) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      ptype_store(driver_attr_ptype_group0, (char const *)ldvarg33, ldvarg32);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_38756;
    case 1: ;
    if (ldv_state_variable_27 == 1) {
      ptype_show(driver_attr_ptype_group0, ldvarg31);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_38756;
    default:
    ldv_stop();
    }
    ldv_38756: ;
  } else {
  }
  goto ldv_38690;
  case 16: ;
  if (ldv_state_variable_25 != 0) {
    tmp___73 = __VERIFIER_nondet_int();
    switch (tmp___73) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      fake_rw_store(driver_attr_fake_rw_group0, (char const *)ldvarg36, ldvarg35);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_38761;
    case 1: ;
    if (ldv_state_variable_25 == 1) {
      fake_rw_show(driver_attr_fake_rw_group0, ldvarg34);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_38761;
    default:
    ldv_stop();
    }
    ldv_38761: ;
  } else {
  }
  goto ldv_38690;
  case 17: ;
  if (ldv_state_variable_6 != 0) {
    tmp___74 = __VERIFIER_nondet_int();
    switch (tmp___74) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      removable_store(driver_attr_removable_group0, (char const *)ldvarg39, ldvarg38);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_38766;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      removable_show(driver_attr_removable_group0, ldvarg37);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_38766;
    default:
    ldv_stop();
    }
    ldv_38766: ;
  } else {
  }
  goto ldv_38690;
  case 18: ;
  if (ldv_state_variable_28 != 0) {
    tmp___75 = __VERIFIER_nondet_int();
    switch (tmp___75) {
    case 0: ;
    if (ldv_state_variable_28 == 1) {
      opts_store(driver_attr_opts_group0, (char const *)ldvarg42, ldvarg41);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_38771;
    case 1: ;
    if (ldv_state_variable_28 == 1) {
      opts_show(driver_attr_opts_group0, ldvarg40);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_38771;
    default:
    ldv_stop();
    }
    ldv_38771: ;
  } else {
  }
  goto ldv_38690;
  case 19: ;
  if (ldv_state_variable_3 != 0) {
    tmp___76 = __VERIFIER_nondet_int();
    switch (tmp___76) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_show_info(ldvarg48, sdebug_driver_template_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_show_info(ldvarg48, sdebug_driver_template_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 1: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_slave_configure(sdebug_driver_template_group2);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_slave_configure(sdebug_driver_template_group2);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      sdebug_change_qdepth(sdebug_driver_template_group2, ldvarg47);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      sdebug_change_qdepth(sdebug_driver_template_group2, ldvarg47);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      sdebug_queuecommand_lock_or_not(sdebug_driver_template_group1, sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      sdebug_queuecommand_lock_or_not(sdebug_driver_template_group1, sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 4: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_target_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_target_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 5: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_device_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_device_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 6: ;
    if (ldv_state_variable_3 == 2) {
      scsi_debug_write_info(sdebug_driver_template_group1, ldvarg46, ldvarg45);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 7: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_abort(sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_abort(sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 8: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_slave_alloc(sdebug_driver_template_group2);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_slave_alloc(sdebug_driver_template_group2);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 9: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_ioctl(sdebug_driver_template_group2, ldvarg44, ldvarg43);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_ioctl(sdebug_driver_template_group2, ldvarg44, ldvarg43);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 10: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_slave_destroy(sdebug_driver_template_group2);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_slave_destroy(sdebug_driver_template_group2);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 11: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_bus_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_bus_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 12: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_host_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_host_reset(sdebug_driver_template_group0);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 13: ;
    if (ldv_state_variable_3 == 1) {
      scsi_debug_info(sdebug_driver_template_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      scsi_debug_info(sdebug_driver_template_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_38776;
    case 14: ;
    if (ldv_state_variable_3 == 2) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38776;
    case 15: ;
    if (ldv_state_variable_3 == 1) {
      ldv_probe_3();
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_38776;
    default:
    ldv_stop();
    }
    ldv_38776: ;
  } else {
  }
  goto ldv_38690;
  case 20: ;
  if (ldv_state_variable_9 != 0) {
    tmp___77 = __VERIFIER_nondet_int();
    switch (tmp___77) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      guard_show(ldvarg49, ldvarg50);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_38795;
    default:
    ldv_stop();
    }
    ldv_38795: ;
  } else {
  }
  goto ldv_38690;
  case 21: ;
  if (ldv_state_variable_12 != 0) {
    tmp___78 = __VERIFIER_nondet_int();
    switch (tmp___78) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      sector_size_show(ldvarg51, ldvarg52);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_38799;
    default:
    ldv_stop();
    }
    ldv_38799: ;
  } else {
  }
  goto ldv_38690;
  case 22: ;
  if (ldv_state_variable_20 != 0) {
    tmp___79 = __VERIFIER_nondet_int();
    switch (tmp___79) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      every_nth_store(driver_attr_every_nth_group0, (char const *)ldvarg55, ldvarg54);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_38803;
    case 1: ;
    if (ldv_state_variable_20 == 1) {
      every_nth_show(driver_attr_every_nth_group0, ldvarg53);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_38803;
    default:
    ldv_stop();
    }
    ldv_38803: ;
  } else {
  }
  goto ldv_38690;
  case 23: ;
  if (ldv_state_variable_14 != 0) {
    tmp___80 = __VERIFIER_nondet_int();
    switch (tmp___80) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      add_host_store(driver_attr_add_host_group0, (char const *)ldvarg58, ldvarg57);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_38808;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      add_host_show(driver_attr_add_host_group0, ldvarg56);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_38808;
    default:
    ldv_stop();
    }
    ldv_38808: ;
  } else {
  }
  goto ldv_38690;
  case 24: ;
  if (ldv_state_variable_15 != 0) {
    tmp___81 = __VERIFIER_nondet_int();
    switch (tmp___81) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      virtual_gb_store(driver_attr_virtual_gb_group0, (char const *)ldvarg61, ldvarg60);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_38813;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      virtual_gb_show(driver_attr_virtual_gb_group0, ldvarg59);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_38813;
    default:
    ldv_stop();
    }
    ldv_38813: ;
  } else {
  }
  goto ldv_38690;
  case 25: ;
  if (ldv_state_variable_8 != 0) {
    tmp___82 = __VERIFIER_nondet_int();
    switch (tmp___82) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      ato_show(ldvarg62, ldvarg63);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_38818;
    default:
    ldv_stop();
    }
    ldv_38818: ;
  } else {
  }
  goto ldv_38690;
  case 26: ;
  if (ldv_state_variable_4 != 0) {
    tmp___83 = __VERIFIER_nondet_int();
    switch (tmp___83) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      strict_store(driver_attr_strict_group0, (char const *)ldvarg66, ldvarg65);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38822;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      strict_show(driver_attr_strict_group0, ldvarg64);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38822;
    default:
    ldv_stop();
    }
    ldv_38822: ;
  } else {
  }
  goto ldv_38690;
  case 27: ;
  if (ldv_state_variable_24 != 0) {
    tmp___84 = __VERIFIER_nondet_int();
    switch (tmp___84) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      no_lun_0_store(driver_attr_no_lun_0_group0, (char const *)ldvarg69, ldvarg68);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_38827;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      no_lun_0_show(driver_attr_no_lun_0_group0, ldvarg67);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_38827;
    default:
    ldv_stop();
    }
    ldv_38827: ;
  } else {
  }
  goto ldv_38690;
  case 28: ;
  if (ldv_state_variable_19 != 0) {
    tmp___85 = __VERIFIER_nondet_int();
    switch (tmp___85) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      max_luns_store(driver_attr_max_luns_group0, (char const *)ldvarg72, ldvarg71);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_38832;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      max_luns_show(driver_attr_max_luns_group0, ldvarg70);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_38832;
    default:
    ldv_stop();
    }
    ldv_38832: ;
  } else {
  }
  goto ldv_38690;
  case 29: ;
  if (ldv_state_variable_10 != 0) {
    tmp___86 = __VERIFIER_nondet_int();
    switch (tmp___86) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      dif_show(ldvarg73, ldvarg74);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_38837;
    default:
    ldv_stop();
    }
    ldv_38837: ;
  } else {
  }
  goto ldv_38690;
  case 30: ;
  if (ldv_state_variable_5 != 0) {
    tmp___87 = __VERIFIER_nondet_int();
    switch (tmp___87) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      host_lock_store(driver_attr_host_lock_group0, (char const *)ldvarg77, ldvarg76);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_38841;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      host_lock_show(driver_attr_host_lock_group0, ldvarg75);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_38841;
    default:
    ldv_stop();
    }
    ldv_38841: ;
  } else {
  }
  goto ldv_38690;
  default:
  ldv_stop();
  }
  ldv_38690: ;
  goto ldv_38845;
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
int ldv_scsi_add_host_with_dma_24(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_3 = 1;
    ldv_initialize_scsi_host_template_3();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 )
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
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void *ldv_vmalloc_27(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
void *ldv_vmalloc_28(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
void *ldv_vmalloc_29(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
void *ldv_vmalloc_30(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
struct Scsi_Host *ldv_scsi_host_alloc_31(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___5 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___5 )0)) {
    ldv_state_variable_3 = 1;
    ldv_initialize_scsi_host_template_3();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_scsi_remove_host_32(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
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
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
struct device *__root_device_register(const char *arg0, struct module *arg1) {
  return ldv_malloc(sizeof(struct device));
}
void __tasklet_hi_schedule(struct tasklet_struct *arg0) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_read_lock_irqsave(rwlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_read_unlock_irqrestore(rwlock_t *arg0, unsigned long arg1) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_write_lock_irqsave(rwlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_write_unlock_irqrestore(rwlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void blk_queue_max_segment_size(struct request_queue *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int bus_register(struct bus_type *arg0) {
  return __VERIFIER_nondet_int();
}
void bus_unregister(struct bus_type *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned short __VERIFIER_nondet_ushort(void);
__u16 crc_t10dif(const unsigned char *arg0, size_t arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_register(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_unregister(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_last_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_zero_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int hrtimer_cancel(struct hrtimer *arg0) {
  return __VERIFIER_nondet_int();
}
void hrtimer_init(struct hrtimer *arg0, clockid_t arg1, enum hrtimer_mode arg2) {
  return;
}
void hrtimer_start_range_ns(struct hrtimer *arg0, ktime_t arg1, unsigned long arg2, const enum hrtimer_mode arg3) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 ip_compute_csum(const void *arg0, int arg1) {
  return __VERIFIER_nondet_ushort();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void root_device_unregister(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_build_sense_buffer(int arg0, u8 *arg1, u8 arg2, u8 arg3, u8 arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3, off_t arg4, bool arg5) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_from_buffer(struct scatterlist *arg0, unsigned int arg1, const void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_to_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool sg_miter_next(struct sg_mapping_iter *arg0) {
  return __VERIFIER_nondet_bool();
}
void sg_miter_start(struct sg_mapping_iter *arg0, struct scatterlist *arg1, unsigned int arg2, unsigned int arg3) {
  return;
}
void sg_miter_stop(struct sg_mapping_iter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int strncasecmp(const char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
