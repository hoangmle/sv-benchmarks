extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct module;
struct file_operations;
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
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2023_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2023_8 ldv_2023 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2030_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2030_10 ldv_2030 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
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
struct __anonstruct_ldv_2147_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2162_13 {
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
union __anonunion_ldv_2163_11 {
   struct __anonstruct_ldv_2147_12 ldv_2147 ;
   struct __anonstruct_ldv_2162_13 ldv_2162 ;
};
struct desc_struct {
   union __anonunion_ldv_2163_11 ldv_2163 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
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
union __anonunion_ldv_2766_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2766_18 ldv_2766 ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
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
struct __anonstruct_ldv_5121_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5127_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5128_22 {
   struct __anonstruct_ldv_5121_23 ldv_5121 ;
   struct __anonstruct_ldv_5127_24 ldv_5127 ;
};
union __anonunion_ldv_5137_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5128_22 ldv_5128 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5137_25 ldv_5137 ;
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
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
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
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5956_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5957_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5956_29 ldv_5956 ;
};
struct spinlock {
   union __anonunion_ldv_5957_28 ldv_5957 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
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
struct vfsmount;
struct dentry;
struct path;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6264_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6264_31 ldv_6264 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct eventfd_ctx;
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
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
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
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
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_12188_129 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_12198_133 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_12200_132 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12198_133 ldv_12198 ;
   int units ;
};
struct __anonstruct_ldv_12202_131 {
   union __anonunion_ldv_12200_132 ldv_12200 ;
   atomic_t _count ;
};
union __anonunion_ldv_12203_130 {
   unsigned long counters ;
   struct __anonstruct_ldv_12202_131 ldv_12202 ;
};
struct __anonstruct_ldv_12204_128 {
   union __anonunion_ldv_12188_129 ldv_12188 ;
   union __anonunion_ldv_12203_130 ldv_12203 ;
};
struct __anonstruct_ldv_12211_135 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct_ldv_12217_136 {
   struct kmem_cache *slab_cache ;
   struct slab *slab_page ;
};
union __anonunion_ldv_12218_134 {
   struct list_head lru ;
   struct __anonstruct_ldv_12211_135 ldv_12211 ;
   struct list_head list ;
   struct __anonstruct_ldv_12217_136 ldv_12217 ;
};
union __anonunion_ldv_12223_137 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_12204_128 ldv_12204 ;
   union __anonunion_ldv_12218_134 ldv_12218 ;
   union __anonunion_ldv_12223_137 ldv_12223 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_139 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_138 {
   struct __anonstruct_linear_139 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_138 shared ;
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
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
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
   unsigned long nr_ptes ;
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
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
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
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
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
   struct sysfs_dirent *sd ;
   struct kref kref ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
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
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
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
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
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
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
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
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
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
struct vhost_vring_state {
   unsigned int index ;
   unsigned int num ;
};
struct vhost_vring_file {
   unsigned int index ;
   int fd ;
};
struct vhost_vring_addr {
   unsigned int index ;
   unsigned int flags ;
   __u64 desc_user_addr ;
   __u64 used_user_addr ;
   __u64 avail_user_addr ;
   __u64 log_guest_addr ;
};
struct vhost_memory_region {
   __u64 guest_phys_addr ;
   __u64 memory_size ;
   __u64 userspace_addr ;
   __u64 flags_padding ;
};
struct vhost_memory {
   __u32 nregions ;
   __u32 padding ;
   struct vhost_memory_region regions[0U] ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct kiocb;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __large_struct {
   unsigned long buf[100U] ;
};
struct sk_buff;
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
   struct hrtimer_clock_base clock_base[3U] ;
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
struct ubuf_info {
   void (*callback)(struct ubuf_info * ) ;
   void *ctx ;
   unsigned long desc ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_19161_144 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_19162_143 {
   __wsum csum ;
   struct __anonstruct_ldv_19161_144 ldv_19161 ;
};
union __anonunion_ldv_19200_145 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_19162_143 ldv_19162 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
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
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_19200_145 ldv_19200 ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct __anonstruct_ldv_20371_147 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_20373_146 {
   struct __anonstruct_ldv_20371_147 ldv_20371 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_20373_146 ldv_20373 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_148 {
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
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_148 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
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
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
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
struct radix_tree_node;
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
struct io_context;
struct cgroup_subsys_state;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
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
union __anonunion_ldv_21699_150 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_21699_150 ldv_21699 ;
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
union __anonunion_arg_152 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_151 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_152 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_151 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
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
union __anonunion_ldv_22133_153 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_22153_154 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_22169_155 {
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
   union __anonunion_ldv_22133_153 ldv_22133 ;
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
   union __anonunion_ldv_22153_154 ldv_22153 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_22169_155 ldv_22169 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_156 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_156 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
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
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
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
struct __anonstruct_afs_158 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_157 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_158 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
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
   union __anonunion_fl_u_157 fl_u ;
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
struct file_system_type;
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
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
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
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
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
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
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
   void (*truncate)(struct inode * ) ;
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
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
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
struct __anonstruct_ldv_24908_160 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_24910_159 {
   struct __anonstruct_ldv_24908_160 ldv_24908 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_24910_159 ldv_24910 ;
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
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
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
typedef struct poll_table_struct poll_table;
struct proc_dir_entry;
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
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
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_170 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_171 {
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
   struct __anonstruct__sigpoll_170 _sigpoll ;
   struct __anonstruct__sigsys_171 _sigsys ;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_26891_174 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_26900_175 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_176 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_26891_174 ldv_26891 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_26900_175 ldv_26900 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_176 type_data ;
   union __anonunion_payload_177 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct callback_head rcu ;
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
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct kioctx;
union __anonunion_ki_obj_178 {
   void *user ;
   struct task_struct *tsk ;
};
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_178 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
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
struct uts_namespace;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct plist_head pi_waiters ;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
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
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct dev_pm_qos_request {
   struct plist_node node ;
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
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
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
struct __anonstruct_sync_serial_settings_182 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_182 sync_serial_settings;
struct __anonstruct_te1_settings_183 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_183 te1_settings;
struct __anonstruct_raw_hdlc_proto_184 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_184 raw_hdlc_proto;
struct __anonstruct_fr_proto_185 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_185 fr_proto;
struct __anonstruct_fr_proto_pvc_186 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_186 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_187 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_187 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_188 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_188 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_189 {
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
   union __anonunion_ifs_ifsu_189 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_190 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_191 {
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
   union __anonunion_ifr_ifrn_190 ifr_ifrn ;
   union __anonunion_ifr_ifru_191 ifr_ifru ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
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
   __u8 hdata[60U] ;
};
struct ethtool_flow_ext {
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
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
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
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
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
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
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
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
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
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
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
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
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
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
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
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
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
   wait_queue_head_t km_waitq ;
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
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
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
   struct pid_namespace *pid_ns ;
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
   __u32 tx_rate ;
   __u32 spoofchk ;
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
   struct work_struct free_work ;
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
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
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
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_36339_216 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
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
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
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
   union __anonunion_ldv_36339_216 ldv_36339 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
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
struct vhost_work;
struct vhost_work {
   struct list_head node ;
   void (*fn)(struct vhost_work * ) ;
   wait_queue_head_t done ;
   int flushing ;
   unsigned int queue_seq ;
   unsigned int done_seq ;
};
struct vhost_dev;
struct vhost_poll {
   poll_table table ;
   wait_queue_head_t *wqh ;
   wait_queue_t wait ;
   struct vhost_work work ;
   unsigned long mask ;
   struct vhost_dev *dev ;
};
struct vhost_log {
   u64 addr ;
   u64 len ;
};
struct vhost_virtqueue;
struct vhost_ubuf_ref {
   struct kref kref ;
   wait_queue_head_t wait ;
   struct vhost_virtqueue *vq ;
};
struct vhost_virtqueue {
   struct vhost_dev *dev ;
   struct mutex mutex ;
   unsigned int num ;
   struct vring_desc *desc ;
   struct vring_avail *avail ;
   struct vring_used *used ;
   struct file *kick ;
   struct file *call ;
   struct file *error ;
   struct eventfd_ctx *call_ctx ;
   struct eventfd_ctx *error_ctx ;
   struct eventfd_ctx *log_ctx ;
   struct vhost_poll poll ;
   void (*handle_kick)(struct vhost_work * ) ;
   u16 last_avail_idx ;
   u16 avail_idx ;
   u16 last_used_idx ;
   u16 used_flags ;
   u16 signalled_used ;
   bool signalled_used_valid ;
   bool log_used ;
   u64 log_addr ;
   struct iovec iov[1024U] ;
   struct iovec hdr[12U] ;
   struct iovec *indirect ;
   size_t vhost_hlen ;
   size_t sock_hlen ;
   struct vring_used_elem *heads ;
   void *private_data ;
   void *log_base ;
   struct vhost_log *log ;
   int upend_idx ;
   int done_idx ;
   struct ubuf_info *ubuf_info ;
   struct vhost_ubuf_ref *ubufs ;
};
struct vhost_dev {
   struct vhost_memory *memory ;
   struct mm_struct *mm ;
   struct mutex mutex ;
   unsigned int acked_features ;
   struct vhost_virtqueue *vqs ;
   int nvqs ;
   struct file *log_file ;
   struct eventfd_ctx *log_ctx ;
   spinlock_t work_lock ;
   struct list_head work_list ;
   struct task_struct *worker ;
};
struct vhost_attach_cgroups_struct {
   struct vhost_work work ;
   struct task_struct *owner ;
   int ret ;
};
typedef int ldv_func_ret_type___2;
typedef short s16;
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum hrtimer_restart;
enum ldv_21026 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21026 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
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
   void (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct rtable;
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
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_29030_207 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_29030_207 ldv_29030 ;
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
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
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
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct sockaddr_ll {
   unsigned short sll_family ;
   __be16 sll_protocol ;
   int sll_ifindex ;
   unsigned short sll_hatype ;
   unsigned char sll_pkttype ;
   unsigned char sll_halen ;
   unsigned char sll_addr[8U] ;
};
struct idr_layer {
   unsigned long bitmap ;
   struct idr_layer *ary[64U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   spinlock_t lock ;
};
struct cgroup_subsys;
struct cgroup_map_cb {
   int (*fill)(struct cgroup_map_cb * , char const * , u64 ) ;
   void *state ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct simple_xattrs xattrs ;
   int (*open)(struct inode * , struct file * ) ;
   ssize_t (*read)(struct cgroup * , struct cftype * , struct file * , char * , size_t ,
                   loff_t * ) ;
   u64 (*read_u64)(struct cgroup * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup * , struct cftype * ) ;
   int (*read_map)(struct cgroup * , struct cftype * , struct cgroup_map_cb * ) ;
   int (*read_seq_string)(struct cgroup * , struct cftype * , struct seq_file * ) ;
   ssize_t (*write)(struct cgroup * , struct cftype * , struct file * , char const * ,
                    size_t , loff_t * ) ;
   int (*write_u64)(struct cgroup * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup * , unsigned int ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*register_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ,
                         char const * ) ;
   void (*unregister_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*create)(struct cgroup * ) ;
   int (*pre_destroy)(struct cgroup * ) ;
   void (*destroy)(struct cgroup * ) ;
   int (*can_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup * , struct cgroup * , struct task_struct * ) ;
   void (*post_clone)(struct cgroup * ) ;
   void (*bind)(struct cgroup * ) ;
   int subsys_id ;
   int active ;
   int disabled ;
   int early_init ;
   bool use_id ;
   bool __DEPRECATED_clear_css_refs ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head sibling ;
   struct idr idr ;
   spinlock_t id_lock ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct xfrm_policy;
struct xfrm_state;
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   struct callback_head rcu ;
   struct sock_filter insns[0U] ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int base_reachable_time ;
   int retrans_time ;
   int gc_staletime ;
   int reachable_time ;
   int delay_probe_time ;
   int queue_len_bytes ;
   int ucast_probes ;
   int app_probes ;
   int mcast_probes ;
   int anycast_delay ;
   int proxy_delay ;
   int proxy_qlen ;
   int locktime ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
union __anonunion_ldv_40078_226 {
   unsigned long expires ;
   struct dst_entry *from ;
};
struct dn_route;
union __anonunion_ldv_40103_227 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   union __anonunion_ldv_40078_226 ldv_40078 ;
   struct dst_entry *path ;
   void *__pad0 ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion_ldv_40103_227 ldv_40103 ;
};
struct __anonstruct_socket_lock_t_228 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_228 socket_lock_t;
struct proto;
union __anonunion_ldv_40318_229 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
union __anonunion_ldv_40326_230 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_40333_231 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
   union __anonunion_ldv_40318_229 ldv_40318 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_40326_230 ldv_40326 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_40333_231 ldv_40333 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_232 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_232 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct sk_buff_head sk_async_wait_queue ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
enum sock_flags {
    SOCK_DEAD = 0,
    SOCK_DONE = 1,
    SOCK_URGINLINE = 2,
    SOCK_KEEPOPEN = 3,
    SOCK_LINGER = 4,
    SOCK_DESTROY = 5,
    SOCK_BROADCAST = 6,
    SOCK_TIMESTAMP = 7,
    SOCK_ZAPPED = 8,
    SOCK_USE_WRITE_QUEUE = 9,
    SOCK_DBG = 10,
    SOCK_RCVTSTAMP = 11,
    SOCK_RCVTSTAMPNS = 12,
    SOCK_LOCALROUTE = 13,
    SOCK_QUEUE_SHRUNK = 14,
    SOCK_MEMALLOC = 15,
    SOCK_TIMESTAMPING_TX_HARDWARE = 16,
    SOCK_TIMESTAMPING_TX_SOFTWARE = 17,
    SOCK_TIMESTAMPING_RX_HARDWARE = 18,
    SOCK_TIMESTAMPING_RX_SOFTWARE = 19,
    SOCK_TIMESTAMPING_SOFTWARE = 20,
    SOCK_TIMESTAMPING_RAW_HARDWARE = 21,
    SOCK_TIMESTAMPING_SYS_HARDWARE = 22,
    SOCK_FASYNC = 23,
    SOCK_RXQ_OVFL = 24,
    SOCK_ZEROCOPY = 25,
    SOCK_WIFI_STATUS = 26,
    SOCK_NOFCS = 27
} ;
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_233 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_233 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   void (*enter_memory_pressure)(struct sock * ) ;
   struct res_counter *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
enum vhost_net_poll_state {
    VHOST_NET_POLL_DISABLED = 0,
    VHOST_NET_POLL_STARTED = 1,
    VHOST_NET_POLL_STOPPED = 2
} ;
struct vhost_net {
   struct vhost_dev dev ;
   struct vhost_virtqueue vqs[2U] ;
   struct vhost_poll poll[2U] ;
   enum vhost_net_poll_state tx_poll_state ;
};
struct __anonstruct_uaddr_237 {
   struct sockaddr_ll sa ;
   char buf[32U] ;
};
typedef int ldv_func_ret_type___8;
long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
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
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2860;
  default:
  __bad_percpu_size();
  }
  ldv_2860: ;
  return (pfo_ret__);
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void __xchg_wrong_size(void) ;
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
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2,%0; sete %1": "+m" (v->counter),
                       "=qm" (c): "ir" (i): "memory");
  return ((int )c);
}
}
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mtx(struct mutex *lock ) ;
void ldv_mutex_unlock_mtx(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void fput(struct file * ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6287;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6287;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6287;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6287;
  default:
  __bad_percpu_size();
  }
  ldv_6287:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5957.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5957.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5957.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_waitqueue_func_entry(wait_queue_t *q , int (*func)(wait_queue_t * ,
                                                                             unsigned int ,
                                                                             int ,
                                                                             void * ) )
{
  {
  q->flags = 0U;
  q->private = 0;
  q->func = func;
  return;
}
}
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void eventfd_ctx_put(struct eventfd_ctx * ) ;
extern struct file *eventfd_fget(int ) ;
extern struct eventfd_ctx *eventfd_ctx_fileget(struct file * ) ;
extern __u64 eventfd_signal(struct eventfd_ctx * , __u64 ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern int rcu_is_cpu_idle(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 1, 0, (unsigned long )((void *)0));
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_cpu_idle();
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = rcu_lockdep_current_cpu_online();
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tmp___3 = lock_is_held(& rcu_lock_map);
  return (tmp___3);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 738, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 759, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern int get_user_pages_fast(unsigned long , int , int , struct page ** ) ;
extern int set_page_dirty_lock(struct page * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
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
    warn_slowpath_null("include/linux/kref.h", 67);
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
__inline static int vring_need_event(__u16 event_idx , __u16 new_idx , __u16 old )
{
  {
  return ((unsigned int )((int )new_idx - (int )event_idx) - 1U < (unsigned int )((int )new_idx - (int )old));
}
}
extern int memcpy_fromiovec(unsigned char * , struct iovec * , int ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
extern void *memcpy(void * , void const * , size_t ) ;
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
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
extern int __get_user_bad(void) ;
extern void __put_user_bad(void) ;
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word (9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/vladimir/UFO/Work/test/inst/current/envs/linux-3.7.3/linux-3.7.3/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  might_fault();
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  might_fault();
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
extern void use_mm(struct mm_struct * ) ;
extern void unuse_mm(struct mm_struct * ) ;
__inline static void init_poll_funcptr(poll_table *pt , void (*qproc)(struct file * ,
                                                                      wait_queue_head_t * ,
                                                                      struct poll_table_struct * ) )
{
  {
  pt->_qproc = qproc;
  pt->_key = 0xffffffffffffffffUL;
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  __rcu_read_lock();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  __rcu_read_unlock();
  return;
}
}
extern void schedule(void) ;
extern int wake_up_process(struct task_struct * ) ;
extern void mmput(struct mm_struct * ) ;
extern struct mm_struct *get_task_mm(struct task_struct * ) ;
__inline static int need_resched(void)
{
  struct thread_info *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = current_thread_info();
  tmp___0 = test_ti_thread_flag(tmp, 3);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  return ((int )tmp___1);
}
}
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern int cgroup_attach_task_all(struct task_struct * , struct task_struct * ) ;
void vhost_work_init(struct vhost_work *work , void (*fn)(struct vhost_work * ) ) ;
void vhost_work_queue(struct vhost_dev *dev , struct vhost_work *work ) ;
void vhost_poll_init(struct vhost_poll *poll , void (*fn)(struct vhost_work * ) ,
                     unsigned long mask , struct vhost_dev *dev ) ;
void vhost_poll_start(struct vhost_poll *poll , struct file *file ) ;
void vhost_poll_stop(struct vhost_poll *poll ) ;
void vhost_poll_flush(struct vhost_poll *poll ) ;
void vhost_poll_queue(struct vhost_poll *poll ) ;
struct vhost_ubuf_ref *vhost_ubuf_alloc(struct vhost_virtqueue *vq , bool zcopy ) ;
void vhost_ubuf_put(struct vhost_ubuf_ref *ubufs ) ;
void vhost_ubuf_put_and_wait(struct vhost_ubuf_ref *ubufs ) ;
long vhost_dev_init(struct vhost_dev *dev , struct vhost_virtqueue *vqs , int nvqs ) ;
long vhost_dev_check_owner(struct vhost_dev *dev ) ;
long vhost_dev_reset_owner(struct vhost_dev *dev ) ;
void vhost_dev_cleanup(struct vhost_dev *dev , bool locked ) ;
long vhost_dev_ioctl(struct vhost_dev *d , unsigned int ioctl , unsigned long arg ) ;
int vhost_vq_access_ok(struct vhost_virtqueue *vq ) ;
int vhost_log_access_ok(struct vhost_dev *dev ) ;
int vhost_get_vq_desc(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                      unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                      struct vhost_log *log , unsigned int *log_num ) ;
void vhost_discard_vq_desc(struct vhost_virtqueue *vq , int n ) ;
int vhost_init_used(struct vhost_virtqueue *vq ) ;
int vhost_add_used(struct vhost_virtqueue *vq , unsigned int head , int len ) ;
int vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                     unsigned int count ) ;
void vhost_add_used_and_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                               unsigned int head , int len ) ;
void vhost_add_used_and_signal_n(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                                 struct vring_used_elem *heads , unsigned int count ) ;
void vhost_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
void vhost_disable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
bool vhost_enable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq ) ;
int vhost_log_write(struct vhost_virtqueue *vq , struct vhost_log *log , unsigned int log_num ,
                    u64 len ) ;
void vhost_zerocopy_callback(struct ubuf_info *ubuf ) ;
int vhost_zerocopy_signal_used(struct vhost_virtqueue *vq ) ;
__inline static int vhost_has_feature(struct vhost_dev *dev , int bit )
{
  unsigned int acked_features ;
  unsigned int _________p1 ;
  int tmp ;
  {
  _________p1 = *((unsigned int volatile *)(& dev->acked_features));
  tmp = debug_lockdep_rcu_enabled();
  acked_features = _________p1;
  return ((int )((unsigned int )(1 << bit) & acked_features));
}
}
void vhost_enable_zcopy(int vq ) ;
static unsigned int vhost_zcopy_mask ;
static void vhost_poll_func(struct file *file , wait_queue_head_t *wqh , poll_table *pt )
{
  struct vhost_poll *poll ;
  poll_table const *__mptr ;
  {
  __mptr = (poll_table const *)pt;
  poll = (struct vhost_poll *)__mptr;
  poll->wqh = wqh;
  add_wait_queue(wqh, & poll->wait);
  return;
}
}
static int vhost_poll_wakeup(wait_queue_t *wait , unsigned int mode , int sync , void *key )
{
  struct vhost_poll *poll ;
  wait_queue_t const *__mptr ;
  {
  __mptr = (wait_queue_t const *)wait;
  poll = (struct vhost_poll *)__mptr + 0xffffffffffffffe8UL;
  if ((poll->mask & (unsigned long )key) == 0UL) {
    return (0);
  } else {
  }
  vhost_poll_queue(poll);
  return (0);
}
}
void vhost_work_init(struct vhost_work *work , void (*fn)(struct vhost_work * ) )
{
  struct lock_class_key __key ;
  unsigned int tmp ;
  {
  INIT_LIST_HEAD(& work->node);
  work->fn = fn;
  __init_waitqueue_head(& work->done, "&work->done", & __key);
  work->flushing = 0;
  tmp = 0U;
  work->done_seq = tmp;
  work->queue_seq = tmp;
  return;
}
}
void vhost_poll_init(struct vhost_poll *poll , void (*fn)(struct vhost_work * ) ,
                     unsigned long mask , struct vhost_dev *dev )
{
  {
  init_waitqueue_func_entry(& poll->wait, & vhost_poll_wakeup);
  init_poll_funcptr(& poll->table, & vhost_poll_func);
  poll->mask = mask;
  poll->dev = dev;
  vhost_work_init(& poll->work, fn);
  return;
}
}
void vhost_poll_start(struct vhost_poll *poll , struct file *file )
{
  unsigned long mask ;
  unsigned int tmp ;
  {
  tmp = (*((file->f_op)->poll))(file, & poll->table);
  mask = (unsigned long )tmp;
  if (mask != 0UL) {
    vhost_poll_wakeup(& poll->wait, 0U, 0, (void *)mask);
  } else {
  }
  return;
}
}
void vhost_poll_stop(struct vhost_poll *poll )
{
  {
  remove_wait_queue(poll->wqh, & poll->wait);
  return;
}
}
static bool vhost_work_seq_done(struct vhost_dev *dev , struct vhost_work *work ,
                                unsigned int seq )
{
  int left ;
  {
  spin_lock_irq(& dev->work_lock);
  left = (int )(seq - work->done_seq);
  spin_unlock_irq(& dev->work_lock);
  return (left <= 0);
}
}
static void vhost_work_flush(struct vhost_dev *dev , struct vhost_work *work )
{
  unsigned int seq ;
  int flushing ;
  bool tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  spin_lock_irq(& dev->work_lock);
  seq = work->queue_seq;
  work->flushing = work->flushing + 1;
  spin_unlock_irq(& dev->work_lock);
  tmp = vhost_work_seq_done(dev, work, seq);
  if ((int )tmp) {
    goto ldv_37762;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_37765:
  prepare_to_wait(& work->done, & __wait, 2);
  tmp___1 = vhost_work_seq_done(dev, work, seq);
  if ((int )tmp___1) {
    goto ldv_37764;
  } else {
  }
  schedule();
  goto ldv_37765;
  ldv_37764:
  finish_wait(& work->done, & __wait);
  ldv_37762:
  spin_lock_irq(& dev->work_lock);
  work->flushing = work->flushing - 1;
  flushing = work->flushing;
  spin_unlock_irq(& dev->work_lock);
  tmp___2 = ldv__builtin_expect(flushing < 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared"),
                         "i" (169), "i" (12UL));
    ldv_37766: ;
    goto ldv_37766;
  } else {
  }
  return;
}
}
void vhost_poll_flush(struct vhost_poll *poll )
{
  {
  vhost_work_flush(poll->dev, & poll->work);
  return;
}
}
void vhost_work_queue(struct vhost_dev *dev , struct vhost_work *work )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  tmp = spinlock_check(& dev->work_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = list_empty((struct list_head const *)(& work->node));
  if (tmp___0 != 0) {
    list_add_tail(& work->node, & dev->work_list);
    work->queue_seq = work->queue_seq + 1U;
    wake_up_process(dev->worker);
  } else {
  }
  spin_unlock_irqrestore(& dev->work_lock, flags);
  return;
}
}
void vhost_poll_queue(struct vhost_poll *poll )
{
  {
  vhost_work_queue(poll->dev, & poll->work);
  return;
}
}
static void vhost_vq_reset(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  {
  vq->num = 1U;
  vq->desc = 0;
  vq->avail = 0;
  vq->used = 0;
  vq->last_avail_idx = 0U;
  vq->avail_idx = 0U;
  vq->last_used_idx = 0U;
  vq->signalled_used = 0U;
  vq->signalled_used_valid = 0;
  vq->used_flags = 0U;
  vq->log_used = 0;
  vq->log_addr = 0xffffffffffffffffULL;
  vq->vhost_hlen = 0UL;
  vq->sock_hlen = 0UL;
  vq->private_data = 0;
  vq->log_base = 0;
  vq->error_ctx = 0;
  vq->error = 0;
  vq->kick = 0;
  vq->call_ctx = 0;
  vq->call = 0;
  vq->log_ctx = 0;
  vq->upend_idx = 0;
  vq->done_idx = 0;
  vq->ubufs = 0;
  return;
}
}
static int vhost_worker(void *data )
{
  struct vhost_dev *dev ;
  struct vhost_work *work ;
  unsigned int seq ;
  mm_segment_t oldfs ;
  struct thread_info *tmp ;
  struct thread_info *tmp___0 ;
  mm_segment_t __constr_expr_0 ;
  long volatile __ret ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  bool tmp___6 ;
  struct list_head const *__mptr ;
  int tmp___7 ;
  struct task_struct *tmp___8 ;
  int tmp___9 ;
  struct thread_info *tmp___10 ;
  {
  dev = (struct vhost_dev *)data;
  work = 0;
  seq = seq;
  tmp = current_thread_info();
  oldfs = tmp->addr_limit;
  tmp___0 = current_thread_info();
  __constr_expr_0.seg = 140737488351232UL;
  tmp___0->addr_limit = __constr_expr_0;
  use_mm(dev->mm);
  ldv_37804:
  __ret = 1L;
  switch (8UL) {
  case 1UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_37795;
  case 2UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_37795;
  case 4UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_37795;
  case 8UL:
  tmp___4 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___4->state): : "memory",
                       "cc");
  goto ldv_37795;
  default:
  __xchg_wrong_size();
  }
  ldv_37795:
  spin_lock_irq(& dev->work_lock);
  if ((unsigned long )work != (unsigned long )((struct vhost_work *)0)) {
    work->done_seq = seq;
    if (work->flushing != 0) {
      __wake_up(& work->done, 3U, 0, 0);
    } else {
    }
  } else {
  }
  tmp___6 = kthread_should_stop();
  if ((int )tmp___6) {
    spin_unlock_irq(& dev->work_lock);
    tmp___5 = get_current();
    tmp___5->state = 0L;
    goto ldv_37801;
  } else {
  }
  tmp___7 = list_empty((struct list_head const *)(& dev->work_list));
  if (tmp___7 == 0) {
    __mptr = (struct list_head const *)dev->work_list.next;
    work = (struct vhost_work *)__mptr;
    list_del_init(& work->node);
    seq = work->queue_seq;
  } else {
    work = 0;
  }
  spin_unlock_irq(& dev->work_lock);
  if ((unsigned long )work != (unsigned long )((struct vhost_work *)0)) {
    tmp___8 = get_current();
    tmp___8->state = 0L;
    (*(work->fn))(work);
    tmp___9 = need_resched();
    if (tmp___9 != 0) {
      schedule();
    } else {
    }
  } else {
    schedule();
  }
  goto ldv_37804;
  ldv_37801:
  unuse_mm(dev->mm);
  tmp___10 = current_thread_info();
  tmp___10->addr_limit = oldfs;
  return (0);
}
}
static void vhost_vq_free_iovecs(struct vhost_virtqueue *vq )
{
  {
  kfree((void const *)vq->indirect);
  vq->indirect = 0;
  kfree((void const *)vq->log);
  vq->log = 0;
  kfree((void const *)vq->heads);
  vq->heads = 0;
  kfree((void const *)vq->ubuf_info);
  vq->ubuf_info = 0;
  return;
}
}
void vhost_enable_zcopy(int vq )
{
  {
  vhost_zcopy_mask = (unsigned int )(1 << vq) | vhost_zcopy_mask;
  return;
}
}
static long vhost_dev_alloc_iovecs(struct vhost_dev *dev )
{
  int i ;
  bool zcopy ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  i = 0;
  goto ldv_37818;
  ldv_37817:
  tmp = kmalloc(16384UL, 208U);
  (dev->vqs + (unsigned long )i)->indirect = (struct iovec *)tmp;
  tmp___0 = kmalloc(16384UL, 208U);
  (dev->vqs + (unsigned long )i)->log = (struct vhost_log *)tmp___0;
  tmp___1 = kmalloc(8192UL, 208U);
  (dev->vqs + (unsigned long )i)->heads = (struct vring_used_elem *)tmp___1;
  zcopy = ((unsigned int )(1 << i) & vhost_zcopy_mask) != 0U;
  if ((int )zcopy) {
    tmp___2 = kmalloc(24576UL, 208U);
    (dev->vqs + (unsigned long )i)->ubuf_info = (struct ubuf_info *)tmp___2;
  } else {
  }
  if ((((unsigned long )(dev->vqs + (unsigned long )i)->indirect == (unsigned long )((struct iovec *)0) || (unsigned long )(dev->vqs + (unsigned long )i)->log == (unsigned long )((struct vhost_log *)0)) || (unsigned long )(dev->vqs + (unsigned long )i)->heads == (unsigned long )((struct vring_used_elem *)0)) || ((int )zcopy && (unsigned long )(dev->vqs + (unsigned long )i)->ubuf_info == (unsigned long )((struct ubuf_info *)0))) {
    goto err_nomem;
  } else {
  }
  i = i + 1;
  ldv_37818: ;
  if (dev->nvqs > i) {
    goto ldv_37817;
  } else {
  }
  return (0L);
  err_nomem: ;
  goto ldv_37821;
  ldv_37820:
  vhost_vq_free_iovecs(dev->vqs + (unsigned long )i);
  i = i - 1;
  ldv_37821: ;
  if (i >= 0) {
    goto ldv_37820;
  } else {
  }
  return (-12L);
}
}
static void vhost_dev_free_iovecs(struct vhost_dev *dev )
{
  int i ;
  {
  i = 0;
  goto ldv_37828;
  ldv_37827:
  vhost_vq_free_iovecs(dev->vqs + (unsigned long )i);
  i = i + 1;
  ldv_37828: ;
  if (dev->nvqs > i) {
    goto ldv_37827;
  } else {
  }
  return;
}
}
long vhost_dev_init(struct vhost_dev *dev , struct vhost_virtqueue *vqs , int nvqs )
{
  int i ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  dev->vqs = vqs;
  dev->nvqs = nvqs;
  __mutex_init(& dev->mutex, "&dev->mutex", & __key);
  dev->log_ctx = 0;
  dev->log_file = 0;
  dev->memory = 0;
  dev->mm = 0;
  spinlock_check(& dev->work_lock);
  __raw_spin_lock_init(& dev->work_lock.ldv_5957.rlock, "&(&dev->work_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& dev->work_list);
  dev->worker = 0;
  i = 0;
  goto ldv_37840;
  ldv_37839:
  (dev->vqs + (unsigned long )i)->log = 0;
  (dev->vqs + (unsigned long )i)->indirect = 0;
  (dev->vqs + (unsigned long )i)->heads = 0;
  (dev->vqs + (unsigned long )i)->ubuf_info = 0;
  (dev->vqs + (unsigned long )i)->dev = dev;
  __mutex_init(& (dev->vqs + (unsigned long )i)->mutex, "&dev->vqs[i].mutex", & __key___1);
  vhost_vq_reset(dev, dev->vqs + (unsigned long )i);
  if ((unsigned long )(dev->vqs + (unsigned long )i)->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_init(& (dev->vqs + (unsigned long )i)->poll, (dev->vqs + (unsigned long )i)->handle_kick,
                    1UL, dev);
  } else {
  }
  i = i + 1;
  ldv_37840: ;
  if (dev->nvqs > i) {
    goto ldv_37839;
  } else {
  }
  return (0L);
}
}
long vhost_dev_check_owner(struct vhost_dev *dev )
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  return ((unsigned long )dev->mm == (unsigned long )tmp->mm ? 0L : -1L);
}
}
static void vhost_attach_cgroups_work(struct vhost_work *work )
{
  struct vhost_attach_cgroups_struct *s ;
  struct vhost_work const *__mptr ;
  struct task_struct *tmp ;
  {
  __mptr = (struct vhost_work const *)work;
  s = (struct vhost_attach_cgroups_struct *)__mptr;
  tmp = get_current();
  s->ret = cgroup_attach_task_all(s->owner, tmp);
  return;
}
}
static int vhost_attach_cgroups(struct vhost_dev *dev )
{
  struct vhost_attach_cgroups_struct attach ;
  {
  attach.owner = get_current();
  vhost_work_init(& attach.work, & vhost_attach_cgroups_work);
  vhost_work_queue(dev, & attach.work);
  vhost_work_flush(dev, & attach.work);
  return (attach.ret);
}
}
static long vhost_dev_set_owner(struct vhost_dev *dev )
{
  struct task_struct *worker ;
  int err ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    err = -16;
    goto err_mm;
  } else {
  }
  tmp = get_current();
  dev->mm = get_task_mm(tmp);
  tmp___0 = get_current();
  worker = kthread_create_on_node(& vhost_worker, (void *)dev, -1, "vhost-%d", tmp___0->pid);
  tmp___2 = IS_ERR((void const *)worker);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)worker);
    err = (int )tmp___1;
    goto err_worker;
  } else {
  }
  dev->worker = worker;
  wake_up_process(worker);
  err = vhost_attach_cgroups(dev);
  if (err != 0) {
    goto err_cgroup;
  } else {
  }
  tmp___3 = vhost_dev_alloc_iovecs(dev);
  err = (int )tmp___3;
  if (err != 0) {
    goto err_cgroup;
  } else {
  }
  return (0L);
  err_cgroup:
  kthread_stop(worker);
  dev->worker = 0;
  err_worker: ;
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    mmput(dev->mm);
  } else {
  }
  dev->mm = 0;
  err_mm: ;
  return ((long )err);
}
}
long vhost_dev_reset_owner(struct vhost_dev *dev )
{
  struct vhost_memory *memory ;
  void *tmp ;
  {
  tmp = kmalloc(8UL, 208U);
  memory = (struct vhost_memory *)tmp;
  if ((unsigned long )memory == (unsigned long )((struct vhost_memory *)0)) {
    return (-12L);
  } else {
  }
  vhost_dev_cleanup(dev, 1);
  memory->nregions = 0U;
  dev->memory = memory;
  return (0L);
}
}
int vhost_zerocopy_signal_used(struct vhost_virtqueue *vq )
{
  int i ;
  int j ;
  {
  j = 0;
  i = vq->done_idx;
  goto ldv_37878;
  ldv_37877: ;
  if ((vq->heads + (unsigned long )i)->len == 1U) {
    (vq->heads + (unsigned long )i)->len = 0U;
    vhost_add_used_and_signal(vq->dev, vq, (vq->heads + (unsigned long )i)->id, 0);
    j = j + 1;
  } else {
    goto ldv_37876;
  }
  i = (i + 1) % 1024;
  ldv_37878: ;
  if (vq->upend_idx != i) {
    goto ldv_37877;
  } else {
  }
  ldv_37876: ;
  if (j != 0) {
    vq->done_idx = i;
  } else {
  }
  return (j);
}
}
void vhost_dev_cleanup(struct vhost_dev *dev , bool locked )
{
  int i ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int __ret_warn_on ;
  int tmp___1 ;
  long tmp___2 ;
  {
  i = 0;
  goto ldv_37885;
  ldv_37884: ;
  if ((unsigned long )(dev->vqs + (unsigned long )i)->kick != (unsigned long )((struct file *)0) && (unsigned long )(dev->vqs + (unsigned long )i)->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_stop(& (dev->vqs + (unsigned long )i)->poll);
    vhost_poll_flush(& (dev->vqs + (unsigned long )i)->poll);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->ubufs != (unsigned long )((struct vhost_ubuf_ref *)0)) {
    vhost_ubuf_put_and_wait((dev->vqs + (unsigned long )i)->ubufs);
  } else {
  }
  vhost_zerocopy_signal_used(dev->vqs + (unsigned long )i);
  if ((unsigned long )(dev->vqs + (unsigned long )i)->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put((dev->vqs + (unsigned long )i)->error_ctx);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->error != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->error);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->kick != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->kick);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->call_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put((dev->vqs + (unsigned long )i)->call_ctx);
  } else {
  }
  if ((unsigned long )(dev->vqs + (unsigned long )i)->call != (unsigned long )((struct file *)0)) {
    fput((dev->vqs + (unsigned long )i)->call);
  } else {
  }
  vhost_vq_reset(dev, dev->vqs + (unsigned long )i);
  i = i + 1;
  ldv_37885: ;
  if (dev->nvqs > i) {
    goto ldv_37884;
  } else {
  }
  vhost_dev_free_iovecs(dev);
  if ((unsigned long )dev->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(dev->log_ctx);
  } else {
  }
  dev->log_ctx = 0;
  if ((unsigned long )dev->log_file != (unsigned long )((struct file *)0)) {
    fput(dev->log_file);
  } else {
  }
  dev->log_file = 0;
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& dev->mutex.dep_map);
    if ((int )locked != tmp___0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                             519, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  kfree((void const *)dev->memory);
  dev->memory = 0;
  tmp___1 = list_empty((struct list_head const *)(& dev->work_list));
  __ret_warn_on = tmp___1 == 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                       521);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )dev->worker != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(dev->worker);
    dev->worker = 0;
  } else {
  }
  if ((unsigned long )dev->mm != (unsigned long )((struct mm_struct *)0)) {
    mmput(dev->mm);
  } else {
  }
  dev->mm = 0;
  return;
}
}
static int log_access_ok(void *log_base , u64 addr , unsigned long sz )
{
  u64 a ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp ;
  long tmp___0 ;
  {
  a = addr / 32768ULL;
  if ((unsigned long long )(~ ((unsigned long )log_base)) < a) {
    return (0);
  } else {
  }
  tmp = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" (log_base + a),
            "g" ((long )((sz + 32767UL) / 32768UL)), "rm" (tmp->addr_limit.seg));
  tmp___0 = ldv__builtin_expect(flag == 0UL, 1L);
  return ((int )tmp___0);
}
}
static int vq_memory_access_ok(void *log_base , struct vhost_memory *mem , int log_all )
{
  int i ;
  struct vhost_memory_region *m ;
  unsigned long a ;
  int tmp ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )mem == (unsigned long )((struct vhost_memory *)0)) {
    return (0);
  } else {
  }
  i = 0;
  goto ldv_37912;
  ldv_37911:
  m = (struct vhost_memory_region *)(& mem->regions) + (unsigned long )i;
  a = (unsigned long )m->userspace_addr;
  tmp___0 = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" ((void *)a),
            "g" ((long )m->memory_size), "rm" (tmp___0->addr_limit.seg));
  tmp___1 = ldv__builtin_expect(flag == 0UL, 1L);
  if (tmp___1 == 0L) {
    return (0);
  } else
  if (log_all != 0) {
    tmp = log_access_ok(log_base, m->guest_phys_addr, (unsigned long )m->memory_size);
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_37912: ;
  if ((__u32 )i < mem->nregions) {
    goto ldv_37911;
  } else {
  }
  return (1);
}
}
static int memory_access_ok(struct vhost_dev *d , struct vhost_memory *mem , int log_all )
{
  int i ;
  int ok ;
  {
  i = 0;
  goto ldv_37922;
  ldv_37921:
  ldv_mutex_lock_12(& (d->vqs + (unsigned long )i)->mutex);
  if ((unsigned long )(d->vqs + (unsigned long )i)->private_data != (unsigned long )((void *)0)) {
    ok = vq_memory_access_ok((d->vqs + (unsigned long )i)->log_base, mem, log_all);
  } else {
    ok = 1;
  }
  ldv_mutex_unlock_13(& (d->vqs + (unsigned long )i)->mutex);
  if (ok == 0) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_37922: ;
  if (d->nvqs > i) {
    goto ldv_37921;
  } else {
  }
  return (1);
}
}
static int vq_access_ok(struct vhost_dev *d , unsigned int num , struct vring_desc *desc ,
                        struct vring_avail *avail , struct vring_used *used )
{
  size_t s ;
  int tmp ;
  unsigned long flag ;
  unsigned long roksum ;
  struct thread_info *tmp___0 ;
  long tmp___1 ;
  unsigned long flag___0 ;
  unsigned long roksum___0 ;
  struct thread_info *tmp___2 ;
  long tmp___3 ;
  unsigned long flag___1 ;
  unsigned long roksum___1 ;
  struct thread_info *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  tmp = vhost_has_feature(d, 29);
  s = tmp != 0 ? 2UL : 0UL;
  tmp___0 = current_thread_info();
  __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag), "=r" (roksum): "1" (desc),
            "g" ((long )((unsigned long )num * 16UL)), "rm" (tmp___0->addr_limit.seg));
  tmp___1 = ldv__builtin_expect(flag == 0UL, 1L);
  if (tmp___1 != 0L) {
    tmp___2 = current_thread_info();
    __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag___0), "=r" (roksum___0): "1" (avail),
              "g" ((long )(((unsigned long )num + 2UL) * 2UL + s)), "rm" (tmp___2->addr_limit.seg));
    tmp___3 = ldv__builtin_expect(flag___0 == 0UL, 1L);
    if (tmp___3 != 0L) {
      tmp___4 = current_thread_info();
      __asm__ ("add %3,%1 ; sbb %0,%0 ; cmp %1,%4 ; sbb $0,%0": "=&r" (flag___1),
                "=r" (roksum___1): "1" (used), "g" ((long )(((unsigned long )num * 8UL + s) + 4UL)),
                "rm" (tmp___4->addr_limit.seg));
      tmp___5 = ldv__builtin_expect(flag___1 == 0UL, 1L);
      if (tmp___5 != 0L) {
        tmp___6 = 1;
      } else {
        tmp___6 = 0;
      }
    } else {
      tmp___6 = 0;
    }
  } else {
    tmp___6 = 0;
  }
  return (tmp___6);
}
}
int vhost_log_access_ok(struct vhost_dev *dev )
{
  struct vhost_memory *mp ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& dev->mutex.dep_map);
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                             612, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  mp = dev->memory;
  tmp___1 = memory_access_ok(dev, mp, 1);
  return (tmp___1);
}
}
static int vq_log_access_ok(struct vhost_dev *d , struct vhost_virtqueue *vq , void *log_base )
{
  struct vhost_memory *mp ;
  size_t s ;
  int tmp ;
  bool __warned ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = vhost_has_feature(d, 29);
  s = tmp != 0 ? 2UL : 0UL;
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    tmp___1 = lock_is_held(& vq->mutex.dep_map);
    if (tmp___1 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                             625, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  mp = (vq->dev)->memory;
  tmp___2 = vhost_has_feature(vq->dev, 26);
  tmp___3 = vq_memory_access_ok(log_base, mp, tmp___2);
  if (tmp___3 != 0) {
    if (! vq->log_used) {
      tmp___5 = 1;
    } else {
      tmp___4 = log_access_ok(log_base, vq->log_addr, ((unsigned long )vq->num * 8UL + s) + 4UL);
      if (tmp___4 != 0) {
        tmp___5 = 1;
      } else {
        tmp___5 = 0;
      }
    }
  } else {
    tmp___5 = 0;
  }
  return (tmp___5);
}
}
int vhost_vq_access_ok(struct vhost_virtqueue *vq )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = vq_access_ok(vq->dev, vq->num, vq->desc, vq->avail, vq->used);
  if (tmp != 0) {
    tmp___0 = vq_log_access_ok(vq->dev, vq, vq->log_base);
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
static long vhost_set_memory(struct vhost_dev *d , struct vhost_memory *m )
{
  struct vhost_memory mem ;
  struct vhost_memory *newmem ;
  struct vhost_memory *oldmem ;
  unsigned long size ;
  unsigned long tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool __warned ;
  int tmp___4 ;
  int tmp___5 ;
  {
  size = 8UL;
  tmp = copy_from_user((void *)(& mem), (void const *)m, size);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  if (mem.padding != 0U) {
    return (-95L);
  } else {
  }
  if (mem.nregions > 64U) {
    return (-7L);
  } else {
  }
  tmp___0 = kmalloc((unsigned long )mem.nregions * 32UL + size, 208U);
  newmem = (struct vhost_memory *)tmp___0;
  if ((unsigned long )newmem == (unsigned long )((struct vhost_memory *)0)) {
    return (-12L);
  } else {
  }
  __len = size;
  __ret = memcpy((void *)newmem, (void const *)(& mem), __len);
  tmp___1 = copy_from_user((void *)(& newmem->regions), (void const *)(& m->regions),
                           (unsigned long )mem.nregions * 32UL);
  if (tmp___1 != 0UL) {
    kfree((void const *)newmem);
    return (-14L);
  } else {
  }
  tmp___2 = vhost_has_feature(d, 26);
  tmp___3 = memory_access_ok(d, newmem, tmp___2);
  if (tmp___3 == 0) {
    kfree((void const *)newmem);
    return (-14L);
  } else {
  }
  tmp___4 = debug_lockdep_rcu_enabled();
  if (tmp___4 != 0 && ! __warned) {
    tmp___5 = lock_is_held(& d->mutex.dep_map);
    if (tmp___5 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                             669, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  oldmem = d->memory;
  __asm__ volatile ("": : : "memory");
  d->memory = newmem;
  synchronize_rcu();
  kfree((void const *)oldmem);
  return (0L);
}
}
static long vhost_set_vring(struct vhost_dev *d , int ioctl , void *argp )
{
  struct file *eventfp ;
  struct file *filep ;
  bool pollstart ;
  bool pollstop ;
  struct eventfd_ctx *ctx ;
  u32 *idxp ;
  struct vhost_virtqueue *vq ;
  struct vhost_vring_state s ;
  struct vhost_vring_file f ;
  struct vhost_vring_addr a ;
  u32 idx ;
  long r ;
  int __ret_gu ;
  unsigned long __val_gu ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned long tmp___5 ;
  struct file *tmp___6 ;
  long tmp___7 ;
  struct file *tmp___8 ;
  unsigned long tmp___9 ;
  struct file *tmp___10 ;
  long tmp___11 ;
  struct eventfd_ctx *tmp___12 ;
  unsigned long tmp___13 ;
  struct file *tmp___14 ;
  long tmp___15 ;
  struct eventfd_ctx *tmp___16 ;
  {
  filep = 0;
  pollstart = 0;
  pollstop = 0;
  ctx = 0;
  idxp = (u32 *)argp;
  might_fault();
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_37992;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_37992;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_37992;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_37992;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (idxp));
  goto ldv_37992;
  }
  ldv_37992:
  idx = (unsigned int )__val_gu;
  r = (long )__ret_gu;
  if (r < 0L) {
    return (r);
  } else {
  }
  if ((u32 )d->nvqs <= idx) {
    return (-105L);
  } else {
  }
  vq = d->vqs + (unsigned long )idx;
  ldv_mutex_lock_14(& vq->mutex);
  switch (ioctl) {
  case 1074310928: ;
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    r = -16L;
    goto ldv_37999;
  } else {
  }
  tmp = copy_from_user((void *)(& s), (void const *)argp, 8UL);
  if (tmp != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if ((s.num == 0U || s.num > 65535U) || (s.num & (s.num - 1U)) != 0U) {
    r = -22L;
    goto ldv_37999;
  } else {
  }
  vq->num = s.num;
  goto ldv_37999;
  case 1074310930: ;
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    r = -16L;
    goto ldv_37999;
  } else {
  }
  tmp___0 = copy_from_user((void *)(& s), (void const *)argp, 8UL);
  if (tmp___0 != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if (s.num > 65535U) {
    r = -22L;
    goto ldv_37999;
  } else {
  }
  vq->last_avail_idx = (u16 )s.num;
  vq->avail_idx = vq->last_avail_idx;
  goto ldv_37999;
  case -1073172718:
  s.index = idx;
  s.num = (unsigned int )vq->last_avail_idx;
  tmp___1 = copy_to_user(argp, (void const *)(& s), 8U);
  if (tmp___1 != 0) {
    r = -14L;
  } else {
  }
  goto ldv_37999;
  case 1076408081:
  tmp___2 = copy_from_user((void *)(& a), (void const *)argp, 40UL);
  if (tmp___2 != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if ((a.flags & 4294967294U) != 0U) {
    r = -95L;
    goto ldv_37999;
  } else {
  }
  if (((int )a.avail_user_addr & 1 || (a.used_user_addr & 7ULL) != 0ULL) || (a.log_guest_addr & 7ULL) != 0ULL) {
    r = -22L;
    goto ldv_37999;
  } else {
  }
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    tmp___3 = vq_access_ok(d, vq->num, (struct vring_desc *)a.desc_user_addr, (struct vring_avail *)a.avail_user_addr,
                           (struct vring_used *)a.used_user_addr);
    if (tmp___3 == 0) {
      r = -22L;
      goto ldv_37999;
    } else {
    }
    if ((int )a.flags & 1) {
      tmp___4 = log_access_ok(vq->log_base, a.log_guest_addr, (unsigned long )vq->num * 8UL + 4UL);
      if (tmp___4 == 0) {
        r = -22L;
        goto ldv_37999;
      } else {
      }
    } else {
    }
  } else {
  }
  vq->log_used = ((int )a.flags & 1) != 0;
  vq->desc = (struct vring_desc *)a.desc_user_addr;
  vq->avail = (struct vring_avail *)a.avail_user_addr;
  vq->log_addr = a.log_guest_addr;
  vq->used = (struct vring_used *)a.used_user_addr;
  goto ldv_37999;
  case 1074310944:
  tmp___5 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___5 != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if (f.fd != -1) {
    tmp___6 = eventfd_fget(f.fd);
    eventfp = tmp___6;
  } else {
    eventfp = 0;
  }
  tmp___7 = IS_ERR((void const *)eventfp);
  if (tmp___7 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_37999;
  } else {
  }
  if ((unsigned long )vq->kick != (unsigned long )eventfp) {
    filep = vq->kick;
    pollstop = (unsigned long )filep != (unsigned long )((struct file *)0);
    tmp___8 = eventfp;
    vq->kick = tmp___8;
    pollstart = (unsigned long )tmp___8 != (unsigned long )((struct file *)0);
  } else {
    filep = eventfp;
  }
  goto ldv_37999;
  case 1074310945:
  tmp___9 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___9 != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if (f.fd != -1) {
    tmp___10 = eventfd_fget(f.fd);
    eventfp = tmp___10;
  } else {
    eventfp = 0;
  }
  tmp___11 = IS_ERR((void const *)eventfp);
  if (tmp___11 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_37999;
  } else {
  }
  if ((unsigned long )vq->call != (unsigned long )eventfp) {
    filep = vq->call;
    ctx = vq->call_ctx;
    vq->call = eventfp;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___12 = eventfd_ctx_fileget(eventfp);
      vq->call_ctx = tmp___12;
    } else {
      vq->call_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  goto ldv_37999;
  case 1074310946:
  tmp___13 = copy_from_user((void *)(& f), (void const *)argp, 8UL);
  if (tmp___13 != 0UL) {
    r = -14L;
    goto ldv_37999;
  } else {
  }
  if (f.fd != -1) {
    tmp___14 = eventfd_fget(f.fd);
    eventfp = tmp___14;
  } else {
    eventfp = 0;
  }
  tmp___15 = IS_ERR((void const *)eventfp);
  if (tmp___15 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_37999;
  } else {
  }
  if ((unsigned long )vq->error != (unsigned long )eventfp) {
    filep = vq->error;
    vq->error = eventfp;
    ctx = vq->error_ctx;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___16 = eventfd_ctx_fileget(eventfp);
      vq->error_ctx = tmp___16;
    } else {
      vq->error_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  goto ldv_37999;
  default:
  r = -515L;
  }
  ldv_37999: ;
  if ((int )pollstop && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_stop(& vq->poll);
  } else {
  }
  if ((unsigned long )ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(ctx);
  } else {
  }
  if ((unsigned long )filep != (unsigned long )((struct file *)0)) {
    fput(filep);
  } else {
  }
  if ((int )pollstart && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_start(& vq->poll, vq->kick);
  } else {
  }
  ldv_mutex_unlock_15(& vq->mutex);
  if ((int )pollstop && (unsigned long )vq->handle_kick != (unsigned long )((void (*)(struct vhost_work * ))0)) {
    vhost_poll_flush(& vq->poll);
  } else {
  }
  return (r);
}
}
long vhost_dev_ioctl(struct vhost_dev *d , unsigned int ioctl , unsigned long arg )
{
  void *argp ;
  struct file *eventfp ;
  struct file *filep ;
  struct eventfd_ctx *ctx ;
  u64 p ;
  long r ;
  int i ;
  int fd ;
  unsigned long tmp ;
  struct vhost_virtqueue *vq ;
  void *base ;
  int tmp___0 ;
  int __ret_gu ;
  unsigned long __val_gu ;
  struct file *tmp___1 ;
  long tmp___2 ;
  struct eventfd_ctx *tmp___3 ;
  {
  argp = (void *)arg;
  filep = 0;
  ctx = 0;
  if (ioctl == 44801U) {
    r = vhost_dev_set_owner(d);
    goto done;
  } else {
  }
  r = vhost_dev_check_owner(d);
  if (r != 0L) {
    goto done;
  } else {
  }
  switch (ioctl) {
  case 1074310915U:
  r = vhost_set_memory(d, (struct vhost_memory *)argp);
  goto ldv_38022;
  case 1074310916U:
  tmp = copy_from_user((void *)(& p), (void const *)argp, 8UL);
  if (tmp != 0UL) {
    r = -14L;
    goto ldv_38022;
  } else {
  }
  i = 0;
  goto ldv_38027;
  ldv_38026:
  base = (void *)p;
  vq = d->vqs + (unsigned long )i;
  ldv_mutex_lock_16(& vq->mutex);
  if ((unsigned long )vq->private_data != (unsigned long )((void *)0)) {
    tmp___0 = vq_log_access_ok(d, vq, base);
    if (tmp___0 == 0) {
      r = -14L;
    } else {
      vq->log_base = base;
    }
  } else {
    vq->log_base = base;
  }
  ldv_mutex_unlock_17(& vq->mutex);
  i = i + 1;
  ldv_38027: ;
  if (d->nvqs > i) {
    goto ldv_38026;
  } else {
  }
  goto ldv_38022;
  case 1074048775U:
  might_fault();
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_38033;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_38033;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_38033;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_38033;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)argp));
  goto ldv_38033;
  }
  ldv_38033:
  fd = (int )__val_gu;
  r = (long )__ret_gu;
  if (r < 0L) {
    goto ldv_38022;
  } else {
  }
  if (fd != -1) {
    tmp___1 = eventfd_fget(fd);
    eventfp = tmp___1;
  } else {
    eventfp = 0;
  }
  tmp___2 = IS_ERR((void const *)eventfp);
  if (tmp___2 != 0L) {
    r = PTR_ERR((void const *)eventfp);
    goto ldv_38022;
  } else {
  }
  if ((unsigned long )d->log_file != (unsigned long )eventfp) {
    filep = d->log_file;
    ctx = d->log_ctx;
    if ((unsigned long )eventfp != (unsigned long )((struct file *)0)) {
      tmp___3 = eventfd_ctx_fileget(eventfp);
      d->log_ctx = tmp___3;
    } else {
      d->log_ctx = 0;
    }
  } else {
    filep = eventfp;
  }
  i = 0;
  goto ldv_38040;
  ldv_38039:
  ldv_mutex_lock_18(& (d->vqs + (unsigned long )i)->mutex);
  (d->vqs + (unsigned long )i)->log_ctx = d->log_ctx;
  ldv_mutex_unlock_19(& (d->vqs + (unsigned long )i)->mutex);
  i = i + 1;
  ldv_38040: ;
  if (d->nvqs > i) {
    goto ldv_38039;
  } else {
  }
  if ((unsigned long )ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    eventfd_ctx_put(ctx);
  } else {
  }
  if ((unsigned long )filep != (unsigned long )((struct file *)0)) {
    fput(filep);
  } else {
  }
  goto ldv_38022;
  default:
  r = vhost_set_vring(d, (int )ioctl, argp);
  goto ldv_38022;
  }
  ldv_38022: ;
  done: ;
  return (r);
}
}
static struct vhost_memory_region const *find_region(struct vhost_memory *mem ,
                                                       __u64 addr , __u32 len )
{
  struct vhost_memory_region *reg ;
  int i ;
  {
  i = 0;
  goto ldv_38051;
  ldv_38050:
  reg = (struct vhost_memory_region *)(& mem->regions) + (unsigned long )i;
  if (reg->guest_phys_addr <= addr && (reg->guest_phys_addr + reg->memory_size) - 1ULL >= addr) {
    return ((struct vhost_memory_region const *)reg);
  } else {
  }
  i = i + 1;
  ldv_38051: ;
  if ((__u32 )i < mem->nregions) {
    goto ldv_38050;
  } else {
  }
  return (0);
}
}
static int set_bit_to_user(int nr , void *addr )
{
  unsigned long log ;
  struct page *page ;
  void *base ;
  int bit ;
  int r ;
  long tmp ;
  {
  log = (unsigned long )addr;
  bit = (int )(((unsigned int )log & 4095U) * 8U + (unsigned int )nr);
  r = get_user_pages_fast(log, 1, 1, & page);
  if (r < 0) {
    return (r);
  } else {
  }
  tmp = ldv__builtin_expect(r != 1, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared"),
                         "i" (983), "i" (12UL));
    ldv_38062: ;
    goto ldv_38062;
  } else {
  }
  base = kmap_atomic(page);
  set_bit((unsigned int )bit, (unsigned long volatile *)base);
  __kunmap_atomic(base);
  set_page_dirty_lock(page);
  put_page(page);
  return (0);
}
}
static int log_write(void *log_base , u64 write_address , u64 write_length )
{
  u64 write_page ;
  int r ;
  u64 base ;
  u64 log ;
  int bit ;
  {
  write_page = write_address / 4096ULL;
  if (write_length == 0ULL) {
    return (0);
  } else {
  }
  write_length = (write_address & 4095ULL) + write_length;
  ldv_38074:
  base = (unsigned long long )log_base;
  log = write_page / 8ULL + base;
  bit = (int )write_page & 7;
  r = set_bit_to_user(bit, (void *)log);
  if (r < 0) {
    return (r);
  } else {
  }
  if (write_length <= 4096ULL) {
    goto ldv_38073;
  } else {
  }
  write_length = write_length - 4096ULL;
  write_page = write_page + 1ULL;
  goto ldv_38074;
  ldv_38073: ;
  return (r);
}
}
int vhost_log_write(struct vhost_virtqueue *vq , struct vhost_log *log , unsigned int log_num ,
                    u64 len )
{
  int i ;
  int r ;
  u64 l ;
  u64 _min1 ;
  u64 _min2 ;
  {
  __asm__ volatile ("": : : "memory");
  i = 0;
  goto ldv_38088;
  ldv_38087:
  _min1 = (log + (unsigned long )i)->len;
  _min2 = len;
  l = _min1 < _min2 ? _min1 : _min2;
  r = log_write(vq->log_base, (log + (unsigned long )i)->addr, l);
  if (r < 0) {
    return (r);
  } else {
  }
  len = len - l;
  if (len == 0ULL) {
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_38088: ;
  if ((unsigned int )i < log_num) {
    goto ldv_38087;
  } else {
  }
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared"),
                       "i" (1038), "i" (12UL));
  ldv_38090: ;
  goto ldv_38090;
  return (0);
}
}
static int vhost_update_used_flags(struct vhost_virtqueue *vq )
{
  void *used ;
  int __pu_err ;
  long tmp ;
  {
  __pu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38097;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38097;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38097;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (vq->used_flags),
                       "m" (*((struct __large_struct *)(& (vq->used)->flags))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38097;
  default:
  __put_user_bad();
  }
  ldv_38097: ;
  if (__pu_err < 0) {
    return (-14);
  } else {
  }
  tmp = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("": : : "memory");
    used = (void *)(& (vq->used)->flags);
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vhost_update_avail_event(struct vhost_virtqueue *vq , u16 avail_event )
{
  int __pu_err ;
  void *used ;
  long tmp ;
  {
  __pu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_38109;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_38109;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_38109;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (vq->avail_idx),
                       "m" (*((struct __large_struct *)(& (vq->used)->ring) + (unsigned long )vq->num)),
                       "i" (-14), "0" (__pu_err));
  goto ldv_38109;
  default:
  __put_user_bad();
  }
  ldv_38109: ;
  if (__pu_err != 0) {
    return (-14);
  } else {
  }
  tmp = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("": : : "memory");
    used = (void *)(& (vq->used)->ring) + (unsigned long )vq->num;
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (0);
}
}
int vhost_init_used(struct vhost_virtqueue *vq )
{
  int r ;
  int __ret_gu ;
  unsigned long __val_gu ;
  {
  if ((unsigned long )vq->private_data == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  r = vhost_update_used_flags(vq);
  if (r != 0) {
    return (r);
  } else {
  }
  vq->signalled_used_valid = 0;
  might_fault();
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_38123;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_38123;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_38123;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_38123;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (& (vq->used)->idx));
  goto ldv_38123;
  }
  ldv_38123:
  vq->last_used_idx = (unsigned short )__val_gu;
  return (__ret_gu);
}
}
static int translate_desc(struct vhost_dev *dev , u64 addr , u32 len , struct iovec *iov ,
                          int iov_size )
{
  struct vhost_memory_region const *reg ;
  struct vhost_memory *mem ;
  struct iovec *_iov ;
  u64 s ;
  int ret ;
  struct vhost_memory *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  u64 size ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned long long _min1 ;
  u64 _min2 ;
  {
  s = 0ULL;
  ret = 0;
  rcu_read_lock();
  _________p1 = *((struct vhost_memory * volatile *)(& dev->memory));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_read_lock_held();
    if (tmp___0 == 0 && 1) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared",
                             1104, "suspicious rcu_dereference_check() usage");
    } else {
    }
  } else {
  }
  mem = _________p1;
  goto ldv_38150;
  ldv_38149:
  tmp___1 = ldv__builtin_expect(ret >= iov_size, 0L);
  if (tmp___1 != 0L) {
    ret = -105;
    goto ldv_38145;
  } else {
  }
  reg = find_region(mem, addr, len);
  tmp___2 = ldv__builtin_expect((unsigned long )reg == (unsigned long )((struct vhost_memory_region const *)0),
                             0L);
  if (tmp___2 != 0L) {
    ret = -14;
    goto ldv_38145;
  } else {
  }
  _iov = iov + (unsigned long )ret;
  size = ((unsigned long long )reg->memory_size - addr) + (unsigned long long )reg->guest_phys_addr;
  _min1 = (unsigned long long )len - s;
  _min2 = size;
  _iov->iov_len = (__kernel_size_t )(_min1 < _min2 ? _min1 : _min2);
  _iov->iov_base = (void *)(((unsigned long long )reg->userspace_addr + addr) - (unsigned long long )reg->guest_phys_addr);
  s = s + size;
  addr = addr + size;
  ret = ret + 1;
  ldv_38150: ;
  if ((unsigned long long )len > s) {
    goto ldv_38149;
  } else {
  }
  ldv_38145:
  rcu_read_unlock();
  return (ret);
}
}
static unsigned int next_desc(struct vring_desc *desc )
{
  unsigned int next ;
  {
  if (((int )desc->flags & 1) == 0) {
    return (4294967295U);
  } else {
  }
  next = (unsigned int )desc->next;
  return (next);
}
}
static int get_indirect(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                        unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                        struct vhost_log *log , unsigned int *log_num , struct vring_desc *indirect )
{
  struct vring_desc desc ;
  unsigned int i ;
  unsigned int count ;
  unsigned int found ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  unsigned int iov_count ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___6 ;
  long tmp___15 ;
  long tmp___16 ;
  {
  i = 0U;
  found = 0U;
  tmp___0 = ldv__builtin_expect((indirect->len & 15U) != 0U, 0L);
  if (tmp___0 != 0L) {
    descriptor.modname = "vhost_net";
    descriptor.function = "get_indirect";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor.format = "Invalid length in indirect descriptor: len 0x%llx not multiple of 0x%zx\n";
    descriptor.lineno = 1166U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Invalid length in indirect descriptor: len 0x%llx not multiple of 0x%zx\n",
                         (unsigned long long )indirect->len, 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = translate_desc(dev, indirect->addr, indirect->len, vq->indirect, 1024);
  tmp___2 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___2 != 0L) {
    descriptor___0.modname = "vhost_net";
    descriptor___0.function = "get_indirect";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___0.format = "Translation failure %d in indirect.\n";
    descriptor___0.lineno = 1173U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Translation failure %d in indirect.\n",
                         ret);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  count = indirect->len / 16U;
  tmp___4 = ldv__builtin_expect(count > 65536U, 0L);
  if (tmp___4 != 0L) {
    descriptor___1.modname = "vhost_net";
    descriptor___1.function = "get_indirect";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___1.format = "Indirect buffer length too big: %d\n";
    descriptor___1.lineno = 1186U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Indirect buffer length too big: %d\n",
                         indirect->len);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-7);
  } else {
  }
  ldv_38181:
  iov_count = *in_num + *out_num;
  found = found + 1U;
  tmp___6 = ldv__builtin_expect(found > count, 0L);
  if (tmp___6 != 0L) {
    descriptor___2.modname = "vhost_net";
    descriptor___2.function = "get_indirect";
    descriptor___2.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___2.format = "Loop detected: last one at %u indirect size %u\n";
    descriptor___2.lineno = 1195U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Loop detected: last one at %u indirect size %u\n",
                         i, count);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___8 = memcpy_fromiovec((unsigned char *)(& desc), vq->indirect, 16);
  tmp___9 = ldv__builtin_expect(tmp___8 != 0, 0L);
  if (tmp___9 != 0L) {
    descriptor___3.modname = "vhost_net";
    descriptor___3.function = "get_indirect";
    descriptor___3.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___3.format = "Failed indirect descriptor: idx %d, %zx\n";
    descriptor___3.lineno = 1201U;
    descriptor___3.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "Failed indirect descriptor: idx %d, %zx\n",
                         i, (unsigned long )indirect->addr + (unsigned long )i * 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___11 = ldv__builtin_expect(((int )desc.flags & 4) != 0, 0L);
  if (tmp___11 != 0L) {
    descriptor___4.modname = "vhost_net";
    descriptor___4.function = "get_indirect";
    descriptor___4.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___4.format = "Nested indirect descriptor: idx %d, %zx\n";
    descriptor___4.lineno = 1206U;
    descriptor___4.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Nested indirect descriptor: idx %d, %zx\n",
                         i, (unsigned long )indirect->addr + (unsigned long )i * 16UL);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = translate_desc(dev, desc.addr, desc.len, iov + (unsigned long )iov_count,
                       (int )(iov_size - iov_count));
  tmp___13 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___13 != 0L) {
    descriptor___5.modname = "vhost_net";
    descriptor___5.function = "get_indirect";
    descriptor___5.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___5.format = "Translation failure %d indirect idx %d\n";
    descriptor___5.lineno = 1214U;
    descriptor___5.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "Translation failure %d indirect idx %d\n",
                         ret, i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  if (((int )desc.flags & 2) != 0) {
    *in_num = *in_num + (unsigned int )ret;
    tmp___14 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                                0L);
    if (tmp___14 != 0L) {
      (log + (unsigned long )*log_num)->addr = desc.addr;
      (log + (unsigned long )*log_num)->len = (u64 )desc.len;
      *log_num = *log_num + 1U;
    } else {
    }
  } else {
    tmp___16 = ldv__builtin_expect(*in_num != 0U, 0L);
    if (tmp___16 != 0L) {
      descriptor___6.modname = "vhost_net";
      descriptor___6.function = "get_indirect";
      descriptor___6.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor___6.format = "Indirect descriptor has out after in: idx %d\n";
      descriptor___6.lineno = 1230U;
      descriptor___6.flags = 0U;
      tmp___15 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___15 != 0L) {
        __dynamic_pr_debug(& descriptor___6, "Indirect descriptor has out after in: idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (-22);
    } else {
    }
    *out_num = *out_num + (unsigned int )ret;
  }
  i = next_desc(& desc);
  if (i != 4294967295U) {
    goto ldv_38181;
  } else {
  }
  return (0);
}
}
int vhost_get_vq_desc(struct vhost_dev *dev , struct vhost_virtqueue *vq , struct iovec *iov ,
                      unsigned int iov_size , unsigned int *out_num , unsigned int *in_num ,
                      struct vhost_log *log , unsigned int *log_num )
{
  struct vring_desc desc ;
  unsigned int i ;
  unsigned int head ;
  unsigned int found ;
  u16 last_avail_idx ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  int __gu_err___0 ;
  unsigned long __gu_val___0 ;
  int tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  long tmp___10 ;
  unsigned int iov_count ;
  struct _ddebug descriptor___3 ;
  long tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  long tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___5 ;
  long tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___6 ;
  long tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___7 ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___8 ;
  long tmp___22 ;
  long tmp___23 ;
  long tmp___24 ;
  {
  found = 0U;
  last_avail_idx = vq->last_avail_idx;
  __gu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38202;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38202;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38202;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38202;
  default:
  tmp___0 = __get_user_bad();
  __gu_val = (unsigned long )tmp___0;
  }
  ldv_38202:
  vq->avail_idx = (unsigned short )__gu_val;
  tmp___1 = ldv__builtin_expect(__gu_err != 0, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "vhost_net";
    descriptor.function = "vhost_get_vq_desc";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor.format = "Failed to access avail idx at %p\n";
    descriptor.lineno = 1261U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to access avail idx at %p\n", & (vq->avail)->idx);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___3 = ldv__builtin_expect((unsigned int )((int )vq->avail_idx - (int )last_avail_idx) > vq->num,
                             0L);
  if (tmp___3 != 0L) {
    descriptor___0.modname = "vhost_net";
    descriptor___0.function = "vhost_get_vq_desc";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___0.format = "Guest moved used index from %u to %u";
    descriptor___0.lineno = 1267U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Guest moved used index from %u to %u",
                         (int )last_avail_idx, (int )vq->avail_idx);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  if ((int )vq->avail_idx == (int )last_avail_idx) {
    return ((int )vq->num);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __gu_err___0 = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=q" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_38214;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_38214;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_38214;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err___0),
                       "=r" (__gu_val___0): "m" (*((struct __large_struct *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num))),
                       "i" (-14), "0" (__gu_err___0));
  goto ldv_38214;
  default:
  tmp___5 = __get_user_bad();
  __gu_val___0 = (unsigned long )tmp___5;
  }
  ldv_38214:
  head = (unsigned int )((unsigned short )__gu_val___0);
  tmp___6 = ldv__builtin_expect(__gu_err___0 != 0, 0L);
  if (tmp___6 != 0L) {
    descriptor___1.modname = "vhost_net";
    descriptor___1.function = "vhost_get_vq_desc";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___1.format = "Failed to read head: idx %d address %p\n";
    descriptor___1.lineno = 1284U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to read head: idx %d address %p\n",
                         (int )last_avail_idx, (__u16 *)(& (vq->avail)->ring) + (unsigned long )((unsigned int )last_avail_idx % vq->num));
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___8 = ldv__builtin_expect(vq->num <= head, 0L);
  if (tmp___8 != 0L) {
    descriptor___2.modname = "vhost_net";
    descriptor___2.function = "vhost_get_vq_desc";
    descriptor___2.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___2.format = "Guest says index %u > %u is available";
    descriptor___2.lineno = 1291U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "Guest says index %u > %u is available",
                         head, vq->num);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  tmp___9 = 0U;
  *in_num = tmp___9;
  *out_num = tmp___9;
  tmp___10 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                              0L);
  if (tmp___10 != 0L) {
    *log_num = 0U;
  } else {
  }
  i = head;
  ldv_38230:
  iov_count = *in_num + *out_num;
  tmp___12 = ldv__builtin_expect(vq->num <= i, 0L);
  if (tmp___12 != 0L) {
    descriptor___3.modname = "vhost_net";
    descriptor___3.function = "vhost_get_vq_desc";
    descriptor___3.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___3.format = "Desc index is %u > %u, head = %u";
    descriptor___3.lineno = 1305U;
    descriptor___3.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "Desc index is %u > %u, head = %u", i,
                         vq->num, head);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  found = found + 1U;
  tmp___14 = ldv__builtin_expect(found > vq->num, 0L);
  if (tmp___14 != 0L) {
    descriptor___4.modname = "vhost_net";
    descriptor___4.function = "vhost_get_vq_desc";
    descriptor___4.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___4.format = "Loop detected: last one at %u vq size %u head %u\n";
    descriptor___4.lineno = 1311U;
    descriptor___4.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "Loop detected: last one at %u vq size %u head %u\n",
                         i, vq->num, head);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-22);
  } else {
  }
  ret = __copy_from_user((void *)(& desc), (void const *)vq->desc + (unsigned long )i,
                         16U);
  tmp___16 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___16 != 0L) {
    descriptor___5.modname = "vhost_net";
    descriptor___5.function = "vhost_get_vq_desc";
    descriptor___5.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___5.format = "Failed to get descriptor: idx %d addr %p\n";
    descriptor___5.lineno = 1317U;
    descriptor___5.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "Failed to get descriptor: idx %d addr %p\n",
                         i, vq->desc + (unsigned long )i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  if (((int )desc.flags & 4) != 0) {
    ret = get_indirect(dev, vq, iov, iov_size, out_num, in_num, log, log_num, & desc);
    tmp___18 = ldv__builtin_expect(ret < 0, 0L);
    if (tmp___18 != 0L) {
      descriptor___6.modname = "vhost_net";
      descriptor___6.function = "vhost_get_vq_desc";
      descriptor___6.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor___6.format = "Failure detected in indirect descriptor at idx %d\n";
      descriptor___6.lineno = 1326U;
      descriptor___6.flags = 0U;
      tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___17 != 0L) {
        __dynamic_pr_debug(& descriptor___6, "Failure detected in indirect descriptor at idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (ret);
    } else {
    }
    goto ldv_38227;
  } else {
  }
  ret = translate_desc(dev, desc.addr, desc.len, iov + (unsigned long )iov_count,
                       (int )(iov_size - iov_count));
  tmp___20 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___20 != 0L) {
    descriptor___7.modname = "vhost_net";
    descriptor___7.function = "vhost_get_vq_desc";
    descriptor___7.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___7.format = "Translation failure %d descriptor idx %d\n";
    descriptor___7.lineno = 1336U;
    descriptor___7.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "Translation failure %d descriptor idx %d\n",
                         ret, i);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (ret);
  } else {
  }
  if (((int )desc.flags & 2) != 0) {
    *in_num = *in_num + (unsigned int )ret;
    tmp___21 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                                0L);
    if (tmp___21 != 0L) {
      (log + (unsigned long )*log_num)->addr = desc.addr;
      (log + (unsigned long )*log_num)->len = (u64 )desc.len;
      *log_num = *log_num + 1U;
    } else {
    }
  } else {
    tmp___23 = ldv__builtin_expect(*in_num != 0U, 0L);
    if (tmp___23 != 0L) {
      descriptor___8.modname = "vhost_net";
      descriptor___8.function = "vhost_get_vq_desc";
      descriptor___8.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor___8.format = "Descriptor has out after in: idx %d\n";
      descriptor___8.lineno = 1353U;
      descriptor___8.flags = 0U;
      tmp___22 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
      if (tmp___22 != 0L) {
        __dynamic_pr_debug(& descriptor___8, "Descriptor has out after in: idx %d\n",
                           i);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (-22);
    } else {
    }
    *out_num = *out_num + (unsigned int )ret;
  }
  ldv_38227:
  i = next_desc(& desc);
  if (i != 4294967295U) {
    goto ldv_38230;
  } else {
  }
  vq->last_avail_idx = (u16 )((int )vq->last_avail_idx + 1);
  tmp___24 = ldv__builtin_expect(((int )vq->used_flags & 1) == 0, 0L);
  if (tmp___24 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared"),
                         "i" (1365), "i" (12UL));
    ldv_38232: ;
    goto ldv_38232;
  } else {
  }
  return ((int )head);
}
}
void vhost_discard_vq_desc(struct vhost_virtqueue *vq , int n )
{
  {
  vq->last_avail_idx = (int )vq->last_avail_idx - (int )((u16 )n);
  return;
}
}
int vhost_add_used(struct vhost_virtqueue *vq , unsigned int head , int len )
{
  struct vring_used_elem *used ;
  struct _ddebug descriptor ;
  long tmp ;
  int __pu_err ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int __pu_err___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  int __pu_err___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  used = (struct vring_used_elem *)(& (vq->used)->ring) + (unsigned long )((unsigned int )vq->last_used_idx % vq->num);
  __pu_err = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "iq" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38245;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38245;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "ir" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38245;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err): "er" (head),
                       "m" (*((struct __large_struct *)(& used->id))), "i" (-14),
                       "0" (__pu_err));
  goto ldv_38245;
  default:
  __put_user_bad();
  }
  ldv_38245: ;
  if (__pu_err != 0) {
    descriptor.modname = "vhost_net";
    descriptor.function = "vhost_add_used";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor.format = "Failed to write used id";
    descriptor.lineno = 1385U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to write used id");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  __pu_err___0 = 0;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "iq" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_38255;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_38255;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "ir" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_38255;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___0): "er" ((unsigned int )len),
                       "m" (*((struct __large_struct *)(& used->len))), "i" (-14),
                       "0" (__pu_err___0));
  goto ldv_38255;
  default:
  __put_user_bad();
  }
  ldv_38255: ;
  if (__pu_err___0 != 0) {
    descriptor___0.modname = "vhost_net";
    descriptor___0.function = "vhost_add_used";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___0.format = "Failed to write used len";
    descriptor___0.lineno = 1389U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Failed to write used len");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __pu_err___1 = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "iq" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_38264;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_38264;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "ir" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_38264;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__pu_err___1): "er" ((unsigned int )vq->last_used_idx + 1U),
                       "m" (*((struct __large_struct *)(& (vq->used)->idx))), "i" (-14),
                       "0" (__pu_err___1));
  goto ldv_38264;
  default:
  __put_user_bad();
  }
  ldv_38264: ;
  if (__pu_err___1 != 0) {
    descriptor___1.modname = "vhost_net";
    descriptor___1.function = "vhost_add_used";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___1.format = "Failed to increment used idx";
    descriptor___1.lineno = 1395U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to increment used idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("": : : "memory");
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              8ULL);
    log_write(vq->log_base, vq->log_addr + 2ULL, 2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  vq->last_used_idx = (u16 )((int )vq->last_used_idx + 1);
  tmp___3 = ldv__builtin_expect((int )vq->last_used_idx == (int )vq->signalled_used,
                             0L);
  if (tmp___3 != 0L) {
    vq->signalled_used_valid = 0;
  } else {
  }
  return (0);
}
}
static int __vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                              unsigned int count )
{
  struct vring_used_elem *used ;
  u16 old ;
  u16 new ;
  int start ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  u16 tmp___2 ;
  long tmp___3 ;
  {
  start = (int )((unsigned int )vq->last_used_idx % vq->num);
  used = (struct vring_used_elem *)(& (vq->used)->ring) + (unsigned long )start;
  tmp___0 = __copy_to_user((void *)used, (void const *)heads, count * 8U);
  if (tmp___0 != 0) {
    descriptor.modname = "vhost_net";
    descriptor.function = "__vhost_add_used_n";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor.format = "Failed to write used";
    descriptor.lineno = 1434U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to write used");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("": : : "memory");
    log_write(vq->log_base, vq->log_addr + (unsigned long long )((long )used - (long )vq->used),
              (u64 )((unsigned long )count * 8UL));
  } else {
  }
  old = vq->last_used_idx;
  tmp___2 = (int )vq->last_used_idx + (int )((u16 )count);
  vq->last_used_idx = tmp___2;
  new = tmp___2;
  tmp___3 = ldv__builtin_expect((int )new - (int )vq->signalled_used < (int )new - (int )old,
                             0L);
  if (tmp___3 != 0L) {
    vq->signalled_used_valid = 0;
  } else {
  }
  return (0);
}
}
int vhost_add_used_n(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                     unsigned int count )
{
  int start ;
  int n ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int __ret_pu ;
  __u16 __pu_val ;
  long tmp___0 ;
  {
  start = (int )((unsigned int )vq->last_used_idx % vq->num);
  n = (int )(vq->num - (unsigned int )start);
  if ((unsigned int )n < count) {
    r = __vhost_add_used_n(vq, heads, (unsigned int )n);
    if (r < 0) {
      return (r);
    } else {
    }
    heads = heads + (unsigned long )n;
    count = count - (unsigned int )n;
  } else {
  }
  r = __vhost_add_used_n(vq, heads, count);
  __asm__ volatile ("": : : "memory");
  might_fault();
  __pu_val = vq->last_used_idx;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_38293;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_38293;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_38293;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_38293;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (& (vq->used)->idx): "ebx");
  goto ldv_38293;
  }
  ldv_38293: ;
  if (__ret_pu != 0) {
    descriptor.modname = "vhost_net";
    descriptor.function = "vhost_add_used_n";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor.format = "Failed to increment used idx";
    descriptor.lineno = 1478U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Failed to increment used idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )vq->log_used, 0L);
  if (tmp___0 != 0L) {
    log_write(vq->log_base, vq->log_addr + 2ULL, 2ULL);
    if ((unsigned long )vq->log_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->log_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return (r);
}
}
static bool vhost_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  __u16 old ;
  __u16 new ;
  __u16 event ;
  bool v ;
  int tmp ;
  long tmp___0 ;
  __u16 flags ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___2 ;
  int tmp___3 ;
  u16 tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___0 ;
  long tmp___6 ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int tmp___7 ;
  {
  __asm__ volatile ("mfence": : : "memory");
  tmp = vhost_has_feature(dev, 24);
  if (tmp != 0) {
    tmp___0 = ldv__builtin_expect((int )vq->avail_idx == (int )vq->last_avail_idx, 0L);
    if (tmp___0 != 0L) {
      return (1);
    } else {
    }
  } else {
  }
  tmp___3 = vhost_has_feature(dev, 29);
  if (tmp___3 == 0) {
    __gu_err = 0;
    switch (2UL) {
    case 1UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_38313;
    case 2UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_38313;
    case 4UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_38313;
    case 8UL:
    __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                         "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->flags))),
                         "i" (-14), "0" (__gu_err));
    goto ldv_38313;
    default:
    tmp___2 = __get_user_bad();
    __gu_val = (unsigned long )tmp___2;
    }
    ldv_38313:
    flags = (unsigned short )__gu_val;
    if (__gu_err != 0) {
      descriptor.modname = "vhost_net";
      descriptor.function = "vhost_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor.format = "Failed to get flags";
      descriptor.lineno = 1508U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to get flags");
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (1);
    } else {
    }
    return (((int )flags & 1) == 0);
  } else {
  }
  old = vq->signalled_used;
  v = vq->signalled_used_valid;
  tmp___4 = vq->last_used_idx;
  vq->signalled_used = tmp___4;
  new = tmp___4;
  vq->signalled_used_valid = 1;
  tmp___5 = ldv__builtin_expect((long )(! v), 0L);
  if (tmp___5 != 0L) {
    return (1);
  } else {
  }
  might_fault();
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_38324;
  case 2UL:
  __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_38324;
  case 4UL:
  __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_38324;
  case 8UL:
  __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_38324;
  default:
  __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((u16 *)(& (vq->avail)->ring) + (unsigned long )vq->num));
  goto ldv_38324;
  }
  ldv_38324:
  event = (unsigned short )__val_gu;
  if (__ret_gu != 0) {
    descriptor___0.modname = "vhost_net";
    descriptor___0.function = "vhost_notify";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___0.format = "Failed to get used event idx";
    descriptor___0.lineno = 1522U;
    descriptor___0.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Failed to get used event idx");
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (1);
  } else {
  }
  tmp___7 = vring_need_event((int )event, (int )new, (int )old);
  return (tmp___7 != 0);
}
}
void vhost_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  bool tmp ;
  {
  if ((unsigned long )vq->call_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
    tmp = vhost_notify(dev, vq);
    if ((int )tmp) {
      eventfd_signal(vq->call_ctx, 1ULL);
    } else {
    }
  } else {
  }
  return;
}
}
void vhost_add_used_and_signal(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                               unsigned int head , int len )
{
  {
  vhost_add_used(vq, head, len);
  vhost_signal(dev, vq);
  return;
}
}
void vhost_add_used_and_signal_n(struct vhost_dev *dev , struct vhost_virtqueue *vq ,
                                 struct vring_used_elem *heads , unsigned int count )
{
  {
  vhost_add_used_n(vq, heads, count);
  vhost_signal(dev, vq);
  return;
}
}
bool vhost_enable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  u16 avail_idx ;
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  int tmp___1 ;
  int __gu_err ;
  unsigned long __gu_val ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  if (((int )vq->used_flags & 1) == 0) {
    return (0);
  } else {
  }
  vq->used_flags = (unsigned int )vq->used_flags & 65534U;
  tmp___1 = vhost_has_feature(dev, 29);
  if (tmp___1 == 0) {
    r = vhost_update_used_flags(vq);
    if (r != 0) {
      descriptor.modname = "vhost_net";
      descriptor.function = "vhost_enable_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor.format = "Failed to enable notification at %p: %d\n";
      descriptor.lineno = 1567U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to enable notification at %p: %d\n",
                           & (vq->used)->flags, r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (0);
    } else {
    }
  } else {
    r = vhost_update_avail_event(vq, (int )vq->avail_idx);
    if (r != 0) {
      descriptor___0.modname = "vhost_net";
      descriptor___0.function = "vhost_enable_notify";
      descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor___0.format = "Failed to update avail event index at %p: %d\n";
      descriptor___0.lineno = 1574U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "Failed to update avail event index at %p: %d\n",
                           (u16 *)(& (vq->used)->ring) + (unsigned long )vq->num,
                           r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      return (0);
    } else {
    }
  }
  __asm__ volatile ("mfence": : : "memory");
  __gu_err = 0;
  switch (2UL) {
  case 1UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=q" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38359;
  case 2UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38359;
  case 4UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38359;
  case 8UL:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (__gu_err),
                       "=r" (__gu_val): "m" (*((struct __large_struct *)(& (vq->avail)->idx))),
                       "i" (-14), "0" (__gu_err));
  goto ldv_38359;
  default:
  tmp___2 = __get_user_bad();
  __gu_val = (unsigned long )tmp___2;
  }
  ldv_38359:
  avail_idx = (unsigned short )__gu_val;
  r = __gu_err;
  if (r != 0) {
    descriptor___1.modname = "vhost_net";
    descriptor___1.function = "vhost_enable_notify";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
    descriptor___1.format = "Failed to check avail idx at %p: %d\n";
    descriptor___1.lineno = 1584U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Failed to check avail idx at %p: %d\n",
                         & (vq->avail)->idx, r);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    return (0);
  } else {
  }
  return ((int )vq->avail_idx != (int )avail_idx);
}
}
void vhost_disable_notify(struct vhost_dev *dev , struct vhost_virtqueue *vq )
{
  int r ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  if ((int )vq->used_flags & 1) {
    return;
  } else {
  }
  vq->used_flags = (u16 )((unsigned int )vq->used_flags | 1U);
  tmp___0 = vhost_has_feature(dev, 29);
  if (tmp___0 == 0) {
    r = vhost_update_used_flags(vq);
    if (r != 0) {
      descriptor.modname = "vhost_net";
      descriptor.function = "vhost_disable_notify";
      descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/vhost.c.prepared";
      descriptor.format = "Failed to enable notification at %p: %d\n";
      descriptor.lineno = 1603U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_pr_debug(& descriptor, "Failed to enable notification at %p: %d\n",
                           & (vq->used)->flags, r);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void vhost_zerocopy_done_signal(struct kref *kref )
{
  struct vhost_ubuf_ref *ubufs ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)kref;
  ubufs = (struct vhost_ubuf_ref *)__mptr;
  __wake_up(& ubufs->wait, 3U, 1, 0);
  return;
}
}
struct vhost_ubuf_ref *vhost_ubuf_alloc(struct vhost_virtqueue *vq , bool zcopy )
{
  struct vhost_ubuf_ref *ubufs ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  if (! zcopy) {
    return (0);
  } else {
  }
  tmp = kmalloc(104UL, 208U);
  ubufs = (struct vhost_ubuf_ref *)tmp;
  if ((unsigned long )ubufs == (unsigned long )((struct vhost_ubuf_ref *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct vhost_ubuf_ref *)tmp___0);
  } else {
  }
  kref_init(& ubufs->kref);
  __init_waitqueue_head(& ubufs->wait, "&ubufs->wait", & __key);
  ubufs->vq = vq;
  return (ubufs);
}
}
void vhost_ubuf_put(struct vhost_ubuf_ref *ubufs )
{
  {
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  return;
}
}
void vhost_ubuf_put_and_wait(struct vhost_ubuf_ref *ubufs )
{
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  tmp = atomic_read((atomic_t const *)(& ubufs->kref.refcount));
  if (tmp == 0) {
    goto ldv_38391;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_38394:
  prepare_to_wait(& ubufs->wait, & __wait, 2);
  tmp___1 = atomic_read((atomic_t const *)(& ubufs->kref.refcount));
  if (tmp___1 == 0) {
    goto ldv_38393;
  } else {
  }
  schedule();
  goto ldv_38394;
  ldv_38393:
  finish_wait(& ubufs->wait, & __wait);
  ldv_38391:
  kfree((void const *)ubufs);
  return;
}
}
void vhost_zerocopy_callback(struct ubuf_info *ubuf )
{
  struct vhost_ubuf_ref *ubufs ;
  struct vhost_virtqueue *vq ;
  {
  ubufs = (struct vhost_ubuf_ref *)ubuf->ctx;
  vq = ubufs->vq;
  vhost_poll_queue(& vq->poll);
  (vq->heads + ubuf->desc)->len = 1U;
  kref_put(& ubufs->kref, & vhost_zerocopy_done_signal);
  return;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
__inline static size_t iov_length(struct iovec const *iov , unsigned long nr_segs )
{
  unsigned long seg ;
  size_t ret ;
  {
  ret = 0UL;
  seg = 0UL;
  goto ldv_7649;
  ldv_7648:
  ret = (unsigned long )(iov + seg)->iov_len + ret;
  seg = seg + 1UL;
  ldv_7649: ;
  if (seg < nr_segs) {
    goto ldv_7648;
  } else {
  }
  return (ret);
}
}
extern int memcpy_toiovecend(struct iovec const * , unsigned char * , int , int ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern struct file *fget(unsigned int ) ;
__inline static void kref_get(struct kref *kref )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& kref->refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/linux/kref.h", 42);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  atomic_inc(& kref->refcount);
  return;
}
}
extern struct socket *sockfd_lookup(int , int * ) ;
__inline static struct sk_buff *skb_peek(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->next;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = 0;
  } else {
  }
  return (skb);
}
}
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
extern struct module __this_module ;
extern struct socket *tun_get_socket(struct file * ) ;
extern struct socket *macvtap_get_socket(struct file * ) ;
__inline static bool sock_flag(struct sock const *sk , enum sock_flags flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((int )flag, (unsigned long const volatile *)(& sk->sk_flags));
  return (tmp != 0);
}
}
static int experimental_zcopytx ;
static bool vhost_sock_zcopy(struct socket *sock )
{
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(experimental_zcopytx != 0, 0L);
  if (tmp != 0L) {
    tmp___0 = sock_flag((struct sock const *)sock->sk, SOCK_ZEROCOPY);
    if ((int )tmp___0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return ((bool )tmp___1);
}
}
static int move_iovec_hdr(struct iovec *from , struct iovec *to , size_t len , int iov_count )
{
  int seg ;
  size_t size ;
  __kernel_size_t _min1 ;
  size_t _min2 ;
  {
  seg = 0;
  goto ldv_41705;
  ldv_41704:
  _min1 = from->iov_len;
  _min2 = len;
  size = _min1 < _min2 ? _min1 : _min2;
  to->iov_base = from->iov_base;
  to->iov_len = size;
  from->iov_len = from->iov_len - size;
  from->iov_base = from->iov_base + size;
  len = len - size;
  from = from + 1;
  to = to + 1;
  seg = seg + 1;
  ldv_41705: ;
  if (len != 0UL && seg < iov_count) {
    goto ldv_41704;
  } else {
  }
  return (seg);
}
}
static void copy_iovec_hdr(struct iovec const *from , struct iovec *to , size_t len ,
                           int iovcount )
{
  int seg ;
  size_t size ;
  unsigned long _min1 ;
  size_t _min2 ;
  {
  seg = 0;
  goto ldv_41719;
  ldv_41718:
  _min1 = from->iov_len;
  _min2 = len;
  size = _min1 < (unsigned long )((unsigned long const )_min2) ? _min1 : (unsigned long const )_min2;
  to->iov_base = from->iov_base;
  to->iov_len = size;
  len = len - size;
  from = from + 1;
  to = to + 1;
  seg = seg + 1;
  ldv_41719: ;
  if (len != 0UL && seg < iovcount) {
    goto ldv_41718;
  } else {
  }
  return;
}
}
static void tx_poll_stop(struct vhost_net *net )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )net->tx_poll_state != 1U, 1L);
  if (tmp != 0L) {
    return;
  } else {
  }
  vhost_poll_stop((struct vhost_poll *)(& net->poll) + 1UL);
  net->tx_poll_state = VHOST_NET_POLL_STOPPED;
  return;
}
}
static void tx_poll_start(struct vhost_net *net , struct socket *sock )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )net->tx_poll_state != 2U, 0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  vhost_poll_start((struct vhost_poll *)(& net->poll) + 1UL, sock->file);
  net->tx_poll_state = VHOST_NET_POLL_STARTED;
  return;
}
}
static void handle_tx(struct vhost_net *net )
{
  struct vhost_virtqueue *vq ;
  unsigned int out ;
  unsigned int in ;
  unsigned int s ;
  int head ;
  struct msghdr msg ;
  size_t len ;
  size_t total_len ;
  int err ;
  int wmem ;
  size_t hdr_size ;
  struct socket *sock ;
  struct vhost_ubuf_ref *ubufs ;
  bool zcopy ;
  void *_________p1 ;
  bool __warned ;
  int tmp ;
  long tmp___0 ;
  int num_pends ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___0 ;
  size_t tmp___7 ;
  long tmp___8 ;
  struct ubuf_info *ubuf ;
  long tmp___9 ;
  struct _ddebug descriptor___1 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  vq = net->dev.vqs + 1UL;
  msg.msg_name = 0;
  msg.msg_namelen = 0;
  msg.msg_iov = (struct iovec *)(& vq->iov);
  msg.msg_iovlen = 0UL;
  msg.msg_control = 0;
  msg.msg_controllen = 0UL;
  msg.msg_flags = 64U;
  total_len = 0UL;
  ubufs = ubufs;
  _________p1 = *((void * volatile *)(& vq->private_data));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  sock = (struct socket *)_________p1;
  if ((unsigned long )sock == (unsigned long )((struct socket *)0)) {
    return;
  } else {
  }
  wmem = atomic_read((atomic_t const *)(& (sock->sk)->sk_wmem_alloc));
  if ((sock->sk)->sk_sndbuf <= wmem) {
    ldv_mutex_lock_50(& vq->mutex);
    tx_poll_start(net, sock);
    ldv_mutex_unlock_51(& vq->mutex);
    return;
  } else {
  }
  ldv_mutex_lock_52(& vq->mutex);
  vhost_disable_notify(& net->dev, vq);
  if ((sock->sk)->sk_sndbuf / 2 > wmem) {
    tx_poll_stop(net);
  } else {
  }
  hdr_size = vq->vhost_hlen;
  zcopy = (unsigned long )vq->ubufs != (unsigned long )((struct vhost_ubuf_ref *)0);
  ldv_41758: ;
  if ((int )zcopy) {
    vhost_zerocopy_signal_used(vq);
  } else {
  }
  head = vhost_get_vq_desc(& net->dev, vq, (struct iovec *)(& vq->iov), 1024U, & out,
                           & in, 0, 0);
  tmp___0 = ldv__builtin_expect(head < 0, 0L);
  if (tmp___0 != 0L) {
    goto ldv_41750;
  } else {
  }
  if ((unsigned int )head == vq->num) {
    wmem = atomic_read((atomic_t const *)(& (sock->sk)->sk_wmem_alloc));
    if (((sock->sk)->sk_sndbuf * 3) / 4 <= wmem) {
      tx_poll_start(net, sock);
      set_bit(0U, (unsigned long volatile *)(& sock->flags));
      goto ldv_41750;
    } else {
    }
    tmp___1 = ldv__builtin_expect(vq->upend_idx >= vq->done_idx, 1L);
    num_pends = tmp___1 != 0L ? vq->upend_idx - vq->done_idx : (vq->upend_idx + 1024) - vq->done_idx;
    tmp___2 = ldv__builtin_expect(num_pends > 128, 0L);
    if (tmp___2 != 0L) {
      tx_poll_start(net, sock);
      set_bit(0U, (unsigned long volatile *)(& sock->flags));
      goto ldv_41750;
    } else {
    }
    tmp___3 = vhost_enable_notify(& net->dev, vq);
    tmp___4 = ldv__builtin_expect((long )tmp___3, 0L);
    if (tmp___4 != 0L) {
      vhost_disable_notify(& net->dev, vq);
      goto ldv_41752;
    } else {
    }
    goto ldv_41750;
  } else {
  }
  if (in != 0U) {
    descriptor.modname = "vhost_net";
    descriptor.function = "handle_tx";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
    descriptor.format = "Unexpected descriptor format for TX: out %d, int %d\n";
    descriptor.lineno = 253U;
    descriptor.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor, "Unexpected descriptor format for TX: out %d, int %d\n",
                         out, in);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_41750;
  } else {
  }
  tmp___6 = move_iovec_hdr((struct iovec *)(& vq->iov), (struct iovec *)(& vq->hdr),
                           hdr_size, (int )out);
  s = (unsigned int )tmp___6;
  msg.msg_iovlen = (__kernel_size_t )out;
  len = iov_length((struct iovec const *)(& vq->iov), (unsigned long )out);
  if (len == 0UL) {
    descriptor___0.modname = "vhost_net";
    descriptor___0.function = "handle_tx";
    descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
    descriptor___0.format = "Unexpected header len for TX: %zd expected %zd\n";
    descriptor___0.lineno = 264U;
    descriptor___0.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = iov_length((struct iovec const *)(& vq->hdr), (unsigned long )s);
      __dynamic_pr_debug(& descriptor___0, "Unexpected header len for TX: %zd expected %zd\n",
                         tmp___7, hdr_size);
    } else {
    }
    if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
      eventfd_signal(vq->error_ctx, 1ULL);
    } else {
    }
    goto ldv_41750;
  } else {
  }
  if ((int )zcopy) {
    (vq->heads + (unsigned long )vq->upend_idx)->id = (__u32 )head;
    if (len <= 255UL) {
      (vq->heads + (unsigned long )vq->upend_idx)->len = 1U;
      msg.msg_control = 0;
      msg.msg_controllen = 0UL;
      ubufs = 0;
    } else {
      ubuf = vq->ubuf_info + (unsigned long )head;
      (vq->heads + (unsigned long )vq->upend_idx)->len = (__u32 )len;
      ubuf->callback = & vhost_zerocopy_callback;
      ubuf->ctx = (void *)vq->ubufs;
      ubuf->desc = (unsigned long )vq->upend_idx;
      msg.msg_control = (void *)ubuf;
      msg.msg_controllen = 8UL;
      ubufs = vq->ubufs;
      kref_get(& ubufs->kref);
    }
    vq->upend_idx = (vq->upend_idx + 1) % 1024;
  } else {
  }
  err = (*((sock->ops)->sendmsg))(0, sock, & msg, len);
  tmp___9 = ldv__builtin_expect(err < 0, 0L);
  if (tmp___9 != 0L) {
    if ((int )zcopy) {
      if ((unsigned long )ubufs != (unsigned long )((struct vhost_ubuf_ref *)0)) {
        vhost_ubuf_put(ubufs);
      } else {
      }
      vq->upend_idx = (int )((unsigned int )vq->upend_idx - 1U) & 1023;
    } else {
    }
    vhost_discard_vq_desc(vq, 1);
    if (err == -11 || err == -105) {
      tx_poll_start(net, sock);
    } else {
    }
    goto ldv_41750;
  } else {
  }
  if ((size_t )err != len) {
    descriptor___1.modname = "vhost_net";
    descriptor___1.function = "handle_tx";
    descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
    descriptor___1.format = "Truncated TX packet:  len %d != %zd\n";
    descriptor___1.lineno = 307U;
    descriptor___1.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "Truncated TX packet:  len %d != %zd\n",
                         err, len);
    } else {
    }
  } else {
  }
  if (! zcopy) {
    vhost_add_used_and_signal(& net->dev, vq, (unsigned int )head, 0);
  } else {
    vhost_zerocopy_signal_used(vq);
  }
  total_len = total_len + len;
  tmp___11 = ldv__builtin_expect(total_len > 524287UL, 0L);
  if (tmp___11 != 0L) {
    vhost_poll_queue(& vq->poll);
    goto ldv_41750;
  } else {
  }
  ldv_41752: ;
  goto ldv_41758;
  ldv_41750:
  ldv_mutex_unlock_53(& vq->mutex);
  return;
}
}
static int peek_head_len(struct sock *sk )
{
  struct sk_buff *head ;
  int len ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  {
  len = 0;
  tmp = spinlock_check(& sk->sk_receive_queue.lock);
  flags = _raw_spin_lock_irqsave(tmp);
  head = skb_peek((struct sk_buff_head const *)(& sk->sk_receive_queue));
  tmp___0 = ldv__builtin_expect((unsigned long )head != (unsigned long )((struct sk_buff *)0),
                             1L);
  if (tmp___0 != 0L) {
    len = (int )head->len;
    if (((int )head->vlan_tci & 4096) != 0) {
      len = len + 4;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& sk->sk_receive_queue.lock, flags);
  return (len);
}
}
static int get_rx_bufs(struct vhost_virtqueue *vq , struct vring_used_elem *heads ,
                       int datalen , unsigned int *iovcount , struct vhost_log *log ,
                       unsigned int *log_num , unsigned int quota )
{
  unsigned int out ;
  unsigned int in ;
  int seg ;
  int headcount ;
  unsigned int d ;
  int r ;
  int nlogs ;
  long tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  size_t tmp___5 ;
  long tmp___6 ;
  {
  seg = 0;
  headcount = 0;
  nlogs = 0;
  goto ldv_41790;
  ldv_41789:
  tmp = ldv__builtin_expect(seg > 1023, 0L);
  if (tmp != 0L) {
    r = -105;
    goto err;
  } else {
  }
  tmp___0 = vhost_get_vq_desc(vq->dev, vq, (struct iovec *)(& vq->iov) + (unsigned long )seg,
                              1024U - (unsigned int )seg, & out, & in, log, log_num);
  d = (unsigned int )tmp___0;
  if (vq->num == d) {
    r = 0;
    goto err;
  } else {
  }
  tmp___2 = ldv__builtin_expect(out != 0U, 0L);
  if (tmp___2 != 0L) {
    goto _L;
  } else {
    tmp___3 = ldv__builtin_expect(in == 0U, 0L);
    if (tmp___3 != 0L) {
      _L:
      descriptor.modname = "vhost_net";
      descriptor.function = "get_rx_bufs";
      descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
      descriptor.format = "unexpected descriptor format for RX: out %d, in %d\n";
      descriptor.lineno = 378U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor, "unexpected descriptor format for RX: out %d, in %d\n",
                           out, in);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      r = -22;
      goto err;
    } else {
    }
  }
  tmp___4 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                             0L);
  if (tmp___4 != 0L) {
    nlogs = (int )(*log_num + (unsigned int )nlogs);
    log = log + (unsigned long )*log_num;
  } else {
  }
  (heads + (unsigned long )headcount)->id = d;
  tmp___5 = iov_length((struct iovec const *)(& vq->iov) + (unsigned long )seg,
                       (unsigned long )in);
  (heads + (unsigned long )headcount)->len = (__u32 )tmp___5;
  datalen = (int )((__u32 )datalen - (heads + (unsigned long )headcount)->len);
  headcount = headcount + 1;
  seg = (int )((unsigned int )seg + in);
  ldv_41790: ;
  if (datalen > 0 && (unsigned int )headcount < quota) {
    goto ldv_41789;
  } else {
  }
  (heads + ((unsigned long )headcount + 0xffffffffffffffffUL))->len = (heads + ((unsigned long )headcount + 0xffffffffffffffffUL))->len + (__u32 )datalen;
  *iovcount = (unsigned int )seg;
  tmp___6 = ldv__builtin_expect((unsigned long )log != (unsigned long )((struct vhost_log *)0),
                             0L);
  if (tmp___6 != 0L) {
    *log_num = (unsigned int )nlogs;
  } else {
  }
  return (headcount);
  err:
  vhost_discard_vq_desc(vq, headcount);
  return (r);
}
}
static void handle_rx(struct vhost_net *net )
{
  struct vhost_virtqueue *vq ;
  unsigned int in ;
  unsigned int log ;
  struct vhost_log *vq_log ;
  struct msghdr msg ;
  struct virtio_net_hdr_mrg_rxbuf hdr ;
  size_t total_len ;
  int err ;
  int mergeable ;
  s16 headcount ;
  size_t vhost_hlen ;
  size_t sock_hlen ;
  size_t vhost_len ;
  size_t sock_len ;
  struct socket *sock ;
  void *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor ;
  long tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___0 ;
  long tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  struct _ddebug descriptor___1 ;
  long tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  long tmp___16 ;
  long tmp___17 ;
  int tmp___18 ;
  {
  vq = net->dev.vqs;
  in = in;
  msg.msg_name = 0;
  msg.msg_namelen = 0;
  msg.msg_iov = (struct iovec *)(& vq->iov);
  msg.msg_iovlen = 0UL;
  msg.msg_control = 0;
  msg.msg_controllen = 0UL;
  msg.msg_flags = 64U;
  hdr.hdr.flags = 0U;
  hdr.hdr.gso_type = 0U;
  hdr.hdr.hdr_len = (unsigned short)0;
  hdr.hdr.gso_size = (unsigned short)0;
  hdr.hdr.csum_start = (unsigned short)0;
  hdr.hdr.csum_offset = (unsigned short)0;
  hdr.num_buffers = (unsigned short)0;
  total_len = 0UL;
  _________p1 = *((void * volatile *)(& vq->private_data));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  sock = (struct socket *)_________p1;
  if ((unsigned long )sock == (unsigned long )((struct socket *)0)) {
    return;
  } else {
  }
  ldv_mutex_lock_54(& vq->mutex);
  vhost_disable_notify(& net->dev, vq);
  vhost_hlen = vq->vhost_hlen;
  sock_hlen = vq->sock_hlen;
  tmp___0 = vhost_has_feature(& net->dev, 26);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  vq_log = tmp___1 != 0L ? vq->log : 0;
  mergeable = vhost_has_feature(& net->dev, 15);
  goto ldv_41814;
  ldv_41819:
  sock_len = sock_len + sock_hlen;
  vhost_len = sock_len + vhost_hlen;
  tmp___2 = ldv__builtin_expect(mergeable != 0, 1L);
  tmp___3 = get_rx_bufs(vq, vq->heads, (int )vhost_len, & in, vq_log, & log, tmp___2 != 0L ? 1024U : 1U);
  headcount = (s16 )tmp___3;
  tmp___4 = ldv__builtin_expect((int )headcount < 0, 0L);
  if (tmp___4 != 0L) {
    goto ldv_41813;
  } else {
  }
  if ((int )headcount == 0) {
    tmp___5 = vhost_enable_notify(& net->dev, vq);
    tmp___6 = ldv__builtin_expect((long )tmp___5, 0L);
    if (tmp___6 != 0L) {
      vhost_disable_notify(& net->dev, vq);
      goto ldv_41814;
    } else {
    }
    goto ldv_41813;
  } else {
  }
  tmp___7 = ldv__builtin_expect(vhost_hlen != 0UL, 0L);
  if (tmp___7 != 0L) {
    move_iovec_hdr((struct iovec *)(& vq->iov), (struct iovec *)(& vq->hdr), vhost_hlen,
                   (int )in);
  } else {
    copy_iovec_hdr((struct iovec const *)(& vq->iov), (struct iovec *)(& vq->hdr),
                   sock_hlen, (int )in);
  }
  msg.msg_iovlen = (__kernel_size_t )in;
  err = (*((sock->ops)->recvmsg))(0, sock, & msg, sock_len, 96);
  tmp___9 = ldv__builtin_expect((size_t )err != sock_len, 0L);
  if (tmp___9 != 0L) {
    descriptor.modname = "vhost_net";
    descriptor.function = "handle_rx";
    descriptor.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
    descriptor.format = "Discarded rx packet:  len %d, expected %zd\n";
    descriptor.lineno = 478U;
    descriptor.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_pr_debug(& descriptor, "Discarded rx packet:  len %d, expected %zd\n",
                         err, sock_len);
    } else {
    }
    vhost_discard_vq_desc(vq, (int )headcount);
    goto ldv_41814;
  } else {
  }
  tmp___11 = ldv__builtin_expect(vhost_hlen != 0UL, 0L);
  if (tmp___11 != 0L) {
    tmp___12 = memcpy_toiovecend((struct iovec const *)(& vq->hdr), (unsigned char *)(& hdr),
                                 0, (int )vhost_hlen);
    if (tmp___12 != 0) {
      descriptor___0.modname = "vhost_net";
      descriptor___0.function = "handle_rx";
      descriptor___0.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
      descriptor___0.format = "Unable to write vnet_hdr at addr %p\n";
      descriptor___0.lineno = 486U;
      descriptor___0.flags = 0U;
      tmp___10 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___10 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "Unable to write vnet_hdr at addr %p\n",
                           ((struct iovec *)(& vq->iov))->iov_base);
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      goto ldv_41813;
    } else {
    }
  } else {
  }
  tmp___14 = ldv__builtin_expect(mergeable != 0, 1L);
  if (tmp___14 != 0L) {
    tmp___15 = memcpy_toiovecend((struct iovec const *)(& vq->hdr), (unsigned char *)(& headcount),
                                 10, 2);
    if (tmp___15 != 0) {
      descriptor___1.modname = "vhost_net";
      descriptor___1.function = "handle_rx";
      descriptor___1.filename = "/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared";
      descriptor___1.format = "Failed num_buffers write";
      descriptor___1.lineno = 494U;
      descriptor___1.flags = 0U;
      tmp___13 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___13 != 0L) {
        __dynamic_pr_debug(& descriptor___1, "Failed num_buffers write");
      } else {
      }
      if ((unsigned long )vq->error_ctx != (unsigned long )((struct eventfd_ctx *)0)) {
        eventfd_signal(vq->error_ctx, 1ULL);
      } else {
      }
      vhost_discard_vq_desc(vq, (int )headcount);
      goto ldv_41813;
    } else {
    }
  } else {
  }
  vhost_add_used_and_signal_n(& net->dev, vq, vq->heads, (unsigned int )headcount);
  tmp___16 = ldv__builtin_expect((unsigned long )vq_log != (unsigned long )((struct vhost_log *)0),
                              0L);
  if (tmp___16 != 0L) {
    vhost_log_write(vq, vq_log, log, (u64 )vhost_len);
  } else {
  }
  total_len = total_len + vhost_len;
  tmp___17 = ldv__builtin_expect(total_len > 524287UL, 0L);
  if (tmp___17 != 0L) {
    vhost_poll_queue(& vq->poll);
    goto ldv_41813;
  } else {
  }
  ldv_41814:
  tmp___18 = peek_head_len(sock->sk);
  sock_len = (size_t )tmp___18;
  if (sock_len != 0UL) {
    goto ldv_41819;
  } else {
  }
  ldv_41813:
  ldv_mutex_unlock_55(& vq->mutex);
  return;
}
}
static void handle_tx_kick(struct vhost_work *work )
{
  struct vhost_virtqueue *vq ;
  struct vhost_work const *__mptr ;
  struct vhost_net *net ;
  struct vhost_dev const *__mptr___0 ;
  {
  __mptr = (struct vhost_work const *)work;
  vq = (struct vhost_virtqueue *)__mptr + 0xfffffffffffffec0UL;
  __mptr___0 = (struct vhost_dev const *)vq->dev;
  net = (struct vhost_net *)__mptr___0;
  handle_tx(net);
  return;
}
}
static void handle_rx_kick(struct vhost_work *work )
{
  struct vhost_virtqueue *vq ;
  struct vhost_work const *__mptr ;
  struct vhost_net *net ;
  struct vhost_dev const *__mptr___0 ;
  {
  __mptr = (struct vhost_work const *)work;
  vq = (struct vhost_virtqueue *)__mptr + 0xfffffffffffffec0UL;
  __mptr___0 = (struct vhost_dev const *)vq->dev;
  net = (struct vhost_net *)__mptr___0;
  handle_rx(net);
  return;
}
}
static void handle_tx_net(struct vhost_work *work )
{
  struct vhost_net *net ;
  struct vhost_work const *__mptr ;
  {
  __mptr = (struct vhost_work const *)work;
  net = (struct vhost_net *)__mptr + 0xffffffffffff77b0UL;
  handle_tx(net);
  return;
}
}
static void handle_rx_net(struct vhost_work *work )
{
  struct vhost_net *net ;
  struct vhost_work const *__mptr ;
  {
  __mptr = (struct vhost_work const *)work;
  net = (struct vhost_net *)__mptr + 0xffffffffffff7880UL;
  handle_rx(net);
  return;
}
}
static int vhost_net_open(struct inode *inode , struct file *f )
{
  struct vhost_net *n ;
  void *tmp ;
  struct vhost_dev *dev ;
  int r ;
  long tmp___0 ;
  {
  tmp = kmalloc(35048UL, 208U);
  n = (struct vhost_net *)tmp;
  if ((unsigned long )n == (unsigned long )((struct vhost_net *)0)) {
    return (-12);
  } else {
  }
  dev = & n->dev;
  n->vqs[1].handle_kick = & handle_tx_kick;
  n->vqs[0].handle_kick = & handle_rx_kick;
  tmp___0 = vhost_dev_init(dev, (struct vhost_virtqueue *)(& n->vqs), 2);
  r = (int )tmp___0;
  if (r < 0) {
    kfree((void const *)n);
    return (r);
  } else {
  }
  vhost_poll_init((struct vhost_poll *)(& n->poll) + 1UL, & handle_tx_net, 4UL, dev);
  vhost_poll_init((struct vhost_poll *)(& n->poll), & handle_rx_net, 1UL, dev);
  n->tx_poll_state = VHOST_NET_POLL_DISABLED;
  f->private_data = (void *)n;
  return (0);
}
}
static void vhost_net_disable_vq(struct vhost_net *n , struct vhost_virtqueue *vq )
{
  {
  if ((unsigned long )vq->private_data == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  if ((unsigned long )((struct vhost_virtqueue *)(& n->vqs) + 1UL) == (unsigned long )vq) {
    tx_poll_stop(n);
    n->tx_poll_state = VHOST_NET_POLL_DISABLED;
  } else {
    vhost_poll_stop((struct vhost_poll *)(& n->poll));
  }
  return;
}
}
static void vhost_net_enable_vq(struct vhost_net *n , struct vhost_virtqueue *vq )
{
  struct socket *sock ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& vq->mutex.dep_map);
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared",
                             589, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  sock = (struct socket *)vq->private_data;
  if ((unsigned long )sock == (unsigned long )((struct socket *)0)) {
    return;
  } else {
  }
  if ((unsigned long )((struct vhost_virtqueue *)(& n->vqs) + 1UL) == (unsigned long )vq) {
    n->tx_poll_state = VHOST_NET_POLL_STOPPED;
    tx_poll_start(n, sock);
  } else {
    vhost_poll_start((struct vhost_poll *)(& n->poll), sock->file);
  }
  return;
}
}
static struct socket *vhost_net_stop_vq(struct vhost_net *n , struct vhost_virtqueue *vq )
{
  struct socket *sock ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_mutex_lock_56(& vq->mutex);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = lock_is_held(& vq->mutex.dep_map);
    if (tmp___0 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared",
                             606, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  sock = (struct socket *)vq->private_data;
  vhost_net_disable_vq(n, vq);
  __asm__ volatile ("": : : "memory");
  vq->private_data = 0;
  ldv_mutex_unlock_57(& vq->mutex);
  return (sock);
}
}
static void vhost_net_stop(struct vhost_net *n , struct socket **tx_sock , struct socket **rx_sock )
{
  {
  *tx_sock = vhost_net_stop_vq(n, (struct vhost_virtqueue *)(& n->vqs) + 1UL);
  *rx_sock = vhost_net_stop_vq(n, (struct vhost_virtqueue *)(& n->vqs));
  return;
}
}
static void vhost_net_flush_vq(struct vhost_net *n , int index )
{
  {
  vhost_poll_flush((struct vhost_poll *)(& n->poll) + (unsigned long )index);
  vhost_poll_flush(& (n->dev.vqs + (unsigned long )index)->poll);
  return;
}
}
static void vhost_net_flush(struct vhost_net *n )
{
  {
  vhost_net_flush_vq(n, 1);
  vhost_net_flush_vq(n, 0);
  return;
}
}
static int vhost_net_release(struct inode *inode , struct file *f )
{
  struct vhost_net *n ;
  struct socket *tx_sock ;
  struct socket *rx_sock ;
  {
  n = (struct vhost_net *)f->private_data;
  vhost_net_stop(n, & tx_sock, & rx_sock);
  vhost_net_flush(n);
  vhost_dev_cleanup(& n->dev, 0);
  if ((unsigned long )tx_sock != (unsigned long )((struct socket *)0)) {
    fput(tx_sock->file);
  } else {
  }
  if ((unsigned long )rx_sock != (unsigned long )((struct socket *)0)) {
    fput(rx_sock->file);
  } else {
  }
  vhost_net_flush(n);
  kfree((void const *)n);
  return (0);
}
}
static struct socket *get_raw_socket(int fd )
{
  struct __anonstruct_uaddr_237 uaddr ;
  int uaddr_len ;
  int r ;
  struct socket *sock ;
  struct socket *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  uaddr_len = 52;
  tmp = sockfd_lookup(fd, & r);
  sock = tmp;
  if ((unsigned long )sock == (unsigned long )((struct socket *)0)) {
    tmp___0 = ERR_PTR(-88L);
    return ((struct socket *)tmp___0);
  } else {
  }
  if ((unsigned int )(sock->sk)->sk_type != 3U) {
    r = -94;
    goto err;
  } else {
  }
  r = (*((sock->ops)->getname))(sock, (struct sockaddr *)(& uaddr.sa), & uaddr_len,
                                0);
  if (r != 0) {
    goto err;
  } else {
  }
  if ((unsigned int )uaddr.sa.sll_family != 17U) {
    r = -96;
    goto err;
  } else {
  }
  return (sock);
  err:
  fput(sock->file);
  tmp___1 = ERR_PTR((long )r);
  return ((struct socket *)tmp___1);
}
}
static struct socket *get_tap_socket(int fd )
{
  struct file *file ;
  struct file *tmp ;
  struct socket *sock ;
  void *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = fget((unsigned int )fd);
  file = tmp;
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    tmp___0 = ERR_PTR(-9L);
    return ((struct socket *)tmp___0);
  } else {
  }
  sock = tun_get_socket(file);
  tmp___1 = IS_ERR((void const *)sock);
  if (tmp___1 == 0L) {
    return (sock);
  } else {
  }
  sock = macvtap_get_socket(file);
  tmp___2 = IS_ERR((void const *)sock);
  if (tmp___2 != 0L) {
    fput(file);
  } else {
  }
  return (sock);
}
}
static struct socket *get_socket(int fd )
{
  struct socket *sock ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  if (fd == -1) {
    return (0);
  } else {
  }
  sock = get_raw_socket(fd);
  tmp = IS_ERR((void const *)sock);
  if (tmp == 0L) {
    return (sock);
  } else {
  }
  sock = get_tap_socket(fd);
  tmp___0 = IS_ERR((void const *)sock);
  if (tmp___0 == 0L) {
    return (sock);
  } else {
  }
  tmp___1 = ERR_PTR(-88L);
  return ((struct socket *)tmp___1);
}
}
static long vhost_net_set_backend(struct vhost_net *n , unsigned int index , int fd )
{
  struct socket *sock ;
  struct socket *oldsock ;
  struct vhost_virtqueue *vq ;
  struct vhost_ubuf_ref *ubufs ;
  struct vhost_ubuf_ref *oldubufs ;
  int r ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool __warned ;
  int tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  {
  oldubufs = 0;
  ldv_mutex_lock_58(& n->dev.mutex);
  tmp = vhost_dev_check_owner(& n->dev);
  r = (int )tmp;
  if (r != 0) {
    goto err;
  } else {
  }
  if (index > 1U) {
    r = -105;
    goto err;
  } else {
  }
  vq = (struct vhost_virtqueue *)(& n->vqs) + (unsigned long )index;
  ldv_mutex_lock_59(& vq->mutex);
  tmp___0 = vhost_vq_access_ok(vq);
  if (tmp___0 == 0) {
    r = -14;
    goto err_vq;
  } else {
  }
  sock = get_socket(fd);
  tmp___2 = IS_ERR((void const *)sock);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)sock);
    r = (int )tmp___1;
    goto err_vq;
  } else {
  }
  tmp___3 = debug_lockdep_rcu_enabled();
  if (tmp___3 != 0 && ! __warned) {
    tmp___4 = lock_is_held(& vq->mutex.dep_map);
    if (tmp___4 == 0) {
      __warned = 1;
      lockdep_rcu_suspicious("/work/vladimir/UFO/Work/test/work/current--X--drivers/vhost/vhost_net.ko--X--defaultlinux-3.7.3--X--32_7a--X--ufo/linux-3.7.3/csd_deg_dscv/13/dscv_tempdir/dscv/ri/32_7a/drivers/vhost/net.c.prepared",
                             749, "suspicious rcu_dereference_protected() usage");
    } else {
    }
  } else {
  }
  oldsock = (struct socket *)vq->private_data;
  if ((unsigned long )sock != (unsigned long )oldsock) {
    if ((unsigned long )sock != (unsigned long )((struct socket *)0)) {
      tmp___5 = vhost_sock_zcopy(sock);
      if ((int )tmp___5) {
        tmp___6 = 1;
      } else {
        tmp___6 = 0;
      }
    } else {
      tmp___6 = 0;
    }
    ubufs = vhost_ubuf_alloc(vq, (int )((bool )tmp___6));
    tmp___8 = IS_ERR((void const *)ubufs);
    if (tmp___8 != 0L) {
      tmp___7 = PTR_ERR((void const *)ubufs);
      r = (int )tmp___7;
      goto err_ubufs;
    } else {
    }
    oldubufs = vq->ubufs;
    vq->ubufs = ubufs;
    vhost_net_disable_vq(n, vq);
    __asm__ volatile ("": : : "memory");
    vq->private_data = (void *)sock;
    vhost_net_enable_vq(n, vq);
    r = vhost_init_used(vq);
    if (r != 0) {
      goto err_vq;
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_60(& vq->mutex);
  if ((unsigned long )oldubufs != (unsigned long )((struct vhost_ubuf_ref *)0)) {
    vhost_ubuf_put_and_wait(oldubufs);
    ldv_mutex_lock_61(& vq->mutex);
    vhost_zerocopy_signal_used(vq);
    ldv_mutex_unlock_62(& vq->mutex);
  } else {
  }
  if ((unsigned long )oldsock != (unsigned long )((struct socket *)0)) {
    vhost_net_flush_vq(n, (int )index);
    fput(oldsock->file);
  } else {
  }
  ldv_mutex_unlock_63(& n->dev.mutex);
  return (0L);
  err_ubufs:
  fput(sock->file);
  err_vq:
  ldv_mutex_unlock_64(& vq->mutex);
  err:
  ldv_mutex_unlock_65(& n->dev.mutex);
  return ((long )r);
}
}
static long vhost_net_reset_owner(struct vhost_net *n )
{
  struct socket *tx_sock ;
  struct socket *rx_sock ;
  long err ;
  {
  tx_sock = 0;
  rx_sock = 0;
  ldv_mutex_lock_66(& n->dev.mutex);
  err = vhost_dev_check_owner(& n->dev);
  if (err != 0L) {
    goto done;
  } else {
  }
  vhost_net_stop(n, & tx_sock, & rx_sock);
  vhost_net_flush(n);
  err = vhost_dev_reset_owner(& n->dev);
  done:
  ldv_mutex_unlock_67(& n->dev.mutex);
  if ((unsigned long )tx_sock != (unsigned long )((struct socket *)0)) {
    fput(tx_sock->file);
  } else {
  }
  if ((unsigned long )rx_sock != (unsigned long )((struct socket *)0)) {
    fput(rx_sock->file);
  } else {
  }
  return (err);
}
}
static int vhost_net_set_features(struct vhost_net *n , u64 features )
{
  size_t vhost_hlen ;
  size_t sock_hlen ;
  size_t hdr_len ;
  int i ;
  int tmp ;
  {
  hdr_len = (features & 32768ULL) != 0ULL ? 12UL : 10UL;
  if ((features & 134217728ULL) != 0ULL) {
    vhost_hlen = hdr_len;
    sock_hlen = 0UL;
  } else {
    vhost_hlen = 0UL;
    sock_hlen = hdr_len;
  }
  ldv_mutex_lock_68(& n->dev.mutex);
  if ((features & 67108864ULL) != 0ULL) {
    tmp = vhost_log_access_ok(& n->dev);
    if (tmp == 0) {
      ldv_mutex_unlock_69(& n->dev.mutex);
      return (-14);
    } else {
    }
  } else {
  }
  n->dev.acked_features = (unsigned int )features;
  __asm__ volatile ("": : : "memory");
  i = 0;
  goto ldv_41946;
  ldv_41945:
  ldv_mutex_lock_70(& n->vqs[i].mutex);
  n->vqs[i].vhost_hlen = vhost_hlen;
  n->vqs[i].sock_hlen = sock_hlen;
  ldv_mutex_unlock_71(& n->vqs[i].mutex);
  i = i + 1;
  ldv_41946: ;
  if (i <= 1) {
    goto ldv_41945;
  } else {
  }
  vhost_net_flush(n);
  ldv_mutex_unlock_72(& n->dev.mutex);
  return (0);
}
}
static long vhost_net_ioctl(struct file *f , unsigned int ioctl , unsigned long arg )
{
  struct vhost_net *n ;
  void *argp ;
  u64 *featurep ;
  struct vhost_vring_file backend ;
  u64 features ;
  int r ;
  unsigned long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  n = (struct vhost_net *)f->private_data;
  argp = (void *)arg;
  featurep = (u64 *)argp;
  switch (ioctl) {
  case 1074310960U:
  tmp = copy_from_user((void *)(& backend), (void const *)argp, 8UL);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  tmp___0 = vhost_net_set_backend(n, backend.index, backend.fd);
  return (tmp___0);
  case 2148052736U:
  features = 1023442944ULL;
  tmp___1 = copy_to_user((void *)featurep, (void const *)(& features), 8U);
  if (tmp___1 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case 1074310912U:
  tmp___2 = copy_from_user((void *)(& features), (void const *)featurep, 8UL);
  if (tmp___2 != 0UL) {
    return (-14L);
  } else {
  }
  if ((features & 0xffffffffc2ff7fffULL) != 0ULL) {
    return (-95L);
  } else {
  }
  tmp___3 = vhost_net_set_features(n, features);
  return ((long )tmp___3);
  case 44802U:
  tmp___4 = vhost_net_reset_owner(n);
  return (tmp___4);
  default:
  ldv_mutex_lock_73(& n->dev.mutex);
  tmp___5 = vhost_dev_ioctl(& n->dev, ioctl, arg);
  r = (int )tmp___5;
  vhost_net_flush(n);
  ldv_mutex_unlock_74(& n->dev.mutex);
  return ((long )r);
  }
}
}
static long vhost_net_compat_ioctl(struct file *f , unsigned int ioctl , unsigned long arg )
{
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  tmp___0 = vhost_net_ioctl(f, ioctl, (unsigned long )tmp);
  return (tmp___0);
}
}
static struct file_operations const vhost_net_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, & vhost_net_ioctl, & vhost_net_compat_ioctl,
    0, & vhost_net_open, 0, & vhost_net_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct miscdevice vhost_net_misc =
     {238, "vhost-net", & vhost_net_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
static int vhost_net_init(void)
{
  int tmp ;
  {
  if (experimental_zcopytx != 0) {
    vhost_enable_zcopy(1);
  } else {
  }
  tmp = misc_register(& vhost_net_misc);
  return (tmp);
}
}
static void vhost_net_exit(void)
{
  {
  misc_deregister(& vhost_net_misc);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct inode *var_group1 ;
  struct file *var_group2 ;
  unsigned int var_vhost_net_ioctl_27_p1 ;
  unsigned long var_vhost_net_ioctl_27_p2 ;
  unsigned int var_vhost_net_compat_ioctl_28_p1 ;
  unsigned long var_vhost_net_compat_ioctl_28_p2 ;
  int res_vhost_net_open_13 ;
  int ldv_s_vhost_net_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_vhost_net_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = vhost_net_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_42026;
  ldv_42025:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_s_vhost_net_fops_file_operations == 0) {
    ldv_handler_precall();
    res_vhost_net_open_13 = vhost_net_open(var_group1, var_group2);
    ldv_check_return_value(res_vhost_net_open_13);
    if (res_vhost_net_open_13 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_vhost_net_fops_file_operations = ldv_s_vhost_net_fops_file_operations + 1;
  } else {
  }
  goto ldv_42020;
  case 1: ;
  if (ldv_s_vhost_net_fops_file_operations == 1) {
    ldv_handler_precall();
    vhost_net_release(var_group1, var_group2);
    ldv_s_vhost_net_fops_file_operations = 0;
  } else {
  }
  goto ldv_42020;
  case 2:
  ldv_handler_precall();
  vhost_net_ioctl(var_group2, var_vhost_net_ioctl_27_p1, var_vhost_net_ioctl_27_p2);
  goto ldv_42020;
  case 3:
  ldv_handler_precall();
  vhost_net_compat_ioctl(var_group2, var_vhost_net_compat_ioctl_28_p1, var_vhost_net_compat_ioctl_28_p2);
  goto ldv_42020;
  default: ;
  goto ldv_42020;
  }
  ldv_42020: ;
  ldv_42026:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_vhost_net_fops_file_operations != 0) {
    goto ldv_42025;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  vhost_net_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mtx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mtx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
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
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
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
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
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
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mtx ;
int ldv_mutex_lock_interruptible_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mtx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mtx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mtx(struct mutex *lock )
{
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mtx = 2;
  return;
}
}
int ldv_mutex_trylock_mtx(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mtx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mtx(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mtx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mtx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mtx == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mtx(struct mutex *lock )
{
  {
  if (ldv_mutex_mtx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mtx = 1;
  return;
}
}
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mtx = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mtx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cgroup_attach_task_all(struct task_struct *arg0, struct task_struct *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
struct eventfd_ctx *eventfd_ctx_fileget(struct file *arg0) {
  return ldv_malloc(0UL);
}
void eventfd_ctx_put(struct eventfd_ctx *arg0) {
  return;
}
struct file *eventfd_fget(int arg0) {
  return ldv_malloc(sizeof(struct file));
}
unsigned long __VERIFIER_nondet_ulong(void);
__u64 eventfd_signal(struct eventfd_ctx *arg0, __u64 arg1) {
  return __VERIFIER_nondet_ulong();
}
struct file *fget(unsigned int arg0) {
  return ldv_malloc(sizeof(struct file));
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void fput(struct file *arg0) {
  return;
}
struct mm_struct *get_task_mm(struct task_struct *arg0) {
  return ldv_malloc(sizeof(struct mm_struct));
}
int __VERIFIER_nondet_int(void);
int get_user_pages_fast(unsigned long arg0, int arg1, int arg2, struct page **arg3) {
  return __VERIFIER_nondet_int();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
struct socket *macvtap_get_socket(struct file *arg0) {
  return ldv_malloc(sizeof(struct socket));
}
int __VERIFIER_nondet_int(void);
int memcpy_fromiovec(unsigned char *arg0, struct iovec *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int memcpy_toiovecend(const struct iovec *arg0, unsigned char *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void mmput(struct mm_struct *arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
void put_page(struct page *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rcu_is_cpu_idle() {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int set_page_dirty_lock(struct page *arg0) {
  return __VERIFIER_nondet_int();
}
struct socket *sockfd_lookup(int arg0, int *arg1) {
  return ldv_malloc(sizeof(struct socket));
}
void synchronize_sched() {
  return;
}
struct socket *tun_get_socket(struct file *arg0) {
  return ldv_malloc(sizeof(struct socket));
}
void unuse_mm(struct mm_struct *arg0) {
  return;
}
void use_mm(struct mm_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
