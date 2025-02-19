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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __be64;
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
typedef unsigned int uint;
typedef unsigned long ulong;
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
enum system_states {
    SYSTEM_BOOTING = 0,
    SYSTEM_RUNNING = 1,
    SYSTEM_HALT = 2,
    SYSTEM_POWER_OFF = 3,
    SYSTEM_RESTART = 4
} ;
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
enum kobject_action {
    KOBJ_ADD = 0,
    KOBJ_REMOVE = 1,
    KOBJ_CHANGE = 2,
    KOBJ_MOVE = 3,
    KOBJ_ONLINE = 4,
    KOBJ_OFFLINE = 5,
    KOBJ_MAX = 6
} ;
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
struct device_attribute;
struct scsi_target;
struct scsi_device;
struct Scsi_Host;
struct ata_queued_cmd;
struct ata_port;
struct scsi_cmnd;
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
enum pcie_reset_state {
    pcie_deassert_reset = 1,
    pcie_warm_reset = 2,
    pcie_hot_reset = 3
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
struct dma_pool;
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
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct ata_bmdma_prd {
   __le32 addr ;
   __le32 flags_len ;
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
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_268 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_269 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_270 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_271 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_272 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_273 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_274 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_268 integer ;
   struct __anonstruct_string_269 string ;
   struct __anonstruct_buffer_270 buffer ;
   struct __anonstruct_package_271 package ;
   struct __anonstruct_reference_272 reference ;
   struct __anonstruct_processor_273 processor ;
   struct __anonstruct_power_resource_274 power_resource ;
};
enum ata_lpm_policy {
    ATA_LPM_UNKNOWN = 0,
    ATA_LPM_MAX_POWER = 1,
    ATA_LPM_MED_POWER = 2,
    ATA_LPM_MIN_POWER = 3
} ;
struct ata_port_operations;
struct ata_link;
enum sw_activity {
    OFF = 0,
    BLINK_ON = 1,
    BLINK_OFF = 2
} ;
struct ata_taskfile {
   unsigned long flags ;
   u8 protocol ;
   u8 ctl ;
   u8 hob_feature ;
   u8 hob_nsect ;
   u8 hob_lbal ;
   u8 hob_lbam ;
   u8 hob_lbah ;
   u8 feature ;
   u8 nsect ;
   u8 lbal ;
   u8 lbam ;
   u8 lbah ;
   u8 device ;
   u8 command ;
   u32 auxiliary ;
};
struct ata_ioports {
   void *cmd_addr ;
   void *data_addr ;
   void *error_addr ;
   void *feature_addr ;
   void *nsect_addr ;
   void *lbal_addr ;
   void *lbam_addr ;
   void *lbah_addr ;
   void *device_addr ;
   void *status_addr ;
   void *command_addr ;
   void *altstatus_addr ;
   void *ctl_addr ;
   void *bmdma_addr ;
   void *scr_addr ;
};
struct ata_host {
   spinlock_t lock ;
   struct device *dev ;
   void * const *iomap ;
   unsigned int n_ports ;
   unsigned int n_tags ;
   void *private_data ;
   struct ata_port_operations *ops ;
   unsigned long flags ;
   struct mutex eh_mutex ;
   struct task_struct *eh_owner ;
   struct ata_port *simplex_claimed ;
   struct ata_port *ports[0U] ;
};
struct ata_device;
struct ata_queued_cmd {
   struct ata_port *ap ;
   struct ata_device *dev ;
   struct scsi_cmnd *scsicmd ;
   void (*scsidone)(struct scsi_cmnd * ) ;
   struct ata_taskfile tf ;
   u8 cdb[16U] ;
   unsigned long flags ;
   unsigned int tag ;
   unsigned int n_elem ;
   unsigned int orig_n_elem ;
   int dma_dir ;
   unsigned int sect_size ;
   unsigned int nbytes ;
   unsigned int extrabytes ;
   unsigned int curbytes ;
   struct scatterlist sgent ;
   struct scatterlist *sg ;
   struct scatterlist *cursg ;
   unsigned int cursg_ofs ;
   unsigned int err_mask ;
   struct ata_taskfile result_tf ;
   void (*complete_fn)(struct ata_queued_cmd * ) ;
   void *private_data ;
   void *lldd_task ;
};
struct ata_port_stats {
   unsigned long unhandled_irq ;
   unsigned long idle_irq ;
   unsigned long rw_reqbuf ;
};
struct ata_ering_entry {
   unsigned int eflags ;
   unsigned int err_mask ;
   u64 timestamp ;
};
struct ata_ering {
   int cursor ;
   struct ata_ering_entry ring[32U] ;
};
union __anonunion____missing_field_name_284 {
   u16 id[256U] ;
   u32 gscr[128U] ;
};
struct ata_device {
   struct ata_link *link ;
   unsigned int devno ;
   unsigned int horkage ;
   unsigned long flags ;
   struct scsi_device *sdev ;
   void *private_data ;
   union acpi_object *gtf_cache ;
   unsigned int gtf_filter ;
   void *zpodd ;
   struct device tdev ;
   u64 n_sectors ;
   u64 n_native_sectors ;
   unsigned int class ;
   unsigned long unpark_deadline ;
   u8 pio_mode ;
   u8 dma_mode ;
   u8 xfer_mode ;
   unsigned int xfer_shift ;
   unsigned int multi_count ;
   unsigned int max_sectors ;
   unsigned int cdb_len ;
   unsigned long pio_mask ;
   unsigned long mwdma_mask ;
   unsigned long udma_mask ;
   u16 cylinders ;
   u16 heads ;
   u16 sectors ;
   union __anonunion____missing_field_name_284 __annonCompField86 ;
   u8 devslp_timing[8U] ;
   u8 ncq_send_recv_cmds[16U] ;
   int spdn_cnt ;
   struct ata_ering ering ;
};
struct ata_eh_info {
   struct ata_device *dev ;
   u32 serror ;
   unsigned int err_mask ;
   unsigned int action ;
   unsigned int dev_action[2U] ;
   unsigned int flags ;
   unsigned int probe_mask ;
   char desc[80U] ;
   int desc_len ;
};
struct ata_eh_context {
   struct ata_eh_info i ;
   int tries[2U] ;
   int cmd_timeout_idx[2U][6U] ;
   unsigned int classes[2U] ;
   unsigned int did_probe_mask ;
   unsigned int unloaded_mask ;
   unsigned int saved_ncq_enabled ;
   u8 saved_xfer_mode[2U] ;
   unsigned long last_reset ;
};
struct ata_acpi_drive {
   u32 pio ;
   u32 dma ;
};
struct ata_acpi_gtm {
   struct ata_acpi_drive drive[2U] ;
   u32 flags ;
};
struct ata_link {
   struct ata_port *ap ;
   int pmp ;
   struct device tdev ;
   unsigned int active_tag ;
   u32 sactive ;
   unsigned int flags ;
   u32 saved_scontrol ;
   unsigned int hw_sata_spd_limit ;
   unsigned int sata_spd_limit ;
   unsigned int sata_spd ;
   enum ata_lpm_policy lpm_policy ;
   struct ata_eh_info eh_info ;
   struct ata_eh_context eh_context ;
   struct ata_device device[2U] ;
   unsigned long last_lpm_change ;
};
struct ata_port {
   struct Scsi_Host *scsi_host ;
   struct ata_port_operations *ops ;
   spinlock_t *lock ;
   unsigned long flags ;
   unsigned int pflags ;
   unsigned int print_id ;
   unsigned int local_port_no ;
   unsigned int port_no ;
   struct ata_ioports ioaddr ;
   u8 ctl ;
   u8 last_ctl ;
   struct ata_link *sff_pio_task_link ;
   struct delayed_work sff_pio_task ;
   struct ata_bmdma_prd *bmdma_prd ;
   dma_addr_t bmdma_prd_dma ;
   unsigned int pio_mask ;
   unsigned int mwdma_mask ;
   unsigned int udma_mask ;
   unsigned int cbl ;
   struct ata_queued_cmd qcmd[32U] ;
   unsigned long sas_tag_allocated ;
   unsigned int qc_active ;
   int nr_active_links ;
   unsigned int sas_last_tag ;
   struct ata_link link ;
   struct ata_link *slave_link ;
   int nr_pmp_links ;
   struct ata_link *pmp_link ;
   struct ata_link *excl_link ;
   struct ata_port_stats stats ;
   struct ata_host *host ;
   struct device *dev ;
   struct device tdev ;
   struct mutex scsi_scan_mutex ;
   struct delayed_work hotplug_task ;
   struct work_struct scsi_rescan_task ;
   unsigned int hsm_task_state ;
   u32 msg_enable ;
   struct list_head eh_done_q ;
   wait_queue_head_t eh_wait_q ;
   int eh_tries ;
   struct completion park_req_pending ;
   pm_message_t pm_mesg ;
   enum ata_lpm_policy target_lpm_policy ;
   struct timer_list fastdrain_timer ;
   unsigned long fastdrain_cnt ;
   int em_message_type ;
   void *private_data ;
   struct ata_acpi_gtm __acpi_init_gtm ;
   u8 sector_buf[512U] ;
};
struct ata_port_operations {
   int (*qc_defer)(struct ata_queued_cmd * ) ;
   int (*check_atapi_dma)(struct ata_queued_cmd * ) ;
   void (*qc_prep)(struct ata_queued_cmd * ) ;
   unsigned int (*qc_issue)(struct ata_queued_cmd * ) ;
   bool (*qc_fill_rtf)(struct ata_queued_cmd * ) ;
   int (*cable_detect)(struct ata_port * ) ;
   unsigned long (*mode_filter)(struct ata_device * , unsigned long ) ;
   void (*set_piomode)(struct ata_port * , struct ata_device * ) ;
   void (*set_dmamode)(struct ata_port * , struct ata_device * ) ;
   int (*set_mode)(struct ata_link * , struct ata_device ** ) ;
   unsigned int (*read_id)(struct ata_device * , struct ata_taskfile * , u16 * ) ;
   void (*dev_config)(struct ata_device * ) ;
   void (*freeze)(struct ata_port * ) ;
   void (*thaw)(struct ata_port * ) ;
   int (*prereset)(struct ata_link * , unsigned long ) ;
   int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   void (*postreset)(struct ata_link * , unsigned int * ) ;
   int (*pmp_prereset)(struct ata_link * , unsigned long ) ;
   int (*pmp_softreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   int (*pmp_hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   void (*pmp_postreset)(struct ata_link * , unsigned int * ) ;
   void (*error_handler)(struct ata_port * ) ;
   void (*lost_interrupt)(struct ata_port * ) ;
   void (*post_internal_cmd)(struct ata_queued_cmd * ) ;
   void (*sched_eh)(struct ata_port * ) ;
   void (*end_eh)(struct ata_port * ) ;
   int (*scr_read)(struct ata_link * , unsigned int , u32 * ) ;
   int (*scr_write)(struct ata_link * , unsigned int , u32 ) ;
   void (*pmp_attach)(struct ata_port * ) ;
   void (*pmp_detach)(struct ata_port * ) ;
   int (*set_lpm)(struct ata_link * , enum ata_lpm_policy , unsigned int ) ;
   int (*port_suspend)(struct ata_port * , pm_message_t ) ;
   int (*port_resume)(struct ata_port * ) ;
   int (*port_start)(struct ata_port * ) ;
   void (*port_stop)(struct ata_port * ) ;
   void (*host_stop)(struct ata_host * ) ;
   void (*sff_dev_select)(struct ata_port * , unsigned int ) ;
   void (*sff_set_devctl)(struct ata_port * , u8 ) ;
   u8 (*sff_check_status)(struct ata_port * ) ;
   u8 (*sff_check_altstatus)(struct ata_port * ) ;
   void (*sff_tf_load)(struct ata_port * , struct ata_taskfile const * ) ;
   void (*sff_tf_read)(struct ata_port * , struct ata_taskfile * ) ;
   void (*sff_exec_command)(struct ata_port * , struct ata_taskfile const * ) ;
   unsigned int (*sff_data_xfer)(struct ata_device * , unsigned char * , unsigned int ,
                                 int ) ;
   void (*sff_irq_on)(struct ata_port * ) ;
   bool (*sff_irq_check)(struct ata_port * ) ;
   void (*sff_irq_clear)(struct ata_port * ) ;
   void (*sff_drain_fifo)(struct ata_queued_cmd * ) ;
   void (*bmdma_setup)(struct ata_queued_cmd * ) ;
   void (*bmdma_start)(struct ata_queued_cmd * ) ;
   void (*bmdma_stop)(struct ata_queued_cmd * ) ;
   u8 (*bmdma_status)(struct ata_port * ) ;
   ssize_t (*em_show)(struct ata_port * , char * ) ;
   ssize_t (*em_store)(struct ata_port * , char const * , size_t ) ;
   ssize_t (*sw_activity_show)(struct ata_device * , char * ) ;
   ssize_t (*sw_activity_store)(struct ata_device * , enum sw_activity ) ;
   ssize_t (*transmit_led_message)(struct ata_port * , u32 , ssize_t ) ;
   void (*phy_reset)(struct ata_port * ) ;
   void (*eng_timeout)(struct ata_port * ) ;
   struct ata_port_operations const *inherits ;
};
struct ata_port_info {
   unsigned long flags ;
   unsigned long link_flags ;
   unsigned long pio_mask ;
   unsigned long mwdma_mask ;
   unsigned long udma_mask ;
   struct ata_port_operations *port_ops ;
   void *private_data ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
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
struct blk_iopoll;
typedef int blk_iopoll_fn(struct blk_iopoll * , int );
struct blk_iopoll {
   struct list_head list ;
   unsigned long state ;
   unsigned long data ;
   int weight ;
   int max ;
   blk_iopoll_fn *poll ;
};
struct ipr_res_addr {
   u8 reserved ;
   u8 bus ;
   u8 target ;
   u8 lun ;
};
struct ipr_std_inq_vpids {
   u8 vendor_id[8U] ;
   u8 product_id[16U] ;
};
struct ipr_vpd {
   struct ipr_std_inq_vpids vpids ;
   u8 sn[8U] ;
};
struct ipr_ext_vpd {
   struct ipr_vpd vpd ;
   __be32 wwid[2U] ;
};
struct ipr_ext_vpd64 {
   struct ipr_vpd vpd ;
   __be32 wwid[4U] ;
};
struct ipr_std_inq_data {
   u8 peri_qual_dev_type ;
   u8 removeable_medium_rsvd ;
   u8 version ;
   u8 aen_naca_fmt ;
   u8 additional_len ;
   u8 sccs_rsvd ;
   u8 bq_enc_multi ;
   u8 sync_cmdq_flags ;
   struct ipr_std_inq_vpids vpids ;
   u8 ros_rsvd_ram_rsvd[4U] ;
   u8 serial_num[8U] ;
};
struct ipr_config_table_entry {
   u8 proto ;
   u8 array_id ;
   u8 flags ;
   u8 rsvd_subtype ;
   struct ipr_res_addr res_addr ;
   __be32 res_handle ;
   __be32 lun_wwn[2U] ;
   struct ipr_std_inq_data std_inq_data ;
};
struct ipr_config_table_entry64 {
   u8 res_type ;
   u8 proto ;
   u8 vset_num ;
   u8 array_id ;
   __be16 flags ;
   __be16 res_flags ;
   __be32 res_handle ;
   u8 dev_id_type ;
   u8 reserved[3U] ;
   __be64 dev_id ;
   __be64 lun ;
   __be64 lun_wwn[2U] ;
   __be64 res_path ;
   struct ipr_std_inq_data std_inq_data ;
   u8 reserved2[4U] ;
   __be64 reserved3[2U] ;
   u8 reserved4[8U] ;
};
struct ipr_config_table_hdr {
   u8 num_entries ;
   u8 flags ;
   __be16 reserved ;
};
struct ipr_config_table_hdr64 {
   __be16 num_entries ;
   __be16 reserved ;
   u8 flags ;
   u8 reserved2[11U] ;
};
struct ipr_config_table {
   struct ipr_config_table_hdr hdr ;
   struct ipr_config_table_entry dev[0U] ;
};
struct ipr_config_table64 {
   struct ipr_config_table_hdr64 hdr64 ;
   struct ipr_config_table_entry64 dev[0U] ;
};
union __anonunion_u_286 {
   struct ipr_config_table_entry *cfgte ;
   struct ipr_config_table_entry64 *cfgte64 ;
};
struct ipr_config_table_entry_wrapper {
   union __anonunion_u_286 u ;
};
union __anonunion_u_287 {
   struct ipr_config_table_entry cfgte ;
   struct ipr_config_table_entry64 cfgte64 ;
};
struct ipr_hostrcb_cfg_ch_not {
   union __anonunion_u_287 u ;
   u8 reserved[936U] ;
};
struct ipr_supported_device {
   __be16 data_length ;
   u8 reserved ;
   u8 num_records ;
   struct ipr_std_inq_vpids vpids ;
   u8 reserved2[16U] ;
};
struct ipr_ioa_cfg;
struct ipr_hrr_queue {
   struct ipr_ioa_cfg *ioa_cfg ;
   __be32 *host_rrq ;
   dma_addr_t host_rrq_dma ;
   __be32 volatile *hrrq_start ;
   __be32 volatile *hrrq_end ;
   __be32 volatile *hrrq_curr ;
   struct list_head hrrq_free_q ;
   struct list_head hrrq_pending_q ;
   spinlock_t _lock ;
   spinlock_t *lock ;
   u32 volatile toggle_bit ;
   u32 size ;
   u32 min_cmd_id ;
   u32 max_cmd_id ;
   unsigned char allow_interrupts : 1 ;
   unsigned char ioa_is_dead : 1 ;
   unsigned char allow_cmds : 1 ;
   unsigned char removing_ioa : 1 ;
   struct blk_iopoll iopoll ;
};
struct ipr_cmd_pkt {
   u8 reserved ;
   u8 hrrq_id ;
   u8 request_type ;
   u8 reserved2 ;
   u8 flags_hi ;
   u8 flags_lo ;
   u8 cdb[16U] ;
   __be16 timeout ;
};
struct ipr_ioarcb_ata_regs {
   u8 flags ;
   u8 reserved[3U] ;
   __be16 data ;
   u8 feature ;
   u8 nsect ;
   u8 lbal ;
   u8 lbam ;
   u8 lbah ;
   u8 device ;
   u8 command ;
   u8 reserved2[3U] ;
   u8 hob_feature ;
   u8 hob_nsect ;
   u8 hob_lbal ;
   u8 hob_lbam ;
   u8 hob_lbah ;
   u8 ctl ;
};
struct ipr_ioadl_desc {
   __be32 flags_and_data_len ;
   __be32 address ;
};
struct ipr_ioadl64_desc {
   __be32 flags ;
   __be32 data_len ;
   __be64 address ;
};
struct ipr_ata64_ioadl {
   struct ipr_ioarcb_ata_regs regs ;
   u16 reserved[5U] ;
   struct ipr_ioadl64_desc ioadl64[64U] ;
};
union __anonunion_u_288 {
   struct ipr_ioarcb_ata_regs regs ;
   struct ipr_ioadl_desc ioadl[5U] ;
   __be32 add_cmd_parms[10U] ;
};
struct ipr_ioarcb_add_data {
   union __anonunion_u_288 u ;
};
struct ipr_ioarcb_sis64_add_addr_ecb {
   __be64 ioasa_host_pci_addr ;
   __be64 data_ioadl_addr ;
   __be64 reserved ;
   __be32 ext_control_buf[4U] ;
};
union __anonunion_a_289 {
   __be32 ioarcb_host_pci_addr ;
   __be64 ioarcb_host_pci_addr64 ;
};
union __anonunion_u_290 {
   struct ipr_ioarcb_add_data add_data ;
   struct ipr_ioarcb_sis64_add_addr_ecb sis64_addr_data ;
};
struct ipr_ioarcb {
   union __anonunion_a_289 a ;
   __be32 res_handle ;
   __be32 host_response_handle ;
   __be32 reserved1 ;
   __be32 reserved2 ;
   __be32 reserved3 ;
   __be32 data_transfer_length ;
   __be32 read_data_transfer_length ;
   __be32 write_ioadl_addr ;
   __be32 ioadl_len ;
   __be32 read_ioadl_addr ;
   __be32 read_ioadl_len ;
   __be32 ioasa_host_pci_addr ;
   __be16 ioasa_len ;
   __be16 reserved4 ;
   struct ipr_cmd_pkt cmd_pkt ;
   __be16 add_cmd_parms_offset ;
   __be16 add_cmd_parms_len ;
   union __anonunion_u_290 u ;
};
struct ipr_ioasa_vset {
   __be32 failing_lba_hi ;
   __be32 failing_lba_lo ;
   __be32 reserved ;
};
struct ipr_ioasa_af_dasd {
   __be32 failing_lba ;
   __be32 reserved[2U] ;
};
struct ipr_ioasa_gpdd {
   u8 end_state ;
   u8 bus_phase ;
   __be16 reserved ;
   __be32 ioa_data[2U] ;
};
struct ipr_ioasa_gata {
   u8 error ;
   u8 nsect ;
   u8 lbal ;
   u8 lbam ;
   u8 lbah ;
   u8 device ;
   u8 status ;
   u8 alt_status ;
   u8 hob_nsect ;
   u8 hob_lbal ;
   u8 hob_lbam ;
   u8 hob_lbah ;
};
struct ipr_auto_sense {
   __be16 auto_sense_len ;
   __be16 ioa_data_len ;
   __be32 data[24U] ;
};
struct ipr_ioasa_hdr {
   __be32 ioasc ;
   __be16 ret_stat_len ;
   __be16 avail_stat_len ;
   __be32 residual_data_len ;
   __be32 ilid ;
   __be32 fd_ioasc ;
   __be32 fd_phys_locator ;
   __be32 fd_res_handle ;
   __be32 ioasc_specific ;
};
union __anonunion_u_291 {
   struct ipr_ioasa_vset vset ;
   struct ipr_ioasa_af_dasd dasd ;
   struct ipr_ioasa_gpdd gpdd ;
   struct ipr_ioasa_gata gata ;
};
struct ipr_ioasa {
   struct ipr_ioasa_hdr hdr ;
   union __anonunion_u_291 u ;
   struct ipr_auto_sense auto_sense ;
};
union __anonunion_u_292 {
   struct ipr_ioasa_vset vset ;
   struct ipr_ioasa_af_dasd dasd ;
   struct ipr_ioasa_gpdd gpdd ;
   struct ipr_ioasa_gata gata ;
};
struct ipr_ioasa64 {
   struct ipr_ioasa_hdr hdr ;
   u8 fd_res_path[8U] ;
   union __anonunion_u_292 u ;
   struct ipr_auto_sense auto_sense ;
};
struct ipr_mode_parm_hdr {
   u8 length ;
   u8 medium_type ;
   u8 device_spec_parms ;
   u8 block_desc_len ;
};
struct ipr_mode_pages {
   struct ipr_mode_parm_hdr hdr ;
   u8 data[251U] ;
};
struct ipr_mode_page_hdr {
   u8 ps_page_code ;
   u8 page_length ;
};
struct ipr_dev_bus_entry {
   struct ipr_res_addr res_addr ;
   u8 flags ;
   u8 scsi_id ;
   u8 bus_width ;
   u8 extended_reset_delay ;
   __be32 max_xfer_rate ;
   u8 spinup_delay ;
   u8 reserved3 ;
   __be16 reserved4 ;
};
struct ipr_mode_page28 {
   struct ipr_mode_page_hdr hdr ;
   u8 num_entries ;
   u8 entry_length ;
   struct ipr_dev_bus_entry bus[0U] ;
};
struct ipr_mode_page24 {
   struct ipr_mode_page_hdr hdr ;
   u8 flags ;
};
struct ipr_ioa_vpd {
   struct ipr_std_inq_data std_inq_data ;
   u8 ascii_part_num[12U] ;
   u8 reserved[40U] ;
   u8 ascii_plant_code[4U] ;
};
struct ipr_inquiry_page3 {
   u8 peri_qual_dev_type ;
   u8 page_code ;
   u8 reserved1 ;
   u8 page_length ;
   u8 ascii_len ;
   u8 reserved2[3U] ;
   u8 load_id[4U] ;
   u8 major_release ;
   u8 card_type ;
   u8 minor_release[2U] ;
   u8 ptf_number[4U] ;
   u8 patch_number[4U] ;
};
struct ipr_inquiry_cap {
   u8 peri_qual_dev_type ;
   u8 page_code ;
   u8 reserved1 ;
   u8 page_length ;
   u8 ascii_len ;
   u8 reserved2 ;
   u8 sis_version[2U] ;
   u8 cap ;
   u8 reserved3[15U] ;
};
struct ipr_inquiry_page0 {
   u8 peri_qual_dev_type ;
   u8 page_code ;
   u8 reserved1 ;
   u8 len ;
   u8 page[20U] ;
};
struct ipr_hostrcb_device_data_entry {
   struct ipr_vpd vpd ;
   struct ipr_res_addr dev_res_addr ;
   struct ipr_vpd new_vpd ;
   struct ipr_vpd ioa_last_with_dev_vpd ;
   struct ipr_vpd cfc_last_with_dev_vpd ;
   __be32 ioa_data[5U] ;
};
struct ipr_hostrcb_device_data_entry_enhanced {
   struct ipr_ext_vpd vpd ;
   u8 ccin[4U] ;
   struct ipr_res_addr dev_res_addr ;
   struct ipr_ext_vpd new_vpd ;
   u8 new_ccin[4U] ;
   struct ipr_ext_vpd ioa_last_with_dev_vpd ;
   struct ipr_ext_vpd cfc_last_with_dev_vpd ;
};
struct ipr_hostrcb64_device_data_entry_enhanced {
   struct ipr_ext_vpd vpd ;
   u8 ccin[4U] ;
   u8 res_path[8U] ;
   struct ipr_ext_vpd new_vpd ;
   u8 new_ccin[4U] ;
   struct ipr_ext_vpd ioa_last_with_dev_vpd ;
   struct ipr_ext_vpd cfc_last_with_dev_vpd ;
};
struct ipr_hostrcb_array_data_entry {
   struct ipr_vpd vpd ;
   struct ipr_res_addr expected_dev_res_addr ;
   struct ipr_res_addr dev_res_addr ;
};
struct ipr_hostrcb64_array_data_entry {
   struct ipr_ext_vpd vpd ;
   u8 ccin[4U] ;
   u8 expected_res_path[8U] ;
   u8 res_path[8U] ;
};
struct ipr_hostrcb_array_data_entry_enhanced {
   struct ipr_ext_vpd vpd ;
   u8 ccin[4U] ;
   struct ipr_res_addr expected_dev_res_addr ;
   struct ipr_res_addr dev_res_addr ;
};
struct ipr_hostrcb_type_ff_error {
   __be32 ioa_data[758U] ;
};
struct ipr_hostrcb_type_01_error {
   __be32 seek_counter ;
   __be32 read_counter ;
   u8 sense_data[32U] ;
   __be32 ioa_data[236U] ;
};
struct ipr_hostrcb_type_21_error {
   __be32 wwn[4U] ;
   u8 res_path[8U] ;
   u8 primary_problem_desc[32U] ;
   u8 second_problem_desc[32U] ;
   __be32 sense_data[8U] ;
   __be32 cdb[4U] ;
   __be32 residual_trans_length ;
   __be32 length_of_error ;
   __be32 ioa_data[236U] ;
};
struct ipr_hostrcb_type_02_error {
   struct ipr_vpd ioa_vpd ;
   struct ipr_vpd cfc_vpd ;
   struct ipr_vpd ioa_last_attached_to_cfc_vpd ;
   struct ipr_vpd cfc_last_attached_to_ioa_vpd ;
   __be32 ioa_data[3U] ;
};
struct ipr_hostrcb_type_12_error {
   struct ipr_ext_vpd ioa_vpd ;
   struct ipr_ext_vpd cfc_vpd ;
   struct ipr_ext_vpd ioa_last_attached_to_cfc_vpd ;
   struct ipr_ext_vpd cfc_last_attached_to_ioa_vpd ;
   __be32 ioa_data[3U] ;
};
struct ipr_hostrcb_type_03_error {
   struct ipr_vpd ioa_vpd ;
   struct ipr_vpd cfc_vpd ;
   __be32 errors_detected ;
   __be32 errors_logged ;
   u8 ioa_data[12U] ;
   struct ipr_hostrcb_device_data_entry dev[3U] ;
};
struct ipr_hostrcb_type_13_error {
   struct ipr_ext_vpd ioa_vpd ;
   struct ipr_ext_vpd cfc_vpd ;
   __be32 errors_detected ;
   __be32 errors_logged ;
   struct ipr_hostrcb_device_data_entry_enhanced dev[3U] ;
};
struct ipr_hostrcb_type_23_error {
   struct ipr_ext_vpd ioa_vpd ;
   struct ipr_ext_vpd cfc_vpd ;
   __be32 errors_detected ;
   __be32 errors_logged ;
   struct ipr_hostrcb64_device_data_entry_enhanced dev[3U] ;
};
struct ipr_hostrcb_type_04_error {
   struct ipr_vpd ioa_vpd ;
   struct ipr_vpd cfc_vpd ;
   u8 ioa_data[12U] ;
   struct ipr_hostrcb_array_data_entry array_member[10U] ;
   __be32 exposed_mode_adn ;
   __be32 array_id ;
   struct ipr_vpd incomp_dev_vpd ;
   __be32 ioa_data2 ;
   struct ipr_hostrcb_array_data_entry array_member2[8U] ;
   struct ipr_res_addr last_func_vset_res_addr ;
   u8 vset_serial_num[8U] ;
   u8 protection_level[8U] ;
};
struct ipr_hostrcb_type_14_error {
   struct ipr_ext_vpd ioa_vpd ;
   struct ipr_ext_vpd cfc_vpd ;
   __be32 exposed_mode_adn ;
   __be32 array_id ;
   struct ipr_res_addr last_func_vset_res_addr ;
   u8 vset_serial_num[8U] ;
   u8 protection_level[8U] ;
   __be32 num_entries ;
   struct ipr_hostrcb_array_data_entry_enhanced array_member[18U] ;
};
struct ipr_hostrcb_type_24_error {
   struct ipr_ext_vpd ioa_vpd ;
   struct ipr_ext_vpd cfc_vpd ;
   u8 reserved[2U] ;
   u8 exposed_mode_adn ;
   u8 array_id ;
   u8 last_res_path[8U] ;
   u8 protection_level[8U] ;
   struct ipr_ext_vpd64 array_vpd ;
   u8 description[16U] ;
   u8 reserved2[3U] ;
   u8 num_entries ;
   struct ipr_hostrcb64_array_data_entry array_member[32U] ;
};
struct ipr_hostrcb_type_07_error {
   u8 failure_reason[64U] ;
   struct ipr_vpd vpd ;
   u32 data[222U] ;
};
struct ipr_hostrcb_type_17_error {
   u8 failure_reason[64U] ;
   struct ipr_ext_vpd vpd ;
   u32 data[476U] ;
};
struct ipr_hostrcb_config_element {
   u8 type_status ;
   u8 cascaded_expander ;
   u8 phy ;
   u8 link_rate ;
   __be32 wwid[2U] ;
};
struct ipr_hostrcb64_config_element {
   __be16 length ;
   u8 descriptor_id ;
   u8 reserved ;
   u8 type_status ;
   u8 reserved2[2U] ;
   u8 link_rate ;
   u8 res_path[8U] ;
   __be32 wwid[2U] ;
};
struct ipr_hostrcb_fabric_desc {
   __be16 length ;
   u8 ioa_port ;
   u8 cascaded_expander ;
   u8 phy ;
   u8 path_state ;
   __be16 num_entries ;
   struct ipr_hostrcb_config_element elem[1U] ;
};
struct ipr_hostrcb64_fabric_desc {
   __be16 length ;
   u8 descriptor_id ;
   u8 reserved[2U] ;
   u8 path_state ;
   u8 reserved2[2U] ;
   u8 res_path[8U] ;
   u8 reserved3[6U] ;
   __be16 num_entries ;
   struct ipr_hostrcb64_config_element elem[1U] ;
};
struct ipr_hostrcb_type_20_error {
   u8 failure_reason[64U] ;
   u8 reserved[3U] ;
   u8 num_entries ;
   struct ipr_hostrcb_fabric_desc desc[1U] ;
};
struct ipr_hostrcb_type_30_error {
   u8 failure_reason[64U] ;
   u8 reserved[3U] ;
   u8 num_entries ;
   struct ipr_hostrcb64_fabric_desc desc[1U] ;
};
union __anonunion_u_293 {
   struct ipr_hostrcb_type_ff_error type_ff_error ;
   struct ipr_hostrcb_type_01_error type_01_error ;
   struct ipr_hostrcb_type_02_error type_02_error ;
   struct ipr_hostrcb_type_03_error type_03_error ;
   struct ipr_hostrcb_type_04_error type_04_error ;
   struct ipr_hostrcb_type_07_error type_07_error ;
   struct ipr_hostrcb_type_12_error type_12_error ;
   struct ipr_hostrcb_type_13_error type_13_error ;
   struct ipr_hostrcb_type_14_error type_14_error ;
   struct ipr_hostrcb_type_17_error type_17_error ;
   struct ipr_hostrcb_type_20_error type_20_error ;
};
struct ipr_hostrcb_error {
   __be32 fd_ioasc ;
   struct ipr_res_addr fd_res_addr ;
   __be32 fd_res_handle ;
   __be32 prc ;
   union __anonunion_u_293 u ;
};
union __anonunion_u_294 {
   struct ipr_hostrcb_type_ff_error type_ff_error ;
   struct ipr_hostrcb_type_12_error type_12_error ;
   struct ipr_hostrcb_type_17_error type_17_error ;
   struct ipr_hostrcb_type_21_error type_21_error ;
   struct ipr_hostrcb_type_23_error type_23_error ;
   struct ipr_hostrcb_type_24_error type_24_error ;
   struct ipr_hostrcb_type_30_error type_30_error ;
};
struct ipr_hostrcb64_error {
   __be32 fd_ioasc ;
   __be32 ioa_fw_level ;
   __be32 fd_res_handle ;
   __be32 prc ;
   __be64 fd_dev_id ;
   __be64 fd_lun ;
   u8 fd_res_path[8U] ;
   __be64 time_stamp ;
   u8 reserved[16U] ;
   union __anonunion_u_294 u ;
};
struct ipr_hostrcb_raw {
   __be32 data[762U] ;
};
union __anonunion_u_295 {
   struct ipr_hostrcb_error error ;
   struct ipr_hostrcb64_error error64 ;
   struct ipr_hostrcb_cfg_ch_not ccn ;
   struct ipr_hostrcb_raw raw ;
};
struct ipr_hcam {
   u8 op_code ;
   u8 notify_type ;
   u8 notifications_lost ;
   u8 flags ;
   u8 overlay_id ;
   u8 reserved1[3U] ;
   __be32 ilid ;
   __be32 time_since_last_ioa_reset ;
   __be32 reserved2 ;
   __be32 length ;
   union __anonunion_u_295 u ;
};
struct ipr_hostrcb {
   struct ipr_hcam hcam ;
   dma_addr_t hostrcb_dma ;
   struct list_head queue ;
   struct ipr_ioa_cfg *ioa_cfg ;
   char rp_buffer[48U] ;
};
struct ipr_sdt_entry {
   __be32 start_token ;
   __be32 end_token ;
   u8 reserved[4U] ;
   u8 flags ;
   u8 resv ;
   __be16 priority ;
};
struct ipr_sdt_header {
   __be32 state ;
   __be32 num_entries ;
   __be32 num_entries_used ;
   __be32 dump_size ;
};
struct ipr_sdt {
   struct ipr_sdt_header hdr ;
   struct ipr_sdt_entry entry[4095U] ;
};
struct ipr_uc_sdt {
   struct ipr_sdt_header hdr ;
   struct ipr_sdt_entry entry[1U] ;
};
struct ipr_bus_attributes {
   u8 bus ;
   u8 qas_enabled ;
   u8 bus_width ;
   u8 reserved ;
   u32 max_xfer_rate ;
};
struct ipr_resource_entry;
struct ipr_sata_port {
   struct ipr_ioa_cfg *ioa_cfg ;
   struct ata_port *ap ;
   struct ipr_resource_entry *res ;
   struct ipr_ioasa_gata ioasa ;
};
struct ipr_resource_entry {
   unsigned char needs_sync_complete : 1 ;
   unsigned char in_erp : 1 ;
   unsigned char add_to_ml : 1 ;
   unsigned char del_from_ml : 1 ;
   unsigned char resetting_device : 1 ;
   unsigned char reset_occurred : 1 ;
   unsigned char raw_mode : 1 ;
   u32 bus ;
   u32 target ;
   u32 lun ;
   u8 ata_class ;
   u8 flags ;
   __be16 res_flags ;
   u8 type ;
   u8 qmodel ;
   struct ipr_std_inq_data std_inq_data ;
   __be32 res_handle ;
   __be64 dev_id ;
   __be64 lun_wwn ;
   struct scsi_lun dev_lun ;
   u8 res_path[8U] ;
   struct ipr_ioa_cfg *ioa_cfg ;
   struct scsi_device *sdev ;
   struct ipr_sata_port *sata_port ;
   struct list_head queue ;
};
struct ipr_misc_cbs {
   struct ipr_ioa_vpd ioa_vpd ;
   struct ipr_inquiry_page0 page0_data ;
   struct ipr_inquiry_page3 page3_data ;
   struct ipr_inquiry_cap cap ;
   struct ipr_mode_pages mode_pages ;
   struct ipr_supported_device supp_dev ;
};
struct ipr_interrupt_offsets {
   unsigned long set_interrupt_mask_reg ;
   unsigned long clr_interrupt_mask_reg ;
   unsigned long clr_interrupt_mask_reg32 ;
   unsigned long sense_interrupt_mask_reg ;
   unsigned long sense_interrupt_mask_reg32 ;
   unsigned long clr_interrupt_reg ;
   unsigned long clr_interrupt_reg32 ;
   unsigned long sense_interrupt_reg ;
   unsigned long sense_interrupt_reg32 ;
   unsigned long ioarrin_reg ;
   unsigned long sense_uproc_interrupt_reg ;
   unsigned long sense_uproc_interrupt_reg32 ;
   unsigned long set_uproc_interrupt_reg ;
   unsigned long set_uproc_interrupt_reg32 ;
   unsigned long clr_uproc_interrupt_reg ;
   unsigned long clr_uproc_interrupt_reg32 ;
   unsigned long init_feedback_reg ;
   unsigned long dump_addr_reg ;
   unsigned long dump_data_reg ;
   unsigned long endian_swap_reg ;
};
struct ipr_interrupts {
   void *set_interrupt_mask_reg ;
   void *clr_interrupt_mask_reg ;
   void *clr_interrupt_mask_reg32 ;
   void *sense_interrupt_mask_reg ;
   void *sense_interrupt_mask_reg32 ;
   void *clr_interrupt_reg ;
   void *clr_interrupt_reg32 ;
   void *sense_interrupt_reg ;
   void *sense_interrupt_reg32 ;
   void *ioarrin_reg ;
   void *sense_uproc_interrupt_reg ;
   void *sense_uproc_interrupt_reg32 ;
   void *set_uproc_interrupt_reg ;
   void *set_uproc_interrupt_reg32 ;
   void *clr_uproc_interrupt_reg ;
   void *clr_uproc_interrupt_reg32 ;
   void *init_feedback_reg ;
   void *dump_addr_reg ;
   void *dump_data_reg ;
   void *endian_swap_reg ;
};
struct ipr_chip_cfg_t {
   u32 mailbox ;
   u16 max_cmds ;
   u8 cache_line_size ;
   u8 clear_isr ;
   u32 iopoll_weight ;
   struct ipr_interrupt_offsets regs ;
};
struct ipr_chip_t {
   u16 vendor ;
   u16 device ;
   u16 intr_type ;
   u16 sis_type ;
   u16 bist_method ;
   struct ipr_chip_cfg_t const *cfg ;
};
enum ipr_shutdown_type {
    IPR_SHUTDOWN_NORMAL = 0,
    IPR_SHUTDOWN_PREPARE_FOR_NORMAL = 64,
    IPR_SHUTDOWN_ABBREV = 128,
    IPR_SHUTDOWN_NONE = 256,
    IPR_SHUTDOWN_QUIESCE = 257
} ;
union __anonunion_u_296 {
   u32 ioasc ;
   u32 add_data ;
   u32 res_addr ;
};
struct ipr_trace_entry {
   u32 time ;
   u8 op_code ;
   u8 ata_op_code ;
   u8 type ;
   u8 cmd_index ;
   __be32 res_handle ;
   union __anonunion_u_296 u ;
};
struct ipr_sglist {
   u32 order ;
   u32 num_sg ;
   u32 num_dma_sg ;
   u32 buffer_len ;
   struct scatterlist scatterlist[1U] ;
};
enum ipr_sdt_state {
    INACTIVE = 0,
    WAIT_FOR_DUMP = 1,
    GET_DUMP = 2,
    READ_DUMP = 3,
    ABORT_DUMP = 4,
    DUMP_OBTAINED = 5
} ;
union __anonunion_u_297 {
   struct ipr_config_table *cfg_table ;
   struct ipr_config_table64 *cfg_table64 ;
};
struct ipr_dump;
struct ipr_cmnd;
struct __anonstruct_vectors_info_298 {
   unsigned short vec ;
   char desc[22U] ;
};
struct ipr_ioa_cfg {
   char eye_catcher[8U] ;
   struct list_head queue ;
   unsigned char in_reset_reload : 1 ;
   unsigned char in_ioa_bringdown : 1 ;
   unsigned char ioa_unit_checked : 1 ;
   unsigned char dump_taken : 1 ;
   unsigned char scan_done : 1 ;
   unsigned char needs_hard_reset : 1 ;
   unsigned char dual_raid : 1 ;
   unsigned char needs_warm_reset : 1 ;
   unsigned char msi_received : 1 ;
   unsigned char sis64 : 1 ;
   unsigned char dump_timeout : 1 ;
   unsigned char cfg_locked : 1 ;
   unsigned char clear_isr : 1 ;
   unsigned char probe_done : 1 ;
   u8 revid ;
   unsigned long target_ids[64U] ;
   unsigned long array_ids[64U] ;
   unsigned long vset_ids[64U] ;
   u16 type ;
   u8 log_level ;
   char trace_start[8U] ;
   struct ipr_trace_entry *trace ;
   atomic_t trace_index ;
   char cfg_table_start[8U] ;
   union __anonunion_u_297 u ;
   dma_addr_t cfg_table_dma ;
   u32 cfg_table_size ;
   u32 max_devs_supported ;
   char resource_table_label[8U] ;
   struct ipr_resource_entry *res_entries ;
   struct list_head free_res_q ;
   struct list_head used_res_q ;
   char ipr_hcam_label[8U] ;
   struct ipr_hostrcb *hostrcb[4U] ;
   dma_addr_t hostrcb_dma[4U] ;
   struct list_head hostrcb_free_q ;
   struct list_head hostrcb_pending_q ;
   struct ipr_hrr_queue hrrq[16U] ;
   u32 hrrq_num ;
   atomic_t hrrq_index ;
   u16 identify_hrrq_index ;
   struct ipr_bus_attributes bus_attr[16U] ;
   unsigned int transop_timeout ;
   struct ipr_chip_cfg_t const *chip_cfg ;
   struct ipr_chip_t const *ipr_chip ;
   void *hdw_dma_regs ;
   unsigned long hdw_dma_regs_pci ;
   void *ioa_mailbox ;
   struct ipr_interrupts regs ;
   u16 saved_pcix_cmd_reg ;
   u16 reset_retries ;
   u32 errors_logged ;
   u32 doorbell ;
   struct Scsi_Host *host ;
   struct pci_dev *pdev ;
   struct ipr_sglist *ucode_sglist ;
   u8 saved_mode_page_len ;
   struct work_struct work_q ;
   struct workqueue_struct *reset_work_q ;
   wait_queue_head_t reset_wait_q ;
   wait_queue_head_t msi_wait_q ;
   wait_queue_head_t eeh_wait_q ;
   struct ipr_dump *dump ;
   enum ipr_sdt_state sdt_state ;
   struct ipr_misc_cbs *vpd_cbs ;
   dma_addr_t vpd_cbs_dma ;
   struct dma_pool *ipr_cmd_pool ;
   struct ipr_cmnd *reset_cmd ;
   int (*reset)(struct ipr_cmnd * ) ;
   struct ata_host ata_host ;
   char ipr_cmd_label[8U] ;
   u32 max_cmds ;
   struct ipr_cmnd **ipr_cmnd_list ;
   dma_addr_t *ipr_cmnd_list_dma ;
   u16 intr_flag ;
   unsigned int nvectors ;
   struct __anonstruct_vectors_info_298 vectors_info[16U] ;
   u32 iopoll_weight ;
};
union __anonunion_i_299 {
   struct ipr_ioadl_desc ioadl[64U] ;
   struct ipr_ioadl64_desc ioadl64[64U] ;
   struct ipr_ata64_ioadl ata_ioadl ;
};
union __anonunion_s_300 {
   struct ipr_ioasa ioasa ;
   struct ipr_ioasa64 ioasa64 ;
};
union __anonunion_u_301 {
   enum ipr_shutdown_type shutdown_type ;
   struct ipr_hostrcb *hostrcb ;
   unsigned long time_left ;
   unsigned long scratch ;
   struct ipr_resource_entry *res ;
   struct scsi_device *sdev ;
};
struct ipr_cmnd {
   struct ipr_ioarcb ioarcb ;
   union __anonunion_i_299 i ;
   union __anonunion_s_300 s ;
   struct list_head queue ;
   struct scsi_cmnd *scsi_cmd ;
   struct ata_queued_cmd *qc ;
   struct completion completion ;
   struct timer_list timer ;
   struct work_struct work ;
   void (*fast_done)(struct ipr_cmnd * ) ;
   void (*done)(struct ipr_cmnd * ) ;
   int (*job_step)(struct ipr_cmnd * ) ;
   int (*job_step_failed)(struct ipr_cmnd * ) ;
   u16 cmd_index ;
   u8 sense_buffer[96U] ;
   dma_addr_t sense_buffer_dma ;
   unsigned short dma_use_sg ;
   dma_addr_t dma_addr ;
   struct ipr_cmnd *sibling ;
   union __anonunion_u_301 u ;
   struct completion *eh_comp ;
   struct ipr_hrr_queue *hrrq ;
   struct ipr_ioa_cfg *ioa_cfg ;
};
struct ipr_ses_table_entry {
   char product_id[17U] ;
   char compare_product_id_byte[17U] ;
   u32 max_bus_speed_limit ;
};
struct ipr_dump_header {
   u32 eye_catcher ;
   u32 len ;
   u32 num_entries ;
   u32 first_entry_offset ;
   u32 status ;
   u32 os ;
   u32 driver_name ;
};
struct ipr_dump_entry_header {
   u32 eye_catcher ;
   u32 len ;
   u32 num_elems ;
   u32 offset ;
   u32 data_type ;
   u32 id ;
   u32 status ;
};
struct ipr_dump_location_entry {
   struct ipr_dump_entry_header hdr ;
   u8 location[20U] ;
};
struct ipr_dump_trace_entry {
   struct ipr_dump_entry_header hdr ;
   u32 trace[1024U] ;
};
struct ipr_dump_version_entry {
   struct ipr_dump_entry_header hdr ;
   u8 version[6U] ;
};
struct ipr_dump_ioa_type_entry {
   struct ipr_dump_entry_header hdr ;
   u32 type ;
   u32 fw_version ;
};
struct ipr_driver_dump {
   struct ipr_dump_header hdr ;
   struct ipr_dump_version_entry version_entry ;
   struct ipr_dump_location_entry location_entry ;
   struct ipr_dump_ioa_type_entry ioa_type_entry ;
   struct ipr_dump_trace_entry trace_entry ;
};
struct ipr_ioa_dump {
   struct ipr_dump_entry_header hdr ;
   struct ipr_sdt sdt ;
   __be32 **ioa_data ;
   u32 reserved ;
   u32 next_page_index ;
   u32 page_offset ;
   u32 format ;
};
struct ipr_dump {
   struct kref kref ;
   struct ipr_ioa_cfg *ioa_cfg ;
   struct ipr_driver_dump driver_dump ;
   struct ipr_ioa_dump ioa_dump ;
};
struct ipr_error_table_t {
   u32 ioasc ;
   int log_ioasa ;
   int log_hcam ;
   char *error ;
};
struct ipr_software_inq_lid_info {
   __be32 load_id ;
   __be32 timestamp[3U] ;
};
struct ipr_ucode_image_header {
   __be32 header_length ;
   __be32 lid_table_offset ;
   u8 major_release ;
   u8 card_type ;
   u8 minor_release[2U] ;
   u8 reserved[20U] ;
   char eyecatcher[16U] ;
   __be32 num_lids ;
   struct ipr_software_inq_lid_info lid[1U] ;
};
struct __anonstruct_path_active_desc_303 {
   u8 active ;
   char *desc ;
};
struct __anonstruct_path_state_desc_304 {
   u8 state ;
   char *desc ;
};
struct __anonstruct_path_type_desc_309 {
   u8 type ;
   char *desc ;
};
struct __anonstruct_path_status_desc_310 {
   u8 status ;
   char *desc ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
typedef struct Scsi_Host *ldv_func_ret_type___16;
typedef int ldv_func_ret_type___17;
typedef int ldv_func_ret_type___18;
typedef bool ldv_func_ret_type___19;
typedef int ldv_func_ret_type___20;
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
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
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
extern unsigned int reset_devices ;
extern int printk(char const * , ...) ;
extern int __printk_ratelimit(char const * ) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern enum system_states system_state ;
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
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
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
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern char *strim(char * ) ;
extern ssize_t memory_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
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
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
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
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_30(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_35(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_36(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_37(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_38(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_41(struct workqueue_struct *ldv_func_arg1 ) ;
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
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_52(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_15(8192, wq, work);
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
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
extern void iounmap(void volatile * ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
unsigned long ldv___get_free_pages_31(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void __free_pages(struct page * , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern int sysfs_create_bin_file(struct kobject * , struct bin_attribute const * ) ;
extern void sysfs_remove_bin_file(struct kobject * , struct bin_attribute const * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int kobject_uevent(struct kobject * , enum kobject_action ) ;
extern bool capable(int ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
int ldv_state_variable_20 ;
int pci_counter ;
int ldv_irq_5_1 = 0;
int ldv_state_variable_0 ;
void *ldv_irq_data_5_3 ;
int ldv_irq_2_0 = 0;
int ldv_state_variable_12 ;
int ldv_irq_line_4_2 ;
int ldv_irq_3_2 = 0;
int ldv_irq_line_4_3 ;
int ldv_state_variable_22 ;
int ldv_state_variable_14 ;
struct device_attribute *ipr_log_level_attr_group0 ;
int ldv_state_variable_17 ;
struct kobject *ipr_dump_attr_group0 ;
struct scsi_target *driver_template_group2 ;
void *ldv_irq_data_2_3 ;
int ldv_work_7_2 ;
int ldv_state_variable_19 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_7_1 ;
int ldv_work_6_0 ;
struct work_struct *ldv_work_struct_6_1 ;
struct timer_list *ldv_timer_list_8 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_7 ;
int ldv_state_variable_23 ;
int ldv_irq_5_2 = 0;
int ldv_irq_3_0 = 0;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
int ldv_irq_line_2_2 ;
int ldv_timer_state_8 = 0;
void *ldv_irq_data_5_2 ;
struct device *ipr_raw_mode_attr_group1 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
void *ldv_irq_data_3_0 ;
struct device *ipr_ioa_state_attr_group1 ;
void *ldv_irq_data_1_3 ;
struct work_struct *ldv_work_struct_7_2 ;
void *ldv_irq_data_5_0 ;
int ldv_state_variable_26 ;
struct device *ipr_log_level_attr_group1 ;
int ldv_state_variable_28 ;
struct work_struct *ldv_work_struct_7_0 ;
struct scsi_device *driver_template_group3 ;
void *ldv_irq_data_4_1 ;
int LDV_IN_INTERRUPT = 1;
struct work_struct *ldv_work_struct_6_0 ;
int ldv_irq_1_1 = 0;
int ldv_irq_line_3_1 ;
int ldv_work_7_1 ;
int ldv_state_variable_3 ;
struct file *ipr_dump_attr_group1 ;
int ldv_irq_line_1_0 ;
void *ldv_irq_data_3_2 ;
int ldv_work_6_2 ;
int ldv_state_variable_4 ;
int ldv_irq_4_1 = 0;
int ldv_irq_line_3_3 ;
struct device_attribute *ipr_iopoll_weight_attr_group0 ;
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
int ldv_irq_line_5_0 ;
struct work_struct *ldv_work_struct_6_3 ;
int ldv_state_variable_21 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_irq_3_1 = 0;
void *ldv_irq_data_4_0 ;
struct Scsi_Host *driver_template_group1 ;
int ldv_irq_line_5_2 ;
void *ldv_irq_data_4_3 ;
int ldv_irq_4_2 = 0;
struct ata_queued_cmd *ipr_sata_ops_group0 ;
struct device_attribute *ipr_raw_mode_attr_group0 ;
struct ata_port *ipr_sata_ops_group1 ;
int ldv_irq_4_0 = 0;
int ldv_irq_2_2 = 0;
int ldv_state_variable_24 ;
int ldv_work_7_3 ;
int ldv_irq_line_2_0 ;
int ldv_irq_line_4_0 ;
int ldv_irq_line_3_0 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
struct pci_dev *ipr_driver_group1 ;
int ldv_irq_line_2_3 ;
int ldv_work_6_1 ;
void *ldv_irq_data_3_3 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_3_2 ;
struct work_struct *ldv_work_struct_6_2 ;
int ldv_state_variable_10 ;
void *ldv_irq_data_4_2 ;
int ldv_irq_1_0 = 0;
int ldv_work_7_0 ;
void *ldv_irq_data_3_1 ;
void *ldv_irq_data_5_1 ;
int ldv_state_variable_16 ;
int ldv_irq_line_2_1 ;
struct work_struct *ldv_work_struct_7_3 ;
int ldv_state_variable_2 ;
int ldv_state_variable_25 ;
void *ldv_irq_data_1_2 ;
int ldv_work_6_3 ;
int ldv_irq_5_3 = 0;
int ldv_irq_line_5_1 ;
void *ldv_irq_data_2_0 ;
struct device *ipr_iopoll_weight_attr_group1 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
int ldv_irq_4_3 = 0;
int ldv_state_variable_18 ;
struct pci_dev *ipr_err_handler_group0 ;
int ldv_irq_2_3 = 0;
int ldv_irq_line_1_3 ;
int ldv_irq_5_0 = 0;
struct device_attribute *ipr_ioa_state_attr_group0 ;
int ldv_irq_line_4_1 ;
int ldv_irq_line_5_3 ;
struct scsi_cmnd *driver_template_group0 ;
int ldv_irq_3_3 = 0;
struct bin_attribute *ipr_dump_attr_group2 ;
void activate_suitable_irq_4(int line , void *data ) ;
int ldv_irq_3(int state , int line , void *data ) ;
void call_and_disable_all_7(int state ) ;
void disable_suitable_irq_2(int line , void *data ) ;
int ldv_irq_4(int state , int line , void *data ) ;
void invoke_work_6(void) ;
void ldv_initialize_device_attribute_22(void) ;
void activate_suitable_irq_3(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void choose_interrupt_4(void) ;
void disable_suitable_timer_8(struct timer_list *timer ) ;
void ldv_initialize_device_attribute_26(void) ;
void ldv_initialize_ata_port_operations_12(void) ;
void work_init_7(void) ;
void ldv_initialize_bin_attribute_19(void) ;
void invoke_work_7(void) ;
void ldv_initialize_pci_error_handlers_11(void) ;
void activate_suitable_irq_5(int line , void *data ) ;
void disable_work_7(struct work_struct *work ) ;
void ldv_initialize_device_attribute_24(void) ;
void ldv_pci_driver_10(void) ;
void call_and_disable_all_6(int state ) ;
void activate_pending_timer_8(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_irq_1(int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int reg_check_4(irqreturn_t (*handler)(int , void * ) ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void activate_work_6(struct work_struct *work , int state ) ;
void choose_interrupt_2(void) ;
void call_and_disable_work_7(struct work_struct *work ) ;
void choose_interrupt_5(void) ;
void choose_timer_8(struct timer_list *timer ) ;
void ldv_initialize_scsi_host_template_13(void) ;
void disable_suitable_irq_5(int line , void *data ) ;
void disable_suitable_irq_4(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_timer_8(struct timer_list *timer ) ;
int ldv_irq_5(int state , int line , void *data ) ;
void ldv_initialize_device_attribute_14(void) ;
void work_init_6(void) ;
void disable_work_6(struct work_struct *work ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_7(struct work_struct *work , int state ) ;
void disable_suitable_irq_3(int line , void *data ) ;
int reg_check_3(irqreturn_t (*handler)(int , void * ) ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void call_and_disable_work_6(struct work_struct *work ) ;
void choose_interrupt_3(void) ;
int reg_check_5(irqreturn_t (*handler)(int , void * ) ) ;
void *ldv_vmalloc_32(unsigned long ldv_func_arg1 ) ;
void *ldv_vmalloc_33(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  msleep(seconds * 1000U);
  return;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
__inline static int pci_channel_offline(struct pci_dev *pdev )
{
  {
  return (pdev->error_state != 1U);
}
}
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
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
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
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
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_set_pcie_reset_state(struct pci_dev * , enum pcie_reset_state ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 ) ;
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
                         "i" (90), "i" (12UL));
    ldv_29889: ;
    goto ldv_29889;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (92), "i" (12UL));
    ldv_29890: ;
    goto ldv_29890;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (93), "i" (12UL));
    ldv_29891: ;
    goto ldv_29891;
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
    ldv_29901: ;
    goto ldv_29901;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (124), "i" (12UL));
    ldv_29902: ;
    goto ldv_29902;
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
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
void *ldv_dma_pool_alloc_42(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
extern bool pci_cfg_access_trylock(struct pci_dev * ) ;
extern void pci_cfg_access_unlock(struct pci_dev * ) ;
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
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
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
  goto ldv_30701;
  ldv_30700:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_30701: ;
  if (i < nents) {
    goto ldv_30700;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (56), "i" (12UL));
    ldv_30703: ;
    goto ldv_30703;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  tmp___3 = ldv__builtin_expect(ents < 0, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (58), "i" (12UL));
    ldv_30704: ;
    goto ldv_30704;
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
    ldv_30713: ;
    goto ldv_30713;
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
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
__inline static int ldv_request_irq_43(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_45(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_50(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_51(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_39(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_40(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_44(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_47(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_48(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static void *kmap(struct page *page )
{
  void *tmp ;
  {
  __might_sleep("include/linux/highmem.h", 58, 0);
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_rq_timeout(struct request_queue * , unsigned int ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern u64 scsilun_to_int(struct scsi_lun * ) ;
extern int scsi_is_host_device(struct device const * ) ;
__inline static struct Scsi_Host *dev_to_shost(struct device *dev )
{
  int tmp ;
  struct device const *__mptr ;
  {
  goto ldv_37311;
  ldv_37310: ;
  if ((unsigned long )dev->parent == (unsigned long )((struct device *)0)) {
    return ((struct Scsi_Host *)0);
  } else {
  }
  dev = dev->parent;
  ldv_37311:
  tmp = scsi_is_host_device((struct device const *)dev);
  if (tmp == 0) {
    goto ldv_37310;
  } else {
  }
  __mptr = (struct device const *)dev;
  return ((struct Scsi_Host *)__mptr + 0xfffffffffffffc48UL);
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_49(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_54(struct Scsi_Host *shost ) ;
void ldv_scsi_remove_host_55(struct Scsi_Host *shost ) ;
void ldv_scsi_remove_host_56(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_29(host, dev, dev);
  return (tmp);
}
}
extern void scsi_unblock_requests(struct Scsi_Host * ) ;
extern void scsi_block_requests(struct Scsi_Host * ) ;
extern void ata_host_init(struct ata_host * , struct device * , struct ata_port_operations * ) ;
extern int ata_sas_scsi_ioctl(struct ata_port * , struct scsi_device * , int , void * ) ;
extern void ata_sas_port_destroy(struct ata_port * ) ;
extern struct ata_port *ata_sas_port_alloc(struct ata_host * , struct ata_port_info * ,
                                           struct Scsi_Host * ) ;
extern int ata_sas_sync_probe(struct ata_port * ) ;
extern int ata_sas_port_init(struct ata_port * ) ;
extern int ata_sas_port_start(struct ata_port * ) ;
extern void ata_sas_port_stop(struct ata_port * ) ;
extern int ata_sas_slave_configure(struct scsi_device * , struct ata_port * ) ;
extern int ata_sas_queuecmd(struct scsi_cmnd * , struct ata_port * ) ;
extern void ata_noop_qc_prep(struct ata_queued_cmd * ) ;
extern void ata_qc_complete(struct ata_queued_cmd * ) ;
extern void ata_std_error_handler(struct ata_port * ) ;
__inline static unsigned int ac_err_mask(u8 status )
{
  {
  if (((int )status & 136) != 0) {
    return (2U);
  } else {
  }
  if (((int )status & 33) != 0) {
    return (1U);
  } else {
  }
  return (0U);
}
}
__inline static unsigned int __ac_err_mask(u8 status )
{
  unsigned int mask ;
  unsigned int tmp ;
  {
  tmp = ac_err_mask((int )status);
  mask = tmp;
  if (mask == 0U) {
    return (256U);
  } else {
  }
  return (mask);
}
}
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
extern void sdev_prefix_printk(char const * , struct scsi_device const * , char const * ,
                               char const * , ...) ;
extern void scmd_printk(char const * , struct scsi_cmnd const * , char const *
                        , ...) ;
extern int scsi_add_device(struct Scsi_Host * , uint , uint , u64 ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern int scsi_device_get(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
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
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
extern void scsi_report_bus_reset(struct Scsi_Host * , int ) ;
extern void scsi_report_device_reset(struct Scsi_Host * , int , int ) ;
__inline static u64 get_unaligned_be64(void const *p )
{
  __u64 tmp ;
  {
  tmp = __be64_to_cpup((__be64 const *)p);
  return (tmp);
}
}
__inline static int blk_iopoll_sched_prep(struct blk_iopoll *iop )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& iop->state));
  if (tmp___0 == 0) {
    tmp = test_and_set_bit(0L, (unsigned long volatile *)(& iop->state));
    return (tmp);
  } else {
  }
  return (1);
}
}
extern void blk_iopoll_sched(struct blk_iopoll * ) ;
extern void blk_iopoll_init(struct blk_iopoll * , int , blk_iopoll_fn * ) ;
extern void blk_iopoll_complete(struct blk_iopoll * ) ;
extern void blk_iopoll_enable(struct blk_iopoll * ) ;
extern void blk_iopoll_disable(struct blk_iopoll * ) ;
__inline static int ipr_is_ioa_resource(struct ipr_resource_entry *res )
{
  {
  return ((unsigned int )res->type == 255U);
}
}
__inline static int ipr_is_af_dasd_device(struct ipr_resource_entry *res )
{
  {
  return ((unsigned int )res->type == 0U || (unsigned int )res->type == 3U);
}
}
__inline static int ipr_is_vset_device(struct ipr_resource_entry *res )
{
  {
  return ((unsigned int )res->type == 2U);
}
}
__inline static int ipr_is_gscsi(struct ipr_resource_entry *res )
{
  {
  return ((unsigned int )res->type == 1U);
}
}
__inline static int ipr_is_scsi_disk(struct ipr_resource_entry *res )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = ipr_is_af_dasd_device(res);
  if (tmp != 0) {
    return (1);
  } else {
    tmp___0 = ipr_is_gscsi(res);
    if (tmp___0 != 0 && (((int )res->std_inq_data.peri_qual_dev_type & 31) == 0 && (int )((signed char )res->std_inq_data.removeable_medium_rsvd) >= 0)) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
__inline static int ipr_is_gata(struct ipr_resource_entry *res )
{
  {
  return ((unsigned int )res->type == 4U);
}
}
__inline static int ipr_is_naca_model(struct ipr_resource_entry *res )
{
  int tmp ;
  {
  tmp = ipr_is_gscsi(res);
  if (tmp != 0 && (unsigned int )res->qmodel == 1U) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int ipr_is_device(struct ipr_hostrcb *hostrcb )
{
  struct ipr_res_addr *res_addr ;
  u8 *res_path ;
  {
  if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
    res_path = (u8 *)(& hostrcb->hcam.u.error64.fd_res_path);
    if ((((unsigned int )*res_path == 0U || (unsigned int )*res_path == 128U) || (unsigned int )*res_path == 129U) && (unsigned int )*(res_path + 2UL) != 255U) {
      return (1);
    } else {
    }
  } else {
    res_addr = & hostrcb->hcam.u.error.fd_res_addr;
    if ((unsigned int )res_addr->bus <= 15U && (unsigned int )res_addr->target != 255U) {
      return (1);
    } else {
    }
  }
  return (0);
}
}
__inline static int ipr_sdt_is_fmt2(u32 sdt_word )
{
  u32 bar_sel ;
  {
  bar_sel = sdt_word >> 28;
  switch (bar_sel) {
  case 0U: ;
  case 1U: ;
  case 2U: ;
  case 3U: ;
  case 4U: ;
  case 5U: ;
  case 8U: ;
  return (1);
  }
  return (0);
}
}
static struct list_head ipr_ioa_head = {& ipr_ioa_head, & ipr_ioa_head};
static unsigned int ipr_log_level = 2U;
static unsigned int ipr_max_speed = 1U;
static unsigned int ipr_fastfail = 0U;
static unsigned int ipr_transop_timeout = 0U;
static unsigned int ipr_debug = 0U;
static unsigned int ipr_max_devs = 1024U;
static unsigned int ipr_dual_ioa_raid = 1U;
static unsigned int ipr_number_of_msix = 2U;
static unsigned int ipr_fast_reboot ;
static spinlock_t ipr_driver_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ipr_driver_lock",
                                                    0, 0UL}}}};
static struct ipr_chip_cfg_t const ipr_chip_cfg[3U] = { {1068U, 100U, 32U, 1U, 0U, {556UL, 560UL, 560UL, 556UL, 556UL, 552UL, 552UL,
                                 548UL, 548UL, 1028UL, 532UL, 532UL, 532UL, 532UL,
                                 536UL, 536UL, 0UL, 0UL, 0UL, 0UL}},
        {1324U, 100U, 32U, 1U, 0U, {648UL, 652UL, 652UL, 648UL, 648UL, 644UL, 644UL,
                                 640UL, 640UL, 1284UL, 656UL, 656UL, 656UL, 656UL,
                                 660UL, 660UL, 0UL, 0UL, 0UL, 0UL}},
        {68U, 1000U, 32U, 0U, 64U, {16UL, 24UL, 28UL, 16UL, 20UL, 8UL, 12UL, 0UL, 4UL,
                                 112UL, 32UL, 36UL, 32UL, 36UL, 40UL, 44UL, 92UL,
                                 100UL, 104UL, 132UL}}};
static struct ipr_chip_t const ipr_chip[9U] =
  { {4201U, 45414U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg)},
        {4116U,
      652U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg)},
        {36869U, 1280U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg)},
        {4116U,
      701U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg)},
        {4116U, 825U, 1U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg)},
        {4116U,
      384U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg) + 1UL},
        {36869U, 1283U, 0U, 0U, 0U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg) + 1UL},
        {4116U,
      829U, 1U, 1U, 1U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg) + 2UL},
        {4116U, 842U, 1U, 1U, 1U, (struct ipr_chip_cfg_t const *)(& ipr_chip_cfg) + 2UL}};
static int ipr_max_bus_speeds[3U] = { 400, 800, 1600};
static struct ipr_error_table_t const ipr_error_table[163U] =
  { {0U, 1, 2, (char *)"8155: An unknown error was received"},
        {3342336U, 0, 0, (char *)"Soft underlength error"},
        {5898240U, 0, 0, (char *)"Command to be cancelled not found"},
        {8421376U, 0, 0, (char *)"Qualified success"},
        {17301504U, 1, 2, (char *)"FFFE: Soft device bus error recovered by the IOA"},
        {17334528U,
      0, 2, (char *)"4101: Soft device bus fabric error"},
        {17826048U, 0, 2, (char *)"FFFC: Logical block guard error recovered by the device"},
        {17826560U,
      0, 2, (char *)"FFFC: Logical block reference tag error recovered by the device"},
        {17859328U,
      0, 2, (char *)"4171: Recovered scatter list tag / sequence number error"},
        {17862656U, 0, 2, (char *)"FF3D: Recovered logical block CRC error on IOA to Host transfer"},
        {17863168U,
      0, 2, (char *)"4171: Recovered logical block sequence number error on IOA to Host transfer"},
        {17866752U,
      0, 2, (char *)"FFFD: Recovered logical block reference tag error detected by the IOA"},
        {17867008U,
      0, 2, (char *)"FFFD: Logical block guard error recovered by the IOA"},
        {18286080U, 0, 2, (char *)"FFF9: Device sector reassign successful"},
        {18286848U, 0, 2, (char *)"FFF7: Media error recovered by device rewrite procedures"},
        {18350592U,
      0, 2, (char *)"7001: IOA sector reassignment successful"},
        {18351360U, 0, 2, (char *)"FFF9: Soft media error. Sector reassignment recommended"},
        {18351616U,
      0, 2, (char *)"FFF7: Media error recovered by IOA rewrite procedures"},
        {21069824U, 0, 2, (char *)"FF3D: Soft PCI bus error recovered by the IOA"},
        {21233664U, 1, 2, (char *)"FFF6: Device hardware error recovered by the IOA"},
        {21266688U,
      0, 2, (char *)"FFF6: Device hardware error recovered by the device"},
        {21266944U, 1, 2, (char *)"FF3D: Soft IOA error recovered by the IOA"},
        {21267200U, 0, 2, (char *)"FFFA: Undefined device response recovered by the IOA"},
        {21626880U,
      1, 2, (char *)"FFF6: Device bus error, message or command phase"},
        {21659648U, 0, 2, (char *)"FFFE: Task Management Function failed"},
        {22872064U, 0, 2, (char *)"FFF6: Failure prediction threshold exceeded"},
        {22909440U, 0, 2, (char *)"8009: Impending cache battery pack failure"},
        {33816832U, 0, 0, (char *)"Logical Unit in process of becoming ready"},
        {33817088U, 0, 0, (char *)"Initializing command required"},
        {33817600U, 0, 0, (char *)"34FF: Disk device format in progress"},
        {33819648U, 0, 0, (char *)"Logical unit not accessible, target port in unavailable state"},
        {33849344U,
      0, 2, (char *)"9070: IOA requested reset"},
        {37683200U, 0, 0, (char *)"Synchronization required"},
        {37782784U, 0, 0, (char *)"IOA microcode download required"},
        {37783040U, 0, 0, (char *)"Device bus connection is prohibited by host"},
        {38666240U, 0, 0, (char *)"No ready, IOA shutdown"},
        {39452672U, 0, 0, (char *)"Not ready, IOA has been shutdown"},
        {40304896U, 0, 2, (char *)"3020: Storage subsystem configuration error"},
        {51448576U, 0, 0, (char *)"FFF5: Medium error, data unreadable, recommend reassign"},
        {51448832U,
      0, 0, (char *)"7000: Medium error, data unreadable, do not reassign"},
        {53542912U, 0, 2, (char *)"FFF3: Disk media format bad"},
        {67436544U, 0, 2, (char *)"3002: Addressed device failed to respond to selection"},
        {67633152U,
      1, 2, (char *)"3100: Device bus error"},
        {67633408U, 0, 2, (char *)"3109: IOA timed out a device command"},
        {67665920U, 0, 0, (char *)"3120: SCSI bus is not operational"},
        {67666176U, 0, 2, (char *)"4100: Hard device bus fabric error"},
        {68157696U, 0, 2, (char *)"310C: Logical block guard error detected by the device"},
        {68158208U,
      0, 2, (char *)"310C: Logical block reference tag error detected by the device"},
        {68190976U,
      1, 2, (char *)"4170: Scatter list tag / sequence number error"},
        {68194304U, 1, 2, (char *)"8150: Logical block CRC error on IOA to Host transfer"},
        {68194816U,
      1, 2, (char *)"4170: Logical block sequence number error on IOA to Host transfer"},
        {68198400U,
      0, 2, (char *)"310D: Logical block reference tag error detected by the IOA"},
        {68198656U,
      0, 2, (char *)"310D: Logical block guard error detected by the IOA"},
        {68255744U, 0, 2, (char *)"9000: IOA reserved area data check"},
        {68256000U, 0, 2, (char *)"9001: IOA reserved area invalid data pattern"},
        {68256256U, 0, 2, (char *)"9002: IOA reserved area LRC error"},
        {68256512U, 1, 2, (char *)"Hardware Error, IOA metadata access error"},
        {70385664U, 0, 2, (char *)"102E: Out of alternate sectors for disk storage"},
        {70451200U,
      1, 2, (char *)"FFF4: Data transfer underlength error"},
        {70483968U, 1, 2, (char *)"FFF4: Data transfer overlength error"},
        {71172352U, 0, 2, (char *)"3400: Logical unit failure"},
        {71337216U, 0, 2, (char *)"FFF4: Device microcode is corrupt"},
        {71401472U, 1, 2, (char *)"8150: PCI bus error"},
        {71499776U, 1, 0, (char *)"Unsupported device bus message received"},
        {71565312U, 1, 2, (char *)"FFF4: Disk device problem"},
        {71598592U, 1, 2, (char *)"8150: Permanent IOA failure"},
        {71598848U, 0, 2, (char *)"3010: Disk device returned wrong response to IOA"},
        {71599104U,
      0, 2, (char *)"8151: IOA microcode error"},
        {71599360U, 0, 0, (char *)"Device bus status error"},
        {71599616U, 0, 2, (char *)"8157: IOA error requiring IOA reset to recover"},
        {71599872U, 0, 0, (char *)"ATA device status error"},
        {71892992U, 0, 0, (char *)"Message reject received from the device"},
        {71602688U, 0, 2, (char *)"8008: A permanent cache battery pack failure occurred"},
        {71606272U,
      0, 2, (char *)"9090: Disk unit has been modified after the last known status"},
        {71606784U,
      0, 2, (char *)"9081: IOA detected device error"},
        {71607040U, 0, 2, (char *)"9082: IOA detected device error"},
        {71958528U, 1, 2, (char *)"3110: Device bus error, message or command phase"},
        {71991296U,
      1, 2, (char *)"3110: SAS Command / Task Management Function failed"},
        {73860096U, 0, 2, (char *)"9091: Incorrect hardware configuration change has been detected"},
        {73891840U,
      0, 2, (char *)"9073: Invalid multi-adapter configuration"},
        {73892096U, 0, 2, (char *)"4010: Incorrect connection between cascaded expanders"},
        {73892352U,
      0, 2, (char *)"4020: Connections exceed IOA design limits"},
        {73892608U, 0, 2, (char *)"4030: Incorrect multipath connection"},
        {73895936U, 0, 2, (char *)"4110: Unsupported enclosure function"},
        {73897984U, 0, 2, (char *)"4120: SAS cable VPD cannot be read"},
        {74317824U, 0, 2, (char *)"FFF4: Command to logical unit failed"},
        {86245376U, 1, 0, (char *)"Illegal request, invalid request type or request packet"},
        {86310912U,
      0, 0, (char *)"Illegal request, invalid resource handle"},
        {86343680U, 0, 0, (char *)"Illegal request, commands not allowed to this device"},
        {86343936U,
      0, 0, (char *)"Illegal request, command not allowed to a secondary adapter"},
        {86344192U,
      0, 0, (char *)"Illegal request, command not allowed to a non-optimized resource"},
        {86376448U,
      0, 0, (char *)"Illegal request, invalid field in parameter list"},
        {86376704U, 0, 0, (char *)"Illegal request, parameter not supported"},
        {86376960U, 0, 0, (char *)"Illegal request, parameter value invalid"},
        {86769664U, 0, 0, (char *)"Illegal request, command sequence error"},
        {86802432U, 1, 0, (char *)"Illegal request, dual adapter support not enabled"},
        {86802688U,
      1, 0, (char *)"Illegal request, another cable connector was physically disabled"},
        {89030656U,
      1, 0, (char *)"Illegal request, inconsistent group id/group count"},
        {100926720U, 0, 2, (char *)"9031: Array protection temporarily suspended, protection resuming"},
        {100926976U,
      0, 2, (char *)"9040: Array protection temporarily suspended, protection resuming"},
        {101384448U,
      0, 2, (char *)"4080: IOA exceeded maximum operating temperature"},
        {101416960U, 0, 2, (char *)"4085: Service required"},
        {103317504U, 0, 2, (char *)"3140: Device bus not ready to ready transition"},
        {103350272U,
      0, 2, (char *)"FFFB: SCSI bus was reset"},
        {103351552U, 0, 0, (char *)"FFFE: SCSI bus transition to single ended"},
        {103351808U, 0, 0, (char *)"FFFE: SCSI bus transition to LVD"},
        {103383040U, 0, 2, (char *)"FFFB: SCSI bus was reset by another initiator"},
        {104792832U, 0, 2, (char *)"3029: A device replacement has occurred"},
        {104825600U, 0, 2, (char *)"4102: Device bus fabric performance degradation"},
        {105676800U,
      0, 2, (char *)"9051: IOA cache data exists for a missing or failed device"},
        {105677056U,
      0, 2, (char *)"9055: Auxiliary cache IOA contains cache data needed by the primary IOA"},
        {107413760U,
      0, 2, (char *)"9025: Disk unit is not supported at its physical location"},
        {107415040U, 0, 2, (char *)"3020: IOA detected a SCSI bus configuration error"},
        {107446272U,
      0, 2, (char *)"3150: SCSI bus configuration error"},
        {107446528U, 0, 2, (char *)"9074: Asymmetric advanced function disk configuration"},
        {107447040U,
      0, 2, (char *)"4040: Incomplete multipath connection between IOA and enclosure"},
        {107447296U,
      0, 2, (char *)"4041: Incomplete multipath connection between enclosure and device"},
        {107447552U,
      0, 2, (char *)"9075: Incomplete multipath connection between IOA and remote IOA"},
        {107447808U,
      0, 2, (char *)"9076: Configuration error, missing remote IOA"},
        {107450624U, 0, 2, (char *)"4050: Enclosure does not support a required multipath function"},
        {107452416U,
      0, 2, (char *)"4121: Configuration error, required cable is missing"},
        {107452672U, 0, 2, (char *)"4122: Cable is not plugged into the correct location on remote IOA"},
        {107452928U,
      0, 2, (char *)"4123: Configuration error, invalid cable vital product data"},
        {107453184U,
      0, 2, (char *)"4124: Configuration error, both cable ends are plugged into the same IOA"},
        {107544576U,
      0, 2, (char *)"4070: Logically bad block written on device"},
        {107545088U, 0, 2, (char *)"9041: Array protection temporarily suspended"},
        {107577856U, 0, 2, (char *)"9042: Corrupt array parity detected on specified device"},
        {107676160U,
      0, 2, (char *)"9030: Array no longer protected due to missing or failed disk unit"},
        {107708416U,
      0, 2, (char *)"9071: Link operational transition"},
        {107708672U, 0, 2, (char *)"9072: Link not operational transition"},
        {107708928U, 0, 2, (char *)"9032: Array exposed but still protected"},
        {107709184U, 0, 3, (char *)"70DD: Device forced failed by disrupt device command"},
        {107712768U,
      0, 2, (char *)"4061: Multipath redundancy level got better"},
        {107713024U, 0, 2, (char *)"4060: Multipath redundancy level got worse"},
        {109084928U, 0, 2, (char *)"9083: Device raw mode enabled"},
        {109085184U, 0, 2, (char *)"9084: Device raw mode disabled"},
        {119996416U, 0, 0, (char *)"Failure due to other device"},
        {120029184U, 0, 2, (char *)"9008: IOA does not support functions expected by devices"},
        {120029440U,
      0, 2, (char *)"9010: Cache data associated with attached devices cannot be found"},
        {120029696U,
      0, 2, (char *)"9011: Cache data belongs to devices other than those attached"},
        {120030208U,
      0, 2, (char *)"9020: Array missing 2 or more devices with only 1 device present"},
        {120030464U,
      0, 2, (char *)"9021: Array missing 2 or more devices with 2 or more devices present"},
        {120030720U,
      0, 2, (char *)"9022: Exposed array is missing a required device"},
        {120030976U, 0, 2, (char *)"9023: Array member(s) not at required physical locations"},
        {120031232U,
      0, 2, (char *)"9024: Array not functional due to present hardware configuration"},
        {120031488U,
      0, 2, (char *)"9026: Array not functional due to present hardware configuration"},
        {120031744U,
      0, 2, (char *)"9027: Array is missing a device and parity is out of sync"},
        {120032000U, 0, 2, (char *)"9028: Maximum number of arrays already exist"},
        {120032256U, 0, 2, (char *)"9050: Required cache data cannot be located for a disk unit"},
        {120032512U,
      0, 2, (char *)"9052: Cache data exists for a device that has been modified"},
        {120033024U,
      0, 2, (char *)"9054: IOA resources not available due to previous problems"},
        {120033536U,
      0, 2, (char *)"9092: Disk unit requires initialization before use"},
        {120033792U, 0, 2, (char *)"9029: Incorrect hardware configuration change has been detected"},
        {120034816U,
      0, 2, (char *)"9060: One or more disk pairs are missing from an array"},
        {120035072U, 0, 2, (char *)"9061: One or more disks are missing from an array"},
        {120035328U,
      0, 2, (char *)"9062: One or more disks are missing from an array"},
        {120035584U, 0, 2, (char *)"9063: Maximum number of functional arrays has been exceeded"},
        {120035840U,
      0, 0, (char *)"Data protect, other volume set problem"},
        {187039744U, 0, 0, (char *)"Aborted command, invalid descriptor"},
        {188715008U, 0, 0, (char *)"Target operating conditions have changed, dual adapter takeover"},
        {189989376U,
      0, 0, (char *)"Aborted command, medium removal prevented"},
        {190447616U, 0, 0, (char *)"Command terminated by host"},
        {190545920U, 0, 0, (char *)"Aborted command, command terminated by host"}};
static struct ipr_ses_table_entry const ipr_ses_table[13U] =
  { {{'2', '1', '0', '4', '-', 'D', 'L', '1', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'2', '1', '0', '4', '-', 'T', 'L', '1', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'H', 'S', 'B', 'P', '0', '7', 'M', ' ', 'P', ' ', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'H', 'S', 'B', 'P', '0', '5', 'M', ' ', 'P', ' ', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'H', 'S', 'B', 'P', '0', '5', 'M', ' ', 'S', ' ', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'H', 'S', 'B', 'P', '0', '6', 'E', ' ', 'A', 'S', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 80U},
        {{'2', '1', '0', '4', '-', 'D', 'U', '3', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'2', '1', '0', '4', '-', 'T', 'U', '3', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'H', 'S', 'B', 'P', '0', '4', 'C', ' ', 'R', 'S', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', '*', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'H', 'S', 'B', 'P', '0', '6', 'E', ' ', 'R', 'S', 'U', '2', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', '*', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'S', 't', ' ', ' ', 'V', '1', 'S', '2', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'H', 'S', 'B', 'P', 'D', '4', 'M', ' ', ' ', 'P', 'U', '3', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', '*', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U},
        {{'V', 'S', 'B', 'P', 'D', '1', 'H', ' ', ' ', ' ', 'U', '3', 'S', 'C', 'S',
       'I', '\000'}, {'X', 'X', 'X', 'X', 'X', 'X', 'X', '*', 'X', 'X', 'X', 'X',
                      'X', 'X', 'X', 'X', '\000'}, 160U}};
static int ipr_reset_alert(struct ipr_cmnd *ipr_cmd ) ;
static void ipr_process_ccn(struct ipr_cmnd *ipr_cmd ) ;
static void ipr_process_error(struct ipr_cmnd *ipr_cmd ) ;
static void ipr_reset_ioa_job(struct ipr_cmnd *ipr_cmd ) ;
static void ipr_initiate_ioa_reset(struct ipr_ioa_cfg *ioa_cfg , enum ipr_shutdown_type shutdown_type ) ;
static void ipr_trc_hook(struct ipr_cmnd *ipr_cmd , u8 type , u32 add_data )
{
  struct ipr_trace_entry *trace_entry ;
  struct ipr_ioa_cfg *ioa_cfg ;
  int tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  tmp = atomic_add_return(1, & ioa_cfg->trace_index);
  trace_entry = ioa_cfg->trace + (unsigned long )(tmp % 256);
  trace_entry->time = (u32 )jiffies;
  trace_entry->op_code = ipr_cmd->ioarcb.cmd_pkt.cdb[0];
  trace_entry->type = type;
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    trace_entry->ata_op_code = ipr_cmd->i.ata_ioadl.regs.command;
  } else {
    trace_entry->ata_op_code = ipr_cmd->ioarcb.u.add_data.u.regs.command;
  }
  trace_entry->cmd_index = (u8 )ipr_cmd->cmd_index;
  trace_entry->res_handle = ipr_cmd->ioarcb.res_handle;
  trace_entry->u.add_data = add_data;
  __asm__ volatile ("sfence": : : "memory");
  return;
}
}
static void ipr_lock_and_done(struct ipr_cmnd *ipr_cmd )
{
  unsigned long lock_flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  ldv_spin_lock();
  (*(ipr_cmd->done))(ipr_cmd);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return;
}
}
static void ipr_reinit_ipr_cmnd(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioasa *ioasa ;
  struct ipr_ioasa64 *ioasa64 ;
  dma_addr_t dma_addr ;
  int hrrq_id ;
  __u64 tmp ;
  __u32 tmp___0 ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioasa = & ipr_cmd->s.ioasa;
  ioasa64 = & ipr_cmd->s.ioasa64;
  dma_addr = ipr_cmd->dma_addr;
  hrrq_id = (int )ioarcb->cmd_pkt.hrrq_id;
  memset((void *)(& ioarcb->cmd_pkt), 0, 24UL);
  ioarcb->cmd_pkt.hrrq_id = (u8 )hrrq_id;
  ioarcb->data_transfer_length = 0U;
  ioarcb->read_data_transfer_length = 0U;
  ioarcb->ioadl_len = 0U;
  ioarcb->read_ioadl_len = 0U;
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    tmp = __fswab64(dma_addr + 128ULL);
    ioarcb->u.sis64_addr_data.data_ioadl_addr = tmp;
    ioasa64->u.gata.status = 0U;
  } else {
    tmp___0 = __fswab32((__u32 )dma_addr + 128U);
    ioarcb->write_ioadl_addr = tmp___0;
    ioarcb->read_ioadl_addr = ioarcb->write_ioadl_addr;
    ioasa->u.gata.status = 0U;
  }
  ioasa->hdr.ioasc = 0U;
  ioasa->hdr.residual_data_len = 0U;
  ipr_cmd->scsi_cmd = (struct scsi_cmnd *)0;
  ipr_cmd->qc = (struct ata_queued_cmd *)0;
  ipr_cmd->sense_buffer[0] = 0U;
  ipr_cmd->dma_use_sg = 0U;
  return;
}
}
static void ipr_init_ipr_cmnd(struct ipr_cmnd *ipr_cmd , void (*fast_done)(struct ipr_cmnd * ) )
{
  {
  ipr_reinit_ipr_cmnd(ipr_cmd);
  ipr_cmd->u.scratch = 0UL;
  ipr_cmd->sibling = (struct ipr_cmnd *)0;
  ipr_cmd->eh_comp = (struct completion *)0;
  ipr_cmd->fast_done = fast_done;
  reg_timer_8(& ipr_cmd->timer);
  return;
}
}
static struct ipr_cmnd *__ipr_get_free_ipr_cmnd(struct ipr_hrr_queue *hrrq )
{
  struct ipr_cmnd *ipr_cmd ;
  struct list_head const *__mptr ;
  int tmp ;
  long tmp___0 ;
  {
  ipr_cmd = (struct ipr_cmnd *)0;
  tmp = list_empty((struct list_head const *)(& hrrq->hrrq_free_q));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    __mptr = (struct list_head const *)hrrq->hrrq_free_q.next;
    ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
    list_del(& ipr_cmd->queue);
  } else {
  }
  return (ipr_cmd);
}
}
static struct ipr_cmnd *ipr_get_free_ipr_cmnd(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_cmnd *tmp ;
  {
  tmp = __ipr_get_free_ipr_cmnd((struct ipr_hrr_queue *)(& ioa_cfg->hrrq));
  ipr_cmd = tmp;
  ipr_init_ipr_cmnd(ipr_cmd, & ipr_lock_and_done);
  return (ipr_cmd);
}
}
static void ipr_mask_and_clear_interrupts(struct ipr_ioa_cfg *ioa_cfg , u32 clr_ints )
{
  u32 volatile int_reg ;
  int i ;
  unsigned int tmp ;
  {
  i = 0;
  goto ldv_45261;
  ldv_45260:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 0U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_45261: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_45260;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    writeq(0xffffffffffffffffUL, (void volatile *)ioa_cfg->regs.set_interrupt_mask_reg);
  } else {
    writel(4294967295U, (void volatile *)ioa_cfg->regs.set_interrupt_mask_reg);
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    writel(4294967295U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg);
  } else {
  }
  writel(clr_ints, (void volatile *)ioa_cfg->regs.clr_interrupt_reg32);
  tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  int_reg = tmp;
  return;
}
}
static int ipr_save_pcix_cmd_reg(struct ipr_ioa_cfg *ioa_cfg )
{
  int pcix_cmd_reg ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = pci_find_capability(ioa_cfg->pdev, 7);
  pcix_cmd_reg = tmp;
  if (pcix_cmd_reg == 0) {
    return (0);
  } else {
  }
  tmp___0 = pci_read_config_word((struct pci_dev const *)ioa_cfg->pdev, pcix_cmd_reg + 2,
                                 & ioa_cfg->saved_pcix_cmd_reg);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Failed to save PCI-X command register\n");
    return (-5);
  } else {
  }
  ioa_cfg->saved_pcix_cmd_reg = (u16 )((unsigned int )ioa_cfg->saved_pcix_cmd_reg | 3U);
  return (0);
}
}
static int ipr_set_pcix_cmd_reg(struct ipr_ioa_cfg *ioa_cfg )
{
  int pcix_cmd_reg ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = pci_find_capability(ioa_cfg->pdev, 7);
  pcix_cmd_reg = tmp;
  if (pcix_cmd_reg != 0) {
    tmp___0 = pci_write_config_word((struct pci_dev const *)ioa_cfg->pdev, pcix_cmd_reg + 2,
                                    (int )ioa_cfg->saved_pcix_cmd_reg);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Failed to setup PCI-X command register\n");
      return (-5);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void ipr_sata_eh_done(struct ipr_cmnd *ipr_cmd )
{
  struct ata_queued_cmd *qc ;
  struct ipr_sata_port *sata_port ;
  {
  qc = ipr_cmd->qc;
  sata_port = (struct ipr_sata_port *)(qc->ap)->private_data;
  qc->err_mask = qc->err_mask | 256U;
  sata_port->ioasa.status = (u8 )((unsigned int )sata_port->ioasa.status | 128U);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  ata_qc_complete(qc);
  return;
}
}
static void ipr_scsi_eh_done(struct ipr_cmnd *ipr_cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  {
  scsi_cmd = ipr_cmd->scsi_cmd;
  scsi_cmd->result = scsi_cmd->result | 458752;
  scsi_dma_unmap(ipr_cmd->scsi_cmd);
  (*(scsi_cmd->scsi_done))(scsi_cmd);
  if ((unsigned long )ipr_cmd->eh_comp != (unsigned long )((struct completion *)0)) {
    complete(ipr_cmd->eh_comp);
  } else {
  }
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  return;
}
}
static void ipr_fail_all_ops(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_cmnd *temp ;
  struct ipr_hrr_queue *hrrq ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_fail_all_ops");
  } else {
  }
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_45297;
  ldv_45296:
  spin_lock(& hrrq->_lock);
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  temp = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  goto ldv_45294;
  ldv_45293:
  list_del(& ipr_cmd->queue);
  ipr_cmd->s.ioasa.hdr.ioasc = 16777232U;
  ipr_cmd->s.ioasa.hdr.ilid = 4294967295U;
  if ((unsigned long )ipr_cmd->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    ipr_cmd->done = & ipr_scsi_eh_done;
  } else
  if ((unsigned long )ipr_cmd->qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    ipr_cmd->done = & ipr_sata_eh_done;
  } else {
  }
  ipr_trc_hook(ipr_cmd, 255, 268435457U);
  ldv_del_timer_30(& ipr_cmd->timer);
  (*(ipr_cmd->done))(ipr_cmd);
  ipr_cmd = temp;
  __mptr___1 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
  ldv_45294: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_45293;
  } else {
  }
  spin_unlock(& hrrq->_lock);
  hrrq = hrrq + 1;
  ldv_45297: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_45296;
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_fail_all_ops");
  } else {
  }
  return;
}
}
static void ipr_send_command(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  dma_addr_t send_dma_addr ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  send_dma_addr = ipr_cmd->dma_addr;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    send_dma_addr = send_dma_addr | 1ULL;
    if ((unsigned long )ipr_cmd->dma_use_sg * 16UL > 128UL) {
      send_dma_addr = send_dma_addr | 4ULL;
    } else {
    }
    writeq((unsigned long )send_dma_addr, (void volatile *)ioa_cfg->regs.ioarrin_reg);
  } else {
    writel((unsigned int )send_dma_addr, (void volatile *)ioa_cfg->regs.ioarrin_reg);
  }
  return;
}
}
static void ipr_do_req(struct ipr_cmnd *ipr_cmd , void (*done)(struct ipr_cmnd * ) ,
                       void (*timeout_func)(struct ipr_cmnd * ) , u32 timeout )
{
  {
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  ipr_cmd->done = done;
  ipr_cmd->timer.data = (unsigned long )ipr_cmd;
  ipr_cmd->timer.expires = (unsigned long )timeout + (unsigned long )jiffies;
  ipr_cmd->timer.function = (void (*)(unsigned long ))timeout_func;
  add_timer(& ipr_cmd->timer);
  ipr_trc_hook(ipr_cmd, 0, 0U);
  ipr_send_command(ipr_cmd);
  return;
}
}
static void ipr_internal_cmd_done(struct ipr_cmnd *ipr_cmd )
{
  {
  if ((unsigned long )ipr_cmd->sibling != (unsigned long )((struct ipr_cmnd *)0)) {
    ipr_cmd->sibling = (struct ipr_cmnd *)0;
  } else {
    complete(& ipr_cmd->completion);
  }
  return;
}
}
static void ipr_init_ioadl(struct ipr_cmnd *ipr_cmd , dma_addr_t dma_addr , u32 len ,
                           int flags )
{
  struct ipr_ioadl_desc *ioadl ;
  struct ipr_ioadl64_desc *ioadl64 ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  {
  ioadl = (struct ipr_ioadl_desc *)(& ipr_cmd->i.ioadl);
  ioadl64 = (struct ipr_ioadl64_desc *)(& ipr_cmd->i.ioadl64);
  ipr_cmd->dma_use_sg = 1U;
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    tmp = __fswab32((__u32 )flags);
    ioadl64->flags = tmp;
    tmp___0 = __fswab32(len);
    ioadl64->data_len = tmp___0;
    tmp___1 = __fswab64(dma_addr);
    ioadl64->address = tmp___1;
    ipr_cmd->ioarcb.ioadl_len = 268435456U;
    tmp___2 = __fswab32(len);
    ipr_cmd->ioarcb.data_transfer_length = tmp___2;
  } else {
    tmp___3 = __fswab32((u32 )flags | len);
    ioadl->flags_and_data_len = tmp___3;
    tmp___4 = __fswab32((__u32 )dma_addr);
    ioadl->address = tmp___4;
    if (flags == 1224736768) {
      ipr_cmd->ioarcb.read_ioadl_len = 134217728U;
      tmp___5 = __fswab32(len);
      ipr_cmd->ioarcb.read_data_transfer_length = tmp___5;
    } else {
      ipr_cmd->ioarcb.ioadl_len = 134217728U;
      tmp___6 = __fswab32(len);
      ipr_cmd->ioarcb.data_transfer_length = tmp___6;
    }
  }
  return;
}
}
static void ipr_send_blocking_cmd(struct ipr_cmnd *ipr_cmd , void (*timeout_func)(struct ipr_cmnd * ) ,
                                  u32 timeout )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  init_completion(& ipr_cmd->completion);
  ipr_do_req(ipr_cmd, & ipr_internal_cmd_done, timeout_func, timeout);
  spin_unlock_irq((ioa_cfg->host)->host_lock);
  wait_for_completion(& ipr_cmd->completion);
  spin_lock_irq((ioa_cfg->host)->host_lock);
  return;
}
}
static int ipr_get_hrrq_index(struct ipr_ioa_cfg *ioa_cfg )
{
  int tmp ;
  {
  if (ioa_cfg->hrrq_num == 1U) {
    return (0);
  } else {
    tmp = atomic_add_return(1, & ioa_cfg->hrrq_index);
    return ((int )((u32 )tmp % (ioa_cfg->hrrq_num - 1U) + 1U));
  }
}
}
static void ipr_send_hcam(struct ipr_ioa_cfg *ioa_cfg , u8 type , struct ipr_hostrcb *hostrcb )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioarcb *ioarcb ;
  {
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    ipr_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
    list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
    list_add_tail(& hostrcb->queue, & ioa_cfg->hostrcb_pending_q);
    ipr_cmd->u.hostrcb = hostrcb;
    ioarcb = & ipr_cmd->ioarcb;
    ioarcb->res_handle = 4294967295U;
    ioarcb->cmd_pkt.request_type = 2U;
    ioarcb->cmd_pkt.cdb[0] = 207U;
    ioarcb->cmd_pkt.cdb[1] = type;
    ioarcb->cmd_pkt.cdb[7] = 12U;
    ioarcb->cmd_pkt.cdb[8] = 48U;
    ipr_init_ioadl(ipr_cmd, hostrcb->hostrcb_dma, 3120U, 1224736768);
    if ((unsigned int )type == 1U) {
      ipr_cmd->done = & ipr_process_ccn;
    } else {
      ipr_cmd->done = & ipr_process_error;
    }
    ipr_trc_hook(ipr_cmd, 0, 16777215U);
    ipr_send_command(ipr_cmd);
  } else {
    list_add_tail(& hostrcb->queue, & ioa_cfg->hostrcb_free_q);
  }
  return;
}
}
static void ipr_update_ata_class(struct ipr_resource_entry *res , unsigned int proto )
{
  {
  switch (proto) {
  case 2U: ;
  case 6U:
  res->ata_class = 1U;
  goto ldv_45347;
  case 3U: ;
  case 7U:
  res->ata_class = 3U;
  goto ldv_45347;
  default:
  res->ata_class = 0U;
  goto ldv_45347;
  }
  ldv_45347: ;
  return;
}
}
static void ipr_init_res_entry(struct ipr_resource_entry *res , struct ipr_config_table_entry_wrapper *cfgtew )
{
  int found ;
  unsigned int proto ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *gscsi_res ;
  u64 tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  found = 0;
  ioa_cfg = res->ioa_cfg;
  gscsi_res = (struct ipr_resource_entry *)0;
  res->needs_sync_complete = 0U;
  res->in_erp = 0U;
  res->add_to_ml = 0U;
  res->del_from_ml = 0U;
  res->resetting_device = 0U;
  res->reset_occurred = 0U;
  res->sdev = (struct scsi_device *)0;
  res->sata_port = (struct ipr_sata_port *)0;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    proto = (unsigned int )(cfgtew->u.cfgte64)->proto;
    res->res_flags = (cfgtew->u.cfgte64)->res_flags;
    res->qmodel = (u8 )(((int )res->res_flags & 28672) >> 12);
    res->type = (cfgtew->u.cfgte64)->res_type;
    memcpy((void *)(& res->res_path), (void const *)(& (cfgtew->u.cfgte64)->res_path),
             8UL);
    res->bus = 0U;
    memcpy((void *)(& res->dev_lun.scsi_lun), (void const *)(& (cfgtew->u.cfgte64)->lun),
             8UL);
    tmp = scsilun_to_int(& res->dev_lun);
    res->lun = (u32 )tmp;
    if ((unsigned int )res->type == 1U) {
      __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
      gscsi_res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
      goto ldv_45365;
      ldv_45364: ;
      if (gscsi_res->dev_id == (cfgtew->u.cfgte64)->dev_id) {
        found = 1;
        res->target = gscsi_res->target;
        goto ldv_45363;
      } else {
      }
      __mptr___0 = (struct list_head const *)gscsi_res->queue.next;
      gscsi_res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_45365: ;
      if ((unsigned long )(& gscsi_res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
        goto ldv_45364;
      } else {
      }
      ldv_45363: ;
      if (found == 0) {
        tmp___0 = find_first_zero_bit((unsigned long const *)(& ioa_cfg->target_ids),
                                      (unsigned long )ioa_cfg->max_devs_supported);
        res->target = (u32 )tmp___0;
        set_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->target_ids));
      } else {
      }
    } else
    if ((unsigned int )res->type == 255U) {
      res->bus = 3U;
      res->target = 0U;
    } else
    if ((unsigned int )res->type == 5U) {
      res->bus = 1U;
      tmp___1 = find_first_zero_bit((unsigned long const *)(& ioa_cfg->array_ids),
                                    (unsigned long )ioa_cfg->max_devs_supported);
      res->target = (u32 )tmp___1;
      set_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->array_ids));
    } else
    if ((unsigned int )res->type == 2U) {
      res->bus = 2U;
      tmp___2 = find_first_zero_bit((unsigned long const *)(& ioa_cfg->vset_ids),
                                    (unsigned long )ioa_cfg->max_devs_supported);
      res->target = (u32 )tmp___2;
      set_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->vset_ids));
    } else {
      tmp___3 = find_first_zero_bit((unsigned long const *)(& ioa_cfg->target_ids),
                                    (unsigned long )ioa_cfg->max_devs_supported);
      res->target = (u32 )tmp___3;
      set_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->target_ids));
    }
  } else {
    proto = (unsigned int )(cfgtew->u.cfgte)->proto;
    res->qmodel = (u8 )(((int )res->flags & 112) >> 4);
    res->flags = (cfgtew->u.cfgte)->flags;
    if ((int )((signed char )res->flags) < 0) {
      res->type = 255U;
    } else {
      res->type = (unsigned int )(cfgtew->u.cfgte)->rsvd_subtype & 15U;
    }
    res->bus = (u32 )(cfgtew->u.cfgte)->res_addr.bus;
    res->target = (u32 )(cfgtew->u.cfgte)->res_addr.target;
    res->lun = (u32 )(cfgtew->u.cfgte)->res_addr.lun;
    res->lun_wwn = get_unaligned_be64((void const *)(& (cfgtew->u.cfgte)->lun_wwn));
  }
  ipr_update_ata_class(res, proto);
  return;
}
}
static int ipr_is_same_device(struct ipr_resource_entry *res , struct ipr_config_table_entry_wrapper *cfgtew )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)res->ioa_cfg + 25UL) != 0U) {
    tmp = memcmp((void const *)(& res->dev_id), (void const *)(& (cfgtew->u.cfgte64)->dev_id),
                 8UL);
    if (tmp == 0) {
      tmp___0 = memcmp((void const *)(& res->dev_lun.scsi_lun), (void const *)(& (cfgtew->u.cfgte64)->lun),
                       8UL);
      if (tmp___0 == 0) {
        return (1);
      } else {
      }
    } else {
    }
  } else
  if ((res->bus == (u32 )(cfgtew->u.cfgte)->res_addr.bus && res->target == (u32 )(cfgtew->u.cfgte)->res_addr.target) && res->lun == (u32 )(cfgtew->u.cfgte)->res_addr.lun) {
    return (1);
  } else {
  }
  return (0);
}
}
static char *__ipr_format_res_path(u8 *res_path , char *buffer , int len )
{
  int i ;
  char *p ;
  int tmp ;
  int tmp___0 ;
  {
  p = buffer;
  *p = 0;
  tmp = snprintf(p, (size_t )((long )(buffer + (unsigned long )len) - (long )p), "%02X",
                 (int )*res_path);
  p = p + (unsigned long )tmp;
  i = 1;
  goto ldv_45378;
  ldv_45377:
  tmp___0 = snprintf(p, (size_t )((long )(buffer + (unsigned long )len) - (long )p),
                     "-%02X", (int )*(res_path + (unsigned long )i));
  p = p + (unsigned long )tmp___0;
  i = i + 1;
  ldv_45378: ;
  if ((unsigned int )*(res_path + (unsigned long )i) != 255U && i * 3 < len) {
    goto ldv_45377;
  } else {
  }
  return (buffer);
}
}
static char *ipr_format_res_path(struct ipr_ioa_cfg *ioa_cfg , u8 *res_path , char *buffer ,
                                 int len )
{
  char *p ;
  int tmp ;
  {
  p = buffer;
  *p = 0;
  tmp = snprintf(p, (size_t )((long )(buffer + (unsigned long )len) - (long )p), "%d/",
                 (ioa_cfg->host)->host_no);
  p = p + (unsigned long )tmp;
  __ipr_format_res_path(res_path, p, (int )(((unsigned int )((long )p) - (unsigned int )((long )buffer)) + (unsigned int )len));
  return (buffer);
}
}
static void ipr_update_res_entry(struct ipr_resource_entry *res , struct ipr_config_table_entry_wrapper *cfgtew )
{
  char buffer[48U] ;
  unsigned int proto ;
  int new_path ;
  int tmp ;
  char *tmp___0 ;
  {
  new_path = 0;
  if ((unsigned int )*((unsigned char *)res->ioa_cfg + 25UL) != 0U) {
    res->flags = (u8 )(cfgtew->u.cfgte64)->flags;
    res->res_flags = (cfgtew->u.cfgte64)->res_flags;
    res->type = (cfgtew->u.cfgte64)->res_type;
    memcpy((void *)(& res->std_inq_data), (void const *)(& (cfgtew->u.cfgte64)->std_inq_data),
             44UL);
    res->qmodel = (u8 )(((int )res->res_flags & 28672) >> 12);
    proto = (unsigned int )(cfgtew->u.cfgte64)->proto;
    res->res_handle = (cfgtew->u.cfgte64)->res_handle;
    res->dev_id = (cfgtew->u.cfgte64)->dev_id;
    memcpy((void *)(& res->dev_lun.scsi_lun), (void const *)(& (cfgtew->u.cfgte64)->lun),
             8UL);
    tmp = memcmp((void const *)(& res->res_path), (void const *)(& (cfgtew->u.cfgte64)->res_path),
                 8UL);
    if (tmp != 0) {
      memcpy((void *)(& res->res_path), (void const *)(& (cfgtew->u.cfgte64)->res_path),
               8UL);
      new_path = 1;
    } else {
    }
    if ((unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0) && new_path != 0) {
      tmp___0 = ipr_format_res_path(res->ioa_cfg, (u8 *)(& res->res_path), (char *)(& buffer),
                                    48);
      sdev_prefix_printk("\016", (struct scsi_device const *)res->sdev, (char const *)0,
                         "Resource path: %s\n", tmp___0);
    } else {
    }
  } else {
    res->flags = (cfgtew->u.cfgte)->flags;
    if ((int )((signed char )res->flags) < 0) {
      res->type = 255U;
    } else {
      res->type = (unsigned int )(cfgtew->u.cfgte)->rsvd_subtype & 15U;
    }
    memcpy((void *)(& res->std_inq_data), (void const *)(& (cfgtew->u.cfgte)->std_inq_data),
             44UL);
    res->qmodel = (u8 )(((int )res->flags & 112) >> 4);
    proto = (unsigned int )(cfgtew->u.cfgte)->proto;
    res->res_handle = (cfgtew->u.cfgte)->res_handle;
  }
  ipr_update_ata_class(res, proto);
  return;
}
}
static void ipr_clear_res_target(struct ipr_resource_entry *res )
{
  struct ipr_resource_entry *gscsi_res ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  gscsi_res = (struct ipr_resource_entry *)0;
  ioa_cfg = res->ioa_cfg;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    return;
  } else {
  }
  if (res->bus == 1U) {
    clear_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->array_ids));
  } else
  if (res->bus == 2U) {
    clear_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->vset_ids));
  } else
  if (res->bus == 0U && (unsigned int )res->type == 1U) {
    __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
    gscsi_res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
    goto ldv_45404;
    ldv_45403: ;
    if (gscsi_res->dev_id == res->dev_id && (unsigned long )gscsi_res != (unsigned long )res) {
      return;
    } else {
    }
    __mptr___0 = (struct list_head const *)gscsi_res->queue.next;
    gscsi_res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_45404: ;
    if ((unsigned long )(& gscsi_res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
      goto ldv_45403;
    } else {
    }
    clear_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->target_ids));
  } else
  if (res->bus == 0U) {
    clear_bit((long )res->target, (unsigned long volatile *)(& ioa_cfg->target_ids));
  } else {
  }
  return;
}
}
static void ipr_handle_config_change(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_resource_entry *res ;
  struct ipr_config_table_entry_wrapper cfgtew ;
  __be32 cc_res_handle ;
  u32 is_ndn ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  {
  res = (struct ipr_resource_entry *)0;
  is_ndn = 1U;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    cfgtew.u.cfgte64 = & hostrcb->hcam.u.ccn.u.cfgte64;
    cc_res_handle = (cfgtew.u.cfgte64)->res_handle;
  } else {
    cfgtew.u.cfgte = & hostrcb->hcam.u.ccn.u.cfgte;
    cc_res_handle = (cfgtew.u.cfgte)->res_handle;
  }
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_45420;
  ldv_45419: ;
  if (res->res_handle == cc_res_handle) {
    is_ndn = 0U;
    goto ldv_45418;
  } else {
  }
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_45420: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_45419;
  } else {
  }
  ldv_45418: ;
  if (is_ndn != 0U) {
    tmp = list_empty((struct list_head const *)(& ioa_cfg->free_res_q));
    if (tmp != 0) {
      ipr_send_hcam(ioa_cfg, 1, hostrcb);
      return;
    } else {
    }
    __mptr___1 = (struct list_head const *)ioa_cfg->free_res_q.next;
    res = (struct ipr_resource_entry *)__mptr___1 + 0xffffffffffffff80UL;
    list_del(& res->queue);
    ipr_init_res_entry(res, & cfgtew);
    list_add_tail(& res->queue, & ioa_cfg->used_res_q);
  } else {
  }
  ipr_update_res_entry(res, & cfgtew);
  if ((unsigned int )hostrcb->hcam.notify_type == 2U) {
    if ((unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0)) {
      res->del_from_ml = 1U;
      res->res_handle = 0U;
      schedule_work(& ioa_cfg->work_q);
    } else {
      ipr_clear_res_target(res);
      list_move_tail(& res->queue, & ioa_cfg->free_res_q);
    }
  } else
  if ((unsigned long )res->sdev == (unsigned long )((struct scsi_device *)0) || (unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    res->add_to_ml = 1U;
    schedule_work(& ioa_cfg->work_q);
  } else {
  }
  ipr_send_hcam(ioa_cfg, 1, hostrcb);
  return;
}
}
static void ipr_process_ccn(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_hostrcb *hostrcb ;
  u32 ioasc ;
  __u32 tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  hostrcb = ipr_cmd->u.hostrcb;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  list_del(& hostrcb->queue);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  if (ioasc != 0U) {
    if (ioasc != 268435457U && ioasc != 190447616U) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Host RCB failed with IOASC: 0x%08X\n",
              ioasc);
    } else {
    }
    ipr_send_hcam(ioa_cfg, 1, hostrcb);
  } else {
    ipr_handle_config_change(ioa_cfg, hostrcb);
  }
  return;
}
}
static int strip_and_pad_whitespace(int i , char *buf )
{
  {
  goto ldv_45434;
  ldv_45433:
  i = i - 1;
  ldv_45434: ;
  if (i != 0 && (int )((signed char )*(buf + (unsigned long )i)) == 32) {
    goto ldv_45433;
  } else {
  }
  *(buf + ((unsigned long )i + 1UL)) = 32;
  *(buf + ((unsigned long )i + 2UL)) = 0;
  return (i + 2);
}
}
static void ipr_log_vpd_compact(char *prefix , struct ipr_hostrcb *hostrcb , struct ipr_vpd *vpd )
{
  char buffer[35U] ;
  int i ;
  char *tmp ;
  int tmp___0 ;
  {
  i = 0;
  memcpy((void *)(& buffer), (void const *)(& vpd->vpids.vendor_id), 8UL);
  i = strip_and_pad_whitespace(7, (char *)(& buffer));
  memcpy((void *)(& buffer) + (unsigned long )i, (void const *)(& vpd->vpids.product_id),
           16UL);
  i = strip_and_pad_whitespace(i + 15, (char *)(& buffer));
  memcpy((void *)(& buffer) + (unsigned long )i, (void const *)(& vpd->sn), 8UL);
  buffer[i + 8] = 0;
  tmp___0 = ipr_is_device(hostrcb);
  if (tmp___0 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s VPID/SN: %s\n", tmp, prefix, (char *)(& buffer));
    } else {
      printk("\vipr: %d:%d:%d:%d: %s VPID/SN: %s\n", ((hostrcb->ioa_cfg)->host)->host_no,
             (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
             (int )hostrcb->hcam.u.error.fd_res_addr.lun, prefix, (char *)(& buffer));
    }
  } else {
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s VPID/SN: %s\n",
            prefix, (char *)(& buffer));
  }
  return;
}
}
static void ipr_log_vpd(struct ipr_vpd *vpd )
{
  char buffer[32U] ;
  {
  memcpy((void *)(& buffer), (void const *)(& vpd->vpids.vendor_id), 8UL);
  memcpy((void *)(& buffer) + 8U, (void const *)(& vpd->vpids.product_id), 16UL);
  buffer[24] = 0;
  printk("\vipr: Vendor/Product ID: %s\n", (char *)(& buffer));
  memcpy((void *)(& buffer), (void const *)(& vpd->sn), 8UL);
  buffer[8] = 0;
  printk("\vipr:     Serial Number: %s\n", (char *)(& buffer));
  return;
}
}
static void ipr_log_ext_vpd_compact(char *prefix , struct ipr_hostrcb *hostrcb , struct ipr_ext_vpd *vpd )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  char *tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  {
  ipr_log_vpd_compact(prefix, hostrcb, & vpd->vpd);
  tmp___6 = ipr_is_device(hostrcb);
  if (tmp___6 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = __fswab32(vpd->wwid[1]);
      tmp___0 = __fswab32(vpd->wwid[0]);
      tmp___1 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s WWN: %08X%08X\n", tmp___1, prefix, tmp___0, tmp);
    } else {
      tmp___2 = __fswab32(vpd->wwid[1]);
      tmp___3 = __fswab32(vpd->wwid[0]);
      printk("\vipr: %d:%d:%d:%d: %s WWN: %08X%08X\n", ((hostrcb->ioa_cfg)->host)->host_no,
             (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
             (int )hostrcb->hcam.u.error.fd_res_addr.lun, prefix, tmp___3, tmp___2);
    }
  } else {
    tmp___4 = __fswab32(vpd->wwid[1]);
    tmp___5 = __fswab32(vpd->wwid[0]);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s WWN: %08X%08X\n",
            prefix, tmp___5, tmp___4);
  }
  return;
}
}
static void ipr_log_ext_vpd(struct ipr_ext_vpd *vpd )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  ipr_log_vpd(& vpd->vpd);
  tmp = __fswab32(vpd->wwid[1]);
  tmp___0 = __fswab32(vpd->wwid[0]);
  printk("\vipr:     WWN: %08X%08X\n", tmp___0, tmp);
  return;
}
}
static void ipr_log_enhanced_cache_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_12_error *error ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    error = & hostrcb->hcam.u.error64.u.type_12_error;
  } else {
    error = & hostrcb->hcam.u.error.u.type_12_error;
  }
  printk("\vipr: -----Current Configuration-----\n");
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_ext_vpd(& error->ioa_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_ext_vpd(& error->cfc_vpd);
  printk("\vipr: -----Expected Configuration-----\n");
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_ext_vpd(& error->ioa_last_attached_to_cfc_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_ext_vpd(& error->cfc_last_attached_to_ioa_vpd);
  tmp = __fswab32(error->ioa_data[2]);
  tmp___0 = __fswab32(error->ioa_data[1]);
  tmp___1 = __fswab32(error->ioa_data[0]);
  printk("\vipr: Additional IOA Data: %08X %08X %08X\n", tmp___1, tmp___0, tmp);
  return;
}
}
static void ipr_log_cache_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_02_error *error ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  error = & hostrcb->hcam.u.error.u.type_02_error;
  printk("\vipr: -----Current Configuration-----\n");
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_vpd(& error->ioa_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_vpd(& error->cfc_vpd);
  printk("\vipr: -----Expected Configuration-----\n");
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_vpd(& error->ioa_last_attached_to_cfc_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_vpd(& error->cfc_last_attached_to_ioa_vpd);
  tmp = __fswab32(error->ioa_data[2]);
  tmp___0 = __fswab32(error->ioa_data[1]);
  tmp___1 = __fswab32(error->ioa_data[0]);
  printk("\vipr: Additional IOA Data: %08X %08X %08X\n", tmp___1, tmp___0, tmp);
  return;
}
}
static void ipr_log_enhanced_config_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int errors_logged ;
  int i ;
  struct ipr_hostrcb_device_data_entry_enhanced *dev_entry ;
  struct ipr_hostrcb_type_13_error *error ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  error = & hostrcb->hcam.u.error.u.type_13_error;
  tmp = __fswab32(error->errors_logged);
  errors_logged = (int )tmp;
  tmp___0 = __fswab32(error->errors_detected);
  printk("\vipr: Device Errors Detected/Logged: %d/%d\n", tmp___0, errors_logged);
  dev_entry = (struct ipr_hostrcb_device_data_entry_enhanced *)(& error->dev);
  i = 0;
  goto ldv_45474;
  ldv_45473:
  printk("\vipr: ----------------------------------------------------------\n");
  if ((unsigned int )dev_entry->dev_res_addr.bus > 15U) {
    printk("\vipr: Device %d: unknown\n", i + 1);
  } else {
    printk("\vipr: Device %d: %d:%d:%d:%d\n", i + 1, (ioa_cfg->host)->host_no, (int )dev_entry->dev_res_addr.bus,
           (int )dev_entry->dev_res_addr.target, (int )dev_entry->dev_res_addr.lun);
  }
  ipr_log_ext_vpd(& dev_entry->vpd);
  printk("\vipr: -----New Device Information-----\n");
  ipr_log_ext_vpd(& dev_entry->new_vpd);
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_ext_vpd(& dev_entry->ioa_last_with_dev_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_ext_vpd(& dev_entry->cfc_last_with_dev_vpd);
  i = i + 1;
  dev_entry = dev_entry + 1;
  ldv_45474: ;
  if (i < errors_logged) {
    goto ldv_45473;
  } else {
  }
  return;
}
}
static void ipr_log_sis64_config_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int errors_logged ;
  int i ;
  struct ipr_hostrcb64_device_data_entry_enhanced *dev_entry ;
  struct ipr_hostrcb_type_23_error *error ;
  char buffer[48U] ;
  __u32 tmp ;
  __u32 tmp___0 ;
  char *tmp___1 ;
  {
  error = & hostrcb->hcam.u.error64.u.type_23_error;
  tmp = __fswab32(error->errors_logged);
  errors_logged = (int )tmp;
  tmp___0 = __fswab32(error->errors_detected);
  printk("\vipr: Device Errors Detected/Logged: %d/%d\n", tmp___0, errors_logged);
  dev_entry = (struct ipr_hostrcb64_device_data_entry_enhanced *)(& error->dev);
  i = 0;
  goto ldv_45486;
  ldv_45485:
  printk("\vipr: ----------------------------------------------------------\n");
  tmp___1 = __ipr_format_res_path((u8 *)(& dev_entry->res_path), (char *)(& buffer),
                                  48);
  printk("\vipr: Device %d : %s", i + 1, tmp___1);
  ipr_log_ext_vpd(& dev_entry->vpd);
  printk("\vipr: -----New Device Information-----\n");
  ipr_log_ext_vpd(& dev_entry->new_vpd);
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_ext_vpd(& dev_entry->ioa_last_with_dev_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_ext_vpd(& dev_entry->cfc_last_with_dev_vpd);
  i = i + 1;
  dev_entry = dev_entry + 1;
  ldv_45486: ;
  if (i < errors_logged) {
    goto ldv_45485;
  } else {
  }
  return;
}
}
static void ipr_log_config_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int errors_logged ;
  int i ;
  struct ipr_hostrcb_device_data_entry *dev_entry ;
  struct ipr_hostrcb_type_03_error *error ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  error = & hostrcb->hcam.u.error.u.type_03_error;
  tmp = __fswab32(error->errors_logged);
  errors_logged = (int )tmp;
  tmp___0 = __fswab32(error->errors_detected);
  printk("\vipr: Device Errors Detected/Logged: %d/%d\n", tmp___0, errors_logged);
  dev_entry = (struct ipr_hostrcb_device_data_entry *)(& error->dev);
  i = 0;
  goto ldv_45497;
  ldv_45496:
  printk("\vipr: ----------------------------------------------------------\n");
  if ((unsigned int )dev_entry->dev_res_addr.bus > 15U) {
    printk("\vipr: Device %d: unknown\n", i + 1);
  } else {
    printk("\vipr: Device %d: %d:%d:%d:%d\n", i + 1, (ioa_cfg->host)->host_no, (int )dev_entry->dev_res_addr.bus,
           (int )dev_entry->dev_res_addr.target, (int )dev_entry->dev_res_addr.lun);
  }
  ipr_log_vpd(& dev_entry->vpd);
  printk("\vipr: -----New Device Information-----\n");
  ipr_log_vpd(& dev_entry->new_vpd);
  printk("\vipr: Cache Directory Card Information:\n");
  ipr_log_vpd(& dev_entry->ioa_last_with_dev_vpd);
  printk("\vipr: Adapter Card Information:\n");
  ipr_log_vpd(& dev_entry->cfc_last_with_dev_vpd);
  tmp___1 = __fswab32(dev_entry->ioa_data[4]);
  tmp___2 = __fswab32(dev_entry->ioa_data[3]);
  tmp___3 = __fswab32(dev_entry->ioa_data[2]);
  tmp___4 = __fswab32(dev_entry->ioa_data[1]);
  tmp___5 = __fswab32(dev_entry->ioa_data[0]);
  printk("\vipr: Additional IOA Data: %08X %08X %08X %08X %08X\n", tmp___5, tmp___4,
         tmp___3, tmp___2, tmp___1);
  i = i + 1;
  dev_entry = dev_entry + 1;
  ldv_45497: ;
  if (i < errors_logged) {
    goto ldv_45496;
  } else {
  }
  return;
}
}
static void ipr_log_enhanced_array_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int i ;
  int num_entries ;
  struct ipr_hostrcb_type_14_error *error ;
  struct ipr_hostrcb_array_data_entry_enhanced *array_entry ;
  u8 zero_sn[8U] ;
  u32 __min1 ;
  __u32 tmp ;
  u32 __min2 ;
  int tmp___0 ;
  __u32 tmp___1 ;
  {
  zero_sn[0] = 48U;
  zero_sn[1] = 48U;
  zero_sn[2] = 48U;
  zero_sn[3] = 48U;
  zero_sn[4] = 48U;
  zero_sn[5] = 48U;
  zero_sn[6] = 48U;
  zero_sn[7] = 48U;
  error = & hostrcb->hcam.u.error.u.type_14_error;
  printk("\vipr: ----------------------------------------------------------\n");
  printk("\vipr: RAID %s Array Configuration: %d:%d:%d:%d\n", (u8 *)(& error->protection_level),
         (ioa_cfg->host)->host_no, (int )error->last_func_vset_res_addr.bus, (int )error->last_func_vset_res_addr.target,
         (int )error->last_func_vset_res_addr.lun);
  printk("\vipr: ----------------------------------------------------------\n");
  array_entry = (struct ipr_hostrcb_array_data_entry_enhanced *)(& error->array_member);
  tmp = __fswab32(error->num_entries);
  __min1 = tmp;
  __min2 = 18U;
  num_entries = (int )(__min1 < __min2 ? __min1 : __min2);
  i = 0;
  goto ldv_45515;
  ldv_45514:
  tmp___0 = memcmp((void const *)(& array_entry->vpd.vpd.sn), (void const *)(& zero_sn),
                   8UL);
  if (tmp___0 == 0) {
    goto ldv_45513;
  } else {
  }
  tmp___1 = __fswab32(error->exposed_mode_adn);
  if (tmp___1 == (unsigned int )i) {
    printk("\vipr: Exposed Array Member %d:\n", i);
  } else {
    printk("\vipr: Array Member %d:\n", i);
  }
  ipr_log_ext_vpd(& array_entry->vpd);
  if ((unsigned int )array_entry->dev_res_addr.bus > 15U) {
    printk("\vipr: Current Location: unknown\n");
  } else {
    printk("\vipr: Current Location: %d:%d:%d:%d\n", (ioa_cfg->host)->host_no, (int )array_entry->dev_res_addr.bus,
           (int )array_entry->dev_res_addr.target, (int )array_entry->dev_res_addr.lun);
  }
  if ((unsigned int )array_entry->expected_dev_res_addr.bus > 15U) {
    printk("\vipr: Expected Location: unknown\n");
  } else {
    printk("\vipr: Expected Location: %d:%d:%d:%d\n", (ioa_cfg->host)->host_no, (int )array_entry->expected_dev_res_addr.bus,
           (int )array_entry->expected_dev_res_addr.target, (int )array_entry->expected_dev_res_addr.lun);
  }
  printk("\vipr: ----------------------------------------------------------\n");
  ldv_45513:
  i = i + 1;
  array_entry = array_entry + 1;
  ldv_45515: ;
  if (i < num_entries) {
    goto ldv_45514;
  } else {
  }
  return;
}
}
static void ipr_log_array_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int i ;
  struct ipr_hostrcb_type_04_error *error ;
  struct ipr_hostrcb_array_data_entry *array_entry ;
  u8 zero_sn[8U] ;
  int tmp ;
  __u32 tmp___0 ;
  {
  zero_sn[0] = 48U;
  zero_sn[1] = 48U;
  zero_sn[2] = 48U;
  zero_sn[3] = 48U;
  zero_sn[4] = 48U;
  zero_sn[5] = 48U;
  zero_sn[6] = 48U;
  zero_sn[7] = 48U;
  error = & hostrcb->hcam.u.error.u.type_04_error;
  printk("\vipr: ----------------------------------------------------------\n");
  printk("\vipr: RAID %s Array Configuration: %d:%d:%d:%d\n", (u8 *)(& error->protection_level),
         (ioa_cfg->host)->host_no, (int )error->last_func_vset_res_addr.bus, (int )error->last_func_vset_res_addr.target,
         (int )error->last_func_vset_res_addr.lun);
  printk("\vipr: ----------------------------------------------------------\n");
  array_entry = (struct ipr_hostrcb_array_data_entry *)(& error->array_member);
  i = 0;
  goto ldv_45527;
  ldv_45526:
  tmp = memcmp((void const *)(& array_entry->vpd.sn), (void const *)(& zero_sn),
               8UL);
  if (tmp == 0) {
    goto ldv_45525;
  } else {
  }
  tmp___0 = __fswab32(error->exposed_mode_adn);
  if (tmp___0 == (unsigned int )i) {
    printk("\vipr: Exposed Array Member %d:\n", i);
  } else {
    printk("\vipr: Array Member %d:\n", i);
  }
  ipr_log_vpd(& array_entry->vpd);
  if ((unsigned int )array_entry->dev_res_addr.bus > 15U) {
    printk("\vipr: Current Location: unknown\n");
  } else {
    printk("\vipr: Current Location: %d:%d:%d:%d\n", (ioa_cfg->host)->host_no, (int )array_entry->dev_res_addr.bus,
           (int )array_entry->dev_res_addr.target, (int )array_entry->dev_res_addr.lun);
  }
  if ((unsigned int )array_entry->expected_dev_res_addr.bus > 15U) {
    printk("\vipr: Expected Location: unknown\n");
  } else {
    printk("\vipr: Expected Location: %d:%d:%d:%d\n", (ioa_cfg->host)->host_no, (int )array_entry->expected_dev_res_addr.bus,
           (int )array_entry->expected_dev_res_addr.target, (int )array_entry->expected_dev_res_addr.lun);
  }
  printk("\vipr: ----------------------------------------------------------\n");
  if (i == 9) {
    array_entry = (struct ipr_hostrcb_array_data_entry *)(& error->array_member2);
  } else {
    array_entry = array_entry + 1;
  }
  ldv_45525:
  i = i + 1;
  ldv_45527: ;
  if (i <= 17) {
    goto ldv_45526;
  } else {
  }
  return;
}
}
static void ipr_log_hex_data(struct ipr_ioa_cfg *ioa_cfg , u32 *data , int len )
{
  int i ;
  int __min1 ;
  int __min2 ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  if (len == 0) {
    return;
  } else {
  }
  if ((unsigned int )ioa_cfg->log_level <= 2U) {
    __min1 = len;
    __min2 = 984;
    len = __min1 < __min2 ? __min1 : __min2;
  } else {
  }
  i = 0;
  goto ldv_45539;
  ldv_45538:
  tmp = __fswab32(*(data + ((unsigned long )i + 3UL)));
  tmp___0 = __fswab32(*(data + ((unsigned long )i + 2UL)));
  tmp___1 = __fswab32(*(data + ((unsigned long )i + 1UL)));
  tmp___2 = __fswab32(*(data + (unsigned long )i));
  printk("\vipr: %08X: %08X %08X %08X %08X\n", i * 4, tmp___2, tmp___1, tmp___0, tmp);
  i = i + 4;
  ldv_45539: ;
  if (len / 4 > i) {
    goto ldv_45538;
  } else {
  }
  return;
}
}
static void ipr_log_enhanced_dual_ioa_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_17_error *error ;
  __u32 tmp ;
  char *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  {
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    error = & hostrcb->hcam.u.error64.u.type_17_error;
  } else {
    error = & hostrcb->hcam.u.error.u.type_17_error;
  }
  error->failure_reason[63UL] = 0U;
  strim((char *)(& error->failure_reason));
  tmp___3 = ipr_is_device(hostrcb);
  if (tmp___3 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = __fswab32(hostrcb->hcam.u.error.prc);
      tmp___0 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s [PRC: %08X]\n", tmp___0, (u8 *)(& error->failure_reason),
             tmp);
    } else {
      tmp___1 = __fswab32(hostrcb->hcam.u.error.prc);
      printk("\vipr: %d:%d:%d:%d: %s [PRC: %08X]\n", ((hostrcb->ioa_cfg)->host)->host_no,
             (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
             (int )hostrcb->hcam.u.error.fd_res_addr.lun, (u8 *)(& error->failure_reason),
             tmp___1);
    }
  } else {
    tmp___2 = __fswab32(hostrcb->hcam.u.error.prc);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s [PRC: %08X]\n",
            (u8 *)(& error->failure_reason), tmp___2);
  }
  ipr_log_ext_vpd_compact((char *)"Remote IOA", hostrcb, & error->vpd);
  tmp___4 = __fswab32(hostrcb->hcam.length);
  ipr_log_hex_data(ioa_cfg, (u32 *)(& error->data), (int )(tmp___4 - 120U));
  return;
}
}
static void ipr_log_dual_ioa_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_07_error *error ;
  __u32 tmp ;
  char *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  {
  error = & hostrcb->hcam.u.error.u.type_07_error;
  error->failure_reason[63UL] = 0U;
  strim((char *)(& error->failure_reason));
  tmp___3 = ipr_is_device(hostrcb);
  if (tmp___3 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = __fswab32(hostrcb->hcam.u.error.prc);
      tmp___0 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s [PRC: %08X]\n", tmp___0, (u8 *)(& error->failure_reason),
             tmp);
    } else {
      tmp___1 = __fswab32(hostrcb->hcam.u.error.prc);
      printk("\vipr: %d:%d:%d:%d: %s [PRC: %08X]\n", ((hostrcb->ioa_cfg)->host)->host_no,
             (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
             (int )hostrcb->hcam.u.error.fd_res_addr.lun, (u8 *)(& error->failure_reason),
             tmp___1);
    }
  } else {
    tmp___2 = __fswab32(hostrcb->hcam.u.error.prc);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s [PRC: %08X]\n",
            (u8 *)(& error->failure_reason), tmp___2);
  }
  ipr_log_vpd_compact((char *)"Remote IOA", hostrcb, & error->vpd);
  tmp___4 = __fswab32(hostrcb->hcam.length);
  ipr_log_hex_data(ioa_cfg, (u32 *)(& error->data), (int )(tmp___4 - 112U));
  return;
}
}
static struct __anonstruct_path_active_desc_303 const path_active_desc[3U] = { {0U, (char *)"Path"},
        {64U, (char *)"Active path"},
        {128U, (char *)"Inactive path"}};
static struct __anonstruct_path_state_desc_304 const path_state_desc[4U] = { {0U, (char *)"has no path state information available"},
        {1U, (char *)"is healthy"},
        {2U, (char *)"is degraded"},
        {3U, (char *)"is failed"}};
static void ipr_log_fabric_path(struct ipr_hostrcb *hostrcb , struct ipr_hostrcb_fabric_desc *fabric )
{
  int i ;
  int j ;
  u8 path_state ;
  u8 active ;
  u8 state ;
  char *tmp ;
  int tmp___0 ;
  char *tmp___1 ;
  int tmp___2 ;
  char *tmp___3 ;
  int tmp___4 ;
  char *tmp___5 ;
  int tmp___6 ;
  {
  path_state = fabric->path_state;
  active = (unsigned int )path_state & 192U;
  state = (unsigned int )path_state & 15U;
  i = 0;
  goto ldv_45578;
  ldv_45577: ;
  if ((int )((unsigned char )path_active_desc[i].active) != (int )active) {
    goto ldv_45570;
  } else {
  }
  j = 0;
  goto ldv_45575;
  ldv_45574: ;
  if ((int )((unsigned char )path_state_desc[j].state) != (int )state) {
    goto ldv_45573;
  } else {
  }
  if ((unsigned int )fabric->cascaded_expander == 255U && (unsigned int )fabric->phy == 255U) {
    tmp___0 = ipr_is_device(hostrcb);
    if (tmp___0 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                  (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: IOA Port=%d\n", tmp, path_active_desc[i].desc, path_state_desc[j].desc,
               (int )fabric->ioa_port);
      } else {
        printk("\vipr: %d:%d:%d:%d: %s %s: IOA Port=%d\n", ((hostrcb->ioa_cfg)->host)->host_no,
               (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
               (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port);
      }
    } else {
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: IOA Port=%d\n",
              path_active_desc[i].desc, path_state_desc[j].desc, (int )fabric->ioa_port);
    }
  } else
  if ((unsigned int )fabric->cascaded_expander == 255U) {
    tmp___2 = ipr_is_device(hostrcb);
    if (tmp___2 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___1 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                      (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: IOA Port=%d, Phy=%d\n", tmp___1, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->phy);
      } else {
        printk("\vipr: %d:%d:%d:%d: %s %s: IOA Port=%d, Phy=%d\n", ((hostrcb->ioa_cfg)->host)->host_no,
               (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
               (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->phy);
      }
    } else {
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: IOA Port=%d, Phy=%d\n",
              path_active_desc[i].desc, path_state_desc[j].desc, (int )fabric->ioa_port,
              (int )fabric->phy);
    }
  } else
  if ((unsigned int )fabric->phy == 255U) {
    tmp___4 = ipr_is_device(hostrcb);
    if (tmp___4 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___3 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                      (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: IOA Port=%d, Cascade=%d\n", tmp___3, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->cascaded_expander);
      } else {
        printk("\vipr: %d:%d:%d:%d: %s %s: IOA Port=%d, Cascade=%d\n", ((hostrcb->ioa_cfg)->host)->host_no,
               (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
               (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->cascaded_expander);
      }
    } else {
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: IOA Port=%d, Cascade=%d\n",
              path_active_desc[i].desc, path_state_desc[j].desc, (int )fabric->ioa_port,
              (int )fabric->cascaded_expander);
    }
  } else {
    tmp___6 = ipr_is_device(hostrcb);
    if (tmp___6 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___5 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                      (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: IOA Port=%d, Cascade=%d, Phy=%d\n", tmp___5, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->cascaded_expander,
               (int )fabric->phy);
      } else {
        printk("\vipr: %d:%d:%d:%d: %s %s: IOA Port=%d, Cascade=%d, Phy=%d\n", ((hostrcb->ioa_cfg)->host)->host_no,
               (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
               (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_active_desc[i].desc,
               path_state_desc[j].desc, (int )fabric->ioa_port, (int )fabric->cascaded_expander,
               (int )fabric->phy);
      }
    } else {
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: IOA Port=%d, Cascade=%d, Phy=%d\n",
              path_active_desc[i].desc, path_state_desc[j].desc, (int )fabric->ioa_port,
              (int )fabric->cascaded_expander, (int )fabric->phy);
    }
  }
  return;
  ldv_45573:
  j = j + 1;
  ldv_45575: ;
  if ((unsigned int )j <= 3U) {
    goto ldv_45574;
  } else {
  }
  ldv_45570:
  i = i + 1;
  ldv_45578: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_45577;
  } else {
  }
  printk("\vipr: Path state=%02X IOA Port=%d Cascade=%d Phy=%d\n", (int )path_state,
         (int )fabric->ioa_port, (int )fabric->cascaded_expander, (int )fabric->phy);
  return;
}
}
static void ipr_log64_fabric_path(struct ipr_hostrcb *hostrcb , struct ipr_hostrcb64_fabric_desc *fabric )
{
  int i ;
  int j ;
  u8 path_state ;
  u8 active ;
  u8 state ;
  char buffer[48U] ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  char *tmp___4 ;
  {
  path_state = fabric->path_state;
  active = (unsigned int )path_state & 192U;
  state = (unsigned int )path_state & 15U;
  i = 0;
  goto ldv_45600;
  ldv_45599: ;
  if ((int )((unsigned char )path_active_desc[i].active) != (int )active) {
    goto ldv_45592;
  } else {
  }
  j = 0;
  goto ldv_45597;
  ldv_45596: ;
  if ((int )((unsigned char )path_state_desc[j].state) != (int )state) {
    goto ldv_45595;
  } else {
  }
  tmp___3 = ipr_is_device(hostrcb);
  if (tmp___3 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& fabric->res_path), (char *)(& buffer),
                                48);
      tmp___0 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s %s: Resource Path=%s\n", tmp___0, path_active_desc[i].desc,
             path_state_desc[j].desc, tmp);
    } else {
      tmp___1 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& fabric->res_path),
                                    (char *)(& buffer), 48);
      printk("\vipr: %d:%d:%d:%d: %s %s: Resource Path=%s\n", ((hostrcb->ioa_cfg)->host)->host_no,
             (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
             (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_active_desc[i].desc,
             path_state_desc[j].desc, tmp___1);
    }
  } else {
    tmp___2 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& fabric->res_path), (char *)(& buffer),
                                  48);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Resource Path=%s\n",
            path_active_desc[i].desc, path_state_desc[j].desc, tmp___2);
  }
  return;
  ldv_45595:
  j = j + 1;
  ldv_45597: ;
  if ((unsigned int )j <= 3U) {
    goto ldv_45596;
  } else {
  }
  ldv_45592:
  i = i + 1;
  ldv_45600: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_45599;
  } else {
  }
  tmp___4 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& fabric->res_path), (char *)(& buffer),
                                48);
  printk("\vipr: Path state=%02X Resource Path=%s\n", (int )path_state, tmp___4);
  return;
}
}
static struct __anonstruct_path_type_desc_309 const path_type_desc[4U] = { {16U, (char *)"IOA port"},
        {32U, (char *)"Expander port"},
        {48U, (char *)"Device port"},
        {64U, (char *)"Device LUN"}};
static struct __anonstruct_path_status_desc_310 const path_status_desc[6U] = { {0U, (char *)"Functional"},
        {1U, (char *)"Degraded"},
        {2U, (char *)"Failed"},
        {3U, (char *)"Suspect"},
        {4U, (char *)"Missing"},
        {5U, (char *)"Incorrectly connected"}};
static char const *link_rate[16U] =
  { "unknown", "disabled", "phy reset problem", "spinup hold",
        "port selector", "unknown", "unknown", "unknown",
        "1.5Gbps", "3.0Gbps", "unknown", "unknown",
        "unknown", "unknown", "unknown", "unknown"};
static void ipr_log_path_elem(struct ipr_hostrcb *hostrcb , struct ipr_hostrcb_config_element *cfg )
{
  int i ;
  int j ;
  u8 type ;
  u8 status ;
  __u32 tmp ;
  __u32 tmp___0 ;
  char *tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  char *tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  int tmp___14 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  char *tmp___17 ;
  __u32 tmp___18 ;
  __u32 tmp___19 ;
  __u32 tmp___20 ;
  __u32 tmp___21 ;
  int tmp___22 ;
  __u32 tmp___23 ;
  __u32 tmp___24 ;
  char *tmp___25 ;
  __u32 tmp___26 ;
  __u32 tmp___27 ;
  __u32 tmp___28 ;
  __u32 tmp___29 ;
  int tmp___30 ;
  __u32 tmp___31 ;
  __u32 tmp___32 ;
  char *tmp___33 ;
  __u32 tmp___34 ;
  __u32 tmp___35 ;
  __u32 tmp___36 ;
  __u32 tmp___37 ;
  int tmp___38 ;
  __u32 tmp___39 ;
  __u32 tmp___40 ;
  char *tmp___41 ;
  __u32 tmp___42 ;
  __u32 tmp___43 ;
  __u32 tmp___44 ;
  __u32 tmp___45 ;
  int tmp___46 ;
  {
  type = (unsigned int )cfg->type_status & 240U;
  status = (unsigned int )cfg->type_status & 15U;
  if ((unsigned int )type == 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_45629;
  ldv_45628: ;
  if ((int )((unsigned char )path_type_desc[i].type) != (int )type) {
    goto ldv_45621;
  } else {
  }
  j = 0;
  goto ldv_45626;
  ldv_45625: ;
  if ((int )((unsigned char )path_status_desc[j].status) != (int )status) {
    goto ldv_45624;
  } else {
  }
  if ((unsigned int )type == 16U) {
    tmp___6 = ipr_is_device(hostrcb);
    if (tmp___6 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp = __fswab32(cfg->wwid[1]);
        tmp___0 = __fswab32(cfg->wwid[0]);
        tmp___1 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                      (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n", tmp___1,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
               tmp___0, tmp);
      } else {
        tmp___2 = __fswab32(cfg->wwid[1]);
        tmp___3 = __fswab32(cfg->wwid[0]);
        printk("\vipr: %d:%d:%d:%d: %s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n",
               ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
               (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
               tmp___3, tmp___2);
      }
    } else {
      tmp___4 = __fswab32(cfg->wwid[1]);
      tmp___5 = __fswab32(cfg->wwid[0]);
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n",
              path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
              tmp___5, tmp___4);
    }
  } else
  if ((unsigned int )cfg->cascaded_expander == 255U && (unsigned int )cfg->phy == 255U) {
    tmp___14 = ipr_is_device(hostrcb);
    if (tmp___14 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___7 = __fswab32(cfg->wwid[1]);
        tmp___8 = __fswab32(cfg->wwid[0]);
        tmp___9 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                      (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: Link rate=%s, WWN=%08X%08X\n", tmp___9, path_status_desc[j].desc,
               path_type_desc[i].desc, link_rate[(int )cfg->link_rate & 15], tmp___8,
               tmp___7);
      } else {
        tmp___10 = __fswab32(cfg->wwid[1]);
        tmp___11 = __fswab32(cfg->wwid[0]);
        printk("\vipr: %d:%d:%d:%d: %s %s: Link rate=%s, WWN=%08X%08X\n", ((hostrcb->ioa_cfg)->host)->host_no,
               (int )hostrcb->hcam.u.error.fd_res_addr.bus, (int )hostrcb->hcam.u.error.fd_res_addr.target,
               (int )hostrcb->hcam.u.error.fd_res_addr.lun, path_status_desc[j].desc,
               path_type_desc[i].desc, link_rate[(int )cfg->link_rate & 15], tmp___11,
               tmp___10);
      }
    } else {
      tmp___12 = __fswab32(cfg->wwid[1]);
      tmp___13 = __fswab32(cfg->wwid[0]);
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Link rate=%s, WWN=%08X%08X\n",
              path_status_desc[j].desc, path_type_desc[i].desc, link_rate[(int )cfg->link_rate & 15],
              tmp___13, tmp___12);
    }
  } else
  if ((unsigned int )cfg->cascaded_expander == 255U) {
    tmp___22 = ipr_is_device(hostrcb);
    if (tmp___22 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___15 = __fswab32(cfg->wwid[1]);
        tmp___16 = __fswab32(cfg->wwid[0]);
        tmp___17 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                       (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n", tmp___17,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
               tmp___16, tmp___15);
      } else {
        tmp___18 = __fswab32(cfg->wwid[1]);
        tmp___19 = __fswab32(cfg->wwid[0]);
        printk("\vipr: %d:%d:%d:%d: %s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n",
               ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
               (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
               tmp___19, tmp___18);
      }
    } else {
      tmp___20 = __fswab32(cfg->wwid[1]);
      tmp___21 = __fswab32(cfg->wwid[0]);
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Phy=%d, Link rate=%s, WWN=%08X%08X\n",
              path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->phy, link_rate[(int )cfg->link_rate & 15],
              tmp___21, tmp___20);
    }
  } else
  if ((unsigned int )cfg->phy == 255U) {
    tmp___30 = ipr_is_device(hostrcb);
    if (tmp___30 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___23 = __fswab32(cfg->wwid[1]);
        tmp___24 = __fswab32(cfg->wwid[0]);
        tmp___25 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                       (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: Cascade=%d, Link rate=%s, WWN=%08X%08X\n", tmp___25,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
               link_rate[(int )cfg->link_rate & 15], tmp___24, tmp___23);
      } else {
        tmp___26 = __fswab32(cfg->wwid[1]);
        tmp___27 = __fswab32(cfg->wwid[0]);
        printk("\vipr: %d:%d:%d:%d: %s %s: Cascade=%d, Link rate=%s, WWN=%08X%08X\n",
               ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
               (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
               link_rate[(int )cfg->link_rate & 15], tmp___27, tmp___26);
      }
    } else {
      tmp___28 = __fswab32(cfg->wwid[1]);
      tmp___29 = __fswab32(cfg->wwid[0]);
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Cascade=%d, Link rate=%s, WWN=%08X%08X\n",
              path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
              link_rate[(int )cfg->link_rate & 15], tmp___29, tmp___28);
    }
  } else {
    tmp___38 = ipr_is_device(hostrcb);
    if (tmp___38 != 0) {
      if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
        tmp___31 = __fswab32(cfg->wwid[1]);
        tmp___32 = __fswab32(cfg->wwid[0]);
        tmp___33 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                       (char *)(& hostrcb->rp_buffer), 48);
        printk("\vipr: %s: %s %s: Cascade=%d, Phy=%d, Link rate=%s WWN=%08X%08X\n",
               tmp___33, path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
               (int )cfg->phy, link_rate[(int )cfg->link_rate & 15], tmp___32, tmp___31);
      } else {
        tmp___34 = __fswab32(cfg->wwid[1]);
        tmp___35 = __fswab32(cfg->wwid[0]);
        printk("\vipr: %d:%d:%d:%d: %s %s: Cascade=%d, Phy=%d, Link rate=%s WWN=%08X%08X\n",
               ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
               (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
               path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
               (int )cfg->phy, link_rate[(int )cfg->link_rate & 15], tmp___35, tmp___34);
      }
    } else {
      tmp___36 = __fswab32(cfg->wwid[1]);
      tmp___37 = __fswab32(cfg->wwid[0]);
      dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Cascade=%d, Phy=%d, Link rate=%s WWN=%08X%08X\n",
              path_status_desc[j].desc, path_type_desc[i].desc, (int )cfg->cascaded_expander,
              (int )cfg->phy, link_rate[(int )cfg->link_rate & 15], tmp___37, tmp___36);
    }
  }
  return;
  ldv_45624:
  j = j + 1;
  ldv_45626: ;
  if ((unsigned int )j <= 5U) {
    goto ldv_45625;
  } else {
  }
  ldv_45621:
  i = i + 1;
  ldv_45629: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_45628;
  } else {
  }
  tmp___46 = ipr_is_device(hostrcb);
  if (tmp___46 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp___39 = __fswab32(cfg->wwid[1]);
      tmp___40 = __fswab32(cfg->wwid[0]);
      tmp___41 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                     (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: Path element=%02X: Cascade=%d Phy=%d Link rate=%s WWN=%08X%08X\n",
             tmp___41, (int )cfg->type_status, (int )cfg->cascaded_expander, (int )cfg->phy,
             link_rate[(int )cfg->link_rate & 15], tmp___40, tmp___39);
    } else {
      tmp___42 = __fswab32(cfg->wwid[1]);
      tmp___43 = __fswab32(cfg->wwid[0]);
      printk("\vipr: %d:%d:%d:%d: Path element=%02X: Cascade=%d Phy=%d Link rate=%s WWN=%08X%08X\n",
             ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             (int )cfg->type_status, (int )cfg->cascaded_expander, (int )cfg->phy,
             link_rate[(int )cfg->link_rate & 15], tmp___43, tmp___42);
    }
  } else {
    tmp___44 = __fswab32(cfg->wwid[1]);
    tmp___45 = __fswab32(cfg->wwid[0]);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "Path element=%02X: Cascade=%d Phy=%d Link rate=%s WWN=%08X%08X\n",
            (int )cfg->type_status, (int )cfg->cascaded_expander, (int )cfg->phy,
            link_rate[(int )cfg->link_rate & 15], tmp___45, tmp___44);
  }
  return;
}
}
static void ipr_log64_path_elem(struct ipr_hostrcb *hostrcb , struct ipr_hostrcb64_config_element *cfg )
{
  int i ;
  int j ;
  u8 desc_id ;
  u8 type ;
  u8 status ;
  char buffer[48U] ;
  __u32 tmp ;
  __u32 tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  char *tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  char *tmp___8 ;
  int tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  char *tmp___12 ;
  char *tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  char *tmp___16 ;
  __u32 tmp___17 ;
  __u32 tmp___18 ;
  char *tmp___19 ;
  int tmp___20 ;
  {
  desc_id = (unsigned int )cfg->descriptor_id & 192U;
  type = (unsigned int )cfg->type_status & 240U;
  status = (unsigned int )cfg->type_status & 15U;
  if ((unsigned int )type == 0U || (unsigned int )desc_id != 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_45651;
  ldv_45650: ;
  if ((int )((unsigned char )path_type_desc[i].type) != (int )type) {
    goto ldv_45643;
  } else {
  }
  j = 0;
  goto ldv_45648;
  ldv_45647: ;
  if ((int )((unsigned char )path_status_desc[j].status) != (int )status) {
    goto ldv_45646;
  } else {
  }
  tmp___9 = ipr_is_device(hostrcb);
  if (tmp___9 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = __fswab32(cfg->wwid[1]);
      tmp___0 = __fswab32(cfg->wwid[0]);
      tmp___1 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                    48);
      tmp___2 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\n", tmp___2,
             path_status_desc[j].desc, path_type_desc[i].desc, tmp___1, link_rate[(int )cfg->link_rate & 15],
             tmp___0, tmp);
    } else {
      tmp___3 = __fswab32(cfg->wwid[1]);
      tmp___4 = __fswab32(cfg->wwid[0]);
      tmp___5 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                    48);
      printk("\vipr: %d:%d:%d:%d: %s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\n",
             ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             path_status_desc[j].desc, path_type_desc[i].desc, tmp___5, link_rate[(int )cfg->link_rate & 15],
             tmp___4, tmp___3);
    }
  } else {
    tmp___6 = __fswab32(cfg->wwid[1]);
    tmp___7 = __fswab32(cfg->wwid[0]);
    tmp___8 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                  48);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s %s: Resource Path=%s, Link rate=%s, WWN=%08X%08X\n",
            path_status_desc[j].desc, path_type_desc[i].desc, tmp___8, link_rate[(int )cfg->link_rate & 15],
            tmp___7, tmp___6);
  }
  return;
  ldv_45646:
  j = j + 1;
  ldv_45648: ;
  if ((unsigned int )j <= 5U) {
    goto ldv_45647;
  } else {
  }
  ldv_45643:
  i = i + 1;
  ldv_45651: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_45650;
  } else {
  }
  tmp___20 = ipr_is_device(hostrcb);
  if (tmp___20 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp___10 = __fswab32(cfg->wwid[1]);
      tmp___11 = __fswab32(cfg->wwid[0]);
      tmp___12 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                     48);
      tmp___13 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                     (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: Path element=%02X: Resource Path=%s, Link rate=%s WWN=%08X%08X\n",
             tmp___13, (int )cfg->type_status, tmp___12, link_rate[(int )cfg->link_rate & 15],
             tmp___11, tmp___10);
    } else {
      tmp___14 = __fswab32(cfg->wwid[1]);
      tmp___15 = __fswab32(cfg->wwid[0]);
      tmp___16 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                     48);
      printk("\vipr: %d:%d:%d:%d: Path element=%02X: Resource Path=%s, Link rate=%s WWN=%08X%08X\n",
             ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             (int )cfg->type_status, tmp___16, link_rate[(int )cfg->link_rate & 15],
             tmp___15, tmp___14);
    }
  } else {
    tmp___17 = __fswab32(cfg->wwid[1]);
    tmp___18 = __fswab32(cfg->wwid[0]);
    tmp___19 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& cfg->res_path), (char *)(& buffer),
                                   48);
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "Path element=%02X: Resource Path=%s, Link rate=%s WWN=%08X%08X\n",
            (int )cfg->type_status, tmp___19, link_rate[(int )cfg->link_rate & 15],
            tmp___18, tmp___17);
  }
  return;
}
}
static void ipr_log_fabric_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_20_error *error ;
  struct ipr_hostrcb_fabric_desc *fabric ;
  struct ipr_hostrcb_config_element *cfg ;
  int i ;
  int add_len ;
  char *tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  {
  error = & hostrcb->hcam.u.error.u.type_20_error;
  error->failure_reason[63UL] = 0U;
  tmp___0 = ipr_is_device(hostrcb);
  if (tmp___0 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s\n", tmp, (u8 *)(& error->failure_reason));
    } else {
      printk("\vipr: %d:%d:%d:%d: %s\n", ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             (u8 *)(& error->failure_reason));
    }
  } else {
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s\n",
            (u8 *)(& error->failure_reason));
  }
  tmp___1 = __fswab32(hostrcb->hcam.length);
  add_len = (int )(tmp___1 - 84U);
  i = 0;
  fabric = (struct ipr_hostrcb_fabric_desc *)(& error->desc);
  goto ldv_45666;
  ldv_45665:
  ipr_log_fabric_path(hostrcb, fabric);
  cfg = (struct ipr_hostrcb_config_element *)(& fabric->elem);
  goto ldv_45663;
  ldv_45662:
  ipr_log_path_elem(hostrcb, cfg);
  cfg = cfg + 1;
  ldv_45663:
  tmp___2 = __fswab16((int )fabric->num_entries);
  if ((unsigned long )((struct ipr_hostrcb_config_element *)(& fabric->elem) + (unsigned long )tmp___2) > (unsigned long )cfg) {
    goto ldv_45662;
  } else {
  }
  tmp___3 = __fswab16((int )fabric->length);
  add_len = add_len - (int )tmp___3;
  tmp___4 = __fswab16((int )fabric->length);
  fabric = (struct ipr_hostrcb_fabric_desc *)((unsigned long )tmp___4 + (unsigned long )fabric);
  i = i + 1;
  ldv_45666: ;
  if ((int )error->num_entries > i) {
    goto ldv_45665;
  } else {
  }
  ipr_log_hex_data(ioa_cfg, (u32 *)fabric, add_len);
  return;
}
}
static void ipr_log_sis64_array_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  int i ;
  int num_entries ;
  struct ipr_hostrcb_type_24_error *error ;
  struct ipr_hostrcb64_array_data_entry *array_entry ;
  char buffer[48U] ;
  u8 zero_sn[8U] ;
  char *tmp ;
  u32 __min1 ;
  u32 __min2 ;
  int tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  {
  zero_sn[0] = 48U;
  zero_sn[1] = 48U;
  zero_sn[2] = 48U;
  zero_sn[3] = 48U;
  zero_sn[4] = 48U;
  zero_sn[5] = 48U;
  zero_sn[6] = 48U;
  zero_sn[7] = 48U;
  error = & hostrcb->hcam.u.error64.u.type_24_error;
  printk("\vipr: ----------------------------------------------------------\n");
  tmp = ipr_format_res_path(ioa_cfg, (u8 *)(& error->last_res_path), (char *)(& buffer),
                            48);
  printk("\vipr: RAID %s Array Configuration: %s\n", (u8 *)(& error->protection_level),
         tmp);
  printk("\vipr: ----------------------------------------------------------\n");
  array_entry = (struct ipr_hostrcb64_array_data_entry *)(& error->array_member);
  __min1 = (u32 )error->num_entries;
  __min2 = 32U;
  num_entries = (int )(__min1 < __min2 ? __min1 : __min2);
  i = 0;
  goto ldv_45685;
  ldv_45684:
  tmp___0 = memcmp((void const *)(& array_entry->vpd.vpd.sn), (void const *)(& zero_sn),
                   8UL);
  if (tmp___0 == 0) {
    goto ldv_45683;
  } else {
  }
  if ((int )error->exposed_mode_adn == i) {
    printk("\vipr: Exposed Array Member %d:\n", i);
  } else {
    printk("\vipr: Array Member %d:\n", i);
  }
  printk("\vipr: Array Member %d:\n", i);
  ipr_log_ext_vpd(& array_entry->vpd);
  tmp___1 = ipr_format_res_path(ioa_cfg, (u8 *)(& array_entry->res_path), (char *)(& buffer),
                                48);
  printk("\vipr: Current Location: %s\n", tmp___1);
  tmp___2 = ipr_format_res_path(ioa_cfg, (u8 *)(& array_entry->expected_res_path),
                                (char *)(& buffer), 48);
  printk("\vipr: Expected Location: %s\n", tmp___2);
  printk("\vipr: ----------------------------------------------------------\n");
  ldv_45683:
  i = i + 1;
  array_entry = array_entry + 1;
  ldv_45685: ;
  if (i < num_entries) {
    goto ldv_45684;
  } else {
  }
  return;
}
}
static void ipr_log_sis64_fabric_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_30_error *error ;
  struct ipr_hostrcb64_fabric_desc *fabric ;
  struct ipr_hostrcb64_config_element *cfg ;
  int i ;
  int add_len ;
  char *tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  {
  error = & hostrcb->hcam.u.error64.u.type_30_error;
  error->failure_reason[63UL] = 0U;
  tmp___0 = ipr_is_device(hostrcb);
  if (tmp___0 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s\n", tmp, (u8 *)(& error->failure_reason));
    } else {
      printk("\vipr: %d:%d:%d:%d: %s\n", ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             (u8 *)(& error->failure_reason));
    }
  } else {
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s\n",
            (u8 *)(& error->failure_reason));
  }
  tmp___1 = __fswab32(hostrcb->hcam.length);
  add_len = (int )(tmp___1 - 132U);
  i = 0;
  fabric = (struct ipr_hostrcb64_fabric_desc *)(& error->desc);
  goto ldv_45700;
  ldv_45699:
  ipr_log64_fabric_path(hostrcb, fabric);
  cfg = (struct ipr_hostrcb64_config_element *)(& fabric->elem);
  goto ldv_45697;
  ldv_45696:
  ipr_log64_path_elem(hostrcb, cfg);
  cfg = cfg + 1;
  ldv_45697:
  tmp___2 = __fswab16((int )fabric->num_entries);
  if ((unsigned long )((struct ipr_hostrcb64_config_element *)(& fabric->elem) + (unsigned long )tmp___2) > (unsigned long )cfg) {
    goto ldv_45696;
  } else {
  }
  tmp___3 = __fswab16((int )fabric->length);
  add_len = add_len - (int )tmp___3;
  tmp___4 = __fswab16((int )fabric->length);
  fabric = (struct ipr_hostrcb64_fabric_desc *)((unsigned long )tmp___4 + (unsigned long )fabric);
  i = i + 1;
  ldv_45700: ;
  if ((int )error->num_entries > i) {
    goto ldv_45699;
  } else {
  }
  ipr_log_hex_data(ioa_cfg, (u32 *)fabric, add_len);
  return;
}
}
static void ipr_log_generic_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  __u32 tmp ;
  {
  tmp = __fswab32(hostrcb->hcam.length);
  ipr_log_hex_data(ioa_cfg, (u32 *)(& hostrcb->hcam.u.raw.data), (int )tmp);
  return;
}
}
static void ipr_log_sis64_device_error(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  struct ipr_hostrcb_type_21_error *error ;
  char buffer[48U] ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  char *tmp___3 ;
  __u32 tmp___4 ;
  {
  error = & hostrcb->hcam.u.error64.u.type_21_error;
  printk("\vipr: -----Failing Device Information-----\n");
  tmp = __fswab32(error->wwn[3]);
  tmp___0 = __fswab32(error->wwn[2]);
  tmp___1 = __fswab32(error->wwn[1]);
  tmp___2 = __fswab32(error->wwn[0]);
  printk("\vipr: World Wide Unique ID: %08X%08X%08X%08X\n", tmp___2, tmp___1, tmp___0,
         tmp);
  tmp___3 = __ipr_format_res_path((u8 *)(& error->res_path), (char *)(& buffer), 48);
  printk("\vipr: Device Resource Path: %s\n", tmp___3);
  error->primary_problem_desc[31UL] = 0U;
  error->second_problem_desc[31UL] = 0U;
  printk("\vipr: Primary Problem Description: %s\n", (u8 *)(& error->primary_problem_desc));
  printk("\vipr: Secondary Problem Description:  %s\n", (u8 *)(& error->second_problem_desc));
  printk("\vipr: SCSI Sense Data:\n");
  ipr_log_hex_data(ioa_cfg, (u32 *)(& error->sense_data), 32);
  printk("\vipr: SCSI Command Descriptor Block: \n");
  ipr_log_hex_data(ioa_cfg, (u32 *)(& error->cdb), 16);
  printk("\vipr: Additional IOA Data:\n");
  tmp___4 = __fswab32(error->length_of_error);
  ipr_log_hex_data(ioa_cfg, (u32 *)(& error->ioa_data), (int )tmp___4);
  return;
}
}
static u32 ipr_get_error(u32 ioasc )
{
  int i ;
  {
  i = 0;
  goto ldv_45719;
  ldv_45718: ;
  if ((unsigned int )ipr_error_table[i].ioasc == (ioasc & 4294967040U)) {
    return ((u32 )i);
  } else {
  }
  i = i + 1;
  ldv_45719: ;
  if ((unsigned int )i <= 162U) {
    goto ldv_45718;
  } else {
  }
  return (0U);
}
}
static void ipr_handle_log_data(struct ipr_ioa_cfg *ioa_cfg , struct ipr_hostrcb *hostrcb )
{
  u32 ioasc ;
  int error_index ;
  struct ipr_hostrcb_type_21_error *error ;
  __u32 tmp ;
  __u32 tmp___0 ;
  u32 tmp___1 ;
  __u32 tmp___2 ;
  char *tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  {
  if ((unsigned int )hostrcb->hcam.notify_type != 16U) {
    return;
  } else {
  }
  if ((unsigned int )hostrcb->hcam.notifications_lost == 128U) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Error notifications lost\n");
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp = __fswab32(hostrcb->hcam.u.error64.fd_ioasc);
    ioasc = tmp;
  } else {
    tmp___0 = __fswab32(hostrcb->hcam.u.error.fd_ioasc);
    ioasc = tmp___0;
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U && (ioasc == 103350272U || ioasc == 103383040U)) {
    scsi_report_bus_reset(ioa_cfg->host, (int )hostrcb->hcam.u.error.fd_res_addr.bus);
  } else {
  }
  tmp___1 = ipr_get_error(ioasc);
  error_index = (int )tmp___1;
  if ((int )ipr_error_table[error_index].log_hcam == 0) {
    return;
  } else {
  }
  if (ioasc == 74317824U && (unsigned int )hostrcb->hcam.overlay_id == 33U) {
    error = & hostrcb->hcam.u.error64.u.type_21_error;
    tmp___2 = __fswab32(error->sense_data[0]);
    if ((tmp___2 & 65280U) >> 8 == 5U && (unsigned int )ioa_cfg->log_level <= 2U) {
      return;
    } else {
    }
  } else {
  }
  tmp___4 = ipr_is_device(hostrcb);
  if (tmp___4 != 0) {
    if ((unsigned int )*((unsigned char *)hostrcb->ioa_cfg + 25UL) != 0U) {
      tmp___3 = ipr_format_res_path(hostrcb->ioa_cfg, (u8 *)(& hostrcb->hcam.u.error64.fd_res_path),
                                    (char *)(& hostrcb->rp_buffer), 48);
      printk("\vipr: %s: %s\n", tmp___3, ipr_error_table[error_index].error);
    } else {
      printk("\vipr: %d:%d:%d:%d: %s\n", ((hostrcb->ioa_cfg)->host)->host_no, (int )hostrcb->hcam.u.error.fd_res_addr.bus,
             (int )hostrcb->hcam.u.error.fd_res_addr.target, (int )hostrcb->hcam.u.error.fd_res_addr.lun,
             ipr_error_table[error_index].error);
    }
  } else {
    dev_err((struct device const *)(& ((hostrcb->ioa_cfg)->pdev)->dev), "%s\n",
            ipr_error_table[error_index].error);
  }
  ioa_cfg->errors_logged = ioa_cfg->errors_logged + 1U;
  if ((int )ioa_cfg->log_level < (int )ipr_error_table[error_index].log_hcam) {
    return;
  } else {
  }
  tmp___5 = __fswab32(hostrcb->hcam.length);
  if (tmp___5 > 3048U) {
    hostrcb->hcam.length = 3893035008U;
  } else {
  }
  switch ((int )hostrcb->hcam.overlay_id) {
  case 2:
  ipr_log_cache_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 3:
  ipr_log_config_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 4: ;
  case 6:
  ipr_log_array_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 7:
  ipr_log_dual_ioa_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 18:
  ipr_log_enhanced_cache_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 19:
  ipr_log_enhanced_config_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 20: ;
  case 22:
  ipr_log_enhanced_array_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 23:
  ipr_log_enhanced_dual_ioa_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 32:
  ipr_log_fabric_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 33:
  ipr_log_sis64_device_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 35:
  ipr_log_sis64_config_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 36: ;
  case 38:
  ipr_log_sis64_array_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 48:
  ipr_log_sis64_fabric_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  case 1: ;
  case 255: ;
  default:
  ipr_log_generic_error(ioa_cfg, hostrcb);
  goto ldv_45729;
  }
  ldv_45729: ;
  return;
}
}
static void ipr_process_error(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_hostrcb *hostrcb ;
  u32 ioasc ;
  __u32 tmp ;
  u32 fd_ioasc ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  hostrcb = ipr_cmd->u.hostrcb;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___0 = __fswab32(hostrcb->hcam.u.error64.fd_ioasc);
    fd_ioasc = tmp___0;
  } else {
    tmp___1 = __fswab32(hostrcb->hcam.u.error.fd_ioasc);
    fd_ioasc = tmp___1;
  }
  list_del(& hostrcb->queue);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  if (ioasc == 0U) {
    ipr_handle_log_data(ioa_cfg, hostrcb);
    if (fd_ioasc == 33849344U) {
      ipr_initiate_ioa_reset(ioa_cfg, 128);
    } else {
    }
  } else
  if (ioasc != 268435457U && ioasc != 190447616U) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Host RCB failed with IOASC: 0x%08X\n",
            ioasc);
  } else {
  }
  ipr_send_hcam(ioa_cfg, 2, hostrcb);
  return;
}
}
static void ipr_timeout(struct ipr_cmnd *ipr_cmd )
{
  unsigned long lock_flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  lock_flags = 0UL;
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_timeout");
  } else {
  }
  ldv_spin_lock();
  ioa_cfg->errors_logged = ioa_cfg->errors_logged + 1U;
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Adapter being reset due to command timeout.\n");
  if ((unsigned int )ioa_cfg->sdt_state == 1U) {
    ioa_cfg->sdt_state = 2;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U || (unsigned long )ioa_cfg->reset_cmd == (unsigned long )ipr_cmd) {
    ipr_initiate_ioa_reset(ioa_cfg, 256);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_timeout");
  } else {
  }
  return;
}
}
static void ipr_oper_timeout(struct ipr_cmnd *ipr_cmd )
{
  unsigned long lock_flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  lock_flags = 0UL;
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_oper_timeout");
  } else {
  }
  ldv_spin_lock();
  ioa_cfg->errors_logged = ioa_cfg->errors_logged + 1U;
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Adapter timed out transitioning to operational.\n");
  if ((unsigned int )ioa_cfg->sdt_state == 1U) {
    ioa_cfg->sdt_state = 2;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U || (unsigned long )ioa_cfg->reset_cmd == (unsigned long )ipr_cmd) {
    if (ipr_fastfail != 0U) {
      ioa_cfg->reset_retries = (unsigned int )ioa_cfg->reset_retries + 3U;
    } else {
    }
    ipr_initiate_ioa_reset(ioa_cfg, 256);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_oper_timeout");
  } else {
  }
  return;
}
}
static struct ipr_ses_table_entry const *ipr_find_ses_entry(struct ipr_resource_entry *res )
{
  int i ;
  int j ;
  int matches ;
  struct ipr_std_inq_vpids *vpids ;
  struct ipr_ses_table_entry const *ste ;
  {
  ste = (struct ipr_ses_table_entry const *)(& ipr_ses_table);
  i = 0;
  goto ldv_45781;
  ldv_45780:
  j = 0;
  matches = 0;
  goto ldv_45779;
  ldv_45778: ;
  if ((int )((signed char )ste->compare_product_id_byte[j]) == 88) {
    vpids = & res->std_inq_data.vpids;
    if ((int )vpids->product_id[j] == (int )ste->product_id[j]) {
      matches = matches + 1;
    } else {
      goto ldv_45777;
    }
  } else {
    matches = matches + 1;
  }
  j = j + 1;
  ldv_45779: ;
  if (j <= 15) {
    goto ldv_45778;
  } else {
  }
  ldv_45777: ;
  if (matches == 16) {
    return (ste);
  } else {
  }
  i = i + 1;
  ste = ste + 1;
  ldv_45781: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_45780;
  } else {
  }
  return ((struct ipr_ses_table_entry const *)0);
}
}
static u32 ipr_get_max_scsi_speed(struct ipr_ioa_cfg *ioa_cfg , u8 bus , u8 bus_width )
{
  struct ipr_resource_entry *res ;
  struct ipr_ses_table_entry const *ste ;
  u32 max_xfer_rate ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  max_xfer_rate = (u32 )(3200 / (int )((unsigned int )bus_width / 8U));
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_45797;
  ldv_45796: ;
  if (((int )res->std_inq_data.peri_qual_dev_type & 31) != 13) {
    goto ldv_45795;
  } else {
  }
  if ((u32 )bus != res->bus) {
    goto ldv_45795;
  } else {
  }
  ste = ipr_find_ses_entry(res);
  if ((unsigned long )ste == (unsigned long )((struct ipr_ses_table_entry const *)0)) {
    goto ldv_45795;
  } else {
  }
  max_xfer_rate = ((unsigned int )ste->max_bus_speed_limit * 10U) / ((unsigned int )bus_width / 8U);
  ldv_45795:
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_45797: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_45796;
  } else {
  }
  return (max_xfer_rate);
}
}
static int ipr_wait_iodbg_ack(struct ipr_ioa_cfg *ioa_cfg , int max_delay )
{
  u32 volatile pcii_reg ;
  int delay ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  delay = 1;
  goto ldv_45810;
  ldv_45809:
  tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  pcii_reg = tmp;
  if (((unsigned int )pcii_reg & 16777216U) != 0U) {
    return (0);
  } else {
  }
  if (delay > 5999) {
    __ms = (unsigned long )(delay / 1000);
    goto ldv_45807;
    ldv_45806:
    __const_udelay(4295000UL);
    ldv_45807:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_45806;
    } else {
    }
  } else {
    __udelay((unsigned long )delay);
  }
  delay = delay + delay;
  ldv_45810: ;
  if (delay < max_delay) {
    goto ldv_45809;
  } else {
  }
  return (-5);
}
}
static int ipr_get_sis64_dump_data_section(struct ipr_ioa_cfg *ioa_cfg , u32 start_addr ,
                                           __be32 *dest , u32 length_in_words )
{
  int i ;
  unsigned int tmp ;
  __u32 tmp___0 ;
  {
  i = 0;
  goto ldv_45820;
  ldv_45819:
  writel((u32 )(i * 4) + start_addr, (void volatile *)ioa_cfg->regs.dump_addr_reg);
  tmp = readl((void const volatile *)ioa_cfg->regs.dump_data_reg);
  tmp___0 = __fswab32(tmp);
  *dest = tmp___0;
  dest = dest + 1;
  i = i + 1;
  ldv_45820: ;
  if ((u32 )i < length_in_words) {
    goto ldv_45819;
  } else {
  }
  return (0);
}
}
static int ipr_get_ldump_data_section(struct ipr_ioa_cfg *ioa_cfg , u32 start_addr ,
                                      __be32 *dest , u32 length_in_words )
{
  u32 volatile temp_pcii_reg ;
  int i ;
  int delay ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  __u32 tmp___3 ;
  unsigned int tmp___4 ;
  {
  delay = 0;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp = ipr_get_sis64_dump_data_section(ioa_cfg, start_addr, dest, length_in_words);
    return (tmp);
  } else {
  }
  writel(20971520U, (void volatile *)ioa_cfg->regs.set_uproc_interrupt_reg32);
  tmp___0 = ipr_wait_iodbg_ack(ioa_cfg, 200000);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "IOA dump long data transfer timeout\n");
    return (-5);
  } else {
  }
  writel(16777216U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg);
  writel(start_addr, (void volatile *)ioa_cfg->ioa_mailbox);
  writel(16777216U, (void volatile *)ioa_cfg->regs.clr_uproc_interrupt_reg32);
  i = 0;
  goto ldv_45832;
  ldv_45831:
  tmp___1 = ipr_wait_iodbg_ack(ioa_cfg, 200000);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "IOA dump short data transfer timeout\n");
    return (-5);
  } else {
  }
  tmp___2 = readl((void const volatile *)ioa_cfg->ioa_mailbox);
  tmp___3 = __fswab32(tmp___2);
  *dest = tmp___3;
  dest = dest + 1;
  if ((u32 )i < length_in_words - 1U) {
    writel(16777216U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg);
  } else {
  }
  i = i + 1;
  ldv_45832: ;
  if ((u32 )i < length_in_words) {
    goto ldv_45831;
  } else {
  }
  writel(16777216U, (void volatile *)ioa_cfg->regs.set_uproc_interrupt_reg32);
  writel(4194304U, (void volatile *)ioa_cfg->regs.clr_uproc_interrupt_reg32);
  writel(16777216U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg);
  goto ldv_45835;
  ldv_45834:
  tmp___4 = readl((void const volatile *)ioa_cfg->regs.sense_uproc_interrupt_reg32);
  temp_pcii_reg = tmp___4;
  if (((unsigned int )temp_pcii_reg & 16777216U) == 0U) {
    return (0);
  } else {
  }
  __const_udelay(42950UL);
  delay = delay + 10;
  ldv_45835: ;
  if (delay <= 199999) {
    goto ldv_45834;
  } else {
  }
  return (0);
}
}
static int ipr_sdt_copy(struct ipr_ioa_cfg *ioa_cfg , unsigned long pci_address ,
                        u32 length )
{
  int bytes_copied ;
  int cur_len ;
  int rc ;
  int rem_len ;
  int rem_page_len ;
  int max_dump_size ;
  __be32 *page ;
  unsigned long lock_flags ;
  struct ipr_ioa_dump *ioa_dump ;
  unsigned long tmp ;
  int _min1 ;
  int _min2 ;
  {
  bytes_copied = 0;
  lock_flags = 0UL;
  ioa_dump = & (ioa_cfg->dump)->ioa_dump;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    max_dump_size = 83886080;
  } else {
    max_dump_size = 4194304;
  }
  goto ldv_45857;
  ldv_45856: ;
  if (ioa_dump->page_offset > 4095U || ioa_dump->page_offset == 0U) {
    tmp = ldv___get_free_pages_31(32U, 0U);
    page = (__be32 *)tmp;
    if ((unsigned long )page == (unsigned long )((__be32 *)0U)) {
      if (ipr_debug != 0U) {
        printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
               "ipr_sdt_copy", 2903);
      } else {
      }
      return (bytes_copied);
    } else {
    }
    ioa_dump->page_offset = 0U;
    *(ioa_dump->ioa_data + (unsigned long )ioa_dump->next_page_index) = page;
    ioa_dump->next_page_index = ioa_dump->next_page_index + 1U;
  } else {
    page = *(ioa_dump->ioa_data + (unsigned long )(ioa_dump->next_page_index - 1U));
  }
  rem_len = (int )(length - (u32 )bytes_copied);
  rem_page_len = (int )(4096U - ioa_dump->page_offset);
  _min1 = rem_len;
  _min2 = rem_page_len;
  cur_len = _min1 < _min2 ? _min1 : _min2;
  ldv_spin_lock();
  if ((unsigned int )ioa_cfg->sdt_state == 4U) {
    rc = -5;
  } else {
    rc = ipr_get_ldump_data_section(ioa_cfg, (u32 )pci_address + (u32 )bytes_copied,
                                    page + (unsigned long )(ioa_dump->page_offset / 4U),
                                    (u32 )((unsigned long )cur_len / 4UL));
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (rc == 0) {
    ioa_dump->page_offset = ioa_dump->page_offset + (u32 )cur_len;
    bytes_copied = bytes_copied + cur_len;
  } else {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_sdt_copy", 2932);
    } else {
    }
    goto ldv_45855;
  }
  schedule();
  ldv_45857: ;
  if ((u32 )bytes_copied < length && ioa_dump->hdr.len + (u32 )bytes_copied < (u32 )max_dump_size) {
    goto ldv_45856;
  } else {
  }
  ldv_45855: ;
  return (bytes_copied);
}
}
static void ipr_init_dump_entry_hdr(struct ipr_dump_entry_header *hdr )
{
  {
  hdr->eye_catcher = 3319063538U;
  hdr->num_elems = 1U;
  hdr->offset = 28U;
  hdr->status = 0U;
  return;
}
}
static void ipr_dump_ioa_type_data(struct ipr_ioa_cfg *ioa_cfg , struct ipr_driver_dump *driver_dump )
{
  struct ipr_inquiry_page3 *ucode_vpd ;
  {
  ucode_vpd = & (ioa_cfg->vpd_cbs)->page3_data;
  ipr_init_dump_entry_hdr(& driver_dump->ioa_type_entry.hdr);
  driver_dump->ioa_type_entry.hdr.len = 8U;
  driver_dump->ioa_type_entry.hdr.data_type = 1112100417U;
  driver_dump->ioa_type_entry.hdr.id = 1415139397U;
  driver_dump->ioa_type_entry.type = (u32 )ioa_cfg->type;
  driver_dump->ioa_type_entry.fw_version = (u32 )(((((int )ucode_vpd->major_release << 24) | ((int )ucode_vpd->card_type << 16)) | ((int )ucode_vpd->minor_release[0] << 8)) | (int )ucode_vpd->minor_release[1]);
  driver_dump->hdr.num_entries = driver_dump->hdr.num_entries + 1U;
  return;
}
}
static void ipr_dump_version_data(struct ipr_ioa_cfg *ioa_cfg , struct ipr_driver_dump *driver_dump )
{
  {
  ipr_init_dump_entry_hdr(& driver_dump->version_entry.hdr);
  driver_dump->version_entry.hdr.len = 8U;
  driver_dump->version_entry.hdr.data_type = 1095975753U;
  driver_dump->version_entry.hdr.id = 1146246738U;
  strcpy((char *)(& driver_dump->version_entry.version), "2.6.1");
  driver_dump->hdr.num_entries = driver_dump->hdr.num_entries + 1U;
  return;
}
}
static void ipr_dump_trace_data(struct ipr_ioa_cfg *ioa_cfg , struct ipr_driver_dump *driver_dump )
{
  {
  ipr_init_dump_entry_hdr(& driver_dump->trace_entry.hdr);
  driver_dump->trace_entry.hdr.len = 4096U;
  driver_dump->trace_entry.hdr.data_type = 1112100417U;
  driver_dump->trace_entry.hdr.id = 1414676803U;
  memcpy((void *)(& driver_dump->trace_entry.trace), (void const *)ioa_cfg->trace,
           4096UL);
  driver_dump->hdr.num_entries = driver_dump->hdr.num_entries + 1U;
  return;
}
}
static void ipr_dump_location_data(struct ipr_ioa_cfg *ioa_cfg , struct ipr_driver_dump *driver_dump )
{
  char const *tmp ;
  {
  ipr_init_dump_entry_hdr(& driver_dump->location_entry.hdr);
  driver_dump->location_entry.hdr.len = 20U;
  driver_dump->location_entry.hdr.data_type = 1095975753U;
  driver_dump->location_entry.hdr.id = 1280262977U;
  tmp = dev_name((struct device const *)(& (ioa_cfg->pdev)->dev));
  strcpy((char *)(& driver_dump->location_entry.location), tmp);
  driver_dump->hdr.num_entries = driver_dump->hdr.num_entries + 1U;
  return;
}
}
static void ipr_get_ioa_dump(struct ipr_ioa_cfg *ioa_cfg , struct ipr_dump *dump )
{
  unsigned long start_addr ;
  unsigned long sdt_word ;
  unsigned long lock_flags ;
  struct ipr_driver_dump *driver_dump ;
  struct ipr_ioa_dump *ioa_dump ;
  u32 num_entries ;
  u32 max_num_entries ;
  u32 start_off ;
  u32 end_off ;
  u32 max_dump_size ;
  u32 bytes_to_copy ;
  u32 bytes_copied ;
  u32 rc ;
  struct ipr_sdt *sdt ;
  int valid ;
  int i ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  lock_flags = 0UL;
  driver_dump = & dump->driver_dump;
  ioa_dump = & dump->ioa_dump;
  valid = 1;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_get_ioa_dump");
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )ioa_cfg->sdt_state != 3U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    ssleep(4U);
    ldv_spin_lock();
  } else {
  }
  tmp = readl((void const volatile *)ioa_cfg->ioa_mailbox);
  start_addr = (unsigned long )tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    tmp___0 = ipr_sdt_is_fmt2((u32 )start_addr);
    if (tmp___0 == 0) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Invalid dump table format: %lx\n",
              start_addr);
      spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
      return;
    } else {
    }
  } else {
  }
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Dump of IOA initiated\n");
  driver_dump->hdr.eye_catcher = 3319063538U;
  driver_dump->hdr.len = 4272U;
  driver_dump->hdr.num_entries = 1U;
  driver_dump->hdr.first_entry_offset = 28U;
  driver_dump->hdr.status = 0U;
  driver_dump->hdr.os = 1280202072U;
  driver_dump->hdr.driver_name = 1230000690U;
  ipr_dump_version_data(ioa_cfg, driver_dump);
  ipr_dump_location_data(ioa_cfg, driver_dump);
  ipr_dump_ioa_type_data(ioa_cfg, driver_dump);
  ipr_dump_trace_data(ioa_cfg, driver_dump);
  driver_dump->hdr.len = driver_dump->hdr.len + 28U;
  ipr_init_dump_entry_hdr(& ioa_dump->hdr);
  ioa_dump->hdr.len = 0U;
  ioa_dump->hdr.data_type = 1112100417U;
  ioa_dump->hdr.id = 1229930801U;
  sdt = & ioa_dump->sdt;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    max_num_entries = 4095U;
    max_dump_size = 83886080U;
  } else {
    max_num_entries = 511U;
    max_dump_size = 4194304U;
  }
  bytes_to_copy = (u32 )((unsigned long )max_num_entries + 1UL) * 16U;
  tmp___1 = ipr_get_ldump_data_section(ioa_cfg, (u32 )start_addr, (__be32 *)sdt, bytes_to_copy / 4U);
  rc = (u32 )tmp___1;
  if (rc != 0U) {
    goto _L;
  } else {
    tmp___3 = __fswab32(sdt->hdr.state);
    if (tmp___3 != 3302286323U) {
      tmp___4 = __fswab32(sdt->hdr.state);
      if (tmp___4 != 3302286322U) {
        _L:
        tmp___2 = __fswab32(sdt->hdr.state);
        dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Dump of IOA failed. Dump table not valid: %d, %X.\n",
                rc, tmp___2);
        driver_dump->hdr.status = 4294967295U;
        ioa_cfg->sdt_state = 5;
        spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
        return;
      } else {
      }
    } else {
    }
  }
  tmp___5 = __fswab32(sdt->hdr.num_entries_used);
  num_entries = tmp___5;
  if (num_entries > max_num_entries) {
    num_entries = max_num_entries;
  } else {
  }
  dump->driver_dump.hdr.len = dump->driver_dump.hdr.len + 16U;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    dump->driver_dump.hdr.len = dump->driver_dump.hdr.len + num_entries * 16U;
  } else {
    dump->driver_dump.hdr.len = dump->driver_dump.hdr.len + max_num_entries * 16U;
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  i = 0;
  goto ldv_45902;
  ldv_45901: ;
  if (ioa_dump->hdr.len > max_dump_size) {
    driver_dump->hdr.status = 2U;
    goto ldv_45899;
  } else {
  }
  if (((int )sdt->entry[i].flags & 32) != 0) {
    tmp___6 = __fswab32(sdt->entry[i].start_token);
    sdt_word = (unsigned long )tmp___6;
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      tmp___7 = __fswab32(sdt->entry[i].end_token);
      bytes_to_copy = tmp___7;
    } else {
      start_off = (u32 )sdt_word & 268435455U;
      tmp___8 = __fswab32(sdt->entry[i].end_token);
      end_off = tmp___8;
      tmp___9 = ipr_sdt_is_fmt2((u32 )sdt_word);
      if (tmp___9 != 0 && sdt_word != 0UL) {
        bytes_to_copy = end_off - start_off;
      } else {
        valid = 0;
      }
    }
    if (valid != 0) {
      if (bytes_to_copy > max_dump_size) {
        sdt->entry[i].flags = (unsigned int )sdt->entry[i].flags & 223U;
        goto ldv_45900;
      } else {
      }
      tmp___10 = ipr_sdt_copy(ioa_cfg, sdt_word, bytes_to_copy);
      bytes_copied = (u32 )tmp___10;
      ioa_dump->hdr.len = ioa_dump->hdr.len + bytes_copied;
      if (bytes_copied != bytes_to_copy) {
        driver_dump->hdr.status = 2U;
        goto ldv_45899;
      } else {
      }
    } else {
    }
  } else {
  }
  ldv_45900:
  i = i + 1;
  ldv_45902: ;
  if ((u32 )i < num_entries) {
    goto ldv_45901;
  } else {
  }
  ldv_45899:
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Dump of IOA completed.\n");
  driver_dump->hdr.len = driver_dump->hdr.len + ioa_dump->hdr.len;
  __asm__ volatile ("sfence": : : "memory");
  ioa_cfg->sdt_state = 5;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_get_ioa_dump");
  } else {
  }
  return;
}
}
static void ipr_release_dump(struct kref *kref )
{
  struct ipr_dump *dump ;
  struct kref const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int i ;
  {
  __mptr = (struct kref const *)kref;
  dump = (struct ipr_dump *)__mptr;
  ioa_cfg = dump->ioa_cfg;
  lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_release_dump");
  } else {
  }
  ldv_spin_lock();
  ioa_cfg->dump = (struct ipr_dump *)0;
  ioa_cfg->sdt_state = 0;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  i = 0;
  goto ldv_45914;
  ldv_45913:
  free_pages((unsigned long )*(dump->ioa_dump.ioa_data + (unsigned long )i), 0U);
  i = i + 1;
  ldv_45914: ;
  if ((u32 )i < dump->ioa_dump.next_page_index) {
    goto ldv_45913;
  } else {
  }
  vfree((void const *)dump->ioa_dump.ioa_data);
  kfree((void const *)dump);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_release_dump");
  } else {
  }
  return;
}
}
static void ipr_worker_thread(struct work_struct *work )
{
  unsigned long lock_flags ;
  struct ipr_resource_entry *res ;
  struct scsi_device *sdev ;
  struct ipr_dump *dump ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct work_struct const *__mptr ;
  u8 bus ;
  u8 target ;
  u8 lun ;
  int did_work ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  {
  __mptr = (struct work_struct const *)work;
  ioa_cfg = (struct ipr_ioa_cfg *)__mptr + 0xffffffffffffe900UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_worker_thread");
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )ioa_cfg->sdt_state == 3U) {
    dump = ioa_cfg->dump;
    if ((unsigned long )dump == (unsigned long )((struct ipr_dump *)0)) {
      spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
      return;
    } else {
    }
    kref_get(& dump->kref);
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    ipr_get_ioa_dump(ioa_cfg, dump);
    kref_put(& dump->kref, & ipr_release_dump);
    ldv_spin_lock();
    if ((unsigned int )ioa_cfg->sdt_state == 5U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
      ipr_initiate_ioa_reset(ioa_cfg, 256);
    } else {
    }
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return;
  } else {
  }
  restart: ;
  ldv_45939:
  did_work = 0;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  goto ldv_45938;
  ldv_45937: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U && (unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0)) {
    did_work = 1;
    sdev = res->sdev;
    tmp = scsi_device_get(sdev);
    if (tmp == 0) {
      if ((unsigned int )*((unsigned char *)res + 0UL) == 0U) {
        list_move_tail(& res->queue, & ioa_cfg->free_res_q);
      } else {
        res->del_from_ml = 0U;
      }
      spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
      scsi_remove_device(sdev);
      scsi_device_put(sdev);
      ldv_spin_lock();
    } else {
    }
    goto ldv_45936;
  } else {
  }
  __mptr___1 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___1 + 0xffffffffffffff80UL;
  ldv_45938: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_45937;
  } else {
  }
  ldv_45936: ;
  if (did_work != 0) {
    goto ldv_45939;
  } else {
  }
  __mptr___2 = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr___2 + 0xffffffffffffff80UL;
  goto ldv_45946;
  ldv_45945: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    bus = (u8 )res->bus;
    target = (u8 )res->target;
    lun = (u8 )res->lun;
    res->add_to_ml = 0U;
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    scsi_add_device(ioa_cfg->host, (uint )bus, (uint )target, (u64 )lun);
    ldv_spin_lock();
    goto restart;
  } else {
  }
  __mptr___3 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___3 + 0xffffffffffffff80UL;
  ldv_45946: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_45945;
  } else {
  }
  ioa_cfg->scan_done = 1U;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  kobject_uevent(& (ioa_cfg->host)->shost_dev.kobj, 2);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_worker_thread");
  } else {
  }
  return;
}
}
static ssize_t ipr_read_trace(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                              char *buf , loff_t off , size_t count )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct Scsi_Host *shost ;
  struct device const *__mptr___0 ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  ssize_t ret ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr___0 + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  ret = memory_read_from_buffer((void *)buf, count, & off, (void const *)ioa_cfg->trace,
                                4096UL);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (ret);
}
}
static struct bin_attribute ipr_trace_attr = {{"trace", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & ipr_read_trace,
    0, 0};
static ssize_t ipr_show_fw_version(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_inquiry_page3 *ucode_vpd ;
  unsigned long lock_flags ;
  int len ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  ucode_vpd = & (ioa_cfg->vpd_cbs)->page3_data;
  lock_flags = 0UL;
  ldv_spin_lock();
  len = snprintf(buf, 4096UL, "%02X%02X%02X%02X\n", (int )ucode_vpd->major_release,
                 (int )ucode_vpd->card_type, (int )ucode_vpd->minor_release[0], (int )ucode_vpd->minor_release[1]);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return ((ssize_t )len);
}
}
static struct device_attribute ipr_fw_version_attr = {{"fw_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_fw_version, 0};
static ssize_t ipr_show_log_level(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int len ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  len = snprintf(buf, 4096UL, "%d\n", (int )ioa_cfg->log_level);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return ((ssize_t )len);
}
}
static ssize_t ipr_store_log_level(struct device *dev , struct device_attribute *attr ,
                                   char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  unsigned long tmp ;
  size_t tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  tmp = simple_strtoul(buf, (char **)0, 10U);
  ioa_cfg->log_level = (u8 )tmp;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  tmp___0 = strlen(buf);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute ipr_log_level_attr = {{"log_level", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_log_level, & ipr_store_log_level};
static ssize_t ipr_store_diagnostics(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  rc = (int )count;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  ldv_spin_lock();
  goto ldv_46023;
  ldv_46022:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                3484, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46014;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46020:
  tmp___1 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp___1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46019;
  } else {
  }
  schedule();
  goto ldv_46020;
  ldv_46019:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46014:
  ldv_spin_lock();
  ldv_46023: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_46022;
  } else {
  }
  ioa_cfg->errors_logged = 0U;
  ipr_initiate_ioa_reset(ioa_cfg, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                  3493, 0);
    if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
      goto ldv_46025;
    } else {
    }
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    ldv_46031:
    tmp___2 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait___0, 2);
    __int___0 = tmp___2;
    if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
      goto ldv_46030;
    } else {
    }
    schedule();
    goto ldv_46031;
    ldv_46030:
    finish_wait(& ioa_cfg->reset_wait_q, & __wait___0);
    ldv_46025:
    msleep(1000U);
  } else {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return (-5L);
  }
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U || ioa_cfg->errors_logged != 0U) {
    rc = -5;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return ((ssize_t )rc);
}
}
static struct device_attribute ipr_diagnostics_attr = {{"run_diagnostics", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0, & ipr_store_diagnostics};
static ssize_t ipr_show_adapter_state(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int len ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    len = snprintf(buf, 4096UL, "offline\n");
  } else {
    len = snprintf(buf, 4096UL, "online\n");
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return ((ssize_t )len);
}
}
static ssize_t ipr_store_adapter_state(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int result ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  result = (int )count;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    tmp___1 = strncmp(buf, "online", 6UL);
    if (tmp___1 == 0) {
      i = 0;
      goto ldv_46059;
      ldv_46058:
      spin_lock(& ioa_cfg->hrrq[i]._lock);
      ioa_cfg->hrrq[i].ioa_is_dead = 0U;
      spin_unlock(& ioa_cfg->hrrq[i]._lock);
      i = i + 1;
      ldv_46059: ;
      if ((u32 )i < ioa_cfg->hrrq_num) {
        goto ldv_46058;
      } else {
      }
      __asm__ volatile ("sfence": : : "memory");
      ioa_cfg->reset_retries = 0U;
      ioa_cfg->in_ioa_bringdown = 0U;
      ipr_initiate_ioa_reset(ioa_cfg, 256);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                3580, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46061;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46067:
  tmp___2 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp___2;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46066;
  } else {
  }
  schedule();
  goto ldv_46067;
  ldv_46066:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46061: ;
  return ((ssize_t )result);
}
}
static struct device_attribute ipr_ioa_state_attr = {{"online_state", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_adapter_state, & ipr_store_adapter_state};
static ssize_t ipr_store_reset_adapter(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int result ;
  bool tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  result = (int )count;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    ipr_initiate_ioa_reset(ioa_cfg, 0);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                3621, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46082;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46088:
  tmp___1 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp___1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46087;
  } else {
  }
  schedule();
  goto ldv_46088;
  ldv_46087:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46082: ;
  return ((ssize_t )result);
}
}
static struct device_attribute ipr_ioa_reset_attr = {{"reset_host", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0, & ipr_store_reset_adapter};
static int ipr_iopoll(struct blk_iopoll *iop , int budget ) ;
static ssize_t ipr_show_iopoll_weight(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int len ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  len = snprintf(buf, 4096UL, "%d\n", ioa_cfg->iopoll_weight);
  spin_unlock_irqrestore(shost->host_lock, lock_flags);
  return ((ssize_t )len);
}
}
static ssize_t ipr_store_iopoll_weight(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long user_iopoll_weight ;
  unsigned long lock_flags ;
  int i ;
  int tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "blk-iopoll not supported on this adapter\n");
    return (-22L);
  } else {
  }
  tmp = kstrtoul(buf, 10U, & user_iopoll_weight);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if (user_iopoll_weight > 256UL) {
    _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Invalid blk-iopoll weight. It must be less than 256\n");
    return (-22L);
  } else {
  }
  if ((unsigned long )ioa_cfg->iopoll_weight == user_iopoll_weight) {
    _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Current blk-iopoll weight has the same weight\n");
    tmp___0 = strlen(buf);
    return ((ssize_t )tmp___0);
  } else {
  }
  if ((ioa_cfg->iopoll_weight != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) && ioa_cfg->nvectors > 1U) {
    i = 1;
    goto ldv_46119;
    ldv_46118:
    blk_iopoll_disable(& ioa_cfg->hrrq[i].iopoll);
    i = i + 1;
    ldv_46119: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_46118;
    } else {
    }
  } else {
  }
  ldv_spin_lock();
  ioa_cfg->iopoll_weight = (u32 )user_iopoll_weight;
  if ((ioa_cfg->iopoll_weight != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) && ioa_cfg->nvectors > 1U) {
    i = 1;
    goto ldv_46122;
    ldv_46121:
    blk_iopoll_init(& ioa_cfg->hrrq[i].iopoll, (int )ioa_cfg->iopoll_weight, & ipr_iopoll);
    blk_iopoll_enable(& ioa_cfg->hrrq[i].iopoll);
    i = i + 1;
    ldv_46122: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_46121;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(shost->host_lock, lock_flags);
  tmp___1 = strlen(buf);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute ipr_iopoll_weight_attr = {{"iopoll_weight", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_iopoll_weight, & ipr_store_iopoll_weight};
static struct ipr_sglist *ipr_alloc_ucode_buffer(int buf_len )
{
  int sg_size ;
  int order ;
  int bsize_elem ;
  int num_elem ;
  int i ;
  int j ;
  struct ipr_sglist *sglist ;
  struct scatterlist *scatterlist ;
  struct page *page ;
  void *tmp ;
  struct page *tmp___0 ;
  {
  sg_size = buf_len / 63;
  order = __get_order((unsigned long )sg_size);
  bsize_elem = (int )(4096U << order);
  if (buf_len % bsize_elem != 0) {
    num_elem = buf_len / bsize_elem + 1;
  } else {
    num_elem = buf_len / bsize_elem;
  }
  tmp = kzalloc((unsigned long )(num_elem + -1) * 40UL + 56UL, 208U);
  sglist = (struct ipr_sglist *)tmp;
  if ((unsigned long )sglist == (unsigned long )((struct ipr_sglist *)0)) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_alloc_ucode_buffer", 3759);
    } else {
    }
    return ((struct ipr_sglist *)0);
  } else {
  }
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  sg_init_table(scatterlist, (unsigned int )num_elem);
  sglist->order = (u32 )order;
  sglist->num_sg = (u32 )num_elem;
  i = 0;
  goto ldv_46142;
  ldv_46141:
  page = alloc_pages(208U, (unsigned int )order);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_alloc_ucode_buffer", 3773);
    } else {
    }
    j = i + -1;
    goto ldv_46139;
    ldv_46138:
    tmp___0 = sg_page(scatterlist + (unsigned long )j);
    __free_pages(tmp___0, (unsigned int )order);
    j = j - 1;
    ldv_46139: ;
    if (j >= 0) {
      goto ldv_46138;
    } else {
    }
    kfree((void const *)sglist);
    return ((struct ipr_sglist *)0);
  } else {
  }
  sg_set_page(scatterlist + (unsigned long )i, page, 0U, 0U);
  i = i + 1;
  ldv_46142: ;
  if (i < num_elem) {
    goto ldv_46141;
  } else {
  }
  return (sglist);
}
}
static void ipr_free_ucode_buffer(struct ipr_sglist *sglist )
{
  int i ;
  struct page *tmp ;
  {
  i = 0;
  goto ldv_46149;
  ldv_46148:
  tmp = sg_page((struct scatterlist *)(& sglist->scatterlist) + (unsigned long )i);
  __free_pages(tmp, sglist->order);
  i = i + 1;
  ldv_46149: ;
  if ((u32 )i < sglist->num_sg) {
    goto ldv_46148;
  } else {
  }
  kfree((void const *)sglist);
  return;
}
}
static int ipr_copy_ucode_buffer(struct ipr_sglist *sglist , u8 *buffer , u32 len )
{
  int bsize_elem ;
  int i ;
  int result ;
  struct scatterlist *scatterlist ;
  void *kaddr ;
  struct page *page ;
  struct page *tmp ;
  struct page *page___0 ;
  struct page *tmp___0 ;
  {
  result = 0;
  bsize_elem = (int )(4096U << (int )sglist->order);
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  i = 0;
  goto ldv_46164;
  ldv_46163:
  tmp = sg_page(scatterlist + (unsigned long )i);
  page = tmp;
  kaddr = kmap(page);
  memcpy(kaddr, (void const *)buffer, (size_t )bsize_elem);
  kunmap(page);
  (scatterlist + (unsigned long )i)->length = (unsigned int )bsize_elem;
  if (result != 0) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_copy_ucode_buffer", 3842);
    } else {
    }
    return (result);
  } else {
  }
  i = i + 1;
  buffer = buffer + (unsigned long )bsize_elem;
  ldv_46164: ;
  if ((u32 )i < len / (u32 )bsize_elem) {
    goto ldv_46163;
  } else {
  }
  if (len % (u32 )bsize_elem != 0U) {
    tmp___0 = sg_page(scatterlist + (unsigned long )i);
    page___0 = tmp___0;
    kaddr = kmap(page___0);
    memcpy(kaddr, (void const *)buffer, (size_t )(len % (u32 )bsize_elem));
    kunmap(page___0);
    (scatterlist + (unsigned long )i)->length = len % (u32 )bsize_elem;
  } else {
  }
  sglist->buffer_len = len;
  return (result);
}
}
static void ipr_build_ucode_ioadl64(struct ipr_cmnd *ipr_cmd , struct ipr_sglist *sglist )
{
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl64_desc *ioadl64 ;
  struct scatterlist *scatterlist ;
  int i ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u64 tmp___2 ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioadl64 = (struct ipr_ioadl64_desc *)(& ipr_cmd->i.ioadl64);
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  ipr_cmd->dma_use_sg = (unsigned short )sglist->num_dma_sg;
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  tmp = __fswab32(sglist->buffer_len);
  ioarcb->data_transfer_length = tmp;
  tmp___0 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 16U);
  ioarcb->ioadl_len = tmp___0;
  i = 0;
  goto ldv_46176;
  ldv_46175:
  (ioadl64 + (unsigned long )i)->flags = 104U;
  tmp___1 = __fswab32((scatterlist + (unsigned long )i)->dma_length);
  (ioadl64 + (unsigned long )i)->data_len = tmp___1;
  tmp___2 = __fswab64((scatterlist + (unsigned long )i)->dma_address);
  (ioadl64 + (unsigned long )i)->address = tmp___2;
  i = i + 1;
  ldv_46176: ;
  if ((int )ipr_cmd->dma_use_sg > i) {
    goto ldv_46175;
  } else {
  }
  (ioadl64 + ((unsigned long )i + 0xffffffffffffffffUL))->flags = (ioadl64 + ((unsigned long )i + 0xffffffffffffffffUL))->flags | 1U;
  return;
}
}
static void ipr_build_ucode_ioadl(struct ipr_cmnd *ipr_cmd , struct ipr_sglist *sglist )
{
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl_desc *ioadl ;
  struct scatterlist *scatterlist ;
  int i ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioadl = (struct ipr_ioadl_desc *)(& ipr_cmd->i.ioadl);
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  ipr_cmd->dma_use_sg = (unsigned short )sglist->num_dma_sg;
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  tmp = __fswab32(sglist->buffer_len);
  ioarcb->data_transfer_length = tmp;
  tmp___0 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 8U);
  ioarcb->ioadl_len = tmp___0;
  i = 0;
  goto ldv_46187;
  ldv_46186:
  tmp___1 = __fswab32((scatterlist + (unsigned long )i)->dma_length | 1744830464U);
  (ioadl + (unsigned long )i)->flags_and_data_len = tmp___1;
  tmp___2 = __fswab32((__u32 )(scatterlist + (unsigned long )i)->dma_address);
  (ioadl + (unsigned long )i)->address = tmp___2;
  i = i + 1;
  ldv_46187: ;
  if ((int )ipr_cmd->dma_use_sg > i) {
    goto ldv_46186;
  } else {
  }
  (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags_and_data_len = (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags_and_data_len | 1U;
  return;
}
}
static int ipr_update_ioa_ucode(struct ipr_ioa_cfg *ioa_cfg , struct ipr_sglist *sglist )
{
  unsigned long lock_flags ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  int tmp___0 ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___1 ;
  {
  ldv_spin_lock();
  goto ldv_46203;
  ldv_46202:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                3944, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46194;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46200:
  tmp = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46199;
  } else {
  }
  schedule();
  goto ldv_46200;
  ldv_46199:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46194:
  ldv_spin_lock();
  ldv_46203: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_46202;
  } else {
  }
  if ((unsigned long )ioa_cfg->ucode_sglist != (unsigned long )((struct ipr_sglist *)0)) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Microcode download already in progress\n");
    return (-5);
  } else {
  }
  tmp___0 = dma_map_sg_attrs(& (ioa_cfg->pdev)->dev, (struct scatterlist *)(& sglist->scatterlist),
                             (int )sglist->num_sg, 1, (struct dma_attrs *)0);
  sglist->num_dma_sg = (u32 )tmp___0;
  if (sglist->num_dma_sg == 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Failed to map microcode download buffer!\n");
    return (-5);
  } else {
  }
  ioa_cfg->ucode_sglist = sglist;
  ipr_initiate_ioa_reset(ioa_cfg, 0);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                3969, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46205;
  } else {
  }
  __ret___0 = 0L;
  INIT_LIST_HEAD(& __wait___0.task_list);
  __wait___0.flags = 0U;
  ldv_46211:
  tmp___1 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait___0, 2);
  __int___0 = tmp___1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46210;
  } else {
  }
  schedule();
  goto ldv_46211;
  ldv_46210:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait___0);
  ldv_46205:
  ldv_spin_lock();
  ioa_cfg->ucode_sglist = (struct ipr_sglist *)0;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (0);
}
}
static ssize_t ipr_store_update_fw(struct device *dev , struct device_attribute *attr ,
                                   char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_ucode_image_header *image_hdr ;
  struct firmware const *fw_entry ;
  struct ipr_sglist *sglist ;
  char fname[100U] ;
  char *src ;
  int len ;
  int result ;
  int dnld_size ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  len = snprintf((char *)(& fname), 99UL, "%s", buf);
  fname[len + -1] = 0;
  tmp___1 = request_firmware(& fw_entry, (char const *)(& fname), & (ioa_cfg->pdev)->dev);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Firmware file %s not found\n",
            (char *)(& fname));
    return (-5L);
  } else {
  }
  image_hdr = (struct ipr_ucode_image_header *)fw_entry->data;
  tmp___2 = __fswab32(image_hdr->header_length);
  src = (char *)image_hdr + (unsigned long )tmp___2;
  tmp___3 = __fswab32(image_hdr->header_length);
  dnld_size = (int )((unsigned int )fw_entry->size - tmp___3);
  sglist = ipr_alloc_ucode_buffer(dnld_size);
  if ((unsigned long )sglist == (unsigned long )((struct ipr_sglist *)0)) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Microcode buffer allocation failed\n");
    release_firmware(fw_entry);
    return (-12L);
  } else {
  }
  result = ipr_copy_ucode_buffer(sglist, (u8 *)src, (u32 )dnld_size);
  if (result != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Microcode buffer copy to DMA buffer failed\n");
    goto out;
  } else {
  }
  printk("\016ipr: Updating microcode, please be patient.  This may take up to 30 minutes.\n");
  result = ipr_update_ioa_ucode(ioa_cfg, sglist);
  if (result == 0) {
    result = (int )count;
  } else {
  }
  out:
  ipr_free_ucode_buffer(sglist);
  release_firmware(fw_entry);
  return ((ssize_t )result);
}
}
static struct device_attribute ipr_update_fw_attr = {{"update_fw", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0, & ipr_store_update_fw};
static ssize_t ipr_show_fw_type(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int len ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  len = snprintf(buf, 4096UL, "%d\n", (int )ioa_cfg->sis64);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return ((ssize_t )len);
}
}
static struct device_attribute ipr_ioa_fw_type_attr = {{"fw_type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & ipr_show_fw_type,
    0};
static struct device_attribute *ipr_ioa_attrs[9U] =
  { & ipr_fw_version_attr, & ipr_log_level_attr, & ipr_diagnostics_attr, & ipr_ioa_state_attr,
        & ipr_ioa_reset_attr, & ipr_update_fw_attr, & ipr_ioa_fw_type_attr, & ipr_iopoll_weight_attr,
        (struct device_attribute *)0};
static ssize_t ipr_read_dump(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                             char *buf , loff_t off , size_t count )
{
  struct device *cdev ;
  struct kobject const *__mptr ;
  struct Scsi_Host *shost ;
  struct device const *__mptr___0 ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_dump *dump ;
  unsigned long lock_flags ;
  char *src ;
  int len ;
  int sdt_end ;
  size_t rc ;
  bool tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  {
  __mptr = (struct kobject const *)kobj;
  cdev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct device const *)cdev;
  shost = (struct Scsi_Host *)__mptr___0 + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  lock_flags = 0UL;
  rc = count;
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  ldv_spin_lock();
  dump = ioa_cfg->dump;
  if ((unsigned int )ioa_cfg->sdt_state != 5U || (unsigned long )dump == (unsigned long )((struct ipr_dump *)0)) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return (0L);
  } else {
  }
  kref_get(& dump->kref);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if ((loff_t )dump->driver_dump.hdr.len < off) {
    kref_put(& dump->kref, & ipr_release_dump);
    return (0L);
  } else {
  }
  if ((unsigned long long )off + (unsigned long long )count > (unsigned long long )dump->driver_dump.hdr.len) {
    count = (size_t )((loff_t )dump->driver_dump.hdr.len - off);
    rc = count;
  } else {
  }
  if (count != 0UL && (unsigned long long )off <= 4271ULL) {
    if ((unsigned long long )off + (unsigned long long )count > 4272ULL) {
      len = (int )(4272U - (unsigned int )off);
    } else {
      len = (int )count;
    }
    src = (char *)(& dump->driver_dump) + (unsigned long )off;
    memcpy((void *)buf, (void const *)src, (size_t )len);
    buf = buf + (unsigned long )len;
    off = (loff_t )len + off;
    count = count - (size_t )len;
  } else {
  }
  off = (loff_t )((unsigned long long )off - 4272ULL);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___1 = __fswab32(dump->ioa_dump.sdt.hdr.num_entries_used);
    sdt_end = (int )(tmp___1 * 16U + 44U);
  } else {
    sdt_end = 8220;
  }
  if (count != 0UL && (loff_t )sdt_end > off) {
    if ((unsigned long long )off + (unsigned long long )count > (unsigned long long )sdt_end) {
      len = (int )((unsigned int )sdt_end - (unsigned int )off);
    } else {
      len = (int )count;
    }
    src = (char *)(& dump->ioa_dump) + (unsigned long )off;
    memcpy((void *)buf, (void const *)src, (size_t )len);
    buf = buf + (unsigned long )len;
    off = (loff_t )len + off;
    count = count - (size_t )len;
  } else {
  }
  off = off - (loff_t )sdt_end;
  goto ldv_46268;
  ldv_46267: ;
  if (((((unsigned long long )off + (unsigned long long )count) ^ (unsigned long long )off) & 0xfffffffffffff000ULL) != 0ULL) {
    len = (int )((((unsigned int )off + 4095U) & 4294963200U) - (unsigned int )off);
  } else {
    len = (int )count;
  }
  src = (char *)*(dump->ioa_dump.ioa_data + ((unsigned long long )off >> 12));
  src = src + ((unsigned long long )off & 4095ULL);
  memcpy((void *)buf, (void const *)src, (size_t )len);
  buf = buf + (unsigned long )len;
  off = (loff_t )len + off;
  count = count - (size_t )len;
  ldv_46268: ;
  if (count != 0UL) {
    goto ldv_46267;
  } else {
  }
  kref_put(& dump->kref, & ipr_release_dump);
  return ((ssize_t )rc);
}
}
static int ipr_alloc_dump(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_dump *dump ;
  __be32 **ioa_data ;
  unsigned long lock_flags ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  lock_flags = 0UL;
  tmp = kzalloc(69880UL, 208U);
  dump = (struct ipr_dump *)tmp;
  if ((unsigned long )dump == (unsigned long )((struct ipr_dump *)0)) {
    printk("\vipr: Dump memory allocation failed\n");
    return (-12);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___0 = ldv_vmalloc_32(163848UL);
    ioa_data = (__be32 **)tmp___0;
  } else {
    tmp___1 = ldv_vmalloc_33(8200UL);
    ioa_data = (__be32 **)tmp___1;
  }
  if ((unsigned long )ioa_data == (unsigned long )((__be32 **)0U)) {
    printk("\vipr: Dump memory allocation failed\n");
    kfree((void const *)dump);
    return (-12);
  } else {
  }
  dump->ioa_dump.ioa_data = ioa_data;
  kref_init(& dump->kref);
  dump->ioa_cfg = ioa_cfg;
  ldv_spin_lock();
  if ((unsigned int )ioa_cfg->sdt_state != 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    vfree((void const *)dump->ioa_dump.ioa_data);
    kfree((void const *)dump);
    return (0);
  } else {
  }
  ioa_cfg->dump = dump;
  ioa_cfg->sdt_state = 1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    ioa_cfg->dump_taken = 1U;
    schedule_work(& ioa_cfg->work_q);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (0);
}
}
static int ipr_free_dump(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_dump *dump ;
  unsigned long lock_flags ;
  {
  lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_free_dump");
  } else {
  }
  ldv_spin_lock();
  dump = ioa_cfg->dump;
  if ((unsigned long )dump == (unsigned long )((struct ipr_dump *)0)) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return (0);
  } else {
  }
  ioa_cfg->dump = (struct ipr_dump *)0;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  kref_put(& dump->kref, & ipr_release_dump);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_free_dump");
  } else {
  }
  return (0);
}
}
static ssize_t ipr_write_dump(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                              char *buf , loff_t off , size_t count )
{
  struct device *cdev ;
  struct kobject const *__mptr ;
  struct Scsi_Host *shost ;
  struct device const *__mptr___0 ;
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  {
  __mptr = (struct kobject const *)kobj;
  cdev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct device const *)cdev;
  shost = (struct Scsi_Host *)__mptr___0 + 0xfffffffffffff6c0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  if ((int )((signed char )*buf) == 49) {
    rc = ipr_alloc_dump(ioa_cfg);
  } else
  if ((int )((signed char )*buf) == 48) {
    rc = ipr_free_dump(ioa_cfg);
  } else {
    return (-22L);
  }
  if (rc != 0) {
    return ((ssize_t )rc);
  } else {
    return ((ssize_t )count);
  }
}
}
static struct bin_attribute ipr_dump_attr = {{"dump", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, 0UL, 0, & ipr_read_dump,
    & ipr_write_dump, 0};
static int ipr_change_queue_depth(struct scsi_device *sdev , int qdepth )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  int tmp ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp = ipr_is_gata(res);
    if (tmp != 0) {
      if (qdepth > 1) {
        qdepth = 1;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  scsi_change_queue_depth(sdev, qdepth);
  return ((int )sdev->queue_depth);
}
}
static ssize_t ipr_show_adapter_handle(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  len = -6L;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp = snprintf(buf, 4096UL, "%08X\n", res->res_handle);
    len = (ssize_t )tmp;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static struct device_attribute ipr_adapter_handle_attr = {{"adapter_handle", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_adapter_handle, 0};
static ssize_t ipr_show_resource_path(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  char buffer[48U] ;
  char *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  len = -6L;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0) && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp = __ipr_format_res_path((u8 *)(& res->res_path), (char *)(& buffer), 48);
    tmp___0 = snprintf(buf, 4096UL, "%s\n", tmp);
    len = (ssize_t )tmp___0;
  } else
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp___1 = snprintf(buf, 4096UL, "%d:%d:%d:%d\n", (ioa_cfg->host)->host_no, res->bus,
                       res->target, res->lun);
    len = (ssize_t )tmp___1;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static struct device_attribute ipr_resource_path_attr = {{"resource_path", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_resource_path, 0};
static ssize_t ipr_show_device_id(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  len = -6L;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0) && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp = snprintf(buf, 4096UL, "0x%llx\n", res->dev_id);
    len = (ssize_t )tmp;
  } else
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp___0 = snprintf(buf, 4096UL, "0x%llx\n", res->lun_wwn);
    len = (ssize_t )tmp___0;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static struct device_attribute ipr_device_id_attr = {{"device_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_device_id, 0};
static ssize_t ipr_show_resource_type(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  len = -6L;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp = snprintf(buf, 4096UL, "%x\n", (int )res->type);
    len = (ssize_t )tmp;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static struct device_attribute ipr_resource_type_attr = {{"resource_type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_resource_type, 0};
static ssize_t ipr_show_raw_mode(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp = snprintf(buf, 4096UL, "%d\n", (int )res->raw_mode);
    len = (ssize_t )tmp;
  } else {
    len = -6L;
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static ssize_t ipr_store_raw_mode(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  ssize_t len ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe28UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  lock_flags = 0UL;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      tmp___1 = ipr_is_af_dasd_device(res);
      if (tmp___1 != 0) {
        tmp = simple_strtoul(buf, (char **)0, 10U);
        res->raw_mode = (unsigned char )tmp;
        tmp___0 = strlen(buf);
        len = (ssize_t )tmp___0;
        if ((unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0)) {
          sdev_prefix_printk("\016", (struct scsi_device const *)res->sdev, (char const *)0,
                             "raw mode is %s\n", (unsigned int )*((unsigned char *)res + 0UL) != 0U ? (char *)"enabled" : (char *)"disabled");
        } else {
        }
      } else {
        len = -22L;
      }
    } else {
      len = -22L;
    }
  } else {
    len = -6L;
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (len);
}
}
static struct device_attribute ipr_raw_mode_attr = {{"raw_mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipr_show_raw_mode, & ipr_store_raw_mode};
static struct device_attribute *ipr_dev_attrs[6U] = { & ipr_adapter_handle_attr, & ipr_resource_path_attr, & ipr_device_id_attr, & ipr_resource_type_attr,
        & ipr_raw_mode_attr, (struct device_attribute *)0};
static int ipr_biosparam(struct scsi_device *sdev , struct block_device *block_device ,
                         sector_t capacity , int *parm )
{
  int heads ;
  int sectors ;
  sector_t cylinders ;
  int _res ;
  {
  heads = 128;
  sectors = 32;
  cylinders = capacity;
  _res = (int )cylinders & 4095;
  cylinders = cylinders / 4096UL;
  *parm = heads;
  *(parm + 1UL) = sectors;
  *(parm + 2UL) = (int )cylinders;
  return (0);
}
}
static struct ipr_resource_entry *ipr_find_starget(struct scsi_target *starget )
{
  struct Scsi_Host *shost ;
  struct Scsi_Host *tmp ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = dev_to_shost(& starget->dev);
  shost = tmp;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46408;
  ldv_46407: ;
  if (res->bus == starget->channel && res->target == starget->id) {
    return (res);
  } else {
  }
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46408: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_46407;
  } else {
  }
  return ((struct ipr_resource_entry *)0);
}
}
static struct ata_port_info sata_port_info ;
static int ipr_target_alloc(struct scsi_target *starget )
{
  struct Scsi_Host *shost ;
  struct Scsi_Host *tmp ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_sata_port *sata_port ;
  struct ata_port *ap ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_to_shost(& starget->dev);
  shost = tmp;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  ldv_spin_lock();
  res = ipr_find_starget(starget);
  starget->hostdata = (void *)0;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp___1 = ipr_is_gata(res);
    if (tmp___1 != 0) {
      spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
      tmp___0 = kzalloc(40UL, 208U);
      sata_port = (struct ipr_sata_port *)tmp___0;
      if ((unsigned long )sata_port == (unsigned long )((struct ipr_sata_port *)0)) {
        return (-12);
      } else {
      }
      ap = ata_sas_port_alloc(& ioa_cfg->ata_host, & sata_port_info, shost);
      if ((unsigned long )ap != (unsigned long )((struct ata_port *)0)) {
        ldv_spin_lock();
        sata_port->ioa_cfg = ioa_cfg;
        sata_port->ap = ap;
        sata_port->res = res;
        res->sata_port = sata_port;
        ap->private_data = (void *)sata_port;
        starget->hostdata = (void *)sata_port;
      } else {
        kfree((void const *)sata_port);
        return (-12);
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (0);
}
}
static void ipr_target_destroy(struct scsi_target *starget )
{
  struct ipr_sata_port *sata_port ;
  struct Scsi_Host *shost ;
  struct Scsi_Host *tmp ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *tmp___0 ;
  {
  sata_port = (struct ipr_sata_port *)starget->hostdata;
  tmp = dev_to_shost(& starget->dev);
  shost = tmp;
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___0 = ipr_find_starget(starget);
    if ((unsigned long )tmp___0 == (unsigned long )((struct ipr_resource_entry *)0)) {
      if (starget->channel == 1U) {
        clear_bit((long )starget->id, (unsigned long volatile *)(& ioa_cfg->array_ids));
      } else
      if (starget->channel == 2U) {
        clear_bit((long )starget->id, (unsigned long volatile *)(& ioa_cfg->vset_ids));
      } else
      if (starget->channel == 0U) {
        clear_bit((long )starget->id, (unsigned long volatile *)(& ioa_cfg->target_ids));
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
    starget->hostdata = (void *)0;
    ata_sas_port_destroy(sata_port->ap);
    kfree((void const *)sata_port);
  } else {
  }
  return;
}
}
static struct ipr_resource_entry *ipr_find_sdev(struct scsi_device *sdev )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_46436;
  ldv_46435: ;
  if ((res->bus == sdev->channel && res->target == sdev->id) && (u64 )res->lun == sdev->lun) {
    return (res);
  } else {
  }
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_46436: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_46435;
  } else {
  }
  return ((struct ipr_resource_entry *)0);
}
}
static void ipr_slave_destroy(struct scsi_device *sdev )
{
  struct ipr_resource_entry *res ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  {
  lock_flags = 0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    if ((unsigned long )res->sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
      ((res->sata_port)->ap)->link.device[0].class = 10U;
    } else {
    }
    sdev->hostdata = (void *)0;
    res->sdev = (struct scsi_device *)0;
    res->sata_port = (struct ipr_sata_port *)0;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return;
}
}
static int ipr_slave_configure(struct scsi_device *sdev )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ata_port *ap ;
  unsigned long lock_flags ;
  char buffer[48U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  char *tmp___4 ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  ap = (struct ata_port *)0;
  lock_flags = 0UL;
  ldv_spin_lock();
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp = ipr_is_af_dasd_device(res);
    if (tmp != 0) {
      sdev->type = 12;
    } else {
    }
    tmp___0 = ipr_is_af_dasd_device(res);
    if (tmp___0 != 0) {
      sdev->scsi_level = 4;
      sdev->no_uld_attach = 1U;
    } else {
      tmp___1 = ipr_is_ioa_resource(res);
      if (tmp___1 != 0) {
        sdev->scsi_level = 4;
        sdev->no_uld_attach = 1U;
      } else {
      }
    }
    tmp___2 = ipr_is_vset_device(res);
    if (tmp___2 != 0) {
      sdev->scsi_level = 6;
      blk_queue_rq_timeout(sdev->request_queue, ipr_fastfail != 0U ? 7500U : 30000U);
      blk_queue_max_hw_sectors(sdev->request_queue, 512U);
    } else {
    }
    tmp___3 = ipr_is_gata(res);
    if (tmp___3 != 0 && (unsigned long )res->sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
      ap = (res->sata_port)->ap;
    } else {
    }
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    if ((unsigned long )ap != (unsigned long )((struct ata_port *)0)) {
      scsi_change_queue_depth(sdev, 1);
      ata_sas_slave_configure(sdev, ap);
    } else {
    }
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      tmp___4 = ipr_format_res_path(ioa_cfg, (u8 *)(& res->res_path), (char *)(& buffer),
                                    48);
      sdev_prefix_printk("\016", (struct scsi_device const *)sdev, (char const *)0,
                         "Resource path: %s\n", tmp___4);
    } else {
    }
    return (0);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (0);
}
}
static int ipr_ata_slave_alloc(struct scsi_device *sdev )
{
  struct ipr_sata_port *sata_port ;
  int rc ;
  {
  sata_port = (struct ipr_sata_port *)0;
  rc = -6;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ata_slave_alloc");
  } else {
  }
  if ((unsigned long )sdev->sdev_target != (unsigned long )((struct scsi_target *)0)) {
    sata_port = (struct ipr_sata_port *)(sdev->sdev_target)->hostdata;
  } else {
  }
  if ((unsigned long )sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
    rc = ata_sas_port_init(sata_port->ap);
    if (rc == 0) {
      rc = ata_sas_sync_probe(sata_port->ap);
    } else {
    }
  } else {
  }
  if (rc != 0) {
    ipr_slave_destroy(sdev);
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ata_slave_alloc");
  } else {
  }
  return (rc);
}
}
static int ipr_slave_alloc(struct scsi_device *sdev )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& (sdev->host)->hostdata);
  rc = -6;
  sdev->hostdata = (void *)0;
  ldv_spin_lock();
  res = ipr_find_sdev(sdev);
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    res->sdev = sdev;
    res->add_to_ml = 0U;
    res->in_erp = 0U;
    sdev->hostdata = (void *)res;
    tmp = ipr_is_naca_model(res);
    if (tmp == 0) {
      res->needs_sync_complete = 1U;
    } else {
    }
    rc = 0;
    tmp___1 = ipr_is_gata(res);
    if (tmp___1 != 0) {
      spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
      tmp___0 = ipr_ata_slave_alloc(sdev);
      return (tmp___0);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (rc);
}
}
static int ipr_match_lun(struct ipr_cmnd *ipr_cmd , void *device )
{
  {
  if ((unsigned long )ipr_cmd->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0) && (unsigned long )((void *)(ipr_cmd->scsi_cmd)->device) == (unsigned long )device) {
    return (1);
  } else {
  }
  return (0);
}
}
static int ipr_wait_for_ops(struct ipr_ioa_cfg *ioa_cfg , void *device , int (*match)(struct ipr_cmnd * ,
                                                                                      void * ) )
{
  struct ipr_cmnd *ipr_cmd ;
  int wait ;
  unsigned long flags ;
  struct ipr_hrr_queue *hrrq ;
  long timeout ;
  struct completion comp ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  unsigned long tmp___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  {
  timeout = ipr_fastfail != 0U ? 2500L : 7500L;
  init_completion(& comp);
  comp = comp;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_wait_for_ops");
  } else {
  }
  ldv_46504:
  wait = 0;
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_46492;
  ldv_46491:
  ldv_spin_lock();
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  goto ldv_46489;
  ldv_46488:
  tmp = (*match)(ipr_cmd, device);
  if (tmp != 0) {
    ipr_cmd->eh_comp = & comp;
    wait = wait + 1;
  } else {
  }
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  ldv_46489: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_46488;
  } else {
  }
  spin_unlock_irqrestore(hrrq->lock, flags);
  hrrq = hrrq + 1;
  ldv_46492: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_46491;
  } else {
  }
  if (wait != 0) {
    tmp___0 = wait_for_completion_timeout(& comp, (unsigned long )timeout);
    timeout = (long )tmp___0;
    if (timeout == 0L) {
      wait = 0;
      hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
      goto ldv_46502;
      ldv_46501:
      ldv_spin_lock();
      __mptr___1 = (struct list_head const *)hrrq->hrrq_pending_q.next;
      ipr_cmd = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
      goto ldv_46499;
      ldv_46498:
      tmp___1 = (*match)(ipr_cmd, device);
      if (tmp___1 != 0) {
        ipr_cmd->eh_comp = (struct completion *)0;
        wait = wait + 1;
      } else {
      }
      __mptr___2 = (struct list_head const *)ipr_cmd->queue.next;
      ipr_cmd = (struct ipr_cmnd *)__mptr___2 + 0xfffffffffffffac8UL;
      ldv_46499: ;
      if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
        goto ldv_46498;
      } else {
      }
      spin_unlock_irqrestore(hrrq->lock, flags);
      hrrq = hrrq + 1;
      ldv_46502: ;
      if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
        goto ldv_46501;
      } else {
      }
      if (wait != 0) {
        dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Timed out waiting for aborted commands\n");
      } else {
      }
      if (ipr_debug != 0U) {
        printk("\016ipr: Leaving %s\n", "ipr_wait_for_ops");
      } else {
      }
      return (wait != 0 ? 8195 : 8194);
    } else {
    }
  } else {
  }
  if (wait != 0) {
    goto ldv_46504;
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_wait_for_ops");
  } else {
  }
  return (8194);
}
}
static int ipr_eh_host_reset(struct scsi_cmnd *cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  int rc ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  lock_flags = 0UL;
  rc = 8194;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_eh_host_reset");
  } else {
  }
  ioa_cfg = (struct ipr_ioa_cfg *)(& ((cmd->device)->host)->hostdata);
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U && (unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    ipr_initiate_ioa_reset(ioa_cfg, 128);
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Adapter being reset as a result of error recovery.\n");
    if ((unsigned int )ioa_cfg->sdt_state == 1U) {
      ioa_cfg->sdt_state = 2;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                4996, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46513;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46519:
  tmp = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46518;
  } else {
  }
  schedule();
  goto ldv_46519;
  ldv_46518:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46513:
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_eh_host_reset", 5002);
    } else {
    }
    rc = 8195;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_eh_host_reset");
  } else {
  }
  return (rc);
}
}
static int ipr_device_reset(struct ipr_ioa_cfg *ioa_cfg , struct ipr_resource_entry *res )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_cmd_pkt *cmd_pkt ;
  struct ipr_ioarcb_ata_regs *regs ;
  u32 ioasc ;
  int tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_device_reset");
  } else {
  }
  ipr_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
  ioarcb = & ipr_cmd->ioarcb;
  cmd_pkt = & ioarcb->cmd_pkt;
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    regs = & ipr_cmd->i.ata_ioadl.regs;
    ioarcb->add_cmd_parms_offset = 32768U;
  } else {
    regs = & ioarcb->u.add_data.u.regs;
  }
  ioarcb->res_handle = res->res_handle;
  cmd_pkt->request_type = 1U;
  cmd_pkt->cdb[0] = 195U;
  tmp = ipr_is_gata(res);
  if (tmp != 0) {
    cmd_pkt->cdb[2] = 128U;
    ioarcb->add_cmd_parms_len = 256U;
    regs->flags = (u8 )((unsigned int )regs->flags | 32U);
  } else {
  }
  ipr_send_blocking_cmd(ipr_cmd, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  tmp___0 = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp___0;
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  tmp___1 = ipr_is_gata(res);
  if ((tmp___1 != 0 && (unsigned long )res->sata_port != (unsigned long )((struct ipr_sata_port *)0)) && ioasc != 268435457U) {
    if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
      memcpy((void *)(& (res->sata_port)->ioasa), (void const *)(& ipr_cmd->s.ioasa64.u.gata),
               12UL);
    } else {
      memcpy((void *)(& (res->sata_port)->ioasa), (void const *)(& ipr_cmd->s.ioasa.u.gata),
               12UL);
    }
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_device_reset");
  } else {
  }
  return (ioasc >> 24 != 0U ? -5 : 0);
}
}
static int ipr_sata_reset(struct ata_link *link , unsigned int *classes , unsigned long deadline )
{
  struct ipr_sata_port *sata_port ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  unsigned long lock_flags ;
  int rc ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  sata_port = (struct ipr_sata_port *)(link->ap)->private_data;
  ioa_cfg = sata_port->ioa_cfg;
  lock_flags = 0UL;
  rc = -6;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_sata_reset");
  } else {
  }
  ldv_spin_lock();
  goto ldv_46551;
  ldv_46550:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                5093, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46542;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46548:
  tmp = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46547;
  } else {
  }
  schedule();
  goto ldv_46548;
  ldv_46547:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46542:
  ldv_spin_lock();
  ldv_46551: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_46550;
  } else {
  }
  res = sata_port->res;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    rc = ipr_device_reset(ioa_cfg, res);
    *classes = (unsigned int )res->ata_class;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_sata_reset");
  } else {
  }
  return (rc);
}
}
static int __ipr_eh_dev_reset(struct scsi_cmnd *scsi_cmd )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ata_port *ap ;
  int rc ;
  struct ipr_hrr_queue *hrrq ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  rc = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "__ipr_eh_dev_reset");
  } else {
  }
  ioa_cfg = (struct ipr_ioa_cfg *)(& ((scsi_cmd->device)->host)->hostdata);
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  if ((unsigned long )res == (unsigned long )((struct ipr_resource_entry *)0)) {
    return (8195);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    return (8195);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    return (8195);
  } else {
  }
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_46571;
  ldv_46570:
  spin_lock(& hrrq->_lock);
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  goto ldv_46568;
  ldv_46567: ;
  if (ipr_cmd->ioarcb.res_handle == res->res_handle) {
    if ((unsigned long )ipr_cmd->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
      ipr_cmd->done = & ipr_scsi_eh_done;
    } else {
    }
    if ((unsigned long )ipr_cmd->qc != (unsigned long )((struct ata_queued_cmd *)0)) {
      ipr_cmd->done = & ipr_sata_eh_done;
    } else {
    }
    if ((unsigned long )ipr_cmd->qc != (unsigned long )((struct ata_queued_cmd *)0) && ((ipr_cmd->qc)->flags & 65536UL) == 0UL) {
      (ipr_cmd->qc)->err_mask = (ipr_cmd->qc)->err_mask | 4U;
      (ipr_cmd->qc)->flags = (ipr_cmd->qc)->flags | 65536UL;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  ldv_46568: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_46567;
  } else {
  }
  spin_unlock(& hrrq->_lock);
  hrrq = hrrq + 1;
  ldv_46571: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_46570;
  } else {
  }
  res->resetting_device = 1U;
  scmd_printk("\v", (struct scsi_cmnd const *)scsi_cmd, "Resetting device\n");
  tmp = ipr_is_gata(res);
  if (tmp != 0 && (unsigned long )res->sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
    ap = (res->sata_port)->ap;
    spin_unlock_irq(((scsi_cmd->device)->host)->host_lock);
    ata_std_error_handler(ap);
    spin_lock_irq(((scsi_cmd->device)->host)->host_lock);
    hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
    goto ldv_46581;
    ldv_46580:
    spin_lock(& hrrq->_lock);
    __mptr___1 = (struct list_head const *)hrrq->hrrq_pending_q.next;
    ipr_cmd = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
    goto ldv_46579;
    ldv_46578: ;
    if (ipr_cmd->ioarcb.res_handle == res->res_handle) {
      rc = -5;
      goto ldv_46577;
    } else {
    }
    __mptr___2 = (struct list_head const *)ipr_cmd->queue.next;
    ipr_cmd = (struct ipr_cmnd *)__mptr___2 + 0xfffffffffffffac8UL;
    ldv_46579: ;
    if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
      goto ldv_46578;
    } else {
    }
    ldv_46577:
    spin_unlock(& hrrq->_lock);
    hrrq = hrrq + 1;
    ldv_46581: ;
    if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
      goto ldv_46580;
    } else {
    }
  } else {
    rc = ipr_device_reset(ioa_cfg, res);
  }
  res->resetting_device = 0U;
  res->reset_occurred = 1U;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "__ipr_eh_dev_reset");
  } else {
  }
  return (rc != 0 ? 8195 : 8194);
}
}
static int ipr_eh_dev_reset(struct scsi_cmnd *cmd )
{
  int rc ;
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& ((cmd->device)->host)->hostdata);
  spin_lock_irq(((cmd->device)->host)->host_lock);
  rc = __ipr_eh_dev_reset(cmd);
  spin_unlock_irq(((cmd->device)->host)->host_lock);
  if (rc == 8194) {
    rc = ipr_wait_for_ops(ioa_cfg, (void *)cmd->device, & ipr_match_lun);
  } else {
  }
  return (rc);
}
}
static void ipr_bus_reset_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_bus_reset_done");
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
    res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
    goto ldv_46600;
    ldv_46599: ;
    if (res->res_handle == ipr_cmd->ioarcb.res_handle) {
      scsi_report_bus_reset(ioa_cfg->host, (int )res->bus);
      goto ldv_46598;
    } else {
    }
    __mptr___0 = (struct list_head const *)res->queue.next;
    res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_46600: ;
    if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
      goto ldv_46599;
    } else {
    }
    ldv_46598: ;
  } else {
  }
  if ((unsigned long )(ipr_cmd->sibling)->sibling != (unsigned long )((struct ipr_cmnd *)0)) {
    (ipr_cmd->sibling)->sibling = (struct ipr_cmnd *)0;
  } else {
    (*((ipr_cmd->sibling)->done))(ipr_cmd->sibling);
  }
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_bus_reset_done");
  } else {
  }
  return;
}
}
static void ipr_abort_timeout(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_cmnd *reset_cmd ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_cmd_pkt *cmd_pkt ;
  unsigned long lock_flags ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_abort_timeout");
  } else {
  }
  ldv_spin_lock();
  if (ipr_cmd->completion.done != 0U || (unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return;
  } else {
  }
  sdev_prefix_printk("\v", (struct scsi_device const *)ipr_cmd->u.sdev, (char const *)0,
                     "Abort timed out. Resetting bus.\n");
  reset_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
  ipr_cmd->sibling = reset_cmd;
  reset_cmd->sibling = ipr_cmd;
  reset_cmd->ioarcb.res_handle = ipr_cmd->ioarcb.res_handle;
  cmd_pkt = & reset_cmd->ioarcb.cmd_pkt;
  cmd_pkt->request_type = 1U;
  cmd_pkt->cdb[0] = 195U;
  cmd_pkt->cdb[2] = 144U;
  ipr_do_req(reset_cmd, & ipr_bus_reset_done, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_abort_timeout");
  } else {
  }
  return;
}
}
static int ipr_cancel_op(struct scsi_cmnd *scsi_cmd )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ipr_cmd_pkt *cmd_pkt ;
  u32 ioasc ;
  u32 int_reg ;
  int op_found ;
  struct ipr_hrr_queue *hrrq ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  op_found = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_cancel_op");
  } else {
  }
  ioa_cfg = (struct ipr_ioa_cfg *)(& ((scsi_cmd->device)->host)->hostdata);
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U || (unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    return (8195);
  } else {
  }
  if ((unsigned long )res == (unsigned long )((struct ipr_resource_entry *)0)) {
    return (8195);
  } else {
  }
  int_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  tmp = ipr_is_gscsi(res);
  if (tmp == 0) {
    return (8195);
  } else {
  }
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_46629;
  ldv_46628:
  spin_lock(& hrrq->_lock);
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  goto ldv_46627;
  ldv_46626: ;
  if ((unsigned long )ipr_cmd->scsi_cmd == (unsigned long )scsi_cmd) {
    ipr_cmd->done = & ipr_scsi_eh_done;
    op_found = 1;
    goto ldv_46625;
  } else {
  }
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  ldv_46627: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_46626;
  } else {
  }
  ldv_46625:
  spin_unlock(& hrrq->_lock);
  hrrq = hrrq + 1;
  ldv_46629: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_46628;
  } else {
  }
  if (op_found == 0) {
    return (8194);
  } else {
  }
  ipr_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
  ipr_cmd->ioarcb.res_handle = res->res_handle;
  cmd_pkt = & ipr_cmd->ioarcb.cmd_pkt;
  cmd_pkt->request_type = 1U;
  cmd_pkt->cdb[0] = 206U;
  ipr_cmd->u.sdev = scsi_cmd->device;
  scmd_printk("\v", (struct scsi_cmnd const *)scsi_cmd, "Aborting command: %02X\n",
              (int )*(scsi_cmd->cmnd));
  ipr_send_blocking_cmd(ipr_cmd, & ipr_abort_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  tmp___0 = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp___0;
  if (ioasc == 103350272U || ioasc == 37683200U) {
    ioasc = 0U;
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_cancel_op", 5361);
    } else {
    }
  } else {
  }
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  tmp___1 = ipr_is_naca_model(res);
  if (tmp___1 == 0) {
    res->needs_sync_complete = 1U;
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_cancel_op");
  } else {
  }
  return (ioasc >> 24 != 0U ? 8195 : 8194);
}
}
static int ipr_scan_finished(struct Scsi_Host *shost , unsigned long elapsed_time )
{
  unsigned long lock_flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  rc = 0;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U || (unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    rc = 1;
  } else {
  }
  if (elapsed_time / 250UL > (unsigned long )(ioa_cfg->transop_timeout * 2U)) {
    rc = 1;
  } else {
  }
  spin_unlock_irqrestore(shost->host_lock, lock_flags);
  return (rc);
}
}
static int ipr_eh_abort(struct scsi_cmnd *scsi_cmd )
{
  unsigned long flags ;
  int rc ;
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_eh_abort");
  } else {
  }
  ioa_cfg = (struct ipr_ioa_cfg *)(& ((scsi_cmd->device)->host)->hostdata);
  ldv_spin_lock();
  rc = ipr_cancel_op(scsi_cmd);
  spin_unlock_irqrestore(((scsi_cmd->device)->host)->host_lock, flags);
  if (rc == 8194) {
    rc = ipr_wait_for_ops(ioa_cfg, (void *)scsi_cmd->device, & ipr_match_lun);
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_eh_abort");
  } else {
  }
  return (rc);
}
}
static irqreturn_t ipr_handle_other_interrupt(struct ipr_ioa_cfg *ioa_cfg , u32 int_reg )
{
  irqreturn_t rc ;
  u32 int_mask_reg ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  rc = 1;
  int_mask_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg32);
  int_reg = ~ int_mask_reg & int_reg;
  if ((int_reg & 2617245722U) == 0U) {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      int_mask_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
      tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
      int_reg = tmp & ~ int_mask_reg;
      if ((int )int_reg < 0) {
        writel(2147483648U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg);
        tmp___0 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
        int_reg = tmp___0 & ~ int_mask_reg;
        list_del(& (ioa_cfg->reset_cmd)->queue);
        ldv_del_timer_34(& (ioa_cfg->reset_cmd)->timer);
        ipr_reset_ioa_job(ioa_cfg->reset_cmd);
        return (1);
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  if ((int )int_reg < 0) {
    writel(2147483648U, (void volatile *)ioa_cfg->regs.set_interrupt_mask_reg);
    int_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
    list_del(& (ioa_cfg->reset_cmd)->queue);
    ldv_del_timer_35(& (ioa_cfg->reset_cmd)->timer);
    ipr_reset_ioa_job(ioa_cfg->reset_cmd);
  } else
  if ((int_reg & 2U) == int_reg) {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      if (ipr_debug != 0U) {
        tmp___1 = __printk_ratelimit("ipr_handle_other_interrupt");
        if (tmp___1 != 0) {
          dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Spurious interrupt detected. 0x%08X\n",
                  int_reg);
        } else {
        }
      } else {
      }
      writel(2U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg32);
      int_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
      return (0);
    } else {
    }
  } else {
    if ((int_reg & 134217728U) != 0U) {
      ioa_cfg->ioa_unit_checked = 1U;
    } else
    if ((int_reg & 67108864U) != 0U) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "No Host RRQ. 0x%08X\n",
              int_reg);
    } else {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Permanent IOA failure. 0x%08X\n",
              int_reg);
    }
    if ((unsigned int )ioa_cfg->sdt_state == 1U) {
      ioa_cfg->sdt_state = 2;
    } else {
    }
    ipr_mask_and_clear_interrupts(ioa_cfg, 4294967295U);
    ipr_initiate_ioa_reset(ioa_cfg, 256);
  }
  return (rc);
}
}
static void ipr_isr_eh(struct ipr_ioa_cfg *ioa_cfg , char *msg , u16 number )
{
  {
  ioa_cfg->errors_logged = ioa_cfg->errors_logged + 1U;
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "%s %d\n", msg, (int )number);
  if ((unsigned int )ioa_cfg->sdt_state == 1U) {
    ioa_cfg->sdt_state = 2;
  } else {
  }
  ipr_initiate_ioa_reset(ioa_cfg, 256);
  return;
}
}
static int ipr_process_hrrq(struct ipr_hrr_queue *hrr_queue , int budget , struct list_head *doneq )
{
  u32 ioasc ;
  u16 cmd_index ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioa_cfg *ioa_cfg ;
  int num_hrrq ;
  __u32 tmp ;
  long tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  ioa_cfg = hrr_queue->ioa_cfg;
  num_hrrq = 0;
  if ((unsigned int )*((unsigned char *)hrr_queue + 176UL) == 0U) {
    return (0);
  } else {
  }
  goto ldv_46669;
  ldv_46668:
  tmp = __fswab32(*(hrr_queue->hrrq_curr));
  cmd_index = (u16 )(tmp >> 2);
  tmp___0 = ldv__builtin_expect((long )((u32 )cmd_index > hrr_queue->max_cmd_id || (u32 )cmd_index < hrr_queue->min_cmd_id),
                             0L);
  if (tmp___0 != 0L) {
    ipr_isr_eh(ioa_cfg, (char *)"Invalid response handle from IOA: ", (int )cmd_index);
    goto ldv_46667;
  } else {
  }
  ipr_cmd = *(ioa_cfg->ipr_cmnd_list + (unsigned long )cmd_index);
  tmp___1 = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp___1;
  ipr_trc_hook(ipr_cmd, 255, ioasc);
  list_move_tail(& ipr_cmd->queue, doneq);
  if ((unsigned long )hrr_queue->hrrq_curr < (unsigned long )hrr_queue->hrrq_end) {
    hrr_queue->hrrq_curr = hrr_queue->hrrq_curr + 1;
  } else {
    hrr_queue->hrrq_curr = hrr_queue->hrrq_start;
    hrr_queue->toggle_bit = (unsigned int )hrr_queue->toggle_bit ^ 1U;
  }
  num_hrrq = num_hrrq + 1;
  if (budget > 0 && num_hrrq >= budget) {
    goto ldv_46667;
  } else {
  }
  ldv_46669:
  tmp___2 = __fswab32(*(hrr_queue->hrrq_curr));
  if ((tmp___2 & 1U) == (unsigned int )hrr_queue->toggle_bit) {
    goto ldv_46668;
  } else {
  }
  ldv_46667: ;
  return (num_hrrq);
}
}
static int ipr_iopoll(struct blk_iopoll *iop , int budget )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_hrr_queue *hrrq ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_cmnd *temp ;
  unsigned long hrrq_flags ;
  int completed_ops ;
  struct list_head doneq ;
  struct blk_iopoll const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  doneq.next = & doneq;
  doneq.prev = & doneq;
  __mptr = (struct blk_iopoll const *)iop;
  hrrq = (struct ipr_hrr_queue *)__mptr + 0xffffffffffffff48UL;
  ioa_cfg = hrrq->ioa_cfg;
  ldv_spin_lock();
  completed_ops = ipr_process_hrrq(hrrq, budget, & doneq);
  if (completed_ops < budget) {
    blk_iopoll_complete(iop);
  } else {
  }
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  __mptr___0 = (struct list_head const *)doneq.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  __mptr___1 = (struct list_head const *)ipr_cmd->queue.next;
  temp = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
  goto ldv_46690;
  ldv_46689:
  list_del(& ipr_cmd->queue);
  ldv_del_timer_36(& ipr_cmd->timer);
  (*(ipr_cmd->fast_done))(ipr_cmd);
  ipr_cmd = temp;
  __mptr___2 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_cmnd *)__mptr___2 + 0xfffffffffffffac8UL;
  ldv_46690: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& doneq)) {
    goto ldv_46689;
  } else {
  }
  return (completed_ops);
}
}
static irqreturn_t ipr_isr(int irq , void *devp )
{
  struct ipr_hrr_queue *hrrq ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long hrrq_flags ;
  u32 int_reg ;
  int num_hrrq ;
  int irq_none ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_cmnd *temp ;
  irqreturn_t rc ;
  struct list_head doneq ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  hrrq = (struct ipr_hrr_queue *)devp;
  ioa_cfg = hrrq->ioa_cfg;
  hrrq_flags = 0UL;
  int_reg = 0U;
  num_hrrq = 0;
  irq_none = 0;
  rc = 0;
  doneq.next = & doneq;
  doneq.prev = & doneq;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U) {
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    return (0);
  } else {
  }
  ldv_46709:
  tmp___0 = ipr_process_hrrq(hrrq, -1, & doneq);
  if (tmp___0 != 0) {
    rc = 1;
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
      goto ldv_46706;
    } else {
    }
    num_hrrq = 0;
    ldv_46707:
    writel(2U, (void volatile *)ioa_cfg->regs.clr_interrupt_reg32);
    int_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
    if ((int_reg & 2U) != 0U) {
      tmp = num_hrrq;
      num_hrrq = num_hrrq + 1;
      if (tmp <= 2) {
        goto ldv_46707;
      } else {
        goto ldv_46708;
      }
    } else {
    }
    ldv_46708: ;
  } else
  if ((unsigned int )rc == 0U && irq_none == 0) {
    int_reg = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
    irq_none = irq_none + 1;
  } else
  if (num_hrrq == 3 && (int_reg & 2U) != 0U) {
    ipr_isr_eh(ioa_cfg, (char *)"Error clearing HRRQ: ", (int )((u16 )num_hrrq));
    rc = 1;
    goto ldv_46706;
  } else {
    goto ldv_46706;
  }
  goto ldv_46709;
  ldv_46706:
  tmp___1 = ldv__builtin_expect((unsigned int )rc == 0U, 0L);
  if (tmp___1 != 0L) {
    rc = ipr_handle_other_interrupt(ioa_cfg, int_reg);
  } else {
  }
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  __mptr = (struct list_head const *)doneq.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  temp = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  goto ldv_46717;
  ldv_46716:
  list_del(& ipr_cmd->queue);
  ldv_del_timer_37(& ipr_cmd->timer);
  (*(ipr_cmd->fast_done))(ipr_cmd);
  ipr_cmd = temp;
  __mptr___1 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
  ldv_46717: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& doneq)) {
    goto ldv_46716;
  } else {
  }
  return (rc);
}
}
static irqreturn_t ipr_isr_mhrrq(int irq , void *devp )
{
  struct ipr_hrr_queue *hrrq ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long hrrq_flags ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_cmnd *temp ;
  irqreturn_t rc ;
  struct list_head doneq ;
  int tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  hrrq = (struct ipr_hrr_queue *)devp;
  ioa_cfg = hrrq->ioa_cfg;
  hrrq_flags = 0UL;
  rc = 0;
  doneq.next = & doneq;
  doneq.prev = & doneq;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U) {
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    return (0);
  } else {
  }
  if ((ioa_cfg->iopoll_weight != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) && ioa_cfg->nvectors > 1U) {
    tmp___0 = __fswab32(*(hrrq->hrrq_curr));
    if ((tmp___0 & 1U) == (unsigned int )hrrq->toggle_bit) {
      tmp = blk_iopoll_sched_prep(& hrrq->iopoll);
      if (tmp == 0) {
        blk_iopoll_sched(& hrrq->iopoll);
      } else {
      }
      spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
      return (1);
    } else {
    }
  } else {
    tmp___2 = __fswab32(*(hrrq->hrrq_curr));
    if ((tmp___2 & 1U) == (unsigned int )hrrq->toggle_bit) {
      tmp___1 = ipr_process_hrrq(hrrq, -1, & doneq);
      if (tmp___1 != 0) {
        rc = 1;
      } else {
      }
    } else {
    }
  }
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  __mptr = (struct list_head const *)doneq.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  temp = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  goto ldv_46737;
  ldv_46736:
  list_del(& ipr_cmd->queue);
  ldv_del_timer_38(& ipr_cmd->timer);
  (*(ipr_cmd->fast_done))(ipr_cmd);
  ipr_cmd = temp;
  __mptr___1 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_cmnd *)__mptr___1 + 0xfffffffffffffac8UL;
  ldv_46737: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& doneq)) {
    goto ldv_46736;
  } else {
  }
  return (rc);
}
}
static int ipr_build_ioadl64(struct ipr_ioa_cfg *ioa_cfg , struct ipr_cmnd *ipr_cmd )
{
  int i ;
  int nseg ;
  struct scatterlist *sg ;
  u32 length ;
  u32 ioadl_flags ;
  struct scsi_cmnd *scsi_cmd ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl64_desc *ioadl64 ;
  int tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u64 tmp___4 ;
  {
  ioadl_flags = 0U;
  scsi_cmd = ipr_cmd->scsi_cmd;
  ioarcb = & ipr_cmd->ioarcb;
  ioadl64 = (struct ipr_ioadl64_desc *)(& ipr_cmd->i.ioadl64);
  length = scsi_bufflen(scsi_cmd);
  if (length == 0U) {
    return (0);
  } else {
  }
  nseg = scsi_dma_map(scsi_cmd);
  if (nseg < 0) {
    tmp = __printk_ratelimit("ipr_build_ioadl64");
    if (tmp != 0) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "scsi_dma_map failed!\n");
    } else {
    }
    return (-1);
  } else {
  }
  ipr_cmd->dma_use_sg = (unsigned short )nseg;
  tmp___0 = __fswab32(length);
  ioarcb->data_transfer_length = tmp___0;
  tmp___1 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 16U);
  ioarcb->ioadl_len = tmp___1;
  if ((unsigned int )scsi_cmd->sc_data_direction == 1U) {
    ioadl_flags = 1744830464U;
    ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  } else
  if ((unsigned int )scsi_cmd->sc_data_direction == 2U) {
    ioadl_flags = 1207959552U;
  } else {
  }
  i = 0;
  sg = scsi_sglist(scsi_cmd);
  goto ldv_46753;
  ldv_46752:
  tmp___2 = __fswab32(ioadl_flags);
  (ioadl64 + (unsigned long )i)->flags = tmp___2;
  tmp___3 = __fswab32(sg->dma_length);
  (ioadl64 + (unsigned long )i)->data_len = tmp___3;
  tmp___4 = __fswab64(sg->dma_address);
  (ioadl64 + (unsigned long )i)->address = tmp___4;
  i = i + 1;
  sg = sg_next(sg);
  ldv_46753: ;
  if ((int )ipr_cmd->dma_use_sg > i) {
    goto ldv_46752;
  } else {
  }
  (ioadl64 + ((unsigned long )i + 0xffffffffffffffffUL))->flags = (ioadl64 + ((unsigned long )i + 0xffffffffffffffffUL))->flags | 1U;
  return (0);
}
}
static int ipr_build_ioadl(struct ipr_ioa_cfg *ioa_cfg , struct ipr_cmnd *ipr_cmd )
{
  int i ;
  int nseg ;
  struct scatterlist *sg ;
  u32 length ;
  u32 ioadl_flags ;
  struct scsi_cmnd *scsi_cmd ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl_desc *ioadl ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  ioadl_flags = 0U;
  scsi_cmd = ipr_cmd->scsi_cmd;
  ioarcb = & ipr_cmd->ioarcb;
  ioadl = (struct ipr_ioadl_desc *)(& ipr_cmd->i.ioadl);
  length = scsi_bufflen(scsi_cmd);
  if (length == 0U) {
    return (0);
  } else {
  }
  nseg = scsi_dma_map(scsi_cmd);
  if (nseg < 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "scsi_dma_map failed!\n");
    return (-1);
  } else {
  }
  ipr_cmd->dma_use_sg = (unsigned short )nseg;
  if ((unsigned int )scsi_cmd->sc_data_direction == 1U) {
    ioadl_flags = 1744830464U;
    ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
    tmp = __fswab32(length);
    ioarcb->data_transfer_length = tmp;
    tmp___0 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 8U);
    ioarcb->ioadl_len = tmp___0;
  } else
  if ((unsigned int )scsi_cmd->sc_data_direction == 2U) {
    ioadl_flags = 1207959552U;
    tmp___1 = __fswab32(length);
    ioarcb->read_data_transfer_length = tmp___1;
    tmp___2 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 8U);
    ioarcb->read_ioadl_len = tmp___2;
  } else {
  }
  if ((unsigned int )ipr_cmd->dma_use_sg <= 5U) {
    ioadl = (struct ipr_ioadl_desc *)(& ioarcb->u.add_data.u.ioadl);
    tmp___3 = __fswab32((__u32 )ipr_cmd->dma_addr + 88U);
    ioarcb->write_ioadl_addr = tmp___3;
    ioarcb->read_ioadl_addr = ioarcb->write_ioadl_addr;
  } else {
  }
  i = 0;
  sg = scsi_sglist(scsi_cmd);
  goto ldv_46770;
  ldv_46769:
  tmp___4 = __fswab32(sg->dma_length | ioadl_flags);
  (ioadl + (unsigned long )i)->flags_and_data_len = tmp___4;
  tmp___5 = __fswab32((__u32 )sg->dma_address);
  (ioadl + (unsigned long )i)->address = tmp___5;
  i = i + 1;
  sg = sg_next(sg);
  ldv_46770: ;
  if ((int )ipr_cmd->dma_use_sg > i) {
    goto ldv_46769;
  } else {
  }
  (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags_and_data_len = (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags_and_data_len | 1U;
  return (0);
}
}
static void ipr_erp_done(struct ipr_cmnd *ipr_cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  struct ipr_resource_entry *res ;
  u32 ioasc ;
  __u32 tmp ;
  int tmp___0 ;
  {
  scsi_cmd = ipr_cmd->scsi_cmd;
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if (ioasc >> 24 != 0U) {
    scsi_cmd->result = scsi_cmd->result | 458752;
    scmd_printk("\v", (struct scsi_cmnd const *)scsi_cmd, "Request Sense failed with IOASC: 0x%08X\n",
                ioasc);
  } else {
    memcpy((void *)scsi_cmd->sense_buffer, (void const *)(& ipr_cmd->sense_buffer),
             96UL);
  }
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp___0 = ipr_is_naca_model(res);
    if (tmp___0 == 0) {
      res->needs_sync_complete = 1U;
    } else {
    }
    res->in_erp = 0U;
  } else {
  }
  scsi_dma_unmap(ipr_cmd->scsi_cmd);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  (*(scsi_cmd->scsi_done))(scsi_cmd);
  return;
}
}
static void ipr_reinit_ipr_cmnd_for_erp(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioasa *ioasa ;
  dma_addr_t dma_addr ;
  __u64 tmp ;
  __u32 tmp___0 ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioasa = & ipr_cmd->s.ioasa;
  dma_addr = ipr_cmd->dma_addr;
  memset((void *)(& ioarcb->cmd_pkt), 0, 24UL);
  ioarcb->data_transfer_length = 0U;
  ioarcb->read_data_transfer_length = 0U;
  ioarcb->ioadl_len = 0U;
  ioarcb->read_ioadl_len = 0U;
  ioasa->hdr.ioasc = 0U;
  ioasa->hdr.residual_data_len = 0U;
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    tmp = __fswab64(dma_addr + 128ULL);
    ioarcb->u.sis64_addr_data.data_ioadl_addr = tmp;
  } else {
    tmp___0 = __fswab32((__u32 )dma_addr + 128U);
    ioarcb->write_ioadl_addr = tmp___0;
    ioarcb->read_ioadl_addr = ioarcb->write_ioadl_addr;
  }
  return;
}
}
static void ipr_erp_request_sense(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_cmd_pkt *cmd_pkt ;
  u32 ioasc ;
  __u32 tmp ;
  {
  cmd_pkt = & ipr_cmd->ioarcb.cmd_pkt;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if (ioasc >> 24 != 0U) {
    ipr_erp_done(ipr_cmd);
    return;
  } else {
  }
  ipr_reinit_ipr_cmnd_for_erp(ipr_cmd);
  cmd_pkt->request_type = 0U;
  cmd_pkt->cdb[0] = 3U;
  cmd_pkt->cdb[4] = 96U;
  cmd_pkt->flags_hi = (u8 )((unsigned int )cmd_pkt->flags_hi | 16U);
  cmd_pkt->flags_hi = (u8 )((unsigned int )cmd_pkt->flags_hi | 32U);
  cmd_pkt->timeout = 2560U;
  ipr_init_ioadl(ipr_cmd, ipr_cmd->sense_buffer_dma, 96U, 1224736768);
  ipr_do_req(ipr_cmd, & ipr_erp_done, & ipr_timeout, 5000U);
  return;
}
}
static void ipr_erp_cancel_all(struct ipr_cmnd *ipr_cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  struct ipr_resource_entry *res ;
  struct ipr_cmd_pkt *cmd_pkt ;
  {
  scsi_cmd = ipr_cmd->scsi_cmd;
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  res->in_erp = 1U;
  ipr_reinit_ipr_cmnd_for_erp(ipr_cmd);
  if ((unsigned int )*((unsigned char *)scsi_cmd->device + 329UL) == 0U) {
    ipr_erp_request_sense(ipr_cmd);
    return;
  } else {
  }
  cmd_pkt = & ipr_cmd->ioarcb.cmd_pkt;
  cmd_pkt->request_type = 1U;
  cmd_pkt->cdb[0] = 206U;
  ipr_do_req(ipr_cmd, & ipr_erp_request_sense, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  return;
}
}
static void ipr_dump_ioasa(struct ipr_ioa_cfg *ioa_cfg , struct ipr_cmnd *ipr_cmd ,
                           struct ipr_resource_entry *res )
{
  int i ;
  u16 data_len ;
  u32 ioasc ;
  u32 fd_ioasc ;
  struct ipr_ioasa *ioasa ;
  __be32 *ioasa_data ;
  int error_index ;
  __u32 tmp ;
  __u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  {
  ioasa = & ipr_cmd->s.ioasa;
  ioasa_data = (__be32 *)ioasa;
  tmp = __fswab32(ioasa->hdr.ioasc);
  ioasc = tmp & 4294967040U;
  tmp___0 = __fswab32(ioasa->hdr.fd_ioasc);
  fd_ioasc = tmp___0 & 4294967040U;
  if (ioasc == 0U) {
    return;
  } else {
  }
  if ((unsigned int )ioa_cfg->log_level <= 1U) {
    return;
  } else {
  }
  if (ioasc == 103350272U && fd_ioasc != 0U) {
    tmp___1 = ipr_get_error(fd_ioasc);
    error_index = (int )tmp___1;
  } else {
    tmp___2 = ipr_get_error(ioasc);
    error_index = (int )tmp___2;
  }
  if ((unsigned int )ioa_cfg->log_level <= 3U) {
    if (ioasa->hdr.ilid != 0U) {
      return;
    } else {
    }
    tmp___3 = ipr_is_gscsi(res);
    if (tmp___3 == 0) {
      return;
    } else {
    }
    if ((int )ipr_error_table[error_index].log_ioasa == 0) {
      return;
    } else {
    }
  } else {
  }
  printk("\vipr: %d:%d:%d:%d: %s\n", (ioa_cfg->host)->host_no, res->bus, res->target,
         res->lun, ipr_error_table[error_index].error);
  tmp___4 = __fswab16((int )ioasa->hdr.ret_stat_len);
  data_len = tmp___4;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U && (unsigned int )data_len > 152U) {
    data_len = 152U;
  } else
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U && (unsigned int )data_len > 144U) {
    data_len = 144U;
  } else {
  }
  printk("\vipr: IOASA Dump:\n");
  i = 0;
  goto ldv_46808;
  ldv_46807:
  tmp___5 = __fswab32(*(ioasa_data + ((unsigned long )i + 3UL)));
  tmp___6 = __fswab32(*(ioasa_data + ((unsigned long )i + 2UL)));
  tmp___7 = __fswab32(*(ioasa_data + ((unsigned long )i + 1UL)));
  tmp___8 = __fswab32(*(ioasa_data + (unsigned long )i));
  printk("\vipr: %08X: %08X %08X %08X %08X\n", i * 4, tmp___8, tmp___7, tmp___6, tmp___5);
  i = i + 4;
  ldv_46808: ;
  if ((int )((unsigned int )data_len / 4U) > i) {
    goto ldv_46807;
  } else {
  }
  return;
}
}
static void ipr_gen_sense(struct ipr_cmnd *ipr_cmd )
{
  u32 failing_lba ;
  u8 *sense_buf ;
  struct ipr_resource_entry *res ;
  struct ipr_ioasa *ioasa ;
  u32 ioasc ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  {
  sense_buf = (ipr_cmd->scsi_cmd)->sense_buffer;
  res = (struct ipr_resource_entry *)((ipr_cmd->scsi_cmd)->device)->hostdata;
  ioasa = & ipr_cmd->s.ioasa;
  tmp = __fswab32(ioasa->hdr.ioasc);
  ioasc = tmp;
  memset((void *)sense_buf, 0, 96UL);
  if (ioasc > 268435455U) {
    return;
  } else {
  }
  (ipr_cmd->scsi_cmd)->result = 2;
  tmp___8 = ipr_is_vset_device(res);
  if ((tmp___8 != 0 && ioasc == 51448832U) && ioasa->u.vset.failing_lba_hi != 0U) {
    *sense_buf = 114U;
    *(sense_buf + 1UL) = (u8 )(ioasc >> 24);
    *(sense_buf + 2UL) = (u8 )((ioasc & 16711680U) >> 16);
    *(sense_buf + 3UL) = (u8 )((ioasc & 65280U) >> 8);
    *(sense_buf + 7UL) = 12U;
    *(sense_buf + 8UL) = 0U;
    *(sense_buf + 9UL) = 10U;
    *(sense_buf + 10UL) = 128U;
    tmp___0 = __fswab32(ioasa->u.vset.failing_lba_hi);
    failing_lba = tmp___0;
    *(sense_buf + 12UL) = (u8 )(failing_lba >> 24);
    *(sense_buf + 13UL) = (u8 )((failing_lba & 16711680U) >> 16);
    *(sense_buf + 14UL) = (u8 )((failing_lba & 65280U) >> 8);
    *(sense_buf + 15UL) = (u8 )failing_lba;
    tmp___1 = __fswab32(ioasa->u.vset.failing_lba_lo);
    failing_lba = tmp___1;
    *(sense_buf + 16UL) = (u8 )(failing_lba >> 24);
    *(sense_buf + 17UL) = (u8 )((failing_lba & 16711680U) >> 16);
    *(sense_buf + 18UL) = (u8 )((failing_lba & 65280U) >> 8);
    *(sense_buf + 19UL) = (u8 )failing_lba;
  } else {
    *sense_buf = 112U;
    *(sense_buf + 2UL) = (u8 )(ioasc >> 24);
    *(sense_buf + 12UL) = (u8 )((ioasc & 16711680U) >> 16);
    *(sense_buf + 13UL) = (u8 )((ioasc & 65280U) >> 8);
    if (ioasc >> 24 == 5U) {
      tmp___7 = __fswab32(ioasa->hdr.ioasc_specific);
      if ((tmp___7 & 8388608U) != 0U) {
        *(sense_buf + 7UL) = 10U;
        if ((ioasc & 16711680U) >> 16 == 36U) {
          *(sense_buf + 15UL) = 192U;
        } else {
          *(sense_buf + 15UL) = 128U;
        }
        tmp___2 = __fswab32(ioasa->hdr.ioasc_specific);
        *(sense_buf + 16UL) = (u8 )((tmp___2 & 65535U) >> 8);
        tmp___3 = __fswab32(ioasa->hdr.ioasc_specific);
        *(sense_buf + 17UL) = (u8 )tmp___3;
      } else {
        goto _L;
      }
    } else {
      _L:
      if (ioasc == 51448832U) {
        tmp___6 = ipr_is_vset_device(res);
        if (tmp___6 != 0) {
          tmp___4 = __fswab32(ioasa->u.vset.failing_lba_lo);
          failing_lba = tmp___4;
        } else {
          tmp___5 = __fswab32(ioasa->u.dasd.failing_lba);
          failing_lba = tmp___5;
        }
        *sense_buf = (u8 )((unsigned int )*sense_buf | 128U);
        *(sense_buf + 3UL) = (u8 )(failing_lba >> 24);
        *(sense_buf + 4UL) = (u8 )((failing_lba & 16711680U) >> 16);
        *(sense_buf + 5UL) = (u8 )((failing_lba & 65280U) >> 8);
        *(sense_buf + 6UL) = (u8 )failing_lba;
      } else {
      }
      *(sense_buf + 7UL) = 6U;
    }
  }
  return;
}
}
static int ipr_get_autosense(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioasa *ioasa ;
  struct ipr_ioasa64 *ioasa64 ;
  __u32 tmp ;
  u16 __min1 ;
  __u16 tmp___0 ;
  u16 __min2 ;
  u16 __min1___0 ;
  __u16 tmp___1 ;
  u16 __min2___0 ;
  {
  ioasa = & ipr_cmd->s.ioasa;
  ioasa64 = & ipr_cmd->s.ioasa64;
  tmp = __fswab32(ioasa->hdr.ioasc_specific);
  if ((tmp & 1073741824U) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    tmp___0 = __fswab16((int )ioasa64->auto_sense.auto_sense_len);
    __min1 = tmp___0;
    __min2 = 96U;
    memcpy((void *)(ipr_cmd->scsi_cmd)->sense_buffer, (void const *)(& ioasa64->auto_sense.data),
             (size_t )((int )__min1 < (int )__min2 ? __min1 : __min2));
  } else {
    tmp___1 = __fswab16((int )ioasa->auto_sense.auto_sense_len);
    __min1___0 = tmp___1;
    __min2___0 = 96U;
    memcpy((void *)(ipr_cmd->scsi_cmd)->sense_buffer, (void const *)(& ioasa->auto_sense.data),
             (size_t )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0));
  }
  return (1);
}
}
static void ipr_erp_start(struct ipr_ioa_cfg *ioa_cfg , struct ipr_cmnd *ipr_cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  struct ipr_resource_entry *res ;
  u32 ioasc ;
  __u32 tmp ;
  u32 masked_ioasc ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  scsi_cmd = ipr_cmd->scsi_cmd;
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  masked_ioasc = ioasc & 4294967040U;
  if ((unsigned long )res == (unsigned long )((struct ipr_resource_entry *)0)) {
    ipr_scsi_eh_done(ipr_cmd);
    return;
  } else {
  }
  tmp___0 = ipr_is_gscsi(res);
  if (tmp___0 == 0 && masked_ioasc != 71599360U) {
    ipr_gen_sense(ipr_cmd);
  } else {
  }
  ipr_dump_ioasa(ioa_cfg, ipr_cmd, res);
  switch (masked_ioasc) {
  case 190447616U:
  tmp___1 = ipr_is_naca_model(res);
  if (tmp___1 != 0) {
    scsi_cmd->result = scsi_cmd->result | 327680;
  } else {
    scsi_cmd->result = scsi_cmd->result | 786432;
  }
  goto ldv_46838;
  case 86310912U: ;
  case 86343936U:
  scsi_cmd->result = scsi_cmd->result | 65536;
  goto ldv_46838;
  case 67436544U:
  scsi_cmd->result = scsi_cmd->result | 65536;
  tmp___2 = ipr_is_naca_model(res);
  if (tmp___2 == 0) {
    res->needs_sync_complete = 1U;
  } else {
  }
  goto ldv_46838;
  case 37683200U: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) == 0U) {
    res->needs_sync_complete = 1U;
  } else {
  }
  scsi_cmd->result = scsi_cmd->result | 786432;
  goto ldv_46838;
  case 51448832U: ;
  case 86802432U:
  scsi_cmd->result = scsi_cmd->result | 655360;
  goto ldv_46838;
  case 103350272U: ;
  case 103383040U: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) == 0U) {
    scsi_report_bus_reset(ioa_cfg->host, (int )(scsi_cmd->device)->channel);
  } else {
  }
  scsi_cmd->result = scsi_cmd->result | 458752;
  tmp___3 = ipr_is_naca_model(res);
  if (tmp___3 == 0) {
    res->needs_sync_complete = 1U;
  } else {
  }
  goto ldv_46838;
  case 71599360U:
  scsi_cmd->result = (int )((u32 )scsi_cmd->result | (ioasc & 255U));
  if ((ioasc & 255U) == 2U) {
    tmp___5 = ipr_get_autosense(ipr_cmd);
    if (tmp___5 == 0) {
      tmp___4 = ipr_is_naca_model(res);
      if (tmp___4 == 0) {
        ipr_erp_cancel_all(ipr_cmd);
        return;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___6 = ipr_is_naca_model(res);
  if (tmp___6 == 0) {
    res->needs_sync_complete = 1U;
  } else {
  }
  goto ldv_46838;
  case 33817088U: ;
  goto ldv_46838;
  case 86344192U: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    res->raw_mode = 0U;
    scsi_cmd->result = scsi_cmd->result | 786432;
  } else {
    scsi_cmd->result = scsi_cmd->result | 458752;
  }
  goto ldv_46838;
  default: ;
  if (ioasc >> 24 > 1U) {
    scsi_cmd->result = scsi_cmd->result | 458752;
  } else {
  }
  tmp___7 = ipr_is_vset_device(res);
  if (tmp___7 == 0) {
    tmp___8 = ipr_is_naca_model(res);
    if (tmp___8 == 0) {
      res->needs_sync_complete = 1U;
    } else {
    }
  } else {
  }
  goto ldv_46838;
  }
  ldv_46838:
  scsi_dma_unmap(ipr_cmd->scsi_cmd);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  (*(scsi_cmd->scsi_done))(scsi_cmd);
  return;
}
}
static void ipr_scsi_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct scsi_cmnd *scsi_cmd ;
  u32 ioasc ;
  __u32 tmp ;
  unsigned long hrrq_flags ;
  __u32 tmp___0 ;
  long tmp___1 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  scsi_cmd = ipr_cmd->scsi_cmd;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  tmp___0 = __fswab32(ipr_cmd->s.ioasa.hdr.residual_data_len);
  scsi_set_resid(scsi_cmd, (int )tmp___0);
  tmp___1 = ldv__builtin_expect(ioasc >> 24 == 0U, 1L);
  if (tmp___1 != 0L) {
    scsi_dma_unmap(scsi_cmd);
    ldv_spin_lock();
    list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    spin_unlock_irqrestore((ipr_cmd->hrrq)->lock, hrrq_flags);
  } else {
    ldv_spin_lock();
    ipr_erp_start(ioa_cfg, ipr_cmd);
    spin_unlock_irqrestore((ipr_cmd->hrrq)->lock, hrrq_flags);
  }
  return;
}
}
static int ipr_queuecommand(struct Scsi_Host *shost , struct scsi_cmnd *scsi_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_cmnd *ipr_cmd ;
  unsigned long hrrq_flags ;
  unsigned long lock_flags ;
  int rc ;
  struct ipr_hrr_queue *hrrq ;
  int hrrq_id ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)(& shost->hostdata);
  scsi_cmd->result = 0;
  res = (struct ipr_resource_entry *)(scsi_cmd->device)->hostdata;
  tmp = ipr_is_gata(res);
  if (tmp != 0 && (unsigned long )res->sata_port != (unsigned long )((struct ipr_sata_port *)0)) {
    ldv_spin_lock();
    rc = ata_sas_queuecmd(scsi_cmd, (res->sata_port)->ap);
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
    return (rc);
  } else {
  }
  hrrq_id = ipr_get_hrrq_index(ioa_cfg);
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )hrrq_id;
  ldv_spin_lock();
  tmp___0 = ldv__builtin_expect((long )(((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U && (unsigned int )*((unsigned char *)hrrq + 176UL) == 0U) && (unsigned int )*((unsigned char *)hrrq + 176UL) == 0U),
                             0L);
  if (tmp___0 != 0L) {
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    return (4181);
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )(((unsigned int )*((unsigned char *)hrrq + 176UL) != 0U || (unsigned int )*((unsigned char *)hrrq + 176UL) != 0U) || (unsigned long )res == (unsigned long )((struct ipr_resource_entry *)0)),
                             0L);
  if (tmp___1 != 0L) {
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    goto err_nodev;
  } else {
  }
  ipr_cmd = __ipr_get_free_ipr_cmnd(hrrq);
  if ((unsigned long )ipr_cmd == (unsigned long )((struct ipr_cmnd *)0)) {
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    return (4181);
  } else {
  }
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  ipr_init_ipr_cmnd(ipr_cmd, & ipr_scsi_done);
  ioarcb = & ipr_cmd->ioarcb;
  memcpy((void *)(& ioarcb->cmd_pkt.cdb), (void const *)scsi_cmd->cmnd, (size_t )scsi_cmd->cmd_len);
  ipr_cmd->scsi_cmd = scsi_cmd;
  ipr_cmd->done = & ipr_scsi_eh_done;
  tmp___3 = ipr_is_gscsi(res);
  if (tmp___3 != 0) {
    goto _L;
  } else {
    tmp___4 = ipr_is_vset_device(res);
    if (tmp___4 != 0) {
      _L:
      if (scsi_cmd->underflow == 0U) {
        ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 32U);
      } else {
      }
      ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 4U);
      tmp___2 = ipr_is_gscsi(res);
      if (tmp___2 != 0 && (unsigned int )*((unsigned char *)res + 0UL) != 0U) {
        res->reset_occurred = 0U;
        ioarcb->cmd_pkt.flags_lo = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_lo | 16U);
      } else {
      }
      ioarcb->cmd_pkt.flags_lo = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_lo | 32U);
      if (scsi_cmd->flags & 1) {
        ioarcb->cmd_pkt.flags_lo = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_lo | 2U);
      } else {
        ioarcb->cmd_pkt.flags_lo = ioarcb->cmd_pkt.flags_lo;
      }
    } else {
    }
  }
  if ((unsigned int )*(scsi_cmd->cmnd) > 191U) {
    tmp___5 = ipr_is_gscsi(res);
    if (tmp___5 == 0 || (unsigned int )*(scsi_cmd->cmnd) == 194U) {
      ioarcb->cmd_pkt.request_type = 1U;
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    tmp___6 = ipr_is_af_dasd_device(res);
    if (tmp___6 != 0) {
      ioarcb->cmd_pkt.request_type = 5U;
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    rc = ipr_build_ioadl64(ioa_cfg, ipr_cmd);
  } else {
    rc = ipr_build_ioadl(ioa_cfg, ipr_cmd);
  }
  ldv_spin_lock();
  tmp___7 = ldv__builtin_expect((long )(rc != 0 || ((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U && (unsigned int )*((unsigned char *)hrrq + 176UL) == 0U)),
                             0L);
  if (tmp___7 != 0L) {
    list_add_tail(& ipr_cmd->queue, & hrrq->hrrq_free_q);
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    if (rc == 0) {
      scsi_dma_unmap(scsi_cmd);
    } else {
    }
    return (4181);
  } else {
  }
  tmp___8 = ldv__builtin_expect((unsigned int )*((unsigned char *)hrrq + 176UL) != 0U,
                             0L);
  if (tmp___8 != 0L) {
    list_add_tail(& ipr_cmd->queue, & hrrq->hrrq_free_q);
    spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
    scsi_dma_unmap(scsi_cmd);
    goto err_nodev;
  } else {
  }
  ioarcb->res_handle = res->res_handle;
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 8U);
    res->needs_sync_complete = 0U;
  } else {
  }
  list_add_tail(& ipr_cmd->queue, & hrrq->hrrq_pending_q);
  ipr_trc_hook(ipr_cmd, 0, ((res->bus << 24) | (res->target << 8)) | res->lun);
  ipr_send_command(ipr_cmd);
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  return (0);
  err_nodev:
  ldv_spin_lock();
  memset((void *)scsi_cmd->sense_buffer, 0, 96UL);
  scsi_cmd->result = 65536;
  (*(scsi_cmd->scsi_done))(scsi_cmd);
  spin_unlock_irqrestore(hrrq->lock, hrrq_flags);
  return (0);
}
}
static int ipr_ioctl(struct scsi_device *sdev , int cmd , void *arg )
{
  struct ipr_resource_entry *res ;
  int tmp ;
  int tmp___0 ;
  {
  res = (struct ipr_resource_entry *)sdev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct ipr_resource_entry *)0)) {
    tmp___0 = ipr_is_gata(res);
    if (tmp___0 != 0) {
      if (cmd == 781) {
        return (-25);
      } else {
      }
      tmp = ata_sas_scsi_ioctl((res->sata_port)->ap, sdev, cmd, arg);
      return (tmp);
    } else {
    }
  } else {
  }
  return (-22);
}
}
static char const *ipr_ioa_info(struct Scsi_Host *host )
{
  char buffer[512U] ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  {
  lock_flags = 0UL;
  ioa_cfg = (struct ipr_ioa_cfg *)(& host->hostdata);
  ldv_spin_lock();
  sprintf((char *)(& buffer), "IBM %X Storage Adapter", (int )ioa_cfg->type);
  spin_unlock_irqrestore(host->host_lock, lock_flags);
  return ((char const *)(& buffer));
}
}
static struct scsi_host_template driver_template =
     {& __this_module, "IPR", 0, 0, & ipr_ioa_info, & ipr_ioctl, 0, & ipr_queuecommand,
    & ipr_eh_abort, & ipr_eh_dev_reset, 0, 0, & ipr_eh_host_reset, & ipr_slave_alloc,
    & ipr_slave_configure, & ipr_slave_destroy, & ipr_target_alloc, & ipr_target_destroy,
    & ipr_scan_finished, 0, & ipr_change_queue_depth, & ipr_biosparam, 0, 0, 0, 0,
    0, "ipr", 0, 100, -1, 64U, (unsigned short)0, 32767U, 0UL, 6, (unsigned char)0,
    0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 0U, (struct device_attribute **)(& ipr_ioa_attrs),
    (struct device_attribute **)(& ipr_dev_attrs), {0, 0}, 0ULL, 0U, 0, (_Bool)0};
static void ipr_ata_phy_reset(struct ata_port *ap )
{
  unsigned long flags ;
  struct ipr_sata_port *sata_port ;
  struct ipr_resource_entry *res ;
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  sata_port = (struct ipr_sata_port *)ap->private_data;
  res = sata_port->res;
  ioa_cfg = sata_port->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ata_phy_reset");
  } else {
  }
  ldv_spin_lock();
  goto ldv_46903;
  ldv_46902:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                6512, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46894;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46900:
  tmp = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46899;
  } else {
  }
  schedule();
  goto ldv_46900;
  ldv_46899:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46894:
  ldv_spin_lock();
  ldv_46903: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_46902;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    goto out_unlock;
  } else {
  }
  rc = ipr_device_reset(ioa_cfg, res);
  if (rc != 0) {
    ap->link.device[0].class = 10U;
    goto out_unlock;
  } else {
  }
  ap->link.device[0].class = (unsigned int )res->ata_class;
  if (ap->link.device[0].class == 0U) {
    ap->link.device[0].class = 10U;
  } else {
  }
  out_unlock:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ata_phy_reset");
  } else {
  }
  return;
}
}
static void ipr_ata_post_internal(struct ata_queued_cmd *qc )
{
  struct ipr_sata_port *sata_port ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_hrr_queue *hrrq ;
  unsigned long flags ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  sata_port = (struct ipr_sata_port *)(qc->ap)->private_data;
  ioa_cfg = sata_port->ioa_cfg;
  ldv_spin_lock();
  goto ldv_46923;
  ldv_46922:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                6553, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46914;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_46920:
  tmp = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_46919;
  } else {
  }
  schedule();
  goto ldv_46920;
  ldv_46919:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_46914:
  ldv_spin_lock();
  ldv_46923: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_46922;
  } else {
  }
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_46933;
  ldv_46932:
  spin_lock(& hrrq->_lock);
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  goto ldv_46931;
  ldv_46930: ;
  if ((unsigned long )ipr_cmd->qc == (unsigned long )qc) {
    ipr_device_reset(ioa_cfg, sata_port->res);
    goto ldv_46929;
  } else {
  }
  __mptr___0 = (struct list_head const *)ipr_cmd->queue.next;
  ipr_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  ldv_46931: ;
  if ((unsigned long )(& ipr_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_46930;
  } else {
  }
  ldv_46929:
  spin_unlock(& hrrq->_lock);
  hrrq = hrrq + 1;
  ldv_46933: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_46932;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  return;
}
}
static void ipr_copy_sata_tf(struct ipr_ioarcb_ata_regs *regs , struct ata_taskfile *tf )
{
  {
  regs->feature = tf->feature;
  regs->nsect = tf->nsect;
  regs->lbal = tf->lbal;
  regs->lbam = tf->lbam;
  regs->lbah = tf->lbah;
  regs->device = tf->device;
  regs->command = tf->command;
  regs->hob_feature = tf->hob_feature;
  regs->hob_nsect = tf->hob_nsect;
  regs->hob_lbal = tf->hob_lbal;
  regs->hob_lbam = tf->hob_lbam;
  regs->hob_lbah = tf->hob_lbah;
  regs->ctl = tf->ctl;
  return;
}
}
static void ipr_sata_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ata_queued_cmd *qc ;
  struct ipr_sata_port *sata_port ;
  struct ipr_resource_entry *res ;
  u32 ioasc ;
  __u32 tmp ;
  __u32 tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  qc = ipr_cmd->qc;
  sata_port = (struct ipr_sata_port *)(qc->ap)->private_data;
  res = sata_port->res;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  spin_lock(& (ipr_cmd->hrrq)->_lock);
  if ((unsigned int )*((unsigned char *)ipr_cmd->ioa_cfg + 25UL) != 0U) {
    memcpy((void *)(& sata_port->ioasa), (void const *)(& ipr_cmd->s.ioasa64.u.gata),
             12UL);
  } else {
    memcpy((void *)(& sata_port->ioasa), (void const *)(& ipr_cmd->s.ioasa.u.gata),
             12UL);
  }
  ipr_dump_ioasa(ioa_cfg, ipr_cmd, res);
  tmp___0 = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc_specific);
  if ((tmp___0 & 536870912U) != 0U) {
    scsi_report_device_reset(ioa_cfg->host, (int )res->bus, (int )res->target);
  } else {
  }
  if (ioasc >> 24 > 1U) {
    tmp___1 = __ac_err_mask((int )sata_port->ioasa.status);
    qc->err_mask = qc->err_mask | tmp___1;
  } else {
    tmp___2 = ac_err_mask((int )sata_port->ioasa.status);
    qc->err_mask = qc->err_mask | tmp___2;
  }
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  spin_unlock(& (ipr_cmd->hrrq)->_lock);
  ata_qc_complete(qc);
  return;
}
}
static void ipr_build_ata_ioadl64(struct ipr_cmnd *ipr_cmd , struct ata_queued_cmd *qc )
{
  u32 ioadl_flags ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl64_desc *ioadl64 ;
  struct ipr_ioadl64_desc *last_ioadl64 ;
  int len ;
  struct scatterlist *sg ;
  unsigned int si ;
  dma_addr_t dma_addr ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u64 tmp___4 ;
  long tmp___5 ;
  {
  ioadl_flags = 0U;
  ioarcb = & ipr_cmd->ioarcb;
  ioadl64 = (struct ipr_ioadl64_desc *)(& ipr_cmd->i.ata_ioadl.ioadl64);
  last_ioadl64 = (struct ipr_ioadl64_desc *)0;
  len = (int )qc->nbytes;
  dma_addr = ipr_cmd->dma_addr;
  if (len == 0) {
    return;
  } else {
  }
  if (qc->dma_dir == 1) {
    ioadl_flags = 1744830464U;
    ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  } else
  if (qc->dma_dir == 2) {
    ioadl_flags = 1207959552U;
  } else {
  }
  tmp = __fswab32((__u32 )len);
  ioarcb->data_transfer_length = tmp;
  tmp___0 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 16U);
  ioarcb->ioadl_len = tmp___0;
  tmp___1 = __fswab64(dma_addr + 160ULL);
  ioarcb->u.sis64_addr_data.data_ioadl_addr = tmp___1;
  si = 0U;
  sg = qc->sg;
  goto ldv_46960;
  ldv_46959:
  tmp___2 = __fswab32(ioadl_flags);
  ioadl64->flags = tmp___2;
  tmp___3 = __fswab32(sg->dma_length);
  ioadl64->data_len = tmp___3;
  tmp___4 = __fswab64(sg->dma_address);
  ioadl64->address = tmp___4;
  last_ioadl64 = ioadl64;
  ioadl64 = ioadl64 + 1;
  si = si + 1U;
  sg = sg_next(sg);
  ldv_46960: ;
  if (qc->n_elem > si) {
    goto ldv_46959;
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned long )last_ioadl64 != (unsigned long )((struct ipr_ioadl64_desc *)0),
                             1L);
  if (tmp___5 != 0L) {
    last_ioadl64->flags = last_ioadl64->flags | 1U;
  } else {
  }
  return;
}
}
static void ipr_build_ata_ioadl(struct ipr_cmnd *ipr_cmd , struct ata_queued_cmd *qc )
{
  u32 ioadl_flags ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioadl_desc *ioadl ;
  struct ipr_ioadl_desc *last_ioadl ;
  int len ;
  struct scatterlist *sg ;
  unsigned int si ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  {
  ioadl_flags = 0U;
  ioarcb = & ipr_cmd->ioarcb;
  ioadl = (struct ipr_ioadl_desc *)(& ipr_cmd->i.ioadl);
  last_ioadl = (struct ipr_ioadl_desc *)0;
  len = (int )qc->nbytes;
  if (len == 0) {
    return;
  } else {
  }
  if (qc->dma_dir == 1) {
    ioadl_flags = 1744830464U;
    ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
    tmp = __fswab32((__u32 )len);
    ioarcb->data_transfer_length = tmp;
    tmp___0 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 8U);
    ioarcb->ioadl_len = tmp___0;
  } else
  if (qc->dma_dir == 2) {
    ioadl_flags = 1207959552U;
    tmp___1 = __fswab32((__u32 )len);
    ioarcb->read_data_transfer_length = tmp___1;
    tmp___2 = __fswab32((__u32 )ipr_cmd->dma_use_sg * 8U);
    ioarcb->read_ioadl_len = tmp___2;
  } else {
  }
  si = 0U;
  sg = qc->sg;
  goto ldv_46974;
  ldv_46973:
  tmp___3 = __fswab32(sg->dma_length | ioadl_flags);
  ioadl->flags_and_data_len = tmp___3;
  tmp___4 = __fswab32((__u32 )sg->dma_address);
  ioadl->address = tmp___4;
  last_ioadl = ioadl;
  ioadl = ioadl + 1;
  si = si + 1U;
  sg = sg_next(sg);
  ldv_46974: ;
  if (qc->n_elem > si) {
    goto ldv_46973;
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned long )last_ioadl != (unsigned long )((struct ipr_ioadl_desc *)0),
                             1L);
  if (tmp___5 != 0L) {
    last_ioadl->flags_and_data_len = last_ioadl->flags_and_data_len | 1U;
  } else {
  }
  return;
}
}
static int ipr_qc_defer(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ipr_sata_port *sata_port ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_hrr_queue *hrrq ;
  int hrrq_id ;
  long tmp ;
  long tmp___0 ;
  {
  ap = qc->ap;
  sata_port = (struct ipr_sata_port *)ap->private_data;
  ioa_cfg = sata_port->ioa_cfg;
  hrrq_id = ipr_get_hrrq_index(ioa_cfg);
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )hrrq_id;
  qc->lldd_task = (void *)0;
  spin_lock(& hrrq->_lock);
  tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)hrrq + 176UL) != 0U, 0L);
  if (tmp != 0L) {
    spin_unlock(& hrrq->_lock);
    return (0);
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U,
                             0L);
  if (tmp___0 != 0L) {
    spin_unlock(& hrrq->_lock);
    return (1);
  } else {
  }
  ipr_cmd = __ipr_get_free_ipr_cmnd(hrrq);
  if ((unsigned long )ipr_cmd == (unsigned long )((struct ipr_cmnd *)0)) {
    spin_unlock(& hrrq->_lock);
    return (1);
  } else {
  }
  qc->lldd_task = (void *)ipr_cmd;
  spin_unlock(& hrrq->_lock);
  return (0);
}
}
static unsigned int ipr_qc_issue(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ipr_sata_port *sata_port ;
  struct ipr_resource_entry *res ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_ioarcb_ata_regs *regs ;
  long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  ap = qc->ap;
  sata_port = (struct ipr_sata_port *)ap->private_data;
  res = sata_port->res;
  ioa_cfg = sata_port->ioa_cfg;
  if ((unsigned long )qc->lldd_task == (unsigned long )((void *)0)) {
    ipr_qc_defer(qc);
  } else {
  }
  ipr_cmd = (struct ipr_cmnd *)qc->lldd_task;
  if ((unsigned long )ipr_cmd == (unsigned long )((struct ipr_cmnd *)0)) {
    return (64U);
  } else {
  }
  qc->lldd_task = (void *)0;
  spin_lock(& (ipr_cmd->hrrq)->_lock);
  tmp = ldv__builtin_expect((long )((unsigned int )*((unsigned char *)ipr_cmd->hrrq + 176UL) == 0U || (unsigned int )*((unsigned char *)ipr_cmd->hrrq + 176UL) != 0U),
                         0L);
  if (tmp != 0L) {
    list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
    spin_unlock(& (ipr_cmd->hrrq)->_lock);
    return (64U);
  } else {
  }
  ipr_init_ipr_cmnd(ipr_cmd, & ipr_lock_and_done);
  ioarcb = & ipr_cmd->ioarcb;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    regs = & ipr_cmd->i.ata_ioadl.regs;
    ioarcb->add_cmd_parms_offset = 32768U;
  } else {
    regs = & ioarcb->u.add_data.u.regs;
  }
  memset((void *)regs, 0, 22UL);
  ioarcb->add_cmd_parms_len = 5632U;
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  ipr_cmd->qc = qc;
  ipr_cmd->done = & ipr_sata_done;
  ipr_cmd->ioarcb.res_handle = res->res_handle;
  ioarcb->cmd_pkt.request_type = 4U;
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 4U);
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 32U);
  ipr_cmd->dma_use_sg = (unsigned short )qc->n_elem;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    ipr_build_ata_ioadl64(ipr_cmd, qc);
  } else {
    ipr_build_ata_ioadl(ipr_cmd, qc);
  }
  regs->flags = (u8 )((unsigned int )regs->flags | 32U);
  ipr_copy_sata_tf(regs, & qc->tf);
  memcpy((void *)(& ioarcb->cmd_pkt.cdb), (void const *)(& qc->cdb), 16UL);
  ipr_trc_hook(ipr_cmd, 0, ((res->bus << 24) | (res->target << 8)) | res->lun);
  switch ((int )qc->tf.protocol) {
  case 1: ;
  case 2: ;
  goto ldv_46997;
  case 3:
  regs->flags = (u8 )((unsigned int )regs->flags | 64U);
  goto ldv_46997;
  case 6: ;
  case 5:
  regs->flags = (u8 )((unsigned int )regs->flags | 128U);
  goto ldv_46997;
  case 7:
  regs->flags = (u8 )((unsigned int )regs->flags | 128U);
  regs->flags = (u8 )((unsigned int )regs->flags | 64U);
  goto ldv_46997;
  default:
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                       6852);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  spin_unlock(& (ipr_cmd->hrrq)->_lock);
  return (128U);
  }
  ldv_46997:
  ipr_send_command(ipr_cmd);
  spin_unlock(& (ipr_cmd->hrrq)->_lock);
  return (0U);
}
}
static bool ipr_qc_fill_rtf(struct ata_queued_cmd *qc )
{
  struct ipr_sata_port *sata_port ;
  struct ipr_ioasa_gata *g ;
  struct ata_taskfile *tf ;
  {
  sata_port = (struct ipr_sata_port *)(qc->ap)->private_data;
  g = & sata_port->ioasa;
  tf = & qc->result_tf;
  tf->feature = g->error;
  tf->nsect = g->nsect;
  tf->lbal = g->lbal;
  tf->lbam = g->lbam;
  tf->lbah = g->lbah;
  tf->device = g->device;
  tf->command = g->status;
  tf->hob_nsect = g->hob_nsect;
  tf->hob_lbal = g->hob_lbal;
  tf->hob_lbam = g->hob_lbam;
  tf->hob_lbah = g->hob_lbah;
  return (1);
}
}
static struct ata_port_operations ipr_sata_ops =
     {& ipr_qc_defer, 0, & ata_noop_qc_prep, & ipr_qc_issue, & ipr_qc_fill_rtf, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & ipr_sata_reset, 0, 0, 0, 0, 0, 0, 0, & ipr_ata_post_internal,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_sas_port_start, & ata_sas_port_stop, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ipr_ata_phy_reset,
    0, 0};
static struct ata_port_info sata_port_info = {16777346UL, 0UL, 16UL, 7UL, 127UL, & ipr_sata_ops, 0};
static int ipr_ioa_bringdown_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int i ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioa_bringdown_done");
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_ioa_bringdown_done", 6968);
    } else {
    }
    spin_unlock_irq((ioa_cfg->host)->host_lock);
    scsi_unblock_requests(ioa_cfg->host);
    spin_lock_irq((ioa_cfg->host)->host_lock);
  } else {
  }
  ioa_cfg->in_reset_reload = 0U;
  ioa_cfg->reset_retries = 0U;
  i = 0;
  goto ldv_47020;
  ldv_47019:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].ioa_is_dead = 1U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_47020: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47019;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  __wake_up(& ioa_cfg->reset_wait_q, 3U, 0, (void *)0);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioa_bringdown_done");
  } else {
  }
  return (2);
}
}
static int ipr_ioa_reset_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ipr_hostrcb *hostrcb ;
  struct ipr_hostrcb *temp ;
  int i ;
  int j ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  struct list_head const *__mptr___3 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  i = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioa_reset_done");
  } else {
  }
  ioa_cfg->in_reset_reload = 0U;
  j = 0;
  goto ldv_47033;
  ldv_47032:
  spin_lock(& ioa_cfg->hrrq[j]._lock);
  ioa_cfg->hrrq[j].allow_cmds = 1U;
  spin_unlock(& ioa_cfg->hrrq[j]._lock);
  j = j + 1;
  ldv_47033: ;
  if ((u32 )j < ioa_cfg->hrrq_num) {
    goto ldv_47032;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  ioa_cfg->reset_cmd = (struct ipr_cmnd *)0;
  ioa_cfg->doorbell = ioa_cfg->doorbell | 1073741824U;
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47041;
  ldv_47040: ;
  if ((unsigned int )*((unsigned char *)res + 0UL) != 0U || (unsigned int )*((unsigned char *)res + 0UL) != 0U) {
    if (ipr_debug != 0U) {
      printk("\016ipr: %s: %s: Line: %d\n", (char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
             "ipr_ioa_reset_done", 7021);
    } else {
    }
    goto ldv_47039;
  } else {
  }
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47041: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_47040;
  } else {
  }
  ldv_47039:
  schedule_work(& ioa_cfg->work_q);
  __mptr___1 = (struct list_head const *)ioa_cfg->hostrcb_free_q.next;
  hostrcb = (struct ipr_hostrcb *)__mptr___1 + 0xfffffffffffff3c8UL;
  __mptr___2 = (struct list_head const *)hostrcb->queue.next;
  temp = (struct ipr_hostrcb *)__mptr___2 + 0xfffffffffffff3c8UL;
  goto ldv_47049;
  ldv_47048:
  list_del(& hostrcb->queue);
  tmp = i;
  i = i + 1;
  if (tmp <= 1) {
    ipr_send_hcam(ioa_cfg, 2, hostrcb);
  } else {
    ipr_send_hcam(ioa_cfg, 1, hostrcb);
  }
  hostrcb = temp;
  __mptr___3 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_hostrcb *)__mptr___3 + 0xfffffffffffff3c8UL;
  ldv_47049: ;
  if ((unsigned long )(& hostrcb->queue) != (unsigned long )(& ioa_cfg->hostrcb_free_q)) {
    goto ldv_47048;
  } else {
  }
  scsi_report_bus_reset(ioa_cfg->host, 255);
  _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "IOA initialized.\n");
  ioa_cfg->reset_retries = 0U;
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  __wake_up(& ioa_cfg->reset_wait_q, 3U, 0, (void *)0);
  spin_unlock((ioa_cfg->host)->host_lock);
  scsi_unblock_requests(ioa_cfg->host);
  spin_lock((ioa_cfg->host)->host_lock);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    scsi_block_requests(ioa_cfg->host);
  } else {
  }
  schedule_work(& ioa_cfg->work_q);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioa_reset_done");
  } else {
  }
  return (2);
}
}
static void ipr_set_sup_dev_dflt(struct ipr_supported_device *supported_dev , struct ipr_std_inq_vpids *vpids )
{
  {
  memset((void *)supported_dev, 0, 44UL);
  memcpy((void *)(& supported_dev->vpids), (void const *)vpids, 24UL);
  supported_dev->num_records = 1U;
  supported_dev->data_length = 11264U;
  supported_dev->reserved = 0U;
  return;
}
}
static int ipr_set_supported_devs(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_supported_device *supp_dev ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_resource_entry *res ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  supp_dev = & (ioa_cfg->vpd_cbs)->supp_dev;
  ioarcb = & ipr_cmd->ioarcb;
  res = ipr_cmd->u.res;
  ipr_cmd->job_step = & ipr_ioa_reset_done;
  __mptr = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  goto ldv_47069;
  ldv_47068:
  tmp = ipr_is_scsi_disk(res);
  if (tmp == 0) {
    goto ldv_47066;
  } else {
  }
  ipr_cmd->u.res = res;
  ipr_set_sup_dev_dflt(supp_dev, & res->std_inq_data.vpids);
  ioarcb->res_handle = 4294967295U;
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  ioarcb->cmd_pkt.request_type = 1U;
  ioarcb->cmd_pkt.cdb[0] = 251U;
  ioarcb->cmd_pkt.cdb[1] = 128U;
  ioarcb->cmd_pkt.cdb[7] = 0U;
  ioarcb->cmd_pkt.cdb[8] = 44U;
  ipr_init_ioadl(ipr_cmd, ioa_cfg->vpd_cbs_dma + 428ULL, 44U, 1761607680);
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, 30000U);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    ipr_cmd->job_step = & ipr_set_supported_devs;
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_set_supported_devs");
  } else {
  }
  return (2);
  ldv_47066:
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_47069: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_47068;
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_set_supported_devs");
  } else {
  }
  return (1);
}
}
static void *ipr_get_mode_page(struct ipr_mode_pages *mode_pages , u32 page_code ,
                               u32 len )
{
  struct ipr_mode_page_hdr *mode_hdr ;
  u32 page_length ;
  u32 length ;
  {
  if ((unsigned long )mode_pages == (unsigned long )((struct ipr_mode_pages *)0) || (unsigned int )mode_pages->hdr.length == 0U) {
    return ((void *)0);
  } else {
  }
  length = (u32 )(((int )mode_pages->hdr.length + -3) - (int )mode_pages->hdr.block_desc_len);
  mode_hdr = (struct ipr_mode_page_hdr *)(& mode_pages->data) + (unsigned long )mode_pages->hdr.block_desc_len;
  goto ldv_47081;
  ldv_47080: ;
  if (((u32 )mode_hdr->ps_page_code & 63U) == page_code) {
    if ((unsigned long )mode_hdr->page_length >= (unsigned long )len - 2UL) {
      return ((void *)mode_hdr);
    } else {
    }
    goto ldv_47079;
  } else {
    page_length = (u32 )mode_hdr->page_length + 2U;
    length = length - page_length;
    mode_hdr = (struct ipr_mode_page_hdr *)((unsigned long )page_length + (unsigned long )mode_hdr);
  }
  ldv_47081: ;
  if (length != 0U) {
    goto ldv_47080;
  } else {
  }
  ldv_47079: ;
  return ((void *)0);
}
}
static void ipr_check_term_power(struct ipr_ioa_cfg *ioa_cfg , struct ipr_mode_pages *mode_pages )
{
  int i ;
  int entry_length ;
  struct ipr_dev_bus_entry *bus ;
  struct ipr_mode_page28 *mode_page ;
  void *tmp ;
  {
  tmp = ipr_get_mode_page(mode_pages, 40U, 4U);
  mode_page = (struct ipr_mode_page28 *)tmp;
  entry_length = (int )mode_page->entry_length;
  bus = (struct ipr_dev_bus_entry *)(& mode_page->bus);
  i = 0;
  goto ldv_47091;
  ldv_47090: ;
  if (((int )bus->flags & 16) != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Term power is absent on scsi bus %d\n",
            (int )bus->res_addr.bus);
  } else {
  }
  bus = bus + (unsigned long )entry_length;
  i = i + 1;
  ldv_47091: ;
  if ((int )mode_page->num_entries > i) {
    goto ldv_47090;
  } else {
  }
  return;
}
}
static void ipr_scsi_bus_speed_limit(struct ipr_ioa_cfg *ioa_cfg )
{
  u32 max_xfer_rate ;
  int i ;
  {
  i = 0;
  goto ldv_47099;
  ldv_47098:
  max_xfer_rate = ipr_get_max_scsi_speed(ioa_cfg, (int )((u8 )i), (int )ioa_cfg->bus_attr[i].bus_width);
  if (ioa_cfg->bus_attr[i].max_xfer_rate > max_xfer_rate) {
    ioa_cfg->bus_attr[i].max_xfer_rate = max_xfer_rate;
  } else {
  }
  i = i + 1;
  ldv_47099: ;
  if (i <= 15) {
    goto ldv_47098;
  } else {
  }
  return;
}
}
static void ipr_modify_ioafp_mode_page_28(struct ipr_ioa_cfg *ioa_cfg , struct ipr_mode_pages *mode_pages )
{
  int i ;
  int entry_length ;
  struct ipr_dev_bus_entry *bus ;
  struct ipr_bus_attributes *bus_attr ;
  struct ipr_mode_page28 *mode_page ;
  void *tmp ;
  __u32 tmp___0 ;
  {
  tmp = ipr_get_mode_page(mode_pages, 40U, 4U);
  mode_page = (struct ipr_mode_page28 *)tmp;
  entry_length = (int )mode_page->entry_length;
  i = 0;
  bus = (struct ipr_dev_bus_entry *)(& mode_page->bus);
  goto ldv_47112;
  ldv_47111: ;
  if ((unsigned int )bus->res_addr.bus > 16U) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Invalid resource address reported: 0x%08X\n",
            (((int )bus->res_addr.bus << 16) | ((int )bus->res_addr.target << 8)) | (int )bus->res_addr.lun);
    goto ldv_47110;
  } else {
  }
  bus_attr = (struct ipr_bus_attributes *)(& ioa_cfg->bus_attr) + (unsigned long )i;
  bus->extended_reset_delay = 7U;
  bus->bus_width = bus_attr->bus_width;
  tmp___0 = __fswab32(bus_attr->max_xfer_rate);
  bus->max_xfer_rate = tmp___0;
  bus->flags = (unsigned int )bus->flags & 63U;
  if ((unsigned int )bus_attr->qas_enabled != 0U) {
    bus->flags = (u8 )((unsigned int )bus->flags | 128U);
  } else {
    bus->flags = (u8 )((unsigned int )bus->flags | 64U);
  }
  ldv_47110:
  i = i + 1;
  bus = bus + (unsigned long )entry_length;
  ldv_47112: ;
  if ((int )mode_page->num_entries > i) {
    goto ldv_47111;
  } else {
  }
  return;
}
}
static void ipr_build_mode_select(struct ipr_cmnd *ipr_cmd , __be32 res_handle , u8 parm ,
                                  dma_addr_t dma_addr , u8 xfer_len )
{
  struct ipr_ioarcb *ioarcb ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioarcb->res_handle = res_handle;
  ioarcb->cmd_pkt.request_type = 0U;
  ioarcb->cmd_pkt.flags_hi = (u8 )((unsigned int )ioarcb->cmd_pkt.flags_hi | 128U);
  ioarcb->cmd_pkt.cdb[0] = 21U;
  ioarcb->cmd_pkt.cdb[1] = parm;
  ioarcb->cmd_pkt.cdb[4] = xfer_len;
  ipr_init_ioadl(ipr_cmd, dma_addr, (u32 )xfer_len, 1761607680);
  return;
}
}
static int ipr_ioafp_mode_select_page28(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_mode_pages *mode_pages ;
  int length ;
  struct list_head const *__mptr ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  mode_pages = & (ioa_cfg->vpd_cbs)->mode_pages;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_mode_select_page28");
  } else {
  }
  ipr_scsi_bus_speed_limit(ioa_cfg);
  ipr_check_term_power(ioa_cfg, mode_pages);
  ipr_modify_ioafp_mode_page_28(ioa_cfg, mode_pages);
  length = (int )mode_pages->hdr.length + 1;
  mode_pages->hdr.length = 0U;
  ipr_build_mode_select(ipr_cmd, 4294967295U, 17, ioa_cfg->vpd_cbs_dma + 172ULL, (int )((u8 )length));
  ipr_cmd->job_step = & ipr_set_supported_devs;
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  ipr_cmd->u.res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_mode_select_page28");
  } else {
  }
  return (2);
}
}
static void ipr_build_mode_sense(struct ipr_cmnd *ipr_cmd , __be32 res_handle , u8 parm ,
                                 dma_addr_t dma_addr , u8 xfer_len )
{
  struct ipr_ioarcb *ioarcb ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  ioarcb->res_handle = res_handle;
  ioarcb->cmd_pkt.cdb[0] = 26U;
  ioarcb->cmd_pkt.cdb[2] = parm;
  ioarcb->cmd_pkt.cdb[4] = xfer_len;
  ioarcb->cmd_pkt.request_type = 0U;
  ipr_init_ioadl(ipr_cmd, dma_addr, (u32 )xfer_len, 1224736768);
  return;
}
}
static int ipr_reset_cmd_failed(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  u32 ioasc ;
  __u32 tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "0x%02X failed with IOASC: 0x%08X\n",
          (int )ipr_cmd->ioarcb.cmd_pkt.cdb[0], ioasc);
  ipr_initiate_ioa_reset(ioa_cfg, 256);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  return (2);
}
}
static int ipr_reset_mode_sense_failed(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  u32 ioasc ;
  __u32 tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if (ioasc == 86245376U) {
    ipr_cmd->job_step = & ipr_set_supported_devs;
    __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
    ipr_cmd->u.res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
    return (1);
  } else {
  }
  tmp___0 = ipr_reset_cmd_failed(ipr_cmd);
  return (tmp___0);
}
}
static int ipr_ioafp_mode_sense_page28(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_mode_sense_page28");
  } else {
  }
  ipr_build_mode_sense(ipr_cmd, 4294967295U, 40, ioa_cfg->vpd_cbs_dma + 172ULL, 255);
  ipr_cmd->job_step = & ipr_ioafp_mode_select_page28;
  ipr_cmd->job_step_failed = & ipr_reset_mode_sense_failed;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_mode_sense_page28");
  } else {
  }
  return (2);
}
}
static int ipr_ioafp_mode_select_page24(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_mode_pages *mode_pages ;
  struct ipr_mode_page24 *mode_page ;
  int length ;
  void *tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  mode_pages = & (ioa_cfg->vpd_cbs)->mode_pages;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_mode_select_page24");
  } else {
  }
  tmp = ipr_get_mode_page(mode_pages, 36U, 3U);
  mode_page = (struct ipr_mode_page24 *)tmp;
  if ((unsigned long )mode_page != (unsigned long )((struct ipr_mode_page24 *)0)) {
    mode_page->flags = (u8 )((unsigned int )mode_page->flags | 128U);
  } else {
  }
  length = (int )mode_pages->hdr.length + 1;
  mode_pages->hdr.length = 0U;
  ipr_build_mode_select(ipr_cmd, 4294967295U, 17, ioa_cfg->vpd_cbs_dma + 172ULL, (int )((u8 )length));
  ipr_cmd->job_step = & ipr_ioafp_mode_sense_page28;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_mode_select_page24");
  } else {
  }
  return (2);
}
}
static int ipr_reset_mode_sense_page24_failed(struct ipr_cmnd *ipr_cmd )
{
  u32 ioasc ;
  __u32 tmp ;
  int tmp___0 ;
  {
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if (ioasc == 86245376U) {
    ipr_cmd->job_step = & ipr_ioafp_mode_sense_page28;
    return (1);
  } else {
  }
  tmp___0 = ipr_reset_cmd_failed(ipr_cmd);
  return (tmp___0);
}
}
static int ipr_ioafp_mode_sense_page24(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_mode_sense_page24");
  } else {
  }
  ipr_build_mode_sense(ipr_cmd, 4294967295U, 36, ioa_cfg->vpd_cbs_dma + 172ULL, 255);
  ipr_cmd->job_step = & ipr_ioafp_mode_select_page24;
  ipr_cmd->job_step_failed = & ipr_reset_mode_sense_page24_failed;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_mode_sense_page24");
  } else {
  }
  return (2);
}
}
static int ipr_init_res_table(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_resource_entry *res ;
  struct ipr_resource_entry *temp ;
  struct ipr_config_table_entry_wrapper cfgtew ;
  int entries ;
  int found ;
  int flag ;
  int i ;
  struct list_head old_res ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  __u16 tmp ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  int tmp___0 ;
  struct list_head const *__mptr___4 ;
  int tmp___1 ;
  struct list_head const *__mptr___5 ;
  int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  struct list_head const *__mptr___9 ;
  struct list_head const *__mptr___10 ;
  struct list_head const *__mptr___11 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  old_res.next = & old_res;
  old_res.prev = & old_res;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_init_res_table");
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    flag = (int )(ioa_cfg->u.cfg_table64)->hdr64.flags;
  } else {
    flag = (int )(ioa_cfg->u.cfg_table)->hdr.flags;
  }
  if ((flag & 16) != 0) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Microcode download required\n");
  } else {
  }
  __mptr = (struct list_head const *)ioa_cfg->used_res_q.next;
  res = (struct ipr_resource_entry *)__mptr + 0xffffffffffffff80UL;
  __mptr___0 = (struct list_head const *)res->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___0 + 0xffffffffffffff80UL;
  goto ldv_47193;
  ldv_47192:
  list_move_tail(& res->queue, & old_res);
  res = temp;
  __mptr___1 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___1 + 0xffffffffffffff80UL;
  ldv_47193: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& ioa_cfg->used_res_q)) {
    goto ldv_47192;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp = __fswab16((int )(ioa_cfg->u.cfg_table64)->hdr64.num_entries);
    entries = (int )tmp;
  } else {
    entries = (int )(ioa_cfg->u.cfg_table)->hdr.num_entries;
  }
  i = 0;
  goto ldv_47208;
  ldv_47207: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    cfgtew.u.cfgte64 = (struct ipr_config_table_entry64 *)(& (ioa_cfg->u.cfg_table64)->dev) + (unsigned long )i;
  } else {
    cfgtew.u.cfgte = (struct ipr_config_table_entry *)(& (ioa_cfg->u.cfg_table)->dev) + (unsigned long )i;
  }
  found = 0;
  __mptr___2 = (struct list_head const *)old_res.next;
  res = (struct ipr_resource_entry *)__mptr___2 + 0xffffffffffffff80UL;
  __mptr___3 = (struct list_head const *)res->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___3 + 0xffffffffffffff80UL;
  goto ldv_47203;
  ldv_47202:
  tmp___0 = ipr_is_same_device(res, & cfgtew);
  if (tmp___0 != 0) {
    list_move_tail(& res->queue, & ioa_cfg->used_res_q);
    found = 1;
    goto ldv_47201;
  } else {
  }
  res = temp;
  __mptr___4 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___4 + 0xffffffffffffff80UL;
  ldv_47203: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& old_res)) {
    goto ldv_47202;
  } else {
  }
  ldv_47201: ;
  if (found == 0) {
    tmp___1 = list_empty((struct list_head const *)(& ioa_cfg->free_res_q));
    if (tmp___1 != 0) {
      dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Too many devices attached\n");
      goto ldv_47204;
    } else {
    }
    found = 1;
    __mptr___5 = (struct list_head const *)ioa_cfg->free_res_q.next;
    res = (struct ipr_resource_entry *)__mptr___5 + 0xffffffffffffff80UL;
    list_move_tail(& res->queue, & ioa_cfg->used_res_q);
    ipr_init_res_entry(res, & cfgtew);
    res->add_to_ml = 1U;
  } else
  if ((unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0)) {
    tmp___2 = ipr_is_vset_device(res);
    if (tmp___2 != 0) {
      (res->sdev)->allow_restart = 1U;
    } else {
      tmp___3 = ipr_is_scsi_disk(res);
      if (tmp___3 != 0) {
        (res->sdev)->allow_restart = 1U;
      } else {
      }
    }
  } else {
  }
  if (found != 0) {
    ipr_update_res_entry(res, & cfgtew);
  } else {
  }
  i = i + 1;
  ldv_47208: ;
  if (i < entries) {
    goto ldv_47207;
  } else {
  }
  ldv_47204:
  __mptr___6 = (struct list_head const *)old_res.next;
  res = (struct ipr_resource_entry *)__mptr___6 + 0xffffffffffffff80UL;
  __mptr___7 = (struct list_head const *)res->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___7 + 0xffffffffffffff80UL;
  goto ldv_47216;
  ldv_47215: ;
  if ((unsigned long )res->sdev != (unsigned long )((struct scsi_device *)0)) {
    res->del_from_ml = 1U;
    res->res_handle = 0U;
    list_move_tail(& res->queue, & ioa_cfg->used_res_q);
  } else {
  }
  res = temp;
  __mptr___8 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___8 + 0xffffffffffffff80UL;
  ldv_47216: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& old_res)) {
    goto ldv_47215;
  } else {
  }
  __mptr___9 = (struct list_head const *)old_res.next;
  res = (struct ipr_resource_entry *)__mptr___9 + 0xffffffffffffff80UL;
  __mptr___10 = (struct list_head const *)res->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___10 + 0xffffffffffffff80UL;
  goto ldv_47225;
  ldv_47224:
  ipr_clear_res_target(res);
  list_move_tail(& res->queue, & ioa_cfg->free_res_q);
  res = temp;
  __mptr___11 = (struct list_head const *)temp->queue.next;
  temp = (struct ipr_resource_entry *)__mptr___11 + 0xffffffffffffff80UL;
  ldv_47225: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& old_res)) {
    goto ldv_47224;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U && ipr_dual_ioa_raid != 0U) {
    ipr_cmd->job_step = & ipr_ioafp_mode_sense_page24;
  } else {
    ipr_cmd->job_step = & ipr_ioafp_mode_sense_page28;
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_init_res_table");
  } else {
  }
  return (1);
}
}
static int ipr_ioafp_query_ioa_cfg(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_inquiry_page3 *ucode_vpd ;
  struct ipr_inquiry_cap *cap ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  ioarcb = & ipr_cmd->ioarcb;
  ucode_vpd = & (ioa_cfg->vpd_cbs)->page3_data;
  cap = & (ioa_cfg->vpd_cbs)->cap;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_query_ioa_cfg");
  } else {
  }
  if ((int )((signed char )cap->cap) < 0) {
    ioa_cfg->dual_raid = 1U;
  } else {
  }
  _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Adapter firmware version: %02X%02X%02X%02X\n",
            (int )ucode_vpd->major_release, (int )ucode_vpd->card_type, (int )ucode_vpd->minor_release[0],
            (int )ucode_vpd->minor_release[1]);
  ioarcb->cmd_pkt.request_type = 1U;
  ioarcb->res_handle = 4294967295U;
  ioarcb->cmd_pkt.cdb[0] = 197U;
  ioarcb->cmd_pkt.cdb[6] = (u8 )(ioa_cfg->cfg_table_size >> 16);
  ioarcb->cmd_pkt.cdb[7] = (u8 )(ioa_cfg->cfg_table_size >> 8);
  ioarcb->cmd_pkt.cdb[8] = (u8 )ioa_cfg->cfg_table_size;
  ipr_init_ioadl(ipr_cmd, ioa_cfg->cfg_table_dma, ioa_cfg->cfg_table_size, 1224736768);
  ipr_cmd->job_step = & ipr_init_res_table;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_query_ioa_cfg");
  } else {
  }
  return (2);
}
}
static void ipr_ioafp_inquiry(struct ipr_cmnd *ipr_cmd , u8 flags , u8 page , dma_addr_t dma_addr ,
                              u8 xfer_len )
{
  struct ipr_ioarcb *ioarcb ;
  {
  ioarcb = & ipr_cmd->ioarcb;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_inquiry");
  } else {
  }
  ioarcb->cmd_pkt.request_type = 0U;
  ioarcb->res_handle = 4294967295U;
  ioarcb->cmd_pkt.cdb[0] = 18U;
  ioarcb->cmd_pkt.cdb[1] = flags;
  ioarcb->cmd_pkt.cdb[2] = page;
  ioarcb->cmd_pkt.cdb[4] = xfer_len;
  ipr_init_ioadl(ipr_cmd, dma_addr, (u32 )xfer_len, 1224736768);
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_inquiry");
  } else {
  }
  return;
}
}
static int ipr_inquiry_page_supported(struct ipr_inquiry_page0 *page0 , u8 page )
{
  int i ;
  u8 __min1 ;
  u8 __min2 ;
  {
  i = 0;
  goto ldv_47253;
  ldv_47252: ;
  if ((int )page0->page[i] == (int )page) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_47253:
  __min1 = page0->len;
  __min2 = 20U;
  if (((int )__min1 < (int )__min2 ? __min1 : __min2) > i) {
    goto ldv_47252;
  } else {
  }
  return (0);
}
}
static int ipr_ioafp_cap_inquiry(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_inquiry_page0 *page0 ;
  struct ipr_inquiry_cap *cap ;
  int tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  page0 = & (ioa_cfg->vpd_cbs)->page0_data;
  cap = & (ioa_cfg->vpd_cbs)->cap;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_cap_inquiry");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioafp_query_ioa_cfg;
  memset((void *)cap, 0, 24UL);
  tmp = ipr_inquiry_page_supported(page0, 208);
  if (tmp != 0) {
    ipr_ioafp_inquiry(ipr_cmd, 1, 208, ioa_cfg->vpd_cbs_dma + 148ULL, 24);
    return (2);
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_cap_inquiry");
  } else {
  }
  return (1);
}
}
static int ipr_ioafp_page3_inquiry(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_page3_inquiry");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioafp_cap_inquiry;
  ipr_ioafp_inquiry(ipr_cmd, 1, 3, ioa_cfg->vpd_cbs_dma + 124ULL, 24);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_page3_inquiry");
  } else {
  }
  return (2);
}
}
static int ipr_ioafp_page0_inquiry(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  char type[5U] ;
  unsigned long tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_page0_inquiry");
  } else {
  }
  memcpy((void *)(& type), (void const *)(& (ioa_cfg->vpd_cbs)->ioa_vpd.std_inq_data.vpids.product_id),
           4UL);
  type[4] = 0;
  tmp = simple_strtoul((char const *)(& type), (char **)0, 16U);
  ioa_cfg->type = (u16 )tmp;
  ipr_cmd->job_step = & ipr_ioafp_page3_inquiry;
  ipr_ioafp_inquiry(ipr_cmd, 1, 0, ioa_cfg->vpd_cbs_dma + 100ULL, 24);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_page0_inquiry");
  } else {
  }
  return (2);
}
}
static int ipr_ioafp_std_inquiry(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_std_inquiry");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioafp_page0_inquiry;
  ipr_ioafp_inquiry(ipr_cmd, 0, 0, ioa_cfg->vpd_cbs_dma, 100);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_std_inquiry");
  } else {
  }
  return (2);
}
}
static int ipr_ioafp_identify_hrrq(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_ioarcb *ioarcb ;
  struct ipr_hrr_queue *hrrq ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  ioarcb = & ipr_cmd->ioarcb;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_ioafp_identify_hrrq");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioafp_std_inquiry;
  _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Starting IOA initialization sequence.\n");
  if ((u32 )ioa_cfg->identify_hrrq_index < ioa_cfg->hrrq_num) {
    hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->identify_hrrq_index;
    ioarcb->cmd_pkt.cdb[0] = 196U;
    ioarcb->res_handle = 4294967295U;
    ioarcb->cmd_pkt.request_type = 1U;
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      ioarcb->cmd_pkt.cdb[1] = 1U;
    } else {
    }
    if (ioa_cfg->nvectors == 1U) {
      ioarcb->cmd_pkt.cdb[1] = (unsigned int )ioarcb->cmd_pkt.cdb[1] & 253U;
    } else {
      ioarcb->cmd_pkt.cdb[1] = (u8 )((unsigned int )ioarcb->cmd_pkt.cdb[1] | 2U);
    }
    ioarcb->cmd_pkt.cdb[2] = (u8 )(hrrq->host_rrq_dma >> 24);
    ioarcb->cmd_pkt.cdb[3] = (u8 )(hrrq->host_rrq_dma >> 16);
    ioarcb->cmd_pkt.cdb[4] = (u8 )(hrrq->host_rrq_dma >> 8);
    ioarcb->cmd_pkt.cdb[5] = (u8 )hrrq->host_rrq_dma;
    ioarcb->cmd_pkt.cdb[7] = (u8 )((unsigned long )hrrq->size * 4UL >> 8);
    ioarcb->cmd_pkt.cdb[8] = (unsigned int )((u8 )hrrq->size) * 4U;
    if (((int )ioarcb->cmd_pkt.cdb[1] & 2) != 0) {
      ioarcb->cmd_pkt.cdb[9] = (u8 )ioa_cfg->identify_hrrq_index;
    } else {
    }
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      ioarcb->cmd_pkt.cdb[10] = (u8 )(hrrq->host_rrq_dma >> 56);
      ioarcb->cmd_pkt.cdb[11] = (u8 )(hrrq->host_rrq_dma >> 48);
      ioarcb->cmd_pkt.cdb[12] = (u8 )(hrrq->host_rrq_dma >> 40);
      ioarcb->cmd_pkt.cdb[13] = (u8 )(hrrq->host_rrq_dma >> 32);
    } else {
    }
    if (((int )ioarcb->cmd_pkt.cdb[1] & 2) != 0) {
      ioarcb->cmd_pkt.cdb[14] = (u8 )ioa_cfg->identify_hrrq_index;
    } else {
    }
    ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
    ioa_cfg->identify_hrrq_index = (u16 )((int )ioa_cfg->identify_hrrq_index + 1);
    if ((u32 )ioa_cfg->identify_hrrq_index < ioa_cfg->hrrq_num) {
      ipr_cmd->job_step = & ipr_ioafp_identify_hrrq;
    } else {
    }
    if (ipr_debug != 0U) {
      printk("\016ipr: Leaving %s\n", "ipr_ioafp_identify_hrrq");
    } else {
    }
    return (2);
  } else {
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_ioafp_identify_hrrq");
  } else {
  }
  return (1);
}
}
static void ipr_reset_timer_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  lock_flags = 0UL;
  ldv_spin_lock();
  if ((unsigned long )ioa_cfg->reset_cmd == (unsigned long )ipr_cmd) {
    list_del(& ipr_cmd->queue);
    (*(ipr_cmd->done))(ipr_cmd);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return;
}
}
static void ipr_reset_start_timer(struct ipr_cmnd *ipr_cmd , unsigned long timeout )
{
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_start_timer");
  } else {
  }
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  ipr_cmd->done = & ipr_reset_ioa_job;
  ipr_cmd->timer.data = (unsigned long )ipr_cmd;
  ipr_cmd->timer.expires = (unsigned long )jiffies + timeout;
  ipr_cmd->timer.function = (void (*)(unsigned long ))(& ipr_reset_timer_done);
  add_timer(& ipr_cmd->timer);
  return;
}
}
static void ipr_init_ioa_mem(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_hrr_queue *hrrq ;
  {
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_47301;
  ldv_47300:
  spin_lock(& hrrq->_lock);
  memset((void *)hrrq->host_rrq, 0, (unsigned long )hrrq->size * 4UL);
  hrrq->hrrq_start = (__be32 volatile *)hrrq->host_rrq;
  hrrq->hrrq_end = (__be32 volatile *)hrrq->host_rrq + (unsigned long )(hrrq->size - 1U);
  hrrq->hrrq_curr = hrrq->hrrq_start;
  hrrq->toggle_bit = 1U;
  spin_unlock(& hrrq->_lock);
  hrrq = hrrq + 1;
  ldv_47301: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_47300;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  ioa_cfg->identify_hrrq_index = 0U;
  if (ioa_cfg->hrrq_num == 1U) {
    atomic_set(& ioa_cfg->hrrq_index, 0);
  } else {
    atomic_set(& ioa_cfg->hrrq_index, 1);
  }
  memset((void *)ioa_cfg->u.cfg_table, 0, (size_t )ioa_cfg->cfg_table_size);
  return;
}
}
static int ipr_reset_next_stage(struct ipr_cmnd *ipr_cmd )
{
  unsigned long stage ;
  unsigned long stage_time ;
  u32 feedback ;
  u32 volatile int_reg ;
  struct ipr_ioa_cfg *ioa_cfg ;
  u64 maskval ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  maskval = 0ULL;
  feedback = readl((void const volatile *)ioa_cfg->regs.init_feedback_reg);
  stage = (unsigned long )feedback & 4278190080UL;
  stage_time = (unsigned long )feedback & 65535UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: IPL stage = 0x%lx, IPL stage time = %ld\n", stage, stage_time);
  } else {
  }
  if (stage_time == 0UL) {
    stage_time = 30UL;
  } else
  if (stage_time <= 4UL) {
    stage_time = 5UL;
  } else
  if (stage_time > 720UL) {
    stage_time = 720UL;
  } else {
  }
  if (stage == 0UL) {
    writel(2147483648U, (void volatile *)ioa_cfg->regs.set_interrupt_mask_reg);
    tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
    int_reg = tmp;
    stage_time = (unsigned long )ioa_cfg->transop_timeout;
    ipr_cmd->job_step = & ipr_ioafp_identify_hrrq;
  } else
  if (stage == 2952790016UL) {
    tmp___0 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
    int_reg = tmp___0;
    if ((int )int_reg < 0) {
      ipr_cmd->job_step = & ipr_ioafp_identify_hrrq;
      maskval = 2147483648ULL;
      maskval = (maskval << 32) | 2147483648ULL;
      writeq((unsigned long )maskval, (void volatile *)ioa_cfg->regs.set_interrupt_mask_reg);
      tmp___1 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
      int_reg = tmp___1;
      return (1);
    } else {
    }
  } else {
  }
  ipr_cmd->timer.data = (unsigned long )ipr_cmd;
  ipr_cmd->timer.expires = stage_time * 250UL + (unsigned long )jiffies;
  ipr_cmd->timer.function = (void (*)(unsigned long ))(& ipr_oper_timeout);
  ipr_cmd->done = & ipr_reset_ioa_job;
  add_timer(& ipr_cmd->timer);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  return (2);
}
}
static int ipr_reset_enable_ioa(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  u32 volatile int_reg ;
  u64 volatile maskval ;
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_enable_ioa");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioafp_identify_hrrq;
  ipr_init_ioa_mem(ioa_cfg);
  i = 0;
  goto ldv_47322;
  ldv_47321:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 1U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_47322: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47321;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    writel(526336U, (void volatile *)ioa_cfg->regs.endian_swap_reg);
    tmp = readl((void const volatile *)ioa_cfg->regs.endian_swap_reg);
    int_reg = tmp;
  } else {
  }
  tmp___0 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
  int_reg = tmp___0;
  if ((int )int_reg < 0) {
    writel(469762074U, (void volatile *)ioa_cfg->regs.clr_interrupt_mask_reg32);
    tmp___1 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
    int_reg = tmp___1;
    return (1);
  } else {
  }
  writel(ioa_cfg->doorbell, (void volatile *)ioa_cfg->regs.set_uproc_interrupt_reg32);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    maskval = 2147483648ULL;
    maskval = (unsigned long long )(maskval << 32) | 2617245722ULL;
    writeq((unsigned long )maskval, (void volatile *)ioa_cfg->regs.clr_interrupt_mask_reg);
  } else {
    writel(2617245722U, (void volatile *)ioa_cfg->regs.clr_interrupt_mask_reg32);
  }
  tmp___2 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
  int_reg = tmp___2;
  _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Initializing IOA.\n");
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    ipr_cmd->job_step = & ipr_reset_next_stage;
    return (1);
  } else {
  }
  ipr_cmd->timer.data = (unsigned long )ipr_cmd;
  ipr_cmd->timer.expires = (unsigned long )(ioa_cfg->transop_timeout * 250U) + (unsigned long )jiffies;
  ipr_cmd->timer.function = (void (*)(unsigned long ))(& ipr_oper_timeout);
  ipr_cmd->done = & ipr_reset_ioa_job;
  add_timer(& ipr_cmd->timer);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_enable_ioa");
  } else {
  }
  return (2);
}
}
static int ipr_reset_wait_for_dump(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if ((unsigned int )ioa_cfg->sdt_state == 2U) {
    ioa_cfg->sdt_state = 1;
  } else
  if ((unsigned int )ioa_cfg->sdt_state == 3U) {
    ioa_cfg->sdt_state = 4;
  } else {
  }
  ioa_cfg->dump_timeout = 1U;
  ipr_cmd->job_step = & ipr_reset_alert;
  return (1);
}
}
static void ipr_unit_check_no_data(struct ipr_ioa_cfg *ioa_cfg )
{
  {
  ioa_cfg->errors_logged = ioa_cfg->errors_logged + 1U;
  dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "IOA unit check with no data\n");
  return;
}
}
static void ipr_get_unit_check_buffer(struct ipr_ioa_cfg *ioa_cfg )
{
  unsigned long mailbox ;
  struct ipr_hostrcb *hostrcb ;
  struct ipr_uc_sdt sdt ;
  int rc ;
  int length ;
  u32 ioasc ;
  unsigned int tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  struct list_head const *__mptr ;
  int _min1 ;
  int _min2 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  {
  tmp = readl((void const volatile *)ioa_cfg->ioa_mailbox);
  mailbox = (unsigned long )tmp;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    tmp___0 = ipr_sdt_is_fmt2((u32 )mailbox);
    if (tmp___0 == 0) {
      ipr_unit_check_no_data(ioa_cfg);
      return;
    } else {
    }
  } else {
  }
  memset((void *)(& sdt), 0, 32UL);
  rc = ipr_get_ldump_data_section(ioa_cfg, (u32 )mailbox, (__be32 *)(& sdt), 8U);
  if (rc != 0 || ((int )sdt.entry[0].flags & 32) == 0) {
    ipr_unit_check_no_data(ioa_cfg);
    return;
  } else {
    tmp___1 = __fswab32(sdt.hdr.state);
    if (tmp___1 != 3302286323U) {
      tmp___2 = __fswab32(sdt.hdr.state);
      if (tmp___2 != 3302286322U) {
        ipr_unit_check_no_data(ioa_cfg);
        return;
      } else {
      }
    } else {
    }
  }
  tmp___6 = __fswab32(sdt.hdr.state);
  if (tmp___6 == 3302286323U) {
    tmp___3 = __fswab32(sdt.entry[0].end_token);
    length = (int )tmp___3;
  } else {
    tmp___4 = __fswab32(sdt.entry[0].end_token);
    tmp___5 = __fswab32(sdt.entry[0].start_token);
    length = (int )(tmp___4 - tmp___5) & 268435455;
  }
  __mptr = (struct list_head const *)ioa_cfg->hostrcb_free_q.next;
  hostrcb = (struct ipr_hostrcb *)__mptr + 0xfffffffffffff3c8UL;
  list_del(& hostrcb->queue);
  memset((void *)(& hostrcb->hcam), 0, 3120UL);
  _min1 = length;
  _min2 = 3120;
  tmp___7 = __fswab32(sdt.entry[0].start_token);
  rc = ipr_get_ldump_data_section(ioa_cfg, tmp___7, (__be32 *)(& hostrcb->hcam), (u32 )((unsigned long )(_min1 < _min2 ? _min1 : _min2) / 4UL));
  if (rc == 0) {
    ipr_handle_log_data(ioa_cfg, hostrcb);
    tmp___8 = __fswab32(hostrcb->hcam.u.error.fd_ioasc);
    ioasc = tmp___8;
    if (ioasc == 33849344U && (unsigned int )ioa_cfg->sdt_state == 2U) {
      ioa_cfg->sdt_state = 1;
    } else {
    }
  } else {
    ipr_unit_check_no_data(ioa_cfg);
  }
  list_add_tail(& hostrcb->queue, & ioa_cfg->hostrcb_free_q);
  return;
}
}
static int ipr_reset_get_unit_check_job(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_get_unit_check_job");
  } else {
  }
  ioa_cfg->ioa_unit_checked = 0U;
  ipr_get_unit_check_buffer(ioa_cfg);
  ipr_cmd->job_step = & ipr_reset_alert;
  ipr_reset_start_timer(ipr_cmd, 0UL);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_get_unit_check_job");
  } else {
  }
  return (2);
}
}
static int ipr_reset_restore_cfg_space(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  u32 int_reg ;
  int tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_restore_cfg_space");
  } else {
  }
  (ioa_cfg->pdev)->state_saved = 1U;
  pci_restore_state(ioa_cfg->pdev);
  tmp = ipr_set_pcix_cmd_reg(ioa_cfg);
  if (tmp != 0) {
    ipr_cmd->s.ioasa.hdr.ioasc = 33554448U;
    return (1);
  } else {
  }
  ipr_fail_all_ops(ioa_cfg);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    writel(526336U, (void volatile *)ioa_cfg->regs.endian_swap_reg);
    int_reg = readl((void const volatile *)ioa_cfg->regs.endian_swap_reg);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      ipr_cmd->job_step = & ipr_reset_get_unit_check_job;
      ipr_reset_start_timer(ipr_cmd, 1000UL);
      return (2);
    } else {
      ioa_cfg->ioa_unit_checked = 0U;
      ipr_get_unit_check_buffer(ioa_cfg);
      ipr_cmd->job_step = & ipr_reset_alert;
      ipr_reset_start_timer(ipr_cmd, 0UL);
      return (2);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    ipr_cmd->job_step = & ipr_ioa_bringdown_done;
  } else {
    ipr_cmd->job_step = & ipr_reset_enable_ioa;
    if ((unsigned int )ioa_cfg->sdt_state == 2U) {
      ioa_cfg->sdt_state = 3;
      ioa_cfg->dump_timeout = 0U;
      if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
        ipr_reset_start_timer(ipr_cmd, 10000UL);
      } else {
        ipr_reset_start_timer(ipr_cmd, 3750UL);
      }
      ipr_cmd->job_step = & ipr_reset_wait_for_dump;
      schedule_work(& ioa_cfg->work_q);
      return (2);
    } else {
    }
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_restore_cfg_space");
  } else {
  }
  return (1);
}
}
static int ipr_reset_bist_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_bist_done");
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    pci_cfg_access_unlock(ioa_cfg->pdev);
  } else {
  }
  ioa_cfg->cfg_locked = 0U;
  ipr_cmd->job_step = & ipr_reset_restore_cfg_space;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_bist_done");
  } else {
  }
  return (1);
}
}
static int ipr_reset_start_bist(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  rc = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_start_bist");
  } else {
  }
  if ((unsigned int )((unsigned short )(ioa_cfg->ipr_chip)->bist_method) == 1U) {
    writel(256U, (void volatile *)ioa_cfg->regs.set_uproc_interrupt_reg32);
  } else {
    rc = pci_write_config_byte((struct pci_dev const *)ioa_cfg->pdev, 15, 64);
  }
  if (rc == 0) {
    ipr_cmd->job_step = & ipr_reset_bist_done;
    ipr_reset_start_timer(ipr_cmd, 500UL);
    rc = 2;
  } else {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
      pci_cfg_access_unlock((ipr_cmd->ioa_cfg)->pdev);
    } else {
    }
    ioa_cfg->cfg_locked = 0U;
    ipr_cmd->s.ioasa.hdr.ioasc = 33554448U;
    rc = 1;
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_start_bist");
  } else {
  }
  return (rc);
}
}
static int ipr_reset_slot_reset_done(struct ipr_cmnd *ipr_cmd )
{
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_slot_reset_done");
  } else {
  }
  ipr_cmd->job_step = & ipr_reset_bist_done;
  ipr_reset_start_timer(ipr_cmd, 500UL);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_slot_reset_done");
  } else {
  }
  return (2);
}
}
static void ipr_reset_reset_work(struct work_struct *work )
{
  struct ipr_cmnd *ipr_cmd ;
  struct work_struct const *__mptr ;
  struct ipr_ioa_cfg *ioa_cfg ;
  struct pci_dev *pdev ;
  unsigned long lock_flags ;
  unsigned int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  ipr_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffff9c8UL;
  ioa_cfg = ipr_cmd->ioa_cfg;
  pdev = ioa_cfg->pdev;
  lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_reset_work");
  } else {
  }
  pci_set_pcie_reset_state(pdev, 2);
  tmp = jiffies_to_msecs(125UL);
  msleep(tmp);
  pci_set_pcie_reset_state(pdev, 1);
  ldv_spin_lock();
  if ((unsigned long )ioa_cfg->reset_cmd == (unsigned long )ipr_cmd) {
    ipr_reset_ioa_job(ipr_cmd);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_reset_work");
  } else {
  }
  return;
}
}
static int ipr_reset_slot_reset(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_slot_reset");
  } else {
  }
  __init_work(& ipr_cmd->work, 0);
  __constr_expr_0.counter = 137438953408L;
  ipr_cmd->work.data = __constr_expr_0;
  lockdep_init_map(& ipr_cmd->work.lockdep_map, "(&ipr_cmd->work)", & __key, 0);
  INIT_LIST_HEAD(& ipr_cmd->work.entry);
  ipr_cmd->work.func = & ipr_reset_reset_work;
  queue_work(ioa_cfg->reset_work_q, & ipr_cmd->work);
  ipr_cmd->job_step = & ipr_reset_slot_reset_done;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_slot_reset");
  } else {
  }
  return (2);
}
}
static int ipr_reset_block_config_access_wait(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  bool tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  rc = 1;
  tmp = pci_cfg_access_trylock(ioa_cfg->pdev);
  if ((int )tmp) {
    ioa_cfg->cfg_locked = 1U;
    ipr_cmd->job_step = ioa_cfg->reset;
  } else
  if (ipr_cmd->u.time_left != 0UL) {
    rc = 2;
    ipr_cmd->u.time_left = ipr_cmd->u.time_left - 25UL;
    ipr_reset_start_timer(ipr_cmd, 25UL);
  } else {
    ipr_cmd->job_step = ioa_cfg->reset;
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "Timed out waiting to lock config access. Resetting anyway.\n");
  }
  return (rc);
}
}
static int ipr_reset_block_config_access(struct ipr_cmnd *ipr_cmd )
{
  {
  (ipr_cmd->ioa_cfg)->cfg_locked = 0U;
  ipr_cmd->job_step = & ipr_reset_block_config_access_wait;
  ipr_cmd->u.time_left = 500UL;
  return (1);
}
}
static int ipr_reset_allowed(struct ipr_ioa_cfg *ioa_cfg )
{
  u32 volatile temp_reg ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  temp_reg = tmp;
  return (((unsigned int )temp_reg & 33554432U) == 0U);
}
}
static int ipr_reset_wait_to_start_bist(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  int tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  rc = 2;
  tmp = ipr_reset_allowed(ioa_cfg);
  if (tmp == 0 && ipr_cmd->u.time_left != 0UL) {
    ipr_cmd->u.time_left = ipr_cmd->u.time_left - 25UL;
    ipr_reset_start_timer(ipr_cmd, 25UL);
  } else {
    ipr_cmd->job_step = & ipr_reset_block_config_access;
    rc = 1;
  }
  return (rc);
}
}
static int ipr_reset_alert(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  u16 cmd_reg ;
  int rc ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_alert");
  } else {
  }
  rc = pci_read_config_word((struct pci_dev const *)ioa_cfg->pdev, 4, & cmd_reg);
  if (rc == 0 && ((int )cmd_reg & 2) != 0) {
    ipr_mask_and_clear_interrupts(ioa_cfg, 4294967295U);
    writel(16777216U, (void volatile *)ioa_cfg->regs.set_uproc_interrupt_reg32);
    ipr_cmd->job_step = & ipr_reset_wait_to_start_bist;
  } else {
    ipr_cmd->job_step = & ipr_reset_block_config_access;
  }
  ipr_cmd->u.time_left = 500UL;
  ipr_reset_start_timer(ipr_cmd, 25UL);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_alert");
  } else {
  }
  return (2);
}
}
static int ipr_reset_quiesce_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_quiesce_done");
  } else {
  }
  ipr_cmd->job_step = & ipr_ioa_bringdown_done;
  ipr_mask_and_clear_interrupts(ioa_cfg, 2147483647U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_quiesce_done");
  } else {
  }
  return (1);
}
}
static int ipr_reset_cancel_hcam_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_cmnd *loop_cmd ;
  struct ipr_hrr_queue *hrrq ;
  int rc ;
  int count ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  rc = 1;
  count = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_cancel_hcam_done");
  } else {
  }
  ipr_cmd->job_step = & ipr_reset_quiesce_done;
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  goto ldv_47436;
  ldv_47435:
  spin_lock(& hrrq->_lock);
  __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
  loop_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
  goto ldv_47433;
  ldv_47432:
  count = count + 1;
  ipr_initiate_ioa_reset(ioa_cfg, 256);
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  rc = 2;
  goto ldv_47431;
  __mptr___0 = (struct list_head const *)loop_cmd->queue.next;
  loop_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
  ldv_47433: ;
  if ((unsigned long )(& loop_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
    goto ldv_47432;
  } else {
  }
  ldv_47431:
  spin_unlock(& hrrq->_lock);
  if (count != 0) {
    goto ldv_47434;
  } else {
  }
  hrrq = hrrq + 1;
  ldv_47436: ;
  if ((unsigned long )((struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )ioa_cfg->hrrq_num) > (unsigned long )hrrq) {
    goto ldv_47435;
  } else {
  }
  ldv_47434: ;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_cancel_hcam_done");
  } else {
  }
  return (rc);
}
}
static int ipr_reset_cancel_hcam(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  struct ipr_cmd_pkt *cmd_pkt ;
  struct ipr_cmnd *hcam_cmd ;
  struct ipr_hrr_queue *hrrq ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  rc = 1;
  hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq);
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_cancel_hcam");
  } else {
  }
  ipr_cmd->job_step = & ipr_reset_cancel_hcam_done;
  if ((unsigned int )*((unsigned char *)hrrq + 176UL) == 0U) {
    tmp = list_empty((struct list_head const *)(& ioa_cfg->hostrcb_pending_q));
    if (tmp == 0) {
      __mptr = (struct list_head const *)hrrq->hrrq_pending_q.next;
      hcam_cmd = (struct ipr_cmnd *)__mptr + 0xfffffffffffffac8UL;
      goto ldv_47453;
      ldv_47452: ;
      if ((unsigned int )hcam_cmd->ioarcb.cmd_pkt.cdb[0] != 207U) {
        goto ldv_47450;
      } else {
      }
      ipr_cmd->ioarcb.res_handle = 4294967295U;
      ipr_cmd->ioarcb.cmd_pkt.request_type = 1U;
      cmd_pkt = & ipr_cmd->ioarcb.cmd_pkt;
      cmd_pkt->request_type = 1U;
      cmd_pkt->cdb[0] = 192U;
      cmd_pkt->cdb[1] = 1U;
      cmd_pkt->cdb[10] = (u8 )(hcam_cmd->dma_addr >> 56);
      cmd_pkt->cdb[11] = (u8 )(hcam_cmd->dma_addr >> 48);
      cmd_pkt->cdb[12] = (u8 )(hcam_cmd->dma_addr >> 40);
      cmd_pkt->cdb[13] = (u8 )(hcam_cmd->dma_addr >> 32);
      cmd_pkt->cdb[2] = (u8 )(hcam_cmd->dma_addr >> 24);
      cmd_pkt->cdb[3] = (u8 )(hcam_cmd->dma_addr >> 16);
      cmd_pkt->cdb[4] = (u8 )(hcam_cmd->dma_addr >> 8);
      cmd_pkt->cdb[5] = (u8 )hcam_cmd->dma_addr;
      ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
      rc = 2;
      ipr_cmd->job_step = & ipr_reset_cancel_hcam;
      goto ldv_47451;
      ldv_47450:
      __mptr___0 = (struct list_head const *)hcam_cmd->queue.next;
      hcam_cmd = (struct ipr_cmnd *)__mptr___0 + 0xfffffffffffffac8UL;
      ldv_47453: ;
      if ((unsigned long )(& hcam_cmd->queue) != (unsigned long )(& hrrq->hrrq_pending_q)) {
        goto ldv_47452;
      } else {
      }
      ldv_47451: ;
    } else {
    }
  } else {
    ipr_cmd->job_step = & ipr_reset_alert;
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_cancel_hcam");
  } else {
  }
  return (rc);
}
}
static int ipr_reset_ucode_download_done(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_sglist *sglist ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  sglist = ioa_cfg->ucode_sglist;
  dma_unmap_sg_attrs(& (ioa_cfg->pdev)->dev, (struct scatterlist *)(& sglist->scatterlist),
                     (int )sglist->num_sg, 1, (struct dma_attrs *)0);
  ipr_cmd->job_step = & ipr_reset_alert;
  return (1);
}
}
static int ipr_reset_ucode_download(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct ipr_sglist *sglist ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  sglist = ioa_cfg->ucode_sglist;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_ucode_download");
  } else {
  }
  ipr_cmd->job_step = & ipr_reset_alert;
  if ((unsigned long )sglist == (unsigned long )((struct ipr_sglist *)0)) {
    return (1);
  } else {
  }
  ipr_cmd->ioarcb.res_handle = 4294967295U;
  ipr_cmd->ioarcb.cmd_pkt.request_type = 0U;
  ipr_cmd->ioarcb.cmd_pkt.cdb[0] = 59U;
  ipr_cmd->ioarcb.cmd_pkt.cdb[1] = 5U;
  ipr_cmd->ioarcb.cmd_pkt.cdb[6] = (u8 )((sglist->buffer_len & 16711680U) >> 16);
  ipr_cmd->ioarcb.cmd_pkt.cdb[7] = (u8 )((sglist->buffer_len & 65280U) >> 8);
  ipr_cmd->ioarcb.cmd_pkt.cdb[8] = (u8 )sglist->buffer_len;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    ipr_build_ucode_ioadl64(ipr_cmd, sglist);
  } else {
    ipr_build_ucode_ioadl(ipr_cmd, sglist);
  }
  ipr_cmd->job_step = & ipr_reset_ucode_download_done;
  ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, 450000U);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_ucode_download");
  } else {
  }
  return (2);
}
}
static int ipr_reset_shutdown_ioa(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  enum ipr_shutdown_type shutdown_type ;
  unsigned long timeout ;
  int rc ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  shutdown_type = ipr_cmd->u.shutdown_type;
  rc = 1;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_reset_shutdown_ioa");
  } else {
  }
  if ((unsigned int )shutdown_type == 257U) {
    ipr_cmd->job_step = & ipr_reset_cancel_hcam;
  } else
  if ((unsigned int )shutdown_type != 256U && (unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    ipr_cmd->ioarcb.res_handle = 4294967295U;
    ipr_cmd->ioarcb.cmd_pkt.request_type = 1U;
    ipr_cmd->ioarcb.cmd_pkt.cdb[0] = 247U;
    ipr_cmd->ioarcb.cmd_pkt.cdb[1] = (u8 )shutdown_type;
    if ((unsigned int )shutdown_type == 0U) {
      timeout = ipr_fastfail != 0U ? 15000UL : 150000UL;
    } else
    if ((unsigned int )shutdown_type == 64U) {
      timeout = ipr_fastfail != 0U ? 2500UL : 7500UL;
    } else
    if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U && ipr_dual_ioa_raid != 0U) {
      timeout = 30000UL;
    } else {
      timeout = 2500UL;
    }
    ipr_do_req(ipr_cmd, & ipr_reset_ioa_job, & ipr_timeout, (u32 )timeout);
    rc = 2;
    ipr_cmd->job_step = & ipr_reset_ucode_download;
  } else {
    ipr_cmd->job_step = & ipr_reset_alert;
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_reset_shutdown_ioa");
  } else {
  }
  return (rc);
}
}
static void ipr_reset_ioa_job(struct ipr_cmnd *ipr_cmd )
{
  u32 rc ;
  u32 ioasc ;
  struct ipr_ioa_cfg *ioa_cfg ;
  __u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  ldv_47479:
  tmp = __fswab32(ipr_cmd->s.ioasa.hdr.ioasc);
  ioasc = tmp;
  if ((unsigned long )ioa_cfg->reset_cmd != (unsigned long )ipr_cmd) {
    list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
    return;
  } else {
  }
  if (ioasc >> 24 != 0U) {
    tmp___0 = (*(ipr_cmd->job_step_failed))(ipr_cmd);
    rc = (u32 )tmp___0;
    if (rc == 2U) {
      return;
    } else {
    }
  } else {
  }
  ipr_reinit_ipr_cmnd(ipr_cmd);
  ipr_cmd->job_step_failed = & ipr_reset_cmd_failed;
  tmp___1 = (*(ipr_cmd->job_step))(ipr_cmd);
  rc = (u32 )tmp___1;
  if (rc == 1U) {
    goto ldv_47479;
  } else {
  }
  return;
}
}
static void _ipr_initiate_ioa_reset(struct ipr_ioa_cfg *ioa_cfg , int (*job_step)(struct ipr_cmnd * ) ,
                                    enum ipr_shutdown_type shutdown_type )
{
  struct ipr_cmnd *ipr_cmd ;
  int i ;
  {
  ioa_cfg->in_reset_reload = 1U;
  i = 0;
  goto ldv_47490;
  ldv_47489:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_cmds = 0U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_47490: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47489;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
    scsi_block_requests(ioa_cfg->host);
  } else {
  }
  ipr_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
  ioa_cfg->reset_cmd = ipr_cmd;
  ipr_cmd->job_step = job_step;
  ipr_cmd->u.shutdown_type = shutdown_type;
  ipr_reset_ioa_job(ipr_cmd);
  return;
}
}
static void ipr_initiate_ioa_reset(struct ipr_ioa_cfg *ioa_cfg , enum ipr_shutdown_type shutdown_type )
{
  int i ;
  u16 tmp ;
  {
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    if ((unsigned int )ioa_cfg->sdt_state == 2U) {
      ioa_cfg->sdt_state = 1;
    } else
    if ((unsigned int )ioa_cfg->sdt_state == 3U) {
      ioa_cfg->sdt_state = 4;
    } else {
    }
  } else {
  }
  tmp = ioa_cfg->reset_retries;
  ioa_cfg->reset_retries = (u16 )((int )ioa_cfg->reset_retries + 1);
  if ((unsigned int )tmp > 2U) {
    dev_err((struct device const *)(& (ioa_cfg->pdev)->dev), "IOA taken offline - error recovery failed\n");
    ioa_cfg->reset_retries = 0U;
    i = 0;
    goto ldv_47498;
    ldv_47497:
    spin_lock(& ioa_cfg->hrrq[i]._lock);
    ioa_cfg->hrrq[i].ioa_is_dead = 1U;
    spin_unlock(& ioa_cfg->hrrq[i]._lock);
    i = i + 1;
    ldv_47498: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_47497;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
      ioa_cfg->reset_cmd = (struct ipr_cmnd *)0;
      ioa_cfg->in_reset_reload = 0U;
      ipr_fail_all_ops(ioa_cfg);
      __wake_up(& ioa_cfg->reset_wait_q, 3U, 0, (void *)0);
      if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U) {
        spin_unlock_irq((ioa_cfg->host)->host_lock);
        scsi_unblock_requests(ioa_cfg->host);
        spin_lock_irq((ioa_cfg->host)->host_lock);
      } else {
      }
      return;
    } else {
      ioa_cfg->in_ioa_bringdown = 1U;
      shutdown_type = 256;
    }
  } else {
  }
  _ipr_initiate_ioa_reset(ioa_cfg, & ipr_reset_shutdown_ioa, shutdown_type);
  return;
}
}
static int ipr_reset_freeze(struct ipr_cmnd *ipr_cmd )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int i ;
  {
  ioa_cfg = ipr_cmd->ioa_cfg;
  i = 0;
  goto ldv_47506;
  ldv_47505:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 0U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_47506: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47505;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_pending_q);
  ipr_cmd->done = & ipr_reset_ioa_job;
  return (2);
}
}
static pci_ers_result_t ipr_pci_mmio_enabled(struct pci_dev *pdev )
{
  unsigned long flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  {
  flags = 0UL;
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    pci_save_state(pdev);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  return (3U);
}
}
static void ipr_pci_frozen(struct pci_dev *pdev )
{
  unsigned long flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  {
  flags = 0UL;
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    _ipr_initiate_ioa_reset(ioa_cfg, & ipr_reset_freeze, 256);
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  return;
}
}
static pci_ers_result_t ipr_pci_slot_reset(struct pci_dev *pdev )
{
  unsigned long flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  {
  flags = 0UL;
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
      ipr_initiate_ioa_reset(ioa_cfg, 256);
    } else {
      _ipr_initiate_ioa_reset(ioa_cfg, & ipr_reset_restore_cfg_space, 256);
    }
  } else {
    __wake_up(& ioa_cfg->eeh_wait_q, 3U, 0, (void *)0);
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  return (5U);
}
}
static void ipr_pci_perm_failure(struct pci_dev *pdev )
{
  unsigned long flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  int i ;
  {
  flags = 0UL;
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    if ((unsigned int )ioa_cfg->sdt_state == 1U) {
      ioa_cfg->sdt_state = 4;
    } else {
    }
    ioa_cfg->reset_retries = 2U;
    ioa_cfg->in_ioa_bringdown = 1U;
    i = 0;
    goto ldv_47530;
    ldv_47529:
    spin_lock(& ioa_cfg->hrrq[i]._lock);
    ioa_cfg->hrrq[i].allow_cmds = 0U;
    spin_unlock(& ioa_cfg->hrrq[i]._lock);
    i = i + 1;
    ldv_47530: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_47529;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    ipr_initiate_ioa_reset(ioa_cfg, 256);
  } else {
    __wake_up(& ioa_cfg->eeh_wait_q, 3U, 0, (void *)0);
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  return;
}
}
static pci_ers_result_t ipr_pci_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  {
  switch (state) {
  case 2U:
  ipr_pci_frozen(pdev);
  return (2U);
  case 3U:
  ipr_pci_perm_failure(pdev);
  return (4U);
  default: ;
  goto ldv_47539;
  }
  ldv_47539: ;
  return (3U);
}
}
static int ipr_probe_ioa_part2(struct ipr_ioa_cfg *ioa_cfg )
{
  int rc ;
  unsigned long host_lock_flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  rc = 0;
  host_lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_probe_ioa_part2");
  } else {
  }
  ldv_spin_lock();
  descriptor.modname = "ipr";
  descriptor.function = "ipr_probe_ioa_part2";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c";
  descriptor.format = "ioa_cfg adx: 0x%p\n";
  descriptor.lineno = 9123U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (ioa_cfg->pdev)->dev),
                      "ioa_cfg adx: 0x%p\n", ioa_cfg);
  } else {
  }
  ioa_cfg->probe_done = 1U;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    ioa_cfg->needs_hard_reset = 0U;
    ipr_initiate_ioa_reset(ioa_cfg, 256);
  } else {
    _ipr_initiate_ioa_reset(ioa_cfg, & ipr_reset_enable_ioa, 256);
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, host_lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_probe_ioa_part2");
  } else {
  }
  return (rc);
}
}
static void ipr_free_cmd_blks(struct ipr_ioa_cfg *ioa_cfg )
{
  int i ;
  {
  if ((unsigned long )ioa_cfg->ipr_cmnd_list != (unsigned long )((struct ipr_cmnd **)0)) {
    i = 0;
    goto ldv_47552;
    ldv_47551: ;
    if ((unsigned long )*(ioa_cfg->ipr_cmnd_list + (unsigned long )i) != (unsigned long )((struct ipr_cmnd *)0)) {
      dma_pool_free(ioa_cfg->ipr_cmd_pool, (void *)*(ioa_cfg->ipr_cmnd_list + (unsigned long )i),
                    *(ioa_cfg->ipr_cmnd_list_dma + (unsigned long )i));
    } else {
    }
    *(ioa_cfg->ipr_cmnd_list + (unsigned long )i) = (struct ipr_cmnd *)0;
    i = i + 1;
    ldv_47552: ;
    if ((u32 )i < ioa_cfg->max_cmds + 16U) {
      goto ldv_47551;
    } else {
    }
  } else {
  }
  if ((unsigned long )ioa_cfg->ipr_cmd_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(ioa_cfg->ipr_cmd_pool);
  } else {
  }
  kfree((void const *)ioa_cfg->ipr_cmnd_list);
  kfree((void const *)ioa_cfg->ipr_cmnd_list_dma);
  ioa_cfg->ipr_cmnd_list = (struct ipr_cmnd **)0;
  ioa_cfg->ipr_cmnd_list_dma = (dma_addr_t *)0ULL;
  ioa_cfg->ipr_cmd_pool = (struct dma_pool *)0;
  return;
}
}
static void ipr_free_mem(struct ipr_ioa_cfg *ioa_cfg )
{
  int i ;
  {
  kfree((void const *)ioa_cfg->res_entries);
  dma_free_attrs(& (ioa_cfg->pdev)->dev, 472UL, (void *)ioa_cfg->vpd_cbs, ioa_cfg->vpd_cbs_dma,
                 (struct dma_attrs *)0);
  ipr_free_cmd_blks(ioa_cfg);
  i = 0;
  goto ldv_47559;
  ldv_47558:
  dma_free_attrs(& (ioa_cfg->pdev)->dev, (unsigned long )ioa_cfg->hrrq[i].size * 4UL,
                 (void *)ioa_cfg->hrrq[i].host_rrq, ioa_cfg->hrrq[i].host_rrq_dma,
                 (struct dma_attrs *)0);
  i = i + 1;
  ldv_47559: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47558;
  } else {
  }
  dma_free_attrs(& (ioa_cfg->pdev)->dev, (size_t )ioa_cfg->cfg_table_size, (void *)ioa_cfg->u.cfg_table,
                 ioa_cfg->cfg_table_dma, (struct dma_attrs *)0);
  i = 0;
  goto ldv_47562;
  ldv_47561:
  dma_free_attrs(& (ioa_cfg->pdev)->dev, 3200UL, (void *)ioa_cfg->hostrcb[i], ioa_cfg->hostrcb_dma[i],
                 (struct dma_attrs *)0);
  i = i + 1;
  ldv_47562: ;
  if (i <= 3) {
    goto ldv_47561;
  } else {
  }
  ipr_free_dump(ioa_cfg);
  kfree((void const *)ioa_cfg->trace);
  return;
}
}
static void ipr_free_irqs(struct ipr_ioa_cfg *ioa_cfg )
{
  struct pci_dev *pdev ;
  int i ;
  {
  pdev = ioa_cfg->pdev;
  if ((unsigned int )ioa_cfg->intr_flag == 1U || (unsigned int )ioa_cfg->intr_flag == 2U) {
    i = 0;
    goto ldv_47570;
    ldv_47569:
    ldv_free_irq_39((unsigned int )ioa_cfg->vectors_info[i].vec, (void *)(& ioa_cfg->hrrq) + (unsigned long )i);
    i = i + 1;
    ldv_47570: ;
    if ((unsigned int )i < ioa_cfg->nvectors) {
      goto ldv_47569;
    } else {
    }
  } else {
    ldv_free_irq_40(pdev->irq, (void *)(& ioa_cfg->hrrq));
  }
  if ((unsigned int )ioa_cfg->intr_flag == 1U) {
    pci_disable_msi(pdev);
    ioa_cfg->intr_flag = (unsigned int )ioa_cfg->intr_flag & 65534U;
  } else
  if ((unsigned int )ioa_cfg->intr_flag == 2U) {
    pci_disable_msix(pdev);
    ioa_cfg->intr_flag = (unsigned int )ioa_cfg->intr_flag & 65533U;
  } else {
  }
  return;
}
}
static void ipr_free_all_resources(struct ipr_ioa_cfg *ioa_cfg )
{
  struct pci_dev *pdev ;
  {
  pdev = ioa_cfg->pdev;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_free_all_resources");
  } else {
  }
  ipr_free_irqs(ioa_cfg);
  if ((unsigned long )ioa_cfg->reset_work_q != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_41(ioa_cfg->reset_work_q);
  } else {
  }
  iounmap((void volatile *)ioa_cfg->hdw_dma_regs);
  pci_release_regions(pdev);
  ipr_free_mem(ioa_cfg);
  scsi_host_put(ioa_cfg->host);
  pci_disable_device(pdev);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_free_all_resources");
  } else {
  }
  return;
}
}
static int ipr_alloc_cmd_blks(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioarcb *ioarcb ;
  dma_addr_t dma_addr ;
  int i ;
  int entries_each_hrrq ;
  int hrrq_id ;
  void *tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  __u64 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  __u64 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  {
  hrrq_id = 0;
  ioa_cfg->ipr_cmd_pool = dma_pool_create("ipr", & (ioa_cfg->pdev)->dev, 1872UL, 512UL,
                                          0UL);
  if ((unsigned long )ioa_cfg->ipr_cmd_pool == (unsigned long )((struct dma_pool *)0)) {
    return (-12);
  } else {
  }
  tmp = kcalloc((size_t )(ioa_cfg->max_cmds + 16U), 8UL, 208U);
  ioa_cfg->ipr_cmnd_list = (struct ipr_cmnd **)tmp;
  tmp___0 = kcalloc((size_t )(ioa_cfg->max_cmds + 16U), 8UL, 208U);
  ioa_cfg->ipr_cmnd_list_dma = (dma_addr_t *)tmp___0;
  if ((unsigned long )ioa_cfg->ipr_cmnd_list == (unsigned long )((struct ipr_cmnd **)0) || (unsigned long )ioa_cfg->ipr_cmnd_list_dma == (unsigned long )((dma_addr_t *)0ULL)) {
    ipr_free_cmd_blks(ioa_cfg);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_47587;
  ldv_47586: ;
  if (ioa_cfg->hrrq_num > 1U) {
    if (i == 0) {
      entries_each_hrrq = 16;
      ioa_cfg->hrrq[i].min_cmd_id = 0U;
      ioa_cfg->hrrq[i].max_cmd_id = (u32 )(entries_each_hrrq + -1);
    } else {
      entries_each_hrrq = (int )(ioa_cfg->max_cmds / (ioa_cfg->hrrq_num - 1U));
      ioa_cfg->hrrq[i].min_cmd_id = (u32 )((i + -1) * entries_each_hrrq + 16);
      ioa_cfg->hrrq[i].max_cmd_id = (u32 )(i * entries_each_hrrq + 15);
    }
  } else {
    entries_each_hrrq = (int )(ioa_cfg->max_cmds + 16U);
    ioa_cfg->hrrq[i].min_cmd_id = 0U;
    ioa_cfg->hrrq[i].max_cmd_id = (u32 )(entries_each_hrrq + -1);
  }
  ioa_cfg->hrrq[i].size = (u32 )entries_each_hrrq;
  i = i + 1;
  ldv_47587: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47586;
  } else {
  }
  tmp___1 = ldv__builtin_expect(ioa_cfg->hrrq_num == 0U, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c"),
                         "i" (9317), "i" (12UL));
    ldv_47589: ;
    goto ldv_47589;
  } else {
  }
  i = (int )((ioa_cfg->max_cmds - ioa_cfg->hrrq[ioa_cfg->hrrq_num - 1U].max_cmd_id) + 15U);
  if (i > 0) {
    ioa_cfg->hrrq[ioa_cfg->hrrq_num - 1U].size = ioa_cfg->hrrq[ioa_cfg->hrrq_num - 1U].size + (u32 )i;
    ioa_cfg->hrrq[ioa_cfg->hrrq_num - 1U].max_cmd_id = ioa_cfg->hrrq[ioa_cfg->hrrq_num - 1U].max_cmd_id + (u32 )i;
  } else {
  }
  i = 0;
  goto ldv_47591;
  ldv_47590:
  tmp___2 = ldv_dma_pool_alloc_42(ioa_cfg->ipr_cmd_pool, 208U, & dma_addr);
  ipr_cmd = (struct ipr_cmnd *)tmp___2;
  if ((unsigned long )ipr_cmd == (unsigned long )((struct ipr_cmnd *)0)) {
    ipr_free_cmd_blks(ioa_cfg);
    return (-12);
  } else {
  }
  memset((void *)ipr_cmd, 0, 1872UL);
  *(ioa_cfg->ipr_cmnd_list + (unsigned long )i) = ipr_cmd;
  *(ioa_cfg->ipr_cmnd_list_dma + (unsigned long )i) = dma_addr;
  ioarcb = & ipr_cmd->ioarcb;
  ipr_cmd->dma_addr = dma_addr;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___3 = __fswab64(dma_addr);
    ioarcb->a.ioarcb_host_pci_addr64 = tmp___3;
  } else {
    tmp___4 = __fswab32((__u32 )dma_addr);
    ioarcb->a.ioarcb_host_pci_addr = tmp___4;
  }
  tmp___5 = __fswab32((__u32 )(i << 2));
  ioarcb->host_response_handle = tmp___5;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    tmp___6 = __fswab64(dma_addr + 128ULL);
    ioarcb->u.sis64_addr_data.data_ioadl_addr = tmp___6;
    tmp___7 = __fswab64(dma_addr + 1184ULL);
    ioarcb->u.sis64_addr_data.ioasa_host_pci_addr = tmp___7;
  } else {
    tmp___8 = __fswab32((__u32 )dma_addr + 128U);
    ioarcb->write_ioadl_addr = tmp___8;
    ioarcb->read_ioadl_addr = ioarcb->write_ioadl_addr;
    tmp___9 = __fswab32((__u32 )dma_addr + 1184U);
    ioarcb->ioasa_host_pci_addr = tmp___9;
  }
  ioarcb->ioasa_len = 36864U;
  ipr_cmd->cmd_index = (u16 )i;
  ipr_cmd->ioa_cfg = ioa_cfg;
  ipr_cmd->sense_buffer_dma = dma_addr + 1706ULL;
  ipr_cmd->ioarcb.cmd_pkt.hrrq_id = (u8 )hrrq_id;
  ipr_cmd->hrrq = (struct ipr_hrr_queue *)(& ioa_cfg->hrrq) + (unsigned long )hrrq_id;
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  if ((u32 )i >= ioa_cfg->hrrq[hrrq_id].max_cmd_id) {
    hrrq_id = hrrq_id + 1;
  } else {
  }
  i = i + 1;
  ldv_47591: ;
  if ((u32 )i < ioa_cfg->max_cmds + 16U) {
    goto ldv_47590;
  } else {
  }
  return (0);
}
}
static int ipr_alloc_mem(struct ipr_ioa_cfg *ioa_cfg )
{
  struct pci_dev *pdev ;
  int i ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  pdev = ioa_cfg->pdev;
  rc = -12;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_alloc_mem");
  } else {
  }
  tmp = kzalloc((unsigned long )ioa_cfg->max_devs_supported * 144UL, 208U);
  ioa_cfg->res_entries = (struct ipr_resource_entry *)tmp;
  if ((unsigned long )ioa_cfg->res_entries == (unsigned long )((struct ipr_resource_entry *)0)) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_47602;
  ldv_47601:
  list_add_tail(& (ioa_cfg->res_entries + (unsigned long )i)->queue, & ioa_cfg->free_res_q);
  (ioa_cfg->res_entries + (unsigned long )i)->ioa_cfg = ioa_cfg;
  i = i + 1;
  ldv_47602: ;
  if ((u32 )i < ioa_cfg->max_devs_supported) {
    goto ldv_47601;
  } else {
  }
  tmp___0 = dma_alloc_attrs(& pdev->dev, 472UL, & ioa_cfg->vpd_cbs_dma, 208U, (struct dma_attrs *)0);
  ioa_cfg->vpd_cbs = (struct ipr_misc_cbs *)tmp___0;
  if ((unsigned long )ioa_cfg->vpd_cbs == (unsigned long )((struct ipr_misc_cbs *)0)) {
    goto out_free_res_entries;
  } else {
  }
  tmp___1 = ipr_alloc_cmd_blks(ioa_cfg);
  if (tmp___1 != 0) {
    goto out_free_vpd_cbs;
  } else {
  }
  i = 0;
  goto ldv_47611;
  ldv_47610:
  tmp___2 = dma_alloc_attrs(& pdev->dev, (unsigned long )ioa_cfg->hrrq[i].size * 4UL,
                            & ioa_cfg->hrrq[i].host_rrq_dma, 208U, (struct dma_attrs *)0);
  ioa_cfg->hrrq[i].host_rrq = (__be32 *)tmp___2;
  if ((unsigned long )ioa_cfg->hrrq[i].host_rrq == (unsigned long )((__be32 *)0U)) {
    goto ldv_47607;
    ldv_47606:
    dma_free_attrs(& pdev->dev, (unsigned long )ioa_cfg->hrrq[i].size * 4UL, (void *)ioa_cfg->hrrq[i].host_rrq,
                   ioa_cfg->hrrq[i].host_rrq_dma, (struct dma_attrs *)0);
    ldv_47607:
    i = i - 1;
    if (i > 0) {
      goto ldv_47606;
    } else {
    }
    goto out_ipr_free_cmd_blocks;
  } else {
  }
  ioa_cfg->hrrq[i].ioa_cfg = ioa_cfg;
  i = i + 1;
  ldv_47611: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47610;
  } else {
  }
  tmp___3 = dma_alloc_attrs(& pdev->dev, (size_t )ioa_cfg->cfg_table_size, & ioa_cfg->cfg_table_dma,
                            208U, (struct dma_attrs *)0);
  ioa_cfg->u.cfg_table = (struct ipr_config_table *)tmp___3;
  if ((unsigned long )ioa_cfg->u.cfg_table == (unsigned long )((struct ipr_config_table *)0)) {
    goto out_free_host_rrq;
  } else {
  }
  i = 0;
  goto ldv_47616;
  ldv_47615:
  tmp___4 = dma_alloc_attrs(& pdev->dev, 3200UL, (dma_addr_t *)(& ioa_cfg->hostrcb_dma) + (unsigned long )i,
                            208U, (struct dma_attrs *)0);
  ioa_cfg->hostrcb[i] = (struct ipr_hostrcb *)tmp___4;
  if ((unsigned long )ioa_cfg->hostrcb[i] == (unsigned long )((struct ipr_hostrcb *)0)) {
    goto out_free_hostrcb_dma;
  } else {
  }
  (ioa_cfg->hostrcb[i])->hostrcb_dma = ioa_cfg->hostrcb_dma[i];
  (ioa_cfg->hostrcb[i])->ioa_cfg = ioa_cfg;
  list_add_tail(& (ioa_cfg->hostrcb[i])->queue, & ioa_cfg->hostrcb_free_q);
  i = i + 1;
  ldv_47616: ;
  if (i <= 3) {
    goto ldv_47615;
  } else {
  }
  tmp___5 = kzalloc(4096UL, 208U);
  ioa_cfg->trace = (struct ipr_trace_entry *)tmp___5;
  if ((unsigned long )ioa_cfg->trace == (unsigned long )((struct ipr_trace_entry *)0)) {
    goto out_free_hostrcb_dma;
  } else {
  }
  rc = 0;
  out: ;
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_alloc_mem");
  } else {
  }
  return (rc);
  out_free_hostrcb_dma: ;
  goto ldv_47619;
  ldv_47618:
  dma_free_attrs(& pdev->dev, 3200UL, (void *)ioa_cfg->hostrcb[i], ioa_cfg->hostrcb_dma[i],
                 (struct dma_attrs *)0);
  ldv_47619:
  tmp___6 = i;
  i = i - 1;
  if (tmp___6 > 0) {
    goto ldv_47618;
  } else {
  }
  dma_free_attrs(& pdev->dev, (size_t )ioa_cfg->cfg_table_size, (void *)ioa_cfg->u.cfg_table,
                 ioa_cfg->cfg_table_dma, (struct dma_attrs *)0);
  out_free_host_rrq:
  i = 0;
  goto ldv_47622;
  ldv_47621:
  dma_free_attrs(& pdev->dev, (unsigned long )ioa_cfg->hrrq[i].size * 4UL, (void *)ioa_cfg->hrrq[i].host_rrq,
                 ioa_cfg->hrrq[i].host_rrq_dma, (struct dma_attrs *)0);
  i = i + 1;
  ldv_47622: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47621;
  } else {
  }
  out_ipr_free_cmd_blocks:
  ipr_free_cmd_blks(ioa_cfg);
  out_free_vpd_cbs:
  dma_free_attrs(& pdev->dev, 472UL, (void *)ioa_cfg->vpd_cbs, ioa_cfg->vpd_cbs_dma,
                 (struct dma_attrs *)0);
  out_free_res_entries:
  kfree((void const *)ioa_cfg->res_entries);
  goto out;
}
}
static void ipr_initialize_bus_attr(struct ipr_ioa_cfg *ioa_cfg )
{
  int i ;
  {
  i = 0;
  goto ldv_47631;
  ldv_47630:
  ioa_cfg->bus_attr[i].bus = (u8 )i;
  ioa_cfg->bus_attr[i].qas_enabled = 0U;
  ioa_cfg->bus_attr[i].bus_width = 16U;
  if (ipr_max_speed <= 2U) {
    ioa_cfg->bus_attr[i].max_xfer_rate = (u32 )ipr_max_bus_speeds[ipr_max_speed];
  } else {
    ioa_cfg->bus_attr[i].max_xfer_rate = 800U;
  }
  i = i + 1;
  ldv_47631: ;
  if (i <= 15) {
    goto ldv_47630;
  } else {
  }
  return;
}
}
static void ipr_init_regs(struct ipr_ioa_cfg *ioa_cfg )
{
  struct ipr_interrupt_offsets const *p ;
  struct ipr_interrupts *t ;
  void *base ;
  {
  p = & (ioa_cfg->chip_cfg)->regs;
  t = & ioa_cfg->regs;
  base = ioa_cfg->hdw_dma_regs;
  t->set_interrupt_mask_reg = base + p->set_interrupt_mask_reg;
  t->clr_interrupt_mask_reg = base + p->clr_interrupt_mask_reg;
  t->clr_interrupt_mask_reg32 = base + p->clr_interrupt_mask_reg32;
  t->sense_interrupt_mask_reg = base + p->sense_interrupt_mask_reg;
  t->sense_interrupt_mask_reg32 = base + p->sense_interrupt_mask_reg32;
  t->clr_interrupt_reg = base + p->clr_interrupt_reg;
  t->clr_interrupt_reg32 = base + p->clr_interrupt_reg32;
  t->sense_interrupt_reg = base + p->sense_interrupt_reg;
  t->sense_interrupt_reg32 = base + p->sense_interrupt_reg32;
  t->ioarrin_reg = base + p->ioarrin_reg;
  t->sense_uproc_interrupt_reg = base + p->sense_uproc_interrupt_reg;
  t->sense_uproc_interrupt_reg32 = base + p->sense_uproc_interrupt_reg32;
  t->set_uproc_interrupt_reg = base + p->set_uproc_interrupt_reg;
  t->set_uproc_interrupt_reg32 = base + p->set_uproc_interrupt_reg32;
  t->clr_uproc_interrupt_reg = base + p->clr_uproc_interrupt_reg;
  t->clr_uproc_interrupt_reg32 = base + p->clr_uproc_interrupt_reg32;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    t->init_feedback_reg = base + p->init_feedback_reg;
    t->dump_addr_reg = base + p->dump_addr_reg;
    t->dump_data_reg = base + p->dump_data_reg;
    t->endian_swap_reg = base + p->endian_swap_reg;
  } else {
  }
  return;
}
}
static void ipr_init_ioa_cfg(struct ipr_ioa_cfg *ioa_cfg , struct Scsi_Host *host ,
                             struct pci_dev *pdev )
{
  int i ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  {
  ioa_cfg->host = host;
  ioa_cfg->pdev = pdev;
  ioa_cfg->log_level = (u8 )ipr_log_level;
  ioa_cfg->doorbell = 2189426688U;
  sprintf((char *)(& ioa_cfg->eye_catcher), "iprcfg");
  sprintf((char *)(& ioa_cfg->trace_start), "trace");
  sprintf((char *)(& ioa_cfg->cfg_table_start), "cfg");
  sprintf((char *)(& ioa_cfg->resource_table_label), "res_tbl");
  sprintf((char *)(& ioa_cfg->ipr_hcam_label), "hcams");
  sprintf((char *)(& ioa_cfg->ipr_cmd_label), "ipr_cmd");
  INIT_LIST_HEAD(& ioa_cfg->hostrcb_free_q);
  INIT_LIST_HEAD(& ioa_cfg->hostrcb_pending_q);
  INIT_LIST_HEAD(& ioa_cfg->free_res_q);
  INIT_LIST_HEAD(& ioa_cfg->used_res_q);
  __init_work(& ioa_cfg->work_q, 0);
  __constr_expr_0.counter = 137438953408L;
  ioa_cfg->work_q.data = __constr_expr_0;
  lockdep_init_map(& ioa_cfg->work_q.lockdep_map, "(&ioa_cfg->work_q)", & __key, 0);
  INIT_LIST_HEAD(& ioa_cfg->work_q.entry);
  ioa_cfg->work_q.func = & ipr_worker_thread;
  __init_waitqueue_head(& ioa_cfg->reset_wait_q, "&ioa_cfg->reset_wait_q", & __key___0);
  __init_waitqueue_head(& ioa_cfg->msi_wait_q, "&ioa_cfg->msi_wait_q", & __key___1);
  __init_waitqueue_head(& ioa_cfg->eeh_wait_q, "&ioa_cfg->eeh_wait_q", & __key___2);
  ioa_cfg->sdt_state = 0;
  ipr_initialize_bus_attr(ioa_cfg);
  ioa_cfg->max_devs_supported = ipr_max_devs;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    host->max_id = 1024U;
    host->max_lun = 4294967295ULL;
    if (ipr_max_devs > 4096U) {
      ioa_cfg->max_devs_supported = 4096U;
    } else {
    }
    ioa_cfg->cfg_table_size = ioa_cfg->max_devs_supported * 128U + 16U;
  } else {
    host->max_id = 256U;
    host->max_lun = 256ULL;
    if (ipr_max_devs > 192U) {
      ioa_cfg->max_devs_supported = 192U;
    } else {
    }
    ioa_cfg->cfg_table_size = ioa_cfg->max_devs_supported * 64U + 4U;
  }
  host->max_channel = 255U;
  host->unique_id = host->host_no;
  host->max_cmd_len = 16U;
  host->can_queue = (int )ioa_cfg->max_cmds;
  pci_set_drvdata(pdev, (void *)ioa_cfg);
  i = 0;
  goto ldv_47654;
  ldv_47653:
  INIT_LIST_HEAD(& ioa_cfg->hrrq[i].hrrq_free_q);
  INIT_LIST_HEAD(& ioa_cfg->hrrq[i].hrrq_pending_q);
  spinlock_check(& ioa_cfg->hrrq[i]._lock);
  __raw_spin_lock_init(& ioa_cfg->hrrq[i]._lock.__annonCompField18.rlock, "&(&ioa_cfg->hrrq[i]._lock)->rlock",
                       & __key___3);
  if (i == 0) {
    ioa_cfg->hrrq[i].lock = (ioa_cfg->host)->host_lock;
  } else {
    ioa_cfg->hrrq[i].lock = & ioa_cfg->hrrq[i]._lock;
  }
  i = i + 1;
  ldv_47654: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_47653;
  } else {
  }
  return;
}
}
static struct ipr_chip_t const *ipr_get_chip_info(struct pci_device_id const *dev_id )
{
  int i ;
  {
  i = 0;
  goto ldv_47663;
  ldv_47662: ;
  if ((unsigned int )ipr_chip[i].vendor == (unsigned int )dev_id->vendor && (unsigned int )ipr_chip[i].device == (unsigned int )dev_id->device) {
    return ((struct ipr_chip_t const *)(& ipr_chip) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_47663: ;
  if ((unsigned int )i <= 8U) {
    goto ldv_47662;
  } else {
  }
  return ((struct ipr_chip_t const *)0);
}
}
static void ipr_wait_for_pci_err_recovery(struct ipr_ioa_cfg *ioa_cfg )
{
  struct pci_dev *pdev ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  int tmp___0 ;
  bool __cond___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pdev = ioa_cfg->pdev;
  tmp___2 = pci_channel_offline(pdev);
  if (tmp___2 != 0) {
    __ret = 30000L;
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                  9656, 0);
    tmp___1 = pci_channel_offline(pdev);
    __cond___0 = tmp___1 == 0;
    if ((int )__cond___0 && __ret == 0L) {
      __ret = 1L;
    } else {
    }
    if (((int )__cond___0 || __ret == 0L) == 0) {
      __ret___0 = 30000L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_47679:
      tmp = prepare_to_wait_event(& ioa_cfg->eeh_wait_q, & __wait, 2);
      __int = tmp;
      tmp___0 = pci_channel_offline(pdev);
      __cond = tmp___0 == 0;
      if ((int )__cond && __ret___0 == 0L) {
        __ret___0 = 1L;
      } else {
      }
      if (((int )__cond || __ret___0 == 0L) != 0) {
        goto ldv_47678;
      } else {
      }
      __ret___0 = schedule_timeout(__ret___0);
      goto ldv_47679;
      ldv_47678:
      finish_wait(& ioa_cfg->eeh_wait_q, & __wait);
      __ret = __ret___0;
    } else {
    }
    pci_restore_state(pdev);
  } else {
  }
  return;
}
}
static int ipr_enable_msix(struct ipr_ioa_cfg *ioa_cfg )
{
  struct msix_entry entries[16U] ;
  int i ;
  int vectors ;
  {
  i = 0;
  goto ldv_47691;
  ldv_47690:
  entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_47691: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_47690;
  } else {
  }
  vectors = pci_enable_msix_range(ioa_cfg->pdev, (struct msix_entry *)(& entries),
                                  1, (int )ipr_number_of_msix);
  if (vectors < 0) {
    ipr_wait_for_pci_err_recovery(ioa_cfg);
    return (vectors);
  } else {
  }
  i = 0;
  goto ldv_47694;
  ldv_47693:
  ioa_cfg->vectors_info[i].vec = (unsigned short )entries[i].vector;
  i = i + 1;
  ldv_47694: ;
  if (i < vectors) {
    goto ldv_47693;
  } else {
  }
  ioa_cfg->nvectors = (unsigned int )vectors;
  return (0);
}
}
static int ipr_enable_msi(struct ipr_ioa_cfg *ioa_cfg )
{
  int i ;
  int vectors ;
  {
  vectors = pci_enable_msi_range(ioa_cfg->pdev, 1, (int )ipr_number_of_msix);
  if (vectors < 0) {
    ipr_wait_for_pci_err_recovery(ioa_cfg);
    return (vectors);
  } else {
  }
  i = 0;
  goto ldv_47702;
  ldv_47701:
  ioa_cfg->vectors_info[i].vec = (int )((unsigned short )(ioa_cfg->pdev)->irq) + (int )((unsigned short )i);
  i = i + 1;
  ldv_47702: ;
  if (i < vectors) {
    goto ldv_47701;
  } else {
  }
  ioa_cfg->nvectors = (unsigned int )vectors;
  return (0);
}
}
static void name_msi_vectors(struct ipr_ioa_cfg *ioa_cfg )
{
  int vec_idx ;
  int n ;
  size_t tmp ;
  {
  n = 21;
  vec_idx = 0;
  goto ldv_47710;
  ldv_47709:
  snprintf((char *)(& ioa_cfg->vectors_info[vec_idx].desc), (size_t )n, "host%d-%d",
           (ioa_cfg->host)->host_no, vec_idx);
  tmp = strlen((char const *)(& ioa_cfg->vectors_info[vec_idx].desc));
  ioa_cfg->vectors_info[vec_idx].desc[tmp] = 0;
  vec_idx = vec_idx + 1;
  ldv_47710: ;
  if ((unsigned int )vec_idx < ioa_cfg->nvectors) {
    goto ldv_47709;
  } else {
  }
  return;
}
}
static int ipr_request_other_msi_irqs(struct ipr_ioa_cfg *ioa_cfg )
{
  int i ;
  int rc ;
  {
  i = 1;
  goto ldv_47721;
  ldv_47720:
  rc = ldv_request_irq_43((unsigned int )ioa_cfg->vectors_info[i].vec, & ipr_isr_mhrrq,
                          0UL, (char const *)(& ioa_cfg->vectors_info[i].desc),
                          (void *)(& ioa_cfg->hrrq) + (unsigned long )i);
  if (rc != 0) {
    goto ldv_47718;
    ldv_47717:
    ldv_free_irq_44((unsigned int )ioa_cfg->vectors_info[i].vec, (void *)(& ioa_cfg->hrrq) + (unsigned long )i);
    ldv_47718:
    i = i - 1;
    if (i >= 0) {
      goto ldv_47717;
    } else {
    }
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_47721: ;
  if ((unsigned int )i < ioa_cfg->nvectors) {
    goto ldv_47720;
  } else {
  }
  return (0);
}
}
static irqreturn_t ipr_test_intr(int irq , void *devp )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long lock_flags ;
  irqreturn_t rc ;
  {
  ioa_cfg = (struct ipr_ioa_cfg *)devp;
  lock_flags = 0UL;
  rc = 1;
  _dev_info((struct device const *)(& (ioa_cfg->pdev)->dev), "Received IRQ : %d\n",
            irq);
  ldv_spin_lock();
  ioa_cfg->msi_received = 1U;
  __wake_up(& ioa_cfg->msi_wait_q, 3U, 1, (void *)0);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  return (rc);
}
}
static int ipr_test_msi(struct ipr_ioa_cfg *ioa_cfg , struct pci_dev *pdev )
{
  int rc ;
  u32 volatile int_reg ;
  unsigned long lock_flags ;
  struct lock_class_key __key ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  {
  lock_flags = 0UL;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_test_msi");
  } else {
  }
  ldv_spin_lock();
  __init_waitqueue_head(& ioa_cfg->msi_wait_q, "&ioa_cfg->msi_wait_q", & __key);
  ioa_cfg->msi_received = 0U;
  ipr_mask_and_clear_interrupts(ioa_cfg, 2147483647U);
  writel(16777216U, (void volatile *)ioa_cfg->regs.clr_interrupt_mask_reg32);
  tmp = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg);
  int_reg = tmp;
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if ((unsigned int )ioa_cfg->intr_flag == 2U) {
    rc = ldv_request_irq_45((unsigned int )ioa_cfg->vectors_info[0].vec, & ipr_test_intr,
                            0UL, "ipr", (void *)ioa_cfg);
  } else {
    rc = ldv_request_irq_46(pdev->irq, & ipr_test_intr, 0UL, "ipr", (void *)ioa_cfg);
  }
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "Can not assign irq %d\n", pdev->irq);
    return (rc);
  } else
  if (ipr_debug != 0U) {
    _dev_info((struct device const *)(& pdev->dev), "IRQ assigned: %d\n", pdev->irq);
  } else {
  }
  writel(16777216U, (void volatile *)ioa_cfg->regs.sense_interrupt_reg32);
  tmp___0 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  int_reg = tmp___0;
  __ret = 250L;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                9798, 0);
  __cond___0 = (int )ioa_cfg->msi_received != 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_47749:
    tmp___1 = prepare_to_wait_event(& ioa_cfg->msi_wait_q, & __wait, 2);
    __int = tmp___1;
    __cond = (int )ioa_cfg->msi_received != 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_47748;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_47749;
    ldv_47748:
    finish_wait(& ioa_cfg->msi_wait_q, & __wait);
    __ret = __ret___0;
  } else {
  }
  ldv_spin_lock();
  ipr_mask_and_clear_interrupts(ioa_cfg, 2147483647U);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) == 0U) {
    _dev_info((struct device const *)(& pdev->dev), "MSI test failed.  Falling back to LSI.\n");
    rc = -95;
  } else
  if (ipr_debug != 0U) {
    _dev_info((struct device const *)(& pdev->dev), "MSI test succeeded.\n");
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if ((unsigned int )ioa_cfg->intr_flag == 2U) {
    ldv_free_irq_47((unsigned int )ioa_cfg->vectors_info[0].vec, (void *)ioa_cfg);
  } else {
    ldv_free_irq_48(pdev->irq, (void *)ioa_cfg);
  }
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_test_msi");
  } else {
  }
  return (rc);
}
}
static int ipr_probe_ioa(struct pci_dev *pdev , struct pci_device_id const *dev_id )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  struct Scsi_Host *host ;
  unsigned long ipr_regs_pci ;
  void *ipr_regs ;
  int rc ;
  u32 volatile mask ;
  u32 volatile uproc ;
  u32 volatile interrupts ;
  unsigned long lock_flags ;
  unsigned long driver_lock_flags ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned int _min1 ;
  unsigned int _min1___0 ;
  unsigned int _min2 ;
  unsigned int tmp___7 ;
  unsigned int _min2___0 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___11 ;
  {
  rc = 0;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_probe_ioa");
  } else {
  }
  _dev_info((struct device const *)(& pdev->dev), "Found IOA with IRQ: %d\n", pdev->irq);
  host = ldv_scsi_host_alloc_49(& driver_template, 7024);
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    dev_err((struct device const *)(& pdev->dev), "call to scsi_host_alloc failed!\n");
    rc = -12;
    goto out;
  } else {
  }
  ioa_cfg = (struct ipr_ioa_cfg *)(& host->hostdata);
  memset((void *)ioa_cfg, 0, 7024UL);
  ata_host_init(& ioa_cfg->ata_host, & pdev->dev, & ipr_sata_ops);
  ioa_cfg->ipr_chip = ipr_get_chip_info(dev_id);
  if ((unsigned long )ioa_cfg->ipr_chip == (unsigned long )((struct ipr_chip_t const *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Unknown adapter chipset 0x%04X 0x%04X\n",
            dev_id->vendor, dev_id->device);
    goto out_scsi_host_put;
  } else {
  }
  ioa_cfg->sis64 = (unsigned int )((unsigned short )(ioa_cfg->ipr_chip)->sis_type) == 1U;
  ioa_cfg->chip_cfg = (ioa_cfg->ipr_chip)->cfg;
  ioa_cfg->clear_isr = (unsigned char )(ioa_cfg->chip_cfg)->clear_isr;
  ioa_cfg->max_cmds = (u32 )(ioa_cfg->chip_cfg)->max_cmds;
  if (ipr_transop_timeout != 0U) {
    ioa_cfg->transop_timeout = ipr_transop_timeout;
  } else
  if ((int )dev_id->driver_data & 1) {
    ioa_cfg->transop_timeout = 720U;
  } else {
    ioa_cfg->transop_timeout = 300U;
  }
  ioa_cfg->revid = pdev->revision;
  ipr_init_ioa_cfg(ioa_cfg, host, pdev);
  ipr_regs_pci = (unsigned long )pdev->resource[0].start;
  rc = pci_request_regions(pdev, "ipr");
  if (rc < 0) {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t register memory range of registers\n");
    goto out_scsi_host_put;
  } else {
  }
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    goto _L;
  } else {
    tmp___0 = pci_channel_offline(pdev);
    if (tmp___0 != 0) {
      _L:
      tmp = pci_channel_offline(pdev);
      if (tmp != 0) {
        ipr_wait_for_pci_err_recovery(ioa_cfg);
        rc = pci_enable_device(pdev);
      } else {
      }
      if (rc != 0) {
        dev_err((struct device const *)(& pdev->dev), "Cannot enable adapter\n");
        ipr_wait_for_pci_err_recovery(ioa_cfg);
        goto out_release_regions;
      } else {
      }
    } else {
    }
  }
  ipr_regs = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )ipr_regs == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t map memory range of registers\n");
    rc = -12;
    goto out_disable;
  } else {
  }
  ioa_cfg->hdw_dma_regs = ipr_regs;
  ioa_cfg->hdw_dma_regs_pci = ipr_regs_pci;
  ioa_cfg->ioa_mailbox = ipr_regs + (unsigned long )(ioa_cfg->chip_cfg)->mailbox;
  ipr_init_regs(ioa_cfg);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    rc = dma_set_mask_and_coherent(& pdev->dev, 0xffffffffffffffffULL);
    if (rc < 0) {
      descriptor.modname = "ipr";
      descriptor.function = "ipr_probe_ioa";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c";
      descriptor.format = "Failed to set 64 bit DMA mask\n";
      descriptor.lineno = 9921U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "Failed to set 64 bit DMA mask\n");
      } else {
      }
      rc = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
    } else {
    }
  } else {
    rc = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
  }
  if (rc < 0) {
    dev_err((struct device const *)(& pdev->dev), "Failed to set DMA mask\n");
    goto cleanup_nomem;
  } else {
  }
  rc = pci_write_config_byte((struct pci_dev const *)pdev, 12, (int )(ioa_cfg->chip_cfg)->cache_line_size);
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "Write of cache line size failed\n");
    ipr_wait_for_pci_err_recovery(ioa_cfg);
    rc = -5;
    goto cleanup_nomem;
  } else {
  }
  tmp___2 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg);
  interrupts = tmp___2;
  ipr_wait_for_pci_err_recovery(ioa_cfg);
  if (ipr_number_of_msix > 16U) {
    dev_err((struct device const *)(& pdev->dev), "The max number of MSIX is %d\n",
            16);
    ipr_number_of_msix = 16U;
  } else {
  }
  if ((unsigned int )((unsigned short )(ioa_cfg->ipr_chip)->intr_type) == 1U) {
    tmp___4 = ipr_enable_msix(ioa_cfg);
    if (tmp___4 == 0) {
      ioa_cfg->intr_flag = 2U;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if ((unsigned int )((unsigned short )(ioa_cfg->ipr_chip)->intr_type) == 1U) {
    tmp___3 = ipr_enable_msi(ioa_cfg);
    if (tmp___3 == 0) {
      ioa_cfg->intr_flag = 1U;
    } else {
      ioa_cfg->intr_flag = 0U;
      ioa_cfg->nvectors = 1U;
      _dev_info((struct device const *)(& pdev->dev), "Cannot enable MSI.\n");
    }
  } else {
    ioa_cfg->intr_flag = 0U;
    ioa_cfg->nvectors = 1U;
    _dev_info((struct device const *)(& pdev->dev), "Cannot enable MSI.\n");
  }
  pci_set_master(pdev);
  tmp___6 = pci_channel_offline(pdev);
  if (tmp___6 != 0) {
    ipr_wait_for_pci_err_recovery(ioa_cfg);
    pci_set_master(pdev);
    tmp___5 = pci_channel_offline(pdev);
    if (tmp___5 != 0) {
      rc = -5;
      goto out_msi_disable;
    } else {
    }
  } else {
  }
  if ((unsigned int )ioa_cfg->intr_flag == 1U || (unsigned int )ioa_cfg->intr_flag == 2U) {
    rc = ipr_test_msi(ioa_cfg, pdev);
    if (rc == -95) {
      ipr_wait_for_pci_err_recovery(ioa_cfg);
      if ((unsigned int )ioa_cfg->intr_flag == 1U) {
        ioa_cfg->intr_flag = (unsigned int )ioa_cfg->intr_flag & 65534U;
        pci_disable_msi(pdev);
      } else
      if ((unsigned int )ioa_cfg->intr_flag == 2U) {
        ioa_cfg->intr_flag = (unsigned int )ioa_cfg->intr_flag & 65533U;
        pci_disable_msix(pdev);
      } else {
      }
      ioa_cfg->intr_flag = 0U;
      ioa_cfg->nvectors = 1U;
    } else
    if (rc != 0) {
      goto out_msi_disable;
    } else
    if ((unsigned int )ioa_cfg->intr_flag == 1U) {
      _dev_info((struct device const *)(& pdev->dev), "Request for %d MSIs succeeded with starting IRQ: %d\n",
                ioa_cfg->nvectors, pdev->irq);
    } else
    if ((unsigned int )ioa_cfg->intr_flag == 2U) {
      _dev_info((struct device const *)(& pdev->dev), "Request for %d MSIXs succeeded.",
                ioa_cfg->nvectors);
    } else {
    }
  } else {
  }
  _min1___0 = ioa_cfg->nvectors;
  tmp___7 = cpumask_weight(cpu_online_mask);
  _min2 = tmp___7;
  _min1 = _min1___0 < _min2 ? _min1___0 : _min2;
  _min2___0 = 16U;
  ioa_cfg->hrrq_num = _min1 < _min2___0 ? _min1 : _min2___0;
  rc = ipr_save_pcix_cmd_reg(ioa_cfg);
  if (rc != 0) {
    goto out_msi_disable;
  } else {
  }
  rc = ipr_set_pcix_cmd_reg(ioa_cfg);
  if (rc != 0) {
    goto out_msi_disable;
  } else {
  }
  rc = ipr_alloc_mem(ioa_cfg);
  if (rc < 0) {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t allocate enough memory for device driver!\n");
    goto out_msi_disable;
  } else {
  }
  rc = pci_save_state(pdev);
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "Failed to save PCI config space\n");
    rc = -5;
    goto cleanup_nolog;
  } else {
  }
  tmp___8 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_mask_reg32);
  mask = tmp___8;
  tmp___9 = readl((void const volatile *)ioa_cfg->regs.sense_interrupt_reg32);
  interrupts = tmp___9;
  tmp___10 = readl((void const volatile *)ioa_cfg->regs.sense_uproc_interrupt_reg32);
  uproc = tmp___10;
  if (((unsigned int )mask & 2U) == 0U || ((unsigned int )uproc & 16777216U) != 0U) {
    ioa_cfg->needs_hard_reset = 1U;
  } else {
  }
  if (((unsigned int )interrupts & 469762072U) != 0U || reset_devices != 0U) {
    ioa_cfg->needs_hard_reset = 1U;
  } else {
  }
  if (((unsigned int )interrupts & 134217728U) != 0U) {
    ioa_cfg->ioa_unit_checked = 1U;
  } else {
  }
  ldv_spin_lock();
  ipr_mask_and_clear_interrupts(ioa_cfg, 2147483647U);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  if ((unsigned int )ioa_cfg->intr_flag == 1U || (unsigned int )ioa_cfg->intr_flag == 2U) {
    name_msi_vectors(ioa_cfg);
    rc = ldv_request_irq_50((unsigned int )ioa_cfg->vectors_info[0].vec, & ipr_isr,
                            0UL, (char const *)(& ioa_cfg->vectors_info[0].desc),
                            (void *)(& ioa_cfg->hrrq));
    if (rc == 0) {
      rc = ipr_request_other_msi_irqs(ioa_cfg);
    } else {
    }
  } else {
    rc = ldv_request_irq_51(pdev->irq, & ipr_isr, 128UL, "ipr", (void *)(& ioa_cfg->hrrq));
  }
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t register IRQ %d! rc=%d\n",
            pdev->irq, rc);
    goto cleanup_nolog;
  } else {
  }
  if (((unsigned long )dev_id->driver_data & 2UL) != 0UL || ((unsigned int )dev_id->device == 825U && (unsigned int )ioa_cfg->revid == 0U)) {
    ioa_cfg->needs_warm_reset = 1U;
    ioa_cfg->reset = & ipr_reset_slot_reset;
    __lock_name = "\"ipr_reset_%d\"host->host_no";
    tmp___11 = __alloc_workqueue_key("ipr_reset_%d", 131082U, 1, & __key, __lock_name,
                                     host->host_no);
    ioa_cfg->reset_work_q = tmp___11;
    if ((unsigned long )ioa_cfg->reset_work_q == (unsigned long )((struct workqueue_struct *)0)) {
      dev_err((struct device const *)(& pdev->dev), "Couldn\'t register reset workqueue\n");
      goto out_free_irq;
    } else {
    }
  } else {
    ioa_cfg->reset = & ipr_reset_start_bist;
  }
  ldv_spin_lock();
  list_add_tail(& ioa_cfg->queue, & ipr_ioa_head);
  spin_unlock_irqrestore(& ipr_driver_lock, driver_lock_flags);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_probe_ioa");
  } else {
  }
  out: ;
  return (rc);
  out_free_irq:
  ipr_free_irqs(ioa_cfg);
  cleanup_nolog:
  ipr_free_mem(ioa_cfg);
  out_msi_disable:
  ipr_wait_for_pci_err_recovery(ioa_cfg);
  if ((unsigned int )ioa_cfg->intr_flag == 1U) {
    pci_disable_msi(pdev);
  } else
  if ((unsigned int )ioa_cfg->intr_flag == 2U) {
    pci_disable_msix(pdev);
  } else {
  }
  cleanup_nomem:
  iounmap((void volatile *)ipr_regs);
  out_disable:
  pci_disable_device(pdev);
  out_release_regions:
  pci_release_regions(pdev);
  out_scsi_host_put:
  scsi_host_put(host);
  goto out;
}
}
static void ipr_initiate_ioa_bringdown(struct ipr_ioa_cfg *ioa_cfg , enum ipr_shutdown_type shutdown_type )
{
  {
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_initiate_ioa_bringdown");
  } else {
  }
  if ((unsigned int )ioa_cfg->sdt_state == 1U) {
    ioa_cfg->sdt_state = 4;
  } else {
  }
  ioa_cfg->reset_retries = 0U;
  ioa_cfg->in_ioa_bringdown = 1U;
  ipr_initiate_ioa_reset(ioa_cfg, shutdown_type);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_initiate_ioa_bringdown");
  } else {
  }
  return;
}
}
static void __ipr_remove(struct pci_dev *pdev )
{
  unsigned long host_lock_flags ;
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  int i ;
  unsigned long driver_lock_flags ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___1 ;
  {
  host_lock_flags = 0UL;
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "__ipr_remove");
  } else {
  }
  ldv_spin_lock();
  goto ldv_47810;
  ldv_47809:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, host_lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                10160, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47801;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_47807:
  tmp___0 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp___0;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47806;
  } else {
  }
  schedule();
  goto ldv_47807;
  ldv_47806:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_47801:
  ldv_spin_lock();
  ldv_47810: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_47809;
  } else {
  }
  i = 0;
  goto ldv_47813;
  ldv_47812:
  spin_lock(& ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].removing_ioa = 1U;
  spin_unlock(& ioa_cfg->hrrq[i]._lock);
  i = i + 1;
  ldv_47813: ;
  if ((u32 )i < ioa_cfg->hrrq_num) {
    goto ldv_47812;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  ipr_initiate_ioa_bringdown(ioa_cfg, 0);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, host_lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                10173, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47815;
  } else {
  }
  __ret___0 = 0L;
  INIT_LIST_HEAD(& __wait___0.task_list);
  __wait___0.flags = 0U;
  ldv_47821:
  tmp___1 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait___0, 2);
  __int___0 = tmp___1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47820;
  } else {
  }
  schedule();
  goto ldv_47821;
  ldv_47820:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait___0);
  ldv_47815:
  ldv_flush_work_52(& ioa_cfg->work_q);
  if ((unsigned long )ioa_cfg->reset_work_q != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_flush_workqueue_53(ioa_cfg->reset_work_q);
  } else {
  }
  INIT_LIST_HEAD(& ioa_cfg->used_res_q);
  ldv_spin_lock();
  ldv_spin_lock();
  list_del(& ioa_cfg->queue);
  spin_unlock_irqrestore(& ipr_driver_lock, driver_lock_flags);
  if ((unsigned int )ioa_cfg->sdt_state == 4U) {
    ioa_cfg->sdt_state = 1;
  } else {
  }
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, host_lock_flags);
  ipr_free_all_resources(ioa_cfg);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "__ipr_remove");
  } else {
  }
  return;
}
}
static void ipr_remove(struct pci_dev *pdev )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  if (ipr_debug != 0U) {
    printk("\016ipr: Entering %s\n", "ipr_remove");
  } else {
  }
  sysfs_remove_bin_file(& (ioa_cfg->host)->shost_dev.kobj, (struct bin_attribute const *)(& ipr_trace_attr));
  sysfs_remove_bin_file(& (ioa_cfg->host)->shost_dev.kobj, (struct bin_attribute const *)(& ipr_dump_attr));
  ldv_scsi_remove_host_54(ioa_cfg->host);
  __ipr_remove(pdev);
  if (ipr_debug != 0U) {
    printk("\016ipr: Leaving %s\n", "ipr_remove");
  } else {
  }
  return;
}
}
static int ipr_probe(struct pci_dev *pdev , struct pci_device_id const *dev_id )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  int rc ;
  int i ;
  void *tmp ;
  {
  rc = ipr_probe_ioa(pdev, dev_id);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  rc = ipr_probe_ioa_part2(ioa_cfg);
  if (rc != 0) {
    __ipr_remove(pdev);
    return (rc);
  } else {
  }
  rc = scsi_add_host(ioa_cfg->host, & pdev->dev);
  if (rc != 0) {
    __ipr_remove(pdev);
    return (rc);
  } else {
  }
  rc = sysfs_create_bin_file(& (ioa_cfg->host)->shost_dev.kobj, (struct bin_attribute const *)(& ipr_trace_attr));
  if (rc != 0) {
    ldv_scsi_remove_host_55(ioa_cfg->host);
    __ipr_remove(pdev);
    return (rc);
  } else {
  }
  rc = sysfs_create_bin_file(& (ioa_cfg->host)->shost_dev.kobj, (struct bin_attribute const *)(& ipr_dump_attr));
  if (rc != 0) {
    sysfs_remove_bin_file(& (ioa_cfg->host)->shost_dev.kobj, (struct bin_attribute const *)(& ipr_trace_attr));
    ldv_scsi_remove_host_56(ioa_cfg->host);
    __ipr_remove(pdev);
    return (rc);
  } else {
  }
  scsi_scan_host(ioa_cfg->host);
  ioa_cfg->iopoll_weight = (ioa_cfg->chip_cfg)->iopoll_weight;
  if ((ioa_cfg->iopoll_weight != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) && ioa_cfg->nvectors > 1U) {
    i = 1;
    goto ldv_47836;
    ldv_47835:
    blk_iopoll_init(& ioa_cfg->hrrq[i].iopoll, (int )ioa_cfg->iopoll_weight, & ipr_iopoll);
    blk_iopoll_enable(& ioa_cfg->hrrq[i].iopoll);
    i = i + 1;
    ldv_47836: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_47835;
    } else {
    }
  } else {
  }
  schedule_work(& ioa_cfg->work_q);
  return (0);
}
}
static void ipr_shutdown(struct pci_dev *pdev )
{
  struct ipr_ioa_cfg *ioa_cfg ;
  void *tmp ;
  unsigned long lock_flags ;
  enum ipr_shutdown_type shutdown_type ;
  int i ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  ioa_cfg = (struct ipr_ioa_cfg *)tmp;
  lock_flags = 0UL;
  shutdown_type = 0;
  ldv_spin_lock();
  if ((ioa_cfg->iopoll_weight != 0U && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) && ioa_cfg->nvectors > 1U) {
    ioa_cfg->iopoll_weight = 0U;
    i = 1;
    goto ldv_47846;
    ldv_47845:
    blk_iopoll_disable(& ioa_cfg->hrrq[i].iopoll);
    i = i + 1;
    ldv_47846: ;
    if ((u32 )i < ioa_cfg->hrrq_num) {
      goto ldv_47845;
    } else {
    }
  } else {
  }
  goto ldv_47857;
  ldv_47856:
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                10311, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47848;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_47854:
  tmp___0 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait, 2);
  __int = tmp___0;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47853;
  } else {
  }
  schedule();
  goto ldv_47854;
  ldv_47853:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait);
  ldv_47848:
  ldv_spin_lock();
  ldv_47857: ;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) != 0U) {
    goto ldv_47856;
  } else {
  }
  if ((ipr_fast_reboot != 0U && (unsigned int )system_state == 4U) && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    shutdown_type = 257;
  } else {
  }
  ipr_initiate_ioa_bringdown(ioa_cfg, shutdown_type);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, lock_flags);
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/3516/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/ipr.c",
                10320, 0);
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47859;
  } else {
  }
  __ret___0 = 0L;
  INIT_LIST_HEAD(& __wait___0.task_list);
  __wait___0.flags = 0U;
  ldv_47865:
  tmp___1 = prepare_to_wait_event(& ioa_cfg->reset_wait_q, & __wait___0, 2);
  __int___0 = tmp___1;
  if ((unsigned int )*((unsigned char *)ioa_cfg + 24UL) == 0U) {
    goto ldv_47864;
  } else {
  }
  schedule();
  goto ldv_47865;
  ldv_47864:
  finish_wait(& ioa_cfg->reset_wait_q, & __wait___0);
  ldv_47859: ;
  if ((ipr_fast_reboot != 0U && (unsigned int )system_state == 4U) && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U) {
    ipr_free_irqs(ioa_cfg);
    pci_disable_device(ioa_cfg->pdev);
  } else {
  }
  return;
}
}
static struct pci_device_id ipr_pci_table[49U] =
  { {4201U, 45414U, 4116U, 614U, 0U, 0U, 0UL},
        {4201U, 45414U, 4116U, 632U, 0U, 0U, 0UL},
        {4201U, 45414U, 4116U, 724U, 0U, 0U, 0UL},
        {4201U, 45414U, 4116U, 723U, 0U, 0U, 0UL},
        {4116U, 652U, 4116U, 702U, 0U, 0U, 0UL},
        {4116U, 652U, 4116U, 653U, 0U, 0U, 0UL},
        {4116U, 652U, 4116U, 704U, 0U, 0U, 0UL},
        {4116U, 652U, 4116U, 781U, 0U, 0U, 1UL},
        {36869U, 1280U, 4116U, 705U, 0U, 0U, 0UL},
        {36869U, 1280U, 4116U, 706U, 0U, 0U, 1UL},
        {36869U, 1280U, 4116U, 824U, 0U, 0U, 1UL},
        {4116U, 701U, 4116U, 705U, 0U, 0U, 0UL},
        {4116U, 701U, 4116U, 706U, 0U, 0U, 1UL},
        {4116U, 701U, 4116U, 824U, 0U, 0U, 1UL},
        {4116U, 825U, 4116U, 778U, 0U, 0U, 1UL},
        {4116U, 825U, 4116U, 826U, 0U, 0U, 0UL},
        {4116U, 825U, 4116U, 860U, 0U, 0U, 0UL},
        {4116U, 825U, 4116U, 864U, 0U, 0U, 3UL},
        {4116U, 384U, 4116U, 612U, 0U, 0U, 0UL},
        {36869U, 1283U, 4116U, 703U, 0U, 0U, 0UL},
        {36869U, 1283U, 4116U, 725U, 0U, 0U, 1UL},
        {36869U, 1283U, 4116U, 707U, 0U, 0U, 1UL},
        {4116U, 829U, 4116U, 828U, 0U, 0U, 0UL},
        {4116U, 829U, 4116U, 854U, 0U, 0U, 0UL},
        {4116U, 829U, 4116U, 863U, 0U, 0U, 0UL},
        {4116U, 829U, 4116U, 850U, 0U, 0U, 0UL},
        {4116U, 829U, 4116U, 851U, 0U, 0U, 0UL},
        {4116U, 829U, 4116U, 852U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 827U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 853U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 855U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 861U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 862U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1019U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1020U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1023U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1022U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1133U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1226U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1140U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1141U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1177U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1178U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1179U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1180U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1223U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1224U, 0U, 0U, 0UL},
        {4116U, 842U, 4116U, 1225U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__ipr_pci_table_device_table[49U] ;
static struct pci_error_handlers const ipr_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& ipr_pci_error_detected),
    & ipr_pci_mmio_enabled, 0, & ipr_pci_slot_reset, 0, 0};
static struct pci_driver ipr_driver =
     {{0, 0}, "ipr", (struct pci_device_id const *)(& ipr_pci_table), & ipr_probe,
    & ipr_remove, 0, 0, 0, 0, & ipr_shutdown, 0, & ipr_err_handler, {0, 0, 0, 0, (_Bool)0,
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
static void ipr_halt_done(struct ipr_cmnd *ipr_cmd )
{
  {
  list_add_tail(& ipr_cmd->queue, & (ipr_cmd->hrrq)->hrrq_free_q);
  return;
}
}
static int ipr_halt(struct notifier_block *nb , ulong event , void *buf )
{
  struct ipr_cmnd *ipr_cmd ;
  struct ipr_ioa_cfg *ioa_cfg ;
  unsigned long flags ;
  unsigned long driver_lock_flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  flags = 0UL;
  if ((event != 1UL && event != 2UL) && event != 3UL) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  __mptr = (struct list_head const *)ipr_ioa_head.next;
  ioa_cfg = (struct ipr_ioa_cfg *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_47889;
  ldv_47888:
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)ioa_cfg + 1960UL) == 0U || ((ipr_fast_reboot != 0U && event == 1UL) && (unsigned int )*((unsigned char *)ioa_cfg + 25UL) != 0U)) {
    spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
    goto ldv_47887;
  } else {
  }
  ipr_cmd = ipr_get_free_ipr_cmnd(ioa_cfg);
  ipr_cmd->ioarcb.res_handle = 4294967295U;
  ipr_cmd->ioarcb.cmd_pkt.request_type = 1U;
  ipr_cmd->ioarcb.cmd_pkt.cdb[0] = 247U;
  ipr_cmd->ioarcb.cmd_pkt.cdb[1] = 64U;
  ipr_do_req(ipr_cmd, & ipr_halt_done, & ipr_timeout, ipr_fastfail != 0U ? 2500U : 7500U);
  spin_unlock_irqrestore((ioa_cfg->host)->host_lock, flags);
  ldv_47887:
  __mptr___0 = (struct list_head const *)ioa_cfg->queue.next;
  ioa_cfg = (struct ipr_ioa_cfg *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_47889: ;
  if ((unsigned long )(& ioa_cfg->queue) != (unsigned long )(& ipr_ioa_head)) {
    goto ldv_47888;
  } else {
  }
  spin_unlock_irqrestore(& ipr_driver_lock, driver_lock_flags);
  return (1);
}
}
static struct notifier_block ipr_notifier = {& ipr_halt, (struct notifier_block *)0, 0};
static int ipr_init(void)
{
  int tmp ;
  {
  printk("\016ipr: IBM Power RAID SCSI Device Driver version: %s %s\n", (char *)"2.6.1",
         (char *)"(March 12, 2015)");
  register_reboot_notifier(& ipr_notifier);
  tmp = ldv___pci_register_driver_57(& ipr_driver, & __this_module, "ipr");
  return (tmp);
}
}
static void ipr_exit(void)
{
  {
  unregister_reboot_notifier(& ipr_notifier);
  ldv_pci_unregister_driver_58(& ipr_driver);
  return;
}
}
extern int ldv_release_19(void) ;
extern int ldv_probe_19(void) ;
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
extern int ldv_release_28(void) ;
extern int ldv_probe_28(void) ;
void activate_suitable_irq_4(int line , void *data )
{
  {
  if (ldv_irq_4_0 == 0) {
    ldv_irq_line_4_0 = line;
    ldv_irq_data_4_0 = data;
    ldv_irq_4_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_4_1 == 0) {
    ldv_irq_line_4_1 = line;
    ldv_irq_data_4_1 = data;
    ldv_irq_4_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_4_2 == 0) {
    ldv_irq_line_4_2 = line;
    ldv_irq_data_4_2 = data;
    ldv_irq_4_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_4_3 == 0) {
    ldv_irq_line_4_3 = line;
    ldv_irq_data_4_3 = data;
    ldv_irq_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_3(int state , int line , void *data )
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
      irq_retval = ipr_test_intr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_47933;
    default:
    ldv_stop();
    }
    ldv_47933: ;
  } else {
  }
  return (state);
}
}
void call_and_disable_all_7(int state )
{
  {
  if (ldv_work_7_0 == state) {
    call_and_disable_work_7(ldv_work_struct_7_0);
  } else {
  }
  if (ldv_work_7_1 == state) {
    call_and_disable_work_7(ldv_work_struct_7_1);
  } else {
  }
  if (ldv_work_7_2 == state) {
    call_and_disable_work_7(ldv_work_struct_7_2);
  } else {
  }
  if (ldv_work_7_3 == state) {
    call_and_disable_work_7(ldv_work_struct_7_3);
  } else {
  }
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
int ldv_irq_4(int state , int line , void *data )
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
      irq_retval = ipr_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_47949;
    default:
    ldv_stop();
    }
    ldv_47949: ;
  } else {
  }
  return (state);
}
}
void invoke_work_6(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_6_0 == 2 || ldv_work_6_0 == 3) {
    ldv_work_6_0 = 4;
    ipr_reset_reset_work(ldv_work_struct_6_0);
    ldv_work_6_0 = 1;
  } else {
  }
  goto ldv_47957;
  case 1: ;
  if (ldv_work_6_1 == 2 || ldv_work_6_1 == 3) {
    ldv_work_6_1 = 4;
    ipr_reset_reset_work(ldv_work_struct_6_0);
    ldv_work_6_1 = 1;
  } else {
  }
  goto ldv_47957;
  case 2: ;
  if (ldv_work_6_2 == 2 || ldv_work_6_2 == 3) {
    ldv_work_6_2 = 4;
    ipr_reset_reset_work(ldv_work_struct_6_0);
    ldv_work_6_2 = 1;
  } else {
  }
  goto ldv_47957;
  case 3: ;
  if (ldv_work_6_3 == 2 || ldv_work_6_3 == 3) {
    ldv_work_6_3 = 4;
    ipr_reset_reset_work(ldv_work_struct_6_0);
    ldv_work_6_3 = 1;
  } else {
  }
  goto ldv_47957;
  default:
  ldv_stop();
  }
  ldv_47957: ;
  return;
}
}
void ldv_initialize_device_attribute_22(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ipr_iopoll_weight_attr_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ipr_iopoll_weight_attr_group1 = (struct device *)tmp___0;
  return;
}
}
void activate_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 == 0) {
    ldv_irq_line_3_0 = line;
    ldv_irq_data_3_0 = data;
    ldv_irq_3_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_1 == 0) {
    ldv_irq_line_3_1 = line;
    ldv_irq_data_3_1 = data;
    ldv_irq_3_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_2 == 0) {
    ldv_irq_line_3_2 = line;
    ldv_irq_data_3_2 = data;
    ldv_irq_3_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_3 == 0) {
    ldv_irq_line_3_3 = line;
    ldv_irq_data_3_3 = data;
    ldv_irq_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ipr_isr_mhrrq)) {
    return (1);
  } else {
  }
  return (0);
}
}
void choose_interrupt_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_4_0 = ldv_irq_4(ldv_irq_4_0, ldv_irq_line_4_0, ldv_irq_data_4_0);
  goto ldv_47978;
  case 1:
  ldv_irq_4_0 = ldv_irq_4(ldv_irq_4_1, ldv_irq_line_4_1, ldv_irq_data_4_1);
  goto ldv_47978;
  case 2:
  ldv_irq_4_0 = ldv_irq_4(ldv_irq_4_2, ldv_irq_line_4_2, ldv_irq_data_4_2);
  goto ldv_47978;
  case 3:
  ldv_irq_4_0 = ldv_irq_4(ldv_irq_4_3, ldv_irq_line_4_3, ldv_irq_data_4_3);
  goto ldv_47978;
  default:
  ldv_stop();
  }
  ldv_47978: ;
  return;
}
}
void disable_suitable_timer_8(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_8) {
    ldv_timer_state_8 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_26(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ipr_log_level_attr_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ipr_log_level_attr_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_ata_port_operations_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(18112UL);
  ipr_sata_ops_group1 = (struct ata_port *)tmp;
  tmp___0 = ldv_init_zalloc(240UL);
  ipr_sata_ops_group0 = (struct ata_queued_cmd *)tmp___0;
  return;
}
}
void work_init_7(void)
{
  {
  ldv_work_7_0 = 0;
  ldv_work_7_1 = 0;
  ldv_work_7_2 = 0;
  ldv_work_7_3 = 0;
  return;
}
}
void ldv_initialize_bin_attribute_19(void)
{
  void *tmp ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(296UL);
  ipr_dump_attr_group0 = (struct kobject *)tmp;
  ipr_dump_attr_group1 = ldv_malloc(sizeof(struct file));
  tmp___1 = ldv_init_zalloc(72UL);
  ipr_dump_attr_group2 = (struct bin_attribute *)tmp___1;
  return;
}
}
void invoke_work_7(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_7_0 == 2 || ldv_work_7_0 == 3) {
    ldv_work_7_0 = 4;
    ipr_worker_thread(ldv_work_struct_7_0);
    ldv_work_7_0 = 1;
  } else {
  }
  goto ldv_48004;
  case 1: ;
  if (ldv_work_7_1 == 2 || ldv_work_7_1 == 3) {
    ldv_work_7_1 = 4;
    ipr_worker_thread(ldv_work_struct_7_0);
    ldv_work_7_1 = 1;
  } else {
  }
  goto ldv_48004;
  case 2: ;
  if (ldv_work_7_2 == 2 || ldv_work_7_2 == 3) {
    ldv_work_7_2 = 4;
    ipr_worker_thread(ldv_work_struct_7_0);
    ldv_work_7_2 = 1;
  } else {
  }
  goto ldv_48004;
  case 3: ;
  if (ldv_work_7_3 == 2 || ldv_work_7_3 == 3) {
    ldv_work_7_3 = 4;
    ipr_worker_thread(ldv_work_struct_7_0);
    ldv_work_7_3 = 1;
  } else {
  }
  goto ldv_48004;
  default:
  ldv_stop();
  }
  ldv_48004: ;
  return;
}
}
void ldv_initialize_pci_error_handlers_11(void)
{
  {
  ipr_err_handler_group0 = ldv_malloc(sizeof(struct pci_dev));
  return;
}
}
void activate_suitable_irq_5(int line , void *data )
{
  {
  if (ldv_irq_5_0 == 0) {
    ldv_irq_line_5_0 = line;
    ldv_irq_data_5_0 = data;
    ldv_irq_5_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_5_1 == 0) {
    ldv_irq_line_5_1 = line;
    ldv_irq_data_5_1 = data;
    ldv_irq_5_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_5_2 == 0) {
    ldv_irq_line_5_2 = line;
    ldv_irq_data_5_2 = data;
    ldv_irq_5_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_5_3 == 0) {
    ldv_irq_line_5_3 = line;
    ldv_irq_data_5_3 = data;
    ldv_irq_5_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_7(struct work_struct *work )
{
  {
  if ((ldv_work_7_0 == 3 || ldv_work_7_0 == 2) && (unsigned long )ldv_work_struct_7_0 == (unsigned long )work) {
    ldv_work_7_0 = 1;
  } else {
  }
  if ((ldv_work_7_1 == 3 || ldv_work_7_1 == 2) && (unsigned long )ldv_work_struct_7_1 == (unsigned long )work) {
    ldv_work_7_1 = 1;
  } else {
  }
  if ((ldv_work_7_2 == 3 || ldv_work_7_2 == 2) && (unsigned long )ldv_work_struct_7_2 == (unsigned long )work) {
    ldv_work_7_2 = 1;
  } else {
  }
  if ((ldv_work_7_3 == 3 || ldv_work_7_3 == 2) && (unsigned long )ldv_work_struct_7_3 == (unsigned long )work) {
    ldv_work_7_3 = 1;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_24(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ipr_ioa_state_attr_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ipr_ioa_state_attr_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_pci_driver_10(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  ipr_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void call_and_disable_all_6(int state )
{
  {
  if (ldv_work_6_0 == state) {
    call_and_disable_work_6(ldv_work_struct_6_0);
  } else {
  }
  if (ldv_work_6_1 == state) {
    call_and_disable_work_6(ldv_work_struct_6_1);
  } else {
  }
  if (ldv_work_6_2 == state) {
    call_and_disable_work_6(ldv_work_struct_6_2);
  } else {
  }
  if (ldv_work_6_3 == state) {
    call_and_disable_work_6(ldv_work_struct_6_3);
  } else {
  }
  return;
}
}
void activate_pending_timer_8(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_8 == (unsigned long )timer) {
    if (ldv_timer_state_8 == 2 || pending_flag != 0) {
      ldv_timer_list_8 = timer;
      ldv_timer_list_8->data = data;
      ldv_timer_state_8 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_8(timer);
  ldv_timer_list_8->data = data;
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
int reg_check_4(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ipr_isr)) {
    return (1);
  } else {
  }
  return (0);
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
      irq_retval = ipr_test_intr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_48053;
    default:
    ldv_stop();
    }
    ldv_48053: ;
  } else {
  }
  return (state);
}
}
void activate_work_6(struct work_struct *work , int state )
{
  {
  if (ldv_work_6_0 == 0) {
    ldv_work_struct_6_0 = work;
    ldv_work_6_0 = state;
    return;
  } else {
  }
  if (ldv_work_6_1 == 0) {
    ldv_work_struct_6_1 = work;
    ldv_work_6_1 = state;
    return;
  } else {
  }
  if (ldv_work_6_2 == 0) {
    ldv_work_struct_6_2 = work;
    ldv_work_6_2 = state;
    return;
  } else {
  }
  if (ldv_work_6_3 == 0) {
    ldv_work_struct_6_3 = work;
    ldv_work_6_3 = state;
    return;
  } else {
  }
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
  goto ldv_48063;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_48063;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_48063;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_48063;
  default:
  ldv_stop();
  }
  ldv_48063: ;
  return;
}
}
void call_and_disable_work_7(struct work_struct *work )
{
  {
  if ((ldv_work_7_0 == 2 || ldv_work_7_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_0) {
    ipr_worker_thread(work);
    ldv_work_7_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_1 == 2 || ldv_work_7_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_1) {
    ipr_worker_thread(work);
    ldv_work_7_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_2 == 2 || ldv_work_7_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_2) {
    ipr_worker_thread(work);
    ldv_work_7_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_3 == 2 || ldv_work_7_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_3) {
    ipr_worker_thread(work);
    ldv_work_7_3 = 1;
    return;
  } else {
  }
  return;
}
}
void choose_interrupt_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_5_0 = ldv_irq_5(ldv_irq_5_0, ldv_irq_line_5_0, ldv_irq_data_5_0);
  goto ldv_48077;
  case 1:
  ldv_irq_5_0 = ldv_irq_5(ldv_irq_5_1, ldv_irq_line_5_1, ldv_irq_data_5_1);
  goto ldv_48077;
  case 2:
  ldv_irq_5_0 = ldv_irq_5(ldv_irq_5_2, ldv_irq_line_5_2, ldv_irq_data_5_2);
  goto ldv_48077;
  case 3:
  ldv_irq_5_0 = ldv_irq_5(ldv_irq_5_3, ldv_irq_line_5_3, ldv_irq_data_5_3);
  goto ldv_48077;
  default:
  ldv_stop();
  }
  ldv_48077: ;
  return;
}
}
void choose_timer_8(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_8 = 2;
  return;
}
}
void ldv_initialize_scsi_host_template_13(void)
{
  void *tmp___0 ;
  void *tmp___1 ;
  {
  driver_template_group0 = ldv_malloc(sizeof(struct scsi_cmnd));
  tmp___0 = ldv_init_zalloc(3816UL);
  driver_template_group1 = (struct Scsi_Host *)tmp___0;
  tmp___1 = ldv_init_zalloc(1504UL);
  driver_template_group2 = (struct scsi_target *)tmp___1;
  driver_template_group3 = ldv_malloc(sizeof(struct scsi_device));
  return;
}
}
void disable_suitable_irq_5(int line , void *data )
{
  {
  if (ldv_irq_5_0 != 0 && line == ldv_irq_line_5_0) {
    ldv_irq_5_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_5_1 != 0 && line == ldv_irq_line_5_1) {
    ldv_irq_5_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_5_2 != 0 && line == ldv_irq_line_5_2) {
    ldv_irq_5_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_5_3 != 0 && line == ldv_irq_line_5_3) {
    ldv_irq_5_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_irq_4(int line , void *data )
{
  {
  if (ldv_irq_4_0 != 0 && line == ldv_irq_line_4_0) {
    ldv_irq_4_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_4_1 != 0 && line == ldv_irq_line_4_1) {
    ldv_irq_4_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_4_2 != 0 && line == ldv_irq_line_4_2) {
    ldv_irq_4_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_4_3 != 0 && line == ldv_irq_line_4_3) {
    ldv_irq_4_3 = 0;
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
int reg_timer_8(struct timer_list *timer )
{
  {
  ldv_timer_list_8 = timer;
  ldv_timer_state_8 = 1;
  return (0);
}
}
int ldv_irq_5(int state , int line , void *data )
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
      irq_retval = ipr_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_48110;
    default:
    ldv_stop();
    }
    ldv_48110: ;
  } else {
  }
  return (state);
}
}
void ldv_initialize_device_attribute_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ipr_raw_mode_attr_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  ipr_raw_mode_attr_group1 = (struct device *)tmp___0;
  return;
}
}
void work_init_6(void)
{
  {
  ldv_work_6_0 = 0;
  ldv_work_6_1 = 0;
  ldv_work_6_2 = 0;
  ldv_work_6_3 = 0;
  return;
}
}
void disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 3 || ldv_work_6_0 == 2) && (unsigned long )ldv_work_struct_6_0 == (unsigned long )work) {
    ldv_work_6_0 = 1;
  } else {
  }
  if ((ldv_work_6_1 == 3 || ldv_work_6_1 == 2) && (unsigned long )ldv_work_struct_6_1 == (unsigned long )work) {
    ldv_work_6_1 = 1;
  } else {
  }
  if ((ldv_work_6_2 == 3 || ldv_work_6_2 == 2) && (unsigned long )ldv_work_struct_6_2 == (unsigned long )work) {
    ldv_work_6_2 = 1;
  } else {
  }
  if ((ldv_work_6_3 == 3 || ldv_work_6_3 == 2) && (unsigned long )ldv_work_struct_6_3 == (unsigned long )work) {
    ldv_work_6_3 = 1;
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
  goto ldv_48125;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_48125;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_48125;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_48125;
  default:
  ldv_stop();
  }
  ldv_48125: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ipr_test_intr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void activate_work_7(struct work_struct *work , int state )
{
  {
  if (ldv_work_7_0 == 0) {
    ldv_work_struct_7_0 = work;
    ldv_work_7_0 = state;
    return;
  } else {
  }
  if (ldv_work_7_1 == 0) {
    ldv_work_struct_7_1 = work;
    ldv_work_7_1 = state;
    return;
  } else {
  }
  if (ldv_work_7_2 == 0) {
    ldv_work_struct_7_2 = work;
    ldv_work_7_2 = state;
    return;
  } else {
  }
  if (ldv_work_7_3 == 0) {
    ldv_work_struct_7_3 = work;
    ldv_work_7_3 = state;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 != 0 && line == ldv_irq_line_3_0) {
    ldv_irq_3_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_1 != 0 && line == ldv_irq_line_3_1) {
    ldv_irq_3_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_2 != 0 && line == ldv_irq_line_3_2) {
    ldv_irq_3_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_3 != 0 && line == ldv_irq_line_3_3) {
    ldv_irq_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_3(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ipr_test_intr)) {
    return (1);
  } else {
  }
  return (0);
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
      irq_retval = ipr_isr_mhrrq(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_48155;
    default:
    ldv_stop();
    }
    ldv_48155: ;
  } else {
  }
  return (state);
}
}
void call_and_disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 2 || ldv_work_6_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_0) {
    ipr_reset_reset_work(work);
    ldv_work_6_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_1 == 2 || ldv_work_6_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_1) {
    ipr_reset_reset_work(work);
    ldv_work_6_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_2 == 2 || ldv_work_6_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_2) {
    ipr_reset_reset_work(work);
    ldv_work_6_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_3 == 2 || ldv_work_6_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_3) {
    ipr_reset_reset_work(work);
    ldv_work_6_3 = 1;
    return;
  } else {
  }
  return;
}
}
void choose_interrupt_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_0, ldv_irq_line_3_0, ldv_irq_data_3_0);
  goto ldv_48168;
  case 1:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_1, ldv_irq_line_3_1, ldv_irq_data_3_1);
  goto ldv_48168;
  case 2:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_2, ldv_irq_line_3_2, ldv_irq_data_3_2);
  goto ldv_48168;
  case 3:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_3, ldv_irq_line_3_3, ldv_irq_data_3_3);
  goto ldv_48168;
  default:
  ldv_stop();
  }
  ldv_48168: ;
  return;
}
}
int reg_check_5(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& ipr_isr)) {
    return (1);
  } else {
  }
  return (0);
}
}
int main(void)
{
  enum pci_channel_state ldvarg0 ;
  size_t ldvarg1 ;
  struct device_attribute *ldvarg4 ;
  void *tmp ;
  char *ldvarg3 ;
  void *tmp___0 ;
  struct device *ldvarg2 ;
  void *tmp___1 ;
  char *ldvarg7 ;
  void *tmp___2 ;
  char *ldvarg5 ;
  void *tmp___3 ;
  size_t ldvarg6 ;
  struct device *ldvarg8 ;
  void *tmp___4 ;
  struct device_attribute *ldvarg10 ;
  void *tmp___5 ;
  char *ldvarg9 ;
  void *tmp___6 ;
  char *ldvarg11 ;
  void *tmp___7 ;
  char *ldvarg13 ;
  void *tmp___8 ;
  size_t ldvarg12 ;
  struct device *ldvarg14 ;
  void *tmp___9 ;
  struct device_attribute *ldvarg16 ;
  void *tmp___10 ;
  char *ldvarg15 ;
  void *tmp___11 ;
  struct device *ldvarg18 ;
  void *tmp___12 ;
  struct device_attribute *ldvarg20 ;
  void *tmp___13 ;
  size_t ldvarg17 ;
  char *ldvarg19 ;
  void *tmp___14 ;
  struct device *ldvarg21 ;
  void *tmp___15 ;
  struct device_attribute *ldvarg23 ;
  void *tmp___16 ;
  char *ldvarg22 ;
  void *tmp___17 ;
  void *ldvarg24 ;
  void *tmp___18 ;
  unsigned long ldvarg27 ;
  int ldvarg26 ;
  int ldvarg25 ;
  sector_t ldvarg29 ;
  int *ldvarg28 ;
  void *tmp___19 ;
  struct block_device *ldvarg30 ;
  void *tmp___20 ;
  char *ldvarg32 ;
  void *tmp___21 ;
  struct device *ldvarg31 ;
  void *tmp___22 ;
  struct device_attribute *ldvarg33 ;
  void *tmp___23 ;
  struct device_attribute *ldvarg37 ;
  void *tmp___24 ;
  struct device *ldvarg35 ;
  void *tmp___25 ;
  char *ldvarg36 ;
  void *tmp___26 ;
  size_t ldvarg34 ;
  char *ldvarg39 ;
  void *tmp___27 ;
  struct bin_attribute *ldvarg41 ;
  void *tmp___28 ;
  loff_t ldvarg43 ;
  struct kobject *ldvarg42 ;
  void *tmp___29 ;
  struct file *ldvarg40 ;
  size_t ldvarg38 ;
  void *ldvarg45 ;
  void *tmp___31 ;
  struct notifier_block *ldvarg44 ;
  void *tmp___32 ;
  unsigned long ldvarg46 ;
  unsigned long ldvarg48 ;
  unsigned int *ldvarg49 ;
  void *tmp___33 ;
  struct ata_link *ldvarg47 ;
  void *tmp___34 ;
  char *ldvarg51 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg52 ;
  void *tmp___36 ;
  struct device *ldvarg50 ;
  void *tmp___37 ;
  size_t ldvarg54 ;
  char *ldvarg53 ;
  void *tmp___38 ;
  char *ldvarg55 ;
  void *tmp___39 ;
  char *ldvarg57 ;
  void *tmp___40 ;
  struct device_attribute *ldvarg58 ;
  void *tmp___41 ;
  struct device *ldvarg56 ;
  void *tmp___42 ;
  char *ldvarg61 ;
  void *tmp___43 ;
  size_t ldvarg60 ;
  char *ldvarg59 ;
  void *tmp___44 ;
  size_t ldvarg65 ;
  char *ldvarg63 ;
  void *tmp___45 ;
  loff_t ldvarg67 ;
  char *ldvarg66 ;
  void *tmp___46 ;
  loff_t ldvarg64 ;
  size_t ldvarg62 ;
  struct pci_device_id *ldvarg68 ;
  void *tmp___47 ;
  int tmp___48 ;
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
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  {
  tmp = ldv_init_zalloc(48UL);
  ldvarg4 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1416UL);
  ldvarg2 = (struct device *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(1416UL);
  ldvarg8 = (struct device *)tmp___4;
  tmp___5 = ldv_init_zalloc(48UL);
  ldvarg10 = (struct device_attribute *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1416UL);
  ldvarg14 = (struct device *)tmp___9;
  tmp___10 = ldv_init_zalloc(48UL);
  ldvarg16 = (struct device_attribute *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(1416UL);
  ldvarg18 = (struct device *)tmp___12;
  tmp___13 = ldv_init_zalloc(48UL);
  ldvarg20 = (struct device_attribute *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___14;
  tmp___15 = ldv_init_zalloc(1416UL);
  ldvarg21 = (struct device *)tmp___15;
  tmp___16 = ldv_init_zalloc(48UL);
  ldvarg23 = (struct device_attribute *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg22 = (char *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg24 = tmp___18;
  tmp___19 = ldv_init_zalloc(4UL);
  ldvarg28 = (int *)tmp___19;
  tmp___20 = ldv_init_zalloc(480UL);
  ldvarg30 = (struct block_device *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1416UL);
  ldvarg31 = (struct device *)tmp___22;
  tmp___23 = ldv_init_zalloc(48UL);
  ldvarg33 = (struct device_attribute *)tmp___23;
  tmp___24 = ldv_init_zalloc(48UL);
  ldvarg37 = (struct device_attribute *)tmp___24;
  tmp___25 = ldv_init_zalloc(1416UL);
  ldvarg35 = (struct device *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___27;
  tmp___28 = ldv_init_zalloc(72UL);
  ldvarg41 = (struct bin_attribute *)tmp___28;
  tmp___29 = ldv_init_zalloc(296UL);
  ldvarg42 = (struct kobject *)tmp___29;
  ldvarg40 = ldv_malloc(sizeof(struct file));
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg45 = tmp___31;
  tmp___32 = ldv_init_zalloc(24UL);
  ldvarg44 = (struct notifier_block *)tmp___32;
  tmp___33 = ldv_init_zalloc(4UL);
  ldvarg49 = (unsigned int *)tmp___33;
  tmp___34 = ldv_init_zalloc(7064UL);
  ldvarg47 = (struct ata_link *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg51 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(48UL);
  ldvarg52 = (struct device_attribute *)tmp___36;
  tmp___37 = ldv_init_zalloc(1416UL);
  ldvarg50 = (struct device *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg53 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg55 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg57 = (char *)tmp___40;
  tmp___41 = ldv_init_zalloc(48UL);
  ldvarg58 = (struct device_attribute *)tmp___41;
  tmp___42 = ldv_init_zalloc(1416UL);
  ldvarg56 = (struct device *)tmp___42;
  tmp___43 = ldv_init_zalloc(1UL);
  ldvarg61 = (char *)tmp___43;
  tmp___44 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___44;
  tmp___45 = ldv_init_zalloc(1UL);
  ldvarg63 = (char *)tmp___45;
  tmp___46 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___46;
  tmp___47 = ldv_init_zalloc(32UL);
  ldvarg68 = (struct pci_device_id *)tmp___47;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg12), 0, 8UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg27), 0, 8UL);
  ldv_memset((void *)(& ldvarg26), 0, 4UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  ldv_memset((void *)(& ldvarg29), 0, 8UL);
  ldv_memset((void *)(& ldvarg34), 0, 8UL);
  ldv_memset((void *)(& ldvarg43), 0, 8UL);
  ldv_memset((void *)(& ldvarg38), 0, 8UL);
  ldv_memset((void *)(& ldvarg46), 0, 8UL);
  ldv_memset((void *)(& ldvarg48), 0, 8UL);
  ldv_memset((void *)(& ldvarg54), 0, 8UL);
  ldv_memset((void *)(& ldvarg60), 0, 8UL);
  ldv_memset((void *)(& ldvarg65), 0, 8UL);
  ldv_memset((void *)(& ldvarg67), 0, 8UL);
  ldv_memset((void *)(& ldvarg64), 0, 8UL);
  ldv_memset((void *)(& ldvarg62), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_21 = 0;
  work_init_7();
  ldv_state_variable_7 = 1;
  ldv_state_variable_26 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_22 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_23 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_25 = 0;
  work_init_6();
  ldv_state_variable_6 = 1;
  ldv_state_variable_28 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 1;
  ldv_state_variable_4 = 1;
  ldv_state_variable_24 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 1;
  ldv_48422:
  tmp___48 = __VERIFIER_nondet_int();
  switch (tmp___48) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      ipr_pci_slot_reset(ipr_err_handler_group0);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_48294;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      ipr_pci_error_detected(ipr_err_handler_group0, (pci_channel_state_t )ldvarg0);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_48294;
    case 2: ;
    if (ldv_state_variable_11 == 1) {
      ipr_pci_mmio_enabled(ipr_err_handler_group0);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_48294;
    default:
    ldv_stop();
    }
    ldv_48294: ;
  } else {
  }
  goto ldv_48298;
  case 1: ;
  if (ldv_state_variable_21 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      ipr_store_update_fw(ldvarg2, ldvarg4, (char const *)ldvarg3, ldvarg1);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_48301;
    default:
    ldv_stop();
    }
    ldv_48301: ;
  } else {
  }
  goto ldv_48298;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    invoke_work_7();
  } else {
  }
  goto ldv_48298;
  case 3: ;
  if (ldv_state_variable_26 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      ipr_store_log_level(ipr_log_level_attr_group1, ipr_log_level_attr_group0, (char const *)ldvarg7,
                          ldvarg6);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_48306;
    case 1: ;
    if (ldv_state_variable_26 == 1) {
      ipr_show_log_level(ipr_log_level_attr_group1, ipr_log_level_attr_group0, ldvarg5);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_48306;
    default:
    ldv_stop();
    }
    ldv_48306: ;
  } else {
  }
  goto ldv_48298;
  case 4: ;
  if (ldv_state_variable_17 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      ipr_show_resource_path(ldvarg8, ldvarg10, ldvarg9);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_48311;
    default:
    ldv_stop();
    }
    ldv_48311: ;
  } else {
  }
  goto ldv_48298;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_48298;
  case 6: ;
  if (ldv_state_variable_22 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      ipr_store_iopoll_weight(ipr_iopoll_weight_attr_group1, ipr_iopoll_weight_attr_group0,
                              (char const *)ldvarg13, ldvarg12);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_48316;
    case 1: ;
    if (ldv_state_variable_22 == 1) {
      ipr_show_iopoll_weight(ipr_iopoll_weight_attr_group1, ipr_iopoll_weight_attr_group0,
                             ldvarg11);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_48316;
    default:
    ldv_stop();
    }
    ldv_48316: ;
  } else {
  }
  goto ldv_48298;
  case 7: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_48298;
  case 8: ;
  if (ldv_state_variable_18 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      ipr_show_adapter_handle(ldvarg14, ldvarg16, ldvarg15);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_48322;
    default:
    ldv_stop();
    }
    ldv_48322: ;
  } else {
  }
  goto ldv_48298;
  case 9: ;
  if (ldv_state_variable_0 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      ipr_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_48327;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = ipr_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_19 = 1;
        ldv_initialize_bin_attribute_19();
        ldv_state_variable_24 = 1;
        ldv_initialize_device_attribute_24();
        ldv_state_variable_20 = 1;
        ldv_state_variable_15 = 1;
        ldv_state_variable_14 = 1;
        ldv_initialize_device_attribute_14();
        ldv_state_variable_12 = 1;
        ldv_initialize_ata_port_operations_12();
        ldv_state_variable_9 = 1;
        ldv_state_variable_28 = 1;
        ldv_state_variable_25 = 1;
        ldv_state_variable_27 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_23 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_22 = 1;
        ldv_initialize_device_attribute_22();
        ldv_state_variable_17 = 1;
        ldv_state_variable_26 = 1;
        ldv_initialize_device_attribute_26();
        ldv_state_variable_21 = 1;
        ldv_state_variable_11 = 1;
        ldv_initialize_pci_error_handlers_11();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_48327;
    default:
    ldv_stop();
    }
    ldv_48327: ;
  } else {
  }
  goto ldv_48298;
  case 10: ;
  if (ldv_state_variable_23 != 0) {
    tmp___56 = __VERIFIER_nondet_int();
    switch (tmp___56) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      ipr_store_reset_adapter(ldvarg18, ldvarg20, (char const *)ldvarg19, ldvarg17);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_48332;
    default:
    ldv_stop();
    }
    ldv_48332: ;
  } else {
  }
  goto ldv_48298;
  case 11: ;
  if (ldv_state_variable_16 != 0) {
    tmp___57 = __VERIFIER_nondet_int();
    switch (tmp___57) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      ipr_show_device_id(ldvarg21, ldvarg23, ldvarg22);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_48336;
    default:
    ldv_stop();
    }
    ldv_48336: ;
  } else {
  }
  goto ldv_48298;
  case 12: ;
  if (ldv_state_variable_13 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      ipr_biosparam(driver_template_group3, ldvarg30, ldvarg29, ldvarg28);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      ipr_scan_finished(driver_template_group1, ldvarg27);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 2: ;
    if (ldv_state_variable_13 == 1) {
      ipr_slave_configure(driver_template_group3);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 3: ;
    if (ldv_state_variable_13 == 1) {
      ipr_change_queue_depth(driver_template_group3, ldvarg26);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 4: ;
    if (ldv_state_variable_13 == 1) {
      ipr_queuecommand(driver_template_group1, driver_template_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 5: ;
    if (ldv_state_variable_13 == 1) {
      ipr_eh_dev_reset(driver_template_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 6: ;
    if (ldv_state_variable_13 == 1) {
      ipr_eh_abort(driver_template_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 7: ;
    if (ldv_state_variable_13 == 1) {
      ipr_target_alloc(driver_template_group2);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 8: ;
    if (ldv_state_variable_13 == 1) {
      ipr_slave_alloc(driver_template_group3);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 9: ;
    if (ldv_state_variable_13 == 1) {
      ipr_ioctl(driver_template_group3, ldvarg25, ldvarg24);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 10: ;
    if (ldv_state_variable_13 == 1) {
      ipr_slave_destroy(driver_template_group3);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 11: ;
    if (ldv_state_variable_13 == 1) {
      ipr_target_destroy(driver_template_group2);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 12: ;
    if (ldv_state_variable_13 == 1) {
      ipr_eh_host_reset(driver_template_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    case 13: ;
    if (ldv_state_variable_13 == 1) {
      ipr_ioa_info(driver_template_group1);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_48340;
    default:
    ldv_stop();
    }
    ldv_48340: ;
  } else {
  }
  goto ldv_48298;
  case 13: ;
  if (ldv_state_variable_27 != 0) {
    tmp___59 = __VERIFIER_nondet_int();
    switch (tmp___59) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      ipr_show_fw_version(ldvarg31, ldvarg33, ldvarg32);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_48357;
    default:
    ldv_stop();
    }
    ldv_48357: ;
  } else {
  }
  goto ldv_48298;
  case 14: ;
  if (ldv_state_variable_25 != 0) {
    tmp___60 = __VERIFIER_nondet_int();
    switch (tmp___60) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      ipr_store_diagnostics(ldvarg35, ldvarg37, (char const *)ldvarg36, ldvarg34);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_48361;
    default:
    ldv_stop();
    }
    ldv_48361: ;
  } else {
  }
  goto ldv_48298;
  case 15: ;
  if (ldv_state_variable_6 != 0) {
    invoke_work_6();
  } else {
  }
  goto ldv_48298;
  case 16: ;
  if (ldv_state_variable_28 != 0) {
    tmp___61 = __VERIFIER_nondet_int();
    switch (tmp___61) {
    case 0: ;
    if (ldv_state_variable_28 == 2) {
      ipr_read_trace(ldvarg40, ldvarg42, ldvarg41, ldvarg39, ldvarg43, ldvarg38);
      ldv_state_variable_28 = 2;
    } else {
    }
    goto ldv_48366;
    case 1: ;
    if (ldv_state_variable_28 == 2) {
      ldv_release_28();
      ldv_state_variable_28 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_48366;
    case 2: ;
    if (ldv_state_variable_28 == 1) {
      ldv_probe_28();
      ldv_state_variable_28 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_48366;
    default:
    ldv_stop();
    }
    ldv_48366: ;
  } else {
  }
  goto ldv_48298;
  case 17: ;
  if (ldv_state_variable_3 != 0) {
    choose_interrupt_3();
  } else {
  }
  goto ldv_48298;
  case 18: ;
  if (ldv_state_variable_9 != 0) {
    tmp___62 = __VERIFIER_nondet_int();
    switch (tmp___62) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      ipr_halt(ldvarg44, ldvarg46, ldvarg45);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_48373;
    default:
    ldv_stop();
    }
    ldv_48373: ;
  } else {
  }
  goto ldv_48298;
  case 19: ;
  if (ldv_state_variable_12 != 0) {
    tmp___63 = __VERIFIER_nondet_int();
    switch (tmp___63) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      ipr_qc_issue(ipr_sata_ops_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      ipr_qc_fill_rtf(ipr_sata_ops_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 2: ;
    if (ldv_state_variable_12 == 1) {
      ipr_ata_post_internal(ipr_sata_ops_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 3: ;
    if (ldv_state_variable_12 == 1) {
      ata_sas_port_start(ipr_sata_ops_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 4: ;
    if (ldv_state_variable_12 == 1) {
      ipr_qc_defer(ipr_sata_ops_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 5: ;
    if (ldv_state_variable_12 == 1) {
      ipr_ata_phy_reset(ipr_sata_ops_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 6: ;
    if (ldv_state_variable_12 == 1) {
      ata_noop_qc_prep(ipr_sata_ops_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 7: ;
    if (ldv_state_variable_12 == 1) {
      ata_sas_port_stop(ipr_sata_ops_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    case 8: ;
    if (ldv_state_variable_12 == 1) {
      ipr_sata_reset(ldvarg47, ldvarg49, ldvarg48);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_48377;
    default:
    ldv_stop();
    }
    ldv_48377: ;
  } else {
  }
  goto ldv_48298;
  case 20: ;
  if (ldv_state_variable_20 != 0) {
    tmp___64 = __VERIFIER_nondet_int();
    switch (tmp___64) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      ipr_show_fw_type(ldvarg50, ldvarg52, ldvarg51);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_48389;
    default:
    ldv_stop();
    }
    ldv_48389: ;
  } else {
  }
  goto ldv_48298;
  case 21: ;
  if (ldv_state_variable_14 != 0) {
    tmp___65 = __VERIFIER_nondet_int();
    switch (tmp___65) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      ipr_store_raw_mode(ipr_raw_mode_attr_group1, ipr_raw_mode_attr_group0, (char const *)ldvarg55,
                         ldvarg54);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_48393;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      ipr_show_raw_mode(ipr_raw_mode_attr_group1, ipr_raw_mode_attr_group0, ldvarg53);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_48393;
    default:
    ldv_stop();
    }
    ldv_48393: ;
  } else {
  }
  goto ldv_48298;
  case 22: ;
  if (ldv_state_variable_15 != 0) {
    tmp___66 = __VERIFIER_nondet_int();
    switch (tmp___66) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      ipr_show_resource_type(ldvarg56, ldvarg58, ldvarg57);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_48398;
    default:
    ldv_stop();
    }
    ldv_48398: ;
  } else {
  }
  goto ldv_48298;
  case 23: ;
  if (ldv_state_variable_8 != 0) {
    choose_timer_8(ldv_timer_list_8);
  } else {
  }
  goto ldv_48298;
  case 24: ;
  if (ldv_state_variable_4 != 0) {
    choose_interrupt_4();
  } else {
  }
  goto ldv_48298;
  case 25: ;
  if (ldv_state_variable_24 != 0) {
    tmp___67 = __VERIFIER_nondet_int();
    switch (tmp___67) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      ipr_store_adapter_state(ipr_ioa_state_attr_group1, ipr_ioa_state_attr_group0,
                              (char const *)ldvarg61, ldvarg60);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_48404;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      ipr_show_adapter_state(ipr_ioa_state_attr_group1, ipr_ioa_state_attr_group0,
                             ldvarg59);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_48404;
    default:
    ldv_stop();
    }
    ldv_48404: ;
  } else {
  }
  goto ldv_48298;
  case 26: ;
  if (ldv_state_variable_19 != 0) {
    tmp___68 = __VERIFIER_nondet_int();
    switch (tmp___68) {
    case 0: ;
    if (ldv_state_variable_19 == 2) {
      ipr_write_dump(ipr_dump_attr_group1, ipr_dump_attr_group0, ipr_dump_attr_group2,
                     ldvarg66, ldvarg67, ldvarg65);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_48409;
    case 1: ;
    if (ldv_state_variable_19 == 2) {
      ipr_read_dump(ipr_dump_attr_group1, ipr_dump_attr_group0, ipr_dump_attr_group2,
                    ldvarg63, ldvarg64, ldvarg62);
      ldv_state_variable_19 = 2;
    } else {
    }
    goto ldv_48409;
    case 2: ;
    if (ldv_state_variable_19 == 2) {
      ldv_release_19();
      ldv_state_variable_19 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_48409;
    case 3: ;
    if (ldv_state_variable_19 == 1) {
      ldv_probe_19();
      ldv_state_variable_19 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_48409;
    default:
    ldv_stop();
    }
    ldv_48409: ;
  } else {
  }
  goto ldv_48298;
  case 27: ;
  if (ldv_state_variable_10 != 0) {
    tmp___69 = __VERIFIER_nondet_int();
    switch (tmp___69) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      ldv_retval_1 = ipr_probe(ipr_driver_group1, (struct pci_device_id const *)ldvarg68);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_10 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_48416;
    case 1: ;
    if (ldv_state_variable_10 == 2) {
      ipr_shutdown(ipr_driver_group1);
      ldv_state_variable_10 = 2;
    } else {
    }
    goto ldv_48416;
    case 2: ;
    if (ldv_state_variable_10 == 2) {
      ipr_remove(ipr_driver_group1);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_48416;
    default:
    ldv_stop();
    }
    ldv_48416: ;
  } else {
  }
  goto ldv_48298;
  case 28: ;
  if (ldv_state_variable_5 != 0) {
    choose_interrupt_5();
  } else {
  }
  goto ldv_48298;
  default:
  ldv_stop();
  }
  ldv_48298: ;
  goto ldv_48422;
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
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
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
  activate_work_7(& ldv_func_arg3->work, 2);
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
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
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
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct page));
  return ((struct page *)tmp);
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
int ldv_scsi_add_host_with_dma_29(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_13 = 1;
    ldv_initialize_scsi_host_template_13();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_30(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
unsigned long ldv___get_free_pages_31(gfp_t flags , unsigned int ldv_func_arg2 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(4096UL * (1 << ldv_func_arg2));
  return ((unsigned long )tmp);
}
}
void *ldv_vmalloc_32(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
void *ldv_vmalloc_33(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
int ldv_del_timer_34(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_35(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_36(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_37(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_38(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_8(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_39(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_40(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_destroy_workqueue_41(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
void *ldv_dma_pool_alloc_42(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(1872UL);
  return (tmp);
}
}
__inline static int ldv_request_irq_43(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___13 ldv_func_res ;
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
void ldv_free_irq_44(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_45(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___14 ldv_func_res ;
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
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___15 ldv_func_res ;
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
void ldv_free_irq_47(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_48(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
struct Scsi_Host *ldv_scsi_host_alloc_49(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___16 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___16 )0)) {
    ldv_state_variable_13 = 1;
    ldv_initialize_scsi_host_template_13();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_50(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___17 ldv_func_res ;
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
__inline static int ldv_request_irq_51(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___18 ldv_func_res ;
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
bool ldv_flush_work_52(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___19 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_7(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_53(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
void ldv_scsi_remove_host_54(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_13 = 0;
  return;
}
}
void ldv_scsi_remove_host_55(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_13 = 0;
  return;
}
}
void ldv_scsi_remove_host_56(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_13 = 0;
  return;
}
}
int ldv___pci_register_driver_57(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___20 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_10 = 1;
  ldv_pci_driver_10();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_58(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_10 = 0;
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
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
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __udelay(unsigned long arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
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
void add_timer(struct timer_list *arg0) {
  return;
}
void ata_host_init(struct ata_host *arg0, struct device *arg1, struct ata_port_operations *arg2) {
  return;
}
void ata_noop_qc_prep(struct ata_queued_cmd *arg0) {
  return;
}
void ata_qc_complete(struct ata_queued_cmd *arg0) {
  return;
}
struct ata_port *ata_sas_port_alloc(struct ata_host *arg0, struct ata_port_info *arg1, struct Scsi_Host *arg2) {
  return ldv_malloc(sizeof(struct ata_port));
}
void ata_sas_port_destroy(struct ata_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ata_sas_port_init(struct ata_port *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ata_sas_port_start(struct ata_port *arg0) {
  return __VERIFIER_nondet_int();
}
void ata_sas_port_stop(struct ata_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ata_sas_queuecmd(struct scsi_cmnd *arg0, struct ata_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ata_sas_scsi_ioctl(struct ata_port *arg0, struct scsi_device *arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ata_sas_slave_configure(struct scsi_device *arg0, struct ata_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ata_sas_sync_probe(struct ata_port *arg0) {
  return __VERIFIER_nondet_int();
}
void ata_std_error_handler(struct ata_port *arg0) {
  return;
}
void blk_iopoll_complete(struct blk_iopoll *arg0) {
  return;
}
void blk_iopoll_disable(struct blk_iopoll *arg0) {
  return;
}
void blk_iopoll_enable(struct blk_iopoll *arg0) {
  return;
}
void blk_iopoll_init(struct blk_iopoll *arg0, int arg1, blk_iopoll_fn *arg2) {
  return;
}
void blk_iopoll_sched(struct blk_iopoll *arg0) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_rq_timeout(struct request_queue *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
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
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
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
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int kobject_uevent(struct kobject *arg0, enum kobject_action arg1) {
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
int ldv_probe_19() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_28() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_19() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_28() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t memory_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
void msleep(unsigned int arg0) {
  return;
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
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool pci_cfg_access_trylock(struct pci_dev *arg0) {
  return __VERIFIER_nondet_bool();
}
void pci_cfg_access_unlock(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
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
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
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
int pci_set_pcie_reset_state(struct pci_dev *arg0, enum pcie_reset_state arg1) {
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
int register_reboot_notifier(struct notifier_block *arg0) {
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
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
void scmd_printk(const char *arg0, const struct scsi_cmnd *arg1, const char *arg2, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_block_requests(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_device_get(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int scsi_is_host_device(const struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_report_bus_reset(struct Scsi_Host *arg0, int arg1) {
  return;
}
void scsi_report_device_reset(struct Scsi_Host *arg0, int arg1, int arg2) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_unblock_requests(struct Scsi_Host *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 scsilun_to_int(struct scsi_lun *arg0) {
  return __VERIFIER_nondet_ulong();
}
void sdev_prefix_printk(const char *arg0, const struct scsi_device *arg1, const char *arg2, const char *arg3, ...) {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
char *strim(char *arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int sysfs_create_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void vfree(const void *arg0) {
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
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
