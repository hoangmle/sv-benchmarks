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
typedef unsigned long ulong;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct execute_work {
   struct work_struct work ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct scsi_cmnd;
struct Scsi_Host;
struct scsi_device;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_224 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_223 {
   struct __anonstruct____missing_field_name_224 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_223 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_226 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_225 {
   struct __anonstruct____missing_field_name_226 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_225 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_227 {
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
   union __anonunion_d_u_227 d_u ;
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
struct __anonstruct____missing_field_name_231 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_230 __annonCompField64 ;
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
union __anonunion____missing_field_name_234 {
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
   union __anonunion____missing_field_name_234 __annonCompField65 ;
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
struct __anonstruct_kprojid_t_235 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_235 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_236 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_236 __annonCompField66 ;
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
union __anonunion____missing_field_name_239 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_240 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_241 {
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
   union __anonunion____missing_field_name_239 __annonCompField67 ;
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
   union __anonunion____missing_field_name_240 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_241 __annonCompField69 ;
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
union __anonunion_f_u_242 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_242 f_u ;
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
struct __anonstruct_afs_244 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_243 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_244 afs ;
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
   union __anonunion_fl_u_243 fl_u ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct __anonstruct_IPS_IO_CMD_267 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t log_drv ;
   uint8_t sg_count ;
   uint32_t lba ;
   uint32_t sg_addr ;
   uint16_t sector_count ;
   uint8_t segment_4G ;
   uint8_t enhanced_sg ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_IO_CMD_267 IPS_IO_CMD;
struct __anonstruct_IPS_LD_CMD_269 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint16_t reserved ;
   uint32_t reserved2 ;
   uint32_t buffer_addr ;
   uint32_t reserved3 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_LD_CMD_269 IPS_LD_CMD;
struct __anonstruct_IPS_IOCTL_CMD_271 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t reserved ;
   uint8_t reserved2 ;
   uint32_t reserved3 ;
   uint32_t buffer_addr ;
   uint32_t reserved4 ;
};
typedef struct __anonstruct_IPS_IOCTL_CMD_271 IPS_IOCTL_CMD;
struct __anonstruct_IPS_RESET_CMD_273 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t channel ;
   uint8_t reserved3 ;
   uint8_t reserved4 ;
   uint8_t reserved5 ;
   uint8_t reserved6 ;
   uint8_t reserved7 ;
   uint8_t reserved8 ;
   uint8_t reserved9 ;
   uint8_t reserved10 ;
   uint8_t reserved11 ;
   uint8_t reserved12 ;
   uint8_t reserved13 ;
   uint8_t reserved14 ;
   uint8_t adapter_flag ;
};
typedef struct __anonstruct_IPS_RESET_CMD_273 IPS_RESET_CMD;
struct __anonstruct_IPS_DCDB_CMD_275 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint16_t reserved ;
   uint32_t reserved2 ;
   uint32_t dcdb_address ;
   uint16_t reserved3 ;
   uint8_t segment_4G ;
   uint8_t enhanced_sg ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_DCDB_CMD_275 IPS_DCDB_CMD;
struct __anonstruct_IPS_CS_CMD_277 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t channel ;
   uint8_t source_target ;
   uint32_t reserved ;
   uint32_t reserved2 ;
   uint32_t reserved3 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_CS_CMD_277 IPS_CS_CMD;
struct __anonstruct_IPS_US_CMD_279 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t log_drv ;
   uint8_t control ;
   uint32_t reserved ;
   uint32_t reserved2 ;
   uint32_t reserved3 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_US_CMD_279 IPS_US_CMD;
struct __anonstruct_IPS_FC_CMD_281 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t reserved ;
   uint8_t state ;
   uint32_t reserved2 ;
   uint32_t reserved3 ;
   uint32_t reserved4 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_FC_CMD_281 IPS_FC_CMD;
struct __anonstruct_IPS_STATUS_CMD_283 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t reserved ;
   uint8_t desc ;
   uint32_t reserved2 ;
   uint32_t buffer_addr ;
   uint32_t reserved3 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_STATUS_CMD_283 IPS_STATUS_CMD;
struct __anonstruct_IPS_NVRAM_CMD_285 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t page ;
   uint8_t write ;
   uint32_t reserved ;
   uint32_t buffer_addr ;
   uint32_t reserved2 ;
   uint32_t ccsar ;
   uint32_t cccr ;
};
typedef struct __anonstruct_IPS_NVRAM_CMD_285 IPS_NVRAM_CMD;
struct __anonstruct_IPS_VERSION_INFO_287 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint16_t reserved ;
   uint32_t count ;
   uint32_t buffer_addr ;
   uint32_t reserved2 ;
};
typedef struct __anonstruct_IPS_VERSION_INFO_287 IPS_VERSION_INFO;
struct __anonstruct_IPS_FFDC_CMD_289 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t reset_count ;
   uint8_t reset_type ;
   uint8_t second ;
   uint8_t minute ;
   uint8_t hour ;
   uint8_t day ;
   uint8_t reserved1[4U] ;
   uint8_t month ;
   uint8_t yearH ;
   uint8_t yearL ;
   uint8_t reserved2 ;
};
typedef struct __anonstruct_IPS_FFDC_CMD_289 IPS_FFDC_CMD;
struct __anonstruct_IPS_FLASHFW_CMD_291 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t type ;
   uint8_t direction ;
   uint32_t count ;
   uint32_t buffer_addr ;
   uint8_t total_packets ;
   uint8_t packet_num ;
   uint16_t reserved ;
};
typedef struct __anonstruct_IPS_FLASHFW_CMD_291 IPS_FLASHFW_CMD;
struct __anonstruct_IPS_FLASHBIOS_CMD_293 {
   uint8_t op_code ;
   uint8_t command_id ;
   uint8_t type ;
   uint8_t direction ;
   uint32_t count ;
   uint32_t buffer_addr ;
   uint32_t offset ;
};
typedef struct __anonstruct_IPS_FLASHBIOS_CMD_293 IPS_FLASHBIOS_CMD;
union __anonunion_IPS_HOST_COMMAND_295 {
   IPS_IO_CMD basic_io ;
   IPS_LD_CMD logical_info ;
   IPS_IOCTL_CMD ioctl_info ;
   IPS_DCDB_CMD dcdb ;
   IPS_CS_CMD config_sync ;
   IPS_US_CMD unlock_stripe ;
   IPS_FC_CMD flush_cache ;
   IPS_STATUS_CMD status ;
   IPS_NVRAM_CMD nvram ;
   IPS_FFDC_CMD ffdc ;
   IPS_FLASHFW_CMD flashfw ;
   IPS_FLASHBIOS_CMD flashbios ;
   IPS_VERSION_INFO version_info ;
   IPS_RESET_CMD reset ;
};
typedef union __anonunion_IPS_HOST_COMMAND_295 IPS_HOST_COMMAND;
struct __anonstruct_IPS_DRIVE_INFO_297 {
   uint8_t logical_id ;
   uint8_t reserved ;
   uint8_t raid_level ;
   uint8_t state ;
   uint32_t sector_count ;
};
typedef struct __anonstruct_IPS_DRIVE_INFO_297 IPS_DRIVE_INFO;
struct __anonstruct_IPS_LD_INFO_299 {
   uint8_t no_of_log_drive ;
   uint8_t reserved[3U] ;
   IPS_DRIVE_INFO drive_info[8U] ;
};
typedef struct __anonstruct_IPS_LD_INFO_299 IPS_LD_INFO;
struct __anonstruct_IPS_DCDB_TABLE_301 {
   uint8_t device_address ;
   uint8_t cmd_attribute ;
   uint16_t transfer_length ;
   uint32_t buffer_pointer ;
   uint8_t cdb_length ;
   uint8_t sense_length ;
   uint8_t sg_count ;
   uint8_t reserved ;
   uint8_t scsi_cdb[12U] ;
   uint8_t sense_info[64U] ;
   uint8_t scsi_status ;
   uint8_t reserved2[3U] ;
};
typedef struct __anonstruct_IPS_DCDB_TABLE_301 IPS_DCDB_TABLE;
struct __anonstruct_IPS_DCDB_TABLE_TAPE_303 {
   uint8_t device_address ;
   uint8_t cmd_attribute ;
   uint8_t cdb_length ;
   uint8_t reserved_for_LUN ;
   uint32_t transfer_length ;
   uint32_t buffer_pointer ;
   uint16_t sg_count ;
   uint8_t sense_length ;
   uint8_t scsi_status ;
   uint32_t reserved ;
   uint8_t scsi_cdb[16U] ;
   uint8_t sense_info[56U] ;
};
typedef struct __anonstruct_IPS_DCDB_TABLE_TAPE_303 IPS_DCDB_TABLE_TAPE;
struct __anonstruct_fields_306 {
   uint8_t volatile reserved ;
   uint8_t volatile command_id ;
   uint8_t volatile basic_status ;
   uint8_t volatile extended_status ;
};
union __anonunion_IPS_STATUS_305 {
   struct __anonstruct_fields_306 fields ;
   uint32_t volatile value ;
};
typedef union __anonunion_IPS_STATUS_305 IPS_STATUS;
struct __anonstruct_fields_308 {
   uint8_t volatile reserved ;
   uint8_t volatile command_id ;
   uint8_t volatile basic_status ;
   uint8_t volatile extended_status ;
};
union __anonunion_PIPS_STATUS_307 {
   struct __anonstruct_fields_308 fields ;
   uint32_t volatile value ;
};
typedef union __anonunion_PIPS_STATUS_307 *PIPS_STATUS;
struct __anonstruct_IPS_ADAPTER_309 {
   IPS_STATUS status[129U] ;
   PIPS_STATUS p_status_start ;
   PIPS_STATUS p_status_end ;
   PIPS_STATUS p_status_tail ;
   uint32_t volatile hw_status_start ;
   uint32_t volatile hw_status_tail ;
};
typedef struct __anonstruct_IPS_ADAPTER_309 IPS_ADAPTER;
struct __anonstruct_IPS_ENQ_311 {
   uint8_t ucLogDriveCount ;
   uint8_t ucMiscFlag ;
   uint8_t ucSLTFlag ;
   uint8_t ucBSTFlag ;
   uint8_t ucPwrChgCnt ;
   uint8_t ucWrongAdrCnt ;
   uint8_t ucUnidentCnt ;
   uint8_t ucNVramDevChgCnt ;
   uint8_t CodeBlkVersion[8U] ;
   uint8_t BootBlkVersion[8U] ;
   uint32_t ulDriveSize[8U] ;
   uint8_t ucConcurrentCmdCount ;
   uint8_t ucMaxPhysicalDevices ;
   uint16_t usFlashRepgmCount ;
   uint8_t ucDefunctDiskCount ;
   uint8_t ucRebuildFlag ;
   uint8_t ucOfflineLogDrvCount ;
   uint8_t ucCriticalDrvCount ;
   uint16_t usConfigUpdateCount ;
   uint8_t ucBlkFlag ;
   uint8_t reserved ;
   uint16_t usAddrDeadDisk[64U] ;
};
typedef struct __anonstruct_IPS_ENQ_311 IPS_ENQ;
struct __anonstruct_IPS_DEVSTATE_313 {
   uint8_t ucInitiator ;
   uint8_t ucParameters ;
   uint8_t ucMiscFlag ;
   uint8_t ucState ;
   uint32_t ulBlockCount ;
   uint8_t ucDeviceId[28U] ;
};
typedef struct __anonstruct_IPS_DEVSTATE_313 IPS_DEVSTATE;
struct __anonstruct_IPS_CHUNK_315 {
   uint8_t ucChn ;
   uint8_t ucTgt ;
   uint16_t ucReserved ;
   uint32_t ulStartSect ;
   uint32_t ulNoOfSects ;
};
typedef struct __anonstruct_IPS_CHUNK_315 IPS_CHUNK;
struct __anonstruct_IPS_LD_317 {
   uint16_t ucUserField ;
   uint8_t ucState ;
   uint8_t ucRaidCacheParam ;
   uint8_t ucNoOfChunkUnits ;
   uint8_t ucStripeSize ;
   uint8_t ucParams ;
   uint8_t ucReserved ;
   uint32_t ulLogDrvSize ;
   IPS_CHUNK chunk[16U] ;
};
typedef struct __anonstruct_IPS_LD_317 IPS_LD;
struct __anonstruct_IPS_HARDWARE_319 {
   uint8_t board_disc[8U] ;
   uint8_t processor[8U] ;
   uint8_t ucNoChanType ;
   uint8_t ucNoHostIntType ;
   uint8_t ucCompression ;
   uint8_t ucNvramType ;
   uint32_t ulNvramSize ;
};
typedef struct __anonstruct_IPS_HARDWARE_319 IPS_HARDWARE;
struct __anonstruct_IPS_CONF_321 {
   uint8_t ucLogDriveCount ;
   uint8_t ucDateD ;
   uint8_t ucDateM ;
   uint8_t ucDateY ;
   uint8_t init_id[4U] ;
   uint8_t host_id[12U] ;
   uint8_t time_sign[8U] ;
   uint32_t UserOpt ;
   uint16_t user_field ;
   uint8_t ucRebuildRate ;
   uint8_t ucReserve ;
   IPS_HARDWARE hardware_disc ;
   IPS_LD logical_drive[8U] ;
   IPS_DEVSTATE dev[4U][16U] ;
   uint8_t reserved[512U] ;
};
typedef struct __anonstruct_IPS_CONF_321 IPS_CONF;
struct __anonstruct_IPS_NVRAM_P5_323 {
   uint32_t signature ;
   uint8_t reserved1 ;
   uint8_t adapter_slot ;
   uint16_t adapter_type ;
   uint8_t ctrl_bios[8U] ;
   uint8_t versioning ;
   uint8_t version_mismatch ;
   uint8_t reserved2 ;
   uint8_t operating_system ;
   uint8_t driver_high[4U] ;
   uint8_t driver_low[4U] ;
   uint8_t BiosCompatibilityID[8U] ;
   uint8_t ReservedForOS2[8U] ;
   uint8_t bios_high[4U] ;
   uint8_t bios_low[4U] ;
   uint8_t adapter_order[16U] ;
   uint8_t Filler[60U] ;
};
typedef struct __anonstruct_IPS_NVRAM_P5_323 IPS_NVRAM_P5;
struct _IPS_SUBSYS {
   uint32_t param[128U] ;
};
typedef struct _IPS_SUBSYS IPS_SUBSYS;
struct __anonstruct_IPS_SCSI_INQ_DATA_326 {
   uint8_t DeviceType ;
   uint8_t DeviceTypeQualifier ;
   uint8_t Version ;
   uint8_t ResponseDataFormat ;
   uint8_t AdditionalLength ;
   uint8_t Reserved ;
   uint8_t Flags[2U] ;
   uint8_t VendorId[8U] ;
   uint8_t ProductId[16U] ;
   uint8_t ProductRevisionLevel[4U] ;
   uint8_t Reserved2 ;
};
typedef struct __anonstruct_IPS_SCSI_INQ_DATA_326 IPS_SCSI_INQ_DATA;
struct __anonstruct_IPS_SCSI_CAPACITY_328 {
   uint32_t lba ;
   uint32_t len ;
};
typedef struct __anonstruct_IPS_SCSI_CAPACITY_328 IPS_SCSI_CAPACITY;
struct __anonstruct_IPS_SCSI_REQSEN_329 {
   uint8_t ResponseCode ;
   uint8_t SegmentNumber ;
   uint8_t Flags ;
   uint8_t Information[4U] ;
   uint8_t AdditionalLength ;
   uint8_t CommandSpecific[4U] ;
   uint8_t AdditionalSenseCode ;
   uint8_t AdditionalSenseCodeQual ;
   uint8_t FRUCode ;
   uint8_t SenseKeySpecific[3U] ;
};
typedef struct __anonstruct_IPS_SCSI_REQSEN_329 IPS_SCSI_REQSEN;
struct __anonstruct_IPS_SCSI_MODE_PAGE3_330 {
   uint8_t PageCode ;
   uint8_t PageLength ;
   uint16_t TracksPerZone ;
   uint16_t AltSectorsPerZone ;
   uint16_t AltTracksPerZone ;
   uint16_t AltTracksPerVolume ;
   uint16_t SectorsPerTrack ;
   uint16_t BytesPerSector ;
   uint16_t Interleave ;
   uint16_t TrackSkew ;
   uint16_t CylinderSkew ;
   uint8_t flags ;
   uint8_t reserved[3U] ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE3_330 IPS_SCSI_MODE_PAGE3;
struct __anonstruct_IPS_SCSI_MODE_PAGE4_331 {
   uint8_t PageCode ;
   uint8_t PageLength ;
   uint16_t CylindersHigh ;
   uint8_t CylindersLow ;
   uint8_t Heads ;
   uint16_t WritePrecompHigh ;
   uint8_t WritePrecompLow ;
   uint16_t ReducedWriteCurrentHigh ;
   uint8_t ReducedWriteCurrentLow ;
   uint16_t StepRate ;
   uint16_t LandingZoneHigh ;
   uint8_t LandingZoneLow ;
   uint8_t flags ;
   uint8_t RotationalOffset ;
   uint8_t Reserved ;
   uint16_t MediumRotationRate ;
   uint8_t Reserved2[2U] ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE4_331 IPS_SCSI_MODE_PAGE4;
struct __anonstruct_IPS_SCSI_MODE_PAGE8_332 {
   uint8_t PageCode ;
   uint8_t PageLength ;
   uint8_t flags ;
   uint8_t RetentPrio ;
   uint16_t DisPrefetchLen ;
   uint16_t MinPrefetchLen ;
   uint16_t MaxPrefetchLen ;
   uint16_t MaxPrefetchCeiling ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE8_332 IPS_SCSI_MODE_PAGE8;
struct __anonstruct_IPS_SCSI_MODE_PAGE_BLKDESC_333 {
   uint32_t NumberOfBlocks ;
   uint8_t DensityCode ;
   uint16_t BlockLengthHigh ;
   uint8_t BlockLengthLow ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE_BLKDESC_333 IPS_SCSI_MODE_PAGE_BLKDESC;
struct __anonstruct_IPS_SCSI_MODE_PAGE_HEADER_334 {
   uint8_t DataLength ;
   uint8_t MediumType ;
   uint8_t Reserved ;
   uint8_t BlockDescLength ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE_HEADER_334 IPS_SCSI_MODE_PAGE_HEADER;
union __anonunion_pdata_336 {
   IPS_SCSI_MODE_PAGE3 pg3 ;
   IPS_SCSI_MODE_PAGE4 pg4 ;
   IPS_SCSI_MODE_PAGE8 pg8 ;
};
struct __anonstruct_IPS_SCSI_MODE_PAGE_DATA_335 {
   IPS_SCSI_MODE_PAGE_HEADER hdr ;
   IPS_SCSI_MODE_PAGE_BLKDESC blkdesc ;
   union __anonunion_pdata_336 pdata ;
};
typedef struct __anonstruct_IPS_SCSI_MODE_PAGE_DATA_335 IPS_SCSI_MODE_PAGE_DATA;
struct ips_sglist {
   uint32_t address ;
   uint32_t length ;
};
typedef struct ips_sglist IPS_STD_SG_LIST;
struct ips_enh_sglist {
   uint32_t address_lo ;
   uint32_t address_hi ;
   uint32_t length ;
   uint32_t reserved ;
};
typedef struct ips_enh_sglist IPS_ENH_SG_LIST;
union __anonunion_IPS_SG_LIST_337 {
   void *list ;
   IPS_STD_SG_LIST *std_list ;
   IPS_ENH_SG_LIST *enh_list ;
};
typedef union __anonunion_IPS_SG_LIST_337 IPS_SG_LIST;
struct __anonstruct_IPS_OPTION_338 {
   char *option_name ;
   int *option_flag ;
   int option_value ;
};
typedef struct __anonstruct_IPS_OPTION_338 IPS_OPTION;
struct ips_stat {
   uint32_t residue_len ;
   void *scb_addr ;
   uint8_t padding[4U] ;
};
typedef struct ips_stat ips_stat_t;
struct ips_scb;
struct ips_scb_queue {
   struct ips_scb *head ;
   struct ips_scb *tail ;
   int count ;
};
typedef struct ips_scb_queue ips_scb_queue_t;
struct ips_wait_queue {
   struct scsi_cmnd *head ;
   struct scsi_cmnd *tail ;
   int count ;
};
typedef struct ips_wait_queue ips_wait_queue_t;
struct ips_copp_wait_item {
   struct scsi_cmnd *scsi_cmd ;
   struct ips_copp_wait_item *next ;
};
typedef struct ips_copp_wait_item ips_copp_wait_item_t;
struct ips_copp_queue {
   struct ips_copp_wait_item *head ;
   struct ips_copp_wait_item *tail ;
   int count ;
};
typedef struct ips_copp_queue ips_copp_queue_t;
struct ips_ha;
struct __anonstruct_ips_hw_func_t_339 {
   int (*reset)(struct ips_ha * ) ;
   int (*issue)(struct ips_ha * , struct ips_scb * ) ;
   int (*isinit)(struct ips_ha * ) ;
   int (*isintr)(struct ips_ha * ) ;
   int (*init)(struct ips_ha * ) ;
   int (*erasebios)(struct ips_ha * ) ;
   int (*programbios)(struct ips_ha * , char * , uint32_t , uint32_t ) ;
   int (*verifybios)(struct ips_ha * , char * , uint32_t , uint32_t ) ;
   void (*statinit)(struct ips_ha * ) ;
   int (*intr)(struct ips_ha * ) ;
   void (*enableint)(struct ips_ha * ) ;
   uint32_t (*statupd)(struct ips_ha * ) ;
};
typedef struct __anonstruct_ips_hw_func_t_339 ips_hw_func_t;
struct ips_ha {
   uint8_t ha_id[5U] ;
   uint32_t dcdb_active[4U] ;
   uint32_t io_addr ;
   uint8_t ntargets ;
   uint8_t nbus ;
   uint8_t nlun ;
   uint16_t ad_type ;
   uint16_t host_num ;
   uint32_t max_xfer ;
   uint32_t max_cmds ;
   uint32_t num_ioctl ;
   ips_stat_t sp ;
   struct ips_scb *scbs ;
   struct ips_scb *scb_freelist ;
   ips_wait_queue_t scb_waitlist ;
   ips_copp_queue_t copp_waitlist ;
   ips_scb_queue_t scb_activelist ;
   IPS_IO_CMD *dummy ;
   IPS_ADAPTER *adapt ;
   IPS_LD_INFO *logical_drive_info ;
   dma_addr_t logical_drive_info_dma_addr ;
   IPS_ENQ *enq ;
   IPS_CONF *conf ;
   IPS_NVRAM_P5 *nvram ;
   IPS_SUBSYS *subsys ;
   char *ioctl_data ;
   uint32_t ioctl_datasize ;
   uint32_t cmd_in_progress ;
   int flags ;
   uint8_t waitflag ;
   uint8_t active ;
   int ioctl_reset ;
   uint16_t reset_count ;
   time_t last_ffdc ;
   uint8_t slot_num ;
   int ioctl_len ;
   dma_addr_t ioctl_busaddr ;
   uint8_t bios_version[8U] ;
   uint32_t mem_addr ;
   uint32_t io_len ;
   uint32_t mem_len ;
   char *mem_ptr ;
   char *ioremap_ptr ;
   ips_hw_func_t func ;
   struct pci_dev *pcidev ;
   char *flash_data ;
   int flash_len ;
   u32 flash_datasize ;
   dma_addr_t flash_busaddr ;
   dma_addr_t enq_busaddr ;
   uint8_t requires_esl ;
};
typedef struct ips_ha ips_ha_t;
struct ips_scb {
   IPS_HOST_COMMAND cmd ;
   IPS_DCDB_TABLE dcdb ;
   uint8_t target_id ;
   uint8_t bus ;
   uint8_t lun ;
   uint8_t cdb[12U] ;
   uint32_t scb_busaddr ;
   uint32_t old_data_busaddr ;
   uint32_t timeout ;
   uint8_t basic_status ;
   uint8_t extended_status ;
   uint8_t breakup ;
   uint8_t sg_break ;
   uint32_t data_len ;
   uint32_t sg_len ;
   uint32_t flags ;
   uint32_t op_code ;
   IPS_SG_LIST sg_list ;
   struct scsi_cmnd *scsi_cmd ;
   struct ips_scb *q_next ;
   void (*callback)(ips_ha_t * , struct ips_scb * ) ;
   uint32_t sg_busaddr ;
   int sg_count ;
   dma_addr_t data_busaddr ;
};
typedef struct ips_scb ips_scb_t;
struct ips_scb_pt {
   IPS_HOST_COMMAND cmd ;
   IPS_DCDB_TABLE dcdb ;
   uint8_t target_id ;
   uint8_t bus ;
   uint8_t lun ;
   uint8_t cdb[12U] ;
   uint32_t scb_busaddr ;
   uint32_t data_busaddr ;
   uint32_t timeout ;
   uint8_t basic_status ;
   uint8_t extended_status ;
   uint16_t breakup ;
   uint32_t data_len ;
   uint32_t sg_len ;
   uint32_t flags ;
   uint32_t op_code ;
   IPS_SG_LIST *sg_list ;
   struct scsi_cmnd *scsi_cmd ;
   struct ips_scb *q_next ;
   void (*callback)(ips_ha_t * , struct ips_scb * ) ;
};
typedef struct ips_scb_pt ips_scb_pt_t;
struct __anonstruct_ips_passthru_t_340 {
   uint8_t CoppID[4U] ;
   uint32_t CoppCmd ;
   uint32_t PtBuffer ;
   uint8_t *CmdBuffer ;
   uint32_t CmdBSize ;
   ips_scb_pt_t CoppCP ;
   uint32_t TimeOut ;
   uint8_t BasicStatus ;
   uint8_t ExtendedStatus ;
   uint8_t AdapterType ;
   uint8_t reserved ;
};
typedef struct __anonstruct_ips_passthru_t_340 ips_passthru_t;
typedef int ldv_func_ret_type___2;
typedef struct Scsi_Host *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
__inline static long ldv__builtin_expect(long exp , long c ) ;
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
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
__inline static void le32_add_cpu(__le32 *var , u32 val )
{
  {
  *var = *var + val;
  return;
}
}
extern int printk(char const * , ...) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
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
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3233;
  default:
  __bad_percpu_size();
  }
  ldv_3233: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcat(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern int strncasecmp(char const * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
extern char *strsep(char ** , char const * ) ;
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
    ldv_4964: ;
    goto ldv_4964;
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
    ldv_4974: ;
    goto ldv_4974;
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
    ldv_4983: ;
    goto ldv_4983;
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
  goto ldv_6163;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6163;
  default:
  __bad_percpu_size();
  }
  ldv_6163: ;
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
  goto ldv_6175;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6175;
  default:
  __bad_percpu_size();
  }
  ldv_6175: ;
  return;
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
extern void do_gettimeofday(struct timeval * ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
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
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
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
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outw(unsigned short value , int port )
{
  {
  __asm__ volatile ("outw %w0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("outl %0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port )
{
  unsigned int value ;
  {
  __asm__ volatile ("inl %w1, %0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
int ldv_irq_line_2_2 ;
void *ldv_irq_data_1_1 ;
int pci_counter ;
int ldv_irq_1_0 = 0;
struct scsi_cmnd *ips_driver_template_group0 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_irq_line_2_1 ;
int ldv_state_variable_2 ;
int ldv_irq_2_0 = 0;
void *ldv_irq_data_1_3 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct Scsi_Host *ips_driver_template_group1 ;
struct scsi_device *ips_driver_template_group2 ;
int ldv_irq_2_3 = 0;
void *ldv_irq_data_2_3 ;
int ldv_irq_line_1_3 ;
int ldv_irq_2_2 = 0;
int ldv_irq_line_2_0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct pci_dev *ips_pci_driver_group1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
int ldv_irq_line_2_3 ;
int ldv_irq_2_1 = 0;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void ldv_initialize_scsi_host_template_5(void) ;
void ldv_pci_driver_4(void) ;
int ldv_irq_2(int state , int line , void *data ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
extern void __const_udelay(unsigned long ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
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
extern void dev_printk(char const * , struct device const * , char const *
                       , ...) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_31(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_32(struct pci_driver *ldv_func_arg1 ) ;
void ldv_pci_unregister_driver_33(struct pci_driver *ldv_func_arg1 ) ;
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
    ldv_25684: ;
    goto ldv_25684;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (124), "i" (12UL));
    ldv_25685: ;
    goto ldv_25685;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern size_t sg_copy_from_buffer(struct scatterlist * , unsigned int , void const * ,
                                  size_t ) ;
extern size_t sg_copy_to_buffer(struct scatterlist * , unsigned int , void * , size_t ) ;
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
    ldv_26454: ;
    goto ldv_26454;
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
    ldv_26463: ;
    goto ldv_26463;
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
extern int dma_set_mask(struct device * , u64 ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
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
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
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
__inline static int ldv_request_irq_29(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_34(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_28(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_30(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_35(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_36(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_37(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
__inline static unsigned int sdev_channel(struct scsi_device *sdev )
{
  {
  return (sdev->channel);
}
}
__inline static unsigned int sdev_id(struct scsi_device *sdev )
{
  {
  return (sdev->id);
}
}
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
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_27(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_24(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_25(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_24(host, dev, dev);
  return (tmp);
}
}
extern void touch_nmi_watchdog(void) ;
static int ips_biosparam(struct scsi_device *sdev , struct block_device *bdev , sector_t capacity ,
                         int *geom ) ;
static int ips_slave_configure(struct scsi_device *SDptr ) ;
static char *ips = (char *)0;
static int ips_detect(struct scsi_host_template *SHT ) ;
static int ips_release(struct Scsi_Host *sh ) ;
static int ips_eh_abort(struct scsi_cmnd *SC ) ;
static int ips_eh_reset(struct scsi_cmnd *SC ) ;
static int ips_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd ) ;
static char const *ips_info(struct Scsi_Host *SH ) ;
static irqreturn_t do_ipsintr(int irq , void *dev_id ) ;
static int ips_hainit(ips_ha_t *ha ) ;
static int ips_map_status(ips_ha_t *ha , ips_scb_t *scb , ips_stat_t *sp ) ;
static int ips_send_wait(ips_ha_t *ha , ips_scb_t *scb , int timeout , int intr ) ;
static int ips_send_cmd(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_online(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_inquiry(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_rdcap(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_msense(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_reqsen(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_deallocatescbs(ips_ha_t *ha , int cmds ) ;
static int ips_allocatescbs(ips_ha_t *ha ) ;
static int ips_reset_copperhead(ips_ha_t *ha ) ;
static int ips_reset_copperhead_memio(ips_ha_t *ha ) ;
static int ips_reset_morpheus(ips_ha_t *ha ) ;
static int ips_issue_copperhead(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_issue_copperhead_memio(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_issue_i2o(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_issue_i2o_memio(ips_ha_t *ha , ips_scb_t *scb ) ;
static int ips_isintr_copperhead(ips_ha_t *ha ) ;
static int ips_isintr_copperhead_memio(ips_ha_t *ha ) ;
static int ips_isintr_morpheus(ips_ha_t *ha ) ;
static int ips_wait(ips_ha_t *ha , int time , int intr ) ;
static int ips_write_driver_status(ips_ha_t *ha , int intr ) ;
static int ips_read_adapter_status(ips_ha_t *ha , int intr ) ;
static int ips_read_subsystem_parameters(ips_ha_t *ha , int intr ) ;
static int ips_read_config(ips_ha_t *ha , int intr ) ;
static int ips_clear_adapter(ips_ha_t *ha , int intr ) ;
static int ips_readwrite_page5(ips_ha_t *ha , int write , int intr ) ;
static int ips_init_copperhead(ips_ha_t *ha ) ;
static int ips_init_copperhead_memio(ips_ha_t *ha ) ;
static int ips_init_morpheus(ips_ha_t *ha ) ;
static int ips_isinit_copperhead(ips_ha_t *ha ) ;
static int ips_isinit_copperhead_memio(ips_ha_t *ha ) ;
static int ips_isinit_morpheus(ips_ha_t *ha ) ;
static int ips_erase_bios(ips_ha_t *ha ) ;
static int ips_program_bios(ips_ha_t *ha , char *buffer , uint32_t buffersize , uint32_t offset ) ;
static int ips_verify_bios(ips_ha_t *ha , char *buffer , uint32_t buffersize , uint32_t offset ) ;
static int ips_erase_bios_memio(ips_ha_t *ha ) ;
static int ips_program_bios_memio(ips_ha_t *ha , char *buffer , uint32_t buffersize ,
                                  uint32_t offset ) ;
static int ips_verify_bios_memio(ips_ha_t *ha , char *buffer , uint32_t buffersize ,
                                 uint32_t offset ) ;
static int ips_flash_copperhead(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb ) ;
static int ips_flash_bios(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb ) ;
static int ips_flash_firmware(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb ) ;
static void ips_free_flash_copperhead(ips_ha_t *ha ) ;
static void ips_get_bios_version(ips_ha_t *ha , int intr ) ;
static void ips_identify_controller(ips_ha_t *ha ) ;
static void ips_chkstatus(ips_ha_t *ha , IPS_STATUS *pstatus ) ;
static void ips_enable_int_copperhead(ips_ha_t *ha ) ;
static void ips_enable_int_copperhead_memio(ips_ha_t *ha ) ;
static void ips_enable_int_morpheus(ips_ha_t *ha ) ;
static int ips_intr_copperhead(ips_ha_t *ha ) ;
static int ips_intr_morpheus(ips_ha_t *ha ) ;
static void ips_next(ips_ha_t *ha , int intr ) ;
static void ipsintr_blocking(ips_ha_t *ha , struct ips_scb *scb ) ;
static void ipsintr_done(ips_ha_t *ha , struct ips_scb *scb ) ;
static void ips_done(ips_ha_t *ha , ips_scb_t *scb ) ;
static void ips_free(ips_ha_t *ha ) ;
static void ips_init_scb(ips_ha_t *ha , ips_scb_t *scb ) ;
static void ips_freescb(ips_ha_t *ha , ips_scb_t *scb ) ;
static void ips_setup_funclist(ips_ha_t *ha ) ;
static void ips_statinit(ips_ha_t *ha ) ;
static void ips_statinit_memio(ips_ha_t *ha ) ;
static void ips_fix_ffdc_time(ips_ha_t *ha , ips_scb_t *scb , time_t current_time ) ;
static void ips_ffdc_reset(ips_ha_t *ha , int intr ) ;
static void ips_ffdc_time(ips_ha_t *ha ) ;
static uint32_t ips_statupd_copperhead(ips_ha_t *ha ) ;
static uint32_t ips_statupd_copperhead_memio(ips_ha_t *ha ) ;
static uint32_t ips_statupd_morpheus(ips_ha_t *ha ) ;
static ips_scb_t *ips_getscb(ips_ha_t *ha ) ;
static void ips_putq_scb_head(ips_scb_queue_t *queue , ips_scb_t *item ) ;
static void ips_putq_wait_tail(ips_wait_queue_t *queue , struct scsi_cmnd *item ) ;
static void ips_putq_copp_tail(ips_copp_queue_t *queue , ips_copp_wait_item_t *item ) ;
static ips_scb_t *ips_removeq_scb_head(ips_scb_queue_t *queue ) ;
static ips_scb_t *ips_removeq_scb(ips_scb_queue_t *queue , ips_scb_t *item ) ;
static struct scsi_cmnd *ips_removeq_wait_head(ips_wait_queue_t *queue ) ;
static struct scsi_cmnd *ips_removeq_wait(ips_wait_queue_t *queue , struct scsi_cmnd *item ) ;
static ips_copp_wait_item_t *ips_removeq_copp(ips_copp_queue_t *queue , ips_copp_wait_item_t *item ) ;
static ips_copp_wait_item_t *ips_removeq_copp_head(ips_copp_queue_t *queue ) ;
static int ips_is_passthru(struct scsi_cmnd *SC ) ;
static int ips_make_passthru(ips_ha_t *ha , struct scsi_cmnd *SC , ips_scb_t *scb ,
                             int intr ) ;
static int ips_usrcmd(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb ) ;
static void ips_cleanup_passthru(ips_ha_t *ha , ips_scb_t *scb ) ;
static void ips_scmd_buf_write(struct scsi_cmnd *scmd , void *data , unsigned int count ) ;
static void ips_scmd_buf_read(struct scsi_cmnd *scmd , void *data , unsigned int count ) ;
static int ips_write_info(struct Scsi_Host *host , char *buffer , int length ) ;
static int ips_show_info(struct seq_file *m , struct Scsi_Host *host ) ;
static int ips_host_info(ips_ha_t *ha , struct seq_file *m ) ;
static int ips_abort_init(ips_ha_t *ha , int index ) ;
static int ips_init_phase2(int index ) ;
static int ips_init_phase1(struct pci_dev *pci_dev , int *indexPtr ) ;
static int ips_register_scsi(int index ) ;
static int ips_poll_for_flush_complete(ips_ha_t *ha ) ;
static void ips_flush_and_reset(ips_ha_t *ha ) ;
static char const ips_name[4U] = { 'i', 'p', 's', '\000'};
static struct Scsi_Host *ips_sh[16U] ;
static ips_ha_t *ips_ha[16U] ;
static unsigned int ips_next_controller ;
static unsigned int ips_num_controllers ;
static unsigned int ips_released_controllers ;
static int ips_hotplug ;
static int ips_cmd_timeout = 60;
static int ips_reset_timeout = 300;
static int ips_force_memio = 1;
static int ips_force_i2o = 1;
static int ips_ioctlsize = 8192;
static int ips_cd_boot ;
static char *ips_FlashData = (char *)0;
static dma_addr_t ips_flashbusaddr ;
static long ips_FlashDataInUse ;
static uint32_t MaxLiteCmds = 32U;
static struct scsi_host_template ips_driver_template =
     {0, 0, & ips_detect, & ips_release, & ips_info, 0, 0, & ips_queue, & ips_eh_abort,
    0, 0, 0, & ips_eh_reset, 0, & ips_slave_configure, 0, 0, 0, 0, 0, 0, & ips_biosparam,
    0, & ips_show_info, & ips_write_info, 0, 0, "ips", 0, 0, -1, 17U, (unsigned short)0,
    0U, 0UL, 3, (unsigned char)0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
    0U, 0, 0, {0, 0}, 0ULL, 0U, 0, (_Bool)0};
static struct pci_device_id ips_pci_table[4U] = { {4116U, 46U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4116U, 445U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {36869U, 592U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__ips_pci_table_device_table[4U] ;
static char ips_hot_plug_name[4U] = { 'i', 'p', 's', '\000'};
static int ips_insert_device(struct pci_dev *pci_dev , struct pci_device_id const *ent ) ;
static void ips_remove_device(struct pci_dev *pci_dev ) ;
static struct pci_driver ips_pci_driver =
     {{0, 0}, (char const *)(& ips_hot_plug_name), (struct pci_device_id const *)(& ips_pci_table),
    & ips_insert_device, & ips_remove_device, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                    0, 0, 0, 0, 0,
                                                                    0, 0, 0, 0, 0,
                                                                    0}, {{{{{{0}},
                                                                            0U, 0U,
                                                                            0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                         {0, 0}}};
static int ips_halt(struct notifier_block *nb , ulong event , void *buf ) ;
static char ips_adapter_name[18U][30U] =
  { { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', 'I', 'I',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', 'o', 'n',
            ' ', 'm', 'o', 't',
            'h', 'e', 'r', 'b',
            'o', 'a', 'r', 'd',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', 'o', 'n',
            ' ', 'm', 'o', 't',
            'h', 'e', 'r', 'b',
            'o', 'a', 'r', 'd',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '3', 'H',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '3', 'L',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '4', 'H',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '4', 'M',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '4', 'L',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '4', 'M',
            'x', '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '4', 'L',
            'x', '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '5', 'i',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '5', 'i',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '6', 'M',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '6', 'i',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '7', 't',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '7', 'k',
            '\000'},
   { 'S', 'e', 'r', 'v',
            'e', 'R', 'A', 'I',
            'D', ' ', '7', 'M',
            '\000'}};
static struct notifier_block ips_notifier = {& ips_halt, (struct notifier_block *)0, 0};
static char ips_command_direction[255U] =
  { 0, 0, 1, 1,
        2, 1, 1, 2,
        1, 0, 2, 2,
        0, 0, 0, 1,
        0, 0, 1, 2,
        1, 2, 0, 0,
        2, 0, 1, 0,
        1, 2, 0, 0,
        1, 0, 1, 0,
        2, 1, 0, 0,
        1, 1, 2, 0,
        0, 1, 2, 2,
        2, 2, 2, 0,
        1, 0, 0, 1,
        2, 2, 2, 2,
        1, 2, 1, 2,
        2, 2, 1, 1,
        1, 0, 0, 0,
        0, 0, 0, 0,
        2, 1, 0, 0,
        0, 0, 0, 0,
        0, 2, 0, 0,
        0, 0, 1, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        1, 0, 2, 0,
        0, 0, 2, 2,
        2, 2, 2, 0,
        0, 1, 2, 1,
        1, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 2, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0};
static int ips_setup(char *ips_str )
{
  int i ;
  char *key ;
  char *value ;
  IPS_OPTION options[5U] ;
  char *tmp ;
  unsigned long tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  {
  options[0].option_name = (char *)"noi2o";
  options[0].option_flag = & ips_force_i2o;
  options[0].option_value = 0;
  options[1].option_name = (char *)"nommap";
  options[1].option_flag = & ips_force_memio;
  options[1].option_value = 0;
  options[2].option_name = (char *)"ioctlsize";
  options[2].option_flag = & ips_ioctlsize;
  options[2].option_value = 8192;
  options[3].option_name = (char *)"cdboot";
  options[3].option_flag = & ips_cd_boot;
  options[3].option_value = 0;
  options[4].option_name = (char *)"maxcmds";
  options[4].option_flag = (int *)(& MaxLiteCmds);
  options[4].option_value = 32;
  goto ldv_38348;
  ldv_38354: ;
  if ((int )((signed char )*key) == 0) {
    goto ldv_38348;
  } else {
  }
  value = strchr((char const *)key, 58);
  if ((unsigned long )value != (unsigned long )((char *)0)) {
    tmp = value;
    value = value + 1;
    *tmp = 0;
  } else {
  }
  i = 0;
  goto ldv_38353;
  ldv_38352:
  tmp___1 = strlen((char const *)options[i].option_name);
  tmp___2 = strncasecmp((char const *)key, (char const *)options[i].option_name,
                        tmp___1);
  if (tmp___2 == 0) {
    if ((unsigned long )value != (unsigned long )((char *)0)) {
      tmp___0 = simple_strtoul((char const *)value, (char **)0, 0U);
      *(options[i].option_flag) = (int )tmp___0;
    } else {
      *(options[i].option_flag) = options[i].option_value;
    }
    goto ldv_38351;
  } else {
  }
  i = i + 1;
  ldv_38353: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_38352;
  } else {
  }
  ldv_38351: ;
  ldv_38348:
  key = strsep(& ips_str, ",.");
  if ((unsigned long )key != (unsigned long )((char *)0)) {
    goto ldv_38354;
  } else {
  }
  return (1);
}
}
static int ips_detect(struct scsi_host_template *SHT )
{
  int i ;
  int tmp ;
  {
  if ((unsigned long )ips != (unsigned long )((char *)0)) {
    ips_setup(ips);
  } else {
  }
  i = 0;
  goto ldv_38361;
  ldv_38360:
  tmp = ips_register_scsi(i);
  if (tmp != 0) {
    ips_free(ips_ha[i]);
  } else {
  }
  ips_released_controllers = ips_released_controllers + 1U;
  i = i + 1;
  ldv_38361: ;
  if ((unsigned int )i < ips_num_controllers) {
    goto ldv_38360;
  } else {
  }
  ips_hotplug = 1;
  return ((int )ips_num_controllers);
}
}
static void ips_setup_funclist(ips_ha_t *ha )
{
  {
  if ((unsigned int )(ha->pcidev)->device == 445U || (unsigned int )(ha->pcidev)->device == 592U) {
    ha->func.isintr = & ips_isintr_morpheus;
    ha->func.isinit = & ips_isinit_morpheus;
    ha->func.issue = & ips_issue_i2o_memio;
    ha->func.init = & ips_init_morpheus;
    ha->func.statupd = & ips_statupd_morpheus;
    ha->func.reset = & ips_reset_morpheus;
    ha->func.intr = & ips_intr_morpheus;
    ha->func.enableint = & ips_enable_int_morpheus;
  } else
  if ((unsigned int )(ha->pcidev)->device == 445U || (((((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 14U) && (unsigned int )(ha->pcidev)->revision <= 16U) || (((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 4U) && (unsigned int )(ha->pcidev)->revision <= 13U)) && ips_force_memio != 0)) {
    ha->func.isintr = & ips_isintr_copperhead_memio;
    ha->func.isinit = & ips_isinit_copperhead_memio;
    ha->func.init = & ips_init_copperhead_memio;
    ha->func.statupd = & ips_statupd_copperhead_memio;
    ha->func.statinit = & ips_statinit_memio;
    ha->func.reset = & ips_reset_copperhead_memio;
    ha->func.intr = & ips_intr_copperhead;
    ha->func.erasebios = & ips_erase_bios_memio;
    ha->func.programbios = & ips_program_bios_memio;
    ha->func.verifybios = & ips_verify_bios_memio;
    ha->func.enableint = & ips_enable_int_copperhead_memio;
    if ((unsigned int )(ha->pcidev)->device == 445U || ((((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 14U) && (unsigned int )(ha->pcidev)->revision <= 16U) && ips_force_i2o != 0)) {
      ha->func.issue = & ips_issue_i2o_memio;
    } else {
      ha->func.issue = & ips_issue_copperhead_memio;
    }
  } else {
    ha->func.isintr = & ips_isintr_copperhead;
    ha->func.isinit = & ips_isinit_copperhead;
    ha->func.init = & ips_init_copperhead;
    ha->func.statupd = & ips_statupd_copperhead;
    ha->func.statinit = & ips_statinit;
    ha->func.reset = & ips_reset_copperhead;
    ha->func.intr = & ips_intr_copperhead;
    ha->func.erasebios = & ips_erase_bios;
    ha->func.programbios = & ips_program_bios;
    ha->func.verifybios = & ips_verify_bios;
    ha->func.enableint = & ips_enable_int_copperhead;
    if ((unsigned int )(ha->pcidev)->device == 445U || ((((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 14U) && (unsigned int )(ha->pcidev)->revision <= 16U) && ips_force_i2o != 0)) {
      ha->func.issue = & ips_issue_i2o;
    } else {
      ha->func.issue = & ips_issue_copperhead;
    }
  }
  return;
}
}
static int ips_release(struct Scsi_Host *sh )
{
  ips_scb_t *scb ;
  ips_ha_t *ha ;
  int i ;
  int tmp ;
  {
  ldv_scsi_remove_host_25(sh);
  i = 0;
  goto ldv_38373;
  ldv_38372:
  i = i + 1;
  ldv_38373: ;
  if (i <= 15 && (unsigned long )ips_sh[i] != (unsigned long )sh) {
    goto ldv_38372;
  } else {
  }
  if (i == 16) {
    printk("\f(%s) release, invalid Scsi_Host pointer.\n", (char const *)(& ips_name));
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3517/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ips.c"),
                         "i" (662), "i" (12UL));
    ldv_38375: ;
    goto ldv_38375;
    return (0);
  } else {
  }
  ha = (ips_ha_t *)(& sh->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 10U;
  scb->cmd.flush_cache.op_code = 10U;
  scb->cmd.flush_cache.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.flush_cache.state = 0U;
  scb->cmd.flush_cache.reserved = 0U;
  scb->cmd.flush_cache.reserved2 = 0U;
  scb->cmd.flush_cache.reserved3 = 0U;
  scb->cmd.flush_cache.reserved4 = 0U;
  dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Flushing Cache.\n");
  tmp = ips_send_wait(ha, scb, ips_cmd_timeout, 0);
  if (tmp == 4) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Incomplete Flush.\n");
  } else {
  }
  dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Flushing Complete.\n");
  ips_sh[i] = (struct Scsi_Host *)0;
  ips_ha[i] = (ips_ha_t *)0;
  ips_free(ha);
  ldv_free_irq_26((ha->pcidev)->irq, (void *)ha);
  scsi_host_put(sh);
  ips_released_controllers = ips_released_controllers + 1U;
  return (0);
}
}
static int ips_halt(struct notifier_block *nb , ulong event , void *buf )
{
  ips_scb_t *scb ;
  ips_ha_t *ha ;
  int i ;
  int tmp ;
  {
  if ((event != 1UL && event != 2UL) && event != 3UL) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_38386;
  ldv_38385:
  ha = ips_ha[i];
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    goto ldv_38384;
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    goto ldv_38384;
  } else {
  }
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 10U;
  scb->cmd.flush_cache.op_code = 10U;
  scb->cmd.flush_cache.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.flush_cache.state = 0U;
  scb->cmd.flush_cache.reserved = 0U;
  scb->cmd.flush_cache.reserved2 = 0U;
  scb->cmd.flush_cache.reserved3 = 0U;
  scb->cmd.flush_cache.reserved4 = 0U;
  dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Flushing Cache.\n");
  tmp = ips_send_wait(ha, scb, ips_cmd_timeout, 0);
  if (tmp == 4) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Incomplete Flush.\n");
  } else {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Flushing Complete.\n");
  }
  ldv_38384:
  i = i + 1;
  ldv_38386: ;
  if ((unsigned int )i < ips_next_controller) {
    goto ldv_38385;
  } else {
  }
  return (1);
}
}
static int ips_eh_abort(struct scsi_cmnd *SC )
{
  ips_ha_t *ha ;
  ips_copp_wait_item_t *item ;
  int ret ;
  struct Scsi_Host *host ;
  struct scsi_cmnd *tmp ;
  {
  if ((unsigned long )SC == (unsigned long )((struct scsi_cmnd *)0)) {
    return (8195);
  } else {
  }
  host = (SC->device)->host;
  ha = (ips_ha_t *)(& ((SC->device)->host)->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (8195);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (8195);
  } else {
  }
  spin_lock(host->host_lock);
  item = ha->copp_waitlist.head;
  goto ldv_38396;
  ldv_38395:
  item = item->next;
  ldv_38396: ;
  if ((unsigned long )item != (unsigned long )((ips_copp_wait_item_t *)0) && (unsigned long )item->scsi_cmd != (unsigned long )SC) {
    goto ldv_38395;
  } else {
  }
  if ((unsigned long )item != (unsigned long )((ips_copp_wait_item_t *)0)) {
    ips_removeq_copp(& ha->copp_waitlist, item);
    ret = 8194;
  } else {
    tmp = ips_removeq_wait(& ha->scb_waitlist, SC);
    if ((unsigned long )tmp != (unsigned long )((struct scsi_cmnd *)0)) {
      ret = 8194;
    } else {
      ret = 8195;
    }
  }
  spin_unlock(host->host_lock);
  return (ret);
}
}
static int __ips_eh_reset(struct scsi_cmnd *SC )
{
  int ret ;
  int i ;
  ips_ha_t *ha ;
  ips_scb_t *scb ;
  ips_copp_wait_item_t *item ;
  struct scsi_cmnd *tmp ;
  struct scsi_cmnd *scsi_cmd ;
  struct scsi_cmnd *scsi_cmd___0 ;
  int tmp___0 ;
  struct timeval tv ;
  {
  if ((unsigned long )SC == (unsigned long )((struct scsi_cmnd *)0)) {
    return (8195);
  } else {
  }
  ha = (ips_ha_t *)(& ((SC->device)->host)->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (8195);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (8195);
  } else {
  }
  item = ha->copp_waitlist.head;
  goto ldv_38407;
  ldv_38406:
  item = item->next;
  ldv_38407: ;
  if ((unsigned long )item != (unsigned long )((ips_copp_wait_item_t *)0) && (unsigned long )item->scsi_cmd != (unsigned long )SC) {
    goto ldv_38406;
  } else {
  }
  if ((unsigned long )item != (unsigned long )((ips_copp_wait_item_t *)0)) {
    ips_removeq_copp(& ha->copp_waitlist, item);
    return (8194);
  } else {
  }
  tmp = ips_removeq_wait(& ha->scb_waitlist, SC);
  if ((unsigned long )tmp != (unsigned long )((struct scsi_cmnd *)0)) {
    return (8194);
  } else {
  }
  if (ha->ioctl_reset == 0) {
    scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
    ips_init_scb(ha, scb);
    scb->timeout = (uint32_t )ips_cmd_timeout;
    scb->cdb[0] = 10U;
    scb->cmd.flush_cache.op_code = 10U;
    scb->cmd.flush_cache.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
    scb->cmd.flush_cache.state = 0U;
    scb->cmd.flush_cache.reserved = 0U;
    scb->cmd.flush_cache.reserved2 = 0U;
    scb->cmd.flush_cache.reserved3 = 0U;
    scb->cmd.flush_cache.reserved4 = 0U;
    ret = ips_send_wait(ha, scb, ips_cmd_timeout, 1);
    if (ret == 1) {
      dev_printk("\r", (struct device const *)(& (ha->pcidev)->dev), "Reset Request - Flushed Cache\n");
      return (8194);
    } else {
    }
  } else {
  }
  ha->ioctl_reset = 0;
  dev_printk("\r", (struct device const *)(& (ha->pcidev)->dev), "Resetting controller.\n");
  ret = (*(ha->func.reset))(ha);
  if (ret == 0) {
    dev_printk("\r", (struct device const *)(& (ha->pcidev)->dev), "Controller reset failed - controller now offline.\n");
    goto ldv_38411;
    ldv_38410:
    (scb->scsi_cmd)->result = 458752;
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
    ips_freescb(ha, scb);
    ldv_38411:
    scb = ips_removeq_scb_head(& ha->scb_activelist);
    if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
      goto ldv_38410;
    } else {
    }
    goto ldv_38414;
    ldv_38413:
    scsi_cmd->result = 7;
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    ldv_38414:
    scsi_cmd = ips_removeq_wait_head(& ha->scb_waitlist);
    if ((unsigned long )scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      goto ldv_38413;
    } else {
    }
    ha->active = 0U;
    return (8195);
  } else {
  }
  tmp___0 = ips_clear_adapter(ha, 1);
  if (tmp___0 == 0) {
    dev_printk("\r", (struct device const *)(& (ha->pcidev)->dev), "Controller reset failed - controller now offline.\n");
    goto ldv_38418;
    ldv_38417:
    (scb->scsi_cmd)->result = 458752;
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
    ips_freescb(ha, scb);
    ldv_38418:
    scb = ips_removeq_scb_head(& ha->scb_activelist);
    if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
      goto ldv_38417;
    } else {
    }
    goto ldv_38421;
    ldv_38420:
    scsi_cmd___0->result = 458752;
    (*(scsi_cmd___0->scsi_done))(scsi_cmd___0);
    ldv_38421:
    scsi_cmd___0 = ips_removeq_wait_head(& ha->scb_waitlist);
    if ((unsigned long )scsi_cmd___0 != (unsigned long )((struct scsi_cmnd *)0)) {
      goto ldv_38420;
    } else {
    }
    ha->active = 0U;
    return (8195);
  } else {
  }
  if (((ha->subsys)->param[3] & 3145728U) != 0U) {
    do_gettimeofday(& tv);
    ha->last_ffdc = tv.tv_sec;
    ha->reset_count = (uint16_t )((int )ha->reset_count + 1);
    ips_ffdc_reset(ha, 1);
  } else {
  }
  goto ldv_38425;
  ldv_38424:
  (scb->scsi_cmd)->result = 524288;
  (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  ips_freescb(ha, scb);
  ldv_38425:
  scb = ips_removeq_scb_head(& ha->scb_activelist);
  if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
    goto ldv_38424;
  } else {
  }
  i = 1;
  goto ldv_38428;
  ldv_38427:
  ha->dcdb_active[i + -1] = 0U;
  i = i + 1;
  ldv_38428: ;
  if ((int )ha->nbus > i) {
    goto ldv_38427;
  } else {
  }
  ha->num_ioctl = 0U;
  ips_next(ha, 1);
  return (8194);
}
}
static int ips_eh_reset(struct scsi_cmnd *SC )
{
  int rc ;
  {
  spin_lock_irq(((SC->device)->host)->host_lock);
  rc = __ips_eh_reset(SC);
  spin_unlock_irq(((SC->device)->host)->host_lock);
  return (rc);
}
}
static int ips_queue_lck(struct scsi_cmnd *SC , void (*done)(struct scsi_cmnd * ) )
{
  ips_ha_t *ha ;
  ips_passthru_t *pt ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  ips_copp_wait_item_t *scratch ;
  struct scatterlist *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  ha = (ips_ha_t *)(& ((SC->device)->host)->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (1);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (7);
  } else {
  }
  tmp = ips_is_passthru(SC);
  if (tmp != 0) {
    if (ha->copp_waitlist.count == 8) {
      SC->result = 131072;
      (*done)(SC);
      return (0);
    } else {
    }
  } else
  if (ha->scb_waitlist.count == 128) {
    SC->result = 131072;
    (*done)(SC);
    return (0);
  } else {
  }
  SC->scsi_done = done;
  tmp___0 = sdev_channel(SC->device);
  if (tmp___0 != 0U) {
    tmp___1 = sdev_id(SC->device);
    tmp___2 = sdev_channel(SC->device);
    if (tmp___1 == (unsigned int )ha->ha_id[tmp___2]) {
      SC->result = 65536;
      (*done)(SC);
      return (0);
    } else {
    }
  } else {
  }
  tmp___5 = ips_is_passthru(SC);
  if (tmp___5 != 0) {
    tmp___3 = scsi_sglist(SC);
    pt = (ips_passthru_t *)tmp___3;
    if ((unsigned int )pt->CoppCP.cmd.reset.op_code == 26U && (unsigned int )pt->CoppCP.cmd.reset.adapter_flag == 1U) {
      if (ha->scb_activelist.count != 0) {
        SC->result = 131072;
        (*done)(SC);
        return (0);
      } else {
      }
      ha->ioctl_reset = 1;
      __ips_eh_reset(SC);
      SC->result = 0;
      (*(SC->scsi_done))(SC);
      return (0);
    } else {
    }
    tmp___4 = kmalloc(16UL, 32U);
    scratch = (ips_copp_wait_item_t *)tmp___4;
    if ((unsigned long )scratch == (unsigned long )((ips_copp_wait_item_t *)0)) {
      SC->result = 458752;
      (*done)(SC);
      return (0);
    } else {
    }
    scratch->scsi_cmd = SC;
    scratch->next = (struct ips_copp_wait_item *)0;
    ips_putq_copp_tail(& ha->copp_waitlist, scratch);
  } else {
    ips_putq_wait_tail(& ha->scb_waitlist, SC);
  }
  ips_next(ha, 1);
  return (0);
}
}
static int ips_queue(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  {
  ldv_spin_lock();
  scsi_cmd_get_serial(shost, cmd);
  rc = ips_queue_lck(cmd, cmd->scsi_done);
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return (rc);
}
}
static int ips_biosparam(struct scsi_device *sdev , struct block_device *bdev , sector_t capacity ,
                         int *geom )
{
  ips_ha_t *ha ;
  int heads ;
  int sectors ;
  int cylinders ;
  int tmp ;
  {
  ha = (ips_ha_t *)(& (sdev->host)->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (0);
  } else {
  }
  tmp = ips_read_adapter_status(ha, 0);
  if (tmp == 0) {
    return (0);
  } else {
  }
  if (capacity > 4194304UL && ((int )(ha->enq)->ucMiscFlag & 8) == 0) {
    heads = 254;
    sectors = 63;
  } else {
    heads = 128;
    sectors = 32;
  }
  cylinders = (int )(capacity / (sector_t )(heads * sectors));
  *geom = heads;
  *(geom + 1UL) = sectors;
  *(geom + 2UL) = cylinders;
  return (0);
}
}
static int ips_slave_configure(struct scsi_device *SDptr )
{
  ips_ha_t *ha ;
  int min ;
  {
  ha = (ips_ha_t *)(& (SDptr->host)->hostdata);
  if ((unsigned int )*((unsigned char *)SDptr + 329UL) != 0U && (int )((signed char )SDptr->type) == 0) {
    min = (int )(ha->max_cmds / 2U);
    if ((unsigned int )(ha->enq)->ucLogDriveCount <= 2U) {
      min = (int )(ha->max_cmds - 1U);
    } else {
    }
    scsi_change_queue_depth(SDptr, min);
  } else {
  }
  SDptr->skip_ms_page_8 = 1U;
  SDptr->skip_ms_page_3f = 1U;
  return (0);
}
}
static irqreturn_t do_ipsintr(int irq , void *dev_id )
{
  ips_ha_t *ha ;
  struct Scsi_Host *host ;
  int irqstatus ;
  {
  ha = (ips_ha_t *)dev_id;
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  host = ips_sh[(int )ha->host_num];
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    (*(ha->func.intr))(ha);
    return (1);
  } else {
  }
  spin_lock(host->host_lock);
  if ((unsigned int )ha->active == 0U) {
    spin_unlock(host->host_lock);
    return (1);
  } else {
  }
  irqstatus = (*(ha->func.intr))(ha);
  spin_unlock(host->host_lock);
  ips_next(ha, 0);
  return (irqstatus != 0);
}
}
static int ips_intr_copperhead(ips_ha_t *ha )
{
  ips_stat_t *sp ;
  ips_scb_t *scb ;
  IPS_STATUS cstatus ;
  int intrstatus ;
  uint32_t tmp ;
  {
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (0);
  } else {
  }
  intrstatus = (*(ha->func.isintr))(ha);
  if (intrstatus == 0) {
    return (0);
  } else {
  }
  ldv_38479:
  sp = & ha->sp;
  intrstatus = (*(ha->func.isintr))(ha);
  if (intrstatus == 0) {
    goto ldv_38477;
  } else {
    tmp = (*(ha->func.statupd))(ha);
    cstatus.value = tmp;
  }
  if ((int )((signed char )cstatus.fields.command_id) < 0) {
    goto ldv_38478;
  } else {
  }
  ips_chkstatus(ha, & cstatus);
  scb = (ips_scb_t *)sp->scb_addr;
  (*(scb->callback))(ha, scb);
  ldv_38478: ;
  goto ldv_38479;
  ldv_38477: ;
  return (1);
}
}
static int ips_intr_morpheus(ips_ha_t *ha )
{
  ips_stat_t *sp ;
  ips_scb_t *scb ;
  IPS_STATUS cstatus ;
  int intrstatus ;
  uint32_t tmp ;
  {
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->active == 0U) {
    return (0);
  } else {
  }
  intrstatus = (*(ha->func.isintr))(ha);
  if (intrstatus == 0) {
    return (0);
  } else {
  }
  ldv_38489:
  sp = & ha->sp;
  intrstatus = (*(ha->func.isintr))(ha);
  if (intrstatus == 0) {
    goto ldv_38487;
  } else {
    tmp = (*(ha->func.statupd))(ha);
    cstatus.value = tmp;
  }
  if ((unsigned int )cstatus.value == 4294967295U) {
    goto ldv_38487;
  } else {
  }
  if ((int )((signed char )cstatus.fields.command_id) < 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Spurious interrupt; no ccb.\n");
    goto ldv_38488;
  } else {
  }
  ips_chkstatus(ha, & cstatus);
  scb = (ips_scb_t *)sp->scb_addr;
  (*(scb->callback))(ha, scb);
  ldv_38488: ;
  goto ldv_38489;
  ldv_38487: ;
  return (1);
}
}
static char const *ips_info(struct Scsi_Host *SH )
{
  char buffer[256U] ;
  char *bp ;
  ips_ha_t *ha ;
  {
  ha = (ips_ha_t *)(& SH->hostdata);
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return ((char const *)0);
  } else {
  }
  bp = (char *)(& buffer);
  memset((void *)bp, 0, 256UL);
  sprintf(bp, "%s%s%s Build %d", (char *)"IBM PCI ServeRAID ", (char *)"7.12", (char *)".05 ",
          761);
  if ((unsigned int )ha->ad_type != 0U && (unsigned int )ha->ad_type <= 15U) {
    strcat(bp, " <");
    strcat(bp, (char const *)(& ips_adapter_name) + ((unsigned long )ha->ad_type + 0xffffffffffffffffUL));
    strcat(bp, ">");
  } else {
  }
  return ((char const *)bp);
}
}
static int ips_write_info(struct Scsi_Host *host , char *buffer , int length )
{
  int i ;
  ips_ha_t *ha ;
  {
  ha = (ips_ha_t *)0;
  i = 0;
  goto ldv_38505;
  ldv_38504: ;
  if ((unsigned long )ips_sh[i] != (unsigned long )((struct Scsi_Host *)0)) {
    if ((unsigned long )ips_sh[i] == (unsigned long )host) {
      ha = (ips_ha_t *)(& (ips_sh[i])->hostdata);
      goto ldv_38503;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_38505: ;
  if ((unsigned int )i < ips_next_controller) {
    goto ldv_38504;
  } else {
  }
  ldv_38503: ;
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int ips_show_info(struct seq_file *m , struct Scsi_Host *host )
{
  int i ;
  ips_ha_t *ha ;
  int tmp ;
  {
  ha = (ips_ha_t *)0;
  i = 0;
  goto ldv_38514;
  ldv_38513: ;
  if ((unsigned long )ips_sh[i] != (unsigned long )((struct Scsi_Host *)0)) {
    if ((unsigned long )ips_sh[i] == (unsigned long )host) {
      ha = (ips_ha_t *)(& (ips_sh[i])->hostdata);
      goto ldv_38512;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_38514: ;
  if ((unsigned int )i < ips_next_controller) {
    goto ldv_38513;
  } else {
  }
  ldv_38512: ;
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (-22);
  } else {
  }
  tmp = ips_host_info(ha, m);
  return (tmp);
}
}
static int ips_is_passthru(struct scsi_cmnd *SC )
{
  unsigned long flags ;
  struct scatterlist *sg ;
  struct scatterlist *tmp ;
  char *buffer ;
  struct page *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct scatterlist *tmp___4 ;
  {
  if ((unsigned long )SC == (unsigned long )((struct scsi_cmnd *)0)) {
    return (0);
  } else {
  }
  if ((((unsigned int )*(SC->cmnd) == 13U && (SC->device)->channel == 0U) && (SC->device)->id == 15U) && (SC->device)->lun == 0ULL) {
    tmp___4 = scsi_sglist(SC);
    if ((unsigned long )tmp___4 != (unsigned long )((struct scatterlist *)0)) {
      tmp = scsi_sglist(SC);
      sg = tmp;
      flags = arch_local_irq_save();
      trace_hardirqs_off();
      tmp___0 = sg_page(sg);
      tmp___1 = kmap_atomic(tmp___0);
      buffer = (char *)tmp___1 + (unsigned long )sg->offset;
      if (((((unsigned long )buffer != (unsigned long )((char *)0) && (int )((signed char )*buffer) == 67) && (int )((signed char )*(buffer + 1UL)) == 79) && (int )((signed char )*(buffer + 2UL)) == 80) && (int )((signed char )*(buffer + 3UL)) == 80) {
        __kunmap_atomic((void *)(buffer + - ((unsigned long )sg->offset)));
        tmp___2 = arch_irqs_disabled_flags(flags);
        if (tmp___2 != 0) {
          arch_local_irq_restore(flags);
          trace_hardirqs_off();
        } else {
          trace_hardirqs_on();
          arch_local_irq_restore(flags);
        }
        return (1);
      } else {
      }
      __kunmap_atomic((void *)(buffer + - ((unsigned long )sg->offset)));
      tmp___3 = arch_irqs_disabled_flags(flags);
      if (tmp___3 != 0) {
        arch_local_irq_restore(flags);
        trace_hardirqs_off();
      } else {
        trace_hardirqs_on();
        arch_local_irq_restore(flags);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ips_alloc_passthru_buffer(ips_ha_t *ha , int length )
{
  void *bigger_buf ;
  dma_addr_t dma_busaddr ;
  {
  if ((unsigned long )ha->ioctl_data != (unsigned long )((char *)0) && ha->ioctl_len >= length) {
    return (0);
  } else {
  }
  bigger_buf = pci_alloc_consistent(ha->pcidev, (size_t )length, & dma_busaddr);
  if ((unsigned long )bigger_buf != (unsigned long )((void *)0)) {
    pci_free_consistent(ha->pcidev, (size_t )ha->ioctl_len, (void *)ha->ioctl_data,
                        ha->ioctl_busaddr);
    ha->ioctl_data = (char *)bigger_buf;
    ha->ioctl_len = length;
    ha->ioctl_busaddr = dma_busaddr;
  } else {
    return (-1);
  }
  return (0);
}
}
static int ips_make_passthru(ips_ha_t *ha , struct scsi_cmnd *SC , ips_scb_t *scb ,
                             int intr )
{
  ips_passthru_t *pt ;
  int length ;
  int i ;
  int ret ;
  struct scatterlist *sg ;
  struct scatterlist *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  length = 0;
  tmp = scsi_sglist(SC);
  sg = tmp;
  i = 0;
  sg = scsi_sglist(SC);
  goto ldv_38562;
  ldv_38561:
  length = (int )(sg->length + (unsigned int )length);
  i = i + 1;
  sg = sg_next(sg);
  ldv_38562:
  tmp___0 = scsi_sg_count(SC);
  if ((unsigned int )i < tmp___0) {
    goto ldv_38561;
  } else {
  }
  if ((unsigned int )length <= 239U) {
    return (4);
  } else {
  }
  tmp___1 = ips_alloc_passthru_buffer(ha, length);
  if (tmp___1 != 0) {
    if ((unsigned long )ha->ioctl_data != (unsigned long )((char *)0)) {
      pt = (ips_passthru_t *)ha->ioctl_data;
      ips_scmd_buf_read(SC, (void *)pt, 240U);
      pt->BasicStatus = 11U;
      pt->ExtendedStatus = 0U;
      ips_scmd_buf_write(SC, (void *)pt, 240U);
    } else {
    }
    return (4);
  } else {
  }
  ha->ioctl_datasize = (uint32_t )length;
  ips_scmd_buf_read(SC, (void *)ha->ioctl_data, ha->ioctl_datasize);
  pt = (ips_passthru_t *)ha->ioctl_data;
  switch (pt->CoppCmd) {
  case 17220U:
  memcpy((void *)ha->ioctl_data + 240U, (void const *)(& ips_num_controllers),
           4UL);
  ips_scmd_buf_write(SC, (void *)ha->ioctl_data, 244U);
  SC->result = 0;
  return (2);
  case 17217U: ;
  case 17218U: ;
  if ((unsigned int )*(SC->cmnd) == 13U) {
    if ((unsigned long )length < (unsigned long )pt->CmdBSize + 240UL) {
      return (4);
    } else {
    }
    if ((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )pt->CoppCP.cmd.flashfw.op_code == 34U) {
      ret = ips_flash_copperhead(ha, pt, scb);
      ips_scmd_buf_write(SC, (void *)ha->ioctl_data, 240U);
      return (ret);
    } else {
    }
    tmp___2 = ips_usrcmd(ha, pt, scb);
    if (tmp___2 != 0) {
      return (1);
    } else {
      return (4);
    }
  } else {
  }
  goto ldv_38567;
  }
  ldv_38567: ;
  return (4);
}
}
static int ips_flash_copperhead(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb )
{
  int datasize ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  if ((((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 14U) && (unsigned int )(ha->pcidev)->revision <= 16U) && (unsigned int )pt->CoppCP.cmd.flashfw.type == 0U) {
    tmp = ips_usrcmd(ha, pt, scb);
    if (tmp != 0) {
      return (1);
    } else {
      return (4);
    }
  } else {
  }
  pt->BasicStatus = 11U;
  pt->ExtendedStatus = 0U;
  (scb->scsi_cmd)->result = 0;
  if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 1U && (unsigned int )pt->CoppCP.cmd.flashfw.direction == 3U) {
    pt->BasicStatus = 0U;
    tmp___0 = ips_flash_bios(ha, pt, scb);
    return (tmp___0);
  } else
  if ((unsigned int )pt->CoppCP.cmd.flashfw.packet_num == 0U) {
    if ((unsigned long )ips_FlashData != (unsigned long )((char *)0)) {
      tmp___2 = test_and_set_bit(0L, (unsigned long volatile *)(& ips_FlashDataInUse));
      if (tmp___2 == 0) {
        ha->flash_data = ips_FlashData;
        ha->flash_busaddr = ips_flashbusaddr;
        ha->flash_len = 524288;
        ha->flash_datasize = 0U;
      } else {
        goto _L;
      }
    } else
    _L:
    if ((unsigned long )ha->flash_data == (unsigned long )((char *)0)) {
      datasize = (int )((uint32_t )pt->CoppCP.cmd.flashfw.total_packets * pt->CoppCP.cmd.flashfw.count);
      tmp___1 = pci_alloc_consistent(ha->pcidev, (size_t )datasize, & ha->flash_busaddr);
      ha->flash_data = (char *)tmp___1;
      if ((unsigned long )ha->flash_data == (unsigned long )((char *)0)) {
        printk("\fUnable to allocate a flash buffer\n");
        return (4);
      } else {
      }
      ha->flash_datasize = 0U;
      ha->flash_len = datasize;
    } else {
      return (4);
    }
  } else
  if (pt->CoppCP.cmd.flashfw.count + ha->flash_datasize > (uint32_t )ha->flash_len) {
    ips_free_flash_copperhead(ha);
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "failed size sanity check\n");
    return (4);
  } else {
  }
  if ((unsigned long )ha->flash_data == (unsigned long )((char *)0)) {
    return (4);
  } else {
  }
  pt->BasicStatus = 0U;
  memcpy((void *)ha->flash_data + (unsigned long )ha->flash_datasize, (void const *)pt + 1U,
           (size_t )pt->CoppCP.cmd.flashfw.count);
  ha->flash_datasize = ha->flash_datasize + pt->CoppCP.cmd.flashfw.count;
  if ((int )pt->CoppCP.cmd.flashfw.packet_num == (int )pt->CoppCP.cmd.flashfw.total_packets + -1) {
    if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 1U) {
      tmp___3 = ips_flash_bios(ha, pt, scb);
      return (tmp___3);
    } else
    if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 0U) {
      tmp___4 = ips_flash_firmware(ha, pt, scb);
      return (tmp___4);
    } else {
    }
  } else {
  }
  return (2);
}
}
static int ips_flash_bios(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 1U && (unsigned int )pt->CoppCP.cmd.flashfw.direction == 2U) {
    if (((unsigned long )ha->func.programbios == (unsigned long )((int (*)(struct ips_ha * ,
                                                                           char * ,
                                                                           uint32_t ,
                                                                           uint32_t ))0) || (unsigned long )ha->func.erasebios == (unsigned long )((int (*)(struct ips_ha * ))0)) || (unsigned long )ha->func.verifybios == (unsigned long )((int (*)(struct ips_ha * ,
                                                                                                                                                                                                                                                       char * ,
                                                                                                                                                                                                                                                       uint32_t ,
                                                                                                                                                                                                                                                       uint32_t ))0)) {
      goto error;
    } else {
    }
    tmp___1 = (*(ha->func.erasebios))(ha);
    if (tmp___1 != 0) {
      goto error;
    } else {
      tmp___0 = (*(ha->func.programbios))(ha, ha->flash_data + 192UL, ha->flash_datasize - 192U,
                                          0U);
      if (tmp___0 != 0) {
        goto error;
      } else {
        tmp = (*(ha->func.verifybios))(ha, ha->flash_data + 192UL, ha->flash_datasize - 192U,
                                       0U);
        if (tmp != 0) {
          goto error;
        } else {
        }
      }
    }
    ips_free_flash_copperhead(ha);
    return (2);
  } else
  if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 1U && (unsigned int )pt->CoppCP.cmd.flashfw.direction == 3U) {
    if ((unsigned long )ha->func.erasebios == (unsigned long )((int (*)(struct ips_ha * ))0)) {
      goto error;
    } else {
    }
    tmp___2 = (*(ha->func.erasebios))(ha);
    if (tmp___2 != 0) {
      goto error;
    } else {
    }
    return (2);
  } else {
  }
  error:
  pt->BasicStatus = 11U;
  pt->ExtendedStatus = 0U;
  ips_free_flash_copperhead(ha);
  return (4);
}
}
static int ips_fill_scb_sg_single(ips_ha_t *ha , dma_addr_t busaddr , ips_scb_t *scb ,
                                  int indx , unsigned int e_len )
{
  int ret_val ;
  {
  ret_val = 0;
  if (scb->data_len + e_len > ha->max_xfer) {
    e_len = ha->max_xfer - scb->data_len;
    scb->breakup = (uint8_t )indx;
    scb->sg_break = (uint8_t )((int )scb->sg_break + 1);
    ret_val = -1;
  } else {
    scb->breakup = 0U;
    scb->sg_break = 0U;
  }
  if (ha->flags & 1) {
    (scb->sg_list.enh_list + (unsigned long )indx)->address_lo = (unsigned int )busaddr;
    (scb->sg_list.enh_list + (unsigned long )indx)->address_hi = (unsigned int )(busaddr >> 32ULL);
    (scb->sg_list.enh_list + (unsigned long )indx)->length = e_len;
  } else {
    (scb->sg_list.std_list + (unsigned long )indx)->address = (unsigned int )busaddr;
    (scb->sg_list.std_list + (unsigned long )indx)->length = e_len;
  }
  scb->sg_len = scb->sg_len + 1U;
  scb->data_len = scb->data_len + e_len;
  return (ret_val);
}
}
static int ips_flash_firmware(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb )
{
  IPS_SG_LIST sg_list ;
  uint32_t cmd_busaddr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )pt->CoppCP.cmd.flashfw.type == 0U && (unsigned int )pt->CoppCP.cmd.flashfw.direction == 1U) {
    memset((void *)(& pt->CoppCP.cmd), 0, 24UL);
    pt->CoppCP.cmd.flashfw.op_code = 32U;
    pt->CoppCP.cmd.flashfw.count = ha->flash_datasize;
  } else {
    pt->BasicStatus = 11U;
    pt->ExtendedStatus = 0U;
    ips_free_flash_copperhead(ha);
    return (4);
  }
  sg_list.list = scb->sg_list.list;
  cmd_busaddr = scb->scb_busaddr;
  memcpy((void *)(& scb->cmd), (void const *)(& pt->CoppCP.cmd), 16UL);
  scb->sg_list.list = sg_list.list;
  scb->scb_busaddr = cmd_busaddr;
  scb->bus = (uint8_t )((scb->scsi_cmd)->device)->channel;
  scb->target_id = (uint8_t )((scb->scsi_cmd)->device)->id;
  scb->lun = (uint8_t )((scb->scsi_cmd)->device)->lun;
  scb->sg_len = 0U;
  scb->data_len = 0U;
  scb->flags = 0U;
  scb->op_code = 0U;
  scb->callback = & ipsintr_done;
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->data_len = ha->flash_datasize;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    tmp___1 = ips_is_passthru(scb->scsi_cmd);
    if (tmp___1 == 0) {
      if ((unsigned int )(scb->scsi_cmd)->sc_data_direction != 3U) {
        tmp___0 = (int )(scb->scsi_cmd)->sc_data_direction;
      } else {
        tmp___0 = 0;
      }
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  scb->data_busaddr = pci_map_single(ha->pcidev, (void *)ha->flash_data, (size_t )scb->data_len,
                                     tmp___0);
  scb->flags = scb->flags | 16U;
  scb->cmd.flashfw.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.flashfw.buffer_addr = (unsigned int )scb->data_busaddr;
  if (pt->TimeOut != 0U) {
    scb->timeout = pt->TimeOut;
  } else {
  }
  (scb->scsi_cmd)->result = 0;
  return (1);
}
}
static void ips_free_flash_copperhead(ips_ha_t *ha )
{
  {
  if ((unsigned long )ha->flash_data == (unsigned long )ips_FlashData) {
    test_and_clear_bit(0L, (unsigned long volatile *)(& ips_FlashDataInUse));
  } else
  if ((unsigned long )ha->flash_data != (unsigned long )((char *)0)) {
    pci_free_consistent(ha->pcidev, (size_t )ha->flash_len, (void *)ha->flash_data,
                        ha->flash_busaddr);
  } else {
  }
  ha->flash_data = (char *)0;
  return;
}
}
static int ips_usrcmd(ips_ha_t *ha , ips_passthru_t *pt , ips_scb_t *scb )
{
  IPS_SG_LIST sg_list ;
  uint32_t cmd_busaddr ;
  {
  if (((unsigned long )scb == (unsigned long )((ips_scb_t *)0) || (unsigned long )pt == (unsigned long )((ips_passthru_t *)0)) || (unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  sg_list.list = scb->sg_list.list;
  cmd_busaddr = scb->scb_busaddr;
  memcpy((void *)(& scb->cmd), (void const *)(& pt->CoppCP.cmd), 16UL);
  memcpy((void *)(& scb->dcdb), (void const *)(& pt->CoppCP.dcdb), 92UL);
  scb->sg_list.list = sg_list.list;
  scb->scb_busaddr = cmd_busaddr;
  scb->bus = (uint8_t )((scb->scsi_cmd)->device)->channel;
  scb->target_id = (uint8_t )((scb->scsi_cmd)->device)->id;
  scb->lun = (uint8_t )((scb->scsi_cmd)->device)->lun;
  scb->sg_len = 0U;
  scb->data_len = 0U;
  scb->flags = 0U;
  scb->op_code = 0U;
  scb->callback = & ipsintr_done;
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  if (((unsigned int )scb->cmd.basic_io.op_code == 130U || (unsigned int )scb->cmd.basic_io.op_code == 131U) || (unsigned int )scb->cmd.basic_io.op_code == 132U) {
    return (0);
  } else {
  }
  if (pt->CmdBSize != 0U) {
    scb->data_len = pt->CmdBSize;
    scb->data_busaddr = ha->ioctl_busaddr + 240ULL;
  } else {
    scb->data_busaddr = 0ULL;
  }
  if ((unsigned int )scb->cmd.dcdb.op_code == 4U) {
    scb->cmd.dcdb.dcdb_address = (scb->scb_busaddr + (unsigned int )((long )(& scb->dcdb))) - (unsigned int )((long )scb);
  } else {
  }
  if (pt->CmdBSize != 0U) {
    if ((unsigned int )scb->cmd.dcdb.op_code == 4U) {
      scb->dcdb.buffer_pointer = (unsigned int )scb->data_busaddr;
    } else {
      scb->cmd.basic_io.sg_addr = (unsigned int )scb->data_busaddr;
    }
  } else {
  }
  if (pt->TimeOut != 0U) {
    scb->timeout = pt->TimeOut;
    if (pt->TimeOut <= 10U) {
      scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 16U);
    } else
    if (pt->TimeOut <= 60U) {
      scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 32U);
    } else {
      scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 48U);
    }
  } else {
  }
  (scb->scsi_cmd)->result = 0;
  return (1);
}
}
static void ips_cleanup_passthru(ips_ha_t *ha , ips_scb_t *scb )
{
  ips_passthru_t *pt ;
  struct scatterlist *tmp ;
  {
  if ((unsigned long )scb == (unsigned long )((ips_scb_t *)0) || (unsigned long )scb->scsi_cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    return;
  } else {
    tmp = scsi_sglist(scb->scsi_cmd);
    if ((unsigned long )tmp == (unsigned long )((struct scatterlist *)0)) {
      return;
    } else {
    }
  }
  pt = (ips_passthru_t *)ha->ioctl_data;
  if ((unsigned int )scb->cmd.dcdb.op_code == 4U) {
    memcpy((void *)(& pt->CoppCP.dcdb), (void const *)(& scb->dcdb), 92UL);
  } else {
  }
  pt->BasicStatus = scb->basic_status;
  pt->ExtendedStatus = scb->extended_status;
  pt->AdapterType = (uint8_t )ha->ad_type;
  if ((unsigned int )(ha->pcidev)->device == 46U && ((unsigned int )scb->cmd.flashfw.op_code == 32U || (unsigned int )scb->cmd.flashfw.op_code == 34U)) {
    ips_free_flash_copperhead(ha);
  } else {
  }
  ips_scmd_buf_write(scb->scsi_cmd, (void *)ha->ioctl_data, ha->ioctl_datasize);
  return;
}
}
static int ips_host_info(ips_ha_t *ha , struct seq_file *m )
{
  {
  seq_puts(m, "\nIBM ServeRAID General Information:\n\n");
  if ((ha->nvram)->signature == 4292721561U && (unsigned int )(ha->nvram)->adapter_type != 0U) {
    seq_printf(m, "\tController Type                   : %s\n", (char *)(& ips_adapter_name) + ((unsigned long )ha->ad_type + 0xffffffffffffffffUL));
  } else {
    seq_puts(m, "\tController Type                   : Unknown\n");
  }
  if (ha->io_addr != 0U) {
    seq_printf(m, "\tIO region                         : 0x%x (%d bytes)\n", ha->io_addr,
               ha->io_len);
  } else {
  }
  if (ha->mem_addr != 0U) {
    seq_printf(m, "\tMemory region                     : 0x%x (%d bytes)\n", ha->mem_addr,
               ha->mem_len);
    seq_printf(m, "\tShared memory address             : 0x%lx\n", (unsigned long )ha->mem_ptr);
  } else {
  }
  seq_printf(m, "\tIRQ number                        : %d\n", (ha->pcidev)->irq);
  if ((ha->nvram)->signature == 4292721561U) {
    if ((unsigned int )(ha->nvram)->bios_low[3] == 0U) {
      seq_printf(m, "\tBIOS Version                      : %c%c%c%c%c%c%c\n", (int )(ha->nvram)->bios_high[0],
                 (int )(ha->nvram)->bios_high[1], (int )(ha->nvram)->bios_high[2],
                 (int )(ha->nvram)->bios_high[3], (int )(ha->nvram)->bios_low[0],
                 (int )(ha->nvram)->bios_low[1], (int )(ha->nvram)->bios_low[2]);
    } else {
      seq_printf(m, "\tBIOS Version                      : %c%c%c%c%c%c%c%c\n", (int )(ha->nvram)->bios_high[0],
                 (int )(ha->nvram)->bios_high[1], (int )(ha->nvram)->bios_high[2],
                 (int )(ha->nvram)->bios_high[3], (int )(ha->nvram)->bios_low[0],
                 (int )(ha->nvram)->bios_low[1], (int )(ha->nvram)->bios_low[2], (int )(ha->nvram)->bios_low[3]);
    }
  } else {
  }
  if ((unsigned int )(ha->enq)->CodeBlkVersion[7] == 0U) {
    seq_printf(m, "\tFirmware Version                  : %c%c%c%c%c%c%c\n", (int )(ha->enq)->CodeBlkVersion[0],
               (int )(ha->enq)->CodeBlkVersion[1], (int )(ha->enq)->CodeBlkVersion[2],
               (int )(ha->enq)->CodeBlkVersion[3], (int )(ha->enq)->CodeBlkVersion[4],
               (int )(ha->enq)->CodeBlkVersion[5], (int )(ha->enq)->CodeBlkVersion[6]);
  } else {
    seq_printf(m, "\tFirmware Version                  : %c%c%c%c%c%c%c%c\n", (int )(ha->enq)->CodeBlkVersion[0],
               (int )(ha->enq)->CodeBlkVersion[1], (int )(ha->enq)->CodeBlkVersion[2],
               (int )(ha->enq)->CodeBlkVersion[3], (int )(ha->enq)->CodeBlkVersion[4],
               (int )(ha->enq)->CodeBlkVersion[5], (int )(ha->enq)->CodeBlkVersion[6],
               (int )(ha->enq)->CodeBlkVersion[7]);
  }
  if ((unsigned int )(ha->enq)->BootBlkVersion[7] == 0U) {
    seq_printf(m, "\tBoot Block Version                : %c%c%c%c%c%c%c\n", (int )(ha->enq)->BootBlkVersion[0],
               (int )(ha->enq)->BootBlkVersion[1], (int )(ha->enq)->BootBlkVersion[2],
               (int )(ha->enq)->BootBlkVersion[3], (int )(ha->enq)->BootBlkVersion[4],
               (int )(ha->enq)->BootBlkVersion[5], (int )(ha->enq)->BootBlkVersion[6]);
  } else {
    seq_printf(m, "\tBoot Block Version                : %c%c%c%c%c%c%c%c\n", (int )(ha->enq)->BootBlkVersion[0],
               (int )(ha->enq)->BootBlkVersion[1], (int )(ha->enq)->BootBlkVersion[2],
               (int )(ha->enq)->BootBlkVersion[3], (int )(ha->enq)->BootBlkVersion[4],
               (int )(ha->enq)->BootBlkVersion[5], (int )(ha->enq)->BootBlkVersion[6],
               (int )(ha->enq)->BootBlkVersion[7]);
  }
  seq_printf(m, "\tDriver Version                    : %s%s\n", (char *)"7.12", (char *)".05 ");
  seq_printf(m, "\tDriver Build                      : %d\n", 761);
  seq_printf(m, "\tMax Physical Devices              : %d\n", (int )(ha->enq)->ucMaxPhysicalDevices);
  seq_printf(m, "\tMax Active Commands               : %d\n", ha->max_cmds);
  seq_printf(m, "\tCurrent Queued Commands           : %d\n", ha->scb_waitlist.count);
  seq_printf(m, "\tCurrent Active Commands           : %d\n", (uint32_t )ha->scb_activelist.count - ha->num_ioctl);
  seq_printf(m, "\tCurrent Queued PT Commands        : %d\n", ha->copp_waitlist.count);
  seq_printf(m, "\tCurrent Active PT Commands        : %d\n", ha->num_ioctl);
  seq_putc(m, 10);
  return (0);
}
}
static void ips_identify_controller(ips_ha_t *ha )
{
  {
  switch ((int )(ha->pcidev)->device) {
  case 46: ;
  if ((unsigned int )(ha->pcidev)->revision <= 2U) {
    ha->ad_type = 1U;
  } else
  if ((unsigned int )(ha->pcidev)->revision == 4U) {
    ha->ad_type = 2U;
  } else
  if ((unsigned int )(ha->pcidev)->revision == 3U) {
    ha->ad_type = 3U;
  } else
  if ((unsigned int )(ha->pcidev)->revision == 4U && (unsigned int )ha->slot_num == 0U) {
    ha->ad_type = 4U;
  } else
  if ((unsigned int )(ha->pcidev)->revision > 4U && (unsigned int )(ha->pcidev)->revision <= 13U) {
    if ((unsigned int )(ha->enq)->ucMaxPhysicalDevices == 15U) {
      ha->ad_type = 6U;
    } else {
      ha->ad_type = 5U;
    }
  } else
  if ((unsigned int )(ha->pcidev)->revision > 14U && (unsigned int )(ha->pcidev)->revision <= 16U) {
    ha->ad_type = 7U;
  } else {
  }
  goto ldv_38618;
  case 445: ;
  switch ((int )(ha->pcidev)->subsystem_device) {
  case 447:
  ha->ad_type = 9U;
  goto ldv_38621;
  case 446:
  ha->ad_type = 8U;
  goto ldv_38621;
  case 520:
  ha->ad_type = 10U;
  goto ldv_38621;
  case 526:
  ha->ad_type = 11U;
  goto ldv_38621;
  case 601:
  ha->ad_type = 12U;
  goto ldv_38621;
  case 600:
  ha->ad_type = 13U;
  goto ldv_38621;
  }
  ldv_38621: ;
  goto ldv_38618;
  case 592: ;
  switch ((int )(ha->pcidev)->subsystem_device) {
  case 633:
  ha->ad_type = 14U;
  goto ldv_38629;
  case 652:
  ha->ad_type = 15U;
  goto ldv_38629;
  case 654:
  ha->ad_type = 17U;
  goto ldv_38629;
  case 655:
  ha->ad_type = 18U;
  goto ldv_38629;
  }
  ldv_38629: ;
  goto ldv_38618;
  }
  ldv_38618: ;
  return;
}
}
static void ips_get_bios_version(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  int ret ;
  uint8_t major ;
  uint8_t minor ;
  uint8_t subminor ;
  uint8_t *buffer ;
  char hexDigits[16U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  hexDigits[0] = 48;
  hexDigits[1] = 49;
  hexDigits[2] = 50;
  hexDigits[3] = 51;
  hexDigits[4] = 52;
  hexDigits[5] = 53;
  hexDigits[6] = 54;
  hexDigits[7] = 55;
  hexDigits[8] = 56;
  hexDigits[9] = 57;
  hexDigits[10] = 65;
  hexDigits[11] = 66;
  hexDigits[12] = 67;
  hexDigits[13] = 68;
  hexDigits[14] = 69;
  hexDigits[15] = 70;
  major = 0U;
  minor = 0U;
  strncpy((char *)(& ha->bios_version), "       ?", 8UL);
  if ((unsigned int )(ha->pcidev)->device == 46U) {
    if ((unsigned int )(ha->pcidev)->device == 445U || (((((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 14U) && (unsigned int )(ha->pcidev)->revision <= 16U) || (((unsigned int )(ha->pcidev)->device == 46U && (unsigned int )(ha->pcidev)->revision > 4U) && (unsigned int )(ha->pcidev)->revision <= 13U)) && ips_force_memio != 0)) {
      writel(0U, (void volatile *)ha->mem_ptr + 24U);
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      tmp = readb((void const volatile *)ha->mem_ptr + 28U);
      if ((unsigned int )tmp != 85U) {
        return;
      } else {
      }
      writel(1U, (void volatile *)ha->mem_ptr + 24U);
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      tmp___0 = readb((void const volatile *)ha->mem_ptr + 28U);
      if ((unsigned int )tmp___0 != 170U) {
        return;
      } else {
      }
      writel(511U, (void volatile *)ha->mem_ptr + 24U);
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      major = readb((void const volatile *)ha->mem_ptr + 28U);
      writel(510U, (void volatile *)ha->mem_ptr + 24U);
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      minor = readb((void const volatile *)ha->mem_ptr + 28U);
      writel(509U, (void volatile *)ha->mem_ptr + 24U);
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      subminor = readb((void const volatile *)ha->mem_ptr + 28U);
    } else {
      outl(0U, (int )(ha->io_addr + 24U));
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      tmp___1 = inb((int )(ha->io_addr + 28U));
      if ((unsigned int )tmp___1 != 85U) {
        return;
      } else {
      }
      outl(1U, (int )(ha->io_addr + 24U));
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      tmp___2 = inb((int )(ha->io_addr + 28U));
      if ((unsigned int )tmp___2 != 170U) {
        return;
      } else {
      }
      outl(511U, (int )(ha->io_addr + 24U));
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      major = inb((int )(ha->io_addr + 28U));
      outl(510U, (int )(ha->io_addr + 24U));
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      minor = inb((int )(ha->io_addr + 28U));
      outl(509U, (int )(ha->io_addr + 24U));
      if ((unsigned int )(ha->pcidev)->revision == 16U) {
        __const_udelay(107375UL);
      } else {
      }
      subminor = inb((int )(ha->io_addr + 28U));
    }
  } else {
    buffer = (uint8_t *)ha->ioctl_data;
    memset((void *)buffer, 0, 4096UL);
    scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
    ips_init_scb(ha, scb);
    scb->timeout = (uint32_t )ips_cmd_timeout;
    scb->cdb[0] = 34U;
    scb->cmd.flashfw.op_code = 34U;
    scb->cmd.flashfw.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
    scb->cmd.flashfw.type = 1U;
    scb->cmd.flashfw.direction = 0U;
    scb->cmd.flashfw.count = 2048U;
    scb->cmd.flashfw.total_packets = 1U;
    scb->cmd.flashfw.packet_num = 0U;
    scb->data_len = 4096U;
    scb->cmd.flashfw.buffer_addr = (uint32_t )ha->ioctl_busaddr;
    ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
    if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
      return;
    } else {
    }
    if ((unsigned int )*(buffer + 192UL) == 85U && (unsigned int )*(buffer + 193UL) == 170U) {
      major = *(buffer + 703UL);
      minor = *(buffer + 702UL);
      subminor = *(buffer + 701UL);
    } else {
      return;
    }
  }
  ha->bios_version[0] = (uint8_t )hexDigits[(int )major >> 4];
  ha->bios_version[1] = 46U;
  ha->bios_version[2] = (uint8_t )hexDigits[(int )major & 15];
  ha->bios_version[3] = (uint8_t )hexDigits[(int )subminor];
  ha->bios_version[4] = 46U;
  ha->bios_version[5] = (uint8_t )hexDigits[(int )minor >> 4];
  ha->bios_version[6] = (uint8_t )hexDigits[(int )minor & 15];
  ha->bios_version[7] = 0U;
  return;
}
}
static int ips_hainit(ips_ha_t *ha )
{
  int i ;
  struct timeval tv ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )ha->func.statinit != (unsigned long )((void (*)(struct ips_ha * ))0)) {
    (*(ha->func.statinit))(ha);
  } else {
  }
  if ((unsigned long )ha->func.enableint != (unsigned long )((void (*)(struct ips_ha * ))0)) {
    (*(ha->func.enableint))(ha);
  } else {
  }
  ha->reset_count = 1U;
  do_gettimeofday(& tv);
  ha->last_ffdc = tv.tv_sec;
  ips_ffdc_reset(ha, 1);
  tmp = ips_read_config(ha, 1);
  if (tmp == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to read config from controller.\n");
    return (0);
  } else {
  }
  tmp___0 = ips_read_adapter_status(ha, 1);
  if (tmp___0 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to read controller status.\n");
    return (0);
  } else {
  }
  ips_identify_controller(ha);
  tmp___1 = ips_read_subsystem_parameters(ha, 1);
  if (tmp___1 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to read subsystem parameters.\n");
    return (0);
  } else {
  }
  tmp___2 = ips_write_driver_status(ha, 1);
  if (tmp___2 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to write driver info to controller.\n");
    return (0);
  } else {
  }
  if ((unsigned int )(ha->conf)->ucLogDriveCount != 0U && (unsigned int )ha->requires_esl == 1U) {
    ips_clear_adapter(ha, 1);
  } else {
  }
  ha->ntargets = 16U;
  ha->nlun = 1U;
  ha->nbus = (unsigned int )((uint8_t )((unsigned int )(ha->enq)->ucMaxPhysicalDevices / 15U)) + 1U;
  switch ((int )(ha->conf)->logical_drive[0].ucStripeSize) {
  case 4:
  ha->max_xfer = 65536U;
  goto ldv_38650;
  case 5:
  ha->max_xfer = 131072U;
  goto ldv_38650;
  case 6:
  ha->max_xfer = 262144U;
  goto ldv_38650;
  case 7: ;
  default:
  ha->max_xfer = 524288U;
  goto ldv_38650;
  }
  ldv_38650: ;
  if ((int )(ha->subsys)->param[4] & 1) {
    ha->max_cmds = (uint32_t )(ha->enq)->ucConcurrentCmdCount;
  } else {
    switch ((int )(ha->conf)->logical_drive[0].ucStripeSize) {
    case 4:
    ha->max_cmds = 32U;
    goto ldv_38656;
    case 5:
    ha->max_cmds = 16U;
    goto ldv_38656;
    case 6:
    ha->max_cmds = 8U;
    goto ldv_38656;
    case 7: ;
    default:
    ha->max_cmds = 4U;
    goto ldv_38656;
    }
    ldv_38656: ;
  }
  if (((unsigned int )ha->ad_type == 6U || (unsigned int )ha->ad_type == 9U) || (unsigned int )ha->ad_type == 11U) {
    if (ha->max_cmds > MaxLiteCmds && MaxLiteCmds != 0U) {
      ha->max_cmds = MaxLiteCmds;
    } else {
    }
  } else {
  }
  ha->ha_id[0] = 15U;
  i = 1;
  goto ldv_38662;
  ldv_38661:
  ha->ha_id[i] = (unsigned int )(ha->conf)->init_id[i + -1] & 31U;
  ha->dcdb_active[i + -1] = 0U;
  i = i + 1;
  ldv_38662: ;
  if ((int )ha->nbus > i) {
    goto ldv_38661;
  } else {
  }
  return (1);
}
}
static void ips_next(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  struct scsi_cmnd *SC ;
  struct scsi_cmnd *p ;
  struct scsi_cmnd *q ;
  ips_copp_wait_item_t *item ;
  int ret ;
  struct Scsi_Host *host ;
  struct timeval tv ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  struct scatterlist *sg ;
  int i ;
  int tmp___3 ;
  {
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    return;
  } else {
  }
  host = ips_sh[(int )ha->host_num];
  if (intr == 0) {
    spin_lock(host->host_lock);
  } else {
  }
  if (((ha->subsys)->param[3] & 3145728U) != 0U && ha->scb_activelist.count == 0) {
    do_gettimeofday(& tv);
    if (tv.tv_sec - ha->last_ffdc > 28800L) {
      ha->last_ffdc = tv.tv_sec;
      ips_ffdc_time(ha);
    } else {
    }
  } else {
  }
  goto ldv_38680;
  ldv_38685:
  item = ips_removeq_copp_head(& ha->copp_waitlist);
  ha->num_ioctl = ha->num_ioctl + 1U;
  if (intr == 0) {
    spin_unlock(host->host_lock);
  } else {
  }
  scb->scsi_cmd = item->scsi_cmd;
  kfree((void const *)item);
  ret = ips_make_passthru(ha, scb->scsi_cmd, scb, intr);
  if (intr == 0) {
    spin_lock(host->host_lock);
  } else {
  }
  switch (ret) {
  case 4: ;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (scb->scsi_cmd)->result = 458752;
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  } else {
  }
  ips_freescb(ha, scb);
  goto ldv_38677;
  case 2: ;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (scb->scsi_cmd)->result = 0;
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  } else {
  }
  ips_freescb(ha, scb);
  goto ldv_38677;
  default: ;
  goto ldv_38677;
  }
  ldv_38677: ;
  if (ret != 1) {
    ha->num_ioctl = ha->num_ioctl - 1U;
    goto ldv_38680;
  } else {
  }
  ret = ips_send_cmd(ha, scb);
  if (ret == 1) {
    ips_putq_scb_head(& ha->scb_activelist, scb);
  } else {
    ha->num_ioctl = ha->num_ioctl - 1U;
  }
  switch (ret) {
  case 4: ;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (scb->scsi_cmd)->result = 458752;
  } else {
  }
  ips_freescb(ha, scb);
  goto ldv_38682;
  case 2:
  ips_freescb(ha, scb);
  goto ldv_38682;
  default: ;
  goto ldv_38682;
  }
  ldv_38682: ;
  ldv_38680: ;
  if (ha->num_ioctl == 0U && (unsigned long )ha->copp_waitlist.head != (unsigned long )((struct ips_copp_wait_item *)0)) {
    scb = ips_getscb(ha);
    if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
      goto ldv_38685;
    } else {
      goto ldv_38686;
    }
  } else {
  }
  ldv_38686:
  p = ha->scb_waitlist.head;
  goto ldv_38687;
  ldv_38699:
  tmp = sdev_channel(p->device);
  if (tmp != 0U) {
    tmp___0 = sdev_channel(p->device);
    tmp___1 = sdev_id(p->device);
    if ((ha->dcdb_active[tmp___0 - 1U] & (uint32_t )(1 << (int )tmp___1)) != 0U) {
      ips_freescb(ha, scb);
      p = (struct scsi_cmnd *)p->host_scribble;
      goto ldv_38687;
    } else {
    }
  } else {
  }
  q = p;
  SC = ips_removeq_wait(& ha->scb_waitlist, q);
  if (intr == 0) {
    spin_unlock(host->host_lock);
  } else {
  }
  SC->result = 0;
  SC->host_scribble = (unsigned char *)0U;
  scb->target_id = (uint8_t )(SC->device)->id;
  scb->lun = (uint8_t )(SC->device)->lun;
  scb->bus = (uint8_t )(SC->device)->channel;
  scb->scsi_cmd = SC;
  scb->breakup = 0U;
  scb->data_len = 0U;
  scb->callback = & ipsintr_done;
  scb->timeout = (uint32_t )ips_cmd_timeout;
  memset((void *)(& scb->cmd), 0, 16UL);
  memcpy((void *)(& scb->cdb), (void const *)SC->cmnd, (size_t )SC->cmd_len);
  scb->sg_count = scsi_dma_map(SC);
  tmp___2 = ldv__builtin_expect(scb->sg_count < 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3517/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ips.c"),
                         "i" (2677), "i" (12UL));
    ldv_38688: ;
    goto ldv_38688;
  } else {
  }
  if (scb->sg_count != 0) {
    scb->flags = scb->flags | 8U;
    i = 0;
    sg = scsi_sglist(SC);
    goto ldv_38693;
    ldv_38692:
    tmp___3 = ips_fill_scb_sg_single(ha, sg->dma_address, scb, i, sg->dma_length);
    if (tmp___3 < 0) {
      goto ldv_38691;
    } else {
    }
    i = i + 1;
    sg = sg_next(sg);
    ldv_38693: ;
    if (scb->sg_count > i) {
      goto ldv_38692;
    } else {
    }
    ldv_38691:
    scb->dcdb.transfer_length = (uint16_t )scb->data_len;
  } else {
    scb->data_busaddr = 0ULL;
    scb->sg_len = 0U;
    scb->data_len = 0U;
    scb->dcdb.transfer_length = 0U;
  }
  scb->dcdb.cmd_attribute = (uint8_t )ips_command_direction[(int )*((scb->scsi_cmd)->cmnd)];
  if ((unsigned int )*((scb->scsi_cmd)->cmnd) == 59U && scb->data_len == 0U) {
    scb->dcdb.cmd_attribute = 0U;
  } else {
  }
  if (((int )scb->dcdb.cmd_attribute & 3) == 0) {
    scb->dcdb.transfer_length = 0U;
  } else {
  }
  if (scb->data_len > 65535U) {
    scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 8U);
    scb->dcdb.transfer_length = 0U;
  } else {
  }
  if (intr == 0) {
    spin_lock(host->host_lock);
  } else {
  }
  ret = ips_send_cmd(ha, scb);
  switch (ret) {
  case 1:
  ips_putq_scb_head(& ha->scb_activelist, scb);
  goto ldv_38695;
  case 4: ;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (scb->scsi_cmd)->result = 458752;
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  } else {
  }
  if ((unsigned int )scb->bus != 0U) {
    ha->dcdb_active[(int )scb->bus + -1] = ha->dcdb_active[(int )scb->bus + -1] & (uint32_t )(~ (1 << (int )scb->target_id));
  } else {
  }
  ips_freescb(ha, scb);
  goto ldv_38695;
  case 2: ;
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  } else {
  }
  if ((unsigned int )scb->bus != 0U) {
    ha->dcdb_active[(int )scb->bus + -1] = ha->dcdb_active[(int )scb->bus + -1] & (uint32_t )(~ (1 << (int )scb->target_id));
  } else {
  }
  ips_freescb(ha, scb);
  goto ldv_38695;
  default: ;
  goto ldv_38695;
  }
  ldv_38695:
  p = (struct scsi_cmnd *)p->host_scribble;
  ldv_38687: ;
  if ((unsigned long )p != (unsigned long )((struct scsi_cmnd *)0)) {
    scb = ips_getscb(ha);
    if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
      goto ldv_38699;
    } else {
      goto ldv_38700;
    }
  } else {
  }
  ldv_38700: ;
  if (intr == 0) {
    spin_unlock(host->host_lock);
  } else {
  }
  return;
}
}
static void ips_putq_scb_head(ips_scb_queue_t *queue , ips_scb_t *item )
{
  {
  if ((unsigned long )item == (unsigned long )((ips_scb_t *)0)) {
    return;
  } else {
  }
  item->q_next = queue->head;
  queue->head = item;
  if ((unsigned long )queue->tail == (unsigned long )((struct ips_scb *)0)) {
    queue->tail = item;
  } else {
  }
  queue->count = queue->count + 1;
  return;
}
}
static ips_scb_t *ips_removeq_scb_head(ips_scb_queue_t *queue )
{
  ips_scb_t *item ;
  {
  item = queue->head;
  if ((unsigned long )item == (unsigned long )((ips_scb_t *)0)) {
    return ((ips_scb_t *)0);
  } else {
  }
  queue->head = item->q_next;
  item->q_next = (struct ips_scb *)0;
  if ((unsigned long )queue->tail == (unsigned long )item) {
    queue->tail = (struct ips_scb *)0;
  } else {
  }
  queue->count = queue->count - 1;
  return (item);
}
}
static ips_scb_t *ips_removeq_scb(ips_scb_queue_t *queue , ips_scb_t *item )
{
  ips_scb_t *p ;
  ips_scb_t *tmp ;
  {
  if ((unsigned long )item == (unsigned long )((ips_scb_t *)0)) {
    return ((ips_scb_t *)0);
  } else {
  }
  if ((unsigned long )queue->head == (unsigned long )item) {
    tmp = ips_removeq_scb_head(queue);
    return (tmp);
  } else {
  }
  p = queue->head;
  goto ldv_38715;
  ldv_38714:
  p = p->q_next;
  ldv_38715: ;
  if ((unsigned long )p != (unsigned long )((ips_scb_t *)0) && (unsigned long )p->q_next != (unsigned long )item) {
    goto ldv_38714;
  } else {
  }
  if ((unsigned long )p != (unsigned long )((ips_scb_t *)0)) {
    p->q_next = item->q_next;
    if ((unsigned long )item->q_next == (unsigned long )((struct ips_scb *)0)) {
      queue->tail = p;
    } else {
    }
    item->q_next = (struct ips_scb *)0;
    queue->count = queue->count - 1;
    return (item);
  } else {
  }
  return ((ips_scb_t *)0);
}
}
static void ips_putq_wait_tail(ips_wait_queue_t *queue , struct scsi_cmnd *item )
{
  {
  if ((unsigned long )item == (unsigned long )((struct scsi_cmnd *)0)) {
    return;
  } else {
  }
  item->host_scribble = (unsigned char *)0U;
  if ((unsigned long )queue->tail != (unsigned long )((struct scsi_cmnd *)0)) {
    (queue->tail)->host_scribble = (unsigned char *)item;
  } else {
  }
  queue->tail = item;
  if ((unsigned long )queue->head == (unsigned long )((struct scsi_cmnd *)0)) {
    queue->head = item;
  } else {
  }
  queue->count = queue->count + 1;
  return;
}
}
static struct scsi_cmnd *ips_removeq_wait_head(ips_wait_queue_t *queue )
{
  struct scsi_cmnd *item ;
  {
  item = queue->head;
  if ((unsigned long )item == (unsigned long )((struct scsi_cmnd *)0)) {
    return ((struct scsi_cmnd *)0);
  } else {
  }
  queue->head = (struct scsi_cmnd *)item->host_scribble;
  item->host_scribble = (unsigned char *)0U;
  if ((unsigned long )queue->tail == (unsigned long )item) {
    queue->tail = (struct scsi_cmnd *)0;
  } else {
  }
  queue->count = queue->count - 1;
  return (item);
}
}
static struct scsi_cmnd *ips_removeq_wait(ips_wait_queue_t *queue , struct scsi_cmnd *item )
{
  struct scsi_cmnd *p ;
  struct scsi_cmnd *tmp ;
  {
  if ((unsigned long )item == (unsigned long )((struct scsi_cmnd *)0)) {
    return ((struct scsi_cmnd *)0);
  } else {
  }
  if ((unsigned long )queue->head == (unsigned long )item) {
    tmp = ips_removeq_wait_head(queue);
    return (tmp);
  } else {
  }
  p = queue->head;
  goto ldv_38731;
  ldv_38730:
  p = (struct scsi_cmnd *)p->host_scribble;
  ldv_38731: ;
  if ((unsigned long )p != (unsigned long )((struct scsi_cmnd *)0) && (unsigned long )((struct scsi_cmnd *)p->host_scribble) != (unsigned long )item) {
    goto ldv_38730;
  } else {
  }
  if ((unsigned long )p != (unsigned long )((struct scsi_cmnd *)0)) {
    p->host_scribble = item->host_scribble;
    if ((unsigned long )item->host_scribble == (unsigned long )((unsigned char *)0U)) {
      queue->tail = p;
    } else {
    }
    item->host_scribble = (unsigned char *)0U;
    queue->count = queue->count - 1;
    return (item);
  } else {
  }
  return ((struct scsi_cmnd *)0);
}
}
static void ips_putq_copp_tail(ips_copp_queue_t *queue , ips_copp_wait_item_t *item )
{
  {
  if ((unsigned long )item == (unsigned long )((ips_copp_wait_item_t *)0)) {
    return;
  } else {
  }
  item->next = (struct ips_copp_wait_item *)0;
  if ((unsigned long )queue->tail != (unsigned long )((struct ips_copp_wait_item *)0)) {
    (queue->tail)->next = item;
  } else {
  }
  queue->tail = item;
  if ((unsigned long )queue->head == (unsigned long )((struct ips_copp_wait_item *)0)) {
    queue->head = item;
  } else {
  }
  queue->count = queue->count + 1;
  return;
}
}
static ips_copp_wait_item_t *ips_removeq_copp_head(ips_copp_queue_t *queue )
{
  ips_copp_wait_item_t *item ;
  {
  item = queue->head;
  if ((unsigned long )item == (unsigned long )((ips_copp_wait_item_t *)0)) {
    return ((ips_copp_wait_item_t *)0);
  } else {
  }
  queue->head = item->next;
  item->next = (struct ips_copp_wait_item *)0;
  if ((unsigned long )queue->tail == (unsigned long )item) {
    queue->tail = (struct ips_copp_wait_item *)0;
  } else {
  }
  queue->count = queue->count - 1;
  return (item);
}
}
static ips_copp_wait_item_t *ips_removeq_copp(ips_copp_queue_t *queue , ips_copp_wait_item_t *item )
{
  ips_copp_wait_item_t *p ;
  ips_copp_wait_item_t *tmp ;
  {
  if ((unsigned long )item == (unsigned long )((ips_copp_wait_item_t *)0)) {
    return ((ips_copp_wait_item_t *)0);
  } else {
  }
  if ((unsigned long )queue->head == (unsigned long )item) {
    tmp = ips_removeq_copp_head(queue);
    return (tmp);
  } else {
  }
  p = queue->head;
  goto ldv_38747;
  ldv_38746:
  p = p->next;
  ldv_38747: ;
  if ((unsigned long )p != (unsigned long )((ips_copp_wait_item_t *)0) && (unsigned long )p->next != (unsigned long )item) {
    goto ldv_38746;
  } else {
  }
  if ((unsigned long )p != (unsigned long )((ips_copp_wait_item_t *)0)) {
    p->next = item->next;
    if ((unsigned long )item->next == (unsigned long )((struct ips_copp_wait_item *)0)) {
      queue->tail = p;
    } else {
    }
    item->next = (struct ips_copp_wait_item *)0;
    queue->count = queue->count - 1;
    return (item);
  } else {
  }
  return ((ips_copp_wait_item_t *)0);
}
}
static void ipsintr_blocking(ips_ha_t *ha , struct ips_scb *scb )
{
  {
  ips_freescb(ha, scb);
  if ((unsigned int )ha->waitflag == 1U && ha->cmd_in_progress == (uint32_t )scb->cdb[0]) {
    ha->waitflag = 0U;
    return;
  } else {
  }
  return;
}
}
static void ipsintr_done(ips_ha_t *ha , struct ips_scb *scb )
{
  {
  if ((unsigned long )scb == (unsigned long )((ips_scb_t *)0)) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Spurious interrupt; scb NULL.\n");
    return;
  } else {
  }
  if ((unsigned long )scb->scsi_cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Spurious interrupt; scsi_cmd not set.\n");
    return;
  } else {
  }
  ips_done(ha, scb);
  return;
}
}
static void ips_done(ips_ha_t *ha , ips_scb_t *scb )
{
  int ret ;
  struct scatterlist *sg ;
  int i ;
  int sg_dma_index ;
  int ips_sg_index ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )scb == (unsigned long )((ips_scb_t *)0)) {
    return;
  } else {
  }
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    tmp___3 = ips_is_passthru(scb->scsi_cmd);
    if (tmp___3 != 0) {
      ips_cleanup_passthru(ha, scb);
      ha->num_ioctl = ha->num_ioctl - 1U;
    } else {
      goto _L;
    }
  } else
  _L:
  if ((unsigned int )scb->breakup != 0U || (unsigned int )scb->sg_break != 0U) {
    ips_sg_index = 0;
    scb->data_len = 0U;
    sg = scsi_sglist(scb->scsi_cmd);
    sg_dma_index = (int )scb->breakup;
    i = 0;
    goto ldv_38767;
    ldv_38766:
    sg = sg_next(sg);
    i = i + 1;
    ldv_38767: ;
    if ((int )scb->breakup > i) {
      goto ldv_38766;
    } else {
    }
    tmp = ips_sg_index;
    ips_sg_index = ips_sg_index + 1;
    ips_fill_scb_sg_single(ha, sg->dma_address, scb, tmp, sg->dma_length);
    goto ldv_38771;
    ldv_38770:
    tmp___0 = ips_sg_index;
    ips_sg_index = ips_sg_index + 1;
    tmp___1 = ips_fill_scb_sg_single(ha, sg->dma_address, scb, tmp___0, sg->dma_length);
    if (tmp___1 < 0) {
      goto ldv_38769;
    } else {
    }
    sg_dma_index = sg_dma_index + 1;
    sg = sg_next(sg);
    ldv_38771:
    tmp___2 = scsi_sg_count(scb->scsi_cmd);
    if ((unsigned int )sg_dma_index < tmp___2) {
      goto ldv_38770;
    } else {
    }
    ldv_38769:
    scb->dcdb.transfer_length = (uint16_t )scb->data_len;
    scb->dcdb.cmd_attribute = (uint8_t )((int )((signed char )scb->dcdb.cmd_attribute) | (int )((signed char )ips_command_direction[(int )*((scb->scsi_cmd)->cmnd)]));
    if (((int )scb->dcdb.cmd_attribute & 3) == 0) {
      scb->dcdb.transfer_length = 0U;
    } else {
    }
    if (scb->data_len > 65535U) {
      scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 8U);
      scb->dcdb.transfer_length = 0U;
    } else {
    }
    ret = ips_send_cmd(ha, scb);
    switch (ret) {
    case 4: ;
    if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      (scb->scsi_cmd)->result = 458752;
      (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
    } else {
    }
    ips_freescb(ha, scb);
    goto ldv_38773;
    case 2: ;
    if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      (scb->scsi_cmd)->result = 458752;
      (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
    } else {
    }
    ips_freescb(ha, scb);
    goto ldv_38773;
    default: ;
    goto ldv_38773;
    }
    ldv_38773: ;
    return;
  } else {
  }
  if ((unsigned int )scb->bus != 0U) {
    ha->dcdb_active[(int )scb->bus + -1] = ha->dcdb_active[(int )scb->bus + -1] & (uint32_t )(~ (1 << (int )scb->target_id));
  } else {
  }
  (*((scb->scsi_cmd)->scsi_done))(scb->scsi_cmd);
  ips_freescb(ha, scb);
  return;
}
}
static int ips_map_status(ips_ha_t *ha , ips_scb_t *scb , ips_stat_t *sp )
{
  int errcode ;
  int device_error ;
  uint32_t transfer_len ;
  IPS_DCDB_TABLE_TAPE *tapeDCDB ;
  IPS_SCSI_INQ_DATA inquiryData ;
  {
  errcode = 7;
  device_error = 0;
  switch ((int )scb->basic_status & 15) {
  case 14:
  errcode = 3;
  goto ldv_38787;
  case 3: ;
  case 4: ;
  case 5: ;
  case 13: ;
  case 12: ;
  goto ldv_38787;
  case 15: ;
  switch ((int )scb->extended_status) {
  case 240: ;
  if ((unsigned int )scb->bus != 0U) {
    errcode = 1;
  } else {
  }
  goto ldv_38795;
  case 242: ;
  if ((unsigned int )scb->cmd.dcdb.op_code == 149U || (unsigned int )scb->cmd.dcdb.op_code == 150U) {
    tapeDCDB = (IPS_DCDB_TABLE_TAPE *)(& scb->dcdb);
    transfer_len = tapeDCDB->transfer_length;
  } else {
    transfer_len = (unsigned int )scb->dcdb.transfer_length;
  }
  if ((unsigned int )scb->bus != 0U && scb->data_len > transfer_len) {
    errcode = 0;
    if ((unsigned int )*((scb->scsi_cmd)->cmnd) == 18U) {
      ips_scmd_buf_read(scb->scsi_cmd, (void *)(& inquiryData), 37U);
      if (((int )inquiryData.DeviceType & 31) == 0) {
        errcode = 3;
        goto ldv_38795;
      } else {
      }
    } else {
    }
  } else {
    errcode = 7;
  }
  goto ldv_38795;
  case 252: ;
  if ((unsigned int )scb->bus != 0U) {
    errcode = 0;
  } else {
  }
  goto ldv_38795;
  case 247: ;
  case 248:
  errcode = 8;
  goto ldv_38795;
  case 255: ;
  if ((unsigned int )scb->bus != 0U) {
    if ((unsigned int )scb->cmd.dcdb.op_code == 149U || (unsigned int )scb->cmd.dcdb.op_code == 150U) {
      tapeDCDB = (IPS_DCDB_TABLE_TAPE *)(& scb->dcdb);
      memcpy((void *)(scb->scsi_cmd)->sense_buffer, (void const *)(& tapeDCDB->sense_info),
               96UL);
    } else {
      memcpy((void *)(scb->scsi_cmd)->sense_buffer, (void const *)(& scb->dcdb.sense_info),
               96UL);
    }
    device_error = 2;
  } else {
  }
  errcode = 0;
  goto ldv_38795;
  default:
  errcode = 7;
  goto ldv_38795;
  }
  ldv_38795: ;
  }
  ldv_38787:
  (scb->scsi_cmd)->result = (errcode << 16) | device_error;
  return (1);
}
}
static int ips_send_wait(ips_ha_t *ha , ips_scb_t *scb , int timeout , int intr )
{
  int ret ;
  {
  if (intr != 99) {
    ha->waitflag = 1U;
    ha->cmd_in_progress = (uint32_t )scb->cdb[0];
  } else {
  }
  scb->callback = & ipsintr_blocking;
  ret = ips_send_cmd(ha, scb);
  if (ret == 4 || ret == 2) {
    return (ret);
  } else {
  }
  if (intr != 99) {
    ret = ips_wait(ha, timeout, intr);
  } else {
  }
  return (ret);
}
}
static void ips_scmd_buf_write(struct scsi_cmnd *scmd , void *data , unsigned int count )
{
  unsigned long flags ;
  int tmp ;
  {
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  scsi_sg_copy_from_buffer(scmd, data, (int )count);
  tmp = arch_irqs_disabled_flags(flags);
  if (tmp != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return;
}
}
static void ips_scmd_buf_read(struct scsi_cmnd *scmd , void *data , unsigned int count )
{
  unsigned long flags ;
  int tmp ;
  {
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  scsi_sg_copy_to_buffer(scmd, data, (int )count);
  tmp = arch_irqs_disabled_flags(flags);
  if (tmp != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return;
}
}
static int ips_send_cmd(ips_ha_t *ha , ips_scb_t *scb )
{
  int ret ;
  char *sp ;
  int device_error ;
  IPS_DCDB_TABLE_TAPE *tapeDCDB ;
  int TimeOut ;
  IPS_SCSI_INQ_DATA inquiry ;
  int tmp ;
  int tmp___0 ;
  {
  ret = 1;
  if ((unsigned long )scb->scsi_cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    if ((unsigned int )scb->bus != 0U) {
      if ((unsigned int )ha->waitflag == 1U && ha->cmd_in_progress == (uint32_t )scb->cdb[0]) {
        ha->waitflag = 0U;
      } else {
      }
      return (1);
    } else {
    }
  } else
  if ((unsigned int )scb->bus == 0U) {
    tmp = ips_is_passthru(scb->scsi_cmd);
    if (tmp == 0) {
      ret = 2;
      switch ((int )*((scb->scsi_cmd)->cmnd)) {
      case 30: ;
      case 1: ;
      case 25: ;
      case 16: ;
      case 17:
      (scb->scsi_cmd)->result = 458752;
      goto ldv_38861;
      case 27:
      (scb->scsi_cmd)->result = 0;
      case 0: ;
      case 18: ;
      if ((unsigned int )scb->target_id == 15U) {
        if ((unsigned int )*((scb->scsi_cmd)->cmnd) == 0U) {
          (scb->scsi_cmd)->result = 0;
        } else {
        }
        if ((unsigned int )*((scb->scsi_cmd)->cmnd) == 18U) {
          memset((void *)(& inquiry), 0, 37UL);
          inquiry.DeviceType = 3U;
          inquiry.DeviceTypeQualifier = 0U;
          inquiry.Version = 2U;
          inquiry.ResponseDataFormat = 2U;
          inquiry.AdditionalLength = 31U;
          inquiry.Flags[0] = 1U;
          inquiry.Flags[1] = 48U;
          strncpy((char *)(& inquiry.VendorId), "IBM     ", 8UL);
          strncpy((char *)(& inquiry.ProductId), "SERVERAID       ", 16UL);
          strncpy((char *)(& inquiry.ProductRevisionLevel), "1.00", 4UL);
          ips_scmd_buf_write(scb->scsi_cmd, (void *)(& inquiry), 37U);
          (scb->scsi_cmd)->result = 0;
        } else {
        }
      } else {
        scb->cmd.logical_info.op_code = 25U;
        scb->cmd.logical_info.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
        scb->cmd.logical_info.reserved = 0U;
        scb->cmd.logical_info.reserved2 = 0U;
        scb->data_len = 68U;
        scb->data_busaddr = ha->logical_drive_info_dma_addr;
        scb->flags = 0U;
        scb->cmd.logical_info.buffer_addr = (uint32_t )scb->data_busaddr;
        ret = 1;
      }
      goto ldv_38861;
      case 3:
      ips_reqsen(ha, scb);
      (scb->scsi_cmd)->result = 0;
      goto ldv_38861;
      case 8: ;
      case 10: ;
      if (scb->sg_len == 0U) {
        scb->cmd.basic_io.op_code = (unsigned int )*((scb->scsi_cmd)->cmnd) == 8U ? 2U : 3U;
        scb->cmd.basic_io.enhanced_sg = 0U;
        scb->cmd.basic_io.sg_addr = (unsigned int )scb->data_busaddr;
      } else {
        scb->cmd.basic_io.op_code = (unsigned int )*((scb->scsi_cmd)->cmnd) == 8U ? 130U : 131U;
        scb->cmd.basic_io.enhanced_sg = ha->flags & 1 ? 255U : 0U;
        scb->cmd.basic_io.sg_addr = scb->sg_busaddr;
      }
      scb->cmd.basic_io.segment_4G = 0U;
      scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
      scb->cmd.basic_io.log_drv = scb->target_id;
      scb->cmd.basic_io.sg_count = (uint8_t )scb->sg_len;
      if (scb->cmd.basic_io.lba != 0U) {
        le32_add_cpu(& scb->cmd.basic_io.lba, (u32 )scb->cmd.basic_io.sector_count);
      } else {
        scb->cmd.basic_io.lba = (uint32_t )(((((int )*((scb->scsi_cmd)->cmnd + 1UL) & 31) << 16) | ((int )*((scb->scsi_cmd)->cmnd + 2UL) << 8)) | (int )*((scb->scsi_cmd)->cmnd + 3UL));
      }
      scb->cmd.basic_io.sector_count = (unsigned short )(scb->data_len / 512U);
      if ((unsigned int )scb->cmd.basic_io.sector_count == 0U) {
        scb->cmd.basic_io.sector_count = 256U;
      } else {
      }
      ret = 1;
      goto ldv_38861;
      case 40: ;
      case 42: ;
      if (scb->sg_len == 0U) {
        scb->cmd.basic_io.op_code = (unsigned int )*((scb->scsi_cmd)->cmnd) == 40U ? 2U : 3U;
        scb->cmd.basic_io.enhanced_sg = 0U;
        scb->cmd.basic_io.sg_addr = (unsigned int )scb->data_busaddr;
      } else {
        scb->cmd.basic_io.op_code = (unsigned int )*((scb->scsi_cmd)->cmnd) == 40U ? 130U : 131U;
        scb->cmd.basic_io.enhanced_sg = ha->flags & 1 ? 255U : 0U;
        scb->cmd.basic_io.sg_addr = scb->sg_busaddr;
      }
      scb->cmd.basic_io.segment_4G = 0U;
      scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
      scb->cmd.basic_io.log_drv = scb->target_id;
      scb->cmd.basic_io.sg_count = (uint8_t )scb->sg_len;
      if (scb->cmd.basic_io.lba != 0U) {
        le32_add_cpu(& scb->cmd.basic_io.lba, (u32 )scb->cmd.basic_io.sector_count);
      } else {
        scb->cmd.basic_io.lba = (uint32_t )(((((int )*((scb->scsi_cmd)->cmnd + 2UL) << 24) | ((int )*((scb->scsi_cmd)->cmnd + 3UL) << 16)) | ((int )*((scb->scsi_cmd)->cmnd + 4UL) << 8)) | (int )*((scb->scsi_cmd)->cmnd + 5UL));
      }
      scb->cmd.basic_io.sector_count = (unsigned short )(scb->data_len / 512U);
      if ((unsigned int )scb->cmd.basic_io.sector_count == 0U) {
        (scb->scsi_cmd)->result = 0;
      } else {
        ret = 1;
      }
      goto ldv_38861;
      case 22: ;
      case 23:
      (scb->scsi_cmd)->result = 0;
      goto ldv_38861;
      case 26:
      scb->cmd.basic_io.op_code = 5U;
      scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
      scb->cmd.basic_io.segment_4G = 0U;
      scb->cmd.basic_io.enhanced_sg = 0U;
      scb->data_len = 196U;
      scb->cmd.basic_io.sg_addr = (uint32_t )ha->enq_busaddr;
      ret = 1;
      goto ldv_38861;
      case 37:
      scb->cmd.logical_info.op_code = 25U;
      scb->cmd.logical_info.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
      scb->cmd.logical_info.reserved = 0U;
      scb->cmd.logical_info.reserved2 = 0U;
      scb->cmd.logical_info.reserved3 = 0U;
      scb->data_len = 68U;
      scb->data_busaddr = ha->logical_drive_info_dma_addr;
      scb->flags = 0U;
      scb->cmd.logical_info.buffer_addr = (uint32_t )scb->data_busaddr;
      ret = 1;
      goto ldv_38861;
      case 29: ;
      case 7: ;
      case 4: ;
      case 43: ;
      case 47: ;
      case 55: ;
      case 60: ;
      case 59:
      (scb->scsi_cmd)->result = 0;
      goto ldv_38861;
      default:
      sp = (char *)(scb->scsi_cmd)->sense_buffer;
      *sp = 112;
      *(sp + 2UL) = 5;
      *(sp + 7UL) = 10;
      *(sp + 12UL) = 32;
      *(sp + 13UL) = 0;
      device_error = 2;
      (scb->scsi_cmd)->result = device_error;
      goto ldv_38861;
      }
      ldv_38861: ;
    } else {
    }
  } else {
  }
  if (ret == 2) {
    return (ret);
  } else {
  }
  if ((unsigned int )scb->bus != 0U) {
    if ((unsigned int )(ha->conf)->dev[(int )scb->bus + -1][(int )scb->target_id].ucState == 0U) {
      (scb->scsi_cmd)->result = 65536;
      return (2);
    } else {
    }
    ha->dcdb_active[(int )scb->bus + -1] = ha->dcdb_active[(int )scb->bus + -1] | (uint32_t )(1 << (int )scb->target_id);
    scb->cmd.dcdb.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
    scb->cmd.dcdb.dcdb_address = (scb->scb_busaddr + (unsigned int )((long )(& scb->dcdb))) - (unsigned int )((long )scb);
    scb->cmd.dcdb.reserved = 0U;
    scb->cmd.dcdb.reserved2 = 0U;
    scb->cmd.dcdb.reserved3 = 0U;
    scb->cmd.dcdb.segment_4G = 0U;
    scb->cmd.dcdb.enhanced_sg = 0U;
    TimeOut = (int )((scb->scsi_cmd)->request)->timeout;
    if (((ha->subsys)->param[4] & 1048576U) != 0U) {
      if (scb->sg_len == 0U) {
        scb->cmd.dcdb.op_code = 149U;
      } else {
        scb->cmd.dcdb.op_code = 150U;
        scb->cmd.dcdb.enhanced_sg = ha->flags & 1 ? 255U : 0U;
      }
      tapeDCDB = (IPS_DCDB_TABLE_TAPE *)(& scb->dcdb);
      tapeDCDB->device_address = (uint8_t )((int )((signed char )(((int )scb->bus + -1) << 4)) | (int )((signed char )scb->target_id));
      tapeDCDB->cmd_attribute = (uint8_t )((unsigned int )tapeDCDB->cmd_attribute | 128U);
      tapeDCDB->cmd_attribute = (unsigned int )tapeDCDB->cmd_attribute & 247U;
      if (TimeOut != 0) {
        if (TimeOut <= 2499) {
          tapeDCDB->cmd_attribute = (uint8_t )((unsigned int )tapeDCDB->cmd_attribute | 16U);
        } else
        if (TimeOut <= 14999) {
          tapeDCDB->cmd_attribute = (uint8_t )((unsigned int )tapeDCDB->cmd_attribute | 32U);
        } else
        if (TimeOut <= 299999) {
          tapeDCDB->cmd_attribute = (uint8_t )((unsigned int )tapeDCDB->cmd_attribute | 48U);
        } else {
        }
      } else {
      }
      tapeDCDB->cdb_length = (uint8_t )(scb->scsi_cmd)->cmd_len;
      tapeDCDB->reserved_for_LUN = 0U;
      tapeDCDB->transfer_length = scb->data_len;
      if ((unsigned int )scb->cmd.dcdb.op_code == 150U) {
        tapeDCDB->buffer_pointer = scb->sg_busaddr;
      } else {
        tapeDCDB->buffer_pointer = (unsigned int )scb->data_busaddr;
      }
      tapeDCDB->sg_count = (uint16_t )scb->sg_len;
      tapeDCDB->sense_length = 56U;
      tapeDCDB->scsi_status = 0U;
      tapeDCDB->reserved = 0U;
      memcpy((void *)(& tapeDCDB->scsi_cdb), (void const *)(scb->scsi_cmd)->cmnd,
               (size_t )(scb->scsi_cmd)->cmd_len);
    } else {
      if (scb->sg_len == 0U) {
        scb->cmd.dcdb.op_code = 4U;
      } else {
        scb->cmd.dcdb.op_code = 132U;
        scb->cmd.dcdb.enhanced_sg = ha->flags & 1 ? 255U : 0U;
      }
      scb->dcdb.device_address = (uint8_t )((int )((signed char )(((int )scb->bus + -1) << 4)) | (int )((signed char )scb->target_id));
      scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 128U);
      if (TimeOut != 0) {
        if (TimeOut <= 2499) {
          scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 16U);
        } else
        if (TimeOut <= 14999) {
          scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 32U);
        } else
        if (TimeOut <= 299999) {
          scb->dcdb.cmd_attribute = (uint8_t )((unsigned int )scb->dcdb.cmd_attribute | 48U);
        } else {
        }
      } else {
      }
      scb->dcdb.transfer_length = (uint16_t )scb->data_len;
      if (((int )scb->dcdb.cmd_attribute & 8) != 0) {
        scb->dcdb.transfer_length = 0U;
      } else {
      }
      if ((unsigned int )scb->cmd.dcdb.op_code == 132U) {
        scb->dcdb.buffer_pointer = scb->sg_busaddr;
      } else {
        scb->dcdb.buffer_pointer = (unsigned int )scb->data_busaddr;
      }
      scb->dcdb.cdb_length = (uint8_t )(scb->scsi_cmd)->cmd_len;
      scb->dcdb.sense_length = 64U;
      scb->dcdb.sg_count = (uint8_t )scb->sg_len;
      scb->dcdb.reserved = 0U;
      memcpy((void *)(& scb->dcdb.scsi_cdb), (void const *)(scb->scsi_cmd)->cmnd,
               (size_t )(scb->scsi_cmd)->cmd_len);
      scb->dcdb.scsi_status = 0U;
      scb->dcdb.reserved2[0] = 0U;
      scb->dcdb.reserved2[1] = 0U;
      scb->dcdb.reserved2[2] = 0U;
    }
  } else {
  }
  tmp___0 = (*(ha->func.issue))(ha, scb);
  return (tmp___0);
}
}
static void ips_chkstatus(ips_ha_t *ha , IPS_STATUS *pstatus )
{
  ips_scb_t *scb ;
  ips_stat_t *sp ;
  uint8_t basic_status ;
  uint8_t ext_status ;
  int errcode ;
  IPS_SCSI_INQ_DATA inquiryData ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  scb = ha->scbs + (unsigned long )pstatus->fields.command_id;
  basic_status = (uint8_t )pstatus->fields.basic_status;
  scb->basic_status = basic_status;
  ext_status = pstatus->fields.extended_status;
  scb->extended_status = ext_status;
  sp = & ha->sp;
  sp->residue_len = 0U;
  sp->scb_addr = (void *)scb;
  ips_removeq_scb(& ha->scb_activelist, scb);
  if ((unsigned long )scb->scsi_cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    return;
  } else {
  }
  if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    tmp = ips_is_passthru(scb->scsi_cmd);
    if (tmp != 0) {
      return;
    } else {
    }
  } else {
  }
  errcode = 0;
  if (((int )basic_status & 15) == 0 || ((int )basic_status & 15) == 1) {
    if ((unsigned int )scb->bus == 0U) {
      switch ((int )*((scb->scsi_cmd)->cmnd)) {
      case 30: ;
      case 1: ;
      case 25: ;
      case 16: ;
      case 17:
      errcode = 7;
      goto ldv_38899;
      case 27: ;
      goto ldv_38899;
      case 0:
      tmp___0 = ips_online(ha, scb);
      if (tmp___0 == 0) {
        errcode = 3;
      } else {
      }
      goto ldv_38899;
      case 18:
      tmp___1 = ips_online(ha, scb);
      if (tmp___1 != 0) {
        ips_inquiry(ha, scb);
      } else {
        errcode = 3;
      }
      goto ldv_38899;
      case 3:
      ips_reqsen(ha, scb);
      goto ldv_38899;
      case 8: ;
      case 10: ;
      case 40: ;
      case 42: ;
      case 22: ;
      case 23: ;
      goto ldv_38899;
      case 26:
      tmp___2 = ips_online(ha, scb);
      if (tmp___2 == 0) {
        errcode = 7;
      } else {
        tmp___3 = ips_msense(ha, scb);
        if (tmp___3 == 0) {
          errcode = 7;
        } else {
        }
      }
      goto ldv_38899;
      case 37:
      tmp___4 = ips_online(ha, scb);
      if (tmp___4 != 0) {
        ips_rdcap(ha, scb);
      } else {
        errcode = 3;
      }
      goto ldv_38899;
      case 29: ;
      case 7: ;
      goto ldv_38899;
      case 4:
      errcode = 7;
      goto ldv_38899;
      case 43: ;
      case 47: ;
      case 55: ;
      case 60: ;
      case 59: ;
      goto ldv_38899;
      default:
      errcode = 7;
      }
      ldv_38899:
      (scb->scsi_cmd)->result = errcode << 16;
    } else
    if ((unsigned int )*((scb->scsi_cmd)->cmnd) == 18U) {
      ips_scmd_buf_read(scb->scsi_cmd, (void *)(& inquiryData), 37U);
      if (((int )inquiryData.DeviceType & 31) == 0) {
        (scb->scsi_cmd)->result = 196608;
      } else {
      }
    } else {
    }
  } else {
    ips_map_status(ha, scb, sp);
  }
  return;
}
}
static int ips_online(ips_ha_t *ha , ips_scb_t *scb )
{
  {
  if ((unsigned int )scb->target_id > 7U) {
    return (0);
  } else {
  }
  if (((int )scb->basic_status & 15) > 1) {
    memset((void *)ha->logical_drive_info, 0, 68UL);
    return (0);
  } else {
  }
  if ((((unsigned int )(ha->logical_drive_info)->drive_info[(int )scb->target_id].state != 2U && (unsigned int )(ha->logical_drive_info)->drive_info[(int )scb->target_id].state != 0U) && (unsigned int )(ha->logical_drive_info)->drive_info[(int )scb->target_id].state != 36U) && (unsigned int )(ha->logical_drive_info)->drive_info[(int )scb->target_id].state != 6U) {
    return (1);
  } else {
    return (0);
  }
}
}
static int ips_inquiry(ips_ha_t *ha , ips_scb_t *scb )
{
  IPS_SCSI_INQ_DATA inquiry ;
  {
  memset((void *)(& inquiry), 0, 37UL);
  inquiry.DeviceType = 0U;
  inquiry.DeviceTypeQualifier = 0U;
  inquiry.Version = 2U;
  inquiry.ResponseDataFormat = 2U;
  inquiry.AdditionalLength = 31U;
  inquiry.Flags[0] = 1U;
  inquiry.Flags[1] = 50U;
  strncpy((char *)(& inquiry.VendorId), "IBM     ", 8UL);
  strncpy((char *)(& inquiry.ProductId), "SERVERAID       ", 16UL);
  strncpy((char *)(& inquiry.ProductRevisionLevel), "1.00", 4UL);
  ips_scmd_buf_write(scb->scsi_cmd, (void *)(& inquiry), 37U);
  return (1);
}
}
static int ips_rdcap(ips_ha_t *ha , ips_scb_t *scb )
{
  IPS_SCSI_CAPACITY cap ;
  unsigned int tmp ;
  __u32 tmp___0 ;
  {
  tmp = scsi_bufflen(scb->scsi_cmd);
  if (tmp <= 7U) {
    return (0);
  } else {
  }
  tmp___0 = __fswab32((ha->logical_drive_info)->drive_info[(int )scb->target_id].sector_count - 1U);
  cap.lba = tmp___0;
  cap.len = 131072U;
  ips_scmd_buf_write(scb->scsi_cmd, (void *)(& cap), 8U);
  return (1);
}
}
static int ips_msense(ips_ha_t *ha , ips_scb_t *scb )
{
  uint16_t heads ;
  uint16_t sectors ;
  uint32_t cylinders ;
  IPS_SCSI_MODE_PAGE_DATA mdata ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  if ((ha->enq)->ulDriveSize[(int )scb->target_id] > 4194304U && ((int )(ha->enq)->ucMiscFlag & 8) == 0) {
    heads = 254U;
    sectors = 63U;
  } else {
    heads = 128U;
    sectors = 32U;
  }
  cylinders = ((ha->enq)->ulDriveSize[(int )scb->target_id] - 1U) / (uint32_t )((int )heads * (int )sectors);
  memset((void *)(& mdata), 0, 44UL);
  mdata.hdr.BlockDescLength = 8U;
  switch ((int )*((scb->scsi_cmd)->cmnd + 2UL) & 63) {
  case 3:
  mdata.pdata.pg3.PageCode = 3U;
  mdata.pdata.pg3.PageLength = 24U;
  mdata.hdr.DataLength = (unsigned int )((int )mdata.hdr.BlockDescLength + (int )mdata.pdata.pg3.PageLength) + 3U;
  mdata.pdata.pg3.TracksPerZone = 0U;
  mdata.pdata.pg3.AltSectorsPerZone = 0U;
  mdata.pdata.pg3.AltTracksPerZone = 0U;
  mdata.pdata.pg3.AltTracksPerVolume = 0U;
  tmp = __fswab16((int )sectors);
  mdata.pdata.pg3.SectorsPerTrack = tmp;
  mdata.pdata.pg3.BytesPerSector = 2U;
  mdata.pdata.pg3.Interleave = 256U;
  mdata.pdata.pg3.TrackSkew = 0U;
  mdata.pdata.pg3.CylinderSkew = 0U;
  mdata.pdata.pg3.flags = 1U;
  goto ldv_38944;
  case 4:
  mdata.pdata.pg4.PageCode = 4U;
  mdata.pdata.pg4.PageLength = 26U;
  mdata.hdr.DataLength = (unsigned int )((int )mdata.hdr.BlockDescLength + (int )mdata.pdata.pg4.PageLength) + 3U;
  tmp___0 = __fswab16((int )((__u16 )(cylinders >> 8)));
  mdata.pdata.pg4.CylindersHigh = tmp___0;
  mdata.pdata.pg4.CylindersLow = (uint8_t )cylinders;
  mdata.pdata.pg4.Heads = (uint8_t )heads;
  mdata.pdata.pg4.WritePrecompHigh = 0U;
  mdata.pdata.pg4.WritePrecompLow = 0U;
  mdata.pdata.pg4.ReducedWriteCurrentHigh = 0U;
  mdata.pdata.pg4.ReducedWriteCurrentLow = 0U;
  mdata.pdata.pg4.StepRate = 256U;
  mdata.pdata.pg4.LandingZoneHigh = 0U;
  mdata.pdata.pg4.LandingZoneLow = 0U;
  mdata.pdata.pg4.flags = 0U;
  mdata.pdata.pg4.RotationalOffset = 0U;
  mdata.pdata.pg4.MediumRotationRate = 0U;
  goto ldv_38944;
  case 8:
  mdata.pdata.pg8.PageCode = 8U;
  mdata.pdata.pg8.PageLength = 12U;
  mdata.hdr.DataLength = (unsigned int )((int )mdata.hdr.BlockDescLength + (int )mdata.pdata.pg8.PageLength) + 3U;
  goto ldv_38944;
  default: ;
  return (0);
  }
  ldv_38944:
  ips_scmd_buf_write(scb->scsi_cmd, (void *)(& mdata), 44U);
  return (1);
}
}
static int ips_reqsen(ips_ha_t *ha , ips_scb_t *scb )
{
  IPS_SCSI_REQSEN reqsen ;
  {
  memset((void *)(& reqsen), 0, 18UL);
  reqsen.ResponseCode = 240U;
  reqsen.AdditionalLength = 10U;
  reqsen.AdditionalSenseCode = 0U;
  reqsen.AdditionalSenseCodeQual = 0U;
  ips_scmd_buf_write(scb->scsi_cmd, (void *)(& reqsen), 18U);
  return (1);
}
}
static void ips_free(ips_ha_t *ha )
{
  {
  if ((unsigned long )ha != (unsigned long )((ips_ha_t *)0)) {
    if ((unsigned long )ha->enq != (unsigned long )((IPS_ENQ *)0)) {
      pci_free_consistent(ha->pcidev, 196UL, (void *)ha->enq, ha->enq_busaddr);
      ha->enq = (IPS_ENQ *)0;
    } else {
    }
    kfree((void const *)ha->conf);
    ha->conf = (IPS_CONF *)0;
    if ((unsigned long )ha->adapt != (unsigned long )((IPS_ADAPTER *)0)) {
      pci_free_consistent(ha->pcidev, 576UL, (void *)ha->adapt, (dma_addr_t )(ha->adapt)->hw_status_start);
      ha->adapt = (IPS_ADAPTER *)0;
    } else {
    }
    if ((unsigned long )ha->logical_drive_info != (unsigned long )((IPS_LD_INFO *)0)) {
      pci_free_consistent(ha->pcidev, 68UL, (void *)ha->logical_drive_info, ha->logical_drive_info_dma_addr);
      ha->logical_drive_info = (IPS_LD_INFO *)0;
    } else {
    }
    kfree((void const *)ha->nvram);
    ha->nvram = (IPS_NVRAM_P5 *)0;
    kfree((void const *)ha->subsys);
    ha->subsys = (IPS_SUBSYS *)0;
    if ((unsigned long )ha->ioctl_data != (unsigned long )((char *)0)) {
      pci_free_consistent(ha->pcidev, (size_t )ha->ioctl_len, (void *)ha->ioctl_data,
                          ha->ioctl_busaddr);
      ha->ioctl_data = (char *)0;
      ha->ioctl_datasize = 0U;
      ha->ioctl_len = 0;
    } else {
    }
    ips_deallocatescbs(ha, (int )ha->max_cmds);
    if ((unsigned long )ha->mem_ptr != (unsigned long )((char *)0)) {
      iounmap((void volatile *)ha->ioremap_ptr);
      ha->ioremap_ptr = (char *)0;
      ha->mem_ptr = (char *)0;
    } else {
    }
    ha->mem_addr = 0U;
  } else {
  }
  return;
}
}
static int ips_deallocatescbs(ips_ha_t *ha , int cmds )
{
  {
  if ((unsigned long )ha->scbs != (unsigned long )((struct ips_scb *)0)) {
    pci_free_consistent(ha->pcidev, (ha->flags & 1 ? 272UL : 136UL) * (unsigned long )cmds,
                        (ha->scbs)->sg_list.list, (dma_addr_t )(ha->scbs)->sg_busaddr);
    pci_free_consistent(ha->pcidev, (unsigned long )cmds * 216UL, (void *)ha->scbs,
                        (dma_addr_t )(ha->scbs)->scb_busaddr);
    ha->scbs = (struct ips_scb *)0;
  } else {
  }
  return (1);
}
}
static int ips_allocatescbs(ips_ha_t *ha )
{
  ips_scb_t *scb_p ;
  IPS_SG_LIST ips_sg ;
  int i ;
  dma_addr_t command_dma ;
  dma_addr_t sg_dma ;
  void *tmp ;
  {
  tmp = pci_alloc_consistent(ha->pcidev, (unsigned long )ha->max_cmds * 216UL, & command_dma);
  ha->scbs = (struct ips_scb *)tmp;
  if ((unsigned long )ha->scbs == (unsigned long )((struct ips_scb *)0)) {
    return (0);
  } else {
  }
  ips_sg.list = pci_alloc_consistent(ha->pcidev, (ha->flags & 1 ? 272UL : 136UL) * (unsigned long )ha->max_cmds,
                                     & sg_dma);
  if ((unsigned long )ips_sg.list == (unsigned long )((void *)0)) {
    pci_free_consistent(ha->pcidev, (unsigned long )ha->max_cmds * 216UL, (void *)ha->scbs,
                        command_dma);
    return (0);
  } else {
  }
  memset((void *)ha->scbs, 0, (unsigned long )ha->max_cmds * 216UL);
  i = 0;
  goto ldv_38969;
  ldv_38968:
  scb_p = ha->scbs + (unsigned long )i;
  scb_p->scb_busaddr = (uint32_t )((unsigned long )i) * 216U + (uint32_t )command_dma;
  if (ha->flags & 1) {
    scb_p->sg_list.enh_list = ips_sg.enh_list + (unsigned long )(i * 17);
    scb_p->sg_busaddr = (ha->flags & 1 ? 272U : 136U) * (uint32_t )((unsigned long )i) + (uint32_t )sg_dma;
  } else {
    scb_p->sg_list.std_list = ips_sg.std_list + (unsigned long )(i * 17);
    scb_p->sg_busaddr = (ha->flags & 1 ? 272U : 136U) * (uint32_t )((unsigned long )i) + (uint32_t )sg_dma;
  }
  if ((uint32_t )i < ha->max_cmds - 1U) {
    scb_p->q_next = ha->scb_freelist;
    ha->scb_freelist = scb_p;
  } else {
  }
  i = i + 1;
  ldv_38969: ;
  if ((uint32_t )i < ha->max_cmds) {
    goto ldv_38968;
  } else {
  }
  return (1);
}
}
static void ips_init_scb(ips_ha_t *ha , ips_scb_t *scb )
{
  IPS_SG_LIST sg_list ;
  uint32_t cmd_busaddr ;
  uint32_t sg_busaddr ;
  {
  if ((unsigned long )scb == (unsigned long )((ips_scb_t *)0)) {
    return;
  } else {
  }
  sg_list.list = scb->sg_list.list;
  cmd_busaddr = scb->scb_busaddr;
  sg_busaddr = scb->sg_busaddr;
  memset((void *)scb, 0, 216UL);
  memset((void *)ha->dummy, 0, 24UL);
  (ha->dummy)->op_code = 255U;
  (ha->dummy)->ccsar = (unsigned int )(ha->adapt)->hw_status_start + 552U;
  (ha->dummy)->command_id = 128U;
  scb->scb_busaddr = cmd_busaddr;
  scb->sg_busaddr = sg_busaddr;
  scb->sg_list.list = sg_list.list;
  scb->cmd.basic_io.cccr = 16U;
  scb->cmd.basic_io.ccsar = (unsigned int )(ha->adapt)->hw_status_start + 552U;
  return;
}
}
static ips_scb_t *ips_getscb(ips_ha_t *ha )
{
  ips_scb_t *scb ;
  {
  scb = ha->scb_freelist;
  if ((unsigned long )scb == (unsigned long )((ips_scb_t *)0)) {
    return ((ips_scb_t *)0);
  } else {
  }
  ha->scb_freelist = scb->q_next;
  scb->flags = 0U;
  scb->q_next = (struct ips_scb *)0;
  ips_init_scb(ha, scb);
  return (scb);
}
}
static void ips_freescb(ips_ha_t *ha , ips_scb_t *scb )
{
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((scb->flags & 8U) != 0U) {
    scsi_dma_unmap(scb->scsi_cmd);
  } else
  if ((scb->flags & 16U) != 0U) {
    if ((unsigned long )scb->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      tmp___1 = ips_is_passthru(scb->scsi_cmd);
      if (tmp___1 == 0) {
        if ((unsigned int )(scb->scsi_cmd)->sc_data_direction != 3U) {
          tmp___0 = (int )(scb->scsi_cmd)->sc_data_direction;
        } else {
          tmp___0 = 0;
        }
      } else {
        tmp___0 = 0;
      }
    } else {
      tmp___0 = 0;
    }
    pci_unmap_single(ha->pcidev, scb->data_busaddr, (size_t )scb->data_len, tmp___0);
  } else {
  }
  if ((uint32_t )(((long )scb - (long )ha->scbs) / 216L) < ha->max_cmds - 1U) {
    scb->q_next = ha->scb_freelist;
    ha->scb_freelist = scb;
  } else {
  }
  return;
}
}
static int ips_isinit_copperhead(ips_ha_t *ha )
{
  uint8_t scpr ;
  uint8_t isr ;
  {
  isr = inb((int )(ha->io_addr + 8U));
  scpr = inb((int )(ha->io_addr + 5U));
  if ((int )((signed char )isr) >= 0 && ((int )scpr & 2) == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
static int ips_isinit_copperhead_memio(ips_ha_t *ha )
{
  uint8_t isr ;
  uint8_t scpr ;
  {
  isr = 0U;
  isr = readb((void const volatile *)ha->mem_ptr + 8U);
  scpr = readb((void const volatile *)ha->mem_ptr + 5U);
  if ((int )((signed char )isr) >= 0 && ((int )scpr & 2) == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
static int ips_isinit_morpheus(ips_ha_t *ha )
{
  uint32_t post ;
  uint32_t bits ;
  int tmp ;
  {
  tmp = ips_isintr_morpheus(ha);
  if (tmp != 0) {
    ips_flush_and_reset(ha);
  } else {
  }
  post = readl((void const volatile *)ha->mem_ptr + 24U);
  bits = readl((void const volatile *)ha->mem_ptr + 48U);
  if (post == 0U) {
    return (0);
  } else
  if ((bits & 3U) != 0U) {
    return (0);
  } else {
    return (1);
  }
}
}
static void ips_flush_and_reset(ips_ha_t *ha )
{
  ips_scb_t *scb ;
  int ret ;
  int time ;
  int done ;
  dma_addr_t command_dma ;
  void *tmp ;
  {
  tmp = pci_alloc_consistent(ha->pcidev, 216UL, & command_dma);
  scb = (ips_scb_t *)tmp;
  if ((unsigned long )scb != (unsigned long )((ips_scb_t *)0)) {
    memset((void *)scb, 0, 216UL);
    ips_init_scb(ha, scb);
    scb->scb_busaddr = (uint32_t )command_dma;
    scb->timeout = (uint32_t )ips_cmd_timeout;
    scb->cdb[0] = 10U;
    scb->cmd.flush_cache.op_code = 10U;
    scb->cmd.flush_cache.command_id = 128U;
    scb->cmd.flush_cache.state = 0U;
    scb->cmd.flush_cache.reserved = 0U;
    scb->cmd.flush_cache.reserved2 = 0U;
    scb->cmd.flush_cache.reserved3 = 0U;
    scb->cmd.flush_cache.reserved4 = 0U;
    ret = ips_send_cmd(ha, scb);
    if (ret == 1) {
      time = 60000;
      done = 0;
      goto ldv_39010;
      ldv_39009:
      done = ips_poll_for_flush_complete(ha);
      __const_udelay(4295000UL);
      time = time - 1;
      ldv_39010: ;
      if (time > 0 && done == 0) {
        goto ldv_39009;
      } else {
      }
    } else {
    }
  } else {
  }
  (*(ha->func.reset))(ha);
  pci_free_consistent(ha->pcidev, 216UL, (void *)scb, command_dma);
  return;
}
}
static int ips_poll_for_flush_complete(ips_ha_t *ha )
{
  IPS_STATUS cstatus ;
  uint32_t tmp ;
  {
  ldv_39017:
  tmp = (*(ha->func.statupd))(ha);
  cstatus.value = tmp;
  if ((unsigned int )cstatus.value == 4294967295U) {
    goto ldv_39016;
  } else {
  }
  if ((unsigned int )((unsigned char )cstatus.fields.command_id) == 128U) {
    return (1);
  } else {
  }
  goto ldv_39017;
  ldv_39016: ;
  return (0);
}
}
static void ips_enable_int_copperhead(ips_ha_t *ha )
{
  {
  outb((int )((unsigned int )((unsigned char )ha->io_addr) + 8U), 128);
  inb((int )(ha->io_addr + 8U));
  return;
}
}
static void ips_enable_int_copperhead_memio(ips_ha_t *ha )
{
  {
  writeb(128, (void volatile *)ha->mem_ptr + 8U);
  readb((void const volatile *)ha->mem_ptr + 8U);
  return;
}
}
static void ips_enable_int_morpheus(ips_ha_t *ha )
{
  uint32_t Oimr ;
  {
  Oimr = readl((void const volatile *)ha->mem_ptr + 52U);
  Oimr = Oimr & 4294967287U;
  writel(Oimr, (void volatile *)ha->mem_ptr + 52U);
  readl((void const volatile *)ha->mem_ptr + 52U);
  return;
}
}
static int ips_init_copperhead(ips_ha_t *ha )
{
  uint8_t Isr ;
  uint8_t Cbsp ;
  uint8_t PostByte[2U] ;
  uint8_t ConfigByte[2U] ;
  int i ;
  int j ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  {
  i = 0;
  goto ldv_39045;
  ldv_39044:
  j = 0;
  goto ldv_39043;
  ldv_39042:
  Isr = inb((int )(ha->io_addr + 8U));
  if (((int )Isr & 4) != 0) {
    goto ldv_39037;
  } else {
  }
  __ms = 1000UL;
  goto ldv_39040;
  ldv_39039:
  __const_udelay(4295000UL);
  ldv_39040:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39039;
  } else {
  }
  touch_nmi_watchdog();
  j = j + 1;
  ldv_39043: ;
  if (j <= 44) {
    goto ldv_39042;
  } else {
  }
  ldv_39037: ;
  if (j > 44) {
    return (0);
  } else {
  }
  PostByte[i] = inb((int )(ha->io_addr + 6U));
  outb((int )Isr, (int )(ha->io_addr + 8U));
  i = i + 1;
  ldv_39045: ;
  if (i <= 1) {
    goto ldv_39044;
  } else {
  }
  if ((int )((signed char )PostByte[0]) >= 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "reset controller fails (post status %x %x).\n",
               (int )PostByte[0], (int )PostByte[1]);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_39055;
  ldv_39054:
  j = 0;
  goto ldv_39053;
  ldv_39052:
  Isr = inb((int )(ha->io_addr + 8U));
  if (((int )Isr & 4) != 0) {
    goto ldv_39047;
  } else {
  }
  __ms___0 = 1000UL;
  goto ldv_39050;
  ldv_39049:
  __const_udelay(4295000UL);
  ldv_39050:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_39049;
  } else {
  }
  touch_nmi_watchdog();
  j = j + 1;
  ldv_39053: ;
  if (j <= 239) {
    goto ldv_39052;
  } else {
  }
  ldv_39047: ;
  if (j > 239) {
    return (0);
  } else {
  }
  ConfigByte[i] = inb((int )(ha->io_addr + 6U));
  outb((int )Isr, (int )(ha->io_addr + 8U));
  i = i + 1;
  ldv_39055: ;
  if (i <= 1) {
    goto ldv_39054;
  } else {
  }
  i = 0;
  goto ldv_39063;
  ldv_39062:
  Cbsp = inb((int )(ha->io_addr + 7U));
  if (((int )Cbsp & 1) == 0) {
    goto ldv_39057;
  } else {
  }
  __ms___1 = 1000UL;
  goto ldv_39060;
  ldv_39059:
  __const_udelay(4295000UL);
  ldv_39060:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_39059;
  } else {
  }
  touch_nmi_watchdog();
  i = i + 1;
  ldv_39063: ;
  if (i <= 239) {
    goto ldv_39062;
  } else {
  }
  ldv_39057: ;
  if (i > 239) {
    return (0);
  } else {
  }
  outl(4112U, (int )(ha->io_addr + 20U));
  outb(2, (int )(ha->io_addr + 5U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    outl(0U, (int )(ha->io_addr + 56U));
  } else {
  }
  outb(128, (int )(ha->io_addr + 8U));
  return (1);
}
}
static int ips_init_copperhead_memio(ips_ha_t *ha )
{
  uint8_t Isr ;
  uint8_t Cbsp ;
  uint8_t PostByte[2U] ;
  uint8_t ConfigByte[2U] ;
  int i ;
  int j ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  {
  Isr = 0U;
  i = 0;
  goto ldv_39081;
  ldv_39080:
  j = 0;
  goto ldv_39079;
  ldv_39078:
  Isr = readb((void const volatile *)ha->mem_ptr + 8U);
  if (((int )Isr & 4) != 0) {
    goto ldv_39073;
  } else {
  }
  __ms = 1000UL;
  goto ldv_39076;
  ldv_39075:
  __const_udelay(4295000UL);
  ldv_39076:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39075;
  } else {
  }
  touch_nmi_watchdog();
  j = j + 1;
  ldv_39079: ;
  if (j <= 44) {
    goto ldv_39078;
  } else {
  }
  ldv_39073: ;
  if (j > 44) {
    return (0);
  } else {
  }
  PostByte[i] = readb((void const volatile *)ha->mem_ptr + 6U);
  writeb((int )Isr, (void volatile *)ha->mem_ptr + 8U);
  i = i + 1;
  ldv_39081: ;
  if (i <= 1) {
    goto ldv_39080;
  } else {
  }
  if ((int )((signed char )PostByte[0]) >= 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "reset controller fails (post status %x %x).\n",
               (int )PostByte[0], (int )PostByte[1]);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_39091;
  ldv_39090:
  j = 0;
  goto ldv_39089;
  ldv_39088:
  Isr = readb((void const volatile *)ha->mem_ptr + 8U);
  if (((int )Isr & 4) != 0) {
    goto ldv_39083;
  } else {
  }
  __ms___0 = 1000UL;
  goto ldv_39086;
  ldv_39085:
  __const_udelay(4295000UL);
  ldv_39086:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_39085;
  } else {
  }
  touch_nmi_watchdog();
  j = j + 1;
  ldv_39089: ;
  if (j <= 239) {
    goto ldv_39088;
  } else {
  }
  ldv_39083: ;
  if (j > 239) {
    return (0);
  } else {
  }
  ConfigByte[i] = readb((void const volatile *)ha->mem_ptr + 6U);
  writeb((int )Isr, (void volatile *)ha->mem_ptr + 8U);
  i = i + 1;
  ldv_39091: ;
  if (i <= 1) {
    goto ldv_39090;
  } else {
  }
  i = 0;
  goto ldv_39099;
  ldv_39098:
  Cbsp = readb((void const volatile *)ha->mem_ptr + 7U);
  if (((int )Cbsp & 1) == 0) {
    goto ldv_39093;
  } else {
  }
  __ms___1 = 1000UL;
  goto ldv_39096;
  ldv_39095:
  __const_udelay(4295000UL);
  ldv_39096:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_39095;
  } else {
  }
  touch_nmi_watchdog();
  i = i + 1;
  ldv_39099: ;
  if (i <= 239) {
    goto ldv_39098;
  } else {
  }
  ldv_39093: ;
  if (i > 239) {
    return (0);
  } else {
  }
  writel(4112U, (void volatile *)ha->mem_ptr + 20U);
  writeb(2, (void volatile *)ha->mem_ptr + 5U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    writel(0U, (void volatile *)ha->mem_ptr + 56U);
  } else {
  }
  writeb(128, (void volatile *)ha->mem_ptr + 8U);
  return (1);
}
}
static int ips_init_morpheus(ips_ha_t *ha )
{
  uint32_t Post ;
  uint32_t Config ;
  uint32_t Isr ;
  uint32_t Oimr ;
  int i ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  {
  i = 0;
  goto ldv_39114;
  ldv_39113:
  Isr = readl((void const volatile *)ha->mem_ptr + 48U);
  if ((int )Isr & 1) {
    goto ldv_39108;
  } else {
  }
  __ms = 1000UL;
  goto ldv_39111;
  ldv_39110:
  __const_udelay(4295000UL);
  ldv_39111:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39110;
  } else {
  }
  touch_nmi_watchdog();
  i = i + 1;
  ldv_39114: ;
  if (i <= 44) {
    goto ldv_39113;
  } else {
  }
  ldv_39108: ;
  if (i > 44) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "timeout waiting for post.\n");
    return (0);
  } else {
  }
  Post = readl((void const volatile *)ha->mem_ptr + 24U);
  if (Post == 20224U) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Flashing Battery PIC, Please wait ...\n");
    Isr = 1U;
    writel(Isr, (void volatile *)ha->mem_ptr + 48U);
    i = 0;
    goto ldv_39121;
    ldv_39120:
    Post = readl((void const volatile *)ha->mem_ptr + 24U);
    if (Post != 20224U) {
      goto ldv_39115;
    } else {
    }
    __ms___0 = 1000UL;
    goto ldv_39118;
    ldv_39117:
    __const_udelay(4295000UL);
    ldv_39118:
    tmp___0 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_39117;
    } else {
    }
    touch_nmi_watchdog();
    i = i + 1;
    ldv_39121: ;
    if (i <= 119) {
      goto ldv_39120;
    } else {
    }
    ldv_39115: ;
    if (i > 119) {
      dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "timeout waiting for Battery PIC Flash\n");
      return (0);
    } else {
    }
  } else {
  }
  Isr = 1U;
  writel(Isr, (void volatile *)ha->mem_ptr + 48U);
  if (Post <= 32767U) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "reset controller fails (post status %x).\n",
               Post);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_39128;
  ldv_39127:
  Isr = readl((void const volatile *)ha->mem_ptr + 48U);
  if ((Isr & 2U) != 0U) {
    goto ldv_39122;
  } else {
  }
  __ms___1 = 1000UL;
  goto ldv_39125;
  ldv_39124:
  __const_udelay(4295000UL);
  ldv_39125:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_39124;
  } else {
  }
  touch_nmi_watchdog();
  i = i + 1;
  ldv_39128: ;
  if (i <= 239) {
    goto ldv_39127;
  } else {
  }
  ldv_39122: ;
  if (i > 239) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "timeout waiting for config.\n");
    return (0);
  } else {
  }
  Config = readl((void const volatile *)ha->mem_ptr + 28U);
  Isr = 2U;
  writel(Isr, (void volatile *)ha->mem_ptr + 48U);
  Oimr = readl((void const volatile *)ha->mem_ptr + 52U);
  Oimr = Oimr & 4294967287U;
  writel(Oimr, (void volatile *)ha->mem_ptr + 52U);
  if (Post == 61200U) {
    if (Config == 15U || Config == 9U) {
      ha->requires_esl = 1U;
    } else {
    }
  } else {
  }
  return (1);
}
}
static int ips_reset_copperhead(ips_ha_t *ha )
{
  int reset_counter ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  reset_counter = 0;
  goto ldv_39143;
  ldv_39142:
  reset_counter = reset_counter + 1;
  outb(128, (int )(ha->io_addr + 5U));
  __ms = 1000UL;
  goto ldv_39135;
  ldv_39134:
  __const_udelay(4295000UL);
  ldv_39135:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39134;
  } else {
  }
  touch_nmi_watchdog();
  outb(0, (int )(ha->io_addr + 5U));
  __ms___0 = 1000UL;
  goto ldv_39139;
  ldv_39138:
  __const_udelay(4295000UL);
  ldv_39139:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_39138;
  } else {
  }
  touch_nmi_watchdog();
  tmp___1 = (*(ha->func.init))(ha);
  if (tmp___1 != 0) {
    goto ldv_39141;
  } else
  if (reset_counter > 1) {
    return (0);
  } else {
  }
  ldv_39143: ;
  if (reset_counter <= 1) {
    goto ldv_39142;
  } else {
  }
  ldv_39141: ;
  return (1);
}
}
static int ips_reset_copperhead_memio(ips_ha_t *ha )
{
  int reset_counter ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  reset_counter = 0;
  goto ldv_39158;
  ldv_39157:
  reset_counter = reset_counter + 1;
  writeb(128, (void volatile *)ha->mem_ptr + 5U);
  __ms = 1000UL;
  goto ldv_39150;
  ldv_39149:
  __const_udelay(4295000UL);
  ldv_39150:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39149;
  } else {
  }
  touch_nmi_watchdog();
  writeb(0, (void volatile *)ha->mem_ptr + 5U);
  __ms___0 = 1000UL;
  goto ldv_39154;
  ldv_39153:
  __const_udelay(4295000UL);
  ldv_39154:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_39153;
  } else {
  }
  touch_nmi_watchdog();
  tmp___1 = (*(ha->func.init))(ha);
  if (tmp___1 != 0) {
    goto ldv_39156;
  } else
  if (reset_counter > 1) {
    return (0);
  } else {
  }
  ldv_39158: ;
  if (reset_counter <= 1) {
    goto ldv_39157;
  } else {
  }
  ldv_39156: ;
  return (1);
}
}
static int ips_reset_morpheus(ips_ha_t *ha )
{
  int reset_counter ;
  uint8_t junk ;
  unsigned long __ms ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  reset_counter = 0;
  goto ldv_39170;
  ldv_39169:
  reset_counter = reset_counter + 1;
  writel(2147483648U, (void volatile *)ha->mem_ptr + 32U);
  __ms = 5000UL;
  goto ldv_39166;
  ldv_39165:
  __const_udelay(4295000UL);
  ldv_39166:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_39165;
  } else {
  }
  touch_nmi_watchdog();
  pci_read_config_byte((struct pci_dev const *)ha->pcidev, 4, & junk);
  tmp___0 = (*(ha->func.init))(ha);
  if (tmp___0 != 0) {
    goto ldv_39168;
  } else
  if (reset_counter > 1) {
    return (0);
  } else {
  }
  ldv_39170: ;
  if (reset_counter <= 1) {
    goto ldv_39169;
  } else {
  }
  ldv_39168: ;
  return (1);
}
}
static void ips_statinit(ips_ha_t *ha )
{
  uint32_t phys_status_start ;
  {
  (ha->adapt)->p_status_start = (PIPS_STATUS )(& (ha->adapt)->status);
  (ha->adapt)->p_status_end = (PIPS_STATUS )(& (ha->adapt)->status) + 128U;
  (ha->adapt)->p_status_tail = (PIPS_STATUS )(& (ha->adapt)->status);
  phys_status_start = (ha->adapt)->hw_status_start;
  outl(phys_status_start, (int )(ha->io_addr + 44U));
  outl(phys_status_start + 516U, (int )(ha->io_addr + 40U));
  outl(phys_status_start + 4U, (int )(ha->io_addr + 32U));
  outl(phys_status_start, (int )(ha->io_addr + 36U));
  (ha->adapt)->hw_status_tail = phys_status_start;
  return;
}
}
static void ips_statinit_memio(ips_ha_t *ha )
{
  uint32_t phys_status_start ;
  {
  (ha->adapt)->p_status_start = (PIPS_STATUS )(& (ha->adapt)->status);
  (ha->adapt)->p_status_end = (PIPS_STATUS )(& (ha->adapt)->status) + 128U;
  (ha->adapt)->p_status_tail = (PIPS_STATUS )(& (ha->adapt)->status);
  phys_status_start = (ha->adapt)->hw_status_start;
  writel(phys_status_start, (void volatile *)ha->mem_ptr + 44U);
  writel(phys_status_start + 516U, (void volatile *)ha->mem_ptr + 40U);
  writel(phys_status_start + 4U, (void volatile *)ha->mem_ptr + 32U);
  writel(phys_status_start, (void volatile *)ha->mem_ptr + 36U);
  (ha->adapt)->hw_status_tail = phys_status_start;
  return;
}
}
static uint32_t ips_statupd_copperhead(ips_ha_t *ha )
{
  {
  if ((unsigned long )(ha->adapt)->p_status_tail != (unsigned long )(ha->adapt)->p_status_end) {
    (ha->adapt)->p_status_tail = (ha->adapt)->p_status_tail + 1;
    (ha->adapt)->hw_status_tail = (ha->adapt)->hw_status_tail + (uint32_t volatile )4U;
  } else {
    (ha->adapt)->p_status_tail = (ha->adapt)->p_status_start;
    (ha->adapt)->hw_status_tail = (ha->adapt)->hw_status_start;
  }
  outl((ha->adapt)->hw_status_tail, (int )(ha->io_addr + 36U));
  return ((uint32_t )((ha->adapt)->p_status_tail)->value);
}
}
static uint32_t ips_statupd_copperhead_memio(ips_ha_t *ha )
{
  {
  if ((unsigned long )(ha->adapt)->p_status_tail != (unsigned long )(ha->adapt)->p_status_end) {
    (ha->adapt)->p_status_tail = (ha->adapt)->p_status_tail + 1;
    (ha->adapt)->hw_status_tail = (ha->adapt)->hw_status_tail + (uint32_t volatile )4U;
  } else {
    (ha->adapt)->p_status_tail = (ha->adapt)->p_status_start;
    (ha->adapt)->hw_status_tail = (ha->adapt)->hw_status_start;
  }
  writel((ha->adapt)->hw_status_tail, (void volatile *)ha->mem_ptr + 36U);
  return ((uint32_t )((ha->adapt)->p_status_tail)->value);
}
}
static uint32_t ips_statupd_morpheus(ips_ha_t *ha )
{
  uint32_t val ;
  {
  val = readl((void const volatile *)ha->mem_ptr + 68U);
  return (val);
}
}
static int ips_issue_copperhead(ips_ha_t *ha , ips_scb_t *scb )
{
  uint32_t TimeOut ;
  uint32_t val ;
  {
  TimeOut = 0U;
  goto ldv_39197;
  ldv_39196:
  __const_udelay(4295000UL);
  TimeOut = TimeOut + 1U;
  if (TimeOut > 1999U) {
    if ((val & 2U) == 0U) {
      goto ldv_39195;
    } else {
    }
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "ips_issue val [0x%x].\n",
               val);
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "ips_issue semaphore chk timeout.\n");
    return (4);
  } else {
  }
  ldv_39197:
  val = inl((int )(ha->io_addr + 20U));
  if ((val & 8U) != 0U) {
    goto ldv_39196;
  } else {
  }
  ldv_39195:
  outl(scb->scb_busaddr, (int )(ha->io_addr + 16U));
  outw(4122, (int )(ha->io_addr + 20U));
  return (1);
}
}
static int ips_issue_copperhead_memio(ips_ha_t *ha , ips_scb_t *scb )
{
  uint32_t TimeOut ;
  uint32_t val ;
  {
  TimeOut = 0U;
  goto ldv_39206;
  ldv_39205:
  __const_udelay(4295000UL);
  TimeOut = TimeOut + 1U;
  if (TimeOut > 1999U) {
    if ((val & 2U) == 0U) {
      goto ldv_39204;
    } else {
    }
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "ips_issue val [0x%x].\n",
               val);
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "ips_issue semaphore chk timeout.\n");
    return (4);
  } else {
  }
  ldv_39206:
  val = readl((void const volatile *)ha->mem_ptr + 20U);
  if ((val & 8U) != 0U) {
    goto ldv_39205;
  } else {
  }
  ldv_39204:
  writel(scb->scb_busaddr, (void volatile *)ha->mem_ptr + 16U);
  writel(4122U, (void volatile *)ha->mem_ptr + 20U);
  return (1);
}
}
static int ips_issue_i2o(ips_ha_t *ha , ips_scb_t *scb )
{
  {
  outl(scb->scb_busaddr, (int )(ha->io_addr + 64U));
  return (1);
}
}
static int ips_issue_i2o_memio(ips_ha_t *ha , ips_scb_t *scb )
{
  {
  writel(scb->scb_busaddr, (void volatile *)ha->mem_ptr + 64U);
  return (1);
}
}
static int ips_isintr_copperhead(ips_ha_t *ha )
{
  uint8_t Isr ;
  {
  Isr = inb((int )(ha->io_addr + 8U));
  if ((unsigned int )Isr == 255U) {
    return (0);
  } else {
  }
  if ((int )Isr & 1) {
    return (1);
  } else
  if (((int )Isr & 6) != 0) {
    outb((int )Isr, (int )(ha->io_addr + 8U));
  } else {
  }
  return (0);
}
}
static int ips_isintr_copperhead_memio(ips_ha_t *ha )
{
  uint8_t Isr ;
  {
  Isr = readb((void const volatile *)ha->mem_ptr + 8U);
  if ((unsigned int )Isr == 255U) {
    return (0);
  } else {
  }
  if ((int )Isr & 1) {
    return (1);
  } else
  if (((int )Isr & 6) != 0) {
    writeb((int )Isr, (void volatile *)ha->mem_ptr + 8U);
  } else {
  }
  return (0);
}
}
static int ips_isintr_morpheus(ips_ha_t *ha )
{
  uint32_t Isr ;
  {
  Isr = readl((void const volatile *)ha->mem_ptr + 48U);
  if ((Isr & 8U) != 0U) {
    return (1);
  } else {
    return (0);
  }
}
}
static int ips_wait(ips_ha_t *ha , int time , int intr )
{
  int ret ;
  int done ;
  {
  ret = 4;
  done = 0;
  time = time * 1000;
  goto ldv_39236;
  ldv_39235: ;
  if (intr == 0) {
    if ((unsigned int )ha->waitflag == 0U) {
      ret = 1;
      done = 1;
      goto ldv_39234;
    } else {
    }
  } else
  if (intr == 1) {
    if ((unsigned int )ha->waitflag == 0U) {
      ret = 1;
      done = 1;
      goto ldv_39234;
    } else {
    }
    (*(ha->func.intr))(ha);
  } else {
  }
  __const_udelay(4295000UL);
  time = time - 1;
  ldv_39236: ;
  if (time > 0 && done == 0) {
    goto ldv_39235;
  } else {
  }
  ldv_39234: ;
  return (ret);
}
}
static int ips_write_driver_status(ips_ha_t *ha , int intr )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = ips_readwrite_page5(ha, 0, intr);
  if (tmp == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to read NVRAM page 5.\n");
    return (0);
  } else {
  }
  if ((ha->nvram)->signature != 4292721561U) {
    (ha->nvram)->signature = 4292721561U;
  } else {
  }
  ips_get_bios_version(ha, intr);
  (ha->nvram)->operating_system = 7U;
  (ha->nvram)->adapter_type = ha->ad_type;
  strncpy((char *)(& (ha->nvram)->driver_high), "7.12", 4UL);
  strncpy((char *)(& (ha->nvram)->driver_low), ".05 ", 4UL);
  strncpy((char *)(& (ha->nvram)->bios_high), (char const *)(& ha->bios_version),
          4UL);
  strncpy((char *)(& (ha->nvram)->bios_low), (char const *)(& ha->bios_version) + 4U,
          4UL);
  (ha->nvram)->versioning = 0U;
  tmp___0 = ips_readwrite_page5(ha, 1, intr);
  if (tmp___0 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "unable to write NVRAM page 5.\n");
    return (0);
  } else {
  }
  ha->slot_num = (ha->nvram)->adapter_slot;
  return (1);
}
}
static int ips_read_adapter_status(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  int ret ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 5U;
  scb->cmd.basic_io.op_code = 5U;
  scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.basic_io.sg_count = 0U;
  scb->cmd.basic_io.lba = 0U;
  scb->cmd.basic_io.sector_count = 0U;
  scb->cmd.basic_io.log_drv = 0U;
  scb->data_len = 196U;
  scb->cmd.basic_io.sg_addr = (uint32_t )ha->enq_busaddr;
  ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    return (0);
  } else {
  }
  return (1);
}
}
static int ips_read_subsystem_parameters(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  int ret ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 64U;
  scb->cmd.basic_io.op_code = 64U;
  scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.basic_io.sg_count = 0U;
  scb->cmd.basic_io.lba = 0U;
  scb->cmd.basic_io.sector_count = 0U;
  scb->cmd.basic_io.log_drv = 0U;
  scb->data_len = 512U;
  scb->cmd.basic_io.sg_addr = (uint32_t )ha->ioctl_busaddr;
  ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    return (0);
  } else {
  }
  memcpy((void *)ha->subsys, (void const *)ha->ioctl_data, 512UL);
  return (1);
}
}
static int ips_read_config(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  int i ;
  int ret ;
  {
  i = 0;
  goto ldv_39261;
  ldv_39260:
  (ha->conf)->init_id[i] = 7U;
  i = i + 1;
  ldv_39261: ;
  if (i <= 3) {
    goto ldv_39260;
  } else {
  }
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 56U;
  scb->cmd.basic_io.op_code = 56U;
  scb->cmd.basic_io.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->data_len = 4508U;
  scb->cmd.basic_io.sg_addr = (uint32_t )ha->ioctl_busaddr;
  ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    memset((void *)ha->conf, 0, 4508UL);
    i = 0;
    goto ldv_39264;
    ldv_39263:
    (ha->conf)->init_id[i] = 7U;
    i = i + 1;
    ldv_39264: ;
    if (i <= 3) {
      goto ldv_39263;
    } else {
    }
    if (((int )scb->basic_status & 15) == 12) {
      return (1);
    } else {
    }
    return (0);
  } else {
  }
  memcpy((void *)ha->conf, (void const *)ha->ioctl_data, 4508UL);
  return (1);
}
}
static int ips_readwrite_page5(ips_ha_t *ha , int write , int intr )
{
  ips_scb_t *scb ;
  int ret ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 188U;
  scb->cmd.nvram.op_code = 188U;
  scb->cmd.nvram.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.nvram.page = 5U;
  scb->cmd.nvram.write = (uint8_t )write;
  scb->cmd.nvram.reserved = 0U;
  scb->cmd.nvram.reserved2 = 0U;
  scb->data_len = 128U;
  scb->cmd.nvram.buffer_addr = (uint32_t )ha->ioctl_busaddr;
  if (write != 0) {
    memcpy((void *)ha->ioctl_data, (void const *)ha->nvram, 128UL);
  } else {
  }
  ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    memset((void *)ha->nvram, 0, 128UL);
    return (0);
  } else {
  }
  if (write == 0) {
    memcpy((void *)ha->nvram, (void const *)ha->ioctl_data, 128UL);
  } else {
  }
  return (1);
}
}
static int ips_clear_adapter(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  int ret ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_reset_timeout;
  scb->cdb[0] = 88U;
  scb->cmd.config_sync.op_code = 88U;
  scb->cmd.config_sync.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.config_sync.channel = 0U;
  scb->cmd.config_sync.source_target = 48U;
  scb->cmd.config_sync.reserved = 0U;
  scb->cmd.config_sync.reserved2 = 0U;
  scb->cmd.config_sync.reserved3 = 0U;
  ret = ips_send_wait(ha, scb, ips_reset_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    return (0);
  } else {
  }
  ips_init_scb(ha, scb);
  scb->cdb[0] = 23U;
  scb->timeout = (uint32_t )ips_reset_timeout;
  scb->cmd.unlock_stripe.op_code = 23U;
  scb->cmd.unlock_stripe.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.unlock_stripe.log_drv = 0U;
  scb->cmd.unlock_stripe.control = 255U;
  scb->cmd.unlock_stripe.reserved = 0U;
  scb->cmd.unlock_stripe.reserved2 = 0U;
  scb->cmd.unlock_stripe.reserved3 = 0U;
  ret = ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  if ((ret == 4 || ret == 2) || ((int )scb->basic_status & 15) > 1) {
    return (0);
  } else {
  }
  return (1);
}
}
static void ips_ffdc_reset(ips_ha_t *ha , int intr )
{
  ips_scb_t *scb ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 215U;
  scb->cmd.ffdc.op_code = 215U;
  scb->cmd.ffdc.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.ffdc.reset_count = (uint8_t )ha->reset_count;
  scb->cmd.ffdc.reset_type = 128U;
  ips_fix_ffdc_time(ha, scb, ha->last_ffdc);
  ips_send_wait(ha, scb, ips_cmd_timeout, intr);
  return;
}
}
static void ips_ffdc_time(ips_ha_t *ha )
{
  ips_scb_t *scb ;
  {
  scb = ha->scbs + (unsigned long )(ha->max_cmds - 1U);
  ips_init_scb(ha, scb);
  scb->timeout = (uint32_t )ips_cmd_timeout;
  scb->cdb[0] = 215U;
  scb->cmd.ffdc.op_code = 215U;
  scb->cmd.ffdc.command_id = (uint8_t )(((long )scb - (long )ha->scbs) / 216L);
  scb->cmd.ffdc.reset_count = 0U;
  scb->cmd.ffdc.reset_type = 0U;
  ips_fix_ffdc_time(ha, scb, ha->last_ffdc);
  ips_send_wait(ha, scb, ips_cmd_timeout, 99);
  return;
}
}
static void ips_fix_ffdc_time(ips_ha_t *ha , ips_scb_t *scb , time_t current_time )
{
  long days ;
  long rem ;
  int i ;
  int year ;
  int yleap ;
  int year_lengths[2U] ;
  int month_lengths[12U][2U] ;
  int newy ;
  {
  year_lengths[0] = 365;
  year_lengths[1] = 366;
  month_lengths[0][0] = 31;
  month_lengths[0][1] = 31;
  month_lengths[1][0] = 28;
  month_lengths[1][1] = 29;
  month_lengths[2][0] = 31;
  month_lengths[2][1] = 31;
  month_lengths[3][0] = 30;
  month_lengths[3][1] = 30;
  month_lengths[4][0] = 31;
  month_lengths[4][1] = 31;
  month_lengths[5][0] = 30;
  month_lengths[5][1] = 30;
  month_lengths[6][0] = 31;
  month_lengths[6][1] = 31;
  month_lengths[7][0] = 31;
  month_lengths[7][1] = 31;
  month_lengths[8][0] = 30;
  month_lengths[8][1] = 30;
  month_lengths[9][0] = 31;
  month_lengths[9][1] = 31;
  month_lengths[10][0] = 30;
  month_lengths[10][1] = 30;
  month_lengths[11][0] = 31;
  month_lengths[11][1] = 31;
  days = current_time / 86400L;
  rem = current_time % 86400L;
  scb->cmd.ffdc.hour = (uint8_t )(rem / 3600L);
  rem = rem % 3600L;
  scb->cmd.ffdc.minute = (uint8_t )(rem / 60L);
  scb->cmd.ffdc.second = (uint8_t )(rem % 60L);
  year = 1970;
  goto ldv_39302;
  ldv_39301:
  newy = (int )((unsigned int )(days / 365L) + (unsigned int )year);
  if (days < 0L) {
    newy = newy - 1;
  } else {
  }
  days = days - (long )(((newy - year) * 365 + (((newy + -1) / 4 - (newy + -1) / 100) + (newy + -1) / 400)) + (((year + -1) / 100 - (year + -1) / 4) - (year + -1) / 400));
  year = newy;
  ldv_39302: ;
  if (days < 0L) {
    goto ldv_39301;
  } else {
    yleap = ((unsigned int )year & 3U) == 0U && (year % 100 != 0 || year % 400 == 0);
    if ((long )year_lengths[yleap] <= days) {
      goto ldv_39301;
    } else {
      goto ldv_39303;
    }
  }
  ldv_39303:
  scb->cmd.ffdc.yearH = (uint8_t )(year / 100);
  scb->cmd.ffdc.yearL = (uint8_t )(year % 100);
  i = 0;
  goto ldv_39305;
  ldv_39304:
  days = days - (long )month_lengths[i][yleap];
  i = i + 1;
  ldv_39305: ;
  if ((long )month_lengths[i][yleap] <= days) {
    goto ldv_39304;
  } else {
  }
  scb->cmd.ffdc.month = (unsigned int )((uint8_t )i) + 1U;
  scb->cmd.ffdc.day = (unsigned int )((uint8_t )days) + 1U;
  return;
}
}
static int ips_erase_bios(ips_ha_t *ha )
{
  int timeout ;
  uint8_t status ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  {
  status = 0U;
  status = 0U;
  outl(0U, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(80, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(32, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(208, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(112, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  timeout = 80000;
  goto ldv_39318;
  ldv_39317: ;
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    outl(0U, (int )(ha->io_addr + 24U));
    __const_udelay(107375UL);
  } else {
  }
  status = inb((int )(ha->io_addr + 28U));
  if ((int )((signed char )status) < 0) {
    goto ldv_39312;
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_39315;
    ldv_39314:
    __const_udelay(4295000UL);
    ldv_39315:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_39314;
    } else {
    }
  }
  touch_nmi_watchdog();
  timeout = timeout - 1;
  ldv_39318: ;
  if (timeout > 0) {
    goto ldv_39317;
  } else {
  }
  ldv_39312: ;
  if (timeout <= 0) {
    outb(176, (int )(ha->io_addr + 28U));
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    timeout = 10000;
    goto ldv_39325;
    ldv_39324: ;
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      outl(0U, (int )(ha->io_addr + 24U));
      __const_udelay(107375UL);
    } else {
    }
    status = inb((int )(ha->io_addr + 28U));
    if (((int )status & 192) != 0) {
      goto ldv_39319;
    } else {
    }
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms___0 = 1UL;
      goto ldv_39322;
      ldv_39321:
      __const_udelay(4295000UL);
      ldv_39322:
      tmp___0 = __ms___0;
      __ms___0 = __ms___0 - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_39321;
      } else {
      }
    }
    touch_nmi_watchdog();
    timeout = timeout - 1;
    ldv_39325: ;
    if (timeout > 0) {
      goto ldv_39324;
    } else {
    }
    ldv_39319: ;
    return (1);
  } else {
  }
  if (((int )status & 8) != 0) {
    return (1);
  } else {
  }
  if (((int )status & 48) != 0) {
    return (1);
  } else {
  }
  outb(80, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(255, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  return (0);
}
}
static int ips_erase_bios_memio(ips_ha_t *ha )
{
  int timeout ;
  uint8_t status ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  {
  status = 0U;
  writel(0U, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(80, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(32, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(208, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(112, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  timeout = 80000;
  goto ldv_39337;
  ldv_39336: ;
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    writel(0U, (void volatile *)ha->mem_ptr + 24U);
    __const_udelay(107375UL);
  } else {
  }
  status = readb((void const volatile *)ha->mem_ptr + 28U);
  if ((int )((signed char )status) < 0) {
    goto ldv_39331;
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_39334;
    ldv_39333:
    __const_udelay(4295000UL);
    ldv_39334:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_39333;
    } else {
    }
  }
  touch_nmi_watchdog();
  timeout = timeout - 1;
  ldv_39337: ;
  if (timeout > 0) {
    goto ldv_39336;
  } else {
  }
  ldv_39331: ;
  if (timeout <= 0) {
    writeb(176, (void volatile *)ha->mem_ptr + 28U);
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    timeout = 10000;
    goto ldv_39344;
    ldv_39343: ;
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      writel(0U, (void volatile *)ha->mem_ptr + 24U);
      __const_udelay(107375UL);
    } else {
    }
    status = readb((void const volatile *)ha->mem_ptr + 28U);
    if (((int )status & 192) != 0) {
      goto ldv_39338;
    } else {
    }
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms___0 = 1UL;
      goto ldv_39341;
      ldv_39340:
      __const_udelay(4295000UL);
      ldv_39341:
      tmp___0 = __ms___0;
      __ms___0 = __ms___0 - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_39340;
      } else {
      }
    }
    touch_nmi_watchdog();
    timeout = timeout - 1;
    ldv_39344: ;
    if (timeout > 0) {
      goto ldv_39343;
    } else {
    }
    ldv_39338: ;
    return (1);
  } else {
  }
  if (((int )status & 8) != 0) {
    return (1);
  } else {
  }
  if (((int )status & 48) != 0) {
    return (1);
  } else {
  }
  writeb(80, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(255, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  return (0);
}
}
static int ips_program_bios(ips_ha_t *ha , char *buffer , uint32_t buffersize , uint32_t offset )
{
  int i ;
  int timeout ;
  uint8_t status ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  status = 0U;
  status = 0U;
  i = 0;
  goto ldv_39362;
  ldv_39361:
  outl((uint32_t )i + offset, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(64, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb((int )((unsigned char )*(buffer + (unsigned long )i)), (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  timeout = 1000;
  goto ldv_39360;
  ldv_39359: ;
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    outl(0U, (int )(ha->io_addr + 24U));
    __const_udelay(107375UL);
  } else {
  }
  status = inb((int )(ha->io_addr + 28U));
  if ((int )((signed char )status) < 0) {
    goto ldv_39354;
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_39357;
    ldv_39356:
    __const_udelay(4295000UL);
    ldv_39357:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_39356;
    } else {
    }
  }
  touch_nmi_watchdog();
  timeout = timeout - 1;
  ldv_39360: ;
  if (timeout > 0) {
    goto ldv_39359;
  } else {
  }
  ldv_39354: ;
  if (timeout == 0) {
    outl(0U, (int )(ha->io_addr + 24U));
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    outb(255, (int )(ha->io_addr + 28U));
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    return (1);
  } else {
  }
  if (((int )status & 24) != 0) {
    outl(0U, (int )(ha->io_addr + 24U));
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    outb(255, (int )(ha->io_addr + 28U));
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    return (1);
  } else {
  }
  i = i + 1;
  ldv_39362: ;
  if ((uint32_t )i < buffersize) {
    goto ldv_39361;
  } else {
  }
  outl(0U, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  outb(255, (int )(ha->io_addr + 28U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  return (0);
}
}
static int ips_program_bios_memio(ips_ha_t *ha , char *buffer , uint32_t buffersize ,
                                  uint32_t offset )
{
  int i ;
  int timeout ;
  uint8_t status ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  status = 0U;
  status = 0U;
  i = 0;
  goto ldv_39381;
  ldv_39380:
  writel((uint32_t )i + offset, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(64, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb((int )((unsigned char )*(buffer + (unsigned long )i)), (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  timeout = 1000;
  goto ldv_39379;
  ldv_39378: ;
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    writel(0U, (void volatile *)ha->mem_ptr + 24U);
    __const_udelay(107375UL);
  } else {
  }
  status = readb((void const volatile *)ha->mem_ptr + 28U);
  if ((int )((signed char )status) < 0) {
    goto ldv_39373;
  } else {
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_39376;
    ldv_39375:
    __const_udelay(4295000UL);
    ldv_39376:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_39375;
    } else {
    }
  }
  touch_nmi_watchdog();
  timeout = timeout - 1;
  ldv_39379: ;
  if (timeout > 0) {
    goto ldv_39378;
  } else {
  }
  ldv_39373: ;
  if (timeout == 0) {
    writel(0U, (void volatile *)ha->mem_ptr + 24U);
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    writeb(255, (void volatile *)ha->mem_ptr + 28U);
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    return (1);
  } else {
  }
  if (((int )status & 24) != 0) {
    writel(0U, (void volatile *)ha->mem_ptr + 24U);
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    writeb(255, (void volatile *)ha->mem_ptr + 28U);
    if ((unsigned int )(ha->pcidev)->revision == 16U) {
      __const_udelay(107375UL);
    } else {
    }
    return (1);
  } else {
  }
  i = i + 1;
  ldv_39381: ;
  if ((uint32_t )i < buffersize) {
    goto ldv_39380;
  } else {
  }
  writel(0U, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  writeb(255, (void volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  return (0);
}
}
static int ips_verify_bios(ips_ha_t *ha , char *buffer , uint32_t buffersize , uint32_t offset )
{
  uint8_t checksum ;
  int i ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  outl(0U, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp = inb((int )(ha->io_addr + 28U));
  if ((unsigned int )tmp != 85U) {
    return (1);
  } else {
  }
  outl(1U, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp___0 = inb((int )(ha->io_addr + 28U));
  if ((unsigned int )tmp___0 != 170U) {
    return (1);
  } else {
  }
  checksum = 255U;
  i = 2;
  goto ldv_39392;
  ldv_39391:
  outl((uint32_t )i + offset, (int )(ha->io_addr + 24U));
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp___1 = inb((int )(ha->io_addr + 28U));
  checksum = (int )tmp___1 + (int )checksum;
  i = i + 1;
  ldv_39392: ;
  if ((uint32_t )i < buffersize) {
    goto ldv_39391;
  } else {
  }
  if ((unsigned int )checksum != 0U) {
    return (1);
  } else {
    return (0);
  }
}
}
static int ips_verify_bios_memio(ips_ha_t *ha , char *buffer , uint32_t buffersize ,
                                 uint32_t offset )
{
  uint8_t checksum ;
  int i ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  writel(0U, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp = readb((void const volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )tmp != 85U) {
    return (1);
  } else {
  }
  writel(1U, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp___0 = readb((void const volatile *)ha->mem_ptr + 28U);
  if ((unsigned int )tmp___0 != 170U) {
    return (1);
  } else {
  }
  checksum = 255U;
  i = 2;
  goto ldv_39403;
  ldv_39402:
  writel((uint32_t )i + offset, (void volatile *)ha->mem_ptr + 24U);
  if ((unsigned int )(ha->pcidev)->revision == 16U) {
    __const_udelay(107375UL);
  } else {
  }
  tmp___1 = readb((void const volatile *)ha->mem_ptr + 28U);
  checksum = (int )tmp___1 + (int )checksum;
  i = i + 1;
  ldv_39403: ;
  if ((uint32_t )i < buffersize) {
    goto ldv_39402;
  } else {
  }
  if ((unsigned int )checksum != 0U) {
    return (1);
  } else {
    return (0);
  }
}
}
static int ips_abort_init(ips_ha_t *ha , int index )
{
  {
  ha->active = 0U;
  ips_free(ha);
  ips_ha[index] = (ips_ha_t *)0;
  ips_sh[index] = (struct Scsi_Host *)0;
  return (-1);
}
}
static void ips_shift_controllers(int lowindex , int highindex )
{
  ips_ha_t *ha_sav ;
  struct Scsi_Host *sh_sav ;
  int i ;
  {
  ha_sav = ips_ha[highindex];
  sh_sav = ips_sh[highindex];
  i = highindex;
  goto ldv_39417;
  ldv_39416:
  ips_ha[i] = ips_ha[i + -1];
  ips_sh[i] = ips_sh[i + -1];
  (ips_ha[i])->host_num = (uint16_t )i;
  i = i - 1;
  ldv_39417: ;
  if (i > lowindex) {
    goto ldv_39416;
  } else {
  }
  ha_sav->host_num = (uint16_t )lowindex;
  ips_ha[lowindex] = ha_sav;
  ips_sh[lowindex] = sh_sav;
  return;
}
}
static void ips_order_controllers(void)
{
  int i ;
  int j ;
  int tmp ;
  int position ;
  IPS_NVRAM_P5 *nvram ;
  {
  position = 0;
  if ((unsigned long )ips_ha[0] == (unsigned long )((ips_ha_t *)0)) {
    return;
  } else {
  }
  nvram = (ips_ha[0])->nvram;
  if ((unsigned int )nvram->adapter_order[0] != 0U) {
    i = 1;
    goto ldv_39450;
    ldv_39449:
    j = position;
    goto ldv_39447;
    ldv_39446: ;
    switch ((int )(ips_ha[j])->ad_type) {
    case 14: ;
    case 18: ;
    if ((unsigned int )nvram->adapter_order[i] == 77U) {
      ips_shift_controllers(position, j);
      position = position + 1;
    } else {
    }
    goto ldv_39429;
    case 9: ;
    case 8: ;
    case 10: ;
    case 11: ;
    if ((unsigned int )nvram->adapter_order[i] == 78U) {
      ips_shift_controllers(position, j);
      position = position + 1;
    } else {
    }
    goto ldv_39429;
    case 15: ;
    case 12: ;
    case 13: ;
    case 17: ;
    if ((unsigned int )nvram->adapter_order[i] == 83U) {
      ips_shift_controllers(position, j);
      position = position + 1;
    } else {
    }
    goto ldv_39429;
    case 1: ;
    case 2: ;
    case 3: ;
    case 4: ;
    case 6: ;
    case 5: ;
    case 7: ;
    if ((unsigned int )nvram->adapter_order[i] == 65U) {
      ips_shift_controllers(position, j);
      position = position + 1;
    } else {
    }
    goto ldv_39429;
    default: ;
    goto ldv_39429;
    }
    ldv_39429:
    j = j + 1;
    ldv_39447: ;
    if ((unsigned int )j < ips_num_controllers) {
      goto ldv_39446;
    } else {
    }
    i = i + 1;
    ldv_39450: ;
    if ((int )nvram->adapter_order[0] >= i) {
      goto ldv_39449;
    } else {
    }
    return;
  } else {
  }
  tmp = 0;
  i = position;
  goto ldv_39453;
  ldv_39452: ;
  if ((unsigned int )(ips_ha[i])->ad_type == 12U || (unsigned int )(ips_ha[i])->ad_type == 13U) {
    ips_shift_controllers(position, i);
    position = position + 1;
    tmp = 1;
  } else {
  }
  i = i + 1;
  ldv_39453: ;
  if ((unsigned int )i < ips_num_controllers) {
    goto ldv_39452;
  } else {
  }
  if (tmp == 0) {
    return;
  } else {
  }
  i = position;
  goto ldv_39456;
  ldv_39455: ;
  if ((((unsigned int )(ips_ha[i])->ad_type == 9U || (unsigned int )(ips_ha[i])->ad_type == 8U) || (unsigned int )(ips_ha[i])->ad_type == 11U) || (unsigned int )(ips_ha[i])->ad_type == 10U) {
    ips_shift_controllers(position, i);
    position = position + 1;
  } else {
  }
  i = i + 1;
  ldv_39456: ;
  if ((unsigned int )i < ips_num_controllers) {
    goto ldv_39455;
  } else {
  }
  return;
}
}
static int ips_register_scsi(int index )
{
  struct Scsi_Host *sh ;
  ips_ha_t *ha ;
  ips_ha_t *oldha ;
  int tmp ;
  int tmp___0 ;
  {
  oldha = ips_ha[index];
  sh = ldv_scsi_host_alloc_27(& ips_driver_template, 464);
  if ((unsigned long )sh == (unsigned long )((struct Scsi_Host *)0)) {
    dev_printk("\f", (struct device const *)(& (oldha->pcidev)->dev), "Unable to register controller with SCSI subsystem\n");
    return (-1);
  } else {
  }
  ha = (ips_ha_t *)(& sh->hostdata);
  memcpy((void *)ha, (void const *)oldha, 464UL);
  ldv_free_irq_28((oldha->pcidev)->irq, (void *)oldha);
  tmp = ldv_request_irq_29((ha->pcidev)->irq, & do_ipsintr, 128UL, (char const *)(& ips_name),
                           (void *)ha);
  if (tmp != 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Unable to install interrupt handler\n");
    goto err_out_sh;
  } else {
  }
  kfree((void const *)oldha);
  sh->unique_id = ha->io_addr != 0U ? ha->io_addr : ha->mem_addr;
  sh->sg_tablesize = (sh->hostt)->sg_tablesize;
  sh->can_queue = (sh->hostt)->can_queue;
  sh->cmd_per_lun = (sh->hostt)->cmd_per_lun;
  sh->use_clustering = (sh->hostt)->use_clustering;
  sh->max_sectors = 128U;
  sh->max_id = (unsigned int )ha->ntargets;
  sh->max_lun = (u64 )ha->nlun;
  sh->max_channel = (unsigned int )((int )ha->nbus + -1);
  sh->can_queue = (int )(ha->max_cmds - 1U);
  tmp___0 = scsi_add_host(sh, & (ha->pcidev)->dev);
  if (tmp___0 != 0) {
    goto err_out;
  } else {
  }
  ips_sh[index] = sh;
  ips_ha[index] = ha;
  scsi_scan_host(sh);
  return (0);
  err_out:
  ldv_free_irq_30((ha->pcidev)->irq, (void *)ha);
  err_out_sh:
  scsi_host_put(sh);
  return (-1);
}
}
static void ips_remove_device(struct pci_dev *pci_dev )
{
  struct Scsi_Host *sh ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pci_dev);
  sh = (struct Scsi_Host *)tmp;
  pci_set_drvdata(pci_dev, (void *)0);
  ips_release(sh);
  pci_release_regions(pci_dev);
  pci_disable_device(pci_dev);
  return;
}
}
static int ips_module_init(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = ldv___pci_register_driver_31(& ips_pci_driver, & __this_module, "ips");
  if (tmp < 0) {
    return (-19);
  } else {
  }
  ips_driver_template.module = & __this_module;
  ips_order_controllers();
  tmp___0 = ips_detect(& ips_driver_template);
  if (tmp___0 == 0) {
    ldv_pci_unregister_driver_32(& ips_pci_driver);
    return (-19);
  } else {
  }
  register_reboot_notifier(& ips_notifier);
  return (0);
}
}
static void ips_module_exit(void)
{
  {
  ldv_pci_unregister_driver_33(& ips_pci_driver);
  unregister_reboot_notifier(& ips_notifier);
  return;
}
}
static int ips_insert_device(struct pci_dev *pci_dev , struct pci_device_id const *ent )
{
  int index ;
  int rc ;
  int tmp ;
  {
  index = -1;
  rc = pci_enable_device(pci_dev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = pci_request_regions(pci_dev, "ips");
  if (rc != 0) {
    goto err_out;
  } else {
  }
  rc = ips_init_phase1(pci_dev, & index);
  if (rc == 8194) {
    rc = ips_init_phase2(index);
  } else {
  }
  if (ips_hotplug != 0) {
    tmp = ips_register_scsi(index);
    if (tmp != 0) {
      ips_free(ips_ha[index]);
      rc = -1;
    } else {
    }
  } else {
  }
  if (rc == 8194) {
    ips_num_controllers = ips_num_controllers + 1U;
  } else {
  }
  ips_next_controller = ips_num_controllers;
  if (rc < 0) {
    rc = -19;
    goto err_out_regions;
  } else {
  }
  pci_set_drvdata(pci_dev, (void *)ips_sh[index]);
  return (0);
  err_out_regions:
  pci_release_regions(pci_dev);
  err_out:
  pci_disable_device(pci_dev);
  return (rc);
}
}
static int ips_init_phase1(struct pci_dev *pci_dev , int *indexPtr )
{
  ips_ha_t *ha ;
  uint32_t io_addr ;
  uint32_t mem_addr ;
  uint32_t io_len ;
  uint32_t mem_len ;
  uint8_t bus ;
  uint8_t func ;
  int j ;
  int index ;
  dma_addr_t dma_address ;
  char *ioremap_ptr ;
  char *mem_ptr ;
  uint32_t IsDead ;
  uint32_t base ;
  uint32_t offs ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  void *tmp___9 ;
  int tmp___10 ;
  void *tmp___11 ;
  int tmp___12 ;
  void *tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  void *tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  {
  index = 16;
  j = 0;
  goto ldv_39513;
  ldv_39512: ;
  if ((unsigned long )ips_ha[j] == (unsigned long )((ips_ha_t *)0)) {
    index = j;
    goto ldv_39511;
  } else {
  }
  j = j + 1;
  ldv_39513: ;
  if (j <= 15) {
    goto ldv_39512;
  } else {
  }
  ldv_39511: ;
  if (index > 15) {
    return (-1);
  } else {
  }
  bus = (pci_dev->bus)->number;
  func = (uint8_t )pci_dev->devfn;
  mem_addr = 0U;
  io_addr = 0U;
  mem_len = 0U;
  io_len = 0U;
  j = 0;
  goto ldv_39516;
  ldv_39515: ;
  if (pci_dev->resource[j].start == 0ULL) {
    goto ldv_39514;
  } else {
  }
  if ((pci_dev->resource[j].flags & 256UL) != 0UL) {
    io_addr = (uint32_t )pci_dev->resource[j].start;
    io_len = pci_dev->resource[j].start != 0ULL || pci_dev->resource[j].end != pci_dev->resource[j].start ? ((uint32_t )pci_dev->resource[j].end - (uint32_t )pci_dev->resource[j].start) + 1U : 0U;
  } else {
    mem_addr = (uint32_t )pci_dev->resource[j].start;
    mem_len = pci_dev->resource[j].start != 0ULL || pci_dev->resource[j].end != pci_dev->resource[j].start ? ((uint32_t )pci_dev->resource[j].end - (uint32_t )pci_dev->resource[j].start) + 1U : 0U;
  }
  j = j + 1;
  ldv_39516: ;
  if (j <= 1) {
    goto ldv_39515;
  } else {
  }
  ldv_39514: ;
  if (mem_addr != 0U) {
    base = mem_addr & 4294963200U;
    offs = mem_addr - base;
    tmp = ioremap((resource_size_t )base, 4096UL);
    ioremap_ptr = (char *)tmp;
    if ((unsigned long )ioremap_ptr == (unsigned long )((char *)0)) {
      return (-1);
    } else {
    }
    mem_ptr = ioremap_ptr + (unsigned long )offs;
  } else {
    ioremap_ptr = (char *)0;
    mem_ptr = (char *)0;
  }
  tmp___0 = kmalloc(464UL, 208U);
  ha = (ips_ha_t *)tmp___0;
  if ((unsigned long )ha == (unsigned long )((ips_ha_t *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate temporary ha struct\n");
    return (-1);
  } else {
  }
  ips_sh[index] = (struct Scsi_Host *)0;
  ips_ha[index] = ha;
  ha->active = 1U;
  ha->io_addr = io_addr;
  ha->io_len = io_len;
  ha->mem_addr = mem_addr;
  ha->mem_len = mem_len;
  ha->mem_ptr = mem_ptr;
  ha->ioremap_ptr = ioremap_ptr;
  ha->host_num = (uint16_t )index;
  ha->slot_num = (unsigned int )((uint8_t )(pci_dev->devfn >> 3)) & 31U;
  ha->pcidev = pci_dev;
  if ((unsigned int )(ha->pcidev)->device == 445U || (unsigned int )(ha->pcidev)->device == 592U) {
    tmp___3 = pci_set_dma_mask(ha->pcidev, 0xffffffffffffffffULL);
    if (tmp___3 == 0) {
      ha->flags = ha->flags | 1;
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___2 = pci_set_dma_mask(ha->pcidev, 4294967295ULL);
    if (tmp___2 != 0) {
      printk("\fUnable to set DMA Mask\n");
      tmp___1 = ips_abort_init(ha, index);
      return (tmp___1);
    } else {
    }
  }
  if (ips_cd_boot != 0 && (unsigned long )ips_FlashData == (unsigned long )((char *)0)) {
    tmp___4 = pci_alloc_consistent(pci_dev, 524288UL, & ips_flashbusaddr);
    ips_FlashData = (char *)tmp___4;
  } else {
  }
  tmp___5 = pci_alloc_consistent(pci_dev, 196UL, & ha->enq_busaddr);
  ha->enq = (IPS_ENQ *)tmp___5;
  if ((unsigned long )ha->enq == (unsigned long )((IPS_ENQ *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate host inquiry structure\n");
    tmp___6 = ips_abort_init(ha, index);
    return (tmp___6);
  } else {
  }
  tmp___7 = pci_alloc_consistent(pci_dev, 576UL, & dma_address);
  ha->adapt = (IPS_ADAPTER *)tmp___7;
  if ((unsigned long )ha->adapt == (unsigned long )((IPS_ADAPTER *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate host adapt & dummy structures\n");
    tmp___8 = ips_abort_init(ha, index);
    return (tmp___8);
  } else {
  }
  (ha->adapt)->hw_status_start = (uint32_t volatile )dma_address;
  ha->dummy = (IPS_IO_CMD *)ha->adapt + 1U;
  tmp___9 = pci_alloc_consistent(pci_dev, 68UL, & dma_address);
  ha->logical_drive_info = (IPS_LD_INFO *)tmp___9;
  if ((unsigned long )ha->logical_drive_info == (unsigned long )((IPS_LD_INFO *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate logical drive info structure\n");
    tmp___10 = ips_abort_init(ha, index);
    return (tmp___10);
  } else {
  }
  ha->logical_drive_info_dma_addr = dma_address;
  tmp___11 = kmalloc(4508UL, 208U);
  ha->conf = (IPS_CONF *)tmp___11;
  if ((unsigned long )ha->conf == (unsigned long )((IPS_CONF *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate host conf structure\n");
    tmp___12 = ips_abort_init(ha, index);
    return (tmp___12);
  } else {
  }
  tmp___13 = kmalloc(128UL, 208U);
  ha->nvram = (IPS_NVRAM_P5 *)tmp___13;
  if ((unsigned long )ha->nvram == (unsigned long )((IPS_NVRAM_P5 *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate host NVRAM structure\n");
    tmp___14 = ips_abort_init(ha, index);
    return (tmp___14);
  } else {
  }
  tmp___15 = kmalloc(512UL, 208U);
  ha->subsys = (IPS_SUBSYS *)tmp___15;
  if ((unsigned long )ha->subsys == (unsigned long )((IPS_SUBSYS *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate host subsystem structure\n");
    tmp___16 = ips_abort_init(ha, index);
    return (tmp___16);
  } else {
  }
  if ((unsigned int )ips_ioctlsize <= 4095U) {
    ips_ioctlsize = 4096;
  } else {
  }
  tmp___17 = pci_alloc_consistent(pci_dev, (size_t )ips_ioctlsize, & ha->ioctl_busaddr);
  ha->ioctl_data = (char *)tmp___17;
  ha->ioctl_len = ips_ioctlsize;
  if ((unsigned long )ha->ioctl_data == (unsigned long )((char *)0)) {
    dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to allocate IOCTL data\n");
    tmp___18 = ips_abort_init(ha, index);
    return (tmp___18);
  } else {
  }
  ips_setup_funclist(ha);
  if ((unsigned int )(ha->pcidev)->device == 445U || (unsigned int )(ha->pcidev)->device == 592U) {
    IsDead = readl((void const volatile *)ha->mem_ptr + 28U);
    if (IsDead == 3735928559U) {
      ips_reset_morpheus(ha);
    } else {
    }
  } else {
  }
  tmp___21 = (*(ha->func.isinit))(ha);
  if (tmp___21 == 0) {
    tmp___20 = (*(ha->func.init))(ha);
    if (tmp___20 == 0) {
      dev_printk("\f", (struct device const *)(& pci_dev->dev), "Unable to initialize controller\n");
      tmp___19 = ips_abort_init(ha, index);
      return (tmp___19);
    } else {
    }
  } else {
  }
  *indexPtr = index;
  return (8194);
}
}
static int ips_init_phase2(int index )
{
  ips_ha_t *ha ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  ha = ips_ha[index];
  if ((unsigned int )ha->active == 0U) {
    ips_ha[index] = (ips_ha_t *)0;
    return (-1);
  } else {
  }
  tmp___0 = ldv_request_irq_34((ha->pcidev)->irq, & do_ipsintr, 128UL, (char const *)(& ips_name),
                               (void *)ha);
  if (tmp___0 != 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Unable to install interrupt handler\n");
    tmp = ips_abort_init(ha, index);
    return (tmp);
  } else {
  }
  ha->max_cmds = 1U;
  tmp___2 = ips_allocatescbs(ha);
  if (tmp___2 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Unable to allocate a CCB\n");
    ldv_free_irq_35((ha->pcidev)->irq, (void *)ha);
    tmp___1 = ips_abort_init(ha, index);
    return (tmp___1);
  } else {
  }
  tmp___4 = ips_hainit(ha);
  if (tmp___4 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Unable to initialize controller\n");
    ldv_free_irq_36((ha->pcidev)->irq, (void *)ha);
    tmp___3 = ips_abort_init(ha, index);
    return (tmp___3);
  } else {
  }
  ips_deallocatescbs(ha, 1);
  tmp___6 = ips_allocatescbs(ha);
  if (tmp___6 == 0) {
    dev_printk("\f", (struct device const *)(& (ha->pcidev)->dev), "Unable to allocate CCBs\n");
    ldv_free_irq_37((ha->pcidev)->irq, (void *)ha);
    tmp___5 = ips_abort_init(ha, index);
    return (tmp___5);
  } else {
  }
  return (8194);
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_probe_5(void) ;
extern int ldv_shutdown_4(void) ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_39540;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_39540;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_39540;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_39540;
  default:
  ldv_stop();
  }
  ldv_39540: ;
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
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& do_ipsintr)) {
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
      irq_retval = do_ipsintr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_39573;
    default:
    ldv_stop();
    }
    ldv_39573: ;
  } else {
  }
  return (state);
}
}
void ldv_initialize_scsi_host_template_5(void)
{
  void *tmp___0 ;
  {
  ips_driver_template_group0 = ldv_malloc(sizeof(struct scsi_cmnd));
  tmp___0 = ldv_init_zalloc(3816UL);
  ips_driver_template_group1 = (struct Scsi_Host *)tmp___0;
  ips_driver_template_group2 = ldv_malloc(sizeof(struct scsi_device));
  return;
}
}
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  ips_pci_driver_group1 = (struct pci_dev *)tmp;
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
      irq_retval = do_ipsintr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_39590;
    default:
    ldv_stop();
    }
    ldv_39590: ;
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
  goto ldv_39596;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_39596;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_39596;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_39596;
  default:
  ldv_stop();
  }
  ldv_39596: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& do_ipsintr)) {
    return (1);
  } else {
  }
  return (0);
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  struct notifier_block *ldvarg1 ;
  void *tmp___0 ;
  unsigned long ldvarg3 ;
  void *ldvarg2 ;
  void *tmp___1 ;
  sector_t ldvarg8 ;
  int *ldvarg7 ;
  void *tmp___2 ;
  struct scsi_host_template *ldvarg4 ;
  void *tmp___3 ;
  struct seq_file *ldvarg10 ;
  void *tmp___4 ;
  struct block_device *ldvarg9 ;
  void *tmp___5 ;
  int ldvarg5 ;
  char *ldvarg6 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(24UL);
  ldvarg1 = (struct notifier_block *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg2 = tmp___1;
  tmp___2 = ldv_init_zalloc(4UL);
  ldvarg7 = (int *)tmp___2;
  tmp___3 = ldv_init_zalloc(336UL);
  ldvarg4 = (struct scsi_host_template *)tmp___3;
  tmp___4 = ldv_init_zalloc(256UL);
  ldvarg10 = (struct seq_file *)tmp___4;
  tmp___5 = ldv_init_zalloc(480UL);
  ldvarg9 = (struct block_device *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___6;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_39662:
  tmp___7 = __VERIFIER_nondet_int();
  switch (tmp___7) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = ips_insert_device(ips_pci_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_39630;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      ips_remove_device(ips_pci_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_39630;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_39630;
    default:
    ldv_stop();
    }
    ldv_39630: ;
  } else {
  }
  goto ldv_39634;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_39634;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      ips_module_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_39639;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = ips_module_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
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
    goto ldv_39639;
    default:
    ldv_stop();
    }
    ldv_39639: ;
  } else {
  }
  goto ldv_39634;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ips_halt(ldvarg1, ldvarg3, ldvarg2);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_39644;
    default:
    ldv_stop();
    }
    ldv_39644: ;
  } else {
  }
  goto ldv_39634;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_39634;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ips_show_info(ldvarg10, ips_driver_template_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_show_info(ldvarg10, ips_driver_template_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      ips_slave_configure(ips_driver_template_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_slave_configure(ips_driver_template_group2);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      ips_biosparam(ips_driver_template_group2, ldvarg9, ldvarg8, ldvarg7);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_biosparam(ips_driver_template_group2, ldvarg9, ldvarg8, ldvarg7);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      ips_queue(ips_driver_template_group1, ips_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_queue(ips_driver_template_group1, ips_driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 4: ;
    if (ldv_state_variable_5 == 2) {
      ips_write_info(ips_driver_template_group1, ldvarg6, ldvarg5);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      ips_eh_abort(ips_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_eh_abort(ips_driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      ips_detect(ldvarg4);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_detect(ldvarg4);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 7: ;
    if (ldv_state_variable_5 == 2) {
      ips_release(ips_driver_template_group1);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_39649;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      ips_eh_reset(ips_driver_template_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_eh_reset(ips_driver_template_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      ips_info(ips_driver_template_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      ips_info(ips_driver_template_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_39649;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      ldv_probe_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_39649;
    default:
    ldv_stop();
    }
    ldv_39649: ;
  } else {
  }
  goto ldv_39634;
  default:
  ldv_stop();
  }
  ldv_39634: ;
  goto ldv_39662;
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
int ldv_scsi_add_host_with_dma_24(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_scsi_remove_host_25(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
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
struct Scsi_Host *ldv_scsi_host_alloc_27(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___3 )0)) {
    ldv_state_variable_5 = 1;
    ldv_initialize_scsi_host_template_5();
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_28(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_29(unsigned int irq , irqreturn_t (*handler)(int ,
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
void ldv_free_irq_30(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___pci_register_driver_31(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_32(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
void ldv_pci_unregister_driver_33(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
}
}
__inline static int ldv_request_irq_34(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
void ldv_free_irq_35(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_36(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
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
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
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
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
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
void do_gettimeofday(struct timeval *arg0) {
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
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
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
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
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
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
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
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int strncasecmp(const char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
char *strsep(char **arg0, const char *arg1) {
  return ldv_malloc(sizeof(char));
}
void touch_nmi_watchdog() {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
