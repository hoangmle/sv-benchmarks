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
typedef __u16 uint16_t;
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
enum adf_cfg_val_type {
    ADF_DEC = 0,
    ADF_HEX = 1,
    ADF_STR = 2
} ;
enum adf_device_type {
    DEV_UNKNOWN = 0,
    DEV_DH895XCC = 1
} ;
struct adf_bar {
   resource_size_t base_addr ;
   void *virt_addr ;
   resource_size_t size ;
};
struct msix_entry;
struct adf_accel_msix {
   struct msix_entry *entries ;
   char **names ;
};
struct adf_accel_pci {
   struct pci_dev *pci_dev ;
   struct adf_accel_msix msix_entries ;
   struct adf_bar pci_bars[3U] ;
   uint8_t revid ;
   uint8_t sku ;
};
enum dev_sku_info {
    DEV_SKU_1 = 0,
    DEV_SKU_2 = 1,
    DEV_SKU_3 = 2,
    DEV_SKU_4 = 3,
    DEV_SKU_UNKNOWN = 4
} ;
struct adf_hw_device_class {
   char const *name ;
   enum adf_device_type const type ;
   uint32_t instances ;
};
struct adf_cfg_device_data;
struct adf_accel_dev;
struct adf_etr_data;
struct adf_etr_ring_data;
struct adf_hw_device_data {
   struct adf_hw_device_class *dev_class ;
   uint32_t (*get_accel_mask)(uint32_t ) ;
   uint32_t (*get_ae_mask)(uint32_t ) ;
   uint32_t (*get_misc_bar_id)(struct adf_hw_device_data * ) ;
   uint32_t (*get_etr_bar_id)(struct adf_hw_device_data * ) ;
   uint32_t (*get_num_aes)(struct adf_hw_device_data * ) ;
   uint32_t (*get_num_accels)(struct adf_hw_device_data * ) ;
   enum dev_sku_info (*get_sku)(struct adf_hw_device_data * ) ;
   void (*hw_arb_ring_enable)(struct adf_etr_ring_data * ) ;
   void (*hw_arb_ring_disable)(struct adf_etr_ring_data * ) ;
   int (*alloc_irq)(struct adf_accel_dev * ) ;
   void (*free_irq)(struct adf_accel_dev * ) ;
   void (*enable_error_correction)(struct adf_accel_dev * ) ;
   int (*init_admin_comms)(struct adf_accel_dev * ) ;
   void (*exit_admin_comms)(struct adf_accel_dev * ) ;
   int (*init_arb)(struct adf_accel_dev * ) ;
   void (*exit_arb)(struct adf_accel_dev * ) ;
   void (*enable_ints)(struct adf_accel_dev * ) ;
   char const *fw_name ;
   uint32_t pci_dev_id ;
   uint32_t fuses ;
   uint32_t accel_capabilities_mask ;
   uint16_t accel_mask ;
   uint16_t ae_mask ;
   uint16_t tx_rings_mask ;
   uint8_t tx_rx_gap ;
   uint8_t instance_id ;
   uint8_t num_banks ;
   uint8_t num_accel ;
   uint8_t num_logical_accel ;
   uint8_t num_engines ;
};
struct adf_admin_comms;
struct icp_qat_fw_loader_handle;
struct firmware;
struct adf_fw_loader_data {
   struct icp_qat_fw_loader_handle *fw_loader ;
   struct firmware const *uof_fw ;
};
struct adf_accel_dev {
   struct adf_etr_data *transport ;
   struct adf_hw_device_data *hw_device ;
   struct adf_cfg_device_data *cfg ;
   struct adf_fw_loader_data *fw_loader ;
   struct adf_admin_comms *admin ;
   struct list_head crypto_list ;
   unsigned long status ;
   atomic_t ref_count ;
   struct dentry *debugfs_dir ;
   struct list_head list ;
   struct module *owner ;
   struct adf_accel_pci accel_pci_dev ;
   uint8_t accel_id ;
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
struct adf_cfg_key_val {
   char key[64U] ;
   char val[64U] ;
   enum adf_cfg_val_type type ;
   struct list_head list ;
};
struct adf_cfg_section {
   char name[64U] ;
   struct list_head list ;
   struct list_head param_head ;
};
struct adf_cfg_device_data {
   struct list_head sec_list ;
   struct dentry *debug ;
   struct rw_semaphore lock ;
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
struct icp_qat_fw_loader_ae_data {
   unsigned int state ;
   unsigned int ustore_size ;
   unsigned int free_addr ;
   unsigned int free_size ;
   unsigned int live_ctx_mask ;
};
struct icp_qat_fw_loader_hal_handle {
   struct icp_qat_fw_loader_ae_data aes[12U] ;
   unsigned int ae_mask ;
   unsigned int slice_mask ;
   unsigned int revision_id ;
   unsigned int ae_max_num ;
   unsigned int upc_mask ;
   unsigned int max_ustore ;
};
struct icp_qat_fw_loader_handle {
   struct icp_qat_fw_loader_hal_handle *hal_handle ;
   void *obj_handle ;
   void *hal_sram_addr_v ;
   void *hal_cap_g_ctl_csr_addr_v ;
   void *hal_cap_ae_xfer_csr_addr_v ;
   void *hal_cap_ae_local_csr_addr_v ;
   void *hal_ep_csr_addr_v ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef __u64 uint64_t;
enum hrtimer_restart;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct adf_dev_status_info {
   enum adf_device_type type ;
   uint8_t accel_id ;
   uint8_t instance_id ;
   uint8_t num_ae ;
   uint8_t num_accel ;
   uint8_t num_logical_accel ;
   uint8_t banks_per_accel ;
   uint8_t state ;
   uint8_t bus ;
   uint8_t dev ;
   uint8_t fun ;
   char name[32U] ;
};
union __anonunion____missing_field_name_247 {
   struct adf_user_cfg_key_val *next ;
   uint64_t padding3 ;
};
struct adf_user_cfg_key_val {
   char key[64U] ;
   char val[64U] ;
   union __anonunion____missing_field_name_247 __annonCompField70 ;
   enum adf_cfg_val_type type ;
};
union __anonunion____missing_field_name_248 {
   struct adf_user_cfg_key_val *params ;
   uint64_t padding1 ;
};
union __anonunion____missing_field_name_249 {
   struct adf_user_cfg_section *next ;
   uint64_t padding3 ;
};
struct adf_user_cfg_section {
   char name[64U] ;
   union __anonunion____missing_field_name_248 __annonCompField71 ;
   union __anonunion____missing_field_name_249 __annonCompField72 ;
};
union __anonunion____missing_field_name_250 {
   struct adf_user_cfg_section *config_section ;
   uint64_t padding ;
};
struct adf_user_cfg_ctl_data {
   union __anonunion____missing_field_name_250 __annonCompField73 ;
   uint8_t device_id ;
};
struct adf_ctl_drv_info {
   unsigned int major ;
   struct cdev drv_cdev ;
   struct class *drv_class ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum adf_event {
    ADF_EVENT_INIT = 0,
    ADF_EVENT_START = 1,
    ADF_EVENT_STOP = 2,
    ADF_EVENT_SHUTDOWN = 3,
    ADF_EVENT_RESTARTING = 4,
    ADF_EVENT_RESTARTED = 5
} ;
struct service_hndl {
   int (*event_hld)(struct adf_accel_dev * , enum adf_event ) ;
   unsigned long init_status ;
   unsigned long start_status ;
   char *name ;
   struct list_head list ;
   int admin ;
};
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum hrtimer_restart;
enum adf_dev_reset_mode {
    ADF_DEV_RESET_ASYNC = 0,
    ADF_DEV_RESET_SYNC = 1
} ;
struct adf_reset_dev_data {
   int mode ;
   struct adf_accel_dev *accel_dev ;
   struct completion compl ;
   struct work_struct reset_work ;
};
enum hrtimer_restart;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct adf_etr_ring_debug_entry {
   char ring_name[64U] ;
   struct dentry *debug ;
};
struct adf_etr_bank_data;
struct adf_etr_ring_data {
   void *base_addr ;
   atomic_t *inflights ;
   spinlock_t lock ;
   void (*callback)(void * ) ;
   struct adf_etr_bank_data *bank ;
   dma_addr_t dma_addr ;
   uint16_t head ;
   uint16_t tail ;
   uint8_t ring_number ;
   uint8_t ring_size ;
   uint8_t msg_size ;
   uint8_t reserved ;
   struct adf_etr_ring_debug_entry *ring_debug ;
};
struct adf_etr_bank_data {
   struct adf_etr_ring_data rings[16U] ;
   struct tasklet_struct resp_handler ;
   void *csr_addr ;
   struct adf_accel_dev *accel_dev ;
   uint32_t irq_coalesc_timer ;
   uint16_t ring_mask ;
   uint16_t irq_mask ;
   spinlock_t lock ;
   struct dentry *bank_debug_dir ;
   struct dentry *bank_debug_cfg ;
   uint32_t bank_number ;
};
struct adf_etr_data {
   struct adf_etr_bank_data *banks ;
   struct dentry *debug ;
};
enum hrtimer_restart;
struct qat_crypto_instance;
struct qat_crypto_instance {
   struct adf_etr_ring_data *sym_tx ;
   struct adf_etr_ring_data *sym_rx ;
   struct adf_etr_ring_data *pke_tx ;
   struct adf_etr_ring_data *pke_rx ;
   struct adf_etr_ring_data *rnd_tx ;
   struct adf_etr_ring_data *rnd_rx ;
   struct adf_accel_dev *accel_dev ;
   struct list_head list ;
   unsigned long state ;
   int id ;
   atomic_t refctr ;
};
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
typedef __u32 __wsum;
struct tss_struct;
struct cpuinfo_x86;
struct net_device;
struct cpuinfo_x86 {
   __u8 x86 ;
   __u8 x86_vendor ;
   __u8 x86_model ;
   __u8 x86_mask ;
   int x86_tlbsize ;
   __u8 x86_virt_bits ;
   __u8 x86_phys_bits ;
   __u8 x86_coreid_bits ;
   __u32 extended_cpuid_level ;
   int cpuid_level ;
   __u32 x86_capability[14U] ;
   char x86_vendor_id[16U] ;
   char x86_model_id[64U] ;
   int x86_cache_size ;
   int x86_cache_alignment ;
   int x86_cache_max_rmid ;
   int x86_cache_occ_scale ;
   int x86_power ;
   unsigned long loops_per_jiffy ;
   u16 x86_max_cores ;
   u16 apicid ;
   u16 initial_apicid ;
   u16 x86_clflush_size ;
   u16 booted_cores ;
   u16 phys_proc_id ;
   u16 cpu_core_id ;
   u8 compute_unit_id ;
   u16 cpu_index ;
   u32 microcode ;
};
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long SYSENTER_stack[64U] ;
};
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
enum hrtimer_restart;
struct crypto_ablkcipher;
struct crypto_async_request;
struct crypto_aead;
struct crypto_blkcipher;
struct crypto_hash;
struct crypto_tfm;
struct crypto_type;
struct aead_request;
struct aead_givcrypt_request;
struct skcipher_givcrypt_request;
struct crypto_async_request {
   struct list_head list ;
   void (*complete)(struct crypto_async_request * , int ) ;
   void *data ;
   struct crypto_tfm *tfm ;
   u32 flags ;
};
struct ablkcipher_request {
   struct crypto_async_request base ;
   unsigned int nbytes ;
   void *info ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] ;
};
struct blkcipher_desc {
   struct crypto_blkcipher *tfm ;
   void *info ;
   u32 flags ;
};
struct hash_desc {
   struct crypto_hash *tfm ;
   u32 flags ;
};
struct ablkcipher_alg {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct old_aead_alg {
   int (*setkey)(struct crypto_aead * , u8 const * , unsigned int ) ;
   int (*setauthsize)(struct crypto_aead * , unsigned int ) ;
   int (*encrypt)(struct aead_request * ) ;
   int (*decrypt)(struct aead_request * ) ;
   int (*givencrypt)(struct aead_givcrypt_request * ) ;
   int (*givdecrypt)(struct aead_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int ivsize ;
   unsigned int maxauthsize ;
};
struct blkcipher_alg {
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct cipher_alg {
   unsigned int cia_min_keysize ;
   unsigned int cia_max_keysize ;
   int (*cia_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cia_encrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cia_decrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct compress_alg {
   int (*coa_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*coa_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
union __anonunion_cra_u_217 {
   struct ablkcipher_alg ablkcipher ;
   struct old_aead_alg aead ;
   struct blkcipher_alg blkcipher ;
   struct cipher_alg cipher ;
   struct compress_alg compress ;
};
struct crypto_alg {
   struct list_head cra_list ;
   struct list_head cra_users ;
   u32 cra_flags ;
   unsigned int cra_blocksize ;
   unsigned int cra_ctxsize ;
   unsigned int cra_alignmask ;
   int cra_priority ;
   atomic_t cra_refcnt ;
   char cra_name[64U] ;
   char cra_driver_name[64U] ;
   struct crypto_type const *cra_type ;
   union __anonunion_cra_u_217 cra_u ;
   int (*cra_init)(struct crypto_tfm * ) ;
   void (*cra_exit)(struct crypto_tfm * ) ;
   void (*cra_destroy)(struct crypto_alg * ) ;
   struct module *cra_module ;
};
struct ablkcipher_tfm {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   struct crypto_ablkcipher *base ;
   unsigned int ivsize ;
   unsigned int reqsize ;
};
struct blkcipher_tfm {
   void *iv ;
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
};
struct cipher_tfm {
   int (*cit_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cit_encrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cit_decrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct hash_tfm {
   int (*init)(struct hash_desc * ) ;
   int (*update)(struct hash_desc * , struct scatterlist * , unsigned int ) ;
   int (*final)(struct hash_desc * , u8 * ) ;
   int (*digest)(struct hash_desc * , struct scatterlist * , unsigned int , u8 * ) ;
   int (*setkey)(struct crypto_hash * , u8 const * , unsigned int ) ;
   unsigned int digestsize ;
};
struct compress_tfm {
   int (*cot_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*cot_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
union __anonunion_crt_u_218 {
   struct ablkcipher_tfm ablkcipher ;
   struct blkcipher_tfm blkcipher ;
   struct cipher_tfm cipher ;
   struct hash_tfm hash ;
   struct compress_tfm compress ;
};
struct crypto_tfm {
   u32 crt_flags ;
   union __anonunion_crt_u_218 crt_u ;
   void (*exit)(struct crypto_tfm * ) ;
   struct crypto_alg *__crt_alg ;
   void *__crt_ctx[] ;
};
struct crypto_ablkcipher {
   struct crypto_tfm base ;
};
struct crypto_blkcipher {
   struct crypto_tfm base ;
};
struct crypto_hash {
   struct crypto_tfm base ;
};
struct aead_request {
   struct crypto_async_request base ;
   bool old ;
   unsigned int assoclen ;
   unsigned int cryptlen ;
   u8 *iv ;
   struct scatterlist *assoc ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] ;
};
struct aead_givcrypt_request {
   u64 seq ;
   u8 *giv ;
   struct aead_request areq ;
};
struct crypto_aead {
   int (*setkey)(struct crypto_aead * , u8 const * , unsigned int ) ;
   int (*setauthsize)(struct crypto_aead * , unsigned int ) ;
   int (*encrypt)(struct aead_request * ) ;
   int (*decrypt)(struct aead_request * ) ;
   int (*givencrypt)(struct aead_givcrypt_request * ) ;
   int (*givdecrypt)(struct aead_givcrypt_request * ) ;
   struct crypto_aead *child ;
   unsigned int authsize ;
   unsigned int reqsize ;
   struct crypto_tfm base ;
};
struct in6_addr;
struct sk_buff;
union __anonunion_in6_u_220 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_220 in6_u ;
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
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_225 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_226___0 {
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
   union __anonunion____missing_field_name_225 __annonCompField62 ;
   union __anonunion____missing_field_name_226___0 __annonCompField63 ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_229 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_228 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_229 __annonCompField64 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_228 __annonCompField65 ;
};
union __anonunion____missing_field_name_232___0 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_231 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_232___0 __annonCompField66 ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField67 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_234 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_233 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_234 __annonCompField69 ;
};
union __anonunion____missing_field_name_235___0 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_236___0 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_237___0 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_230 __annonCompField68 ;
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
   union __anonunion____missing_field_name_233 __annonCompField70 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_235___0 __annonCompField71 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_236___0 __annonCompField72 ;
   union __anonunion____missing_field_name_237___0 __annonCompField73 ;
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
struct crypto_type {
   unsigned int (*ctxsize)(struct crypto_alg * , u32 , u32 ) ;
   unsigned int (*extsize)(struct crypto_alg * ) ;
   int (*init)(struct crypto_tfm * , u32 , u32 ) ;
   int (*init_tfm)(struct crypto_tfm * ) ;
   void (*show)(struct seq_file * , struct crypto_alg * ) ;
   int (*report)(struct sk_buff * , struct crypto_alg * ) ;
   struct crypto_alg *(*lookup)(char const * , u32 , u32 ) ;
   unsigned int type ;
   unsigned int maskclear ;
   unsigned int maskset ;
   unsigned int tfmsize ;
};
struct sha1_state {
   u32 state[5U] ;
   u64 count ;
   u8 buffer[64U] ;
};
struct sha256_state {
   u32 state[8U] ;
   u64 count ;
   u8 buf[64U] ;
};
struct sha512_state {
   u64 state[8U] ;
   u64 count[2U] ;
   u8 buf[128U] ;
};
struct shash_desc;
struct crypto_shash;
struct shash_desc {
   struct crypto_shash *tfm ;
   u32 flags ;
   void *__ctx[] ;
};
struct shash_alg {
   int (*init)(struct shash_desc * ) ;
   int (*update)(struct shash_desc * , u8 const * , unsigned int ) ;
   int (*final)(struct shash_desc * , u8 * ) ;
   int (*finup)(struct shash_desc * , u8 const * , unsigned int , u8 * ) ;
   int (*digest)(struct shash_desc * , u8 const * , unsigned int , u8 * ) ;
   int (*export)(struct shash_desc * , void * ) ;
   int (*import)(struct shash_desc * , void const * ) ;
   int (*setkey)(struct crypto_shash * , u8 const * , unsigned int ) ;
   unsigned int descsize ;
   unsigned int digestsize ;
   unsigned int statesize ;
   struct crypto_alg base ;
};
struct crypto_shash {
   unsigned int descsize ;
   struct crypto_tfm base ;
};
struct crypto_authenc_keys {
   u8 const *authkey ;
   u8 const *enckey ;
   unsigned int authkeylen ;
   unsigned int enckeylen ;
};
struct crypto_rng;
struct rng_alg {
   int (*generate)(struct crypto_rng * , u8 const * , unsigned int , u8 * , unsigned int ) ;
   int (*seed)(struct crypto_rng * , u8 const * , unsigned int ) ;
   void (*set_ent)(struct crypto_rng * , u8 const * , unsigned int ) ;
   unsigned int seedsize ;
   struct crypto_alg base ;
};
struct crypto_rng {
   struct crypto_tfm base ;
};
enum icp_qat_hw_auth_algo {
    ICP_QAT_HW_AUTH_ALGO_NULL = 0,
    ICP_QAT_HW_AUTH_ALGO_SHA1 = 1,
    ICP_QAT_HW_AUTH_ALGO_MD5 = 2,
    ICP_QAT_HW_AUTH_ALGO_SHA224 = 3,
    ICP_QAT_HW_AUTH_ALGO_SHA256 = 4,
    ICP_QAT_HW_AUTH_ALGO_SHA384 = 5,
    ICP_QAT_HW_AUTH_ALGO_SHA512 = 6,
    ICP_QAT_HW_AUTH_ALGO_AES_XCBC_MAC = 7,
    ICP_QAT_HW_AUTH_ALGO_AES_CBC_MAC = 8,
    ICP_QAT_HW_AUTH_ALGO_AES_F9 = 9,
    ICP_QAT_HW_AUTH_ALGO_GALOIS_128 = 10,
    ICP_QAT_HW_AUTH_ALGO_GALOIS_64 = 11,
    ICP_QAT_HW_AUTH_ALGO_KASUMI_F9 = 12,
    ICP_QAT_HW_AUTH_ALGO_SNOW_3G_UIA2 = 13,
    ICP_QAT_HW_AUTH_ALGO_ZUC_3G_128_EIA3 = 14,
    ICP_QAT_HW_AUTH_RESERVED_1 = 15,
    ICP_QAT_HW_AUTH_RESERVED_2 = 16,
    ICP_QAT_HW_AUTH_ALGO_SHA3_256 = 17,
    ICP_QAT_HW_AUTH_RESERVED_3 = 18,
    ICP_QAT_HW_AUTH_ALGO_SHA3_512 = 19,
    ICP_QAT_HW_AUTH_ALGO_DELIMITER = 20
} ;
struct icp_qat_hw_auth_config {
   uint32_t config ;
   uint32_t reserved ;
};
struct icp_qat_hw_auth_counter {
   __be32 counter ;
   uint32_t reserved ;
};
struct icp_qat_hw_auth_setup {
   struct icp_qat_hw_auth_config auth_config ;
   struct icp_qat_hw_auth_counter auth_counter ;
};
struct icp_qat_hw_auth_sha512 {
   struct icp_qat_hw_auth_setup inner_setup ;
   uint8_t state1[64U] ;
   struct icp_qat_hw_auth_setup outer_setup ;
   uint8_t state2[64U] ;
};
struct icp_qat_hw_auth_algo_blk {
   struct icp_qat_hw_auth_sha512 sha ;
};
struct icp_qat_hw_cipher_config {
   uint32_t val ;
   uint32_t reserved ;
};
struct icp_qat_hw_cipher_aes256_f8 {
   struct icp_qat_hw_cipher_config cipher_config ;
   uint8_t key[64U] ;
};
struct icp_qat_hw_cipher_algo_blk {
   struct icp_qat_hw_cipher_aes256_f8 aes ;
};
struct __anonstruct_s_253 {
   uint64_t content_desc_addr ;
   uint16_t content_desc_resrvd1 ;
   uint8_t content_desc_params_sz ;
   uint8_t content_desc_hdr_resrvd2 ;
   uint32_t content_desc_resrvd3 ;
};
struct __anonstruct_s1_254 {
   uint32_t serv_specif_fields[4U] ;
};
union __anonunion_u_252 {
   struct __anonstruct_s_253 s ;
   struct __anonstruct_s1_254 s1 ;
};
struct icp_qat_fw_comn_req_hdr_cd_pars {
   union __anonunion_u_252 u ;
};
struct icp_qat_fw_comn_req_mid {
   uint64_t opaque_data ;
   uint64_t src_data_addr ;
   uint64_t dest_data_addr ;
   uint32_t src_length ;
   uint32_t dst_length ;
};
struct icp_qat_fw_comn_req_cd_ctrl {
   uint32_t content_desc_ctrl_lw[5U] ;
};
struct icp_qat_fw_comn_req_hdr {
   uint8_t resrvd1 ;
   uint8_t service_cmd_id ;
   uint8_t service_type ;
   uint8_t hdr_flags ;
   uint16_t serv_specif_flags ;
   uint16_t comn_req_flags ;
};
struct icp_qat_fw_comn_req_rqpars {
   uint32_t serv_specif_rqpars_lw[13U] ;
};
struct icp_qat_fw_comn_error {
   uint8_t xlat_err_code ;
   uint8_t cmp_err_code ;
};
struct icp_qat_fw_comn_resp_hdr {
   uint8_t resrvd1 ;
   uint8_t service_id ;
   uint8_t response_type ;
   uint8_t hdr_flags ;
   struct icp_qat_fw_comn_error comn_error ;
   uint8_t comn_status ;
   uint8_t cmd_id ;
};
struct icp_qat_fw_la_bulk_req {
   struct icp_qat_fw_comn_req_hdr comn_hdr ;
   struct icp_qat_fw_comn_req_hdr_cd_pars cd_pars ;
   struct icp_qat_fw_comn_req_mid comn_mid ;
   struct icp_qat_fw_comn_req_rqpars serv_specif_rqpars ;
   struct icp_qat_fw_comn_req_cd_ctrl cd_ctrl ;
};
struct icp_qat_fw_cipher_cd_ctrl_hdr {
   uint8_t cipher_state_sz ;
   uint8_t cipher_key_sz ;
   uint8_t cipher_cfg_offset ;
   uint8_t next_curr_id ;
   uint8_t cipher_padding_sz ;
   uint8_t resrvd1 ;
   uint16_t resrvd2 ;
   uint32_t resrvd3[3U] ;
};
struct icp_qat_fw_auth_cd_ctrl_hdr {
   uint32_t resrvd1 ;
   uint8_t resrvd2 ;
   uint8_t hash_flags ;
   uint8_t hash_cfg_offset ;
   uint8_t next_curr_id ;
   uint8_t resrvd3 ;
   uint8_t outer_prefix_sz ;
   uint8_t final_sz ;
   uint8_t inner_res_sz ;
   uint8_t resrvd4 ;
   uint8_t inner_state1_sz ;
   uint8_t inner_state2_offset ;
   uint8_t inner_state2_sz ;
   uint8_t outer_config_offset ;
   uint8_t outer_state1_sz ;
   uint8_t outer_res_sz ;
   uint8_t outer_prefix_offset ;
};
struct __anonstruct_s_262 {
   uint64_t cipher_IV_ptr ;
   uint64_t resrvd1 ;
};
union __anonunion_u_261 {
   uint32_t cipher_IV_array[4U] ;
   struct __anonstruct_s_262 s ;
};
struct icp_qat_fw_la_cipher_req_params {
   uint32_t cipher_offset ;
   uint32_t cipher_length ;
   union __anonunion_u_261 u ;
};
union __anonunion_u1_263 {
   uint64_t auth_partial_st_prefix ;
   uint64_t aad_adr ;
};
union __anonunion_u2_264 {
   uint8_t inner_prefix_sz ;
   uint8_t aad_sz ;
};
struct icp_qat_fw_la_auth_req_params {
   uint32_t auth_off ;
   uint32_t auth_len ;
   union __anonunion_u1_263 u1 ;
   uint64_t auth_res_addr ;
   union __anonunion_u2_264 u2 ;
   uint8_t resrvd1 ;
   uint8_t hash_state_sz ;
   uint8_t auth_res_sz ;
};
struct icp_qat_fw_la_resp {
   struct icp_qat_fw_comn_resp_hdr comn_resp ;
   uint64_t opaque_data ;
   uint32_t resrvd[4U] ;
};
struct qat_alg_buf_list;
struct qat_crypto_request_buffs {
   struct qat_alg_buf_list *bl ;
   dma_addr_t blp ;
   struct qat_alg_buf_list *blout ;
   dma_addr_t bloutp ;
   size_t sz ;
   size_t sz_out ;
};
struct qat_crypto_request;
struct qat_alg_aead_ctx;
struct qat_alg_ablkcipher_ctx;
union __anonunion____missing_field_name_266 {
   struct qat_alg_aead_ctx *aead_ctx ;
   struct qat_alg_ablkcipher_ctx *ablkcipher_ctx ;
};
union __anonunion____missing_field_name_267 {
   struct aead_request *aead_req ;
   struct ablkcipher_request *ablkcipher_req ;
};
struct qat_crypto_request {
   struct icp_qat_fw_la_bulk_req req ;
   union __anonunion____missing_field_name_266 __annonCompField76 ;
   union __anonunion____missing_field_name_267 __annonCompField77 ;
   struct qat_crypto_request_buffs buf ;
   void (*cb)(struct icp_qat_fw_la_resp * , struct qat_crypto_request * ) ;
};
struct qat_alg_buf {
   uint32_t len ;
   uint32_t resrvd ;
   uint64_t addr ;
};
struct qat_alg_buf_list {
   uint64_t resrvd ;
   uint32_t num_bufs ;
   uint32_t num_mapped_bufs ;
   struct qat_alg_buf bufers[] ;
};
struct qat_enc {
   struct icp_qat_hw_cipher_algo_blk cipher ;
   struct icp_qat_hw_auth_algo_blk hash ;
};
struct qat_dec {
   struct icp_qat_hw_auth_algo_blk hash ;
   struct icp_qat_hw_cipher_algo_blk cipher ;
};
union __anonunion____missing_field_name_268 {
   struct qat_enc qat_enc_cd ;
   struct qat_dec qat_dec_cd ;
};
struct qat_alg_cd {
   union __anonunion____missing_field_name_268 __annonCompField78 ;
};
struct qat_alg_aead_ctx {
   struct qat_alg_cd *enc_cd ;
   struct qat_alg_cd *dec_cd ;
   dma_addr_t enc_cd_paddr ;
   dma_addr_t dec_cd_paddr ;
   struct icp_qat_fw_la_bulk_req enc_fw_req ;
   struct icp_qat_fw_la_bulk_req dec_fw_req ;
   struct crypto_shash *hash_tfm ;
   enum icp_qat_hw_auth_algo qat_hash_alg ;
   struct qat_crypto_instance *inst ;
   struct crypto_tfm *tfm ;
   uint8_t salt[16U] ;
   spinlock_t lock ;
};
struct qat_alg_ablkcipher_ctx {
   struct icp_qat_hw_cipher_algo_blk *enc_cd ;
   struct icp_qat_hw_cipher_algo_blk *dec_cd ;
   dma_addr_t enc_cd_paddr ;
   dma_addr_t dec_cd_paddr ;
   struct icp_qat_fw_la_bulk_req enc_fw_req ;
   struct icp_qat_fw_la_bulk_req dec_fw_req ;
   struct qat_crypto_instance *inst ;
   struct crypto_tfm *tfm ;
   spinlock_t lock ;
};
enum icp_qat_uof_regtype {
    ICP_NO_DEST = 0,
    ICP_GPA_REL = 1,
    ICP_GPA_ABS = 2,
    ICP_GPB_REL = 3,
    ICP_GPB_ABS = 4,
    ICP_SR_REL = 5,
    ICP_SR_RD_REL = 6,
    ICP_SR_WR_REL = 7,
    ICP_SR_ABS = 8,
    ICP_SR_RD_ABS = 9,
    ICP_SR_WR_ABS = 10,
    ICP_DR_REL = 11,
    ICP_DR_RD_REL = 12,
    ICP_DR_WR_REL = 13,
    ICP_DR_ABS = 14,
    ICP_DR_RD_ABS = 15,
    ICP_DR_WR_ABS = 16,
    ICP_LMEM = 17,
    ICP_LMEM0 = 18,
    ICP_LMEM1 = 19,
    ICP_NEIGH_REL = 20
} ;
struct icp_qat_uclo_encap_page;
struct icp_qat_uclo_region;
struct icp_qat_uclo_page {
   struct icp_qat_uclo_encap_page *encap_page ;
   struct icp_qat_uclo_region *region ;
   unsigned int flags ;
};
struct icp_qat_uclo_region {
   struct icp_qat_uclo_page *loaded ;
   struct icp_qat_uclo_page *page ;
};
struct icp_qat_uclo_encapme;
struct icp_qat_uclo_aeslice {
   struct icp_qat_uclo_region *region ;
   struct icp_qat_uclo_page *page ;
   struct icp_qat_uclo_page *cur_page[8U] ;
   struct icp_qat_uclo_encapme *encap_image ;
   unsigned int ctx_mask_assigned ;
   unsigned int new_uaddr[8U] ;
};
struct icp_qat_uclo_aedata {
   unsigned int slice_num ;
   unsigned int eff_ustore_size ;
   struct icp_qat_uclo_aeslice ae_slices[8U] ;
};
struct icp_qat_uof_objhdr;
struct icp_qat_uof_chunkhdr;
struct icp_qat_uof_varmem_seg;
struct icp_qat_uof_encap_obj {
   char *beg_uof ;
   struct icp_qat_uof_objhdr *obj_hdr ;
   struct icp_qat_uof_chunkhdr *chunk_hdr ;
   struct icp_qat_uof_varmem_seg *var_mem_seg ;
};
struct icp_qat_uclo_encap_uwblock {
   unsigned int start_addr ;
   unsigned int words_num ;
   uint64_t micro_words ;
};
struct icp_qat_uclo_encap_page {
   unsigned int def_page ;
   unsigned int page_region ;
   unsigned int beg_addr_v ;
   unsigned int beg_addr_p ;
   unsigned int micro_words_num ;
   unsigned int uwblock_num ;
   struct icp_qat_uclo_encap_uwblock *uwblock ;
};
struct icp_qat_uof_image;
struct icp_qat_uof_ae_reg;
struct icp_qat_uof_init_regsym;
struct icp_qat_uof_sbreak;
struct icp_qat_uclo_encapme {
   struct icp_qat_uof_image *img_ptr ;
   struct icp_qat_uclo_encap_page *page ;
   unsigned int ae_reg_num ;
   struct icp_qat_uof_ae_reg *ae_reg ;
   unsigned int init_regsym_num ;
   struct icp_qat_uof_init_regsym *init_regsym ;
   unsigned int sbreak_num ;
   struct icp_qat_uof_sbreak *sbreak ;
   unsigned int uwords_num ;
};
struct icp_qat_uof_initmem;
struct icp_qat_uclo_init_mem_table {
   unsigned int entry_num ;
   struct icp_qat_uof_initmem *init_mem ;
};
struct icp_qat_uclo_objhdr {
   char *file_buff ;
   unsigned int checksum ;
   unsigned int size ;
};
struct icp_qat_uof_strtable {
   unsigned int table_len ;
   unsigned int reserved ;
   uint64_t strings ;
};
struct icp_qat_uof_batch_init;
struct icp_qat_uclo_objhandle {
   unsigned int prod_type ;
   unsigned int prod_rev ;
   struct icp_qat_uclo_objhdr *obj_hdr ;
   struct icp_qat_uof_encap_obj encap_uof_obj ;
   struct icp_qat_uof_strtable str_table ;
   struct icp_qat_uclo_encapme ae_uimage[96U] ;
   struct icp_qat_uclo_aedata ae_data[12U] ;
   struct icp_qat_uclo_init_mem_table init_mem_tab ;
   struct icp_qat_uof_batch_init *lm_init_tab[12U] ;
   struct icp_qat_uof_batch_init *umem_init_tab[12U] ;
   int uimage_num ;
   int uword_in_bytes ;
   int global_inited ;
   unsigned int ae_num ;
   unsigned int ustore_phy_size ;
   void *obj_buf ;
   uint64_t *uword_buf ;
};
struct icp_qat_uof_uword_block {
   unsigned int start_addr ;
   unsigned int words_num ;
   unsigned int uword_offset ;
   unsigned int reserved ;
};
struct icp_qat_uof_filehdr {
   unsigned short file_id ;
   unsigned short reserved1 ;
   char min_ver ;
   char maj_ver ;
   unsigned short reserved2 ;
   unsigned short max_chunks ;
   unsigned short num_chunks ;
};
struct icp_qat_uof_filechunkhdr {
   char chunk_id[8U] ;
   unsigned int checksum ;
   unsigned int offset ;
   unsigned int size ;
};
struct icp_qat_uof_objhdr {
   unsigned int cpu_type ;
   unsigned short min_cpu_ver ;
   unsigned short max_cpu_ver ;
   short max_chunks ;
   short num_chunks ;
   unsigned int reserved1 ;
   unsigned int reserved2 ;
};
struct icp_qat_uof_chunkhdr {
   char chunk_id[8U] ;
   unsigned int offset ;
   unsigned int size ;
};
struct icp_qat_uof_memvar_attr {
   unsigned int offset_in_byte ;
   unsigned int value ;
};
struct icp_qat_uof_initmem {
   unsigned int sym_name ;
   char region ;
   char scope ;
   unsigned short reserved1 ;
   unsigned int addr ;
   unsigned int num_in_bytes ;
   unsigned int val_attr_num ;
};
struct icp_qat_uof_init_regsym {
   unsigned int sym_name ;
   char init_type ;
   char value_type ;
   char reg_type ;
   unsigned char ctx ;
   unsigned int reg_addr ;
   unsigned int value ;
};
struct icp_qat_uof_varmem_seg {
   unsigned int sram_base ;
   unsigned int sram_size ;
   unsigned int sram_alignment ;
   unsigned int sdram_base ;
   unsigned int sdram_size ;
   unsigned int sdram_alignment ;
   unsigned int sdram1_base ;
   unsigned int sdram1_size ;
   unsigned int sdram1_alignment ;
   unsigned int scratch_base ;
   unsigned int scratch_size ;
   unsigned int scratch_alignment ;
};
struct icp_qat_uof_sbreak {
   unsigned int page_num ;
   unsigned int virt_uaddr ;
   unsigned char sbreak_type ;
   unsigned char reg_type ;
   unsigned short reserved1 ;
   unsigned int addr_offset ;
   unsigned int reg_addr ;
};
struct icp_qat_uof_code_page {
   unsigned int page_region ;
   unsigned int page_num ;
   unsigned char def_page ;
   unsigned char reserved2 ;
   unsigned short reserved1 ;
   unsigned int beg_addr_v ;
   unsigned int beg_addr_p ;
   unsigned int neigh_reg_tab_offset ;
   unsigned int uc_var_tab_offset ;
   unsigned int imp_var_tab_offset ;
   unsigned int imp_expr_tab_offset ;
   unsigned int code_area_offset ;
};
struct icp_qat_uof_image {
   unsigned int img_name ;
   unsigned int ae_assigned ;
   unsigned int ctx_assigned ;
   unsigned int cpu_type ;
   unsigned int entry_address ;
   unsigned int fill_pattern[2U] ;
   unsigned int reloadable_size ;
   unsigned char sensitivity ;
   unsigned char reserved ;
   unsigned short ae_mode ;
   unsigned short max_ver ;
   unsigned short min_ver ;
   unsigned short image_attrib ;
   unsigned short reserved2 ;
   unsigned short page_region_num ;
   unsigned short numpages ;
   unsigned int reg_tab_offset ;
   unsigned int init_reg_sym_tab ;
   unsigned int sbreak_tab ;
   unsigned int app_metadata ;
};
struct icp_qat_uof_objtable {
   unsigned int entry_num ;
};
struct icp_qat_uof_ae_reg {
   unsigned int name ;
   unsigned int vis_name ;
   unsigned short type ;
   unsigned short addr ;
   unsigned short access_mode ;
   unsigned char visible ;
   unsigned char reserved1 ;
   unsigned short ref_count ;
   unsigned short reserved2 ;
   unsigned int xo_id ;
};
struct icp_qat_uof_code_area {
   unsigned int micro_words_num ;
   unsigned int uword_block_tab ;
};
struct icp_qat_uof_batch_init {
   unsigned int ae ;
   unsigned int addr ;
   unsigned int *value ;
   unsigned int size ;
   struct icp_qat_uof_batch_init *next ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
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
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
struct file *qat_dev_cfg_fops_group2 ;
int ldv_state_variable_8 ;
void *qat_dev_cfg_sops_group2 ;
struct inode *qat_dev_cfg_fops_group1 ;
struct seq_file *qat_dev_cfg_sops_group1 ;
int LDV_IN_INTERRUPT = 1;
loff_t *qat_dev_cfg_sops_group3 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
int ref_cnt ;
void ldv_seq_operations_9(void) ;
void ldv_file_operations_8(void) ;
void call_and_disable_all_1(int state ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void ldv_seq_operations_3(void) ;
extern int seq_open(struct file * , struct seq_operations const * ) ;
int ldv_seq_open_29(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_release(struct inode * , struct file * ) ;
int ldv_seq_release_30(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern struct list_head *seq_list_start(struct list_head * , loff_t ) ;
extern struct list_head *seq_list_next(void * , struct list_head * , loff_t * ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern void debugfs_remove(struct dentry * ) ;
int adf_cfg_dev_add(struct adf_accel_dev *accel_dev ) ;
void adf_cfg_dev_remove(struct adf_accel_dev *accel_dev ) ;
int adf_cfg_section_add(struct adf_accel_dev *accel_dev , char const *name ) ;
void adf_cfg_del_all(struct adf_accel_dev *accel_dev ) ;
int adf_cfg_add_key_value_param(struct adf_accel_dev *accel_dev , char const *section_name ,
                                char const *key , void const *val , enum adf_cfg_val_type type ) ;
int adf_cfg_get_param_value(struct adf_accel_dev *accel_dev , char const *section ,
                            char const *name , char *value ) ;
extern void dev_err(struct device const * , char const * , ...) ;
static struct mutex qat_cfg_read_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "qat_cfg_read_lock.wait_lock",
                                                          0, 0UL}}}}, {& qat_cfg_read_lock.wait_list,
                                                                       & qat_cfg_read_lock.wait_list},
    0, (void *)(& qat_cfg_read_lock), {0, {0, 0}, "qat_cfg_read_lock", 0, 0UL}};
static void *qat_dev_cfg_start(struct seq_file *sfile , loff_t *pos )
{
  struct adf_cfg_device_data *dev_cfg ;
  struct list_head *tmp ;
  {
  dev_cfg = (struct adf_cfg_device_data *)sfile->private;
  mutex_lock_nested(& qat_cfg_read_lock, 0U);
  tmp = seq_list_start(& dev_cfg->sec_list, *pos);
  return ((void *)tmp);
}
}
static int qat_dev_cfg_show(struct seq_file *sfile , void *v )
{
  struct list_head *list ;
  struct adf_cfg_section *sec ;
  struct list_head const *__mptr ;
  struct adf_cfg_key_val *ptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)v;
  sec = (struct adf_cfg_section *)__mptr + 0xffffffffffffffc0UL;
  seq_printf(sfile, "[%s]\n", (char *)(& sec->name));
  list = sec->param_head.next;
  goto ldv_31702;
  ldv_31701:
  __mptr___0 = (struct list_head const *)list;
  ptr = (struct adf_cfg_key_val *)__mptr___0 + 0xffffffffffffff78UL;
  seq_printf(sfile, "%s = %s\n", (char *)(& ptr->key), (char *)(& ptr->val));
  list = list->next;
  ldv_31702: ;
  if ((unsigned long )(& sec->param_head) != (unsigned long )list) {
    goto ldv_31701;
  } else {
  }
  return (0);
}
}
static void *qat_dev_cfg_next(struct seq_file *sfile , void *v , loff_t *pos )
{
  struct adf_cfg_device_data *dev_cfg ;
  struct list_head *tmp ;
  {
  dev_cfg = (struct adf_cfg_device_data *)sfile->private;
  tmp = seq_list_next(v, & dev_cfg->sec_list, pos);
  return ((void *)tmp);
}
}
static void qat_dev_cfg_stop(struct seq_file *sfile , void *v )
{
  {
  mutex_unlock(& qat_cfg_read_lock);
  return;
}
}
static struct seq_operations const qat_dev_cfg_sops = {& qat_dev_cfg_start, & qat_dev_cfg_stop, & qat_dev_cfg_next, & qat_dev_cfg_show};
static int qat_dev_cfg_open(struct inode *inode , struct file *file )
{
  int ret ;
  int tmp ;
  struct seq_file *seq_f ;
  {
  tmp = ldv_seq_open_29(file, & qat_dev_cfg_sops);
  ret = tmp;
  if (ret == 0) {
    seq_f = (struct seq_file *)file->private_data;
    seq_f->private = inode->i_private;
  } else {
  }
  return (ret);
}
}
static struct file_operations const qat_dev_cfg_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & qat_dev_cfg_open, 0,
    & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int adf_cfg_dev_add(struct adf_accel_dev *accel_dev )
{
  struct adf_cfg_device_data *dev_cfg_data ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(184UL, 208U);
  dev_cfg_data = (struct adf_cfg_device_data *)tmp;
  if ((unsigned long )dev_cfg_data == (unsigned long )((struct adf_cfg_device_data *)0)) {
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& dev_cfg_data->sec_list);
  __init_rwsem(& dev_cfg_data->lock, "&dev_cfg_data->lock", & __key);
  accel_dev->cfg = dev_cfg_data;
  dev_cfg_data->debug = debugfs_create_file("dev_cfg", 256, accel_dev->debugfs_dir,
                                            (void *)dev_cfg_data, & qat_dev_cfg_fops);
  if ((unsigned long )dev_cfg_data->debug == (unsigned long )((struct dentry *)0)) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to create qat cfg debugfs entry.\n");
    kfree((void const *)dev_cfg_data);
    accel_dev->cfg = (struct adf_cfg_device_data *)0;
    return (-14);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_adf_cfg_dev_add[16U] =
  { 'a', 'd', 'f', '_',
        'c', 'f', 'g', '_',
        'd', 'e', 'v', '_',
        'a', 'd', 'd', '\000'};
struct kernel_symbol const __ksymtab_adf_cfg_dev_add ;
struct kernel_symbol const __ksymtab_adf_cfg_dev_add = {(unsigned long )(& adf_cfg_dev_add), (char const *)(& __kstrtab_adf_cfg_dev_add)};
static void adf_cfg_section_del_all(struct list_head *head ) ;
void adf_cfg_del_all(struct adf_accel_dev *accel_dev )
{
  struct adf_cfg_device_data *dev_cfg_data ;
  {
  dev_cfg_data = accel_dev->cfg;
  down_write(& dev_cfg_data->lock);
  adf_cfg_section_del_all(& dev_cfg_data->sec_list);
  up_write(& dev_cfg_data->lock);
  clear_bit(2L, (unsigned long volatile *)(& accel_dev->status));
  return;
}
}
void adf_cfg_dev_remove(struct adf_accel_dev *accel_dev )
{
  struct adf_cfg_device_data *dev_cfg_data ;
  {
  dev_cfg_data = accel_dev->cfg;
  down_write(& dev_cfg_data->lock);
  adf_cfg_section_del_all(& dev_cfg_data->sec_list);
  up_write(& dev_cfg_data->lock);
  debugfs_remove(dev_cfg_data->debug);
  kfree((void const *)dev_cfg_data);
  accel_dev->cfg = (struct adf_cfg_device_data *)0;
  return;
}
}
static char const __kstrtab_adf_cfg_dev_remove[19U] =
  { 'a', 'd', 'f', '_',
        'c', 'f', 'g', '_',
        'd', 'e', 'v', '_',
        'r', 'e', 'm', 'o',
        'v', 'e', '\000'};
struct kernel_symbol const __ksymtab_adf_cfg_dev_remove ;
struct kernel_symbol const __ksymtab_adf_cfg_dev_remove = {(unsigned long )(& adf_cfg_dev_remove), (char const *)(& __kstrtab_adf_cfg_dev_remove)};
static void adf_cfg_keyval_add(struct adf_cfg_key_val *new , struct adf_cfg_section *sec )
{
  {
  list_add_tail(& new->list, & sec->param_head);
  return;
}
}
static void adf_cfg_keyval_del_all(struct list_head *head )
{
  struct list_head *list_ptr ;
  struct list_head *tmp ;
  struct adf_cfg_key_val *ptr ;
  struct list_head const *__mptr ;
  {
  list_ptr = head->prev;
  tmp = list_ptr->prev;
  goto ldv_31764;
  ldv_31763:
  __mptr = (struct list_head const *)list_ptr;
  ptr = (struct adf_cfg_key_val *)__mptr + 0xffffffffffffff78UL;
  list_del(list_ptr);
  kfree((void const *)ptr);
  list_ptr = tmp;
  tmp = list_ptr->prev;
  ldv_31764: ;
  if ((unsigned long )list_ptr != (unsigned long )head) {
    goto ldv_31763;
  } else {
  }
  return;
}
}
static void adf_cfg_section_del_all(struct list_head *head )
{
  struct adf_cfg_section *ptr ;
  struct list_head *list ;
  struct list_head *tmp ;
  struct list_head const *__mptr ;
  {
  list = head->prev;
  tmp = list->prev;
  goto ldv_31775;
  ldv_31774:
  __mptr = (struct list_head const *)list;
  ptr = (struct adf_cfg_section *)__mptr + 0xffffffffffffffc0UL;
  adf_cfg_keyval_del_all(& ptr->param_head);
  list_del(list);
  kfree((void const *)ptr);
  list = tmp;
  tmp = list->prev;
  ldv_31775: ;
  if ((unsigned long )list != (unsigned long )head) {
    goto ldv_31774;
  } else {
  }
  return;
}
}
static struct adf_cfg_key_val *adf_cfg_key_value_find(struct adf_cfg_section *s ,
                                                      char const *key )
{
  struct list_head *list ;
  struct adf_cfg_key_val *ptr ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  list = s->param_head.next;
  goto ldv_31786;
  ldv_31785:
  __mptr = (struct list_head const *)list;
  ptr = (struct adf_cfg_key_val *)__mptr + 0xffffffffffffff78UL;
  tmp = strcmp((char const *)(& ptr->key), key);
  if (tmp == 0) {
    return (ptr);
  } else {
  }
  list = list->next;
  ldv_31786: ;
  if ((unsigned long )(& s->param_head) != (unsigned long )list) {
    goto ldv_31785;
  } else {
  }
  return ((struct adf_cfg_key_val *)0);
}
}
static struct adf_cfg_section *adf_cfg_sec_find(struct adf_accel_dev *accel_dev ,
                                                char const *sec_name )
{
  struct adf_cfg_device_data *cfg ;
  struct list_head *list ;
  struct adf_cfg_section *ptr ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  cfg = accel_dev->cfg;
  list = cfg->sec_list.next;
  goto ldv_31798;
  ldv_31797:
  __mptr = (struct list_head const *)list;
  ptr = (struct adf_cfg_section *)__mptr + 0xffffffffffffffc0UL;
  tmp = strcmp((char const *)(& ptr->name), sec_name);
  if (tmp == 0) {
    return (ptr);
  } else {
  }
  list = list->next;
  ldv_31798: ;
  if ((unsigned long )(& cfg->sec_list) != (unsigned long )list) {
    goto ldv_31797;
  } else {
  }
  return ((struct adf_cfg_section *)0);
}
}
static int adf_cfg_key_val_get(struct adf_accel_dev *accel_dev , char const *sec_name ,
                               char const *key_name , char *val )
{
  struct adf_cfg_section *sec ;
  struct adf_cfg_section *tmp ;
  struct adf_cfg_key_val *keyval ;
  {
  tmp = adf_cfg_sec_find(accel_dev, sec_name);
  sec = tmp;
  keyval = (struct adf_cfg_key_val *)0;
  if ((unsigned long )sec != (unsigned long )((struct adf_cfg_section *)0)) {
    keyval = adf_cfg_key_value_find(sec, key_name);
  } else {
  }
  if ((unsigned long )keyval != (unsigned long )((struct adf_cfg_key_val *)0)) {
    memcpy((void *)val, (void const *)(& keyval->val), 64UL);
    return (0);
  } else {
  }
  return (-1);
}
}
int adf_cfg_add_key_value_param(struct adf_accel_dev *accel_dev , char const *section_name ,
                                char const *key , void const *val , enum adf_cfg_val_type type )
{
  struct adf_cfg_device_data *cfg ;
  struct adf_cfg_key_val *key_val ;
  struct adf_cfg_section *section ;
  struct adf_cfg_section *tmp ;
  void *tmp___0 ;
  {
  cfg = accel_dev->cfg;
  tmp = adf_cfg_sec_find(accel_dev, section_name);
  section = tmp;
  if ((unsigned long )section == (unsigned long )((struct adf_cfg_section *)0)) {
    return (-14);
  } else {
  }
  tmp___0 = kzalloc(152UL, 208U);
  key_val = (struct adf_cfg_key_val *)tmp___0;
  if ((unsigned long )key_val == (unsigned long )((struct adf_cfg_key_val *)0)) {
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& key_val->list);
  strlcpy((char *)(& key_val->key), key, 64UL);
  if ((unsigned int )type == 0U) {
    snprintf((char *)(& key_val->val), 64UL, "%ld", *((long *)val));
  } else
  if ((unsigned int )type == 2U) {
    strlcpy((char *)(& key_val->val), (char const *)val, 64UL);
  } else
  if ((unsigned int )type == 1U) {
    snprintf((char *)(& key_val->val), 64UL, "0x%lx", (unsigned long )val);
  } else {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Unknown type given.\n");
    kfree((void const *)key_val);
    return (-1);
  }
  key_val->type = type;
  down_write(& cfg->lock);
  adf_cfg_keyval_add(key_val, section);
  up_write(& cfg->lock);
  return (0);
}
}
static char const __kstrtab_adf_cfg_add_key_value_param[28U] =
  { 'a', 'd', 'f', '_',
        'c', 'f', 'g', '_',
        'a', 'd', 'd', '_',
        'k', 'e', 'y', '_',
        'v', 'a', 'l', 'u',
        'e', '_', 'p', 'a',
        'r', 'a', 'm', '\000'};
struct kernel_symbol const __ksymtab_adf_cfg_add_key_value_param ;
struct kernel_symbol const __ksymtab_adf_cfg_add_key_value_param = {(unsigned long )(& adf_cfg_add_key_value_param), (char const *)(& __kstrtab_adf_cfg_add_key_value_param)};
int adf_cfg_section_add(struct adf_accel_dev *accel_dev , char const *name )
{
  struct adf_cfg_device_data *cfg ;
  struct adf_cfg_section *sec ;
  struct adf_cfg_section *tmp ;
  void *tmp___0 ;
  {
  cfg = accel_dev->cfg;
  tmp = adf_cfg_sec_find(accel_dev, name);
  sec = tmp;
  if ((unsigned long )sec != (unsigned long )((struct adf_cfg_section *)0)) {
    return (0);
  } else {
  }
  tmp___0 = kzalloc(96UL, 208U);
  sec = (struct adf_cfg_section *)tmp___0;
  if ((unsigned long )sec == (unsigned long )((struct adf_cfg_section *)0)) {
    return (-12);
  } else {
  }
  strlcpy((char *)(& sec->name), name, 64UL);
  INIT_LIST_HEAD(& sec->param_head);
  down_write(& cfg->lock);
  list_add_tail(& sec->list, & cfg->sec_list);
  up_write(& cfg->lock);
  return (0);
}
}
static char const __kstrtab_adf_cfg_section_add[20U] =
  { 'a', 'd', 'f', '_',
        'c', 'f', 'g', '_',
        's', 'e', 'c', 't',
        'i', 'o', 'n', '_',
        'a', 'd', 'd', '\000'};
struct kernel_symbol const __ksymtab_adf_cfg_section_add ;
struct kernel_symbol const __ksymtab_adf_cfg_section_add = {(unsigned long )(& adf_cfg_section_add), (char const *)(& __kstrtab_adf_cfg_section_add)};
int adf_cfg_get_param_value(struct adf_accel_dev *accel_dev , char const *section ,
                            char const *name , char *value )
{
  struct adf_cfg_device_data *cfg ;
  int ret ;
  {
  cfg = accel_dev->cfg;
  down_read(& cfg->lock);
  ret = adf_cfg_key_val_get(accel_dev, section, name, value);
  up_read(& cfg->lock);
  return (ret);
}
}
void *ldv_retval_4 ;
int ldv_retval_6 ;
void *ldv_retval_3 ;
void ldv_seq_operations_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(256UL);
  qat_dev_cfg_sops_group1 = (struct seq_file *)tmp;
  return;
}
}
void ldv_file_operations_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  qat_dev_cfg_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  qat_dev_cfg_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_8(void)
{
  loff_t *ldvarg12 ;
  void *tmp ;
  int ldvarg10 ;
  size_t ldvarg13 ;
  char *ldvarg14 ;
  void *tmp___0 ;
  loff_t ldvarg11 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg12 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg14 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg10), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_8 == 2) {
    ldv_seq_release_30(qat_dev_cfg_fops_group1, qat_dev_cfg_fops_group2);
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_31869;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    seq_read(qat_dev_cfg_fops_group2, ldvarg14, ldvarg13, ldvarg12);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_31869;
  case 2: ;
  if (ldv_state_variable_8 == 2) {
    seq_lseek(qat_dev_cfg_fops_group2, ldvarg11, ldvarg10);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_31869;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_6 = qat_dev_cfg_open(qat_dev_cfg_fops_group1, qat_dev_cfg_fops_group2);
    if (ldv_retval_6 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_31869;
  default:
  ldv_stop();
  }
  ldv_31869: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_4 = qat_dev_cfg_start(qat_dev_cfg_sops_group1, qat_dev_cfg_sops_group3);
    if ((unsigned long )ldv_retval_4 == (unsigned long )((void *)0)) {
      ldv_state_variable_9 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_4 != (unsigned long )((void *)0)) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_31878;
  case 1: ;
  if (ldv_state_variable_9 == 3) {
    qat_dev_cfg_stop(qat_dev_cfg_sops_group1, qat_dev_cfg_sops_group2);
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_9 == 2) {
    qat_dev_cfg_stop(qat_dev_cfg_sops_group1, qat_dev_cfg_sops_group2);
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_31878;
  case 2: ;
  if (ldv_state_variable_9 == 3) {
    qat_dev_cfg_show(qat_dev_cfg_sops_group1, (void *)qat_dev_cfg_sops_group3);
    ldv_state_variable_9 = 3;
  } else {
  }
  goto ldv_31878;
  case 3: ;
  if (ldv_state_variable_9 == 3) {
    ldv_retval_3 = qat_dev_cfg_next(qat_dev_cfg_sops_group1, qat_dev_cfg_sops_group2,
                                    qat_dev_cfg_sops_group3);
    if ((unsigned long )ldv_retval_3 == (unsigned long )((void *)0)) {
      ldv_state_variable_9 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_3 != (unsigned long )((void *)0)) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_31878;
  default:
  ldv_stop();
  }
  ldv_31878: ;
  return;
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
  activate_work_1(ldv_func_arg3, 2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
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
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
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
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
int ldv_seq_open_29(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_3 = 1;
    ldv_seq_operations_3();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_seq_release_30(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_release(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 0;
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int printk(char const * , ...) ;
extern void __might_fault(char const * , int ) ;
bool ldv_is_err(void const *ptr ) ;
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
__inline static bool IS_ERR(void const *ptr ) ;
extern void mutex_destroy(struct mutex * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_56(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_55(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
struct file *qat_dev_cfg_fops_group2 ;
int ldv_state_variable_8 ;
void *adf_ring_sops_group2 ;
struct work_struct *ldv_work_struct_1_0 ;
void *qat_dev_cfg_sops_group2 ;
struct work_struct *ldv_work_struct_1_1 ;
struct work_struct *ldv_work_struct_1_3 ;
struct inode *adf_bank_debug_fops_group1 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct seq_file *adf_bank_sops_group1 ;
void *adf_ctl_ops_group1 ;
int ldv_work_1_1 ;
int ldv_state_variable_2 ;
struct pci_dev *adf_err_handler_group0 ;
struct inode *adf_ring_debug_fops_group1 ;
struct inode *qat_dev_cfg_fops_group1 ;
struct seq_file *qat_dev_cfg_sops_group1 ;
struct file *adf_bank_debug_fops_group2 ;
int ldv_work_1_2 ;
struct seq_file *adf_ring_sops_group1 ;
loff_t *qat_dev_cfg_sops_group3 ;
void *adf_bank_sops_group2 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_state_variable_9 ;
int ldv_state_variable_3 ;
loff_t *adf_ring_sops_group3 ;
int ref_cnt ;
int ldv_work_1_0 ;
int ldv_state_variable_1 ;
struct file *adf_ring_debug_fops_group2 ;
int ldv_state_variable_7 ;
struct file *adf_ctl_ops_group2 ;
loff_t *adf_bank_sops_group3 ;
int ldv_state_variable_4 ;
void ldv_file_operations_7(void) ;
void ldv_initialize_pci_error_handlers_6(void) ;
void work_init_1(void) ;
extern int alloc_chrdev_region(dev_t * , unsigned int , unsigned int , char const * ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
extern struct class *__class_create(struct module * , char const * , struct lock_class_key * ) ;
extern void class_destroy(struct class * ) ;
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern void cdev_init(struct cdev * , struct file_operations const * ) ;
void ldv_cdev_init_67(struct cdev *cdev , struct file_operations const *fops ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
void ldv_cdev_del_66(struct cdev *p ) ;
void ldv_cdev_del_68(struct cdev *p ) ;
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
int adf_dev_init(struct adf_accel_dev *accel_dev ) ;
int adf_dev_start(struct adf_accel_dev *accel_dev ) ;
int adf_dev_stop(struct adf_accel_dev *accel_dev ) ;
void adf_dev_shutdown(struct adf_accel_dev *accel_dev ) ;
struct list_head *adf_devmgr_get_head(void) ;
struct adf_accel_dev *adf_devmgr_get_dev_by_id(uint32_t id ) ;
int adf_devmgr_verify_id(uint32_t id ) ;
void adf_devmgr_get_num_dev(uint32_t *num ) ;
int adf_devmgr_in_reset(struct adf_accel_dev *accel_dev ) ;
int adf_dev_started(struct adf_accel_dev *accel_dev ) ;
int adf_init_aer(void) ;
void adf_exit_aer(void) ;
int adf_dev_in_use(struct adf_accel_dev *accel_dev ) ;
int qat_crypto_register(void) ;
int qat_crypto_unregister(void) ;
int qat_algs_init(void) ;
void qat_algs_exit(void) ;
static struct mutex adf_ctl_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "adf_ctl_lock.wait_lock",
                                                          0, 0UL}}}}, {& adf_ctl_lock.wait_list,
                                                                       & adf_ctl_lock.wait_list},
    0, (void *)(& adf_ctl_lock), {0, {0, 0}, "adf_ctl_lock", 0, 0UL}};
static long adf_ctl_ioctl(struct file *fp , unsigned int cmd , unsigned long arg ) ;
static struct file_operations const adf_ctl_ops =
     {& __this_module, 0, 0, 0, 0, 0, 0, 0, & adf_ctl_ioctl, & adf_ctl_ioctl, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct adf_ctl_drv_info adf_ctl_drv ;
static void adf_chr_drv_destroy(void)
{
  {
  device_destroy(adf_ctl_drv.drv_class, adf_ctl_drv.major << 20);
  ldv_cdev_del_66(& adf_ctl_drv.drv_cdev);
  class_destroy(adf_ctl_drv.drv_class);
  unregister_chrdev_region(adf_ctl_drv.major << 20, 1U);
  return;
}
}
static int adf_chr_drv_create(void)
{
  dev_t dev_id ;
  struct device *drv_device ;
  int tmp ;
  struct lock_class_key __key ;
  struct class *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = alloc_chrdev_region(& dev_id, 0U, 1U, "qat_adf_ctl");
  if (tmp != 0) {
    printk("\vQAT: unable to allocate chrdev region\n");
    return (-14);
  } else {
  }
  tmp___0 = __class_create(& __this_module, "qat_adf_ctl", & __key);
  adf_ctl_drv.drv_class = tmp___0;
  tmp___1 = IS_ERR((void const *)adf_ctl_drv.drv_class);
  if ((int )tmp___1) {
    printk("\vQAT: class_create failed for adf_ctl\n");
    goto err_chrdev_unreg;
  } else {
  }
  adf_ctl_drv.major = dev_id >> 20;
  ldv_cdev_init_67(& adf_ctl_drv.drv_cdev, & adf_ctl_ops);
  tmp___2 = cdev_add(& adf_ctl_drv.drv_cdev, dev_id, 1U);
  if (tmp___2 != 0) {
    printk("\vQAT: cdev add failed\n");
    goto err_class_destr;
  } else {
  }
  drv_device = device_create(adf_ctl_drv.drv_class, (struct device *)0, adf_ctl_drv.major << 20,
                             (void *)0, "qat_adf_ctl");
  tmp___3 = IS_ERR((void const *)drv_device);
  if ((int )tmp___3) {
    printk("\vQAT: failed to create device\n");
    goto err_cdev_del;
  } else {
  }
  return (0);
  err_cdev_del:
  ldv_cdev_del_68(& adf_ctl_drv.drv_cdev);
  err_class_destr:
  class_destroy(adf_ctl_drv.drv_class);
  err_chrdev_unreg:
  unregister_chrdev_region(dev_id, 1U);
  return (-14);
}
}
static int adf_ctl_alloc_resources(struct adf_user_cfg_ctl_data **ctl_data , unsigned long arg )
{
  struct adf_user_cfg_ctl_data *cfg_data ;
  void *tmp ;
  unsigned long tmp___0 ;
  {
  tmp = kzalloc(16UL, 208U);
  cfg_data = (struct adf_user_cfg_ctl_data *)tmp;
  if ((unsigned long )cfg_data == (unsigned long )((struct adf_user_cfg_ctl_data *)0)) {
    return (-12);
  } else {
  }
  cfg_data->device_id = 255U;
  tmp___0 = copy_from_user((void *)cfg_data, (void const *)arg, 16UL);
  if (tmp___0 != 0UL) {
    printk("\vQAT: failed to copy from user cfg_data.\n");
    kfree((void const *)cfg_data);
    return (-5);
  } else {
  }
  *ctl_data = cfg_data;
  return (0);
}
}
static int adf_add_key_value_data(struct adf_accel_dev *accel_dev , char const *section ,
                                  struct adf_user_cfg_key_val const *key_val )
{
  long *ptr ;
  long val ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )key_val->type == 1U) {
    ptr = (long *)(& key_val->val);
    val = *ptr;
    tmp = adf_cfg_add_key_value_param(accel_dev, section, (char const *)(& key_val->key),
                                      (void const *)val, key_val->type);
    if (tmp != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "failed to add hex keyvalue.\n");
      return (-14);
    } else {
    }
  } else {
    tmp___0 = adf_cfg_add_key_value_param(accel_dev, section, (char const *)(& key_val->key),
                                          (void const *)(& key_val->val), key_val->type);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "failed to add keyvalue.\n");
      return (-14);
    } else {
    }
  }
  return (0);
}
}
static int adf_copy_key_value_data(struct adf_accel_dev *accel_dev , struct adf_user_cfg_ctl_data *ctl_data )
{
  struct adf_user_cfg_key_val key_val ;
  struct adf_user_cfg_key_val *params_head ;
  struct adf_user_cfg_section section ;
  struct adf_user_cfg_section *section_head ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  section_head = ctl_data->__annonCompField73.config_section;
  goto ldv_32688;
  ldv_32687:
  tmp = copy_from_user((void *)(& section), (void const *)section_head, 80UL);
  if (tmp != 0UL) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "failed to copy section info\n");
    goto out_err;
  } else {
  }
  tmp___0 = adf_cfg_section_add(accel_dev, (char const *)(& section.name));
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "failed to add section.\n");
    goto out_err;
  } else {
  }
  params_head = section_head->__annonCompField71.params;
  goto ldv_32685;
  ldv_32684:
  tmp___1 = copy_from_user((void *)(& key_val), (void const *)params_head, 144UL);
  if (tmp___1 != 0UL) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to copy keyvalue.\n");
    goto out_err;
  } else {
  }
  tmp___2 = adf_add_key_value_data(accel_dev, (char const *)(& section.name), (struct adf_user_cfg_key_val const *)(& key_val));
  if (tmp___2 != 0) {
    goto out_err;
  } else {
  }
  params_head = key_val.__annonCompField70.next;
  ldv_32685: ;
  if ((unsigned long )params_head != (unsigned long )((struct adf_user_cfg_key_val *)0)) {
    goto ldv_32684;
  } else {
  }
  section_head = section.__annonCompField72.next;
  ldv_32688: ;
  if ((unsigned long )section_head != (unsigned long )((struct adf_user_cfg_section *)0)) {
    goto ldv_32687;
  } else {
  }
  return (0);
  out_err:
  adf_cfg_del_all(accel_dev);
  return (-14);
}
}
static int adf_ctl_ioctl_dev_config(struct file *fp , unsigned int cmd , unsigned long arg )
{
  int ret ;
  struct adf_user_cfg_ctl_data *ctl_data ;
  struct adf_accel_dev *accel_dev ;
  int tmp ;
  int tmp___0 ;
  {
  ret = adf_ctl_alloc_resources(& ctl_data, arg);
  if (ret != 0) {
    return (ret);
  } else {
  }
  accel_dev = adf_devmgr_get_dev_by_id((uint32_t )ctl_data->device_id);
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    ret = -14;
    goto out;
  } else {
  }
  tmp = adf_dev_started(accel_dev);
  if (tmp != 0) {
    ret = -14;
    goto out;
  } else {
  }
  tmp___0 = adf_copy_key_value_data(accel_dev, ctl_data);
  if (tmp___0 != 0) {
    ret = -14;
    goto out;
  } else {
  }
  set_bit(2L, (unsigned long volatile *)(& accel_dev->status));
  out:
  kfree((void const *)ctl_data);
  return (ret);
}
}
static int adf_ctl_is_device_in_use(int id )
{
  struct list_head *itr ;
  struct list_head *head ;
  struct list_head *tmp ;
  struct adf_accel_dev *dev ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = adf_devmgr_get_head();
  head = tmp;
  itr = head->next;
  goto ldv_32708;
  ldv_32707:
  __mptr = (struct list_head const *)itr;
  dev = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  if ((int )dev->accel_id == id || id == 254) {
    tmp___0 = adf_devmgr_in_reset(dev);
    if (tmp___0 != 0) {
      _dev_info((struct device const *)(& (dev->accel_pci_dev.pci_dev)->dev), "device qat_dev%d is busy\n",
                (int )dev->accel_id);
      return (-16);
    } else {
      tmp___1 = adf_dev_in_use(dev);
      if (tmp___1 != 0) {
        _dev_info((struct device const *)(& (dev->accel_pci_dev.pci_dev)->dev),
                  "device qat_dev%d is busy\n", (int )dev->accel_id);
        return (-16);
      } else {
      }
    }
  } else {
  }
  itr = itr->next;
  ldv_32708: ;
  if ((unsigned long )itr != (unsigned long )head) {
    goto ldv_32707;
  } else {
  }
  return (0);
}
}
static int adf_ctl_stop_devices(uint32_t id )
{
  struct list_head *itr ;
  struct list_head *head ;
  struct list_head *tmp ;
  int ret ;
  struct adf_accel_dev *accel_dev ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = adf_devmgr_get_head();
  head = tmp;
  ret = 0;
  itr = head->next;
  goto ldv_32721;
  ldv_32720:
  __mptr = (struct list_head const *)itr;
  accel_dev = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  if ((uint32_t )accel_dev->accel_id == id || id == 254U) {
    tmp___0 = adf_dev_started(accel_dev);
    if (tmp___0 == 0) {
      goto ldv_32719;
    } else {
    }
    tmp___1 = adf_dev_stop(accel_dev);
    if (tmp___1 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Failed to stop qat_dev%d\n", id);
      ret = -14;
    } else {
      adf_dev_shutdown(accel_dev);
    }
  } else {
  }
  ldv_32719:
  itr = itr->next;
  ldv_32721: ;
  if ((unsigned long )itr != (unsigned long )head) {
    goto ldv_32720;
  } else {
  }
  return (ret);
}
}
static int adf_ctl_ioctl_dev_stop(struct file *fp , unsigned int cmd , unsigned long arg )
{
  int ret ;
  struct adf_user_cfg_ctl_data *ctl_data ;
  int tmp ;
  {
  ret = adf_ctl_alloc_resources(& ctl_data, arg);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = adf_devmgr_verify_id((uint32_t )ctl_data->device_id);
  if (tmp != 0) {
    printk("\vQAT: Device %d not found\n", (int )ctl_data->device_id);
    ret = -19;
    goto out;
  } else {
  }
  ret = adf_ctl_is_device_in_use((int )ctl_data->device_id);
  if (ret != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )ctl_data->device_id == 254U) {
    printk("\016QAT: Stopping all acceleration devices.\n");
  } else {
    printk("\016QAT: Stopping acceleration device qat_dev%d.\n", (int )ctl_data->device_id);
  }
  ret = adf_ctl_stop_devices((uint32_t )ctl_data->device_id);
  if (ret != 0) {
    printk("\vQAT: failed to stop device.\n");
  } else {
  }
  out:
  kfree((void const *)ctl_data);
  return (ret);
}
}
static int adf_ctl_ioctl_dev_start(struct file *fp , unsigned int cmd , unsigned long arg )
{
  int ret ;
  struct adf_user_cfg_ctl_data *ctl_data ;
  struct adf_accel_dev *accel_dev ;
  int tmp ;
  {
  ret = adf_ctl_alloc_resources(& ctl_data, arg);
  if (ret != 0) {
    return (ret);
  } else {
  }
  accel_dev = adf_devmgr_get_dev_by_id((uint32_t )ctl_data->device_id);
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    printk("\vQAT: Device %d not found\n", (int )ctl_data->device_id);
    ret = -19;
    goto out;
  } else {
  }
  tmp = adf_dev_started(accel_dev);
  if (tmp == 0) {
    _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Starting acceleration device qat_dev%d.\n", (int )ctl_data->device_id);
    ret = adf_dev_init(accel_dev);
    if (ret == 0) {
      ret = adf_dev_start(accel_dev);
    } else {
    }
  } else {
    _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Acceleration device qat_dev%d already started.\n", (int )ctl_data->device_id);
  }
  if (ret != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to start qat_dev%d\n", (int )ctl_data->device_id);
    adf_dev_stop(accel_dev);
    adf_dev_shutdown(accel_dev);
  } else {
  }
  out:
  kfree((void const *)ctl_data);
  return (ret);
}
}
static int adf_ctl_ioctl_get_num_devices(struct file *fp , unsigned int cmd , unsigned long arg )
{
  uint32_t num_devices___0 ;
  unsigned long tmp ;
  {
  num_devices___0 = 0U;
  adf_devmgr_get_num_dev(& num_devices___0);
  tmp = copy_to_user((void *)arg, (void const *)(& num_devices___0), 4UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int adf_ctl_ioctl_get_status(struct file *fp , unsigned int cmd , unsigned long arg )
{
  struct adf_hw_device_data *hw_data ;
  struct adf_dev_status_info dev_info ;
  struct adf_accel_dev *accel_dev ;
  unsigned long tmp ;
  int tmp___0 ;
  uint32_t tmp___1 ;
  uint32_t tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = copy_from_user((void *)(& dev_info), (void const *)arg, 48UL);
  if (tmp != 0UL) {
    printk("\vQAT: failed to copy from user.\n");
    return (-14);
  } else {
  }
  accel_dev = adf_devmgr_get_dev_by_id((uint32_t )dev_info.accel_id);
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    printk("\vQAT: Device %d not found\n", (int )dev_info.accel_id);
    return (-19);
  } else {
  }
  hw_data = accel_dev->hw_device;
  tmp___0 = adf_dev_started(accel_dev);
  dev_info.state = tmp___0 != 0;
  tmp___1 = (*(hw_data->get_num_aes))(hw_data);
  dev_info.num_ae = (uint8_t )tmp___1;
  tmp___2 = (*(hw_data->get_num_accels))(hw_data);
  dev_info.num_accel = (uint8_t )tmp___2;
  dev_info.num_logical_accel = hw_data->num_logical_accel;
  dev_info.banks_per_accel = (uint8_t )((int )hw_data->num_banks / (int )hw_data->num_logical_accel);
  strlcpy((char *)(& dev_info.name), (hw_data->dev_class)->name, 32UL);
  dev_info.instance_id = hw_data->instance_id;
  dev_info.type = (hw_data->dev_class)->type;
  dev_info.bus = ((accel_dev->accel_pci_dev.pci_dev)->bus)->number;
  dev_info.dev = (unsigned int )((uint8_t )((accel_dev->accel_pci_dev.pci_dev)->devfn >> 3)) & 31U;
  dev_info.fun = (unsigned int )((uint8_t )(accel_dev->accel_pci_dev.pci_dev)->devfn) & 7U;
  tmp___3 = copy_to_user((void *)arg, (void const *)(& dev_info), 48UL);
  if (tmp___3 != 0UL) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "failed to copy status.\n");
    return (-14);
  } else {
  }
  return (0);
}
}
static long adf_ctl_ioctl(struct file *fp , unsigned int cmd , unsigned long arg )
{
  int ret ;
  int tmp ;
  {
  tmp = mutex_lock_interruptible_nested(& adf_ctl_lock, 0U);
  if (tmp != 0) {
    return (-14L);
  } else {
  }
  switch (cmd) {
  case 1074815232U:
  ret = adf_ctl_ioctl_dev_config(fp, cmd, arg);
  goto ldv_32761;
  case 1074815233U:
  ret = adf_ctl_ioctl_dev_stop(fp, cmd, arg);
  goto ldv_32761;
  case 1074815234U:
  ret = adf_ctl_ioctl_dev_start(fp, cmd, arg);
  goto ldv_32761;
  case 1074028804U:
  ret = adf_ctl_ioctl_get_num_devices(fp, cmd, arg);
  goto ldv_32761;
  case 1074028803U:
  ret = adf_ctl_ioctl_get_status(fp, cmd, arg);
  goto ldv_32761;
  default:
  printk("\vQAT: Invalid ioctl\n");
  ret = -14;
  goto ldv_32761;
  }
  ldv_32761:
  mutex_unlock(& adf_ctl_lock);
  return ((long )ret);
}
}
static int adf_register_ctl_device_driver(void)
{
  struct lock_class_key __key ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mutex_init(& adf_ctl_lock, "&adf_ctl_lock", & __key);
  tmp = qat_algs_init();
  if (tmp != 0) {
    goto err_algs_init;
  } else {
  }
  tmp___0 = adf_chr_drv_create();
  if (tmp___0 != 0) {
    goto err_chr_dev;
  } else {
  }
  tmp___1 = adf_init_aer();
  if (tmp___1 != 0) {
    goto err_aer;
  } else {
  }
  tmp___2 = qat_crypto_register();
  if (tmp___2 != 0) {
    goto err_crypto_register;
  } else {
  }
  return (0);
  err_crypto_register:
  adf_exit_aer();
  err_aer:
  adf_chr_drv_destroy();
  err_chr_dev:
  qat_algs_exit();
  err_algs_init:
  mutex_destroy(& adf_ctl_lock);
  return (-14);
}
}
static void adf_unregister_ctl_device_driver(void)
{
  {
  adf_chr_drv_destroy();
  adf_exit_aer();
  qat_crypto_unregister();
  qat_algs_exit();
  mutex_destroy(& adf_ctl_lock);
  return;
}
}
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_open_7(void) ;
int ldv_retval_8 ;
int ldv_retval_2 ;
extern int ldv_release_7(void) ;
void ldv_file_operations_7(void)
{
  void *tmp ;
  {
  adf_ctl_ops_group1 = ldv_init_zalloc(1000UL);
  tmp = ldv_init_zalloc(504UL);
  adf_ctl_ops_group2 = (struct file *)tmp;
  return;
}
}
void ldv_main_exported_4(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_6(void) ;
int main(void)
{
  unsigned long ldvarg1 ;
  unsigned int ldvarg4 ;
  unsigned long ldvarg3 ;
  unsigned int ldvarg2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_8 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_32857:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_32835;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_32835;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_7 == 2) {
      adf_ctl_ioctl(adf_ctl_ops_group2, ldvarg4, ldvarg3);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_32839;
    case 1: ;
    if (ldv_state_variable_7 == 2) {
      adf_ctl_ioctl(adf_ctl_ops_group2, ldvarg2, ldvarg1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_32839;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_2 = ldv_open_7();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_32839;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_32839;
    default:
    ldv_stop();
    }
    ldv_32839: ;
  } else {
  }
  goto ldv_32835;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_32835;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_32835;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_32835;
  case 6: ;
  goto ldv_32835;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_32835;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      adf_unregister_ctl_device_driver();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_32852;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_8 = adf_register_ctl_device_driver();
      if (ldv_retval_8 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_8 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_6 = 1;
        ldv_initialize_pci_error_handlers_6();
      } else {
      }
    } else {
    }
    goto ldv_32852;
    default:
    ldv_stop();
    }
    ldv_32852: ;
  } else {
  }
  goto ldv_32835;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_32835;
  default:
  ldv_stop();
  }
  ldv_32835: ;
  goto ldv_32857;
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
bool ldv_queue_work_on_52(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_53(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_54(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_55(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_56(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_cdev_del_66(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_cdev_init_67(struct cdev *cdev , struct file_operations const *fops )
{
  {
  cdev_init(cdev, fops);
  ldv_state_variable_7 = 1;
  ldv_file_operations_7();
  return;
}
}
void ldv_cdev_del_68(struct cdev *p )
{
  {
  cdev_del(p);
  ldv_state_variable_7 = 0;
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
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
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
bool ldv_queue_work_on_91(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_92(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_94(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
int adf_devmgr_add_dev(struct adf_accel_dev *accel_dev ) ;
void adf_devmgr_rm_dev(struct adf_accel_dev *accel_dev ) ;
struct adf_accel_dev *adf_devmgr_get_first(void) ;
struct adf_accel_dev *adf_devmgr_pci_to_accel_dev(struct pci_dev *pci_dev ) ;
int adf_dev_get(struct adf_accel_dev *accel_dev ) ;
void adf_dev_put(struct adf_accel_dev *accel_dev ) ;
static struct list_head accel_table = {& accel_table, & accel_table};
static struct mutex table_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "table_lock.wait_lock",
                                                          0, 0UL}}}}, {& table_lock.wait_list,
                                                                       & table_lock.wait_list},
    0, (void *)(& table_lock), {0, {0, 0}, "table_lock", 0, 0UL}};
static uint32_t num_devices ;
int adf_devmgr_add_dev(struct adf_accel_dev *accel_dev )
{
  struct list_head *itr ;
  struct adf_accel_dev *ptr ;
  struct list_head const *__mptr ;
  uint32_t tmp ;
  {
  if (num_devices == 32U) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Only support up to %d devices\n", 32);
    return (-14);
  } else {
  }
  mutex_lock_nested(& table_lock, 0U);
  itr = accel_table.next;
  goto ldv_31683;
  ldv_31682:
  __mptr = (struct list_head const *)itr;
  ptr = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  if ((unsigned long )ptr == (unsigned long )accel_dev) {
    mutex_unlock(& table_lock);
    return (-17);
  } else {
  }
  itr = itr->next;
  ldv_31683: ;
  if ((unsigned long )itr != (unsigned long )(& accel_table)) {
    goto ldv_31682;
  } else {
  }
  atomic_set(& accel_dev->ref_count, 0);
  list_add_tail(& accel_dev->list, & accel_table);
  tmp = num_devices;
  num_devices = num_devices + 1U;
  accel_dev->accel_id = (uint8_t )tmp;
  mutex_unlock(& table_lock);
  return (0);
}
}
static char const __kstrtab_adf_devmgr_add_dev[19U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', 'm',
        'g', 'r', '_', 'a',
        'd', 'd', '_', 'd',
        'e', 'v', '\000'};
struct kernel_symbol const __ksymtab_adf_devmgr_add_dev ;
struct kernel_symbol const __ksymtab_adf_devmgr_add_dev = {(unsigned long )(& adf_devmgr_add_dev), (char const *)(& __kstrtab_adf_devmgr_add_dev)};
struct list_head *adf_devmgr_get_head(void)
{
  {
  return (& accel_table);
}
}
void adf_devmgr_rm_dev(struct adf_accel_dev *accel_dev )
{
  {
  mutex_lock_nested(& table_lock, 0U);
  list_del(& accel_dev->list);
  num_devices = num_devices - 1U;
  mutex_unlock(& table_lock);
  return;
}
}
static char const __kstrtab_adf_devmgr_rm_dev[18U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', 'm',
        'g', 'r', '_', 'r',
        'm', '_', 'd', 'e',
        'v', '\000'};
struct kernel_symbol const __ksymtab_adf_devmgr_rm_dev ;
struct kernel_symbol const __ksymtab_adf_devmgr_rm_dev = {(unsigned long )(& adf_devmgr_rm_dev), (char const *)(& __kstrtab_adf_devmgr_rm_dev)};
struct adf_accel_dev *adf_devmgr_get_first(void)
{
  struct adf_accel_dev *dev ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  dev = (struct adf_accel_dev *)0;
  tmp = list_empty((struct list_head const *)(& accel_table));
  if (tmp == 0) {
    __mptr = (struct list_head const *)accel_table.next;
    dev = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  } else {
  }
  return (dev);
}
}
struct adf_accel_dev *adf_devmgr_pci_to_accel_dev(struct pci_dev *pci_dev )
{
  struct list_head *itr ;
  struct adf_accel_dev *ptr ;
  struct list_head const *__mptr ;
  {
  mutex_lock_nested(& table_lock, 0U);
  itr = accel_table.next;
  goto ldv_31719;
  ldv_31718:
  __mptr = (struct list_head const *)itr;
  ptr = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  if ((unsigned long )ptr->accel_pci_dev.pci_dev == (unsigned long )pci_dev) {
    mutex_unlock(& table_lock);
    return (ptr);
  } else {
  }
  itr = itr->next;
  ldv_31719: ;
  if ((unsigned long )itr != (unsigned long )(& accel_table)) {
    goto ldv_31718;
  } else {
  }
  mutex_unlock(& table_lock);
  return ((struct adf_accel_dev *)0);
}
}
static char const __kstrtab_adf_devmgr_pci_to_accel_dev[28U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', 'm',
        'g', 'r', '_', 'p',
        'c', 'i', '_', 't',
        'o', '_', 'a', 'c',
        'c', 'e', 'l', '_',
        'd', 'e', 'v', '\000'};
struct kernel_symbol const __ksymtab_adf_devmgr_pci_to_accel_dev ;
struct kernel_symbol const __ksymtab_adf_devmgr_pci_to_accel_dev = {(unsigned long )(& adf_devmgr_pci_to_accel_dev), (char const *)(& __kstrtab_adf_devmgr_pci_to_accel_dev)};
struct adf_accel_dev *adf_devmgr_get_dev_by_id(uint32_t id )
{
  struct list_head *itr ;
  struct adf_accel_dev *ptr ;
  struct list_head const *__mptr ;
  {
  mutex_lock_nested(& table_lock, 0U);
  itr = accel_table.next;
  goto ldv_31736;
  ldv_31735:
  __mptr = (struct list_head const *)itr;
  ptr = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  if ((uint32_t )ptr->accel_id == id) {
    mutex_unlock(& table_lock);
    return (ptr);
  } else {
  }
  itr = itr->next;
  ldv_31736: ;
  if ((unsigned long )itr != (unsigned long )(& accel_table)) {
    goto ldv_31735;
  } else {
  }
  mutex_unlock(& table_lock);
  return ((struct adf_accel_dev *)0);
}
}
int adf_devmgr_verify_id(uint32_t id )
{
  struct adf_accel_dev *tmp ;
  {
  if (id == 254U) {
    return (0);
  } else {
  }
  tmp = adf_devmgr_get_dev_by_id(id);
  if ((unsigned long )tmp != (unsigned long )((struct adf_accel_dev *)0)) {
    return (0);
  } else {
  }
  return (-19);
}
}
void adf_devmgr_get_num_dev(uint32_t *num )
{
  struct list_head *itr ;
  {
  *num = 0U;
  itr = accel_table.next;
  goto ldv_31746;
  ldv_31745:
  *num = *num + 1U;
  itr = itr->next;
  ldv_31746: ;
  if ((unsigned long )itr != (unsigned long )(& accel_table)) {
    goto ldv_31745;
  } else {
  }
  return;
}
}
int adf_dev_in_use(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& accel_dev->ref_count));
  return (tmp != 0);
}
}
int adf_dev_get(struct adf_accel_dev *accel_dev )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = atomic_add_return(1, & accel_dev->ref_count);
  if (tmp___1 == 1) {
    tmp = try_module_get(accel_dev->owner);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (-14);
    } else {
    }
  } else {
  }
  return (0);
}
}
void adf_dev_put(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = atomic_sub_return(1, & accel_dev->ref_count);
  if (tmp == 0) {
    module_put(accel_dev->owner);
  } else {
  }
  return;
}
}
int adf_devmgr_in_reset(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& accel_dev->status));
  return (tmp);
}
}
int adf_dev_started(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& accel_dev->status));
  return (tmp);
}
}
bool ldv_queue_work_on_91(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_92(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_93(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_94(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_95(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
bool ldv_queue_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_126(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_128(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_127(struct workqueue_struct *ldv_func_arg1 ) ;
extern void msleep(unsigned int ) ;
int adf_service_register(struct service_hndl *service ) ;
int adf_service_unregister(struct service_hndl *service ) ;
int adf_dev_restarting_notify(struct adf_accel_dev *accel_dev ) ;
int adf_dev_restarted_notify(struct adf_accel_dev *accel_dev ) ;
int adf_ae_init(struct adf_accel_dev *accel_dev ) ;
int adf_ae_shutdown(struct adf_accel_dev *accel_dev ) ;
int adf_ae_fw_load(struct adf_accel_dev *accel_dev ) ;
void adf_ae_fw_release(struct adf_accel_dev *accel_dev ) ;
int adf_ae_start(struct adf_accel_dev *accel_dev ) ;
int adf_ae_stop(struct adf_accel_dev *accel_dev ) ;
int adf_init_etr_data(struct adf_accel_dev *accel_dev ) ;
void adf_cleanup_etr_data(struct adf_accel_dev *accel_dev ) ;
int qat_algs_register(void) ;
int qat_algs_unregister(void) ;
static struct list_head service_table = {& service_table, & service_table};
static struct mutex service_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "service_lock.wait_lock",
                                                          0, 0UL}}}}, {& service_lock.wait_list,
                                                                       & service_lock.wait_list},
    0, (void *)(& service_lock), {0, {0, 0}, "service_lock", 0, 0UL}};
static void adf_service_add(struct service_hndl *service )
{
  {
  mutex_lock_nested(& service_lock, 0U);
  list_add(& service->list, & service_table);
  mutex_unlock(& service_lock);
  return;
}
}
int adf_service_register(struct service_hndl *service )
{
  {
  service->init_status = 0UL;
  service->start_status = 0UL;
  adf_service_add(service);
  return (0);
}
}
static char const __kstrtab_adf_service_register[21U] =
  { 'a', 'd', 'f', '_',
        's', 'e', 'r', 'v',
        'i', 'c', 'e', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_adf_service_register ;
struct kernel_symbol const __ksymtab_adf_service_register = {(unsigned long )(& adf_service_register), (char const *)(& __kstrtab_adf_service_register)};
static void adf_service_remove(struct service_hndl *service )
{
  {
  mutex_lock_nested(& service_lock, 0U);
  list_del(& service->list);
  mutex_unlock(& service_lock);
  return;
}
}
int adf_service_unregister(struct service_hndl *service )
{
  {
  if (service->init_status != 0UL || service->start_status != 0UL) {
    printk("\vQAT: Could not remove active service\n");
    return (-14);
  } else {
  }
  adf_service_remove(service);
  return (0);
}
}
static char const __kstrtab_adf_service_unregister[23U] =
  { 'a', 'd', 'f', '_',
        's', 'e', 'r', 'v',
        'i', 'c', 'e', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_adf_service_unregister ;
struct kernel_symbol const __ksymtab_adf_service_unregister = {(unsigned long )(& adf_service_unregister), (char const *)(& __kstrtab_adf_service_unregister)};
int adf_dev_init(struct adf_accel_dev *accel_dev )
{
  struct service_hndl *service ;
  struct list_head *list_itr ;
  struct adf_hw_device_data *hw_data ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr ;
  int tmp___6 ;
  struct list_head const *__mptr___0 ;
  int tmp___7 ;
  {
  hw_data = accel_dev->hw_device;
  if ((unsigned long )hw_data == (unsigned long )((struct adf_hw_device_data *)0)) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to init device - hw_data not set\n");
    return (-14);
  } else {
  }
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp == 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Device not configured\n");
    return (-14);
  } else {
  }
  tmp___0 = adf_init_etr_data(accel_dev);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed initialize etr\n");
    return (-14);
  } else {
  }
  if ((unsigned long )hw_data->init_admin_comms != (unsigned long )((int (*)(struct adf_accel_dev * ))0)) {
    tmp___1 = (*(hw_data->init_admin_comms))(accel_dev);
    if (tmp___1 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Failed initialize admin comms\n");
      return (-14);
    } else {
    }
  } else {
  }
  if ((unsigned long )hw_data->init_arb != (unsigned long )((int (*)(struct adf_accel_dev * ))0)) {
    tmp___2 = (*(hw_data->init_arb))(accel_dev);
    if (tmp___2 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Failed initialize hw arbiter\n");
      return (-14);
    } else {
    }
  } else {
  }
  (*(hw_data->enable_ints))(accel_dev);
  tmp___3 = adf_ae_init(accel_dev);
  if (tmp___3 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to initialise Acceleration Engine\n");
    return (-14);
  } else {
  }
  set_bit(4L, (unsigned long volatile *)(& accel_dev->status));
  tmp___4 = adf_ae_fw_load(accel_dev);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to load acceleration FW\n");
    return (-14);
  } else {
  }
  set_bit(5L, (unsigned long volatile *)(& accel_dev->status));
  tmp___5 = (*(hw_data->alloc_irq))(accel_dev);
  if (tmp___5 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to allocate interrupts\n");
    return (-14);
  } else {
  }
  set_bit(8L, (unsigned long volatile *)(& accel_dev->status));
  list_itr = service_table.next;
  goto ldv_31738;
  ldv_31737:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31736;
  } else {
  }
  tmp___6 = (*(service->event_hld))(accel_dev, 0);
  if (tmp___6 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to initialise service %s\n", service->name);
    return (-14);
  } else {
  }
  set_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->init_status));
  ldv_31736:
  list_itr = list_itr->next;
  ldv_31738: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31737;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31744;
  ldv_31743:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31742;
  } else {
  }
  tmp___7 = (*(service->event_hld))(accel_dev, 0);
  if (tmp___7 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to initialise service %s\n", service->name);
    return (-14);
  } else {
  }
  set_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->init_status));
  ldv_31742:
  list_itr = list_itr->next;
  ldv_31744: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31743;
  } else {
  }
  (*(hw_data->enable_error_correction))(accel_dev);
  return (0);
}
}
static char const __kstrtab_adf_dev_init[13U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', '_',
        'i', 'n', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_adf_dev_init ;
struct kernel_symbol const __ksymtab_adf_dev_init = {(unsigned long )(& adf_dev_init), (char const *)(& __kstrtab_adf_dev_init)};
int adf_dev_start(struct adf_accel_dev *accel_dev )
{
  struct service_hndl *service ;
  struct list_head *list_itr ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  set_bit(1L, (unsigned long volatile *)(& accel_dev->status));
  tmp = adf_ae_start(accel_dev);
  if (tmp != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "AE Start Failed\n");
    return (-14);
  } else {
  }
  set_bit(6L, (unsigned long volatile *)(& accel_dev->status));
  list_itr = service_table.next;
  goto ldv_31762;
  ldv_31761:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31760;
  } else {
  }
  tmp___0 = (*(service->event_hld))(accel_dev, 1);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to start service %s\n", service->name);
    return (-14);
  } else {
  }
  set_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->start_status));
  ldv_31760:
  list_itr = list_itr->next;
  ldv_31762: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31761;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31768;
  ldv_31767:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31766;
  } else {
  }
  tmp___1 = (*(service->event_hld))(accel_dev, 1);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to start service %s\n", service->name);
    return (-14);
  } else {
  }
  set_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->start_status));
  ldv_31766:
  list_itr = list_itr->next;
  ldv_31768: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31767;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& accel_dev->status));
  set_bit(3L, (unsigned long volatile *)(& accel_dev->status));
  tmp___2 = qat_algs_register();
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to register crypto algs\n");
    set_bit(1L, (unsigned long volatile *)(& accel_dev->status));
    clear_bit(3L, (unsigned long volatile *)(& accel_dev->status));
    return (-14);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_adf_dev_start[14U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', '_',
        's', 't', 'a', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_adf_dev_start ;
struct kernel_symbol const __ksymtab_adf_dev_start = {(unsigned long )(& adf_dev_start), (char const *)(& __kstrtab_adf_dev_start)};
int adf_dev_stop(struct adf_accel_dev *accel_dev )
{
  struct service_hndl *service ;
  struct list_head *list_itr ;
  bool wait ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  wait = 0;
  tmp = adf_dev_started(accel_dev);
  if (tmp == 0) {
    tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& accel_dev->status));
    if (tmp___0 == 0) {
      return (0);
    } else {
    }
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& accel_dev->status));
  clear_bit(3L, (unsigned long volatile *)(& accel_dev->status));
  tmp___1 = qat_algs_unregister();
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to unregister crypto algs\n");
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31788;
  ldv_31787:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31786;
  } else {
  }
  tmp___2 = variable_test_bit((long )accel_dev->accel_id, (unsigned long const volatile *)(& service->start_status));
  if (tmp___2 == 0) {
    goto ldv_31786;
  } else {
  }
  ret = (*(service->event_hld))(accel_dev, 2);
  if (ret == 0) {
    clear_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->start_status));
  } else
  if (ret == -11) {
    wait = 1;
    clear_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->start_status));
  } else {
  }
  ldv_31786:
  list_itr = list_itr->next;
  ldv_31788: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31787;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31794;
  ldv_31793:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31792;
  } else {
  }
  tmp___3 = variable_test_bit((long )accel_dev->accel_id, (unsigned long const volatile *)(& service->start_status));
  if (tmp___3 == 0) {
    goto ldv_31792;
  } else {
  }
  tmp___4 = (*(service->event_hld))(accel_dev, 2);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to shutdown service %s\n", service->name);
  } else {
    clear_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->start_status));
  }
  ldv_31792:
  list_itr = list_itr->next;
  ldv_31794: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31793;
  } else {
  }
  if ((int )wait) {
    msleep(100U);
  } else {
  }
  tmp___6 = constant_test_bit(6L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp___6 != 0) {
    tmp___5 = adf_ae_stop(accel_dev);
    if (tmp___5 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "failed to stop AE\n");
    } else {
      clear_bit(6L, (unsigned long volatile *)(& accel_dev->status));
    }
  } else {
  }
  return (0);
}
}
static char const __kstrtab_adf_dev_stop[13U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', '_',
        's', 't', 'o', 'p',
        '\000'};
struct kernel_symbol const __ksymtab_adf_dev_stop ;
struct kernel_symbol const __ksymtab_adf_dev_stop = {(unsigned long )(& adf_dev_stop), (char const *)(& __kstrtab_adf_dev_stop)};
void adf_dev_shutdown(struct adf_accel_dev *accel_dev )
{
  struct adf_hw_device_data *hw_data ;
  struct service_hndl *service ;
  struct list_head *list_itr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  hw_data = accel_dev->hw_device;
  if ((unsigned long )hw_data == (unsigned long )((struct adf_hw_device_data *)0)) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "QAT: Failed to shutdown device - hw_data not set\n");
    return;
  } else {
  }
  tmp = constant_test_bit(5L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp != 0) {
    adf_ae_fw_release(accel_dev);
    clear_bit(5L, (unsigned long volatile *)(& accel_dev->status));
  } else {
  }
  tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp___1 != 0) {
    tmp___0 = adf_ae_shutdown(accel_dev);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Failed to shutdown Accel Engine\n");
    } else {
      clear_bit(4L, (unsigned long volatile *)(& accel_dev->status));
    }
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31813;
  ldv_31812:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31811;
  } else {
  }
  tmp___2 = variable_test_bit((long )accel_dev->accel_id, (unsigned long const volatile *)(& service->init_status));
  if (tmp___2 == 0) {
    goto ldv_31811;
  } else {
  }
  tmp___3 = (*(service->event_hld))(accel_dev, 3);
  if (tmp___3 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to shutdown service %s\n", service->name);
  } else {
    clear_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->init_status));
  }
  ldv_31811:
  list_itr = list_itr->next;
  ldv_31813: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31812;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31819;
  ldv_31818:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31817;
  } else {
  }
  tmp___4 = variable_test_bit((long )accel_dev->accel_id, (unsigned long const volatile *)(& service->init_status));
  if (tmp___4 == 0) {
    goto ldv_31817;
  } else {
  }
  tmp___5 = (*(service->event_hld))(accel_dev, 3);
  if (tmp___5 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to shutdown service %s\n", service->name);
  } else {
    clear_bit((long )accel_dev->accel_id, (unsigned long volatile *)(& service->init_status));
  }
  ldv_31817:
  list_itr = list_itr->next;
  ldv_31819: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31818;
  } else {
  }
  tmp___6 = constant_test_bit(8L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp___6 != 0) {
    (*(hw_data->free_irq))(accel_dev);
    clear_bit(8L, (unsigned long volatile *)(& accel_dev->status));
  } else {
  }
  tmp___7 = constant_test_bit(0L, (unsigned long const volatile *)(& accel_dev->status));
  if (tmp___7 == 0) {
    adf_cfg_del_all(accel_dev);
  } else {
  }
  if ((unsigned long )hw_data->exit_arb != (unsigned long )((void (*)(struct adf_accel_dev * ))0)) {
    (*(hw_data->exit_arb))(accel_dev);
  } else {
  }
  if ((unsigned long )hw_data->exit_admin_comms != (unsigned long )((void (*)(struct adf_accel_dev * ))0)) {
    (*(hw_data->exit_admin_comms))(accel_dev);
  } else {
  }
  adf_cleanup_etr_data(accel_dev);
  return;
}
}
static char const __kstrtab_adf_dev_shutdown[17U] =
  { 'a', 'd', 'f', '_',
        'd', 'e', 'v', '_',
        's', 'h', 'u', 't',
        'd', 'o', 'w', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_adf_dev_shutdown ;
struct kernel_symbol const __ksymtab_adf_dev_shutdown = {(unsigned long )(& adf_dev_shutdown), (char const *)(& __kstrtab_adf_dev_shutdown)};
int adf_dev_restarting_notify(struct adf_accel_dev *accel_dev )
{
  struct service_hndl *service ;
  struct list_head *list_itr ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  list_itr = service_table.next;
  goto ldv_31837;
  ldv_31836:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31835;
  } else {
  }
  tmp = (*(service->event_hld))(accel_dev, 4);
  if (tmp != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to restart service %s.\n", service->name);
  } else {
  }
  ldv_31835:
  list_itr = list_itr->next;
  ldv_31837: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31836;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31843;
  ldv_31842:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31841;
  } else {
  }
  tmp___0 = (*(service->event_hld))(accel_dev, 4);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to restart service %s.\n", service->name);
  } else {
  }
  ldv_31841:
  list_itr = list_itr->next;
  ldv_31843: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31842;
  } else {
  }
  return (0);
}
}
int adf_dev_restarted_notify(struct adf_accel_dev *accel_dev )
{
  struct service_hndl *service ;
  struct list_head *list_itr ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  list_itr = service_table.next;
  goto ldv_31854;
  ldv_31853:
  __mptr = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr + 0xffffffffffffffe0UL;
  if (service->admin != 0) {
    goto ldv_31852;
  } else {
  }
  tmp = (*(service->event_hld))(accel_dev, 5);
  if (tmp != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to restart service %s.\n", service->name);
  } else {
  }
  ldv_31852:
  list_itr = list_itr->next;
  ldv_31854: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31853;
  } else {
  }
  list_itr = service_table.next;
  goto ldv_31860;
  ldv_31859:
  __mptr___0 = (struct list_head const *)list_itr;
  service = (struct service_hndl *)__mptr___0 + 0xffffffffffffffe0UL;
  if (service->admin == 0) {
    goto ldv_31858;
  } else {
  }
  tmp___0 = (*(service->event_hld))(accel_dev, 5);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to restart service %s.\n", service->name);
  } else {
  }
  ldv_31858:
  list_itr = list_itr->next;
  ldv_31860: ;
  if ((unsigned long )list_itr != (unsigned long )(& service_table)) {
    goto ldv_31859;
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_124(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_125(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_126(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_127(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_128(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_157(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_159(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_158(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_161(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_160(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
int qat_hal_init(struct adf_accel_dev *accel_dev ) ;
void qat_hal_deinit(struct icp_qat_fw_loader_handle *handle ) ;
void qat_hal_start(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask ) ;
void qat_hal_stop(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask ) ;
void qat_hal_reset(struct icp_qat_fw_loader_handle *handle ) ;
int qat_hal_clr_reset(struct icp_qat_fw_loader_handle *handle ) ;
int qat_uclo_wr_all_uimage(struct icp_qat_fw_loader_handle *handle ) ;
void qat_uclo_del_uof_obj(struct icp_qat_fw_loader_handle *handle ) ;
int qat_uclo_map_uof_obj(struct icp_qat_fw_loader_handle *handle , void *addr_ptr ,
                         int mem_size ) ;
int adf_ae_fw_load(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  struct adf_hw_device_data *hw_device ;
  void *uof_addr ;
  uint32_t uof_size ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  loader_data = accel_dev->fw_loader;
  hw_device = accel_dev->hw_device;
  tmp = request_firmware(& loader_data->uof_fw, hw_device->fw_name, & (accel_dev->accel_pci_dev.pci_dev)->dev);
  if (tmp != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to load firmware %s\n", hw_device->fw_name);
    return (-14);
  } else {
  }
  uof_size = (uint32_t )(loader_data->uof_fw)->size;
  uof_addr = (void *)(loader_data->uof_fw)->data;
  tmp___0 = qat_uclo_map_uof_obj(loader_data->fw_loader, uof_addr, (int )uof_size);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to map UOF\n");
    goto out_err;
  } else {
  }
  tmp___1 = qat_uclo_wr_all_uimage(loader_data->fw_loader);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to map UOF\n");
    goto out_err;
  } else {
  }
  return (0);
  out_err:
  adf_ae_fw_release(accel_dev);
  return (-14);
}
}
void adf_ae_fw_release(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  {
  loader_data = accel_dev->fw_loader;
  qat_uclo_del_uof_obj(loader_data->fw_loader);
  qat_hal_deinit(loader_data->fw_loader);
  release_firmware(loader_data->uof_fw);
  loader_data->uof_fw = (struct firmware const *)0;
  loader_data->fw_loader = (struct icp_qat_fw_loader_handle *)0;
  return;
}
}
int adf_ae_start(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  struct adf_hw_device_data *hw_data ;
  uint32_t ae_ctr ;
  uint32_t ae ;
  uint32_t max_aes ;
  {
  loader_data = accel_dev->fw_loader;
  hw_data = accel_dev->hw_device;
  max_aes = (uint32_t )(accel_dev->hw_device)->num_engines;
  ae = 0U;
  ae_ctr = 0U;
  goto ldv_31720;
  ldv_31719: ;
  if (((int )hw_data->ae_mask >> (int )ae) & 1) {
    qat_hal_start(loader_data->fw_loader, (int )((unsigned char )ae), 255U);
    ae_ctr = ae_ctr + 1U;
  } else {
  }
  ae = ae + 1U;
  ldv_31720: ;
  if (ae < max_aes) {
    goto ldv_31719;
  } else {
  }
  _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "qat_dev%d started %d acceleration engines\n", (int )accel_dev->accel_id,
            ae_ctr);
  return (0);
}
}
int adf_ae_stop(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  struct adf_hw_device_data *hw_data ;
  uint32_t ae_ctr ;
  uint32_t ae ;
  uint32_t max_aes ;
  {
  loader_data = accel_dev->fw_loader;
  hw_data = accel_dev->hw_device;
  max_aes = (uint32_t )(accel_dev->hw_device)->num_engines;
  ae = 0U;
  ae_ctr = 0U;
  goto ldv_31731;
  ldv_31730: ;
  if (((int )hw_data->ae_mask >> (int )ae) & 1) {
    qat_hal_stop(loader_data->fw_loader, (int )((unsigned char )ae), 255U);
    ae_ctr = ae_ctr + 1U;
  } else {
  }
  ae = ae + 1U;
  ldv_31731: ;
  if (ae < max_aes) {
    goto ldv_31730;
  } else {
  }
  _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "qat_dev%d stopped %d acceleration engines\n", (int )accel_dev->accel_id,
            ae_ctr);
  return (0);
}
}
static int adf_ae_reset(struct adf_accel_dev *accel_dev , int ae )
{
  struct adf_fw_loader_data *loader_data ;
  int tmp ;
  {
  loader_data = accel_dev->fw_loader;
  qat_hal_reset(loader_data->fw_loader);
  tmp = qat_hal_clr_reset(loader_data->fw_loader);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
int adf_ae_init(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = kzalloc(16UL, 208U);
  loader_data = (struct adf_fw_loader_data *)tmp;
  if ((unsigned long )loader_data == (unsigned long )((struct adf_fw_loader_data *)0)) {
    return (-12);
  } else {
  }
  accel_dev->fw_loader = loader_data;
  tmp___0 = qat_hal_init(accel_dev);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to init the AEs\n");
    kfree((void const *)loader_data);
    return (-14);
  } else {
  }
  tmp___1 = adf_ae_reset(accel_dev, 0);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to reset the AEs\n");
    qat_hal_deinit(loader_data->fw_loader);
    kfree((void const *)loader_data);
    return (-14);
  } else {
  }
  return (0);
}
}
int adf_ae_shutdown(struct adf_accel_dev *accel_dev )
{
  struct adf_fw_loader_data *loader_data ;
  {
  loader_data = accel_dev->fw_loader;
  qat_hal_deinit(loader_data->fw_loader);
  kfree((void const *)accel_dev->fw_loader);
  accel_dev->fw_loader = (struct adf_fw_loader_data *)0;
  return (0);
}
}
bool ldv_queue_work_on_157(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_158(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_159(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_160(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_161(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_204(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_190(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_193(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_190(8192, wq, work);
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void invoke_work_1(void) ;
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
extern int pci_wait_for_pending_transaction(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
int adf_enable_aer(struct adf_accel_dev *accel_dev , struct pci_driver *adf ) ;
void adf_disable_aer(struct adf_accel_dev *accel_dev ) ;
static struct workqueue_struct *device_reset_wq ;
static pci_ers_result_t adf_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct adf_accel_dev *accel_dev ;
  struct adf_accel_dev *tmp ;
  {
  tmp = adf_devmgr_pci_to_accel_dev(pdev);
  accel_dev = tmp;
  _dev_info((struct device const *)(& pdev->dev), "Acceleration driver hardware error detected.\n");
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t find acceleration device\n");
    return (4U);
  } else {
  }
  if (state == 3U) {
    dev_err((struct device const *)(& pdev->dev), "Can\'t recover from device error\n");
    return (4U);
  } else {
  }
  return (3U);
}
}
static void adf_dev_restore(struct adf_accel_dev *accel_dev )
{
  struct pci_dev *pdev ;
  struct pci_dev *parent ;
  uint16_t bridge_ctl ;
  int tmp ;
  {
  pdev = accel_dev->accel_pci_dev.pci_dev;
  parent = (pdev->bus)->self;
  bridge_ctl = 0U;
  _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Resetting device qat_dev%d\n", (int )accel_dev->accel_id);
  tmp = pci_wait_for_pending_transaction(pdev);
  if (tmp == 0) {
    _dev_info((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Transaction still in progress. Proceeding\n");
  } else {
  }
  pci_read_config_word((struct pci_dev const *)parent, 62, & bridge_ctl);
  bridge_ctl = (uint16_t )((unsigned int )bridge_ctl | 64U);
  pci_write_config_word((struct pci_dev const *)parent, 62, (int )bridge_ctl);
  msleep(100U);
  bridge_ctl = (unsigned int )bridge_ctl & 65471U;
  pci_write_config_word((struct pci_dev const *)parent, 62, (int )bridge_ctl);
  msleep(100U);
  pci_restore_state(pdev);
  pci_save_state(pdev);
  return;
}
}
static void adf_device_reset_worker(struct work_struct *work )
{
  struct adf_reset_dev_data *reset_data ;
  struct work_struct const *__mptr ;
  struct adf_accel_dev *accel_dev ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  reset_data = (struct adf_reset_dev_data *)__mptr + 0xffffffffffffff90UL;
  accel_dev = reset_data->accel_dev;
  adf_dev_restarting_notify(accel_dev);
  adf_dev_stop(accel_dev);
  adf_dev_shutdown(accel_dev);
  adf_dev_restore(accel_dev);
  tmp___0 = adf_dev_init(accel_dev);
  if (tmp___0 != 0) {
    goto _L;
  } else {
    tmp___1 = adf_dev_start(accel_dev);
    if (tmp___1 != 0) {
      _L:
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Restart device failed\n");
      kfree((void const *)reset_data);
      __ret_warn_on = 1;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/7982/dscv_tempdir/dscv/ri/43_2a/drivers/crypto/qat/qat_common/adf_aer.c",
                          123, "QAT: device restart failed. Device is unusable\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      return;
    } else {
    }
  }
  adf_dev_restarted_notify(accel_dev);
  clear_bit(0L, (unsigned long volatile *)(& accel_dev->status));
  if (reset_data->mode == 1) {
    complete(& reset_data->compl);
  } else {
    kfree((void const *)reset_data);
  }
  return;
}
}
static int adf_dev_aer_schedule_reset(struct adf_accel_dev *accel_dev , enum adf_dev_reset_mode mode )
{
  struct adf_reset_dev_data *reset_data ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  int ret ;
  unsigned long wait_jiffies ;
  unsigned long tmp___2 ;
  unsigned long timeout ;
  unsigned long tmp___3 ;
  {
  tmp = adf_dev_started(accel_dev);
  if (tmp == 0) {
    return (0);
  } else {
    tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& accel_dev->status));
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
  }
  set_bit(0L, (unsigned long volatile *)(& accel_dev->status));
  tmp___1 = kzalloc(192UL, 32U);
  reset_data = (struct adf_reset_dev_data *)tmp___1;
  if ((unsigned long )reset_data == (unsigned long )((struct adf_reset_dev_data *)0)) {
    return (-12);
  } else {
  }
  reset_data->accel_dev = accel_dev;
  init_completion(& reset_data->compl);
  reset_data->mode = (int )mode;
  __init_work(& reset_data->reset_work, 0);
  __constr_expr_0.counter = 137438953408L;
  reset_data->reset_work.data = __constr_expr_0;
  lockdep_init_map(& reset_data->reset_work.lockdep_map, "(&reset_data->reset_work)",
                   & __key, 0);
  INIT_LIST_HEAD(& reset_data->reset_work.entry);
  reset_data->reset_work.func = & adf_device_reset_worker;
  queue_work(device_reset_wq, & reset_data->reset_work);
  if ((unsigned int )mode == 1U) {
    ret = 0;
    tmp___2 = msecs_to_jiffies(10000U);
    wait_jiffies = tmp___2;
    tmp___3 = wait_for_completion_timeout(& reset_data->compl, wait_jiffies);
    timeout = tmp___3;
    if (timeout == 0UL) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Reset device timeout expired\n");
      ret = -14;
    } else {
    }
    kfree((void const *)reset_data);
    return (ret);
  } else {
  }
  return (0);
}
}
static pci_ers_result_t adf_slot_reset(struct pci_dev *pdev )
{
  struct adf_accel_dev *accel_dev ;
  struct adf_accel_dev *tmp ;
  int tmp___0 ;
  {
  tmp = adf_devmgr_pci_to_accel_dev(pdev);
  accel_dev = tmp;
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    printk("\vQAT: Can\'t find acceleration device\n");
    return (4U);
  } else {
  }
  pci_cleanup_aer_uncorrect_error_status(pdev);
  tmp___0 = adf_dev_aer_schedule_reset(accel_dev, 1);
  if (tmp___0 != 0) {
    return (4U);
  } else {
  }
  return (5U);
}
}
static void adf_resume(struct pci_dev *pdev )
{
  {
  _dev_info((struct device const *)(& pdev->dev), "Acceleration driver reset completed\n");
  _dev_info((struct device const *)(& pdev->dev), "Device is up and runnig\n");
  return;
}
}
static struct pci_error_handlers adf_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& adf_error_detected),
    0, 0, & adf_slot_reset, 0, & adf_resume};
int adf_enable_aer(struct adf_accel_dev *accel_dev , struct pci_driver *adf )
{
  struct pci_dev *pdev ;
  {
  pdev = accel_dev->accel_pci_dev.pci_dev;
  adf->err_handler = (struct pci_error_handlers const *)(& adf_err_handler);
  pci_enable_pcie_error_reporting(pdev);
  return (0);
}
}
static char const __kstrtab_adf_enable_aer[15U] =
  { 'a', 'd', 'f', '_',
        'e', 'n', 'a', 'b',
        'l', 'e', '_', 'a',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_adf_enable_aer ;
struct kernel_symbol const __ksymtab_adf_enable_aer = {(unsigned long )(& adf_enable_aer), (char const *)(& __kstrtab_adf_enable_aer)};
void adf_disable_aer(struct adf_accel_dev *accel_dev )
{
  struct pci_dev *pdev ;
  {
  pdev = accel_dev->accel_pci_dev.pci_dev;
  pci_disable_pcie_error_reporting(pdev);
  return;
}
}
static char const __kstrtab_adf_disable_aer[16U] =
  { 'a', 'd', 'f', '_',
        'd', 'i', 's', 'a',
        'b', 'l', 'e', '_',
        'a', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_adf_disable_aer ;
struct kernel_symbol const __ksymtab_adf_disable_aer = {(unsigned long )(& adf_disable_aer), (char const *)(& __kstrtab_adf_disable_aer)};
int adf_init_aer(void)
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  __lock_name = "\"%s\"(\"qat_device_reset_wq\")";
  tmp = __alloc_workqueue_key("%s", 8U, 1, & __key, __lock_name, (char *)"qat_device_reset_wq");
  device_reset_wq = tmp;
  return ((unsigned long )device_reset_wq == (unsigned long )((struct workqueue_struct *)0) ? -14 : 0);
}
}
void adf_exit_aer(void)
{
  {
  if ((unsigned long )device_reset_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_204(device_reset_wq);
  } else {
  }
  device_reset_wq = (struct workqueue_struct *)0;
  return;
}
}
extern int ldv_suspend_6(void) ;
extern int ldv_release_6(void) ;
extern int ldv_probe_6(void) ;
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    adf_device_reset_worker(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    adf_device_reset_worker(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    adf_device_reset_worker(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    adf_device_reset_worker(work);
    ldv_work_1_3 = 1;
    return;
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
void ldv_initialize_pci_error_handlers_6(void)
{
  {
  adf_err_handler_group0 = ldv_malloc(sizeof(struct pci_dev));
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
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    adf_device_reset_worker(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_27895;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    adf_device_reset_worker(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_27895;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    adf_device_reset_worker(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_27895;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    adf_device_reset_worker(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_27895;
  default:
  ldv_stop();
  }
  ldv_27895: ;
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
void ldv_main_exported_6(void)
{
  enum pci_channel_state ldvarg0 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    adf_slot_reset(adf_err_handler_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    adf_slot_reset(adf_err_handler_group0);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    adf_slot_reset(adf_err_handler_group0);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27909;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    adf_error_detected(adf_err_handler_group0, (pci_channel_state_t )ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  if (ldv_state_variable_6 == 3) {
    adf_error_detected(adf_err_handler_group0, (pci_channel_state_t )ldvarg0);
    ldv_state_variable_6 = 3;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    adf_error_detected(adf_err_handler_group0, (pci_channel_state_t )ldvarg0);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27909;
  case 2: ;
  if (ldv_state_variable_6 == 3) {
    adf_resume(adf_err_handler_group0);
    ldv_state_variable_6 = 2;
  } else {
  }
  goto ldv_27909;
  case 3: ;
  if (ldv_state_variable_6 == 2) {
    ldv_suspend_6();
    ldv_state_variable_6 = 3;
  } else {
  }
  goto ldv_27909;
  case 4: ;
  if (ldv_state_variable_6 == 3) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_6 == 2) {
    ldv_release_6();
    ldv_state_variable_6 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_27909;
  case 5: ;
  if (ldv_state_variable_6 == 1) {
    ldv_probe_6();
    ldv_state_variable_6 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_27909;
  default:
  ldv_stop();
  }
  ldv_27909: ;
  return;
}
}
bool ldv_queue_work_on_190(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_193(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_204(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
extern int kstrtouint(char const * , unsigned int , unsigned int * ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *memset(void * , int , size_t ) ;
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
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
__inline static void ldv_spin_lock_215(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_216(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_219(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_220(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock ) ;
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_226(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_229(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_228(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static unsigned int __readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)));
  return (ret);
}
}
__inline static void __writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)));
  return;
}
}
__inline static void *kzalloc_node(size_t size , gfp_t flags , int node ) ;
int adf_create_ring(struct adf_accel_dev *accel_dev , char const *section , uint32_t bank_num ,
                    uint32_t num_msgs , uint32_t msg_size , char const *ring_name ,
                    void (*callback)(void * ) , int poll_mode , struct adf_etr_ring_data **ring_ptr ) ;
int adf_send_message(struct adf_etr_ring_data *ring , uint32_t *msg ) ;
void adf_remove_ring(struct adf_etr_ring_data *ring ) ;
void adf_response_handler(unsigned long bank_addr ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
int adf_bank_debugfs_add(struct adf_etr_bank_data *bank ) ;
void adf_bank_debugfs_rm(struct adf_etr_bank_data *bank ) ;
int adf_ring_debugfs_add(struct adf_etr_ring_data *ring , char const *name ) ;
void adf_ring_debugfs_rm(struct adf_etr_ring_data *ring ) ;
__inline static int dev_to_node(struct device *dev )
{
  {
  return (dev->numa_node);
}
}
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
__inline static uint32_t adf_modulo(uint32_t data , uint32_t shift )
{
  uint32_t div ;
  uint32_t mult ;
  {
  div = data >> (int )shift;
  mult = div << (int )shift;
  return (data - mult);
}
}
__inline static int adf_check_ring_alignment(uint64_t addr , uint64_t size )
{
  {
  if (((size - 1ULL) & addr) != 0ULL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int adf_verify_ring_size(uint32_t msg_size , uint32_t msg_num )
{
  int i ;
  {
  i = 1;
  goto ldv_33428;
  ldv_33427: ;
  if (msg_size * msg_num == (uint32_t )((1 << (i + -1)) << 7)) {
    return (i);
  } else {
  }
  i = i + 1;
  ldv_33428: ;
  if (i <= 16) {
    goto ldv_33427;
  } else {
  }
  return (8);
}
}
static int adf_reserve_ring(struct adf_etr_bank_data *bank , uint32_t ring )
{
  {
  spin_lock(& bank->lock);
  if (((int )bank->ring_mask >> (int )ring) & 1) {
    spin_unlock(& bank->lock);
    return (-14);
  } else {
  }
  bank->ring_mask = (uint16_t )((int )((short )bank->ring_mask) | (int )((short )(1 << (int )ring)));
  spin_unlock(& bank->lock);
  return (0);
}
}
static void adf_unreserve_ring(struct adf_etr_bank_data *bank , uint32_t ring )
{
  {
  spin_lock(& bank->lock);
  bank->ring_mask = (uint16_t )((int )((short )bank->ring_mask) & ~ ((int )((short )(1 << (int )ring))));
  spin_unlock(& bank->lock);
  return;
}
}
static void adf_enable_ring_irq(struct adf_etr_bank_data *bank , uint32_t ring )
{
  {
  spin_lock_bh(& bank->lock);
  bank->irq_mask = (uint16_t )((int )((short )bank->irq_mask) | (int )((short )(1 << (int )ring)));
  spin_unlock_bh(& bank->lock);
  __writel((unsigned int )bank->irq_mask, (void volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + 380UL)));
  __writel(bank->irq_coalesc_timer | 2147483648U, (void volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + 384UL)));
  return;
}
}
static void adf_disable_ring_irq(struct adf_etr_bank_data *bank , uint32_t ring )
{
  {
  spin_lock_bh(& bank->lock);
  bank->irq_mask = (uint16_t )((int )((short )bank->irq_mask) & ~ ((int )((short )(1 << (int )ring))));
  spin_unlock_bh(& bank->lock);
  __writel((unsigned int )bank->irq_mask, (void volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + 380UL)));
  return;
}
}
int adf_send_message(struct adf_etr_ring_data *ring , uint32_t *msg )
{
  int tmp ;
  uint32_t tmp___0 ;
  {
  tmp = atomic_add_return(1, ring->inflights);
  if (tmp > (((1 << ((int )ring->ring_size + -1)) << 3) >> ((((((int )ring->msg_size & 4) >> 1) | (((int )ring->msg_size & 4) >> 2)) | (int )ring->msg_size) & -5)) + -1) {
    atomic_dec(ring->inflights);
    return (-11);
  } else {
  }
  spin_lock_bh(& ring->lock);
  memcpy(ring->base_addr + (unsigned long )ring->tail, (void const *)msg, (size_t )((int )ring->msg_size << 5));
  tmp___0 = adf_modulo((uint32_t )((int )ring->tail + ((int )ring->msg_size << 5)),
                       (uint32_t )((int )ring->ring_size + 6));
  ring->tail = (uint16_t )tmp___0;
  __writel((unsigned int )ring->tail, (void volatile *)((ring->bank)->csr_addr + (((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 256UL)));
  spin_unlock_bh(& ring->lock);
  return (0);
}
}
static int adf_handle_response(struct adf_etr_ring_data *ring )
{
  uint32_t msg_counter ;
  uint32_t *msg ;
  uint32_t tmp ;
  {
  msg_counter = 0U;
  msg = (uint32_t *)ring->base_addr + (unsigned long )ring->head;
  goto ldv_33456;
  ldv_33455:
  (*(ring->callback))((void *)msg);
  *msg = 2139062143U;
  tmp = adf_modulo((uint32_t )((int )ring->head + ((int )ring->msg_size << 5)), (uint32_t )((int )ring->ring_size + 6));
  ring->head = (uint16_t )tmp;
  msg_counter = msg_counter + 1U;
  msg = (uint32_t *)ring->base_addr + (unsigned long )ring->head;
  ldv_33456: ;
  if (*msg != 2139062143U) {
    goto ldv_33455;
  } else {
  }
  if (msg_counter != 0U) {
    __writel((unsigned int )ring->head, (void volatile *)((ring->bank)->csr_addr + (((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 192UL)));
    atomic_sub((int )msg_counter, ring->inflights);
  } else {
  }
  return (0);
}
}
static void adf_configure_tx_ring(struct adf_etr_ring_data *ring )
{
  uint32_t ring_config ;
  {
  ring_config = (uint32_t )ring->ring_size;
  __writel(ring_config, (void volatile *)((ring->bank)->csr_addr + ((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2))));
  return;
}
}
static void adf_configure_rx_ring(struct adf_etr_ring_data *ring )
{
  uint32_t ring_config ;
  {
  ring_config = (uint32_t )((int )ring->ring_size | 8192);
  __writel(ring_config, (void volatile *)((ring->bank)->csr_addr + ((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2))));
  return;
}
}
static int adf_init_ring(struct adf_etr_ring_data *ring )
{
  struct adf_etr_bank_data *bank ;
  struct adf_accel_dev *accel_dev ;
  struct adf_hw_device_data *hw_data ;
  uint64_t ring_base ;
  uint32_t ring_size_bytes ;
  int tmp ;
  uint32_t l_base ;
  uint32_t u_base ;
  struct lock_class_key __key ;
  {
  bank = ring->bank;
  accel_dev = bank->accel_dev;
  hw_data = accel_dev->hw_device;
  ring_size_bytes = (uint32_t )((1 << ((int )ring->ring_size + -1)) << 7);
  ring_size_bytes = 6U > ring_size_bytes ? 6U : ring_size_bytes;
  ring->base_addr = dma_alloc_attrs(& (accel_dev->accel_pci_dev.pci_dev)->dev, (size_t )ring_size_bytes,
                                    & ring->dma_addr, 208U, (struct dma_attrs *)0);
  if ((unsigned long )ring->base_addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  memset(ring->base_addr, 127, (size_t )ring_size_bytes);
  tmp = adf_check_ring_alignment(ring->dma_addr, (uint64_t )ring_size_bytes);
  if (tmp != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Ring address not aligned\n");
    dma_free_attrs(& (accel_dev->accel_pci_dev.pci_dev)->dev, (size_t )ring_size_bytes,
                   ring->base_addr, ring->dma_addr, (struct dma_attrs *)0);
    return (-14);
  } else {
  }
  if (((int )hw_data->tx_rings_mask >> (int )ring->ring_number) & 1) {
    adf_configure_tx_ring(ring);
  } else {
    adf_configure_rx_ring(ring);
  }
  ring_base = (ring->dma_addr >> 6) & (0xffffffffffffffffULL << (int )ring->ring_size);
  l_base = 0U;
  u_base = 0U;
  l_base = (unsigned int )ring_base;
  u_base = (unsigned int )(ring_base >> 32);
  __writel(l_base, (void volatile *)((ring->bank)->csr_addr + (((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 64UL)));
  __writel(u_base, (void volatile *)((ring->bank)->csr_addr + (((unsigned long )((ring->bank)->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 128UL)));
  spinlock_check(& ring->lock);
  __raw_spin_lock_init(& ring->lock.__annonCompField18.rlock, "&(&ring->lock)->rlock",
                       & __key);
  return (0);
}
}
static void adf_cleanup_ring(struct adf_etr_ring_data *ring )
{
  uint32_t ring_size_bytes ;
  {
  ring_size_bytes = (uint32_t )((1 << ((int )ring->ring_size + -1)) << 7);
  ring_size_bytes = 6U > ring_size_bytes ? 6U : ring_size_bytes;
  if ((unsigned long )ring->base_addr != (unsigned long )((void *)0)) {
    memset(ring->base_addr, 127, (size_t )ring_size_bytes);
    dma_free_attrs(& (((ring->bank)->accel_dev)->accel_pci_dev.pci_dev)->dev, (size_t )ring_size_bytes,
                   ring->base_addr, ring->dma_addr, (struct dma_attrs *)0);
  } else {
  }
  return;
}
}
int adf_create_ring(struct adf_accel_dev *accel_dev , char const *section , uint32_t bank_num ,
                    uint32_t num_msgs , uint32_t msg_size , char const *ring_name ,
                    void (*callback)(void * ) , int poll_mode , struct adf_etr_ring_data **ring_ptr )
{
  struct adf_etr_data *transport_data ;
  struct adf_etr_bank_data *bank ;
  struct adf_etr_ring_data *ring ;
  char val[64U] ;
  uint32_t ring_num ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  transport_data = accel_dev->transport;
  if ((uint32_t )(accel_dev->hw_device)->num_banks <= bank_num) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Invalid bank number\n");
    return (-14);
  } else {
  }
  if (msg_size > 128U) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Invalid msg size\n");
    return (-14);
  } else {
  }
  tmp = adf_verify_ring_size(msg_size, num_msgs);
  if ((((1 << (tmp + -1)) << 3) >> ((int )(((((msg_size >> 5) & 4U) >> 1) | (((msg_size >> 5) & 4U) >> 2)) | (msg_size >> 5)) & -5)) + -1 <= 1) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Invalid ring size for given msg size\n");
    return (-14);
  } else {
  }
  tmp___0 = adf_cfg_get_param_value(accel_dev, section, ring_name, (char *)(& val));
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Section %s, no such entry : %s\n", section, ring_name);
    return (-14);
  } else {
  }
  tmp___1 = kstrtouint((char const *)(& val), 10U, & ring_num);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Can\'t get ring number\n");
    return (-14);
  } else {
  }
  bank = transport_data->banks + (unsigned long )bank_num;
  tmp___2 = adf_reserve_ring(bank, ring_num);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Ring %d, %s already exists.\n", ring_num, ring_name);
    return (-14);
  } else {
  }
  ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )ring_num;
  ring->ring_number = (uint8_t )ring_num;
  ring->bank = bank;
  ring->callback = callback;
  ring->msg_size = (uint8_t )(msg_size >> 5);
  tmp___3 = adf_verify_ring_size(msg_size, num_msgs);
  ring->ring_size = (uint8_t )tmp___3;
  ring->head = 0U;
  ring->tail = 0U;
  atomic_set(ring->inflights, 0);
  ret = adf_init_ring(ring);
  if (ret != 0) {
    goto err;
  } else {
  }
  (*((accel_dev->hw_device)->hw_arb_ring_enable))(ring);
  tmp___4 = adf_ring_debugfs_add(ring, ring_name);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Couldn\'t add ring debugfs entry\n");
    ret = -14;
    goto err;
  } else {
  }
  if ((unsigned long )callback != (unsigned long )((void (*)(void * ))0) && poll_mode == 0) {
    adf_enable_ring_irq(bank, (uint32_t )ring->ring_number);
  } else {
  }
  *ring_ptr = ring;
  return (0);
  err:
  adf_cleanup_ring(ring);
  adf_unreserve_ring(bank, ring_num);
  (*((accel_dev->hw_device)->hw_arb_ring_disable))(ring);
  return (ret);
}
}
void adf_remove_ring(struct adf_etr_ring_data *ring )
{
  struct adf_etr_bank_data *bank ;
  struct adf_accel_dev *accel_dev ;
  uint32_t l_base ;
  uint32_t u_base ;
  {
  bank = ring->bank;
  accel_dev = bank->accel_dev;
  adf_disable_ring_irq(bank, (uint32_t )ring->ring_number);
  __writel(0U, (void volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2))));
  l_base = 0U;
  u_base = 0U;
  l_base = 0U;
  u_base = 0U;
  __writel(l_base, (void volatile *)(bank->csr_addr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 64UL)));
  __writel(u_base, (void volatile *)(bank->csr_addr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 128UL)));
  adf_ring_debugfs_rm(ring);
  adf_unreserve_ring(bank, (uint32_t )ring->ring_number);
  (*((accel_dev->hw_device)->hw_arb_ring_disable))(ring);
  adf_cleanup_ring(ring);
  return;
}
}
static void adf_ring_response_handler(struct adf_etr_bank_data *bank )
{
  uint32_t empty_rings ;
  uint32_t i ;
  {
  empty_rings = __readl((void const volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + 332UL)));
  empty_rings = ~ empty_rings & (uint32_t )bank->irq_mask;
  i = 0U;
  goto ldv_33512;
  ldv_33511: ;
  if (((uint32_t )(1 << (int )i) & empty_rings) != 0U) {
    adf_handle_response((struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_33512: ;
  if (i <= 15U) {
    goto ldv_33511;
  } else {
  }
  return;
}
}
void adf_response_handler(unsigned long bank_addr )
{
  struct adf_etr_bank_data *bank ;
  {
  bank = (struct adf_etr_bank_data *)bank_addr;
  adf_ring_response_handler(bank);
  __writel((unsigned int )bank->irq_mask, (void volatile *)(bank->csr_addr + ((unsigned long )(bank->bank_number * 4096U) + 388UL)));
  return;
}
}
static char const __kstrtab_adf_response_handler[21U] =
  { 'a', 'd', 'f', '_',
        'r', 'e', 's', 'p',
        'o', 'n', 's', 'e',
        '_', 'h', 'a', 'n',
        'd', 'l', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_adf_response_handler ;
struct kernel_symbol const __ksymtab_adf_response_handler = {(unsigned long )(& adf_response_handler), (char const *)(& __kstrtab_adf_response_handler)};
__inline static int adf_get_cfg_int(struct adf_accel_dev *accel_dev , char const *section ,
                                    char const *format , uint32_t key , uint32_t *value )
{
  char key_buf[64U] ;
  char val_buf[64U] ;
  int tmp ;
  int tmp___0 ;
  {
  snprintf((char *)(& key_buf), 64UL, format, key);
  tmp = adf_cfg_get_param_value(accel_dev, section, (char const *)(& key_buf), (char *)(& val_buf));
  if (tmp != 0) {
    return (-14);
  } else {
  }
  tmp___0 = kstrtouint((char const *)(& val_buf), 10U, value);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static void adf_get_coalesc_timer(struct adf_etr_bank_data *bank , char const *section ,
                                  uint32_t bank_num_in_accel )
{
  int tmp ;
  {
  tmp = adf_get_cfg_int(bank->accel_dev, section, "Bank%dInterruptCoalescingTimerNs",
                        bank_num_in_accel, & bank->irq_coalesc_timer);
  if (tmp != 0) {
    bank->irq_coalesc_timer = 10239U;
  } else {
  }
  if (bank->irq_coalesc_timer > 1048575U || bank->irq_coalesc_timer <= 510U) {
    bank->irq_coalesc_timer = 10239U;
  } else {
  }
  return;
}
}
static int adf_init_bank(struct adf_accel_dev *accel_dev , struct adf_etr_bank_data *bank ,
                         uint32_t bank_num , void *csr_addr )
{
  struct adf_hw_device_data *hw_data ;
  struct adf_etr_ring_data *ring ;
  struct adf_etr_ring_data *tx_ring ;
  uint32_t i ;
  uint32_t coalesc_enabled ;
  struct lock_class_key __key ;
  int tmp ;
  uint32_t l_base ;
  uint32_t u_base ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  hw_data = accel_dev->hw_device;
  coalesc_enabled = 0U;
  memset((void *)bank, 0, 2204UL);
  bank->bank_number = bank_num;
  bank->csr_addr = csr_addr;
  bank->accel_dev = accel_dev;
  spinlock_check(& bank->lock);
  __raw_spin_lock_init(& bank->lock.__annonCompField18.rlock, "&(&bank->lock)->rlock",
                       & __key);
  tmp = adf_get_cfg_int(accel_dev, "Accelerator0", "Bank%dInterruptCoalescingEnabled",
                        bank_num, & coalesc_enabled);
  if (tmp == 0 && coalesc_enabled != 0U) {
    adf_get_coalesc_timer(bank, "Accelerator0", bank_num);
  } else {
    bank->irq_coalesc_timer = 511U;
  }
  i = 0U;
  goto ldv_33555;
  ldv_33554:
  __writel(0U, (void volatile *)(csr_addr + ((unsigned long )(bank_num * 4096U) + (unsigned long )(i << 2))));
  l_base = 0U;
  u_base = 0U;
  l_base = 0U;
  u_base = 0U;
  __writel(l_base, (void volatile *)(csr_addr + (((unsigned long )(bank_num * 4096U) + (unsigned long )(i << 2)) + 64UL)));
  __writel(u_base, (void volatile *)(csr_addr + (((unsigned long )(bank_num * 4096U) + (unsigned long )(i << 2)) + 128UL)));
  ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )i;
  if (((int )hw_data->tx_rings_mask >> (int )i) & 1) {
    tmp___0 = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
    tmp___1 = kzalloc_node(4UL, 208U, tmp___0);
    ring->inflights = (atomic_t *)tmp___1;
    if ((unsigned long )ring->inflights == (unsigned long )((atomic_t *)0)) {
      goto err;
    } else {
    }
  } else {
    if ((uint32_t )hw_data->tx_rx_gap > i) {
      dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
              "Invalid tx rings mask config\n");
      goto err;
    } else {
    }
    tx_ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )(i - (uint32_t )hw_data->tx_rx_gap);
    ring->inflights = tx_ring->inflights;
  }
  i = i + 1U;
  ldv_33555: ;
  if (i <= 15U) {
    goto ldv_33554;
  } else {
  }
  tmp___2 = adf_bank_debugfs_add(bank);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Failed to add bank debugfs entry\n");
    goto err;
  } else {
  }
  __writel(1145324620U, (void volatile *)(csr_addr + ((unsigned long )(bank_num * 4096U) + 372UL)));
  __writel(1145324612U, (void volatile *)(csr_addr + ((unsigned long )(bank_num * 4096U) + 376UL)));
  return (0);
  err:
  i = 0U;
  goto ldv_33558;
  ldv_33557:
  ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )i;
  if (((int )hw_data->tx_rings_mask >> (int )i) & 1) {
    kfree((void const *)ring->inflights);
  } else {
  }
  i = i + 1U;
  ldv_33558: ;
  if (i <= 15U) {
    goto ldv_33557;
  } else {
  }
  return (-12);
}
}
int adf_init_etr_data(struct adf_accel_dev *accel_dev )
{
  struct adf_etr_data *etr_data ;
  struct adf_hw_device_data *hw_data ;
  void *csr_addr ;
  uint32_t size ;
  uint32_t num_banks ;
  int i ;
  int ret ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  uint32_t tmp___3 ;
  {
  hw_data = accel_dev->hw_device;
  num_banks = 0U;
  tmp = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
  tmp___0 = kzalloc_node(16UL, 208U, tmp);
  etr_data = (struct adf_etr_data *)tmp___0;
  if ((unsigned long )etr_data == (unsigned long )((struct adf_etr_data *)0)) {
    return (-12);
  } else {
  }
  num_banks = (uint32_t )(accel_dev->hw_device)->num_banks;
  size = num_banks * 2204U;
  tmp___1 = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
  tmp___2 = kzalloc_node((size_t )size, 208U, tmp___1);
  etr_data->banks = (struct adf_etr_bank_data *)tmp___2;
  if ((unsigned long )etr_data->banks == (unsigned long )((struct adf_etr_bank_data *)0)) {
    ret = -12;
    goto err_bank;
  } else {
  }
  accel_dev->transport = etr_data;
  tmp___3 = (*(hw_data->get_etr_bar_id))(hw_data);
  i = (int )tmp___3;
  csr_addr = accel_dev->accel_pci_dev.pci_bars[i].virt_addr;
  etr_data->debug = debugfs_create_dir("transport", accel_dev->debugfs_dir);
  if ((unsigned long )etr_data->debug == (unsigned long )((struct dentry *)0)) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "Unable to create transport debugfs entry\n");
    ret = -2;
    goto err_bank_debug;
  } else {
  }
  i = 0;
  goto ldv_33574;
  ldv_33573:
  ret = adf_init_bank(accel_dev, etr_data->banks + (unsigned long )i, (uint32_t )i,
                      csr_addr);
  if (ret != 0) {
    goto err_bank_all;
  } else {
  }
  i = i + 1;
  ldv_33574: ;
  if ((uint32_t )i < num_banks) {
    goto ldv_33573;
  } else {
  }
  return (0);
  err_bank_all:
  debugfs_remove(etr_data->debug);
  err_bank_debug:
  kfree((void const *)etr_data->banks);
  err_bank:
  kfree((void const *)etr_data);
  accel_dev->transport = (struct adf_etr_data *)0;
  return (ret);
}
}
static char const __kstrtab_adf_init_etr_data[18U] =
  { 'a', 'd', 'f', '_',
        'i', 'n', 'i', 't',
        '_', 'e', 't', 'r',
        '_', 'd', 'a', 't',
        'a', '\000'};
struct kernel_symbol const __ksymtab_adf_init_etr_data ;
struct kernel_symbol const __ksymtab_adf_init_etr_data = {(unsigned long )(& adf_init_etr_data), (char const *)(& __kstrtab_adf_init_etr_data)};
static void cleanup_bank(struct adf_etr_bank_data *bank )
{
  uint32_t i ;
  struct adf_accel_dev *accel_dev ;
  struct adf_hw_device_data *hw_data ;
  struct adf_etr_ring_data *ring ;
  {
  i = 0U;
  goto ldv_33591;
  ldv_33590:
  accel_dev = bank->accel_dev;
  hw_data = accel_dev->hw_device;
  ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )i;
  if (((int )bank->ring_mask >> (int )i) & 1) {
    adf_cleanup_ring(ring);
  } else {
  }
  if (((int )hw_data->tx_rings_mask >> (int )i) & 1) {
    kfree((void const *)ring->inflights);
  } else {
  }
  i = i + 1U;
  ldv_33591: ;
  if (i <= 15U) {
    goto ldv_33590;
  } else {
  }
  adf_bank_debugfs_rm(bank);
  memset((void *)bank, 0, 2204UL);
  return;
}
}
static void adf_cleanup_etr_handles(struct adf_accel_dev *accel_dev )
{
  struct adf_etr_data *etr_data ;
  uint32_t i ;
  uint32_t num_banks ;
  {
  etr_data = accel_dev->transport;
  num_banks = (uint32_t )(accel_dev->hw_device)->num_banks;
  i = 0U;
  goto ldv_33600;
  ldv_33599:
  cleanup_bank(etr_data->banks + (unsigned long )i);
  i = i + 1U;
  ldv_33600: ;
  if (i < num_banks) {
    goto ldv_33599;
  } else {
  }
  return;
}
}
void adf_cleanup_etr_data(struct adf_accel_dev *accel_dev )
{
  struct adf_etr_data *etr_data ;
  {
  etr_data = accel_dev->transport;
  if ((unsigned long )etr_data != (unsigned long )((struct adf_etr_data *)0)) {
    adf_cleanup_etr_handles(accel_dev);
    debugfs_remove(etr_data->debug);
    kfree((void const *)etr_data->banks);
    kfree((void const *)etr_data);
    accel_dev->transport = (struct adf_etr_data *)0;
  } else {
  }
  return;
}
}
static char const __kstrtab_adf_cleanup_etr_data[21U] =
  { 'a', 'd', 'f', '_',
        'c', 'l', 'e', 'a',
        'n', 'u', 'p', '_',
        'e', 't', 'r', '_',
        'd', 'a', 't', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_adf_cleanup_etr_data ;
struct kernel_symbol const __ksymtab_adf_cleanup_etr_data = {(unsigned long )(& adf_cleanup_etr_data), (char const *)(& __kstrtab_adf_cleanup_etr_data)};
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_215(lock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_bh_216(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_219(lock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_bh_220(lock);
  return;
}
}
bool ldv_queue_work_on_225(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_226(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_227(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_228(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_229(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static void *kzalloc_node(size_t size , gfp_t flags , int node )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
bool ldv_queue_work_on_258(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_260(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_259(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_262(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_261(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kzalloc_node(size_t size , gfp_t flags , int node ) ;
struct qat_crypto_instance *qat_crypto_get_instance_node(int node ) ;
void qat_crypto_put_instance(struct qat_crypto_instance *inst___0 ) ;
void qat_alg_callback(void *resp ) ;
static struct service_hndl qat_crypto ;
void qat_crypto_put_instance(struct qat_crypto_instance *inst___0 )
{
  int tmp ;
  {
  tmp = atomic_sub_return(1, & inst___0->refctr);
  if (tmp == 0) {
    adf_dev_put(inst___0->accel_dev);
  } else {
  }
  return;
}
}
static int qat_crypto_free_instances(struct adf_accel_dev *accel_dev )
{
  struct qat_crypto_instance *inst___0 ;
  struct list_head *list_ptr ;
  struct list_head *tmp ;
  int i ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  list_ptr = accel_dev->crypto_list.next;
  tmp = list_ptr->next;
  goto ldv_32042;
  ldv_32041:
  __mptr = (struct list_head const *)list_ptr;
  inst___0 = (struct qat_crypto_instance *)__mptr + 0xffffffffffffffc8UL;
  i = 0;
  goto ldv_32039;
  ldv_32038:
  qat_crypto_put_instance(inst___0);
  i = i + 1;
  ldv_32039:
  tmp___0 = atomic_read((atomic_t const *)(& inst___0->refctr));
  if (tmp___0 > i) {
    goto ldv_32038;
  } else {
  }
  if ((unsigned long )inst___0->sym_tx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->sym_tx);
  } else {
  }
  if ((unsigned long )inst___0->sym_rx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->sym_rx);
  } else {
  }
  if ((unsigned long )inst___0->pke_tx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->pke_tx);
  } else {
  }
  if ((unsigned long )inst___0->pke_rx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->pke_rx);
  } else {
  }
  if ((unsigned long )inst___0->rnd_tx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->rnd_tx);
  } else {
  }
  if ((unsigned long )inst___0->rnd_rx != (unsigned long )((struct adf_etr_ring_data *)0)) {
    adf_remove_ring(inst___0->rnd_rx);
  } else {
  }
  list_del(list_ptr);
  kfree((void const *)inst___0);
  list_ptr = tmp;
  tmp = list_ptr->next;
  ldv_32042: ;
  if ((unsigned long )(& accel_dev->crypto_list) != (unsigned long )list_ptr) {
    goto ldv_32041;
  } else {
  }
  return (0);
}
}
struct qat_crypto_instance *qat_crypto_get_instance_node(int node )
{
  struct adf_accel_dev *accel_dev ;
  struct qat_crypto_instance *inst_best ;
  struct list_head *itr ;
  unsigned long best ;
  struct list_head *tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head *tmp___3 ;
  int tmp___4 ;
  struct qat_crypto_instance *inst___0 ;
  unsigned long cur ;
  struct list_head const *__mptr___0 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  accel_dev = (struct adf_accel_dev *)0;
  inst_best = (struct qat_crypto_instance *)0;
  best = 0xffffffffffffffffUL;
  tmp = adf_devmgr_get_head();
  itr = tmp->next;
  goto ldv_32055;
  ldv_32054:
  __mptr = (struct list_head const *)itr;
  accel_dev = (struct adf_accel_dev *)__mptr + 0xffffffffffffffb4UL;
  tmp___0 = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
  if (tmp___0 == node) {
    goto _L;
  } else {
    tmp___1 = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
    if (tmp___1 < 0) {
      _L:
      tmp___2 = adf_dev_started(accel_dev);
      if (tmp___2 != 0) {
        goto ldv_32053;
      } else {
      }
    } else {
    }
  }
  accel_dev = (struct adf_accel_dev *)0;
  itr = itr->next;
  ldv_32055:
  tmp___3 = adf_devmgr_get_head();
  if ((unsigned long )tmp___3 != (unsigned long )itr) {
    goto ldv_32054;
  } else {
  }
  ldv_32053: ;
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    printk("\vQAT: Could not find a device on node %d\n", node);
    accel_dev = adf_devmgr_get_first();
  } else {
  }
  if ((unsigned long )accel_dev == (unsigned long )((struct adf_accel_dev *)0)) {
    return ((struct qat_crypto_instance *)0);
  } else {
    tmp___4 = adf_dev_started(accel_dev);
    if (tmp___4 == 0) {
      return ((struct qat_crypto_instance *)0);
    } else {
    }
  }
  itr = accel_dev->crypto_list.next;
  goto ldv_32061;
  ldv_32060:
  __mptr___0 = (struct list_head const *)itr;
  inst___0 = (struct qat_crypto_instance *)__mptr___0 + 0xffffffffffffffc8UL;
  tmp___5 = atomic_read((atomic_t const *)(& inst___0->refctr));
  cur = (unsigned long )tmp___5;
  if (best > cur) {
    inst_best = inst___0;
    best = cur;
  } else {
  }
  itr = itr->next;
  ldv_32061: ;
  if ((unsigned long )(& accel_dev->crypto_list) != (unsigned long )itr) {
    goto ldv_32060;
  } else {
  }
  if ((unsigned long )inst_best != (unsigned long )((struct qat_crypto_instance *)0)) {
    tmp___7 = atomic_add_return(1, & inst_best->refctr);
    if (tmp___7 == 1) {
      tmp___6 = adf_dev_get(accel_dev);
      if (tmp___6 != 0) {
        atomic_dec(& inst_best->refctr);
        dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
                "Could not increment dev refctr\n");
        return ((struct qat_crypto_instance *)0);
      } else {
      }
    } else {
    }
  } else {
  }
  return (inst_best);
}
}
static int qat_crypto_create_instances(struct adf_accel_dev *accel_dev )
{
  int i ;
  unsigned long bank ;
  unsigned long num_inst ;
  unsigned long num_msg_sym ;
  unsigned long num_msg_asym ;
  int msg_size ;
  struct qat_crypto_instance *inst___0 ;
  char key[64U] ;
  char val[64U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
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
  {
  INIT_LIST_HEAD(& accel_dev->crypto_list);
  strlcpy((char *)(& key), "NumberCyInstances", 64UL);
  tmp = adf_cfg_get_param_value(accel_dev, "KERNEL", (char const *)(& key), (char *)(& val));
  if (tmp != 0) {
    return (-14);
  } else {
  }
  tmp___0 = kstrtoul((char const *)(& val), 0U, & num_inst);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32077;
  ldv_32076:
  tmp___1 = dev_to_node(& (accel_dev->accel_pci_dev.pci_dev)->dev);
  tmp___2 = kzalloc_node(88UL, 208U, tmp___1);
  inst___0 = (struct qat_crypto_instance *)tmp___2;
  if ((unsigned long )inst___0 == (unsigned long )((struct qat_crypto_instance *)0)) {
    goto err;
  } else {
  }
  list_add_tail(& inst___0->list, & accel_dev->crypto_list);
  inst___0->id = i;
  atomic_set(& inst___0->refctr, 0);
  inst___0->accel_dev = accel_dev;
  snprintf((char *)(& key), 64UL, "Cy%dBankNumber", i);
  tmp___3 = adf_cfg_get_param_value(accel_dev, "KERNEL", (char const *)(& key),
                                    (char *)(& val));
  if (tmp___3 != 0) {
    goto err;
  } else {
  }
  tmp___4 = kstrtoul((char const *)(& val), 10U, & bank);
  if (tmp___4 != 0) {
    goto err;
  } else {
  }
  snprintf((char *)(& key), 64UL, "Cy%dNumConcurrentSymRequests", i);
  tmp___5 = adf_cfg_get_param_value(accel_dev, "KERNEL", (char const *)(& key),
                                    (char *)(& val));
  if (tmp___5 != 0) {
    goto err;
  } else {
  }
  tmp___6 = kstrtoul((char const *)(& val), 10U, & num_msg_sym);
  if (tmp___6 != 0) {
    goto err;
  } else {
  }
  num_msg_sym = num_msg_sym >> 1;
  snprintf((char *)(& key), 64UL, "Cy%dNumConcurrentAsymRequests", i);
  tmp___7 = adf_cfg_get_param_value(accel_dev, "KERNEL", (char const *)(& key),
                                    (char *)(& val));
  if (tmp___7 != 0) {
    goto err;
  } else {
  }
  tmp___8 = kstrtoul((char const *)(& val), 10U, & num_msg_asym);
  if (tmp___8 != 0) {
    goto err;
  } else {
  }
  num_msg_asym = num_msg_asym >> 1;
  msg_size = 128;
  snprintf((char *)(& key), 64UL, "Cy%dRingSymTx", i);
  tmp___9 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_sym,
                            (uint32_t )msg_size, (char const *)(& key), (void (*)(void * ))0,
                            0, & inst___0->sym_tx);
  if (tmp___9 != 0) {
    goto err;
  } else {
  }
  snprintf((char *)(& key), 64UL, "Cy%dRingNrbgTx", i);
  tmp___10 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_asym,
                             (uint32_t )msg_size, (char const *)(& key), (void (*)(void * ))0,
                             0, & inst___0->rnd_tx);
  if (tmp___10 != 0) {
    goto err;
  } else {
  }
  msg_size = msg_size >> 1;
  snprintf((char *)(& key), 64UL, "Cy%dRingAsymTx", i);
  tmp___11 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_asym,
                             (uint32_t )msg_size, (char const *)(& key), (void (*)(void * ))0,
                             0, & inst___0->pke_tx);
  if (tmp___11 != 0) {
    goto err;
  } else {
  }
  msg_size = 32;
  snprintf((char *)(& key), 64UL, "Cy%dRingSymRx", i);
  tmp___12 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_sym,
                             (uint32_t )msg_size, (char const *)(& key), & qat_alg_callback,
                             0, & inst___0->sym_rx);
  if (tmp___12 != 0) {
    goto err;
  } else {
  }
  snprintf((char *)(& key), 64UL, "Cy%dRingNrbgRx", i);
  tmp___13 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_asym,
                             (uint32_t )msg_size, (char const *)(& key), & qat_alg_callback,
                             0, & inst___0->rnd_rx);
  if (tmp___13 != 0) {
    goto err;
  } else {
  }
  snprintf((char *)(& key), 64UL, "Cy%dRingAsymRx", i);
  tmp___14 = adf_create_ring(accel_dev, "KERNEL", (uint32_t )bank, (uint32_t )num_msg_asym,
                             (uint32_t )msg_size, (char const *)(& key), & qat_alg_callback,
                             0, & inst___0->pke_rx);
  if (tmp___14 != 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_32077: ;
  if ((unsigned long )i < num_inst) {
    goto ldv_32076;
  } else {
  }
  return (0);
  err:
  qat_crypto_free_instances(accel_dev);
  return (-12);
}
}
static int qat_crypto_init(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = qat_crypto_create_instances(accel_dev);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int qat_crypto_shutdown(struct adf_accel_dev *accel_dev )
{
  int tmp ;
  {
  tmp = qat_crypto_free_instances(accel_dev);
  return (tmp);
}
}
static int qat_crypto_event_handler(struct adf_accel_dev *accel_dev , enum adf_event event )
{
  int ret ;
  {
  switch ((unsigned int )event) {
  case 0U:
  ret = qat_crypto_init(accel_dev);
  goto ldv_32091;
  case 3U:
  ret = qat_crypto_shutdown(accel_dev);
  goto ldv_32091;
  case 4U: ;
  case 5U: ;
  case 1U: ;
  case 2U: ;
  default:
  ret = 0;
  }
  ldv_32091: ;
  return (ret);
}
}
int qat_crypto_register(void)
{
  int tmp ;
  {
  memset((void *)(& qat_crypto), 0, 56UL);
  qat_crypto.event_hld = & qat_crypto_event_handler;
  qat_crypto.name = (char *)"qat_crypto";
  tmp = adf_service_register(& qat_crypto);
  return (tmp);
}
}
int qat_crypto_unregister(void)
{
  int tmp ;
  {
  tmp = adf_service_unregister(& qat_crypto);
  return (tmp);
}
}
bool ldv_queue_work_on_258(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_259(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_260(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_261(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_262(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *__builtin_alloca(unsigned long ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
extern void __bad_percpu_size(void) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void memzero_explicit(void * , size_t ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern struct cpuinfo_x86 cpu_info ;
extern struct tss_struct cpu_tss ;
__inline static unsigned long current_top_of_stack(void)
{
  u64 pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& cpu_tss.x86_tss.sp0));
  goto ldv_5541;
  default:
  __bad_percpu_size();
  }
  ldv_5541: ;
  return ((unsigned long )pfo_ret__);
}
}
__inline static struct thread_info *current_thread_info(void)
{
  unsigned long tmp ;
  {
  tmp = current_top_of_stack();
  return ((struct thread_info *)(tmp - 32768UL));
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
bool ldv_queue_work_on_291(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_293(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_292(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_294(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kzalloc_node(size_t size , gfp_t flags , int node ) ;
extern int crypto_register_algs(struct crypto_alg * , int ) ;
extern int crypto_unregister_algs(struct crypto_alg * , int ) ;
extern void crypto_destroy_tfm(void * , struct crypto_tfm * ) ;
__inline static unsigned int crypto_tfm_alg_blocksize(struct crypto_tfm *tfm )
{
  {
  return ((tfm->__crt_alg)->cra_blocksize);
}
}
__inline static void crypto_tfm_set_flags(struct crypto_tfm *tfm , u32 flags )
{
  {
  tfm->crt_flags = tfm->crt_flags | flags;
  return;
}
}
__inline static void *crypto_tfm_ctx(struct crypto_tfm *tfm )
{
  {
  return ((void *)(& tfm->__crt_ctx));
}
}
__inline static struct crypto_ablkcipher *__crypto_ablkcipher_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_ablkcipher *)tfm);
}
}
__inline static struct crypto_tfm *crypto_ablkcipher_tfm(struct crypto_ablkcipher *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static struct crypto_ablkcipher *crypto_ablkcipher_reqtfm(struct ablkcipher_request *req )
{
  struct crypto_ablkcipher *tmp ;
  {
  tmp = __crypto_ablkcipher_cast(req->base.tfm);
  return (tmp);
}
}
__inline static struct crypto_aead *__crypto_aead_cast(struct crypto_tfm *tfm )
{
  struct crypto_tfm const *__mptr ;
  {
  __mptr = (struct crypto_tfm const *)tfm;
  return ((struct crypto_aead *)__mptr + 0xffffffffffffffc0UL);
}
}
__inline static struct crypto_tfm *crypto_aead_tfm(struct crypto_aead *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static struct crypto_aead *crypto_aead_crt(struct crypto_aead *tfm )
{
  {
  return (tfm);
}
}
__inline static struct crypto_aead *crypto_aead_reqtfm(struct aead_request *req )
{
  struct crypto_aead *tmp ;
  {
  tmp = __crypto_aead_cast(req->base.tfm);
  return (tmp);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
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
    ldv_26296: ;
    goto ldv_26296;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (124), "i" (12UL));
    ldv_26297: ;
    goto ldv_26297;
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
extern int sg_nents(struct scatterlist * ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
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
    ldv_26793: ;
    goto ldv_26793;
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
    ldv_26802: ;
    goto ldv_26802;
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
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_309(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_311(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_307(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_315(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_316(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_312(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_313(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_314(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern struct crypto_type const crypto_ablkcipher_type ;
__inline static void *crypto_ablkcipher_ctx(struct crypto_ablkcipher *tfm )
{
  void *tmp ;
  {
  tmp = crypto_tfm_ctx(& tfm->base);
  return (tmp);
}
}
__inline static void *ablkcipher_request_ctx(struct ablkcipher_request *req )
{
  {
  return ((void *)(& req->__ctx));
}
}
extern struct crypto_type const crypto_aead_type ;
__inline static void *crypto_aead_ctx(struct crypto_aead *tfm )
{
  void *tmp ;
  {
  tmp = crypto_tfm_ctx(& tfm->base);
  return (tmp);
}
}
__inline static void *aead_request_ctx(struct aead_request *req )
{
  {
  return ((void *)(& req->__ctx));
}
}
__inline static void crypto_aead_set_reqsize(struct crypto_aead *aead , unsigned int reqsize )
{
  struct crypto_aead *tmp ;
  {
  tmp = crypto_aead_crt(aead);
  tmp->reqsize = reqsize;
  return;
}
}
extern struct crypto_shash *crypto_alloc_shash(char const * , u32 , u32 ) ;
__inline static struct crypto_tfm *crypto_shash_tfm(struct crypto_shash *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_shash(struct crypto_shash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_shash_tfm(tfm);
  crypto_destroy_tfm((void *)tfm, tmp);
  return;
}
}
__inline static unsigned int crypto_shash_blocksize(struct crypto_shash *tfm )
{
  struct crypto_tfm *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = crypto_shash_tfm(tfm);
  tmp___0 = crypto_tfm_alg_blocksize(tmp);
  return (tmp___0);
}
}
__inline static struct shash_alg *__crypto_shash_alg(struct crypto_alg *alg )
{
  struct crypto_alg const *__mptr ;
  {
  __mptr = (struct crypto_alg const *)alg;
  return ((struct shash_alg *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static struct shash_alg *crypto_shash_alg(struct crypto_shash *tfm )
{
  struct crypto_tfm *tmp ;
  struct shash_alg *tmp___0 ;
  {
  tmp = crypto_shash_tfm(tfm);
  tmp___0 = __crypto_shash_alg(tmp->__crt_alg);
  return (tmp___0);
}
}
__inline static unsigned int crypto_shash_digestsize(struct crypto_shash *tfm )
{
  struct shash_alg *tmp ;
  {
  tmp = crypto_shash_alg(tfm);
  return (tmp->digestsize);
}
}
__inline static unsigned int crypto_shash_descsize(struct crypto_shash *tfm )
{
  {
  return (tfm->descsize);
}
}
extern int crypto_shash_digest(struct shash_desc * , u8 const * , unsigned int ,
                               u8 * ) ;
__inline static int crypto_shash_export(struct shash_desc *desc , void *out )
{
  struct shash_alg *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_shash_alg(desc->tfm);
  tmp___0 = (*(tmp->export))(desc, out);
  return (tmp___0);
}
}
__inline static int crypto_shash_init(struct shash_desc *desc )
{
  struct shash_alg *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_shash_alg(desc->tfm);
  tmp___0 = (*(tmp->init))(desc);
  return (tmp___0);
}
}
extern int crypto_shash_update(struct shash_desc * , u8 const * , unsigned int ) ;
extern int crypto_authenc_extractkeys(struct crypto_authenc_keys * , u8 const * ,
                                      unsigned int ) ;
extern struct crypto_rng *crypto_default_rng ;
extern int crypto_get_default_rng(void) ;
extern void crypto_put_default_rng(void) ;
__inline static struct crypto_tfm *crypto_rng_tfm(struct crypto_rng *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static struct rng_alg *crypto_rng_alg(struct crypto_rng *tfm )
{
  struct crypto_alg const *__mptr ;
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_rng_tfm(tfm);
  __mptr = (struct crypto_alg const *)tmp->__crt_alg;
  return ((struct rng_alg *)__mptr + 0xffffffffffffffe0UL);
}
}
__inline static int crypto_rng_generate(struct crypto_rng *tfm , u8 const *src ,
                                        unsigned int slen , u8 *dst , unsigned int dlen )
{
  struct rng_alg *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_rng_alg(tfm);
  tmp___0 = (*(tmp->generate))(tfm, src, slen, dst, dlen);
  return (tmp___0);
}
}
__inline static int crypto_rng_get_bytes(struct crypto_rng *tfm , u8 *rdata , unsigned int dlen )
{
  int tmp ;
  {
  tmp = crypto_rng_generate(tfm, (u8 const *)0U, 0U, rdata, dlen);
  return (tmp);
}
}
static atomic_t active_dev ;
static int get_current_node(void)
{
  void const *__vpp_verify ;
  unsigned long __ptr ;
  struct thread_info *tmp ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpu_info));
  tmp = current_thread_info();
  return ((int )((struct cpuinfo_x86 *)(__per_cpu_offset[tmp->cpu] + __ptr))->phys_proc_id);
}
}
static int qat_get_inter_state_size(enum icp_qat_hw_auth_algo qat_hash_alg )
{
  {
  switch ((unsigned int )qat_hash_alg) {
  case 1U: ;
  return (20);
  case 4U: ;
  return (32);
  case 6U: ;
  return (64);
  default: ;
  return (-14);
  }
  return (-14);
}
}
static int qat_alg_do_precomputes(struct icp_qat_hw_auth_algo_blk *hash , struct qat_alg_aead_ctx *ctx ,
                                  uint8_t const *auth_key , unsigned int auth_keylen )
{
  unsigned int tmp ;
  char *__shash_desc ;
  unsigned long __lengthof__shash_desc ;
  void *tmp___0 ;
  struct shash_desc *shash ;
  struct sha1_state sha1 ;
  struct sha256_state sha256 ;
  struct sha512_state sha512 ;
  int block_size ;
  unsigned int tmp___1 ;
  int digest_size ;
  unsigned int tmp___2 ;
  char *ipad ;
  unsigned long __lengthofipad ;
  void *tmp___3 ;
  char *opad ;
  unsigned long __lengthofopad ;
  void *tmp___4 ;
  __be32 *hash_state_out ;
  __be64 *hash512_state_out ;
  int i ;
  int offset ;
  int ret ;
  int tmp___5 ;
  char *ipad_ptr ;
  char *opad_ptr ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  __u32 tmp___9 ;
  int tmp___10 ;
  __u32 tmp___11 ;
  int tmp___12 ;
  __u64 tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  __u32 tmp___18 ;
  int tmp___19 ;
  __u32 tmp___20 ;
  int tmp___21 ;
  __u64 tmp___22 ;
  {
  tmp = crypto_shash_descsize(ctx->hash_tfm);
  __lengthof__shash_desc = (unsigned long )((long )((unsigned long )tmp + 16UL));
  tmp___0 = __builtin_alloca(sizeof(*__shash_desc) * __lengthof__shash_desc);
  __shash_desc = (char *)tmp___0;
  shash = (struct shash_desc *)(& __shash_desc);
  tmp___1 = crypto_shash_blocksize(ctx->hash_tfm);
  block_size = (int )tmp___1;
  tmp___2 = crypto_shash_digestsize(ctx->hash_tfm);
  digest_size = (int )tmp___2;
  __lengthofipad = (unsigned long )((long )block_size);
  tmp___3 = __builtin_alloca(sizeof(*ipad) * __lengthofipad);
  ipad = (char *)tmp___3;
  __lengthofopad = (unsigned long )((long )block_size);
  tmp___4 = __builtin_alloca(sizeof(*opad) * __lengthofopad);
  opad = (char *)tmp___4;
  memset((void *)(& ipad), 0, (size_t )block_size);
  memset((void *)(& opad), 0, (size_t )block_size);
  shash->tfm = ctx->hash_tfm;
  shash->flags = 0U;
  if ((unsigned int )block_size < auth_keylen) {
    tmp___5 = crypto_shash_digest(shash, auth_key, auth_keylen, (u8 *)(& ipad));
    ret = tmp___5;
    if (ret != 0) {
      return (ret);
    } else {
    }
    memcpy((void *)(& opad), (void const *)(& ipad), (size_t )digest_size);
  } else {
    memcpy((void *)(& ipad), (void const *)auth_key, (size_t )auth_keylen);
    memcpy((void *)(& opad), (void const *)auth_key, (size_t )auth_keylen);
  }
  i = 0;
  goto ldv_32873;
  ldv_32872:
  ipad_ptr = (char *)(& ipad) + (unsigned long )i;
  opad_ptr = (char *)(& opad) + (unsigned long )i;
  *ipad_ptr = (char )((int )((signed char )*ipad_ptr) ^ 54);
  *opad_ptr = (char )((int )((signed char )*opad_ptr) ^ 92);
  i = i + 1;
  ldv_32873: ;
  if (i < block_size) {
    goto ldv_32872;
  } else {
  }
  tmp___6 = crypto_shash_init(shash);
  if (tmp___6 != 0) {
    return (-14);
  } else {
  }
  tmp___7 = crypto_shash_update(shash, (u8 const *)(& ipad), (unsigned int )block_size);
  if (tmp___7 != 0) {
    return (-14);
  } else {
  }
  hash_state_out = (__be32 *)(& hash->sha.state1);
  hash512_state_out = (__be64 *)hash_state_out;
  switch ((unsigned int )ctx->qat_hash_alg) {
  case 1U:
  tmp___8 = crypto_shash_export(shash, (void *)(& sha1));
  if (tmp___8 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32877;
  ldv_32876:
  tmp___9 = __fswab32(*((u32 *)(& sha1.state) + (unsigned long )i));
  *hash_state_out = tmp___9;
  i = i + 1;
  hash_state_out = hash_state_out + 1;
  ldv_32877: ;
  if (digest_size >> 2 > i) {
    goto ldv_32876;
  } else {
  }
  goto ldv_32879;
  case 4U:
  tmp___10 = crypto_shash_export(shash, (void *)(& sha256));
  if (tmp___10 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32882;
  ldv_32881:
  tmp___11 = __fswab32(*((u32 *)(& sha256.state) + (unsigned long )i));
  *hash_state_out = tmp___11;
  i = i + 1;
  hash_state_out = hash_state_out + 1;
  ldv_32882: ;
  if (digest_size >> 2 > i) {
    goto ldv_32881;
  } else {
  }
  goto ldv_32879;
  case 6U:
  tmp___12 = crypto_shash_export(shash, (void *)(& sha512));
  if (tmp___12 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32886;
  ldv_32885:
  tmp___13 = __fswab64(*((u64 *)(& sha512.state) + (unsigned long )i));
  *hash512_state_out = tmp___13;
  i = i + 1;
  hash512_state_out = hash512_state_out + 1;
  ldv_32886: ;
  if (digest_size >> 3 > i) {
    goto ldv_32885;
  } else {
  }
  goto ldv_32879;
  default: ;
  return (-14);
  }
  ldv_32879:
  tmp___14 = crypto_shash_init(shash);
  if (tmp___14 != 0) {
    return (-14);
  } else {
  }
  tmp___15 = crypto_shash_update(shash, (u8 const *)(& opad), (unsigned int )block_size);
  if (tmp___15 != 0) {
    return (-14);
  } else {
  }
  tmp___16 = qat_get_inter_state_size(ctx->qat_hash_alg);
  offset = ((tmp___16 + -1) | 7) + 1;
  hash_state_out = (__be32 *)(& hash->sha.state1) + (unsigned long )offset;
  hash512_state_out = (__be64 *)hash_state_out;
  switch ((unsigned int )ctx->qat_hash_alg) {
  case 1U:
  tmp___17 = crypto_shash_export(shash, (void *)(& sha1));
  if (tmp___17 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32891;
  ldv_32890:
  tmp___18 = __fswab32(*((u32 *)(& sha1.state) + (unsigned long )i));
  *hash_state_out = tmp___18;
  i = i + 1;
  hash_state_out = hash_state_out + 1;
  ldv_32891: ;
  if (digest_size >> 2 > i) {
    goto ldv_32890;
  } else {
  }
  goto ldv_32893;
  case 4U:
  tmp___19 = crypto_shash_export(shash, (void *)(& sha256));
  if (tmp___19 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32896;
  ldv_32895:
  tmp___20 = __fswab32(*((u32 *)(& sha256.state) + (unsigned long )i));
  *hash_state_out = tmp___20;
  i = i + 1;
  hash_state_out = hash_state_out + 1;
  ldv_32896: ;
  if (digest_size >> 2 > i) {
    goto ldv_32895;
  } else {
  }
  goto ldv_32893;
  case 6U:
  tmp___21 = crypto_shash_export(shash, (void *)(& sha512));
  if (tmp___21 != 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_32900;
  ldv_32899:
  tmp___22 = __fswab64(*((u64 *)(& sha512.state) + (unsigned long )i));
  *hash512_state_out = tmp___22;
  i = i + 1;
  hash512_state_out = hash512_state_out + 1;
  ldv_32900: ;
  if (digest_size >> 3 > i) {
    goto ldv_32899;
  } else {
  }
  goto ldv_32893;
  default: ;
  return (-14);
  }
  ldv_32893:
  memzero_explicit((void *)(& ipad), (size_t )block_size);
  memzero_explicit((void *)(& opad), (size_t )block_size);
  return (0);
}
}
static void qat_alg_init_common_hdr(struct icp_qat_fw_comn_req_hdr *header )
{
  {
  header->hdr_flags = 128U;
  header->service_type = 4U;
  header->comn_req_flags = 1U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags & 65532U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags | 4U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags & 64639U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags & 65519U;
  return;
}
}
static int qat_alg_aead_init_enc_session(struct qat_alg_aead_ctx *ctx , int alg ,
                                         struct crypto_authenc_keys *keys )
{
  struct crypto_aead *aead_tfm ;
  struct crypto_aead *tmp ;
  unsigned int digestsize ;
  struct crypto_aead *tmp___0 ;
  struct qat_enc *enc_ctx ;
  struct icp_qat_hw_cipher_algo_blk *cipher ;
  struct icp_qat_hw_auth_algo_blk *hash ;
  struct icp_qat_fw_la_bulk_req *req_tmpl ;
  struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars ;
  struct icp_qat_fw_comn_req_hdr *header ;
  void *ptr ;
  struct icp_qat_fw_cipher_cd_ctrl_hdr *cipher_cd_ctrl ;
  struct icp_qat_fw_auth_cd_ctrl_hdr *hash_cd_ctrl ;
  unsigned int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  {
  tmp = __crypto_aead_cast(ctx->tfm);
  aead_tfm = tmp;
  tmp___0 = crypto_aead_crt(aead_tfm);
  digestsize = tmp___0->authsize;
  enc_ctx = & (ctx->enc_cd)->__annonCompField78.qat_enc_cd;
  cipher = & enc_ctx->cipher;
  hash = (struct icp_qat_hw_auth_algo_blk *)enc_ctx + ((unsigned long )keys->enckeylen + 16UL);
  req_tmpl = & ctx->enc_fw_req;
  cd_pars = & req_tmpl->cd_pars;
  header = & req_tmpl->comn_hdr;
  ptr = (void *)(& req_tmpl->cd_ctrl);
  cipher_cd_ctrl = (struct icp_qat_fw_cipher_cd_ctrl_hdr *)ptr;
  hash_cd_ctrl = (struct icp_qat_fw_auth_cd_ctrl_hdr *)ptr;
  cipher->aes.cipher_config.val = (uint32_t )((alg & 15) | 16);
  memcpy((void *)(& cipher->aes.key), (void const *)keys->enckey, (size_t )keys->enckeylen);
  hash->sha.inner_setup.auth_config.config = (((((unsigned int )ctx->qat_hash_alg & 15U) | ((((unsigned int )ctx->qat_hash_alg >> 4) & 3U) << 22)) | (unsigned int )((((unsigned int )ctx->qat_hash_alg == 17U || (unsigned int )ctx->qat_hash_alg == 19U) & 1) << 16)) | ((digestsize & 127U) << 8)) | 16U;
  tmp___1 = crypto_shash_blocksize(ctx->hash_tfm);
  tmp___2 = __fswab32(tmp___1);
  hash->sha.inner_setup.auth_counter.counter = tmp___2;
  tmp___3 = qat_alg_do_precomputes(hash, ctx, keys->authkey, keys->authkeylen);
  if (tmp___3 != 0) {
    return (-14);
  } else {
  }
  qat_alg_init_common_hdr(header);
  header->service_cmd_id = 2U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags | 1024U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags | 32U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags & 65471U;
  cd_pars->u.s.content_desc_addr = ctx->enc_cd_paddr;
  cd_pars->u.s.content_desc_params_sz = 40U;
  cipher_cd_ctrl->cipher_key_sz = (uint8_t )(keys->enckeylen >> 3);
  cipher_cd_ctrl->cipher_state_sz = 2U;
  cipher_cd_ctrl->cipher_cfg_offset = 0U;
  cipher_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cipher_cd_ctrl->next_curr_id) & -16) | 1);
  cipher_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cipher_cd_ctrl->next_curr_id) & 15) | 32);
  hash_cd_ctrl->hash_cfg_offset = (uint8_t )(((long )hash - (long )cipher) >> 3);
  hash_cd_ctrl->hash_flags = 0U;
  hash_cd_ctrl->inner_res_sz = (uint8_t )digestsize;
  hash_cd_ctrl->final_sz = (uint8_t )digestsize;
  switch ((unsigned int )ctx->qat_hash_alg) {
  case 1U:
  hash_cd_ctrl->inner_state1_sz = 24U;
  hash_cd_ctrl->inner_state2_sz = 24U;
  goto ldv_32923;
  case 4U:
  hash_cd_ctrl->inner_state1_sz = 32U;
  hash_cd_ctrl->inner_state2_sz = 32U;
  goto ldv_32923;
  case 6U:
  hash_cd_ctrl->inner_state1_sz = 64U;
  hash_cd_ctrl->inner_state2_sz = 64U;
  goto ldv_32923;
  default: ;
  goto ldv_32923;
  }
  ldv_32923:
  hash_cd_ctrl->inner_state2_offset = (int )hash_cd_ctrl->hash_cfg_offset + (int )((uint8_t )(((unsigned long )((((int )hash_cd_ctrl->inner_state1_sz + -1) | 7) + 1) + 16UL) >> 3));
  hash_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )hash_cd_ctrl->next_curr_id) & -16) | 2);
  hash_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )hash_cd_ctrl->next_curr_id) & 15) | 64);
  return (0);
}
}
static int qat_alg_aead_init_dec_session(struct qat_alg_aead_ctx *ctx , int alg ,
                                         struct crypto_authenc_keys *keys )
{
  struct crypto_aead *aead_tfm ;
  struct crypto_aead *tmp ;
  unsigned int digestsize ;
  struct crypto_aead *tmp___0 ;
  struct qat_dec *dec_ctx ;
  struct icp_qat_hw_auth_algo_blk *hash ;
  struct icp_qat_hw_cipher_algo_blk *cipher ;
  int __y ;
  unsigned int tmp___1 ;
  struct icp_qat_fw_la_bulk_req *req_tmpl ;
  struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars ;
  struct icp_qat_fw_comn_req_hdr *header ;
  void *ptr ;
  struct icp_qat_fw_cipher_cd_ctrl_hdr *cipher_cd_ctrl ;
  struct icp_qat_fw_auth_cd_ctrl_hdr *hash_cd_ctrl ;
  struct icp_qat_fw_la_auth_req_params *auth_param ;
  unsigned int tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  int __y___0 ;
  unsigned int tmp___5 ;
  {
  tmp = __crypto_aead_cast(ctx->tfm);
  aead_tfm = tmp;
  tmp___0 = crypto_aead_crt(aead_tfm);
  digestsize = tmp___0->authsize;
  dec_ctx = & (ctx->dec_cd)->__annonCompField78.qat_dec_cd;
  hash = & dec_ctx->hash;
  __y = 8;
  tmp___1 = crypto_shash_digestsize(ctx->hash_tfm);
  cipher = (struct icp_qat_hw_cipher_algo_blk *)dec_ctx + ((unsigned long )(((((tmp___1 + (unsigned int )__y) + 4294967295U) / (unsigned int )__y) * (unsigned int )__y) * 2U) + 16UL);
  req_tmpl = & ctx->dec_fw_req;
  cd_pars = & req_tmpl->cd_pars;
  header = & req_tmpl->comn_hdr;
  ptr = (void *)(& req_tmpl->cd_ctrl);
  cipher_cd_ctrl = (struct icp_qat_fw_cipher_cd_ctrl_hdr *)ptr;
  hash_cd_ctrl = (struct icp_qat_fw_auth_cd_ctrl_hdr *)ptr;
  auth_param = (struct icp_qat_fw_la_auth_req_params *)(& req_tmpl->serv_specif_rqpars) + 24U;
  cipher->aes.cipher_config.val = (uint32_t )((alg & 15) | 784);
  memcpy((void *)(& cipher->aes.key), (void const *)keys->enckey, (size_t )keys->enckeylen);
  hash->sha.inner_setup.auth_config.config = (((((unsigned int )ctx->qat_hash_alg & 15U) | ((((unsigned int )ctx->qat_hash_alg >> 4) & 3U) << 22)) | (unsigned int )((((unsigned int )ctx->qat_hash_alg == 17U || (unsigned int )ctx->qat_hash_alg == 19U) & 1) << 16)) | ((digestsize & 127U) << 8)) | 16U;
  tmp___2 = crypto_shash_blocksize(ctx->hash_tfm);
  tmp___3 = __fswab32(tmp___2);
  hash->sha.inner_setup.auth_counter.counter = tmp___3;
  tmp___4 = qat_alg_do_precomputes(hash, ctx, keys->authkey, keys->authkeylen);
  if (tmp___4 != 0) {
    return (-14);
  } else {
  }
  qat_alg_init_common_hdr(header);
  header->service_cmd_id = 3U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags | 1024U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags & 65503U;
  header->serv_specif_flags = (unsigned int )header->serv_specif_flags | 64U;
  cd_pars->u.s.content_desc_addr = ctx->dec_cd_paddr;
  cd_pars->u.s.content_desc_params_sz = 40U;
  cipher_cd_ctrl->cipher_key_sz = (uint8_t )(keys->enckeylen >> 3);
  cipher_cd_ctrl->cipher_state_sz = 2U;
  __y___0 = 8;
  tmp___5 = crypto_shash_digestsize(ctx->hash_tfm);
  cipher_cd_ctrl->cipher_cfg_offset = (uint8_t )(((unsigned long )(((((tmp___5 + (unsigned int )__y___0) + 4294967295U) / (unsigned int )__y___0) * (unsigned int )__y___0) * 2U) + 16UL) >> 3);
  cipher_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cipher_cd_ctrl->next_curr_id) & -16) | 1);
  cipher_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cipher_cd_ctrl->next_curr_id) & 15) | 64);
  hash_cd_ctrl->hash_cfg_offset = 0U;
  hash_cd_ctrl->hash_flags = 0U;
  hash_cd_ctrl->inner_res_sz = (uint8_t )digestsize;
  hash_cd_ctrl->final_sz = (uint8_t )digestsize;
  switch ((unsigned int )ctx->qat_hash_alg) {
  case 1U:
  hash_cd_ctrl->inner_state1_sz = 24U;
  hash_cd_ctrl->inner_state2_sz = 24U;
  goto ldv_32949;
  case 4U:
  hash_cd_ctrl->inner_state1_sz = 32U;
  hash_cd_ctrl->inner_state2_sz = 32U;
  goto ldv_32949;
  case 6U:
  hash_cd_ctrl->inner_state1_sz = 64U;
  hash_cd_ctrl->inner_state2_sz = 64U;
  goto ldv_32949;
  default: ;
  goto ldv_32949;
  }
  ldv_32949:
  hash_cd_ctrl->inner_state2_offset = (int )hash_cd_ctrl->hash_cfg_offset + (int )((uint8_t )(((unsigned long )((((int )hash_cd_ctrl->inner_state1_sz + -1) | 7) + 1) + 16UL) >> 3));
  auth_param->auth_res_sz = (uint8_t )digestsize;
  hash_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )hash_cd_ctrl->next_curr_id) & -16) | 2);
  hash_cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )hash_cd_ctrl->next_curr_id) & 15) | 16);
  return (0);
}
}
static void qat_alg_ablkcipher_init_com(struct qat_alg_ablkcipher_ctx *ctx , struct icp_qat_fw_la_bulk_req *req ,
                                        struct icp_qat_hw_cipher_algo_blk *cd , uint8_t const *key ,
                                        unsigned int keylen )
{
  struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars ;
  struct icp_qat_fw_comn_req_hdr *header ;
  struct icp_qat_fw_cipher_cd_ctrl_hdr *cd_ctrl ;
  {
  cd_pars = & req->cd_pars;
  header = & req->comn_hdr;
  cd_ctrl = (struct icp_qat_fw_cipher_cd_ctrl_hdr *)(& req->cd_ctrl);
  memcpy((void *)(& cd->aes.key), (void const *)key, (size_t )keylen);
  qat_alg_init_common_hdr(header);
  header->service_cmd_id = 0U;
  cd_pars->u.s.content_desc_params_sz = 16U;
  cd_ctrl->cipher_key_sz = (uint8_t )(keylen >> 3);
  cd_ctrl->cipher_state_sz = 2U;
  cd_ctrl->cipher_cfg_offset = 0U;
  cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cd_ctrl->next_curr_id) & -16) | 1);
  cd_ctrl->next_curr_id = (uint8_t )(((int )((signed char )cd_ctrl->next_curr_id) & 15) | 64);
  return;
}
}
static void qat_alg_ablkcipher_init_enc(struct qat_alg_ablkcipher_ctx *ctx , int alg ,
                                        uint8_t const *key , unsigned int keylen )
{
  struct icp_qat_hw_cipher_algo_blk *enc_cd ;
  struct icp_qat_fw_la_bulk_req *req ;
  struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars ;
  {
  enc_cd = ctx->enc_cd;
  req = & ctx->enc_fw_req;
  cd_pars = & req->cd_pars;
  qat_alg_ablkcipher_init_com(ctx, req, enc_cd, key, keylen);
  cd_pars->u.s.content_desc_addr = ctx->enc_cd_paddr;
  enc_cd->aes.cipher_config.val = (uint32_t )((alg & 15) | 16);
  return;
}
}
static void qat_alg_ablkcipher_init_dec(struct qat_alg_ablkcipher_ctx *ctx , int alg ,
                                        uint8_t const *key , unsigned int keylen )
{
  struct icp_qat_hw_cipher_algo_blk *dec_cd ;
  struct icp_qat_fw_la_bulk_req *req ;
  struct icp_qat_fw_comn_req_hdr_cd_pars *cd_pars ;
  {
  dec_cd = ctx->dec_cd;
  req = & ctx->dec_fw_req;
  cd_pars = & req->cd_pars;
  qat_alg_ablkcipher_init_com(ctx, req, dec_cd, key, keylen);
  cd_pars->u.s.content_desc_addr = ctx->dec_cd_paddr;
  dec_cd->aes.cipher_config.val = (uint32_t )((alg & 15) | 784);
  return;
}
}
static int qat_alg_validate_key(int key_len , int *alg )
{
  {
  switch (key_len) {
  case 16:
  *alg = 3;
  goto ldv_32986;
  case 24:
  *alg = 4;
  goto ldv_32986;
  case 32:
  *alg = 5;
  goto ldv_32986;
  default: ;
  return (-22);
  }
  ldv_32986: ;
  return (0);
}
}
static int qat_alg_aead_init_sessions(struct qat_alg_aead_ctx *ctx , uint8_t const *key ,
                                      unsigned int keylen )
{
  struct crypto_authenc_keys keys ;
  int alg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = crypto_rng_get_bytes(crypto_default_rng, (u8 *)(& ctx->salt), 16U);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  tmp___0 = crypto_authenc_extractkeys(& keys, key, keylen);
  if (tmp___0 != 0) {
    goto bad_key;
  } else {
  }
  tmp___1 = qat_alg_validate_key((int )keys.enckeylen, & alg);
  if (tmp___1 != 0) {
    goto bad_key;
  } else {
  }
  tmp___2 = qat_alg_aead_init_enc_session(ctx, alg, & keys);
  if (tmp___2 != 0) {
    goto error;
  } else {
  }
  tmp___3 = qat_alg_aead_init_dec_session(ctx, alg, & keys);
  if (tmp___3 != 0) {
    goto error;
  } else {
  }
  return (0);
  bad_key:
  crypto_tfm_set_flags(ctx->tfm, 2097152U);
  return (-22);
  error: ;
  return (-14);
}
}
static int qat_alg_ablkcipher_init_sessions(struct qat_alg_ablkcipher_ctx *ctx , uint8_t const *key ,
                                            unsigned int keylen )
{
  int alg ;
  int tmp ;
  {
  tmp = qat_alg_validate_key((int )keylen, & alg);
  if (tmp != 0) {
    goto bad_key;
  } else {
  }
  qat_alg_ablkcipher_init_enc(ctx, alg, key, keylen);
  qat_alg_ablkcipher_init_dec(ctx, alg, key, keylen);
  return (0);
  bad_key:
  crypto_tfm_set_flags(ctx->tfm, 2097152U);
  return (-22);
}
}
static int qat_alg_aead_setkey(struct crypto_aead *tfm , uint8_t const *key , unsigned int keylen )
{
  struct qat_alg_aead_ctx *ctx ;
  void *tmp ;
  struct device *dev ;
  int node ;
  int tmp___0 ;
  struct qat_crypto_instance *inst___0 ;
  struct qat_crypto_instance *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = crypto_aead_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp;
  spin_lock(& ctx->lock);
  if ((unsigned long )ctx->enc_cd != (unsigned long )((struct qat_alg_cd *)0)) {
    dev = & (((ctx->inst)->accel_dev)->accel_pci_dev.pci_dev)->dev;
    memset((void *)ctx->enc_cd, 0, 320UL);
    memset((void *)ctx->dec_cd, 0, 320UL);
    memset((void *)(& ctx->enc_fw_req), 0, 128UL);
    memset((void *)(& ctx->dec_fw_req), 0, 128UL);
  } else {
    tmp___0 = get_current_node();
    node = tmp___0;
    tmp___1 = qat_crypto_get_instance_node(node);
    inst___0 = tmp___1;
    if ((unsigned long )inst___0 == (unsigned long )((struct qat_crypto_instance *)0)) {
      spin_unlock(& ctx->lock);
      return (-22);
    } else {
    }
    dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
    ctx->inst = inst___0;
    tmp___2 = dma_zalloc_coherent(dev, 320UL, & ctx->enc_cd_paddr, 32U);
    ctx->enc_cd = (struct qat_alg_cd *)tmp___2;
    if ((unsigned long )ctx->enc_cd == (unsigned long )((struct qat_alg_cd *)0)) {
      spin_unlock(& ctx->lock);
      return (-12);
    } else {
    }
    tmp___3 = dma_zalloc_coherent(dev, 320UL, & ctx->dec_cd_paddr, 32U);
    ctx->dec_cd = (struct qat_alg_cd *)tmp___3;
    if ((unsigned long )ctx->dec_cd == (unsigned long )((struct qat_alg_cd *)0)) {
      spin_unlock(& ctx->lock);
      goto out_free_enc;
    } else {
    }
  }
  spin_unlock(& ctx->lock);
  tmp___4 = qat_alg_aead_init_sessions(ctx, key, keylen);
  if (tmp___4 != 0) {
    goto out_free_all;
  } else {
  }
  return (0);
  out_free_all:
  memset((void *)ctx->dec_cd, 0, 320UL);
  dma_free_attrs(dev, 320UL, (void *)ctx->dec_cd, ctx->dec_cd_paddr, (struct dma_attrs *)0);
  ctx->dec_cd = (struct qat_alg_cd *)0;
  out_free_enc:
  memset((void *)ctx->enc_cd, 0, 320UL);
  dma_free_attrs(dev, 320UL, (void *)ctx->enc_cd, ctx->enc_cd_paddr, (struct dma_attrs *)0);
  ctx->enc_cd = (struct qat_alg_cd *)0;
  return (-12);
}
}
static void qat_alg_free_bufl(struct qat_crypto_instance *inst___0 , struct qat_crypto_request *qat_req )
{
  struct device *dev ;
  struct qat_alg_buf_list *bl ;
  struct qat_alg_buf_list *blout ;
  dma_addr_t blp ;
  dma_addr_t blpout ;
  size_t sz ;
  size_t sz_out ;
  int i ;
  int bufless ;
  {
  dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
  bl = qat_req->buf.bl;
  blout = qat_req->buf.blout;
  blp = qat_req->buf.blp;
  blpout = qat_req->buf.bloutp;
  sz = qat_req->buf.sz;
  sz_out = qat_req->buf.sz_out;
  i = 0;
  goto ldv_33030;
  ldv_33029:
  dma_unmap_single_attrs(dev, bl->bufers[i].addr, (size_t )bl->bufers[i].len, 0, (struct dma_attrs *)0);
  i = i + 1;
  ldv_33030: ;
  if ((uint32_t )i < bl->num_bufs) {
    goto ldv_33029;
  } else {
  }
  dma_unmap_single_attrs(dev, blp, sz, 1, (struct dma_attrs *)0);
  kfree((void const *)bl);
  if (blp != blpout) {
    bufless = (int )(blout->num_bufs - blout->num_mapped_bufs);
    i = bufless;
    goto ldv_33034;
    ldv_33033:
    dma_unmap_single_attrs(dev, blout->bufers[i].addr, (size_t )blout->bufers[i].len,
                           0, (struct dma_attrs *)0);
    i = i + 1;
    ldv_33034: ;
    if ((uint32_t )i < blout->num_bufs) {
      goto ldv_33033;
    } else {
    }
    dma_unmap_single_attrs(dev, blpout, sz_out, 1, (struct dma_attrs *)0);
    kfree((void const *)blout);
  } else {
  }
  return;
}
}
static int qat_alg_sgl_to_bufl(struct qat_crypto_instance *inst___0 , struct scatterlist *assoc ,
                               int assoclen , struct scatterlist *sgl , struct scatterlist *sglout ,
                               uint8_t *iv , uint8_t ivlen , struct qat_crypto_request *qat_req )
{
  struct device *dev ;
  int i ;
  int bufs ;
  int sg_nctr ;
  int n ;
  int tmp ;
  int assoc_n ;
  int tmp___0 ;
  struct qat_alg_buf_list *bufl ;
  struct qat_alg_buf_list *buflout ;
  dma_addr_t blp ;
  dma_addr_t bloutp ;
  struct scatterlist *sg ;
  size_t sz_out ;
  size_t sz ;
  long tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  int __min1 ;
  int __min2 ;
  void *tmp___7 ;
  int __min1___0 ;
  int __min2___0 ;
  int tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  int y ;
  void *tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  struct qat_alg_buf *bufers ;
  int tmp___15 ;
  void *tmp___16 ;
  long tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  int y___0 ;
  void *tmp___20 ;
  int tmp___21 ;
  long tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
  bufs = 0;
  sg_nctr = 0;
  tmp = sg_nents(sgl);
  n = tmp;
  tmp___0 = sg_nents(assoc);
  assoc_n = tmp___0;
  buflout = (struct qat_alg_buf_list *)0;
  bloutp = 0ULL;
  sz = ((unsigned long )((n + 1) + assoc_n) + 4UL) * 16UL;
  tmp___1 = ldv__builtin_expect(n == 0, 0L);
  if (tmp___1 != 0L) {
    return (-22);
  } else {
  }
  tmp___2 = dev_to_node(& ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev);
  tmp___3 = kzalloc_node(sz, 32U, tmp___2);
  bufl = (struct qat_alg_buf_list *)tmp___3;
  tmp___4 = ldv__builtin_expect((unsigned long )bufl == (unsigned long )((struct qat_alg_buf_list *)0),
                             0L);
  if (tmp___4 != 0L) {
    return (-12);
  } else {
  }
  blp = dma_map_single_attrs(dev, (void *)bufl, sz, 1, (struct dma_attrs *)0);
  tmp___5 = dma_mapping_error(dev, blp);
  tmp___6 = ldv__builtin_expect(tmp___5 != 0, 0L);
  if (tmp___6 != 0L) {
    goto err;
  } else {
  }
  i = 0;
  sg = assoc;
  goto ldv_33069;
  ldv_33068: ;
  if (sg->length == 0U) {
    goto ldv_33060;
  } else {
  }
  if (assoclen <= 0) {
    goto ldv_33061;
  } else {
  }
  __min1 = assoclen;
  __min2 = (int )sg->length;
  tmp___7 = sg_virt(sg);
  bufl->bufers[bufs].addr = dma_map_single_attrs(dev, tmp___7, (size_t )(__min1 < __min2 ? __min1 : __min2),
                                                 0, (struct dma_attrs *)0);
  __min1___0 = assoclen;
  __min2___0 = (int )sg->length;
  bufl->bufers[bufs].len = (uint32_t )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  tmp___8 = dma_mapping_error(dev, bufl->bufers[bufs].addr);
  tmp___9 = ldv__builtin_expect(tmp___8 != 0, 0L);
  if (tmp___9 != 0L) {
    goto err;
  } else {
  }
  bufs = bufs + 1;
  assoclen = (int )((unsigned int )assoclen - sg->length);
  ldv_33060:
  i = i + 1;
  sg = sg_next(sg);
  ldv_33069: ;
  if (i < assoc_n) {
    goto ldv_33068;
  } else {
  }
  ldv_33061: ;
  if ((unsigned int )ivlen != 0U) {
    bufl->bufers[bufs].addr = dma_map_single_attrs(dev, (void *)iv, (size_t )ivlen,
                                                   0, (struct dma_attrs *)0);
    bufl->bufers[bufs].len = (uint32_t )ivlen;
    tmp___10 = dma_mapping_error(dev, bufl->bufers[bufs].addr);
    tmp___11 = ldv__builtin_expect(tmp___10 != 0, 0L);
    if (tmp___11 != 0L) {
      goto err;
    } else {
    }
    bufs = bufs + 1;
  } else {
  }
  i = 0;
  sg = sgl;
  goto ldv_33073;
  ldv_33072:
  y = sg_nctr + bufs;
  if (sg->length == 0U) {
    goto ldv_33071;
  } else {
  }
  tmp___12 = sg_virt(sg);
  bufl->bufers[y].addr = dma_map_single_attrs(dev, tmp___12, (size_t )sg->length,
                                              0, (struct dma_attrs *)0);
  bufl->bufers[y].len = sg->length;
  tmp___13 = dma_mapping_error(dev, bufl->bufers[y].addr);
  tmp___14 = ldv__builtin_expect(tmp___13 != 0, 0L);
  if (tmp___14 != 0L) {
    goto err;
  } else {
  }
  sg_nctr = sg_nctr + 1;
  ldv_33071:
  i = i + 1;
  sg = sg_next(sg);
  ldv_33073: ;
  if (i < n) {
    goto ldv_33072;
  } else {
  }
  bufl->num_bufs = (uint32_t )(sg_nctr + bufs);
  qat_req->buf.bl = bufl;
  qat_req->buf.blp = blp;
  qat_req->buf.sz = sz;
  if ((unsigned long )sgl != (unsigned long )sglout) {
    n = sg_nents(sglout);
    sz_out = ((unsigned long )((n + 1) + assoc_n) + 4UL) * 16UL;
    sg_nctr = 0;
    tmp___15 = dev_to_node(& ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev);
    tmp___16 = kzalloc_node(sz_out, 32U, tmp___15);
    buflout = (struct qat_alg_buf_list *)tmp___16;
    tmp___17 = ldv__builtin_expect((unsigned long )buflout == (unsigned long )((struct qat_alg_buf_list *)0),
                                0L);
    if (tmp___17 != 0L) {
      goto err;
    } else {
    }
    bloutp = dma_map_single_attrs(dev, (void *)buflout, sz_out, 1, (struct dma_attrs *)0);
    tmp___18 = dma_mapping_error(dev, bloutp);
    tmp___19 = ldv__builtin_expect(tmp___18 != 0, 0L);
    if (tmp___19 != 0L) {
      goto err;
    } else {
    }
    bufers = (struct qat_alg_buf *)(& buflout->bufers);
    i = 0;
    goto ldv_33077;
    ldv_33076:
    (bufers + (unsigned long )i)->len = bufl->bufers[i].len;
    (bufers + (unsigned long )i)->addr = bufl->bufers[i].addr;
    i = i + 1;
    ldv_33077: ;
    if (i < bufs) {
      goto ldv_33076;
    } else {
    }
    i = 0;
    sg = sglout;
    goto ldv_33082;
    ldv_33081:
    y___0 = sg_nctr + bufs;
    if (sg->length == 0U) {
      goto ldv_33080;
    } else {
    }
    tmp___20 = sg_virt(sg);
    (bufers + (unsigned long )y___0)->addr = dma_map_single_attrs(dev, tmp___20, (size_t )sg->length,
                                                                  0, (struct dma_attrs *)0);
    tmp___21 = dma_mapping_error(dev, (bufers + (unsigned long )y___0)->addr);
    tmp___22 = ldv__builtin_expect(tmp___21 != 0, 0L);
    if (tmp___22 != 0L) {
      goto err;
    } else {
    }
    (bufers + (unsigned long )y___0)->len = sg->length;
    sg_nctr = sg_nctr + 1;
    ldv_33080:
    i = i + 1;
    sg = sg_next(sg);
    ldv_33082: ;
    if (i < n) {
      goto ldv_33081;
    } else {
    }
    buflout->num_bufs = (uint32_t )(sg_nctr + bufs);
    buflout->num_mapped_bufs = (uint32_t )sg_nctr;
    qat_req->buf.blout = buflout;
    qat_req->buf.bloutp = bloutp;
    qat_req->buf.sz_out = sz_out;
  } else {
    qat_req->buf.bloutp = qat_req->buf.blp;
    qat_req->buf.sz_out = 0UL;
  }
  return (0);
  err:
  dev_err((struct device const *)dev, "Failed to map buf for dma\n");
  sg_nctr = 0;
  i = 0;
  goto ldv_33085;
  ldv_33084:
  tmp___23 = dma_mapping_error(dev, bufl->bufers[i].addr);
  if (tmp___23 == 0) {
    dma_unmap_single_attrs(dev, bufl->bufers[i].addr, (size_t )bufl->bufers[i].len,
                           0, (struct dma_attrs *)0);
  } else {
  }
  i = i + 1;
  ldv_33085: ;
  if (n + bufs > i) {
    goto ldv_33084;
  } else {
  }
  tmp___24 = dma_mapping_error(dev, blp);
  if (tmp___24 == 0) {
    dma_unmap_single_attrs(dev, blp, sz, 1, (struct dma_attrs *)0);
  } else {
  }
  kfree((void const *)bufl);
  if ((unsigned long )sgl != (unsigned long )sglout && (unsigned long )buflout != (unsigned long )((struct qat_alg_buf_list *)0)) {
    n = sg_nents(sglout);
    i = bufs;
    goto ldv_33088;
    ldv_33087:
    tmp___25 = dma_mapping_error(dev, buflout->bufers[i].addr);
    if (tmp___25 == 0) {
      dma_unmap_single_attrs(dev, buflout->bufers[i].addr, (size_t )buflout->bufers[i].len,
                             0, (struct dma_attrs *)0);
    } else {
    }
    i = i + 1;
    ldv_33088: ;
    if (n + bufs > i) {
      goto ldv_33087;
    } else {
    }
    tmp___26 = dma_mapping_error(dev, bloutp);
    if (tmp___26 == 0) {
      dma_unmap_single_attrs(dev, bloutp, sz_out, 1, (struct dma_attrs *)0);
    } else {
    }
    kfree((void const *)buflout);
  } else {
  }
  return (-12);
}
}
static void qat_aead_alg_callback(struct icp_qat_fw_la_resp *qat_resp , struct qat_crypto_request *qat_req )
{
  struct qat_alg_aead_ctx *ctx ;
  struct qat_crypto_instance *inst___0 ;
  struct aead_request *areq ;
  uint8_t stat_filed ;
  int res ;
  int qat_res ;
  long tmp ;
  {
  ctx = qat_req->__annonCompField76.aead_ctx;
  inst___0 = ctx->inst;
  areq = qat_req->__annonCompField77.aead_req;
  stat_filed = qat_resp->comn_resp.comn_status;
  res = 0;
  qat_res = ((int )stat_filed >> 7) & 1;
  qat_alg_free_bufl(inst___0, qat_req);
  tmp = ldv__builtin_expect(qat_res != 0, 0L);
  if (tmp != 0L) {
    res = -74;
  } else {
  }
  (*(areq->base.complete))(& areq->base, res);
  return;
}
}
static void qat_ablkcipher_alg_callback(struct icp_qat_fw_la_resp *qat_resp , struct qat_crypto_request *qat_req )
{
  struct qat_alg_ablkcipher_ctx *ctx ;
  struct qat_crypto_instance *inst___0 ;
  struct ablkcipher_request *areq ;
  uint8_t stat_filed ;
  int res ;
  int qat_res ;
  long tmp ;
  {
  ctx = qat_req->__annonCompField76.ablkcipher_ctx;
  inst___0 = ctx->inst;
  areq = qat_req->__annonCompField77.ablkcipher_req;
  stat_filed = qat_resp->comn_resp.comn_status;
  res = 0;
  qat_res = ((int )stat_filed >> 7) & 1;
  qat_alg_free_bufl(inst___0, qat_req);
  tmp = ldv__builtin_expect(qat_res != 0, 0L);
  if (tmp != 0L) {
    res = -22;
  } else {
  }
  (*(areq->base.complete))(& areq->base, res);
  return;
}
}
void qat_alg_callback(void *resp )
{
  struct icp_qat_fw_la_resp *qat_resp ;
  struct qat_crypto_request *qat_req ;
  {
  qat_resp = (struct icp_qat_fw_la_resp *)resp;
  qat_req = (struct qat_crypto_request *)qat_resp->opaque_data;
  (*(qat_req->cb))(qat_resp, qat_req);
  return;
}
}
static int qat_alg_aead_dec(struct aead_request *areq )
{
  struct crypto_aead *aead_tfm ;
  struct crypto_aead *tmp ;
  struct crypto_tfm *tfm ;
  struct crypto_tfm *tmp___0 ;
  struct qat_alg_aead_ctx *ctx ;
  void *tmp___1 ;
  struct qat_crypto_request *qat_req ;
  void *tmp___2 ;
  struct icp_qat_fw_la_cipher_req_params *cipher_param ;
  struct icp_qat_fw_la_auth_req_params *auth_param ;
  struct icp_qat_fw_la_bulk_req *msg ;
  int digst_size ;
  struct crypto_aead *tmp___3 ;
  int ret ;
  int ctr ;
  long tmp___4 ;
  int tmp___5 ;
  {
  tmp = crypto_aead_reqtfm(areq);
  aead_tfm = tmp;
  tmp___0 = crypto_aead_tfm(aead_tfm);
  tfm = tmp___0;
  tmp___1 = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp___1;
  tmp___2 = aead_request_ctx(areq);
  qat_req = (struct qat_crypto_request *)tmp___2;
  tmp___3 = crypto_aead_crt(aead_tfm);
  digst_size = (int )tmp___3->authsize;
  ctr = 0;
  ret = qat_alg_sgl_to_bufl(ctx->inst, areq->assoc, (int )areq->assoclen, areq->src,
                            areq->dst, areq->iv, 16, qat_req);
  tmp___4 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___4 != 0L) {
    return (ret);
  } else {
  }
  msg = & qat_req->req;
  *msg = ctx->dec_fw_req;
  qat_req->__annonCompField76.aead_ctx = ctx;
  qat_req->__annonCompField77.aead_req = areq;
  qat_req->cb = & qat_aead_alg_callback;
  qat_req->req.comn_mid.opaque_data = (unsigned long long )qat_req;
  qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
  qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
  cipher_param = (struct icp_qat_fw_la_cipher_req_params *)(& qat_req->req.serv_specif_rqpars);
  cipher_param->cipher_length = areq->cryptlen - (unsigned int )digst_size;
  cipher_param->cipher_offset = areq->assoclen + 16U;
  memcpy((void *)(& cipher_param->u.cipher_IV_array), (void const *)areq->iv,
           16UL);
  auth_param = (struct icp_qat_fw_la_auth_req_params *)cipher_param + 24U;
  auth_param->auth_off = 0U;
  auth_param->auth_len = (areq->assoclen + cipher_param->cipher_length) + 16U;
  ldv_33128:
  ret = adf_send_message((ctx->inst)->sym_tx, (uint32_t *)msg);
  if (ret == -11) {
    tmp___5 = ctr;
    ctr = ctr + 1;
    if (tmp___5 <= 9) {
      goto ldv_33128;
    } else {
      goto ldv_33129;
    }
  } else {
  }
  ldv_33129: ;
  if (ret == -11) {
    qat_alg_free_bufl(ctx->inst, qat_req);
    return (-16);
  } else {
  }
  return (-115);
}
}
static int qat_alg_aead_enc_internal(struct aead_request *areq , uint8_t *iv , int enc_iv )
{
  struct crypto_aead *aead_tfm ;
  struct crypto_aead *tmp ;
  struct crypto_tfm *tfm ;
  struct crypto_tfm *tmp___0 ;
  struct qat_alg_aead_ctx *ctx ;
  void *tmp___1 ;
  struct qat_crypto_request *qat_req ;
  void *tmp___2 ;
  struct icp_qat_fw_la_cipher_req_params *cipher_param ;
  struct icp_qat_fw_la_auth_req_params *auth_param ;
  struct icp_qat_fw_la_bulk_req *msg ;
  int ret ;
  int ctr ;
  long tmp___3 ;
  int tmp___4 ;
  {
  tmp = crypto_aead_reqtfm(areq);
  aead_tfm = tmp;
  tmp___0 = crypto_aead_tfm(aead_tfm);
  tfm = tmp___0;
  tmp___1 = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp___1;
  tmp___2 = aead_request_ctx(areq);
  qat_req = (struct qat_crypto_request *)tmp___2;
  ctr = 0;
  ret = qat_alg_sgl_to_bufl(ctx->inst, areq->assoc, (int )areq->assoclen, areq->src,
                            areq->dst, iv, 16, qat_req);
  tmp___3 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___3 != 0L) {
    return (ret);
  } else {
  }
  msg = & qat_req->req;
  *msg = ctx->enc_fw_req;
  qat_req->__annonCompField76.aead_ctx = ctx;
  qat_req->__annonCompField77.aead_req = areq;
  qat_req->cb = & qat_aead_alg_callback;
  qat_req->req.comn_mid.opaque_data = (unsigned long long )qat_req;
  qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
  qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
  cipher_param = (struct icp_qat_fw_la_cipher_req_params *)(& qat_req->req.serv_specif_rqpars);
  auth_param = (struct icp_qat_fw_la_auth_req_params *)cipher_param + 24U;
  if (enc_iv != 0) {
    cipher_param->cipher_length = areq->cryptlen + 16U;
    cipher_param->cipher_offset = areq->assoclen;
  } else {
    memcpy((void *)(& cipher_param->u.cipher_IV_array), (void const *)iv, 16UL);
    cipher_param->cipher_length = areq->cryptlen;
    cipher_param->cipher_offset = areq->assoclen + 16U;
  }
  auth_param->auth_off = 0U;
  auth_param->auth_len = (areq->assoclen + areq->cryptlen) + 16U;
  ldv_33144:
  ret = adf_send_message((ctx->inst)->sym_tx, (uint32_t *)msg);
  if (ret == -11) {
    tmp___4 = ctr;
    ctr = ctr + 1;
    if (tmp___4 <= 9) {
      goto ldv_33144;
    } else {
      goto ldv_33145;
    }
  } else {
  }
  ldv_33145: ;
  if (ret == -11) {
    qat_alg_free_bufl(ctx->inst, qat_req);
    return (-16);
  } else {
  }
  return (-115);
}
}
static int qat_alg_aead_enc(struct aead_request *areq )
{
  int tmp ;
  {
  tmp = qat_alg_aead_enc_internal(areq, areq->iv, 0);
  return (tmp);
}
}
static int qat_alg_aead_genivenc(struct aead_givcrypt_request *req )
{
  struct crypto_aead *aead_tfm ;
  struct crypto_aead *tmp ;
  struct crypto_tfm *tfm ;
  struct crypto_tfm *tmp___0 ;
  struct qat_alg_aead_ctx *ctx ;
  void *tmp___1 ;
  __be64 seq ;
  __u64 tmp___2 ;
  int tmp___3 ;
  {
  tmp = crypto_aead_reqtfm(& req->areq);
  aead_tfm = tmp;
  tmp___0 = crypto_aead_tfm(aead_tfm);
  tfm = tmp___0;
  tmp___1 = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp___1;
  memcpy((void *)req->giv, (void const *)(& ctx->salt), 16UL);
  tmp___2 = __fswab64(req->seq);
  seq = tmp___2;
  memcpy((void *)req->giv + 8U, (void const *)(& seq), 8UL);
  tmp___3 = qat_alg_aead_enc_internal(& req->areq, req->giv, 1);
  return (tmp___3);
}
}
static int qat_alg_ablkcipher_setkey(struct crypto_ablkcipher *tfm , uint8_t const *key ,
                                     unsigned int keylen )
{
  struct qat_alg_ablkcipher_ctx *ctx ;
  void *tmp ;
  struct device *dev ;
  int node ;
  int tmp___0 ;
  struct qat_crypto_instance *inst___0 ;
  struct qat_crypto_instance *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = crypto_ablkcipher_ctx(tfm);
  ctx = (struct qat_alg_ablkcipher_ctx *)tmp;
  spin_lock(& ctx->lock);
  if ((unsigned long )ctx->enc_cd != (unsigned long )((struct icp_qat_hw_cipher_algo_blk *)0)) {
    dev = & (((ctx->inst)->accel_dev)->accel_pci_dev.pci_dev)->dev;
    memset((void *)ctx->enc_cd, 0, 128UL);
    memset((void *)ctx->dec_cd, 0, 128UL);
    memset((void *)(& ctx->enc_fw_req), 0, 128UL);
    memset((void *)(& ctx->dec_fw_req), 0, 128UL);
  } else {
    tmp___0 = get_current_node();
    node = tmp___0;
    tmp___1 = qat_crypto_get_instance_node(node);
    inst___0 = tmp___1;
    if ((unsigned long )inst___0 == (unsigned long )((struct qat_crypto_instance *)0)) {
      spin_unlock(& ctx->lock);
      return (-22);
    } else {
    }
    dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
    ctx->inst = inst___0;
    tmp___2 = dma_zalloc_coherent(dev, 128UL, & ctx->enc_cd_paddr, 32U);
    ctx->enc_cd = (struct icp_qat_hw_cipher_algo_blk *)tmp___2;
    if ((unsigned long )ctx->enc_cd == (unsigned long )((struct icp_qat_hw_cipher_algo_blk *)0)) {
      spin_unlock(& ctx->lock);
      return (-12);
    } else {
    }
    tmp___3 = dma_zalloc_coherent(dev, 128UL, & ctx->dec_cd_paddr, 32U);
    ctx->dec_cd = (struct icp_qat_hw_cipher_algo_blk *)tmp___3;
    if ((unsigned long )ctx->dec_cd == (unsigned long )((struct icp_qat_hw_cipher_algo_blk *)0)) {
      spin_unlock(& ctx->lock);
      goto out_free_enc;
    } else {
    }
  }
  spin_unlock(& ctx->lock);
  tmp___4 = qat_alg_ablkcipher_init_sessions(ctx, key, keylen);
  if (tmp___4 != 0) {
    goto out_free_all;
  } else {
  }
  return (0);
  out_free_all:
  memset((void *)ctx->dec_cd, 0, 128UL);
  dma_free_attrs(dev, 128UL, (void *)ctx->dec_cd, ctx->dec_cd_paddr, (struct dma_attrs *)0);
  ctx->dec_cd = (struct icp_qat_hw_cipher_algo_blk *)0;
  out_free_enc:
  memset((void *)ctx->enc_cd, 0, 128UL);
  dma_free_attrs(dev, 128UL, (void *)ctx->enc_cd, ctx->enc_cd_paddr, (struct dma_attrs *)0);
  ctx->enc_cd = (struct icp_qat_hw_cipher_algo_blk *)0;
  return (-12);
}
}
static int qat_alg_ablkcipher_encrypt(struct ablkcipher_request *req )
{
  struct crypto_ablkcipher *atfm ;
  struct crypto_ablkcipher *tmp ;
  struct crypto_tfm *tfm ;
  struct crypto_tfm *tmp___0 ;
  struct qat_alg_ablkcipher_ctx *ctx ;
  void *tmp___1 ;
  struct qat_crypto_request *qat_req ;
  void *tmp___2 ;
  struct icp_qat_fw_la_cipher_req_params *cipher_param ;
  struct icp_qat_fw_la_bulk_req *msg ;
  int ret ;
  int ctr ;
  long tmp___3 ;
  int tmp___4 ;
  {
  tmp = crypto_ablkcipher_reqtfm(req);
  atfm = tmp;
  tmp___0 = crypto_ablkcipher_tfm(atfm);
  tfm = tmp___0;
  tmp___1 = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_ablkcipher_ctx *)tmp___1;
  tmp___2 = ablkcipher_request_ctx(req);
  qat_req = (struct qat_crypto_request *)tmp___2;
  ctr = 0;
  ret = qat_alg_sgl_to_bufl(ctx->inst, (struct scatterlist *)0, 0, req->src, req->dst,
                            (uint8_t *)0U, 0, qat_req);
  tmp___3 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___3 != 0L) {
    return (ret);
  } else {
  }
  msg = & qat_req->req;
  *msg = ctx->enc_fw_req;
  qat_req->__annonCompField76.ablkcipher_ctx = ctx;
  qat_req->__annonCompField77.ablkcipher_req = req;
  qat_req->cb = & qat_ablkcipher_alg_callback;
  qat_req->req.comn_mid.opaque_data = (unsigned long long )qat_req;
  qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
  qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
  cipher_param = (struct icp_qat_fw_la_cipher_req_params *)(& qat_req->req.serv_specif_rqpars);
  cipher_param->cipher_length = req->nbytes;
  cipher_param->cipher_offset = 0U;
  memcpy((void *)(& cipher_param->u.cipher_IV_array), (void const *)req->info,
           16UL);
  ldv_33178:
  ret = adf_send_message((ctx->inst)->sym_tx, (uint32_t *)msg);
  if (ret == -11) {
    tmp___4 = ctr;
    ctr = ctr + 1;
    if (tmp___4 <= 9) {
      goto ldv_33178;
    } else {
      goto ldv_33179;
    }
  } else {
  }
  ldv_33179: ;
  if (ret == -11) {
    qat_alg_free_bufl(ctx->inst, qat_req);
    return (-16);
  } else {
  }
  return (-115);
}
}
static int qat_alg_ablkcipher_decrypt(struct ablkcipher_request *req )
{
  struct crypto_ablkcipher *atfm ;
  struct crypto_ablkcipher *tmp ;
  struct crypto_tfm *tfm ;
  struct crypto_tfm *tmp___0 ;
  struct qat_alg_ablkcipher_ctx *ctx ;
  void *tmp___1 ;
  struct qat_crypto_request *qat_req ;
  void *tmp___2 ;
  struct icp_qat_fw_la_cipher_req_params *cipher_param ;
  struct icp_qat_fw_la_bulk_req *msg ;
  int ret ;
  int ctr ;
  long tmp___3 ;
  int tmp___4 ;
  {
  tmp = crypto_ablkcipher_reqtfm(req);
  atfm = tmp;
  tmp___0 = crypto_ablkcipher_tfm(atfm);
  tfm = tmp___0;
  tmp___1 = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_ablkcipher_ctx *)tmp___1;
  tmp___2 = ablkcipher_request_ctx(req);
  qat_req = (struct qat_crypto_request *)tmp___2;
  ctr = 0;
  ret = qat_alg_sgl_to_bufl(ctx->inst, (struct scatterlist *)0, 0, req->src, req->dst,
                            (uint8_t *)0U, 0, qat_req);
  tmp___3 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___3 != 0L) {
    return (ret);
  } else {
  }
  msg = & qat_req->req;
  *msg = ctx->dec_fw_req;
  qat_req->__annonCompField76.ablkcipher_ctx = ctx;
  qat_req->__annonCompField77.ablkcipher_req = req;
  qat_req->cb = & qat_ablkcipher_alg_callback;
  qat_req->req.comn_mid.opaque_data = (unsigned long long )qat_req;
  qat_req->req.comn_mid.src_data_addr = qat_req->buf.blp;
  qat_req->req.comn_mid.dest_data_addr = qat_req->buf.bloutp;
  cipher_param = (struct icp_qat_fw_la_cipher_req_params *)(& qat_req->req.serv_specif_rqpars);
  cipher_param->cipher_length = req->nbytes;
  cipher_param->cipher_offset = 0U;
  memcpy((void *)(& cipher_param->u.cipher_IV_array), (void const *)req->info,
           16UL);
  ldv_33191:
  ret = adf_send_message((ctx->inst)->sym_tx, (uint32_t *)msg);
  if (ret == -11) {
    tmp___4 = ctr;
    ctr = ctr + 1;
    if (tmp___4 <= 9) {
      goto ldv_33191;
    } else {
      goto ldv_33192;
    }
  } else {
  }
  ldv_33192: ;
  if (ret == -11) {
    qat_alg_free_bufl(ctx->inst, qat_req);
    return (-16);
  } else {
  }
  return (-115);
}
}
static int qat_alg_aead_init(struct crypto_tfm *tfm , enum icp_qat_hw_auth_algo hash ,
                             char const *hash_name )
{
  struct qat_alg_aead_ctx *ctx ;
  void *tmp ;
  bool tmp___0 ;
  struct lock_class_key __key ;
  struct crypto_aead *tmp___1 ;
  {
  tmp = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp;
  ctx->hash_tfm = crypto_alloc_shash(hash_name, 0U, 0U);
  tmp___0 = IS_ERR((void const *)ctx->hash_tfm);
  if ((int )tmp___0) {
    return (-14);
  } else {
  }
  spinlock_check(& ctx->lock);
  __raw_spin_lock_init(& ctx->lock.__annonCompField18.rlock, "&(&ctx->lock)->rlock",
                       & __key);
  ctx->qat_hash_alg = hash;
  tmp___1 = __crypto_aead_cast(tfm);
  crypto_aead_set_reqsize(tmp___1, 296U);
  ctx->tfm = tfm;
  return (0);
}
}
static int qat_alg_aead_sha1_init(struct crypto_tfm *tfm )
{
  int tmp ;
  {
  tmp = qat_alg_aead_init(tfm, 1, "sha1");
  return (tmp);
}
}
static int qat_alg_aead_sha256_init(struct crypto_tfm *tfm )
{
  int tmp ;
  {
  tmp = qat_alg_aead_init(tfm, 4, "sha256");
  return (tmp);
}
}
static int qat_alg_aead_sha512_init(struct crypto_tfm *tfm )
{
  int tmp ;
  {
  tmp = qat_alg_aead_init(tfm, 6, "sha512");
  return (tmp);
}
}
static void qat_alg_aead_exit(struct crypto_tfm *tfm )
{
  struct qat_alg_aead_ctx *ctx ;
  void *tmp ;
  struct qat_crypto_instance *inst___0 ;
  struct device *dev ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_aead_ctx *)tmp;
  inst___0 = ctx->inst;
  tmp___0 = IS_ERR((void const *)ctx->hash_tfm);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    crypto_free_shash(ctx->hash_tfm);
  } else {
  }
  if ((unsigned long )inst___0 == (unsigned long )((struct qat_crypto_instance *)0)) {
    return;
  } else {
  }
  dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
  if ((unsigned long )ctx->enc_cd != (unsigned long )((struct qat_alg_cd *)0)) {
    memset((void *)ctx->enc_cd, 0, 320UL);
    dma_free_attrs(dev, 320UL, (void *)ctx->enc_cd, ctx->enc_cd_paddr, (struct dma_attrs *)0);
  } else {
  }
  if ((unsigned long )ctx->dec_cd != (unsigned long )((struct qat_alg_cd *)0)) {
    memset((void *)ctx->dec_cd, 0, 320UL);
    dma_free_attrs(dev, 320UL, (void *)ctx->dec_cd, ctx->dec_cd_paddr, (struct dma_attrs *)0);
  } else {
  }
  qat_crypto_put_instance(inst___0);
  return;
}
}
static int qat_alg_ablkcipher_init(struct crypto_tfm *tfm )
{
  struct qat_alg_ablkcipher_ctx *ctx ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_ablkcipher_ctx *)tmp;
  spinlock_check(& ctx->lock);
  __raw_spin_lock_init(& ctx->lock.__annonCompField18.rlock, "&(&ctx->lock)->rlock",
                       & __key);
  tfm->crt_u.ablkcipher.reqsize = 280U;
  ctx->tfm = tfm;
  return (0);
}
}
static void qat_alg_ablkcipher_exit(struct crypto_tfm *tfm )
{
  struct qat_alg_ablkcipher_ctx *ctx ;
  void *tmp ;
  struct qat_crypto_instance *inst___0 ;
  struct device *dev ;
  {
  tmp = crypto_tfm_ctx(tfm);
  ctx = (struct qat_alg_ablkcipher_ctx *)tmp;
  inst___0 = ctx->inst;
  if ((unsigned long )inst___0 == (unsigned long )((struct qat_crypto_instance *)0)) {
    return;
  } else {
  }
  dev = & ((inst___0->accel_dev)->accel_pci_dev.pci_dev)->dev;
  if ((unsigned long )ctx->enc_cd != (unsigned long )((struct icp_qat_hw_cipher_algo_blk *)0)) {
    memset((void *)ctx->enc_cd, 0, 128UL);
    dma_free_attrs(dev, 128UL, (void *)ctx->enc_cd, ctx->enc_cd_paddr, (struct dma_attrs *)0);
  } else {
  }
  if ((unsigned long )ctx->dec_cd != (unsigned long )((struct icp_qat_hw_cipher_algo_blk *)0)) {
    memset((void *)ctx->dec_cd, 0, 128UL);
    dma_free_attrs(dev, 128UL, (void *)ctx->dec_cd, ctx->dec_cd_paddr, (struct dma_attrs *)0);
  } else {
  }
  qat_crypto_put_instance(inst___0);
  return;
}
}
static struct crypto_alg qat_algs[4U] = { {{0, 0}, {0, 0}, 131U, 16U, 408U, 0U, 4001, {0}, {'a', 'u', 't', 'h', 'e', 'n',
                                                       'c', '(', 'h', 'm', 'a', 'c',
                                                       '(', 's', 'h', 'a', '1', ')',
                                                       ',', 'c', 'b', 'c', '(', 'a',
                                                       'e', 's', ')', ')', '\000'},
      {'q', 'a', 't', '_', 'a', 'e', 's', '_', 'c', 'b', 'c', '_', 'h', 'm', 'a',
       'c', '_', 's', 'h', 'a', '1', '\000'}, & crypto_aead_type, {.aead = {& qat_alg_aead_setkey,
                                                                            0, & qat_alg_aead_enc,
                                                                            & qat_alg_aead_dec,
                                                                            & qat_alg_aead_genivenc,
                                                                            0, 0,
                                                                            16U, 20U}},
      & qat_alg_aead_sha1_init, & qat_alg_aead_exit, 0, & __this_module},
        {{0, 0}, {0, 0}, 131U, 16U, 408U, 0U, 4001, {0}, {'a', 'u', 't', 'h', 'e', 'n',
                                                       'c', '(', 'h', 'm', 'a', 'c',
                                                       '(', 's', 'h', 'a', '2', '5',
                                                       '6', ')', ',', 'c', 'b', 'c',
                                                       '(', 'a', 'e', 's', ')', ')',
                                                       '\000'}, {'q', 'a', 't', '_',
                                                                 'a', 'e', 's', '_',
                                                                 'c', 'b', 'c', '_',
                                                                 'h', 'm', 'a', 'c',
                                                                 '_', 's', 'h', 'a',
                                                                 '2', '5', '6', '\000'},
      & crypto_aead_type, {.aead = {& qat_alg_aead_setkey, 0, & qat_alg_aead_enc,
                                    & qat_alg_aead_dec, & qat_alg_aead_genivenc, 0,
                                    0, 16U, 32U}}, & qat_alg_aead_sha256_init, & qat_alg_aead_exit,
      0, & __this_module},
        {{0, 0}, {0, 0}, 131U, 16U, 408U, 0U, 4001, {0}, {'a', 'u', 't', 'h', 'e', 'n',
                                                       'c', '(', 'h', 'm', 'a', 'c',
                                                       '(', 's', 'h', 'a', '5', '1',
                                                       '2', ')', ',', 'c', 'b', 'c',
                                                       '(', 'a', 'e', 's', ')', ')',
                                                       '\000'}, {'q', 'a', 't', '_',
                                                                 'a', 'e', 's', '_',
                                                                 'c', 'b', 'c', '_',
                                                                 'h', 'm', 'a', 'c',
                                                                 '_', 's', 'h', 'a',
                                                                 '5', '1', '2', '\000'},
      & crypto_aead_type, {.aead = {& qat_alg_aead_setkey, 0, & qat_alg_aead_enc,
                                    & qat_alg_aead_dec, & qat_alg_aead_genivenc, 0,
                                    0, 16U, 64U}}, & qat_alg_aead_sha512_init, & qat_alg_aead_exit,
      0, & __this_module},
        {{0, 0}, {0, 0}, 133U, 16U, 376U, 0U, 4001, {0}, {'c', 'b', 'c', '(', 'a', 'e',
                                                       's', ')', '\000'}, {'q', 'a',
                                                                           't', '_',
                                                                           'a', 'e',
                                                                           's', '_',
                                                                           'c', 'b',
                                                                           'c', '\000'},
      & crypto_ablkcipher_type, {{& qat_alg_ablkcipher_setkey, & qat_alg_ablkcipher_encrypt,
                                  & qat_alg_ablkcipher_decrypt, 0, 0, 0, 16U, 32U,
                                  16U}}, & qat_alg_ablkcipher_init, & qat_alg_ablkcipher_exit,
      0, & __this_module}};
int qat_algs_register(void)
{
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = atomic_add_return(1, & active_dev);
  if (tmp___0 == 1) {
    i = 0;
    goto ldv_33234;
    ldv_33233:
    qat_algs[i].cra_flags = (unsigned long )qat_algs[i].cra_type == (unsigned long )(& crypto_aead_type) ? 131U : 133U;
    i = i + 1;
    ldv_33234: ;
    if ((unsigned int )i <= 3U) {
      goto ldv_33233;
    } else {
    }
    tmp = crypto_register_algs((struct crypto_alg *)(& qat_algs), 4);
    return (tmp);
  } else {
  }
  return (0);
}
}
int qat_algs_unregister(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = atomic_sub_return(1, & active_dev);
  if (tmp___0 == 0) {
    tmp = crypto_unregister_algs((struct crypto_alg *)(& qat_algs), 4);
    return (tmp);
  } else {
  }
  return (0);
}
}
int qat_algs_init(void)
{
  {
  atomic_set(& active_dev, 0);
  crypto_get_default_rng();
  return (0);
}
}
void qat_algs_exit(void)
{
  {
  crypto_put_default_rng();
  return;
}
}
bool ldv_queue_work_on_291(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_292(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_293(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_294(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_295(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
int ldv_pskb_expand_head_307(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv_skb_clone_309(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_311(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_312(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_313(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_314(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_315(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_316(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
extern void *memmove(void * , void const * , size_t ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern void *kmemdup(void const * , size_t , gfp_t ) ;
bool ldv_queue_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_338(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_337(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_339(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern unsigned char const _ctype[] ;
void qat_hal_set_live_ctx(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                          unsigned int ctx_mask ) ;
int qat_hal_set_ae_lm_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                           enum icp_qat_uof_regtype lm_type , unsigned char mode ) ;
int qat_hal_set_ae_ctx_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                            unsigned char mode ) ;
int qat_hal_set_ae_nn_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                           unsigned char mode ) ;
void qat_hal_set_pc(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask ,
                    unsigned int upc ) ;
void qat_hal_wr_uwords(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                       unsigned int uaddr , unsigned int words_num , uint64_t *uword ) ;
void qat_hal_wr_umem(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                     unsigned int uaddr , unsigned int words_num , unsigned int *data ) ;
int qat_hal_get_ins_num(void) ;
int qat_hal_batch_wr_lm(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                        struct icp_qat_uof_batch_init *lm_init_header ) ;
int qat_hal_init_gpr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                     unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                     unsigned short reg_num , unsigned int regdata ) ;
int qat_hal_init_wr_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                         unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                         unsigned short reg_num , unsigned int regdata ) ;
int qat_hal_init_rd_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                         unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                         unsigned short reg_num , unsigned int regdata ) ;
int qat_hal_init_nn(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned char ctx_mask ,
                    unsigned short reg_num , unsigned int regdata ) ;
static int qat_uclo_init_ae_data(struct icp_qat_uclo_objhandle *obj_handle , unsigned int ae ,
                                 unsigned int image_num )
{
  struct icp_qat_uclo_aedata *ae_data ;
  struct icp_qat_uclo_encapme *encap_image ;
  struct icp_qat_uclo_page *page ;
  struct icp_qat_uclo_aeslice *ae_slice ;
  void *tmp ;
  void *tmp___0 ;
  {
  page = (struct icp_qat_uclo_page *)0;
  ae_slice = (struct icp_qat_uclo_aeslice *)0;
  ae_data = (struct icp_qat_uclo_aedata *)(& obj_handle->ae_data) + (unsigned long )ae;
  encap_image = (struct icp_qat_uclo_encapme *)(& obj_handle->ae_uimage) + (unsigned long )image_num;
  ae_slice = (struct icp_qat_uclo_aeslice *)(& ae_data->ae_slices) + (unsigned long )ae_data->slice_num;
  ae_slice->encap_image = encap_image;
  if ((unsigned long )encap_image->img_ptr != (unsigned long )((struct icp_qat_uof_image *)0)) {
    ae_slice->ctx_mask_assigned = (encap_image->img_ptr)->ctx_assigned;
    ae_data->eff_ustore_size = obj_handle->ustore_phy_size;
  } else {
    ae_slice->ctx_mask_assigned = 0U;
  }
  tmp = kzalloc(16UL, 208U);
  ae_slice->region = (struct icp_qat_uclo_region *)tmp;
  if ((unsigned long )ae_slice->region == (unsigned long )((struct icp_qat_uclo_region *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = kzalloc(24UL, 208U);
  ae_slice->page = (struct icp_qat_uclo_page *)tmp___0;
  if ((unsigned long )ae_slice->page == (unsigned long )((struct icp_qat_uclo_page *)0)) {
    goto out_err;
  } else {
  }
  page = ae_slice->page;
  page->encap_page = encap_image->page;
  (ae_slice->page)->region = ae_slice->region;
  ae_data->slice_num = ae_data->slice_num + 1U;
  return (0);
  out_err:
  kfree((void const *)ae_slice->region);
  ae_slice->region = (struct icp_qat_uclo_region *)0;
  return (-12);
}
}
static int qat_uclo_free_ae_data(struct icp_qat_uclo_aedata *ae_data )
{
  unsigned int i ;
  {
  if ((unsigned long )ae_data == (unsigned long )((struct icp_qat_uclo_aedata *)0)) {
    printk("\vQAT: bad argument, ae_data is NULL\n ");
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_27749;
  ldv_27748:
  kfree((void const *)ae_data->ae_slices[i].region);
  ae_data->ae_slices[i].region = (struct icp_qat_uclo_region *)0;
  kfree((void const *)ae_data->ae_slices[i].page);
  ae_data->ae_slices[i].page = (struct icp_qat_uclo_page *)0;
  i = i + 1U;
  ldv_27749: ;
  if (ae_data->slice_num > i) {
    goto ldv_27748;
  } else {
  }
  return (0);
}
}
static char *qat_uclo_get_string(struct icp_qat_uof_strtable *str_table , unsigned int str_offset )
{
  {
  if (str_table->table_len == 0U || str_table->table_len < str_offset) {
    return ((char *)0);
  } else {
  }
  return ((char *)((unsigned long )str_table->strings + (unsigned long )str_offset));
}
}
static int qat_uclo_check_format(struct icp_qat_uof_filehdr *hdr )
{
  int maj ;
  int min ;
  {
  maj = (int )hdr->maj_ver & 255;
  min = (int )hdr->min_ver & 255;
  if ((unsigned int )hdr->file_id != 50882U) {
    printk("\vQAT: Invalid header 0x%x\n", (int )hdr->file_id);
    return (-22);
  } else {
  }
  if (min != 17 || maj != 4) {
    printk("\vQAT: bad UOF version, major 0x%x, minor 0x%x\n", maj, min);
    return (-22);
  } else {
  }
  return (0);
}
}
static void qat_uclo_wr_sram_by_words(struct icp_qat_fw_loader_handle *handle , unsigned int addr ,
                                      unsigned int *val , unsigned int num_in_bytes )
{
  unsigned int outval ;
  unsigned char *ptr ;
  {
  ptr = (unsigned char *)val;
  goto ldv_27769;
  ldv_27768:
  memcpy((void *)(& outval), (void const *)ptr, 4UL);
  __writel(outval, (void volatile *)handle->hal_sram_addr_v + (unsigned long )addr);
  num_in_bytes = num_in_bytes - 4U;
  ptr = ptr + 4UL;
  addr = addr + 4U;
  ldv_27769: ;
  if (num_in_bytes != 0U) {
    goto ldv_27768;
  } else {
  }
  return;
}
}
static void qat_uclo_wr_umem_by_words(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                      unsigned int addr , unsigned int *val , unsigned int num_in_bytes )
{
  unsigned int outval ;
  unsigned char *ptr ;
  unsigned int tmp ;
  {
  ptr = (unsigned char *)val;
  addr = addr >> 2;
  goto ldv_27781;
  ldv_27780:
  memcpy((void *)(& outval), (void const *)ptr, 4UL);
  tmp = addr;
  addr = addr + 1U;
  qat_hal_wr_umem(handle, (int )ae, tmp, 1U, & outval);
  num_in_bytes = num_in_bytes - 4U;
  ptr = ptr + 4UL;
  ldv_27781: ;
  if (num_in_bytes != 0U) {
    goto ldv_27780;
  } else {
  }
  return;
}
}
static void qat_uclo_batch_wr_umem(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                   struct icp_qat_uof_batch_init *umem_init_header )
{
  struct icp_qat_uof_batch_init *umem_init ;
  unsigned int addr ;
  unsigned int *value ;
  unsigned int size ;
  {
  if ((unsigned long )umem_init_header == (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    return;
  } else {
  }
  umem_init = umem_init_header->next;
  goto ldv_27793;
  ldv_27792:
  ae = (unsigned char )umem_init->ae;
  addr = umem_init->addr;
  value = umem_init->value;
  size = umem_init->size;
  qat_uclo_wr_umem_by_words(handle, (int )ae, addr, value, size);
  umem_init = umem_init->next;
  ldv_27793: ;
  if ((unsigned long )umem_init != (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto ldv_27792;
  } else {
  }
  return;
}
}
static void qat_uclo_cleanup_batch_init_list(struct icp_qat_fw_loader_handle *handle ,
                                             struct icp_qat_uof_batch_init **base )
{
  struct icp_qat_uof_batch_init *umem_init ;
  struct icp_qat_uof_batch_init *pre ;
  {
  umem_init = *base;
  goto ldv_27802;
  ldv_27801:
  pre = umem_init;
  umem_init = umem_init->next;
  kfree((void const *)pre);
  ldv_27802: ;
  if ((unsigned long )umem_init != (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto ldv_27801;
  } else {
  }
  *base = (struct icp_qat_uof_batch_init *)0;
  return;
}
}
static int qat_uclo_parse_num(char *str , unsigned int *num )
{
  char buf[16U] ;
  unsigned int tmp ;
  unsigned long ae ;
  int i ;
  int tmp___0 ;
  {
  buf[0] = 0;
  tmp = 1U;
  while (1) {
    if (tmp >= 16U) {
      break;
    } else {
    }
    buf[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  ae = 0UL;
  strncpy((char *)(& buf), (char const *)str, 15UL);
  i = 0;
  goto ldv_27813;
  ldv_27812: ;
  if (((int )_ctype[(int )((unsigned char )buf[i])] & 4) == 0) {
    buf[i] = 0;
    goto ldv_27811;
  } else {
  }
  i = i + 1;
  ldv_27813: ;
  if (i <= 15) {
    goto ldv_27812;
  } else {
  }
  ldv_27811:
  tmp___0 = kstrtoul((char const *)(& buf), 10U, & ae);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  *num = (unsigned int )ae;
  return (0);
}
}
static int qat_uclo_fetch_initmem_ae(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uof_initmem *init_mem ,
                                     unsigned int size_range , unsigned int *ae )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  char *str ;
  int tmp ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  if (init_mem->addr + init_mem->num_in_bytes > size_range << 2) {
    printk("\vQAT: initmem is out of range");
    return (-22);
  } else {
  }
  if ((int )((signed char )init_mem->scope) != 1) {
    printk("\vQAT: Memory scope for init_mem error\n");
    return (-22);
  } else {
  }
  str = qat_uclo_get_string(& obj_handle->str_table, init_mem->sym_name);
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    printk("\vQAT: AE name assigned in UOF init table is NULL\n");
    return (-22);
  } else {
  }
  tmp = qat_uclo_parse_num(str, ae);
  if (tmp != 0) {
    printk("\vQAT: Parse num for AE number failed\n");
    return (-22);
  } else {
  }
  if (*ae > 11U) {
    printk("\vQAT: ae %d out of range\n", *ae);
    return (-22);
  } else {
  }
  return (0);
}
}
static int qat_uclo_create_batch_init_list(struct icp_qat_fw_loader_handle *handle ,
                                           struct icp_qat_uof_initmem *init_mem ,
                                           unsigned int ae , struct icp_qat_uof_batch_init **init_tab_base )
{
  struct icp_qat_uof_batch_init *init_header ;
  struct icp_qat_uof_batch_init *tail ;
  struct icp_qat_uof_batch_init *mem_init___0 ;
  struct icp_qat_uof_batch_init *tail_old ;
  struct icp_qat_uof_memvar_attr *mem_val_attr ;
  unsigned int i ;
  unsigned int flag ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  flag = 0U;
  mem_val_attr = (struct icp_qat_uof_memvar_attr *)((unsigned long )init_mem + 20UL);
  init_header = *init_tab_base;
  if ((unsigned long )init_header == (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    tmp = kzalloc(32UL, 208U);
    init_header = (struct icp_qat_uof_batch_init *)tmp;
    if ((unsigned long )init_header == (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
      return (-12);
    } else {
    }
    init_header->size = 1U;
    *init_tab_base = init_header;
    flag = 1U;
  } else {
  }
  tail_old = init_header;
  goto ldv_27836;
  ldv_27835:
  tail_old = tail_old->next;
  ldv_27836: ;
  if ((unsigned long )tail_old->next != (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto ldv_27835;
  } else {
  }
  tail = tail_old;
  i = 0U;
  goto ldv_27840;
  ldv_27839:
  tmp___0 = kzalloc(32UL, 208U);
  mem_init___0 = (struct icp_qat_uof_batch_init *)tmp___0;
  if ((unsigned long )mem_init___0 == (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto out_err;
  } else {
  }
  mem_init___0->ae = ae;
  mem_init___0->addr = init_mem->addr + mem_val_attr->offset_in_byte;
  mem_init___0->value = & mem_val_attr->value;
  mem_init___0->size = 4U;
  mem_init___0->next = (struct icp_qat_uof_batch_init *)0;
  tail->next = mem_init___0;
  tail = mem_init___0;
  tmp___1 = qat_hal_get_ins_num();
  init_header->size = init_header->size + (unsigned int )tmp___1;
  mem_val_attr = mem_val_attr + 1;
  i = i + 1U;
  ldv_27840: ;
  if (init_mem->val_attr_num > i) {
    goto ldv_27839;
  } else {
  }
  return (0);
  out_err: ;
  goto ldv_27843;
  ldv_27842:
  mem_init___0 = tail_old->next;
  kfree((void const *)tail_old);
  tail_old = mem_init___0;
  ldv_27843: ;
  if ((unsigned long )tail_old != (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto ldv_27842;
  } else {
  }
  if (flag != 0U) {
    kfree((void const *)*init_tab_base);
  } else {
  }
  return (-12);
}
}
static int qat_uclo_init_lmem_seg(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uof_initmem *init_mem )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int ae ;
  int tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  tmp = qat_uclo_fetch_initmem_ae(handle, init_mem, 1024U, & ae);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  tmp___0 = qat_uclo_create_batch_init_list(handle, init_mem, ae, (struct icp_qat_uof_batch_init **)(& obj_handle->lm_init_tab) + (unsigned long )ae);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uof_initmem *init_mem )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int ae ;
  unsigned int ustore_size ;
  unsigned int uaddr ;
  unsigned int i ;
  int tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  ustore_size = obj_handle->ustore_phy_size;
  tmp = qat_uclo_fetch_initmem_ae(handle, init_mem, ustore_size, & ae);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  tmp___0 = qat_uclo_create_batch_init_list(handle, init_mem, ae, (struct icp_qat_uof_batch_init **)(& obj_handle->umem_init_tab) + (unsigned long )ae);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  uaddr = (init_mem->addr + init_mem->num_in_bytes) >> 2;
  i = 0U;
  goto ldv_27861;
  ldv_27860: ;
  if ((obj_handle->ae_data[ae].ae_slices[i].encap_image)->uwords_num < uaddr) {
    (obj_handle->ae_data[ae].ae_slices[i].encap_image)->uwords_num = uaddr;
  } else {
  }
  i = i + 1U;
  ldv_27861: ;
  if (obj_handle->ae_data[ae].slice_num > i) {
    goto ldv_27860;
  } else {
  }
  return (0);
}
}
static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uof_initmem *init_mem )
{
  unsigned int i ;
  struct icp_qat_uof_memvar_attr *mem_val_attr ;
  int tmp ;
  int tmp___0 ;
  {
  mem_val_attr = (struct icp_qat_uof_memvar_attr *)((unsigned long )init_mem + 20UL);
  switch ((int )init_mem->region) {
  case 0: ;
  if (init_mem->addr + init_mem->num_in_bytes > 524288U) {
    printk("\vQAT: initmem on SRAM is out of range");
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_27871;
  ldv_27870:
  qat_uclo_wr_sram_by_words(handle, init_mem->addr + mem_val_attr->offset_in_byte,
                            & mem_val_attr->value, 4U);
  mem_val_attr = mem_val_attr + 1;
  i = i + 1U;
  ldv_27871: ;
  if (init_mem->val_attr_num > i) {
    goto ldv_27870;
  } else {
  }
  goto ldv_27873;
  case 3:
  tmp = qat_uclo_init_lmem_seg(handle, init_mem);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  goto ldv_27873;
  case 5:
  tmp___0 = qat_uclo_init_umem_seg(handle, init_mem);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  goto ldv_27873;
  default:
  printk("\vQAT: initmem region error. region type=0x%x\n", (int )init_mem->region);
  return (-22);
  }
  ldv_27873: ;
  return (0);
}
}
static int qat_uclo_init_ustore(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uclo_encapme *image )
{
  unsigned int i ;
  struct icp_qat_uclo_encap_page *page ;
  struct icp_qat_uof_image *uof_image ;
  unsigned char ae ;
  unsigned int ustore_size ;
  unsigned int patt_pos ;
  struct icp_qat_uclo_objhandle *obj_handle ;
  uint64_t *fill_data ;
  void *tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  uof_image = image->img_ptr;
  tmp = kcalloc(16384UL, 8UL, 208U);
  fill_data = (uint64_t *)tmp;
  if ((unsigned long )fill_data == (unsigned long )((uint64_t *)0ULL)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_27890;
  ldv_27889:
  memcpy((void *)fill_data + (unsigned long )i, (void const *)(& uof_image->fill_pattern),
           8UL);
  i = i + 1U;
  ldv_27890: ;
  if (i <= 16383U) {
    goto ldv_27889;
  } else {
  }
  page = image->page;
  ae = 0U;
  goto ldv_27894;
  ldv_27893:
  tmp___0 = variable_test_bit((long )ae, (unsigned long const volatile *)(& uof_image->ae_assigned));
  if (tmp___0 == 0) {
    goto ldv_27892;
  } else {
  }
  ustore_size = obj_handle->ae_data[(int )ae].eff_ustore_size;
  patt_pos = page->beg_addr_p + page->micro_words_num;
  qat_hal_wr_uwords(handle, (int )ae, 0U, page->beg_addr_p, fill_data);
  qat_hal_wr_uwords(handle, (int )ae, patt_pos, (ustore_size - patt_pos) + 1U, fill_data + (unsigned long )page->beg_addr_p);
  ldv_27892:
  ae = (unsigned char )((int )ae + 1);
  ldv_27894: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27893;
  } else {
  }
  kfree((void const *)fill_data);
  return (0);
}
}
static int qat_uclo_init_memory(struct icp_qat_fw_loader_handle *handle )
{
  int i ;
  int ae ;
  struct icp_qat_uclo_objhandle *obj_handle ;
  struct icp_qat_uof_initmem *initmem ;
  int tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  initmem = obj_handle->init_mem_tab.init_mem;
  i = 0;
  goto ldv_27904;
  ldv_27903: ;
  if (initmem->num_in_bytes != 0U) {
    tmp = qat_uclo_init_ae_memory(handle, initmem);
    if (tmp != 0) {
      return (-22);
    } else {
    }
  } else {
  }
  initmem = (struct icp_qat_uof_initmem *)(((unsigned long )initmem->val_attr_num * 8UL + (unsigned long )initmem) + 20UL);
  i = i + 1;
  ldv_27904: ;
  if ((unsigned int )i < obj_handle->init_mem_tab.entry_num) {
    goto ldv_27903;
  } else {
  }
  ae = 0;
  goto ldv_27907;
  ldv_27906:
  tmp___0 = qat_hal_batch_wr_lm(handle, (int )((unsigned char )ae), obj_handle->lm_init_tab[ae]);
  if (tmp___0 != 0) {
    printk("\vQAT: fail to batch init lmem for AE %d\n", ae);
    return (-22);
  } else {
  }
  qat_uclo_cleanup_batch_init_list(handle, (struct icp_qat_uof_batch_init **)(& obj_handle->lm_init_tab) + (unsigned long )ae);
  qat_uclo_batch_wr_umem(handle, (int )((unsigned char )ae), obj_handle->umem_init_tab[ae]);
  qat_uclo_cleanup_batch_init_list(handle, (struct icp_qat_uof_batch_init **)(& obj_handle->umem_init_tab) + (unsigned long )ae);
  ae = ae + 1;
  ldv_27907: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27906;
  } else {
  }
  return (0);
}
}
static void *qat_uclo_find_chunk(struct icp_qat_uof_objhdr *obj_hdr , char *chunk_id ,
                                 void *cur )
{
  int i ;
  struct icp_qat_uof_chunkhdr *chunk_hdr ;
  int tmp ;
  {
  chunk_hdr = (struct icp_qat_uof_chunkhdr *)((unsigned long )obj_hdr + 20UL);
  i = 0;
  goto ldv_27917;
  ldv_27916: ;
  if ((unsigned long )((void *)chunk_hdr + (unsigned long )i) > (unsigned long )cur) {
    tmp = strncmp((char const *)(& (chunk_hdr + (unsigned long )i)->chunk_id), (char const *)chunk_id,
                  8UL);
    if (tmp == 0) {
      return ((void *)chunk_hdr + (unsigned long )i);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_27917: ;
  if ((int )obj_hdr->num_chunks > i) {
    goto ldv_27916;
  } else {
  }
  return ((void *)0);
}
}
static unsigned int qat_uclo_calc_checksum(unsigned int reg , int ch )
{
  int i ;
  unsigned int topbit ;
  unsigned int inbyte ;
  {
  topbit = 32768U;
  inbyte = (reg >> 24) ^ (unsigned int )ch;
  reg = (inbyte << 8) ^ reg;
  i = 0;
  goto ldv_27927;
  ldv_27926: ;
  if ((reg & topbit) != 0U) {
    reg = (reg << 1) ^ 4129U;
  } else {
    reg = reg << 1;
  }
  i = i + 1;
  ldv_27927: ;
  if (i <= 7) {
    goto ldv_27926;
  } else {
  }
  return (reg & 65535U);
}
}
static unsigned int qat_uclo_calc_str_checksum(char *ptr , int num )
{
  unsigned int chksum ;
  char *tmp ;
  int tmp___0 ;
  {
  chksum = 0U;
  if ((unsigned long )ptr != (unsigned long )((char *)0)) {
    goto ldv_27935;
    ldv_27934:
    tmp = ptr;
    ptr = ptr + 1;
    chksum = qat_uclo_calc_checksum(chksum, (int )*tmp);
    ldv_27935:
    tmp___0 = num;
    num = num - 1;
    if (tmp___0 != 0) {
      goto ldv_27934;
    } else {
    }
  } else {
  }
  return (chksum);
}
}
static struct icp_qat_uclo_objhdr *qat_uclo_map_chunk(char *buf , struct icp_qat_uof_filehdr *file_hdr ,
                                                      char *chunk_id )
{
  struct icp_qat_uof_filechunkhdr *file_chunk ;
  struct icp_qat_uclo_objhdr *obj_hdr ;
  char *chunk ;
  int i ;
  unsigned int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  file_chunk = (struct icp_qat_uof_filechunkhdr *)buf + 12U;
  i = 0;
  goto ldv_27948;
  ldv_27947:
  tmp___1 = strncmp((char const *)(& file_chunk->chunk_id), (char const *)chunk_id,
                    8UL);
  if (tmp___1 == 0) {
    chunk = buf + (unsigned long )file_chunk->offset;
    tmp = qat_uclo_calc_str_checksum(chunk, (int )file_chunk->size);
    if (file_chunk->checksum != tmp) {
      goto ldv_27946;
    } else {
    }
    tmp___0 = kzalloc(16UL, 208U);
    obj_hdr = (struct icp_qat_uclo_objhdr *)tmp___0;
    if ((unsigned long )obj_hdr == (unsigned long )((struct icp_qat_uclo_objhdr *)0)) {
      goto ldv_27946;
    } else {
    }
    obj_hdr->file_buff = chunk;
    obj_hdr->checksum = file_chunk->checksum;
    obj_hdr->size = file_chunk->size;
    return (obj_hdr);
  } else {
  }
  file_chunk = file_chunk + 1;
  i = i + 1;
  ldv_27948: ;
  if ((int )file_hdr->num_chunks > i) {
    goto ldv_27947;
  } else {
  }
  ldv_27946: ;
  return ((struct icp_qat_uclo_objhdr *)0);
}
}
static unsigned int qat_uclo_check_image_compat(struct icp_qat_uof_encap_obj *encap_uof_obj ,
                                                struct icp_qat_uof_image *image )
{
  struct icp_qat_uof_objtable *uc_var_tab ;
  struct icp_qat_uof_objtable *imp_var_tab ;
  struct icp_qat_uof_objtable *imp_expr_tab ;
  struct icp_qat_uof_objtable *neigh_reg_tab ;
  struct icp_qat_uof_code_page *code_page ;
  {
  code_page = (struct icp_qat_uof_code_page *)image + 64U;
  uc_var_tab = (struct icp_qat_uof_objtable *)encap_uof_obj->beg_uof + (unsigned long )code_page->uc_var_tab_offset;
  imp_var_tab = (struct icp_qat_uof_objtable *)encap_uof_obj->beg_uof + (unsigned long )code_page->imp_var_tab_offset;
  imp_expr_tab = (struct icp_qat_uof_objtable *)encap_uof_obj->beg_uof + (unsigned long )code_page->imp_expr_tab_offset;
  if ((uc_var_tab->entry_num != 0U || imp_var_tab->entry_num != 0U) || imp_expr_tab->entry_num != 0U) {
    printk("\vQAT: UOF can\'t contain imported variable to be parsed");
    return (4294967274U);
  } else {
  }
  neigh_reg_tab = (struct icp_qat_uof_objtable *)encap_uof_obj->beg_uof + (unsigned long )code_page->neigh_reg_tab_offset;
  if (neigh_reg_tab->entry_num != 0U) {
    printk("\vQAT: UOF can\'t contain shared control store feature");
    return (4294967274U);
  } else {
  }
  if ((unsigned int )image->numpages > 1U) {
    printk("\vQAT: UOF can\'t contain multiple pages");
    return (4294967274U);
  } else {
  }
  if (((int )image->ae_mode >> 11) & 1) {
    printk("\vQAT: UOF can\'t use shared control store feature");
    return (4294967282U);
  } else {
  }
  if (((int )image->ae_mode >> 12) & 1) {
    printk("\vQAT: UOF can\'t use reloadable feature");
    return (4294967282U);
  } else {
  }
  return (0U);
}
}
static void qat_uclo_map_image_page(struct icp_qat_uof_encap_obj *encap_uof_obj ,
                                    struct icp_qat_uof_image *img , struct icp_qat_uclo_encap_page *page )
{
  struct icp_qat_uof_code_page *code_page ;
  struct icp_qat_uof_code_area *code_area ;
  struct icp_qat_uof_objtable *uword_block_tab ;
  struct icp_qat_uof_uword_block *uwblock ;
  int i ;
  {
  code_page = (struct icp_qat_uof_code_page *)img + 64U;
  page->def_page = (unsigned int )code_page->def_page;
  page->page_region = code_page->page_region;
  page->beg_addr_v = code_page->beg_addr_v;
  page->beg_addr_p = code_page->beg_addr_p;
  code_area = (struct icp_qat_uof_code_area *)encap_uof_obj->beg_uof + (unsigned long )code_page->code_area_offset;
  page->micro_words_num = code_area->micro_words_num;
  uword_block_tab = (struct icp_qat_uof_objtable *)encap_uof_obj->beg_uof + (unsigned long )code_area->uword_block_tab;
  page->uwblock_num = uword_block_tab->entry_num;
  uwblock = (struct icp_qat_uof_uword_block *)uword_block_tab + 4U;
  page->uwblock = (struct icp_qat_uclo_encap_uwblock *)uwblock;
  i = 0;
  goto ldv_27969;
  ldv_27968:
  (page->uwblock + (unsigned long )i)->micro_words = (uint64_t )((unsigned long )encap_uof_obj->beg_uof + (unsigned long )(uwblock + (unsigned long )i)->uword_offset);
  i = i + 1;
  ldv_27969: ;
  if ((unsigned int )i < uword_block_tab->entry_num) {
    goto ldv_27968;
  } else {
  }
  return;
}
}
static int qat_uclo_map_uimage(struct icp_qat_uclo_objhandle *obj_handle , struct icp_qat_uclo_encapme *ae_uimage ,
                               int max_image )
{
  int i ;
  int j ;
  struct icp_qat_uof_chunkhdr *chunk_hdr ;
  struct icp_qat_uof_image *image ;
  struct icp_qat_uof_objtable *ae_regtab ;
  struct icp_qat_uof_objtable *init_reg_sym_tab ;
  struct icp_qat_uof_objtable *sbreak_tab ;
  struct icp_qat_uof_encap_obj *encap_uof_obj ;
  void *tmp ;
  unsigned int tmp___0 ;
  void *tmp___1 ;
  {
  chunk_hdr = (struct icp_qat_uof_chunkhdr *)0;
  encap_uof_obj = & obj_handle->encap_uof_obj;
  j = 0;
  goto ldv_27987;
  ldv_27986:
  tmp = qat_uclo_find_chunk(encap_uof_obj->obj_hdr, (char *)"UOF_IMAG", (void *)chunk_hdr);
  chunk_hdr = (struct icp_qat_uof_chunkhdr *)tmp;
  if ((unsigned long )chunk_hdr == (unsigned long )((struct icp_qat_uof_chunkhdr *)0)) {
    goto ldv_27984;
  } else {
  }
  image = (struct icp_qat_uof_image *)encap_uof_obj->beg_uof + (unsigned long )chunk_hdr->offset;
  ae_regtab = (struct icp_qat_uof_objtable *)(obj_handle->obj_hdr)->file_buff + (unsigned long )image->reg_tab_offset;
  (ae_uimage + (unsigned long )j)->ae_reg_num = ae_regtab->entry_num;
  (ae_uimage + (unsigned long )j)->ae_reg = (struct icp_qat_uof_ae_reg *)ae_regtab + 4U;
  init_reg_sym_tab = (struct icp_qat_uof_objtable *)(obj_handle->obj_hdr)->file_buff + (unsigned long )image->init_reg_sym_tab;
  (ae_uimage + (unsigned long )j)->init_regsym_num = init_reg_sym_tab->entry_num;
  (ae_uimage + (unsigned long )j)->init_regsym = (struct icp_qat_uof_init_regsym *)init_reg_sym_tab + 4U;
  sbreak_tab = (struct icp_qat_uof_objtable *)(obj_handle->obj_hdr)->file_buff + (unsigned long )image->sbreak_tab;
  (ae_uimage + (unsigned long )j)->sbreak_num = sbreak_tab->entry_num;
  (ae_uimage + (unsigned long )j)->sbreak = (struct icp_qat_uof_sbreak *)sbreak_tab + 4U;
  (ae_uimage + (unsigned long )j)->img_ptr = image;
  tmp___0 = qat_uclo_check_image_compat(encap_uof_obj, image);
  if (tmp___0 != 0U) {
    goto out_err;
  } else {
  }
  tmp___1 = kzalloc(32UL, 208U);
  (ae_uimage + (unsigned long )j)->page = (struct icp_qat_uclo_encap_page *)tmp___1;
  if ((unsigned long )(ae_uimage + (unsigned long )j)->page == (unsigned long )((struct icp_qat_uclo_encap_page *)0)) {
    goto out_err;
  } else {
  }
  qat_uclo_map_image_page(encap_uof_obj, image, (ae_uimage + (unsigned long )j)->page);
  j = j + 1;
  ldv_27987: ;
  if (j < max_image) {
    goto ldv_27986;
  } else {
  }
  ldv_27984: ;
  return (j);
  out_err:
  i = 0;
  goto ldv_27989;
  ldv_27988:
  kfree((void const *)(ae_uimage + (unsigned long )i)->page);
  i = i + 1;
  ldv_27989: ;
  if (i < j) {
    goto ldv_27988;
  } else {
  }
  return (0);
}
}
static int qat_uclo_map_ae(struct icp_qat_fw_loader_handle *handle , int max_ae )
{
  int i ;
  int ae ;
  int mflag ;
  struct icp_qat_uclo_objhandle *obj_handle ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  mflag = 0;
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  ae = 0;
  goto ldv_28005;
  ldv_28004:
  tmp = variable_test_bit((long )ae, (unsigned long const volatile *)(& (handle->hal_handle)->ae_mask));
  if (tmp == 0) {
    goto ldv_27999;
  } else {
  }
  i = 0;
  goto ldv_28002;
  ldv_28001:
  tmp___0 = variable_test_bit((long )ae, (unsigned long const volatile *)(& (obj_handle->ae_uimage[i].img_ptr)->ae_assigned));
  if (tmp___0 == 0) {
    goto ldv_28000;
  } else {
  }
  mflag = 1;
  tmp___1 = qat_uclo_init_ae_data(obj_handle, (unsigned int )ae, (unsigned int )i);
  if (tmp___1 != 0) {
    return (-22);
  } else {
  }
  ldv_28000:
  i = i + 1;
  ldv_28002: ;
  if (obj_handle->uimage_num > i) {
    goto ldv_28001;
  } else {
  }
  ldv_27999:
  ae = ae + 1;
  ldv_28005: ;
  if (ae <= max_ae) {
    goto ldv_28004;
  } else {
  }
  if (mflag == 0) {
    printk("\vQAT: uimage uses AE not set");
    return (-22);
  } else {
  }
  return (0);
}
}
static struct icp_qat_uof_strtable *qat_uclo_map_str_table(struct icp_qat_uclo_objhdr *obj_hdr ,
                                                           char *tab_name , struct icp_qat_uof_strtable *str_table )
{
  struct icp_qat_uof_chunkhdr *chunk_hdr ;
  void *tmp ;
  int hdr_size ;
  {
  tmp = qat_uclo_find_chunk((struct icp_qat_uof_objhdr *)obj_hdr->file_buff, tab_name,
                            (void *)0);
  chunk_hdr = (struct icp_qat_uof_chunkhdr *)tmp;
  if ((unsigned long )chunk_hdr != (unsigned long )((struct icp_qat_uof_chunkhdr *)0)) {
    memcpy((void *)(& str_table->table_len), (void const *)obj_hdr->file_buff + (unsigned long )chunk_hdr->offset,
             4UL);
    hdr_size = 8;
    str_table->strings = (uint64_t )(((unsigned long )obj_hdr->file_buff + (unsigned long )chunk_hdr->offset) + (unsigned long )hdr_size);
    return (str_table);
  } else {
  }
  return ((struct icp_qat_uof_strtable *)0);
}
}
static void qat_uclo_map_initmem_table(struct icp_qat_uof_encap_obj *encap_uof_obj ,
                                       struct icp_qat_uclo_init_mem_table *init_mem_tab )
{
  struct icp_qat_uof_chunkhdr *chunk_hdr ;
  void *tmp ;
  {
  tmp = qat_uclo_find_chunk(encap_uof_obj->obj_hdr, (char *)"UOF_IMEM", (void *)0);
  chunk_hdr = (struct icp_qat_uof_chunkhdr *)tmp;
  if ((unsigned long )chunk_hdr != (unsigned long )((struct icp_qat_uof_chunkhdr *)0)) {
    memmove((void *)(& init_mem_tab->entry_num), (void const *)encap_uof_obj->beg_uof + (unsigned long )chunk_hdr->offset,
              4UL);
    init_mem_tab->init_mem = (struct icp_qat_uof_initmem *)(encap_uof_obj->beg_uof + ((unsigned long )chunk_hdr->offset + 4UL));
  } else {
  }
  return;
}
}
static int qat_uclo_check_uof_compat(struct icp_qat_uclo_objhandle *obj_handle )
{
  unsigned int maj_ver ;
  unsigned int prod_type ;
  {
  prod_type = obj_handle->prod_type;
  if (((obj_handle->encap_uof_obj.obj_hdr)->cpu_type & prod_type) == 0U) {
    printk("\vQAT: UOF type 0x%x not match with cur platform 0x%x\n", (obj_handle->encap_uof_obj.obj_hdr)->cpu_type,
           prod_type);
    return (-22);
  } else {
  }
  maj_ver = obj_handle->prod_rev & 255U;
  if ((unsigned int )(obj_handle->encap_uof_obj.obj_hdr)->max_cpu_ver < maj_ver || (unsigned int )(obj_handle->encap_uof_obj.obj_hdr)->min_cpu_ver > maj_ver) {
    printk("\vQAT: UOF majVer 0x%x out of range\n", maj_ver);
    return (-22);
  } else {
  }
  return (0);
}
}
static int qat_uclo_init_reg(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                             unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                             unsigned short reg_addr , unsigned int value )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  switch ((unsigned int )reg_type) {
  case 2U: ;
  case 4U:
  ctx_mask = 0U;
  case 1U: ;
  case 3U:
  tmp = qat_hal_init_gpr(handle, (int )ae, (int )ctx_mask, reg_type, (int )reg_addr,
                         value);
  return (tmp);
  case 8U: ;
  case 14U: ;
  case 9U: ;
  case 15U:
  ctx_mask = 0U;
  case 5U: ;
  case 11U: ;
  case 6U: ;
  case 12U:
  tmp___0 = qat_hal_init_rd_xfer(handle, (int )ae, (int )ctx_mask, reg_type, (int )reg_addr,
                                 value);
  return (tmp___0);
  case 10U: ;
  case 16U:
  ctx_mask = 0U;
  case 7U: ;
  case 13U:
  tmp___1 = qat_hal_init_wr_xfer(handle, (int )ae, (int )ctx_mask, reg_type, (int )reg_addr,
                                 value);
  return (tmp___1);
  case 20U:
  tmp___2 = qat_hal_init_nn(handle, (int )ae, (int )ctx_mask, (int )reg_addr, value);
  return (tmp___2);
  default:
  printk("\vQAT: UOF uses not supported reg type 0x%x\n", (unsigned int )reg_type);
  return (-14);
  }
  return (0);
}
}
static int qat_uclo_init_reg_sym(struct icp_qat_fw_loader_handle *handle , unsigned int ae ,
                                 struct icp_qat_uclo_encapme *encap_ae )
{
  unsigned int i ;
  unsigned char ctx_mask ;
  struct icp_qat_uof_init_regsym *init_regsym ;
  unsigned int exp_res ;
  {
  if (((int )(encap_ae->img_ptr)->ae_mode & 15) == 8) {
    ctx_mask = 255U;
  } else {
    ctx_mask = 85U;
  }
  i = 0U;
  goto ldv_28066;
  ldv_28065:
  init_regsym = encap_ae->init_regsym + (unsigned long )i;
  exp_res = init_regsym->value;
  switch ((int )init_regsym->init_type) {
  case 1:
  qat_uclo_init_reg(handle, (int )((unsigned char )ae), (int )ctx_mask, (enum icp_qat_uof_regtype )init_regsym->reg_type,
                    (int )((unsigned short )init_regsym->reg_addr), exp_res);
  goto ldv_28060;
  case 2: ;
  if ((((int )ctx_mask >> (int )init_regsym->ctx) & 1) == 0) {
    printk("\vQAT: invalid ctx num = 0x%x\n", (int )init_regsym->ctx);
    return (-22);
  } else {
  }
  qat_uclo_init_reg(handle, (int )((unsigned char )ae), (int )((unsigned char )(1 << (int )init_regsym->ctx)),
                    (enum icp_qat_uof_regtype )init_regsym->reg_type, (int )((unsigned short )init_regsym->reg_addr),
                    exp_res);
  goto ldv_28060;
  case 0:
  printk("\vQAT: INIT_EXPR feature not supported\n");
  return (-22);
  case 3:
  printk("\vQAT: INIT_EXPR_ENDIAN_SWAP feature not supported\n");
  return (-22);
  default: ;
  goto ldv_28060;
  }
  ldv_28060:
  i = i + 1U;
  ldv_28066: ;
  if (encap_ae->init_regsym_num > i) {
    goto ldv_28065;
  } else {
  }
  return (0);
}
}
static int qat_uclo_init_globals(struct icp_qat_fw_loader_handle *handle )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int s ;
  unsigned int ae ;
  int tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  if (obj_handle->global_inited != 0) {
    return (0);
  } else {
  }
  if (obj_handle->init_mem_tab.entry_num != 0U) {
    tmp = qat_uclo_init_memory(handle);
    if (tmp != 0) {
      printk("\vQAT: initialize memory failed\n");
      return (-22);
    } else {
    }
  } else {
  }
  ae = 0U;
  goto ldv_28079;
  ldv_28078:
  s = 0U;
  goto ldv_28076;
  ldv_28075: ;
  if ((unsigned long )obj_handle->ae_data[ae].ae_slices[s].encap_image == (unsigned long )((struct icp_qat_uclo_encapme *)0)) {
    goto ldv_28074;
  } else {
  }
  tmp___0 = qat_uclo_init_reg_sym(handle, ae, obj_handle->ae_data[ae].ae_slices[s].encap_image);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  ldv_28074:
  s = s + 1U;
  ldv_28076: ;
  if (obj_handle->ae_data[ae].slice_num > s) {
    goto ldv_28075;
  } else {
  }
  ae = ae + 1U;
  ldv_28079: ;
  if ((handle->hal_handle)->ae_max_num > ae) {
    goto ldv_28078;
  } else {
  }
  obj_handle->global_inited = 1;
  return (0);
}
}
static int qat_uclo_set_ae_mode(struct icp_qat_fw_loader_handle *handle )
{
  unsigned char ae ;
  unsigned char nn_mode ;
  unsigned char s ;
  struct icp_qat_uof_image *uof_image ;
  struct icp_qat_uclo_aedata *ae_data ;
  struct icp_qat_uclo_objhandle *obj_handle ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  ae = 0U;
  goto ldv_28099;
  ldv_28098:
  tmp = variable_test_bit((long )ae, (unsigned long const volatile *)(& (handle->hal_handle)->ae_mask));
  if (tmp == 0) {
    goto ldv_28090;
  } else {
  }
  ae_data = (struct icp_qat_uclo_aedata *)(& obj_handle->ae_data) + (unsigned long )ae;
  s = 0U;
  goto ldv_28096;
  ldv_28095: ;
  if ((unsigned long )obj_handle->ae_data[(int )ae].ae_slices[(int )s].encap_image == (unsigned long )((struct icp_qat_uclo_encapme *)0)) {
    goto ldv_28094;
  } else {
  }
  uof_image = (ae_data->ae_slices[(int )s].encap_image)->img_ptr;
  tmp___0 = qat_hal_set_ae_ctx_mode(handle, (int )ae, (int )((unsigned char )uof_image->ae_mode) & 15);
  if (tmp___0 != 0) {
    printk("\vQAT: qat_hal_set_ae_ctx_mode error\n");
    return (-14);
  } else {
  }
  nn_mode = (unsigned int )((unsigned char )((int )uof_image->ae_mode >> 4)) & 15U;
  tmp___1 = qat_hal_set_ae_nn_mode(handle, (int )ae, (int )nn_mode);
  if (tmp___1 != 0) {
    printk("\vQAT: qat_hal_set_ae_nn_mode error\n");
    return (-14);
  } else {
  }
  tmp___2 = qat_hal_set_ae_lm_mode(handle, (int )ae, 18, (int )((unsigned char )((int )uof_image->ae_mode >> 8)) & 1);
  if (tmp___2 != 0) {
    printk("\vQAT: qat_hal_set_ae_lm_mode LMEM0 error\n");
    return (-14);
  } else {
  }
  tmp___3 = qat_hal_set_ae_lm_mode(handle, (int )ae, 19, (int )((unsigned char )((int )uof_image->ae_mode >> 9)) & 1);
  if (tmp___3 != 0) {
    printk("\vQAT: qat_hal_set_ae_lm_mode LMEM1 error\n");
    return (-14);
  } else {
  }
  ldv_28094:
  s = (unsigned char )((int )s + 1);
  ldv_28096:
  __min1 = ae_data->slice_num;
  __min2 = 8U;
  if ((unsigned int )s < (__min1 < __min2 ? __min1 : __min2)) {
    goto ldv_28095;
  } else {
  }
  ldv_28090:
  ae = (unsigned char )((int )ae + 1);
  ldv_28099: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_28098;
  } else {
  }
  return (0);
}
}
static void qat_uclo_init_uword_num(struct icp_qat_fw_loader_handle *handle )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  struct icp_qat_uclo_encapme *image ;
  int a ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  a = 0;
  goto ldv_28108;
  ldv_28107:
  image = (struct icp_qat_uclo_encapme *)(& obj_handle->ae_uimage) + (unsigned long )a;
  image->uwords_num = (image->page)->beg_addr_p + (image->page)->micro_words_num;
  a = a + 1;
  ldv_28108: ;
  if (obj_handle->uimage_num > a) {
    goto ldv_28107;
  } else {
  }
  return;
}
}
static int qat_uclo_parse_uof_obj(struct icp_qat_fw_loader_handle *handle )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int ae ;
  void *tmp ;
  int tmp___0 ;
  struct icp_qat_uof_strtable *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  tmp = kcalloc(1024UL, 8UL, 208U);
  obj_handle->uword_buf = (uint64_t *)tmp;
  if ((unsigned long )obj_handle->uword_buf == (unsigned long )((uint64_t *)0ULL)) {
    return (-12);
  } else {
  }
  obj_handle->encap_uof_obj.beg_uof = (obj_handle->obj_hdr)->file_buff;
  obj_handle->encap_uof_obj.obj_hdr = (struct icp_qat_uof_objhdr *)(obj_handle->obj_hdr)->file_buff;
  obj_handle->uword_in_bytes = 6;
  obj_handle->prod_type = 4194304U;
  obj_handle->prod_rev = ((handle->hal_handle)->revision_id & 255U) | 240U;
  tmp___0 = qat_uclo_check_uof_compat(obj_handle);
  if (tmp___0 != 0) {
    printk("\vQAT: UOF incompatible\n");
    return (-22);
  } else {
  }
  obj_handle->ustore_phy_size = 16384U;
  if ((unsigned long )(obj_handle->obj_hdr)->file_buff == (unsigned long )((char *)0)) {
    printk("\vQAT: UOF doesn\'t have effective images\n");
    goto out_err;
  } else {
    tmp___1 = qat_uclo_map_str_table(obj_handle->obj_hdr, (char *)"UOF_STRT", & obj_handle->str_table);
    if ((unsigned long )tmp___1 == (unsigned long )((struct icp_qat_uof_strtable *)0)) {
      printk("\vQAT: UOF doesn\'t have effective images\n");
      goto out_err;
    } else {
    }
  }
  obj_handle->uimage_num = qat_uclo_map_uimage(obj_handle, (struct icp_qat_uclo_encapme *)(& obj_handle->ae_uimage),
                                               96);
  if (obj_handle->uimage_num == 0) {
    goto out_err;
  } else {
  }
  tmp___2 = qat_uclo_map_ae(handle, (int )(handle->hal_handle)->ae_max_num);
  if (tmp___2 != 0) {
    printk("\vQAT: Bad object\n");
    goto out_check_uof_aemask_err;
  } else {
  }
  qat_uclo_init_uword_num(handle);
  qat_uclo_map_initmem_table(& obj_handle->encap_uof_obj, & obj_handle->init_mem_tab);
  tmp___3 = qat_uclo_set_ae_mode(handle);
  if (tmp___3 != 0) {
    goto out_check_uof_aemask_err;
  } else {
  }
  return (0);
  out_check_uof_aemask_err:
  ae = 0U;
  goto ldv_28118;
  ldv_28117:
  kfree((void const *)obj_handle->ae_uimage[ae].page);
  ae = ae + 1U;
  ldv_28118: ;
  if ((unsigned int )obj_handle->uimage_num > ae) {
    goto ldv_28117;
  } else {
  }
  out_err:
  kfree((void const *)obj_handle->uword_buf);
  return (-14);
}
}
int qat_uclo_map_uof_obj(struct icp_qat_fw_loader_handle *handle , void *addr_ptr ,
                         int mem_size )
{
  struct icp_qat_uof_filehdr *filehdr ;
  struct icp_qat_uclo_objhandle *objhdl ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (((unsigned long )handle == (unsigned long )((struct icp_qat_fw_loader_handle *)0) || (unsigned long )addr_ptr == (unsigned long )((void *)0)) || mem_size <= 23) {
    return (-22);
  } else {
  }
  tmp = kzalloc(19608UL, 208U);
  objhdl = (struct icp_qat_uclo_objhandle *)tmp;
  if ((unsigned long )objhdl == (unsigned long )((struct icp_qat_uclo_objhandle *)0)) {
    return (-12);
  } else {
  }
  objhdl->obj_buf = kmemdup((void const *)addr_ptr, (size_t )mem_size, 208U);
  if ((unsigned long )objhdl->obj_buf == (unsigned long )((void *)0)) {
    goto out_objbuf_err;
  } else {
  }
  filehdr = (struct icp_qat_uof_filehdr *)objhdl->obj_buf;
  tmp___0 = qat_uclo_check_format(filehdr);
  if (tmp___0 != 0) {
    goto out_objhdr_err;
  } else {
  }
  objhdl->obj_hdr = qat_uclo_map_chunk((char *)objhdl->obj_buf, filehdr, (char *)"UOF_OBJS");
  if ((unsigned long )objhdl->obj_hdr == (unsigned long )((struct icp_qat_uclo_objhdr *)0)) {
    printk("\vQAT: object file chunk is null\n");
    goto out_objhdr_err;
  } else {
  }
  handle->obj_handle = (void *)objhdl;
  tmp___1 = qat_uclo_parse_uof_obj(handle);
  if (tmp___1 != 0) {
    goto out_overlay_obj_err;
  } else {
  }
  return (0);
  out_overlay_obj_err:
  handle->obj_handle = (void *)0;
  kfree((void const *)objhdl->obj_hdr);
  out_objhdr_err:
  kfree((void const *)objhdl->obj_buf);
  out_objbuf_err:
  kfree((void const *)objhdl);
  return (-12);
}
}
void qat_uclo_del_uof_obj(struct icp_qat_fw_loader_handle *handle )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int a ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  if ((unsigned long )obj_handle == (unsigned long )((struct icp_qat_uclo_objhandle *)0)) {
    return;
  } else {
  }
  kfree((void const *)obj_handle->uword_buf);
  a = 0U;
  goto ldv_28136;
  ldv_28135:
  kfree((void const *)obj_handle->ae_uimage[a].page);
  a = a + 1U;
  ldv_28136: ;
  if ((unsigned int )obj_handle->uimage_num > a) {
    goto ldv_28135;
  } else {
  }
  a = 0U;
  goto ldv_28139;
  ldv_28138:
  qat_uclo_free_ae_data((struct icp_qat_uclo_aedata *)(& obj_handle->ae_data) + (unsigned long )a);
  a = a + 1U;
  ldv_28139: ;
  if ((handle->hal_handle)->ae_max_num > a) {
    goto ldv_28138;
  } else {
  }
  kfree((void const *)obj_handle->obj_hdr);
  kfree((void const *)obj_handle->obj_buf);
  kfree((void const *)obj_handle);
  handle->obj_handle = (void *)0;
  return;
}
}
static void qat_uclo_fill_uwords(struct icp_qat_uclo_objhandle *obj_handle , struct icp_qat_uclo_encap_page *encap_page ,
                                 uint64_t *uword , unsigned int addr_p , unsigned int raddr ,
                                 uint64_t fill )
{
  uint64_t uwrd ;
  unsigned int i ;
  {
  uwrd = 0ULL;
  if ((unsigned long )encap_page == (unsigned long )((struct icp_qat_uclo_encap_page *)0)) {
    *uword = fill;
    return;
  } else {
  }
  i = 0U;
  goto ldv_28152;
  ldv_28151: ;
  if ((encap_page->uwblock + (unsigned long )i)->start_addr <= raddr && ((encap_page->uwblock + (unsigned long )i)->start_addr + (encap_page->uwblock + (unsigned long )i)->words_num) - 1U >= raddr) {
    raddr = raddr - (encap_page->uwblock + (unsigned long )i)->start_addr;
    raddr = (unsigned int )obj_handle->uword_in_bytes * raddr;
    memcpy((void *)(& uwrd), (void const *)((unsigned long )(encap_page->uwblock + (unsigned long )i)->micro_words + (unsigned long )raddr),
             (size_t )obj_handle->uword_in_bytes);
    uwrd = uwrd & 13194139533311ULL;
  } else {
  }
  i = i + 1U;
  ldv_28152: ;
  if (encap_page->uwblock_num > i) {
    goto ldv_28151;
  } else {
  }
  *uword = uwrd;
  if (*uword == 1099511627775ULL) {
    *uword = fill;
  } else {
  }
  return;
}
}
static void qat_uclo_wr_uimage_raw_page(struct icp_qat_fw_loader_handle *handle ,
                                        struct icp_qat_uclo_encap_page *encap_page ,
                                        unsigned int ae )
{
  unsigned int uw_physical_addr ;
  unsigned int uw_relative_addr ;
  unsigned int i ;
  unsigned int words_num ;
  unsigned int cpylen ;
  struct icp_qat_uclo_objhandle *obj_handle ;
  uint64_t fill_pat ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  memcpy((void *)(& fill_pat), (void const *)(& (obj_handle->ae_uimage[0].img_ptr)->fill_pattern),
           8UL);
  uw_physical_addr = encap_page->beg_addr_p;
  uw_relative_addr = 0U;
  words_num = encap_page->micro_words_num;
  goto ldv_28170;
  ldv_28169: ;
  if (words_num <= 1023U) {
    cpylen = words_num;
  } else {
    cpylen = 1024U;
  }
  i = 0U;
  goto ldv_28167;
  ldv_28166:
  qat_uclo_fill_uwords(obj_handle, encap_page, obj_handle->uword_buf + (unsigned long )i,
                       uw_physical_addr + i, uw_relative_addr + i, fill_pat);
  i = i + 1U;
  ldv_28167: ;
  if (i < cpylen) {
    goto ldv_28166;
  } else {
  }
  qat_hal_wr_uwords(handle, (int )((unsigned char )ae), uw_physical_addr, cpylen,
                    obj_handle->uword_buf);
  uw_physical_addr = uw_physical_addr + cpylen;
  uw_relative_addr = uw_relative_addr + cpylen;
  words_num = words_num - cpylen;
  ldv_28170: ;
  if (words_num != 0U) {
    goto ldv_28169;
  } else {
  }
  return;
}
}
static void qat_uclo_wr_uimage_page(struct icp_qat_fw_loader_handle *handle , struct icp_qat_uof_image *image )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int ctx_mask ;
  unsigned int s ;
  struct icp_qat_uclo_page *page ;
  unsigned char ae ;
  int ctx ;
  int tmp ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  if (((int )image->ae_mode & 15) == 8) {
    ctx_mask = 255U;
  } else {
    ctx_mask = 85U;
  }
  ae = 0U;
  goto ldv_28190;
  ldv_28189:
  tmp = variable_test_bit((long )ae, (unsigned long const volatile *)(& image->ae_assigned));
  if (tmp == 0) {
    goto ldv_28182;
  } else {
  }
  s = 0U;
  goto ldv_28185;
  ldv_28184: ;
  if ((image->ctx_assigned & obj_handle->ae_data[(int )ae].ae_slices[s].ctx_mask_assigned) != 0U) {
    goto ldv_28183;
  } else {
  }
  s = s + 1U;
  ldv_28185: ;
  if (obj_handle->ae_data[(int )ae].slice_num > s) {
    goto ldv_28184;
  } else {
  }
  ldv_28183: ;
  if (obj_handle->ae_data[(int )ae].slice_num <= s) {
    goto ldv_28182;
  } else {
  }
  page = obj_handle->ae_data[(int )ae].ae_slices[s].page;
  if ((page->encap_page)->def_page == 0U) {
    goto ldv_28182;
  } else {
  }
  qat_uclo_wr_uimage_raw_page(handle, page->encap_page, (unsigned int )ae);
  page = obj_handle->ae_data[(int )ae].ae_slices[s].page;
  ctx = 0;
  goto ldv_28187;
  ldv_28186:
  obj_handle->ae_data[(int )ae].ae_slices[s].cur_page[ctx] = ((unsigned int )(1 << ctx) & ctx_mask) != 0U ? page : (struct icp_qat_uclo_page *)0;
  ctx = ctx + 1;
  ldv_28187: ;
  if (ctx <= 7) {
    goto ldv_28186;
  } else {
  }
  qat_hal_set_live_ctx(handle, (int )ae, image->ctx_assigned);
  qat_hal_set_pc(handle, (int )ae, image->ctx_assigned, image->entry_address);
  ldv_28182:
  ae = (unsigned char )((int )ae + 1);
  ldv_28190: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_28189;
  } else {
  }
  return;
}
}
int qat_uclo_wr_all_uimage(struct icp_qat_fw_loader_handle *handle )
{
  struct icp_qat_uclo_objhandle *obj_handle ;
  unsigned int i ;
  int tmp ;
  int tmp___0 ;
  {
  obj_handle = (struct icp_qat_uclo_objhandle *)handle->obj_handle;
  tmp = qat_uclo_init_globals(handle);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_28198;
  ldv_28197: ;
  if ((unsigned long )obj_handle->ae_uimage[i].img_ptr == (unsigned long )((struct icp_qat_uof_image *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = qat_uclo_init_ustore(handle, (struct icp_qat_uclo_encapme *)(& obj_handle->ae_uimage) + (unsigned long )i);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  qat_uclo_wr_uimage_page(handle, obj_handle->ae_uimage[i].img_ptr);
  i = i + 1U;
  ldv_28198: ;
  if ((unsigned int )obj_handle->uimage_num > i) {
    goto ldv_28197;
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_337(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_338(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_339(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_340(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
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
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\n663:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6641f - .\n .word ( 4*32+23)\n .byte 663b-661b\n .byte 6651f-6641f\n .byte 663b-662b\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6641:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6651:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
bool ldv_queue_work_on_369(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_371(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_370(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_373(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_372(struct workqueue_struct *ldv_func_arg1 ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
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
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static uint64_t const inst_4b[9U] =
  { 1031866679296ULL, 1049046548480ULL, 1031865893632ULL, 1049045762816ULL,
        1082439499776ULL, 1030792938240ULL, 1030792938240ULL, 1030792938240ULL,
        687748415488ULL};
static uint64_t const inst[87U] =
  { 1030792937472ULL, 1030792151936ULL, 927796822033ULL, 1082468860672ULL,
        1030792938240ULL, 1030792938240ULL, 1030792938240ULL, 1030792938240ULL,
        688876421120ULL, 802085143297ULL, 927746490625ULL, 1030792937473ULL,
        1082439499777ULL, 1030792938240ULL, 1030792938240ULL, 1030792938240ULL,
        1030796346112ULL, 688822943744ULL, 802085143297ULL, 927784239361ULL,
        688671948800ULL, 688672997376ULL, 688674045952ULL, 688675094528ULL,
        688676143104ULL, 688677191680ULL, 688678240256ULL, 688679288832ULL,
        688680337408ULL, 688681385984ULL, 688682434560ULL, 688683483136ULL,
        688684531712ULL, 688685580288ULL, 688686628864ULL, 688687677440ULL,
        688739057664ULL, 688740106240ULL, 688741154816ULL, 688742203392ULL,
        688743251968ULL, 688744300544ULL, 688745349120ULL, 688746397696ULL,
        688747446272ULL, 688748494848ULL, 688749543424ULL, 688750592000ULL,
        688751640576ULL, 688752689152ULL, 688753737728ULL, 688754786304ULL,
        688269295616ULL, 756988772352ULL, 688270344192ULL, 756989820928ULL,
        688271392768ULL, 756990869504ULL, 688272441344ULL, 756991918080ULL,
        688273489920ULL, 756992966656ULL, 688274538496ULL, 756994015232ULL,
        688275587072ULL, 756995063808ULL, 688276635648ULL, 756996112384ULL,
        688277684224ULL, 756997160960ULL, 688278732800ULL, 756998209536ULL,
        688279781376ULL, 756999258112ULL, 688280829952ULL, 757000306688ULL,
        688281878528ULL, 757001355264ULL, 688282927104ULL, 757002403840ULL,
        688283975680ULL, 757003452416ULL, 688285024256ULL, 757004500992ULL,
        928073760784ULL, 962072739840ULL, 962072739840ULL};
void qat_hal_set_live_ctx(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                          unsigned int ctx_mask )
{
  {
  (handle->hal_handle)->aes[(int )ae].live_ctx_mask = ctx_mask;
  return;
}
}
static int qat_hal_rd_ae_csr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                             unsigned int csr , unsigned int *value )
{
  unsigned int iterations ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  iterations = 500U;
  ldv_27735:
  *value = __readl((void const volatile *)(handle->hal_cap_ae_local_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + ((unsigned long )csr & 1023UL))));
  tmp = __readl((void const volatile *)(handle->hal_cap_ae_local_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + 384UL)));
  if ((tmp & 1U) == 0U) {
    return (0);
  } else {
  }
  tmp___0 = iterations;
  iterations = iterations - 1U;
  if (tmp___0 != 0U) {
    goto ldv_27735;
  } else {
  }
  printk("\vQAT: Read CSR timeout\n");
  return (-14);
}
}
static int qat_hal_wr_ae_csr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                             unsigned int csr , unsigned int value )
{
  unsigned int iterations ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  iterations = 500U;
  ldv_27744:
  __writel(value, (void volatile *)(handle->hal_cap_ae_local_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + ((unsigned long )csr & 1023UL))));
  tmp = __readl((void const volatile *)(handle->hal_cap_ae_local_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + 384UL)));
  if ((tmp & 1U) == 0U) {
    return (0);
  } else {
  }
  tmp___0 = iterations;
  iterations = iterations - 1U;
  if (tmp___0 != 0U) {
    goto ldv_27744;
  } else {
  }
  printk("\vQAT: Write CSR Timeout\n");
  return (-14);
}
}
static void qat_hal_get_wakeup_event(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                     unsigned char ctx , unsigned int *events )
{
  unsigned int cur_ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 32U, & cur_ctx);
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, (unsigned int )ctx);
  qat_hal_rd_ae_csr(handle, (int )ae, 80U, events);
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, cur_ctx);
  return;
}
}
static int qat_hal_wait_cycles(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                               unsigned int cycles , int chk_inactive )
{
  unsigned int base_cnt ;
  unsigned int cur_cnt ;
  unsigned int csr ;
  int times ;
  int elapsed_cycles ;
  int tmp ;
  {
  base_cnt = 0U;
  cur_cnt = 0U;
  csr = 2147483648U;
  times = 10000;
  elapsed_cycles = 0;
  qat_hal_rd_ae_csr(handle, (int )ae, 324U, & base_cnt);
  base_cnt = base_cnt & 65535U;
  goto ldv_27765;
  ldv_27764: ;
  if (chk_inactive != 0) {
    qat_hal_rd_ae_csr(handle, (int )ae, 68U, & csr);
  } else {
  }
  qat_hal_rd_ae_csr(handle, (int )ae, 324U, & cur_cnt);
  cur_cnt = cur_cnt & 65535U;
  elapsed_cycles = (int )(cur_cnt - base_cnt);
  if (elapsed_cycles < 0) {
    elapsed_cycles = elapsed_cycles + 65536;
  } else {
  }
  if (elapsed_cycles > 7 && (int )csr >= 0) {
    return (0);
  } else {
  }
  ldv_27765: ;
  if ((int )cycles > elapsed_cycles) {
    tmp = times;
    times = times - 1;
    if (tmp != 0) {
      goto ldv_27764;
    } else {
      goto ldv_27766;
    }
  } else {
  }
  ldv_27766: ;
  if (times == 0) {
    printk("\vQAT: wait_num_cycles time out\n");
    return (-14);
  } else {
  }
  return (0);
}
}
int qat_hal_set_ae_ctx_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                            unsigned char mode )
{
  unsigned int csr ;
  unsigned int new_csr ;
  {
  if ((unsigned int )mode != 4U && (unsigned int )mode != 8U) {
    printk("\vQAT: bad ctx mode=%d\n", (int )mode);
    return (-22);
  } else {
  }
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & csr);
  csr = csr & 3590324223U;
  new_csr = (unsigned int )mode == 4U ? csr | 2147483648U : csr & 2147483647U;
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, new_csr);
  return (0);
}
}
int qat_hal_set_ae_nn_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                           unsigned char mode )
{
  unsigned int csr ;
  unsigned int new_csr ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & csr);
  csr = csr & 3590324223U;
  new_csr = (unsigned int )mode != 0U ? csr | 1048576U : csr & 4293918719U;
  if (new_csr != csr) {
    qat_hal_wr_ae_csr(handle, (int )ae, 24U, new_csr);
  } else {
  }
  return (0);
}
}
int qat_hal_set_ae_lm_mode(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                           enum icp_qat_uof_regtype lm_type , unsigned char mode )
{
  unsigned int csr ;
  unsigned int new_csr ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & csr);
  csr = csr & 3590324223U;
  switch ((unsigned int )lm_type) {
  case 18U:
  new_csr = (unsigned int )mode != 0U ? csr | 65536U : csr & 4294901759U;
  goto ldv_27790;
  case 19U:
  new_csr = (unsigned int )mode != 0U ? csr | 131072U : csr & 4294836223U;
  goto ldv_27790;
  default:
  printk("\vQAT: lmType = 0x%x\n", (unsigned int )lm_type);
  return (-22);
  }
  ldv_27790: ;
  if (new_csr != csr) {
    qat_hal_wr_ae_csr(handle, (int )ae, 24U, new_csr);
  } else {
  }
  return (0);
}
}
static unsigned short qat_hal_get_reg_addr(unsigned int type , unsigned short reg_num )
{
  unsigned short reg_addr ;
  {
  switch (type) {
  case 2U: ;
  case 4U:
  reg_addr = (unsigned short )(((int )((short )reg_num) & 255) | 128);
  goto ldv_27800;
  case 1U: ;
  case 3U:
  reg_addr = (unsigned int )reg_num & 31U;
  goto ldv_27800;
  case 6U: ;
  case 7U: ;
  case 5U:
  reg_addr = (unsigned short )(((int )((short )reg_num) & 31) | 384);
  goto ldv_27800;
  case 8U:
  reg_addr = (unsigned short )((int )((short )(((int )reg_num & 3) << 1)) | 320);
  goto ldv_27800;
  case 12U: ;
  case 13U: ;
  case 11U:
  reg_addr = (unsigned short )(((int )((short )reg_num) & 31) | 448);
  goto ldv_27800;
  case 14U:
  reg_addr = (unsigned short )((int )((short )(((int )reg_num & 3) << 1)) | 256);
  goto ldv_27800;
  case 20U:
  reg_addr = (unsigned short )(((int )((short )reg_num) & 31) | 640);
  goto ldv_27800;
  case 18U:
  reg_addr = 512U;
  goto ldv_27800;
  case 19U:
  reg_addr = 544U;
  goto ldv_27800;
  case 0U:
  reg_addr = (unsigned short )(((int )((short )reg_num) & 255) | 768);
  goto ldv_27800;
  default:
  reg_addr = 65535U;
  goto ldv_27800;
  }
  ldv_27800: ;
  return (reg_addr);
}
}
void qat_hal_reset(struct icp_qat_fw_loader_handle *handle )
{
  unsigned int ae_reset_csr ;
  {
  ae_reset_csr = __readl((void const volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2572U);
  ae_reset_csr = (handle->hal_handle)->ae_mask | ae_reset_csr;
  ae_reset_csr = ((handle->hal_handle)->slice_mask << 20) | ae_reset_csr;
  __writel(ae_reset_csr, (void volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2572U);
  return;
}
}
static void qat_hal_wr_indr_csr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                unsigned int ctx_mask , unsigned int ae_csr , unsigned int csr_val )
{
  unsigned int ctx ;
  unsigned int cur_ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 32U, & cur_ctx);
  ctx = 0U;
  goto ldv_27831;
  ldv_27830: ;
  if (((unsigned int )(1 << (int )ctx) & ctx_mask) == 0U) {
    goto ldv_27829;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, ctx);
  qat_hal_wr_ae_csr(handle, (int )ae, ae_csr, csr_val);
  ldv_27829:
  ctx = ctx + 1U;
  ldv_27831: ;
  if (ctx <= 7U) {
    goto ldv_27830;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, cur_ctx);
  return;
}
}
static void qat_hal_rd_indr_csr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                unsigned char ctx , unsigned int ae_csr , unsigned int *csr_val )
{
  unsigned int cur_ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 32U, & cur_ctx);
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, (unsigned int )ctx);
  qat_hal_rd_ae_csr(handle, (int )ae, ae_csr, csr_val);
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, cur_ctx);
  return;
}
}
static void qat_hal_put_sig_event(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                  unsigned int ctx_mask , unsigned int events )
{
  unsigned int ctx ;
  unsigned int cur_ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 32U, & cur_ctx);
  ctx = 0U;
  goto ldv_27851;
  ldv_27850: ;
  if (((unsigned int )(1 << (int )ctx) & ctx_mask) == 0U) {
    goto ldv_27849;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, ctx);
  qat_hal_wr_ae_csr(handle, (int )ae, 72U, events);
  ldv_27849:
  ctx = ctx + 1U;
  ldv_27851: ;
  if (ctx <= 7U) {
    goto ldv_27850;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, cur_ctx);
  return;
}
}
static void qat_hal_put_wakeup_event(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                     unsigned int ctx_mask , unsigned int events )
{
  unsigned int ctx ;
  unsigned int cur_ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 32U, & cur_ctx);
  ctx = 0U;
  goto ldv_27863;
  ldv_27862: ;
  if (((unsigned int )(1 << (int )ctx) & ctx_mask) == 0U) {
    goto ldv_27861;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, ctx);
  qat_hal_wr_ae_csr(handle, (int )ae, 80U, events);
  ldv_27861:
  ctx = ctx + 1U;
  ldv_27863: ;
  if (ctx <= 7U) {
    goto ldv_27862;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 32U, cur_ctx);
  return;
}
}
static int qat_hal_check_ae_alive(struct icp_qat_fw_loader_handle *handle )
{
  unsigned int base_cnt ;
  unsigned int cur_cnt ;
  unsigned char ae ;
  unsigned int times ;
  unsigned int tmp ;
  {
  times = 10000U;
  ae = 0U;
  goto ldv_27876;
  ldv_27875: ;
  if (((handle->hal_handle)->ae_mask & (unsigned int )(1 << (int )ae)) == 0U) {
    goto ldv_27872;
  } else {
  }
  qat_hal_rd_ae_csr(handle, (int )ae, 324U, & base_cnt);
  base_cnt = base_cnt & 65535U;
  ldv_27873:
  qat_hal_rd_ae_csr(handle, (int )ae, 324U, & cur_cnt);
  cur_cnt = cur_cnt & 65535U;
  tmp = times;
  times = times - 1U;
  if (tmp != 0U && cur_cnt == base_cnt) {
    goto ldv_27873;
  } else {
  }
  if (times == 0U) {
    printk("\vQAT: AE%d is inactive!!\n", (int )ae);
    return (-14);
  } else {
  }
  ldv_27872:
  ae = (unsigned char )((int )ae + 1);
  ldv_27876: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27875;
  } else {
  }
  return (0);
}
}
static void qat_hal_reset_timestamp(struct icp_qat_fw_loader_handle *handle )
{
  unsigned int misc_ctl ;
  unsigned char ae ;
  {
  misc_ctl = __readl((void const volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2564U);
  if ((misc_ctl & 128U) != 0U) {
    __writel(misc_ctl & 4294967167U, (void volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2564U);
  } else {
  }
  ae = 0U;
  goto ldv_27885;
  ldv_27884: ;
  if (((handle->hal_handle)->ae_mask & (unsigned int )(1 << (int )ae)) == 0U) {
    goto ldv_27883;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 192U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 196U, 0U);
  ldv_27883:
  ae = (unsigned char )((int )ae + 1);
  ldv_27885: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27884;
  } else {
  }
  __writel(misc_ctl | 128U, (void volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2564U);
  return;
}
}
static int qat_hal_init_esram(struct icp_qat_fw_loader_handle *handle )
{
  void *csr_addr ;
  unsigned int csr_val ;
  unsigned int times ;
  unsigned int tmp ;
  {
  csr_addr = handle->hal_ep_csr_addr_v + 3100UL;
  times = 30U;
  csr_val = __readl((void const volatile *)csr_addr);
  if (((unsigned long )csr_val & 4UL) != 0UL && ((unsigned long )csr_val & 8UL) != 0UL) {
    return (0);
  } else {
  }
  csr_val = __readl((void const volatile *)csr_addr);
  csr_val = csr_val | 4U;
  __writel(csr_val, (void volatile *)csr_addr);
  ldv_27893:
  qat_hal_wait_cycles(handle, 0, 1640U, 0);
  csr_val = __readl((void const volatile *)csr_addr);
  if (((unsigned long )csr_val & 8UL) == 0UL) {
    tmp = times;
    times = times - 1U;
    if (tmp != 0U) {
      goto ldv_27893;
    } else {
      goto ldv_27894;
    }
  } else {
  }
  ldv_27894: ;
  if (times == 0U) {
    printk("\vQAT: Fail to init eSram!\n");
    return (-14);
  } else {
  }
  return (0);
}
}
int qat_hal_clr_reset(struct icp_qat_fw_loader_handle *handle )
{
  unsigned int ae_reset_csr ;
  unsigned char ae ;
  unsigned int clk_csr ;
  unsigned int times ;
  unsigned int csr ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  times = 100U;
  ae_reset_csr = __readl((void const volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2572U);
  ae_reset_csr = ~ (handle->hal_handle)->ae_mask & ae_reset_csr;
  ae_reset_csr = ~ ((handle->hal_handle)->slice_mask << 20) & ae_reset_csr;
  ldv_27904:
  __writel(ae_reset_csr, (void volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2572U);
  tmp = times;
  times = times - 1U;
  if (tmp == 0U) {
    goto out_err;
  } else {
  }
  csr = __readl((void const volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2572U);
  if ((((handle->hal_handle)->ae_mask | ((handle->hal_handle)->slice_mask << 20)) & csr) != 0U) {
    goto ldv_27904;
  } else {
  }
  clk_csr = __readl((void const volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2640U);
  clk_csr = (handle->hal_handle)->ae_mask | clk_csr;
  clk_csr = ((handle->hal_handle)->slice_mask << 20) | clk_csr;
  __writel(clk_csr, (void volatile *)handle->hal_cap_g_ctl_csr_addr_v + 2640U);
  tmp___0 = qat_hal_check_ae_alive(handle);
  if (tmp___0 != 0) {
    goto out_err;
  } else {
  }
  ae = 0U;
  goto ldv_27908;
  ldv_27907: ;
  if (((handle->hal_handle)->ae_mask & (unsigned int )(1 << (int )ae)) == 0U) {
    goto ldv_27906;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, 0U);
  qat_hal_wr_indr_csr(handle, (int )ae, 255U, 64U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 20U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 28U, 8192U);
  qat_hal_put_wakeup_event(handle, (int )ae, 255U, 1U);
  qat_hal_put_sig_event(handle, (int )ae, 255U, 1U);
  ldv_27906:
  ae = (unsigned char )((int )ae + 1);
  ldv_27908: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27907;
  } else {
  }
  tmp___1 = qat_hal_init_esram(handle);
  if (tmp___1 != 0) {
    goto out_err;
  } else {
  }
  tmp___2 = qat_hal_wait_cycles(handle, 0, 2060U, 0);
  if (tmp___2 != 0) {
    goto out_err;
  } else {
  }
  qat_hal_reset_timestamp(handle);
  return (0);
  out_err:
  printk("\vQAT: failed to get device out of reset\n");
  return (-14);
}
}
static void qat_hal_disable_ctx(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                unsigned int ctx_mask )
{
  unsigned int ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx);
  ctx = (~ ((ctx_mask << 8) & 65535U) & ctx) & 3590324223U;
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx);
  return;
}
}
static uint64_t qat_hal_parity_64bit(uint64_t word )
{
  {
  word = (word >> 1) ^ word;
  word = (word >> 2) ^ word;
  word = (word >> 4) ^ word;
  word = (word >> 8) ^ word;
  word = (word >> 16) ^ word;
  word = (word >> 32) ^ word;
  return (word & 1ULL);
}
}
static uint64_t qat_hal_set_uword_ecc(uint64_t uword )
{
  uint64_t bit0_mask ;
  uint64_t bit1_mask ;
  uint64_t bit2_mask ;
  uint64_t bit3_mask ;
  uint64_t bit4_mask ;
  uint64_t bit5_mask ;
  uint64_t bit6_mask ;
  uint64_t tmp ;
  uint64_t tmp___0 ;
  uint64_t tmp___1 ;
  uint64_t tmp___2 ;
  uint64_t tmp___3 ;
  uint64_t tmp___4 ;
  uint64_t tmp___5 ;
  {
  bit0_mask = 17557826338815ULL;
  bit1_mask = 2164697038879ULL;
  bit2_mask = 15635795378657ULL;
  bit3_mask = 8570845826594ULL;
  bit4_mask = 12050382795332ULL;
  bit5_mask = 16865620546696ULL;
  bit6_mask = 15047042820368ULL;
  uword = uword & 0xfff80fffffffffffULL;
  tmp = qat_hal_parity_64bit(bit0_mask & uword);
  uword = (tmp << 44) | uword;
  tmp___0 = qat_hal_parity_64bit(bit1_mask & uword);
  uword = (tmp___0 << 45) | uword;
  tmp___1 = qat_hal_parity_64bit(bit2_mask & uword);
  uword = (tmp___1 << 46) | uword;
  tmp___2 = qat_hal_parity_64bit(bit3_mask & uword);
  uword = (tmp___2 << 47) | uword;
  tmp___3 = qat_hal_parity_64bit(bit4_mask & uword);
  uword = (tmp___3 << 48) | uword;
  tmp___4 = qat_hal_parity_64bit(bit5_mask & uword);
  uword = (tmp___4 << 49) | uword;
  tmp___5 = qat_hal_parity_64bit(bit6_mask & uword);
  uword = (tmp___5 << 50) | uword;
  return (uword);
}
}
void qat_hal_wr_uwords(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                       unsigned int uaddr , unsigned int words_num , uint64_t *uword )
{
  unsigned int ustore_addr ;
  unsigned int i ;
  unsigned int uwrd_lo ;
  unsigned int uwrd_hi ;
  uint64_t tmp ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 0U, & ustore_addr);
  uaddr = uaddr | 2147483648U;
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, uaddr);
  i = 0U;
  goto ldv_27942;
  ldv_27941:
  tmp = qat_hal_set_uword_ecc(*(uword + (unsigned long )i));
  uwrd_lo = (unsigned int )tmp;
  uwrd_hi = (unsigned int )(tmp >> 32);
  qat_hal_wr_ae_csr(handle, (int )ae, 4U, uwrd_lo);
  qat_hal_wr_ae_csr(handle, (int )ae, 8U, uwrd_hi);
  i = i + 1U;
  ldv_27942: ;
  if (i < words_num) {
    goto ldv_27941;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, ustore_addr);
  return;
}
}
static void qat_hal_enable_ctx(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                               unsigned int ctx_mask )
{
  unsigned int ctx ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx);
  ctx = ctx & 3590324223U;
  ctx_mask = ((int )ctx < 0 ? 85U : 255U) & ctx_mask;
  ctx = (ctx_mask << 8) | ctx;
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx);
  return;
}
}
static int qat_hal_clear_gpr(struct icp_qat_fw_loader_handle *handle )
{
  unsigned char ae ;
  unsigned int ctx_mask ;
  int times ;
  unsigned int csr_val ;
  unsigned short reg ;
  unsigned int savctx ;
  int ret ;
  int tmp ;
  {
  ctx_mask = 255U;
  times = 10000;
  csr_val = 0U;
  savctx = 0U;
  ret = 0;
  ae = 0U;
  goto ldv_27967;
  ldv_27966: ;
  if (((handle->hal_handle)->ae_mask & (unsigned int )(1 << (int )ae)) == 0U) {
    goto ldv_27960;
  } else {
  }
  reg = 0U;
  goto ldv_27962;
  ldv_27961:
  qat_hal_init_rd_xfer(handle, (int )ae, 0, 9, (int )reg, 0U);
  qat_hal_init_rd_xfer(handle, (int )ae, 0, 15, (int )reg, 0U);
  reg = (unsigned short )((int )reg + 1);
  ldv_27962: ;
  if ((unsigned int )reg <= 127U) {
    goto ldv_27961;
  } else {
  }
  qat_hal_rd_ae_csr(handle, (int )ae, 352U, & csr_val);
  csr_val = csr_val & 4294967291U;
  qat_hal_wr_ae_csr(handle, (int )ae, 352U, csr_val);
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & csr_val);
  csr_val = csr_val & 3590324223U;
  csr_val = csr_val | 1048576U;
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, csr_val);
  qat_hal_wr_uwords(handle, (int )ae, 0U, 87U, (uint64_t *)(& inst));
  qat_hal_wr_indr_csr(handle, (int )ae, ctx_mask, 64U, 0U);
  qat_hal_rd_ae_csr(handle, (int )ae, 68U, & savctx);
  qat_hal_wr_ae_csr(handle, (int )ae, 68U, 0U);
  qat_hal_put_wakeup_event(handle, (int )ae, ctx_mask, 1U);
  qat_hal_wr_indr_csr(handle, (int )ae, ctx_mask, 72U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 76U, 0U);
  qat_hal_enable_ctx(handle, (int )ae, ctx_mask);
  ldv_27960:
  ae = (unsigned char )((int )ae + 1);
  ldv_27967: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27966;
  } else {
  }
  ae = 0U;
  goto ldv_27973;
  ldv_27972: ;
  if (((handle->hal_handle)->ae_mask & (unsigned int )(1 << (int )ae)) == 0U) {
    goto ldv_27969;
  } else {
  }
  ldv_27970:
  ret = qat_hal_wait_cycles(handle, (int )ae, 20U, 1);
  if (ret != 0) {
    tmp = times;
    times = times - 1;
    if (tmp != 0) {
      goto ldv_27970;
    } else {
      goto ldv_27971;
    }
  } else {
  }
  ldv_27971: ;
  if (times == 0) {
    printk("\vQAT: clear GPR of AE %d failed", (int )ae);
    return (-22);
  } else {
  }
  qat_hal_disable_ctx(handle, (int )ae, ctx_mask);
  qat_hal_wr_ae_csr(handle, (int )ae, 68U, savctx & 7U);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, 0U);
  qat_hal_wr_indr_csr(handle, (int )ae, ctx_mask, 64U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 20U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 28U, 8192U);
  qat_hal_put_wakeup_event(handle, (int )ae, ctx_mask, 1U);
  qat_hal_put_sig_event(handle, (int )ae, ctx_mask, 1U);
  ldv_27969:
  ae = (unsigned char )((int )ae + 1);
  ldv_27973: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27972;
  } else {
  }
  return (0);
}
}
int qat_hal_init(struct adf_accel_dev *accel_dev )
{
  unsigned char ae ;
  unsigned int max_en_ae_id ;
  struct icp_qat_fw_loader_handle *handle ;
  struct adf_accel_pci *pci_info ;
  struct adf_hw_device_data *hw_data ;
  struct adf_bar *bar ;
  uint32_t tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned int csr_val ;
  {
  max_en_ae_id = 0U;
  pci_info = & accel_dev->accel_pci_dev;
  hw_data = accel_dev->hw_device;
  tmp = (*(hw_data->get_misc_bar_id))(hw_data);
  bar = (struct adf_bar *)(& pci_info->pci_bars) + (unsigned long )tmp;
  tmp___0 = kzalloc(56UL, 208U);
  handle = (struct icp_qat_fw_loader_handle *)tmp___0;
  if ((unsigned long )handle == (unsigned long )((struct icp_qat_fw_loader_handle *)0)) {
    return (-12);
  } else {
  }
  handle->hal_cap_g_ctl_csr_addr_v = bar->virt_addr + 196608UL;
  handle->hal_cap_ae_xfer_csr_addr_v = bar->virt_addr + 131072UL;
  handle->hal_ep_csr_addr_v = bar->virt_addr + 237568UL;
  handle->hal_cap_ae_local_csr_addr_v = handle->hal_cap_ae_xfer_csr_addr_v + 2048UL;
  tmp___1 = kzalloc(264UL, 208U);
  handle->hal_handle = (struct icp_qat_fw_loader_hal_handle *)tmp___1;
  if ((unsigned long )handle->hal_handle == (unsigned long )((struct icp_qat_fw_loader_hal_handle *)0)) {
    goto out_hal_handle;
  } else {
  }
  (handle->hal_handle)->revision_id = (unsigned int )accel_dev->accel_pci_dev.revid;
  (handle->hal_handle)->ae_mask = (unsigned int )hw_data->ae_mask;
  (handle->hal_handle)->slice_mask = (unsigned int )hw_data->accel_mask;
  (handle->hal_handle)->upc_mask = 131071U;
  (handle->hal_handle)->max_ustore = 16384U;
  ae = 0U;
  goto ldv_27987;
  ldv_27986: ;
  if ((((int )hw_data->ae_mask >> (int )ae) & 1) == 0) {
    goto ldv_27985;
  } else {
  }
  (handle->hal_handle)->aes[(int )ae].free_addr = 0U;
  (handle->hal_handle)->aes[(int )ae].free_size = (handle->hal_handle)->max_ustore;
  (handle->hal_handle)->aes[(int )ae].ustore_size = (handle->hal_handle)->max_ustore;
  (handle->hal_handle)->aes[(int )ae].live_ctx_mask = 255U;
  max_en_ae_id = (unsigned int )ae;
  ldv_27985:
  ae = (unsigned char )((int )ae + 1);
  ldv_27987: ;
  if ((unsigned int )ae <= 11U) {
    goto ldv_27986;
  } else {
  }
  (handle->hal_handle)->ae_max_num = max_en_ae_id + 1U;
  tmp___2 = qat_hal_clr_reset(handle);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (accel_dev->accel_pci_dev.pci_dev)->dev),
            "qat_hal_clr_reset error\n");
    goto out_err;
  } else {
  }
  tmp___3 = qat_hal_clear_gpr(handle);
  if (tmp___3 != 0) {
    goto out_err;
  } else {
  }
  ae = 0U;
  goto ldv_27993;
  ldv_27992:
  csr_val = 0U;
  if ((((int )hw_data->ae_mask >> (int )ae) & 1) == 0) {
    goto ldv_27991;
  } else {
  }
  qat_hal_rd_ae_csr(handle, (int )ae, 336U, & csr_val);
  csr_val = csr_val | 1U;
  qat_hal_wr_ae_csr(handle, (int )ae, 336U, csr_val);
  ldv_27991:
  ae = (unsigned char )((int )ae + 1);
  ldv_27993: ;
  if ((unsigned int )ae < (handle->hal_handle)->ae_max_num) {
    goto ldv_27992;
  } else {
  }
  (accel_dev->fw_loader)->fw_loader = handle;
  return (0);
  out_err:
  kfree((void const *)handle->hal_handle);
  out_hal_handle:
  kfree((void const *)handle);
  return (-14);
}
}
void qat_hal_deinit(struct icp_qat_fw_loader_handle *handle )
{
  {
  if ((unsigned long )handle == (unsigned long )((struct icp_qat_fw_loader_handle *)0)) {
    return;
  } else {
  }
  kfree((void const *)handle->hal_handle);
  kfree((void const *)handle);
  return;
}
}
void qat_hal_start(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask )
{
  {
  qat_hal_put_wakeup_event(handle, (int )ae, ~ ctx_mask & 255U, 65536U);
  qat_hal_enable_ctx(handle, (int )ae, ctx_mask);
  return;
}
}
void qat_hal_stop(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask )
{
  {
  qat_hal_disable_ctx(handle, (int )ae, ctx_mask);
  return;
}
}
void qat_hal_set_pc(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned int ctx_mask ,
                    unsigned int upc )
{
  {
  qat_hal_wr_indr_csr(handle, (int )ae, ctx_mask, 64U, (handle->hal_handle)->upc_mask & upc);
  return;
}
}
static void qat_hal_get_uwords(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                               unsigned int uaddr , unsigned int words_num , uint64_t *uword )
{
  unsigned int i ;
  unsigned int uwrd_lo ;
  unsigned int uwrd_hi ;
  unsigned int ustore_addr ;
  unsigned int misc_control ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 352U, & misc_control);
  qat_hal_wr_ae_csr(handle, (int )ae, 352U, misc_control & 4294967291U);
  qat_hal_rd_ae_csr(handle, (int )ae, 0U, & ustore_addr);
  uaddr = uaddr | 2147483648U;
  i = 0U;
  goto ldv_28027;
  ldv_28026:
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, uaddr);
  uaddr = uaddr + 1U;
  qat_hal_rd_ae_csr(handle, (int )ae, 4U, & uwrd_lo);
  qat_hal_rd_ae_csr(handle, (int )ae, 8U, & uwrd_hi);
  *(uword + (unsigned long )i) = (uint64_t )uwrd_hi;
  *(uword + (unsigned long )i) = (*(uword + (unsigned long )i) << 32) | (uint64_t )uwrd_lo;
  i = i + 1U;
  ldv_28027: ;
  if (i < words_num) {
    goto ldv_28026;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 352U, misc_control);
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, ustore_addr);
  return;
}
}
void qat_hal_wr_umem(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                     unsigned int uaddr , unsigned int words_num , unsigned int *data )
{
  unsigned int i ;
  unsigned int ustore_addr ;
  unsigned int uwrd_lo ;
  unsigned int uwrd_hi ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 0U, & ustore_addr);
  uaddr = uaddr | 2147483648U;
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, uaddr);
  i = 0U;
  goto ldv_28042;
  ldv_28041:
  uwrd_lo = ((((*(data + (unsigned long )i) & 268369920U) << 4) | ((*(data + (unsigned long )i) & 65280U) << 2)) | (*(data + (unsigned long )i) & 255U)) | 787200U;
  uwrd_hi = (*(data + (unsigned long )i) >> 28) | 240U;
  tmp___0 = __arch_hweight32(*(data + (unsigned long )i) & 65535U);
  uwrd_hi = ((tmp___0 & 1U) << 8) | uwrd_hi;
  tmp = *(data + (unsigned long )i) >> 16;
  tmp___1 = __arch_hweight32(tmp);
  uwrd_hi = ((tmp___1 & 1U) << 9) | uwrd_hi;
  qat_hal_wr_ae_csr(handle, (int )ae, 4U, uwrd_lo);
  qat_hal_wr_ae_csr(handle, (int )ae, 8U, uwrd_hi);
  i = i + 1U;
  ldv_28042: ;
  if (i < words_num) {
    goto ldv_28041;
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, ustore_addr);
  return;
}
}
static int qat_hal_exec_micro_inst(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                   unsigned char ctx , uint64_t *micro_inst , unsigned int inst_num ,
                                   int code_off , unsigned int max_cycle , unsigned int *endpc )
{
  uint64_t savuwords[100U] ;
  unsigned int ind_lm_addr0 ;
  unsigned int ind_lm_addr1 ;
  unsigned int ind_lm_addr_byte0 ;
  unsigned int ind_lm_addr_byte1 ;
  unsigned int ind_cnt_sig ;
  unsigned int ind_sig ;
  unsigned int act_sig ;
  unsigned int csr_val ;
  unsigned int newcsr_val ;
  unsigned int savctx ;
  unsigned int savcc ;
  unsigned int wakeup_events ;
  unsigned int savpc ;
  unsigned int ctxarb_ctl ;
  unsigned int ctx_enables ;
  int tmp ;
  unsigned int ctx_status ;
  {
  csr_val = 0U;
  if ((handle->hal_handle)->max_ustore < inst_num || (unsigned long )micro_inst == (unsigned long )((uint64_t *)0ULL)) {
    printk("\vQAT: invalid instruction num %d\n", inst_num);
    return (-22);
  } else {
  }
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 96U, & ind_lm_addr0);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 104U, & ind_lm_addr1);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 224U, & ind_lm_addr_byte0);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 232U, & ind_lm_addr_byte1);
  if (inst_num <= 100U) {
    qat_hal_get_uwords(handle, (int )ae, 0U, inst_num, (uint64_t *)(& savuwords));
  } else {
  }
  qat_hal_get_wakeup_event(handle, (int )ae, (int )ctx, & wakeup_events);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 64U, & savpc);
  savpc = (handle->hal_handle)->upc_mask & savpc;
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  ctx_enables = ctx_enables & 3590324223U;
  qat_hal_rd_ae_csr(handle, (int )ae, 28U, & savcc);
  qat_hal_rd_ae_csr(handle, (int )ae, 68U, & savctx);
  qat_hal_rd_ae_csr(handle, (int )ae, 20U, & ctxarb_ctl);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 120U, & ind_cnt_sig);
  qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 72U, & ind_sig);
  qat_hal_rd_ae_csr(handle, (int )ae, 76U, & act_sig);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables);
  qat_hal_wr_uwords(handle, (int )ae, 0U, inst_num, micro_inst);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 64U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 68U, (unsigned int )ctx & 7U);
  if (code_off != 0) {
    qat_hal_wr_ae_csr(handle, (int )ae, 28U, savcc & 4294959103U);
  } else {
  }
  qat_hal_put_wakeup_event(handle, (int )ae, (unsigned int )(1 << (int )ctx), 1U);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 72U, 0U);
  qat_hal_wr_ae_csr(handle, (int )ae, 76U, 0U);
  qat_hal_enable_ctx(handle, (int )ae, (unsigned int )(1 << (int )ctx));
  tmp = qat_hal_wait_cycles(handle, (int )ae, max_cycle, 1);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  if ((unsigned long )endpc != (unsigned long )((unsigned int *)0U)) {
    qat_hal_rd_indr_csr(handle, (int )ae, (int )ctx, 64U, & ctx_status);
    *endpc = (handle->hal_handle)->upc_mask & ctx_status;
  } else {
  }
  qat_hal_disable_ctx(handle, (int )ae, (unsigned int )(1 << (int )ctx));
  if (inst_num <= 100U) {
    qat_hal_wr_uwords(handle, (int )ae, 0U, inst_num, (uint64_t *)(& savuwords));
  } else {
  }
  qat_hal_put_wakeup_event(handle, (int )ae, (unsigned int )(1 << (int )ctx), wakeup_events);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 64U, (handle->hal_handle)->upc_mask & savpc);
  qat_hal_rd_ae_csr(handle, (int )ae, 352U, & csr_val);
  newcsr_val = csr_val & 4294967291U;
  qat_hal_wr_ae_csr(handle, (int )ae, 352U, newcsr_val);
  qat_hal_wr_ae_csr(handle, (int )ae, 28U, savcc);
  qat_hal_wr_ae_csr(handle, (int )ae, 68U, savctx & 7U);
  qat_hal_wr_ae_csr(handle, (int )ae, 20U, ctxarb_ctl);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 96U, ind_lm_addr0);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 104U, ind_lm_addr1);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 224U, ind_lm_addr_byte0);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 232U, ind_lm_addr_byte1);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 120U, ind_cnt_sig);
  qat_hal_wr_indr_csr(handle, (int )ae, (unsigned int )(1 << (int )ctx), 72U, ind_sig);
  qat_hal_wr_ae_csr(handle, (int )ae, 76U, act_sig);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables);
  return (0);
}
}
static int qat_hal_rd_rel_reg(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                              unsigned char ctx , enum icp_qat_uof_regtype reg_type ,
                              unsigned short reg_num , unsigned int *data )
{
  unsigned int savctx ;
  unsigned int uaddr ;
  unsigned int uwrd_lo ;
  unsigned int uwrd_hi ;
  unsigned int ctxarb_cntl ;
  unsigned int ustore_addr ;
  unsigned int ctx_enables ;
  unsigned short reg_addr ;
  int status ;
  uint64_t insts ;
  uint64_t savuword ;
  {
  status = 0;
  reg_addr = qat_hal_get_reg_addr((unsigned int )reg_type, (int )reg_num);
  if ((unsigned int )reg_addr == 65535U) {
    printk("\vQAT: bad regaddr=0x%x\n", (int )reg_addr);
    return (-22);
  } else {
  }
  switch ((unsigned int )reg_type) {
  case 1U:
  insts = ((unsigned long long )reg_addr & 1023ULL) | 689073815552ULL;
  goto ldv_28091;
  default:
  insts = (unsigned long long )(((int )reg_addr & 1023) << 10) | 688000073728ULL;
  goto ldv_28091;
  }
  ldv_28091:
  qat_hal_rd_ae_csr(handle, (int )ae, 68U, & savctx);
  qat_hal_rd_ae_csr(handle, (int )ae, 20U, & ctxarb_cntl);
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  ctx_enables = ctx_enables & 3590324223U;
  if ((unsigned int )ctx != (savctx & 7U)) {
    qat_hal_wr_ae_csr(handle, (int )ae, 68U, (unsigned int )ctx & 7U);
  } else {
  }
  qat_hal_get_uwords(handle, (int )ae, 0U, 1U, & savuword);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables);
  qat_hal_rd_ae_csr(handle, (int )ae, 0U, & ustore_addr);
  uaddr = 2147483648U;
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, uaddr);
  insts = qat_hal_set_uword_ecc(insts);
  uwrd_lo = (unsigned int )insts;
  uwrd_hi = (unsigned int )(insts >> 32);
  qat_hal_wr_ae_csr(handle, (int )ae, 4U, uwrd_lo);
  qat_hal_wr_ae_csr(handle, (int )ae, 8U, uwrd_hi);
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, uaddr);
  qat_hal_wait_cycles(handle, (int )ae, 8U, 0);
  qat_hal_rd_ae_csr(handle, (int )ae, 16U, data);
  qat_hal_wr_ae_csr(handle, (int )ae, 0U, ustore_addr);
  qat_hal_wr_uwords(handle, (int )ae, 0U, 1U, & savuword);
  if ((unsigned int )ctx != (savctx & 7U)) {
    qat_hal_wr_ae_csr(handle, (int )ae, 68U, savctx & 7U);
  } else {
  }
  qat_hal_wr_ae_csr(handle, (int )ae, 20U, ctxarb_cntl);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables);
  return (status);
}
}
static int qat_hal_wr_rel_reg(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                              unsigned char ctx , enum icp_qat_uof_regtype reg_type ,
                              unsigned short reg_num , unsigned int data )
{
  unsigned short src_hiaddr ;
  unsigned short src_lowaddr ;
  unsigned short dest_addr ;
  unsigned short data16hi ;
  unsigned short data16lo ;
  uint64_t insts[4U] ;
  int num_inst ;
  int code_off ;
  int imm_w1 ;
  int imm_w0 ;
  int tmp ;
  {
  insts[0] = 1049045762048ULL;
  insts[1] = 1031865892864ULL;
  insts[2] = 1030792938240ULL;
  insts[3] = 962072739840ULL;
  num_inst = 4;
  code_off = 1;
  imm_w1 = 0;
  imm_w0 = 1;
  dest_addr = qat_hal_get_reg_addr((unsigned int )reg_type, (int )reg_num);
  if ((unsigned int )dest_addr == 65535U) {
    printk("\vQAT: bad destAddr=0x%x\n", (int )dest_addr);
    return (-22);
  } else {
  }
  data16lo = (unsigned short )data;
  data16hi = (unsigned short )(data >> 16);
  src_hiaddr = qat_hal_get_reg_addr(0U, (int )data16hi & 255);
  src_lowaddr = qat_hal_get_reg_addr(0U, (int )data16lo & 255);
  switch ((unsigned int )reg_type) {
  case 1U:
  insts[imm_w1] = ((insts[imm_w1] | (uint64_t )(((int )data16hi >> 8) << 20)) | (uint64_t )(((int )src_hiaddr & 1023) << 10)) | ((uint64_t )dest_addr & 1023ULL);
  insts[imm_w0] = ((insts[imm_w0] | (uint64_t )(((int )data16lo >> 8) << 20)) | (uint64_t )(((int )src_lowaddr & 1023) << 10)) | ((uint64_t )dest_addr & 1023ULL);
  goto ldv_28114;
  default:
  insts[imm_w1] = ((insts[imm_w1] | (uint64_t )(((int )data16hi >> 8) << 20)) | (uint64_t )(((int )dest_addr & 1023) << 10)) | ((uint64_t )src_hiaddr & 1023ULL);
  insts[imm_w0] = ((insts[imm_w0] | (uint64_t )(((int )data16lo >> 8) << 20)) | (uint64_t )(((int )dest_addr & 1023) << 10)) | ((uint64_t )src_lowaddr & 1023ULL);
  goto ldv_28114;
  }
  ldv_28114:
  tmp = qat_hal_exec_micro_inst(handle, (int )ae, (int )ctx, (uint64_t *)(& insts),
                                (unsigned int )num_inst, code_off, (unsigned int )(num_inst * 5),
                                (unsigned int *)0U);
  return (tmp);
}
}
int qat_hal_get_ins_num(void)
{
  {
  return (9);
}
}
static int qat_hal_concat_micro_code(uint64_t *micro_inst , unsigned int inst_num ,
                                     unsigned int size , unsigned int addr , unsigned int *value )
{
  int i ;
  int val_indx ;
  unsigned int cur_value ;
  uint64_t const *inst_arr ;
  int fixup_offset ;
  int usize ;
  int orig_num ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  usize = 0;
  orig_num = (int )inst_num;
  val_indx = 0;
  tmp = val_indx;
  val_indx = val_indx + 1;
  cur_value = *(value + (unsigned long )tmp);
  inst_arr = (uint64_t const *)(& inst_4b);
  usize = 9;
  fixup_offset = (int )inst_num;
  i = 0;
  goto ldv_28138;
  ldv_28137:
  tmp___0 = inst_num;
  inst_num = inst_num + 1U;
  *(micro_inst + (unsigned long )tmp___0) = *(inst_arr + (unsigned long )i);
  i = i + 1;
  ldv_28138: ;
  if (i < usize) {
    goto ldv_28137;
  } else {
  }
  *(micro_inst + (unsigned long )fixup_offset) = (*(micro_inst + (unsigned long )fixup_offset) & 17591918396415ULL) | (((unsigned long long )(addr << 12) & 267386880ULL) | ((unsigned long long )(addr << 10) & 261120ULL));
  fixup_offset = fixup_offset + 1;
  *(micro_inst + (unsigned long )fixup_offset) = *(micro_inst + (unsigned long )fixup_offset) & 17591918396415ULL;
  fixup_offset = fixup_offset + 1;
  *(micro_inst + (unsigned long )fixup_offset) = (*(micro_inst + (unsigned long )fixup_offset) & 17591918657280ULL) | (((unsigned long long )(cur_value << 12) & 267386880ULL) | ((unsigned long long )cur_value & 255ULL));
  fixup_offset = fixup_offset + 1;
  *(micro_inst + (unsigned long )fixup_offset) = (*(micro_inst + (unsigned long )fixup_offset) & 17591918657280ULL) | (((unsigned long long )((cur_value >> 16) << 12) & 267386880ULL) | ((unsigned long long )(cur_value >> 16) & 255ULL));
  return ((int )(inst_num - (unsigned int )orig_num));
}
}
static int qat_hal_exec_micro_init_lm(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                      unsigned char ctx , int *pfirst_exec , uint64_t *micro_inst ,
                                      unsigned int inst_num )
{
  int stat ;
  unsigned int gpra0 ;
  unsigned int gpra1 ;
  unsigned int gpra2 ;
  unsigned int gprb0 ;
  unsigned int gprb1 ;
  {
  stat = 0;
  gpra0 = 0U;
  gpra1 = 0U;
  gpra2 = 0U;
  gprb0 = 0U;
  gprb1 = 0U;
  if (*pfirst_exec != 0) {
    qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 1, 0, & gpra0);
    qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 1, 1, & gpra1);
    qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 1, 2, & gpra2);
    qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 3, 0, & gprb0);
    qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 3, 1, & gprb1);
    *pfirst_exec = 0;
  } else {
  }
  stat = qat_hal_exec_micro_inst(handle, (int )ae, (int )ctx, micro_inst, inst_num,
                                 1, inst_num * 5U, (unsigned int *)0U);
  if (stat != 0) {
    return (-14);
  } else {
  }
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 1, 0, gpra0);
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 1, 1, gpra1);
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 1, 2, gpra2);
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 3, 0, gprb0);
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 3, 1, gprb1);
  return (0);
}
}
int qat_hal_batch_wr_lm(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                        struct icp_qat_uof_batch_init *lm_init_header )
{
  struct icp_qat_uof_batch_init *plm_init ;
  uint64_t *micro_inst_arry ;
  int micro_inst_num ;
  int alloc_inst_size ;
  int first_exec ;
  int stat ;
  void *tmp ;
  unsigned int addr ;
  unsigned int *value ;
  unsigned int size ;
  int tmp___0 ;
  int tmp___1 ;
  {
  first_exec = 1;
  stat = 0;
  plm_init = lm_init_header->next;
  alloc_inst_size = (int )lm_init_header->size;
  if ((unsigned int )alloc_inst_size > (handle->hal_handle)->max_ustore) {
    alloc_inst_size = (int )(handle->hal_handle)->max_ustore;
  } else {
  }
  tmp = kmalloc_array((size_t )alloc_inst_size, 8UL, 208U);
  micro_inst_arry = (uint64_t *)tmp;
  if ((unsigned long )micro_inst_arry == (unsigned long )((uint64_t *)0ULL)) {
    return (-12);
  } else {
  }
  micro_inst_num = 0;
  goto ldv_28169;
  ldv_28168:
  ae = (unsigned char )plm_init->ae;
  addr = plm_init->addr;
  value = plm_init->value;
  size = plm_init->size;
  tmp___0 = qat_hal_concat_micro_code(micro_inst_arry, (unsigned int )micro_inst_num,
                                      size, addr, value);
  micro_inst_num = tmp___0 + micro_inst_num;
  plm_init = plm_init->next;
  ldv_28169: ;
  if ((unsigned long )plm_init != (unsigned long )((struct icp_qat_uof_batch_init *)0)) {
    goto ldv_28168;
  } else {
  }
  if ((unsigned long )micro_inst_arry != (unsigned long )((uint64_t *)0ULL) && micro_inst_num > 0) {
    tmp___1 = micro_inst_num;
    micro_inst_num = micro_inst_num + 1;
    *(micro_inst_arry + (unsigned long )tmp___1) = 962072739840ULL;
    stat = qat_hal_exec_micro_init_lm(handle, (int )ae, 0, & first_exec, micro_inst_arry,
                                      (unsigned int )micro_inst_num);
  } else {
  }
  kfree((void const *)micro_inst_arry);
  return (stat);
}
}
static int qat_hal_put_rel_rd_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                   unsigned char ctx , enum icp_qat_uof_regtype reg_type ,
                                   unsigned short reg_num , unsigned int val )
{
  int status ;
  unsigned int reg_addr ;
  unsigned int ctx_enables ;
  unsigned short mask ;
  unsigned short dr_offset ;
  {
  status = 0;
  dr_offset = 16U;
  status = qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  if ((int )ctx_enables < 0) {
    if ((int )ctx & 1) {
      printk("\vQAT: bad 4-ctx mode,ctx=0x%x\n", (int )ctx);
      return (-22);
    } else {
    }
    mask = 31U;
    dr_offset = 32U;
  } else {
    mask = 15U;
  }
  if (((int )reg_num & ~ ((int )mask)) != 0) {
    return (-22);
  } else {
  }
  reg_addr = (unsigned int )((int )reg_num + ((int )ctx << 5));
  switch ((unsigned int )reg_type) {
  case 6U: ;
  case 5U:
  __writel(val, (void volatile *)(handle->hal_cap_ae_xfer_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + (unsigned long )((reg_addr & 255U) << 2))));
  goto ldv_28186;
  case 12U: ;
  case 11U:
  __writel(val, (void volatile *)(handle->hal_cap_ae_xfer_csr_addr_v + ((unsigned long )(((unsigned int )ae & (handle->hal_handle)->ae_mask) << 12) + (unsigned long )((((unsigned int )dr_offset + reg_addr) & 255U) << 2))));
  goto ldv_28186;
  default:
  status = -22;
  goto ldv_28186;
  }
  ldv_28186: ;
  return (status);
}
}
static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                   unsigned char ctx , enum icp_qat_uof_regtype reg_type ,
                                   unsigned short reg_num , unsigned int data )
{
  unsigned int gprval ;
  unsigned int ctx_enables ;
  unsigned short src_hiaddr ;
  unsigned short src_lowaddr ;
  unsigned short gpr_addr ;
  unsigned short xfr_addr ;
  unsigned short data16hi ;
  unsigned short data16low ;
  unsigned short reg_mask ;
  int status ;
  uint64_t micro_inst[5U] ;
  int num_inst ;
  int code_off ;
  unsigned short gprnum ;
  unsigned short dly ;
  {
  status = 0;
  micro_inst[0] = 1049045762048ULL;
  micro_inst[1] = 1031865892864ULL;
  micro_inst[2] = 687194767360ULL;
  micro_inst[3] = 1030792938240ULL;
  micro_inst[4] = 962072739840ULL;
  num_inst = 5;
  code_off = 1;
  gprnum = 0U;
  dly = (unsigned int )((unsigned short const )num_inst) * 5U;
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  if ((int )ctx_enables < 0) {
    if ((int )ctx & 1) {
      printk("\vQAT: 4-ctx mode,ctx=0x%x\n", (int )ctx);
      return (-22);
    } else {
    }
    reg_mask = 65504U;
  } else {
    reg_mask = 65520U;
  }
  if ((unsigned int )((int )reg_num & (int )reg_mask) != 0U) {
    return (-22);
  } else {
  }
  xfr_addr = qat_hal_get_reg_addr((unsigned int )reg_type, (int )reg_num);
  if ((unsigned int )xfr_addr == 65535U) {
    printk("\vQAT: bad xfrAddr=0x%x\n", (int )xfr_addr);
    return (-22);
  } else {
  }
  qat_hal_rd_rel_reg(handle, (int )ae, (int )ctx, 3, (int )gprnum, & gprval);
  gpr_addr = qat_hal_get_reg_addr(3U, (int )gprnum);
  data16low = (unsigned short )data;
  data16hi = (unsigned short )(data >> 16);
  src_hiaddr = qat_hal_get_reg_addr(0U, (int )data16hi & 255);
  src_lowaddr = qat_hal_get_reg_addr(0U, (int )data16low & 255);
  micro_inst[0] = ((micro_inst[0] | (uint64_t )(((int )data16hi >> 8) << 20)) | (uint64_t )(((int )gpr_addr & 1023) << 10)) | ((uint64_t )src_hiaddr & 1023ULL);
  micro_inst[1] = ((micro_inst[1] | (uint64_t )(((int )data16low >> 8) << 20)) | (uint64_t )(((int )gpr_addr & 1023) << 10)) | ((uint64_t )src_lowaddr & 1023ULL);
  micro_inst[2] = (micro_inst[2] | (uint64_t )(((int )xfr_addr & 1023) << 20)) | (uint64_t )(((int )gpr_addr & 1023) << 10);
  status = qat_hal_exec_micro_inst(handle, (int )ae, (int )ctx, (uint64_t *)(& micro_inst),
                                   (unsigned int )num_inst, code_off, (unsigned int )dly,
                                   (unsigned int *)0U);
  qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, 3, (int )gprnum, gprval);
  return (status);
}
}
static int qat_hal_put_rel_nn(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                              unsigned char ctx , unsigned short nn , unsigned int val )
{
  unsigned int ctx_enables ;
  int stat ;
  {
  stat = 0;
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  ctx_enables = ctx_enables & 3590324223U;
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables | 1048576U);
  stat = qat_hal_put_rel_wr_xfer(handle, (int )ae, (int )ctx, 20, (int )nn, val);
  qat_hal_wr_ae_csr(handle, (int )ae, 24U, ctx_enables);
  return (stat);
}
}
static int qat_hal_convert_abs_to_rel(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                                      unsigned short absreg_num , unsigned short *relreg ,
                                      unsigned char *ctx )
{
  unsigned int ctx_enables ;
  {
  qat_hal_rd_ae_csr(handle, (int )ae, 24U, & ctx_enables);
  if ((int )ctx_enables < 0) {
    *relreg = (unsigned int )absreg_num & 31U;
    *ctx = (unsigned int )((unsigned char )((int )absreg_num >> 4)) & 6U;
  } else {
    *relreg = (unsigned int )absreg_num & 15U;
    *ctx = (unsigned int )((unsigned char )((int )absreg_num >> 4)) & 7U;
  }
  return (0);
}
}
int qat_hal_init_gpr(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                     unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                     unsigned short reg_num , unsigned int regdata )
{
  int stat ;
  unsigned short reg ;
  unsigned char ctx ;
  enum icp_qat_uof_regtype type ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  stat = 0;
  ctx = 0U;
  if ((unsigned int )reg_num > 127U) {
    return (-22);
  } else {
  }
  ldv_28245: ;
  if ((unsigned int )ctx_mask == 0U) {
    qat_hal_convert_abs_to_rel(handle, (int )ae, (int )reg_num, & reg, & ctx);
    type = (enum icp_qat_uof_regtype )((unsigned int )reg_type - 1U);
  } else {
    reg = reg_num;
    type = reg_type;
    tmp = variable_test_bit((long )ctx, (unsigned long const volatile *)(& ctx_mask));
    if (tmp == 0) {
      goto ldv_28244;
    } else {
    }
  }
  stat = qat_hal_wr_rel_reg(handle, (int )ae, (int )ctx, type, (int )reg, regdata);
  if (stat != 0) {
    printk("\vQAT: write gpr fail\n");
    return (-22);
  } else {
  }
  ldv_28244: ;
  if ((unsigned int )ctx_mask != 0U) {
    tmp___0 = ctx;
    ctx = (unsigned char )((int )ctx + 1);
    if ((unsigned int )tmp___0 <= 7U) {
      goto ldv_28245;
    } else {
      goto ldv_28246;
    }
  } else {
  }
  ldv_28246: ;
  return (0);
}
}
int qat_hal_init_wr_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                         unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                         unsigned short reg_num , unsigned int regdata )
{
  int stat ;
  unsigned short reg ;
  unsigned char ctx ;
  enum icp_qat_uof_regtype type ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  stat = 0;
  ctx = 0U;
  if ((unsigned int )reg_num > 127U) {
    return (-22);
  } else {
  }
  ldv_28260: ;
  if ((unsigned int )ctx_mask == 0U) {
    qat_hal_convert_abs_to_rel(handle, (int )ae, (int )reg_num, & reg, & ctx);
    type = (enum icp_qat_uof_regtype )((unsigned int )reg_type - 3U);
  } else {
    reg = reg_num;
    type = reg_type;
    tmp = variable_test_bit((long )ctx, (unsigned long const volatile *)(& ctx_mask));
    if (tmp == 0) {
      goto ldv_28259;
    } else {
    }
  }
  stat = qat_hal_put_rel_wr_xfer(handle, (int )ae, (int )ctx, type, (int )reg, regdata);
  if (stat != 0) {
    printk("\vQAT: write wr xfer fail\n");
    return (-22);
  } else {
  }
  ldv_28259: ;
  if ((unsigned int )ctx_mask != 0U) {
    tmp___0 = ctx;
    ctx = (unsigned char )((int )ctx + 1);
    if ((unsigned int )tmp___0 <= 7U) {
      goto ldv_28260;
    } else {
      goto ldv_28261;
    }
  } else {
  }
  ldv_28261: ;
  return (0);
}
}
int qat_hal_init_rd_xfer(struct icp_qat_fw_loader_handle *handle , unsigned char ae ,
                         unsigned char ctx_mask , enum icp_qat_uof_regtype reg_type ,
                         unsigned short reg_num , unsigned int regdata )
{
  int stat ;
  unsigned short reg ;
  unsigned char ctx ;
  enum icp_qat_uof_regtype type ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  stat = 0;
  ctx = 0U;
  if ((unsigned int )reg_num > 127U) {
    return (-22);
  } else {
  }
  ldv_28275: ;
  if ((unsigned int )ctx_mask == 0U) {
    qat_hal_convert_abs_to_rel(handle, (int )ae, (int )reg_num, & reg, & ctx);
    type = (enum icp_qat_uof_regtype )((unsigned int )reg_type - 3U);
  } else {
    reg = reg_num;
    type = reg_type;
    tmp = variable_test_bit((long )ctx, (unsigned long const volatile *)(& ctx_mask));
    if (tmp == 0) {
      goto ldv_28274;
    } else {
    }
  }
  stat = qat_hal_put_rel_rd_xfer(handle, (int )ae, (int )ctx, type, (int )reg, regdata);
  if (stat != 0) {
    printk("\vQAT: write rd xfer fail\n");
    return (-22);
  } else {
  }
  ldv_28274: ;
  if ((unsigned int )ctx_mask != 0U) {
    tmp___0 = ctx;
    ctx = (unsigned char )((int )ctx + 1);
    if ((unsigned int )tmp___0 <= 7U) {
      goto ldv_28275;
    } else {
      goto ldv_28276;
    }
  } else {
  }
  ldv_28276: ;
  return (0);
}
}
int qat_hal_init_nn(struct icp_qat_fw_loader_handle *handle , unsigned char ae , unsigned char ctx_mask ,
                    unsigned short reg_num , unsigned int regdata )
{
  int stat ;
  unsigned char ctx ;
  int tmp ;
  {
  stat = 0;
  if ((unsigned int )ctx_mask == 0U) {
    return (-22);
  } else {
  }
  ctx = 0U;
  goto ldv_28288;
  ldv_28287:
  tmp = variable_test_bit((long )ctx, (unsigned long const volatile *)(& ctx_mask));
  if (tmp == 0) {
    goto ldv_28286;
  } else {
  }
  stat = qat_hal_put_rel_nn(handle, (int )ae, (int )ctx, (int )reg_num, regdata);
  if (stat != 0) {
    printk("\vQAT: write neigh error\n");
    return (-22);
  } else {
  }
  ldv_28286:
  ctx = (unsigned char )((int )ctx + 1);
  ldv_28288: ;
  if ((unsigned int )ctx <= 7U) {
    goto ldv_28287;
  } else {
  }
  return (0);
}
}
bool ldv_queue_work_on_369(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_370(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_371(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_372(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_373(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_402(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_404(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_403(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_406(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_405(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_seq_operations_5(void) ;
void ldv_file_operations_2(void) ;
void ldv_file_operations_4(void) ;
int ldv_seq_open_415(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
int ldv_seq_open_416(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
int ldv_seq_release_417(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 ) ;
int ldv_seq_release_418(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
static struct mutex ring_read_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ring_read_lock.wait_lock",
                                                          0, 0UL}}}}, {& ring_read_lock.wait_list,
                                                                       & ring_read_lock.wait_list},
    0, (void *)(& ring_read_lock), {0, {0, 0}, "ring_read_lock", 0, 0UL}};
static struct mutex bank_read_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "bank_read_lock.wait_lock",
                                                          0, 0UL}}}}, {& bank_read_lock.wait_list,
                                                                       & bank_read_lock.wait_list},
    0, (void *)(& bank_read_lock), {0, {0, 0}, "bank_read_lock", 0, 0UL}};
static void *adf_ring_start(struct seq_file *sfile , loff_t *pos )
{
  struct adf_etr_ring_data *ring ;
  loff_t tmp ;
  {
  ring = (struct adf_etr_ring_data *)sfile->private;
  mutex_lock_nested(& ring_read_lock, 0U);
  if (*pos == 0LL) {
    return ((void *)1);
  } else {
  }
  if (*pos >= (loff_t )(((1 << ((int )ring->ring_size + -1)) << 7) / ((int )ring->msg_size << 5))) {
    return ((void *)0);
  } else {
  }
  tmp = *pos;
  *pos = *pos + 1LL;
  return (ring->base_addr + (unsigned long )((loff_t )((int )ring->msg_size << 5) * tmp));
}
}
static void *adf_ring_next(struct seq_file *sfile , void *v , loff_t *pos )
{
  struct adf_etr_ring_data *ring ;
  loff_t tmp ;
  {
  ring = (struct adf_etr_ring_data *)sfile->private;
  if (*pos >= (loff_t )(((1 << ((int )ring->ring_size + -1)) << 7) / ((int )ring->msg_size << 5))) {
    return ((void *)0);
  } else {
  }
  tmp = *pos;
  *pos = *pos + 1LL;
  return (ring->base_addr + (unsigned long )((loff_t )((int )ring->msg_size << 5) * tmp));
}
}
static int adf_ring_show(struct seq_file *sfile , void *v )
{
  struct adf_etr_ring_data *ring ;
  struct adf_etr_bank_data *bank ;
  uint32_t *msg ;
  void *csr ;
  int i ;
  int x ;
  int head ;
  int tail ;
  int empty ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  ring = (struct adf_etr_ring_data *)sfile->private;
  bank = ring->bank;
  msg = (uint32_t *)v;
  csr = (ring->bank)->csr_addr;
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    tmp = __readl((void const volatile *)(csr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 192UL)));
    head = (int )tmp;
    tmp___0 = __readl((void const volatile *)(csr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 256UL)));
    tail = (int )tmp___0;
    tmp___1 = __readl((void const volatile *)(csr + ((unsigned long )(bank->bank_number * 4096U) + 332UL)));
    empty = (int )tmp___1;
    seq_puts(sfile, "------- Ring configuration -------\n");
    seq_printf(sfile, "ring name: %s\n", (char *)(& (ring->ring_debug)->ring_name));
    seq_printf(sfile, "ring num %d, bank num %d\n", (int )ring->ring_number, (ring->bank)->bank_number);
    seq_printf(sfile, "head %x, tail %x, empty: %d\n", head, tail, ((1 << (int )ring->ring_number) & empty) >> (int )ring->ring_number);
    seq_printf(sfile, "ring size %d, msg size %d\n", (1 << ((int )ring->ring_size + -1)) << 7,
               (int )ring->msg_size << 5);
    seq_puts(sfile, "----------- Ring data ------------\n");
    return (0);
  } else {
  }
  seq_printf(sfile, "%p:", msg);
  x = 0;
  i = 0;
  goto ldv_26174;
  ldv_26173:
  seq_printf(sfile, " %08X", *(msg + (unsigned long )i));
  if (((int )ring->msg_size << 5) >> 2 != i + 1) {
    x = x + 1;
    if (x == 8) {
      seq_printf(sfile, "\n%p:", msg + ((unsigned long )i + 1UL));
      x = 0;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_26174: ;
  if (((int )ring->msg_size << 5) >> 2 > i) {
    goto ldv_26173;
  } else {
  }
  seq_puts(sfile, "\n");
  return (0);
}
}
static void adf_ring_stop(struct seq_file *sfile , void *v )
{
  {
  mutex_unlock(& ring_read_lock);
  return;
}
}
static struct seq_operations const adf_ring_sops = {& adf_ring_start, & adf_ring_stop, & adf_ring_next, & adf_ring_show};
static int adf_ring_open(struct inode *inode , struct file *file )
{
  int ret ;
  int tmp ;
  struct seq_file *seq_f ;
  {
  tmp = ldv_seq_open_415(file, & adf_ring_sops);
  ret = tmp;
  if (ret == 0) {
    seq_f = (struct seq_file *)file->private_data;
    seq_f->private = inode->i_private;
  } else {
  }
  return (ret);
}
}
static struct file_operations const adf_ring_debug_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & adf_ring_open, 0, & seq_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int adf_ring_debugfs_add(struct adf_etr_ring_data *ring , char const *name )
{
  struct adf_etr_ring_debug_entry *ring_debug ;
  char entry_name[8U] ;
  void *tmp ;
  {
  tmp = kzalloc(72UL, 208U);
  ring_debug = (struct adf_etr_ring_debug_entry *)tmp;
  if ((unsigned long )ring_debug == (unsigned long )((struct adf_etr_ring_debug_entry *)0)) {
    return (-12);
  } else {
  }
  strlcpy((char *)(& ring_debug->ring_name), name, 64UL);
  snprintf((char *)(& entry_name), 8UL, "ring_%02d", (int )ring->ring_number);
  ring_debug->debug = debugfs_create_file((char const *)(& entry_name), 256, (ring->bank)->bank_debug_dir,
                                          (void *)ring, & adf_ring_debug_fops);
  if ((unsigned long )ring_debug->debug == (unsigned long )((struct dentry *)0)) {
    printk("\vQAT: Failed to create ring debug entry.\n");
    kfree((void const *)ring_debug);
    return (-14);
  } else {
  }
  ring->ring_debug = ring_debug;
  return (0);
}
}
void adf_ring_debugfs_rm(struct adf_etr_ring_data *ring )
{
  {
  if ((unsigned long )ring->ring_debug != (unsigned long )((struct adf_etr_ring_debug_entry *)0)) {
    debugfs_remove((ring->ring_debug)->debug);
    kfree((void const *)ring->ring_debug);
    ring->ring_debug = (struct adf_etr_ring_debug_entry *)0;
  } else {
  }
  return;
}
}
static void *adf_bank_start(struct seq_file *sfile , loff_t *pos )
{
  {
  mutex_lock_nested(& bank_read_lock, 0U);
  if (*pos == 0LL) {
    return ((void *)1);
  } else {
  }
  if (*pos > 15LL) {
    return ((void *)0);
  } else {
  }
  return ((void *)pos);
}
}
static void *adf_bank_next(struct seq_file *sfile , void *v , loff_t *pos )
{
  {
  *pos = *pos + 1LL;
  if (*pos > 15LL) {
    return ((void *)0);
  } else {
  }
  return ((void *)pos);
}
}
static int adf_bank_show(struct seq_file *sfile , void *v )
{
  struct adf_etr_bank_data *bank ;
  int ring_id ;
  struct adf_etr_ring_data *ring ;
  void *csr ;
  int head ;
  int tail ;
  int empty ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  bank = (struct adf_etr_bank_data *)sfile->private;
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    seq_printf(sfile, "------- Bank %d configuration -------\n", bank->bank_number);
  } else {
    ring_id = *((int *)v) + -1;
    ring = (struct adf_etr_ring_data *)(& bank->rings) + (unsigned long )ring_id;
    csr = bank->csr_addr;
    if ((((int )bank->ring_mask >> ring_id) & 1) == 0) {
      return (0);
    } else {
    }
    tmp = __readl((void const volatile *)(csr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 192UL)));
    head = (int )tmp;
    tmp___0 = __readl((void const volatile *)(csr + (((unsigned long )(bank->bank_number * 4096U) + (unsigned long )((int )ring->ring_number << 2)) + 256UL)));
    tail = (int )tmp___0;
    tmp___1 = __readl((void const volatile *)(csr + ((unsigned long )(bank->bank_number * 4096U) + 332UL)));
    empty = (int )tmp___1;
    seq_printf(sfile, "ring num %02d, head %04x, tail %04x, empty: %d\n", (int )ring->ring_number,
               head, tail, ((1 << (int )ring->ring_number) & empty) >> (int )ring->ring_number);
  }
  return (0);
}
}
static void adf_bank_stop(struct seq_file *sfile , void *v )
{
  {
  mutex_unlock(& bank_read_lock);
  return;
}
}
static struct seq_operations const adf_bank_sops = {& adf_bank_start, & adf_bank_stop, & adf_bank_next, & adf_bank_show};
static int adf_bank_open(struct inode *inode , struct file *file )
{
  int ret ;
  int tmp ;
  struct seq_file *seq_f ;
  {
  tmp = ldv_seq_open_416(file, & adf_bank_sops);
  ret = tmp;
  if (ret == 0) {
    seq_f = (struct seq_file *)file->private_data;
    seq_f->private = inode->i_private;
  } else {
  }
  return (ret);
}
}
static struct file_operations const adf_bank_debug_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & adf_bank_open, 0, & seq_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int adf_bank_debugfs_add(struct adf_etr_bank_data *bank )
{
  struct adf_accel_dev *accel_dev ;
  struct dentry *parent ;
  char name[8U] ;
  {
  accel_dev = bank->accel_dev;
  parent = (accel_dev->transport)->debug;
  snprintf((char *)(& name), 8UL, "bank_%02d", bank->bank_number);
  bank->bank_debug_dir = debugfs_create_dir((char const *)(& name), parent);
  if ((unsigned long )bank->bank_debug_dir == (unsigned long )((struct dentry *)0)) {
    printk("\vQAT: Failed to create bank debug dir.\n");
    return (-14);
  } else {
  }
  bank->bank_debug_cfg = debugfs_create_file("config", 256, bank->bank_debug_dir,
                                             (void *)bank, & adf_bank_debug_fops);
  if ((unsigned long )bank->bank_debug_cfg == (unsigned long )((struct dentry *)0)) {
    printk("\vQAT: Failed to create bank debug entry.\n");
    debugfs_remove(bank->bank_debug_dir);
    return (-14);
  } else {
  }
  return (0);
}
}
void adf_bank_debugfs_rm(struct adf_etr_bank_data *bank )
{
  {
  debugfs_remove(bank->bank_debug_cfg);
  debugfs_remove(bank->bank_debug_dir);
  return;
}
}
int ldv_retval_5 ;
void *ldv_retval_0 ;
void *ldv_retval_1 ;
void *ldv_retval_10 ;
void *ldv_retval_9 ;
int ldv_retval_7 ;
void ldv_seq_operations_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(256UL);
  adf_ring_sops_group1 = (struct seq_file *)tmp;
  return;
}
}
void ldv_file_operations_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  adf_bank_debug_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  adf_bank_debug_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_seq_operations_3(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(256UL);
  adf_bank_sops_group1 = (struct seq_file *)tmp;
  return;
}
}
void ldv_file_operations_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  adf_ring_debug_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  adf_ring_debug_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_4(void)
{
  int ldvarg15 ;
  loff_t ldvarg16 ;
  char *ldvarg19 ;
  void *tmp ;
  loff_t *ldvarg17 ;
  void *tmp___0 ;
  size_t ldvarg18 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg17 = (loff_t *)tmp___0;
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg16), 0, 8UL);
  ldv_memset((void *)(& ldvarg18), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    ldv_seq_release_417(adf_ring_debug_fops_group1, adf_ring_debug_fops_group2);
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26265;
  case 1: ;
  if (ldv_state_variable_4 == 2) {
    seq_read(adf_ring_debug_fops_group2, ldvarg19, ldvarg18, ldvarg17);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_26265;
  case 2: ;
  if (ldv_state_variable_4 == 2) {
    seq_lseek(adf_ring_debug_fops_group2, ldvarg16, ldvarg15);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_26265;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_7 = adf_ring_open(adf_ring_debug_fops_group1, adf_ring_debug_fops_group2);
    if (ldv_retval_7 == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26265;
  default:
  ldv_stop();
  }
  ldv_26265: ;
  return;
}
}
void ldv_main_exported_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    ldv_retval_1 = adf_bank_start(adf_bank_sops_group1, adf_bank_sops_group3);
    if ((unsigned long )ldv_retval_1 == (unsigned long )((void *)0)) {
      ldv_state_variable_3 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_1 != (unsigned long )((void *)0)) {
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26274;
  case 1: ;
  if (ldv_state_variable_3 == 3) {
    adf_bank_stop(adf_bank_sops_group1, adf_bank_sops_group2);
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    adf_bank_stop(adf_bank_sops_group1, adf_bank_sops_group2);
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26274;
  case 2: ;
  if (ldv_state_variable_3 == 3) {
    adf_bank_show(adf_bank_sops_group1, (void *)adf_bank_sops_group3);
    ldv_state_variable_3 = 3;
  } else {
  }
  goto ldv_26274;
  case 3: ;
  if (ldv_state_variable_3 == 3) {
    ldv_retval_0 = adf_bank_next(adf_bank_sops_group1, adf_bank_sops_group2, adf_bank_sops_group3);
    if ((unsigned long )ldv_retval_0 == (unsigned long )((void *)0)) {
      ldv_state_variable_3 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_0 != (unsigned long )((void *)0)) {
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26274;
  default:
  ldv_stop();
  }
  ldv_26274: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  loff_t ldvarg6 ;
  int ldvarg5 ;
  char *ldvarg9 ;
  void *tmp ;
  loff_t *ldvarg7 ;
  void *tmp___0 ;
  size_t ldvarg8 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg7 = (loff_t *)tmp___0;
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_2 == 2) {
    ldv_seq_release_418(adf_bank_debug_fops_group1, adf_bank_debug_fops_group2);
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26288;
  case 1: ;
  if (ldv_state_variable_2 == 2) {
    seq_read(adf_bank_debug_fops_group2, ldvarg9, ldvarg8, ldvarg7);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_26288;
  case 2: ;
  if (ldv_state_variable_2 == 2) {
    seq_lseek(adf_bank_debug_fops_group2, ldvarg6, ldvarg5);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_26288;
  case 3: ;
  if (ldv_state_variable_2 == 1) {
    ldv_retval_5 = adf_bank_open(adf_bank_debug_fops_group1, adf_bank_debug_fops_group2);
    if (ldv_retval_5 == 0) {
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26288;
  default:
  ldv_stop();
  }
  ldv_26288: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_10 = adf_ring_start(adf_ring_sops_group1, adf_ring_sops_group3);
    if ((unsigned long )ldv_retval_10 != (unsigned long )((void *)0)) {
      ldv_state_variable_5 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_10 == (unsigned long )((void *)0)) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26297;
  case 1: ;
  if (ldv_state_variable_5 == 3) {
    adf_ring_stop(adf_ring_sops_group1, adf_ring_sops_group2);
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    adf_ring_stop(adf_ring_sops_group1, adf_ring_sops_group2);
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_26297;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    adf_ring_show(adf_ring_sops_group1, (void *)adf_ring_sops_group3);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_26297;
  case 3: ;
  if (ldv_state_variable_5 == 2) {
    ldv_retval_9 = adf_ring_next(adf_ring_sops_group1, adf_ring_sops_group2, adf_ring_sops_group3);
    if ((unsigned long )ldv_retval_9 != (unsigned long )((void *)0)) {
      ldv_state_variable_5 = 3;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    if ((unsigned long )ldv_retval_9 == (unsigned long )((void *)0)) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_26297;
  default:
  ldv_stop();
  }
  ldv_26297: ;
  return;
}
}
bool ldv_queue_work_on_402(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_403(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_404(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_405(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_406(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_seq_open_415(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_3 = 1;
    ldv_seq_operations_3();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_seq_open_416(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_3 = 1;
    ldv_seq_operations_3();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_seq_release_417(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_release(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 0;
  return (ldv_func_res);
}
}
int ldv_seq_release_418(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = seq_release(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 0;
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  return ldv_malloc(sizeof(struct class));
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *__kmalloc(size_t arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  return;
}
void class_destroy(struct class *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
struct crypto_shash *crypto_alloc_shash(const char *arg0, u32 arg1, u32 arg2) {
  return ldv_malloc(sizeof(struct crypto_shash));
}
int __VERIFIER_nondet_int(void);
int crypto_authenc_extractkeys(struct crypto_authenc_keys *arg0, const u8 *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void crypto_destroy_tfm(void *arg0, struct crypto_tfm *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int crypto_get_default_rng() {
  return __VERIFIER_nondet_int();
}
void crypto_put_default_rng() {
  return;
}
int __VERIFIER_nondet_int(void);
int crypto_register_algs(struct crypto_alg *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int crypto_shash_digest(struct shash_desc *arg0, const u8 *arg1, unsigned int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int crypto_shash_update(struct shash_desc *arg0, const u8 *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int crypto_unregister_algs(struct crypto_alg *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
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
void debugfs_remove(struct dentry *arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int kstrtouint(const char *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_open_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_7() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_6() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void memzero_explicit(void *arg0, size_t arg1) {
  return;
}
void module_put(struct module *arg0) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_destroy(struct mutex *arg0) {
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
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
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
int pci_wait_for_pending_transaction(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
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
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
struct list_head *seq_list_next(void *arg0, struct list_head *arg1, loff_t *arg2) {
  return ldv_malloc(sizeof(struct list_head));
}
struct list_head *seq_list_start(struct list_head *arg0, loff_t arg1) {
  return ldv_malloc(sizeof(struct list_head));
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sg_nents(struct scatterlist *arg0) {
  return __VERIFIER_nondet_int();
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
