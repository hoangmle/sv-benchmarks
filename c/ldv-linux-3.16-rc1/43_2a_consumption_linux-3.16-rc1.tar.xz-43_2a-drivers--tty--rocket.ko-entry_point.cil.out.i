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
typedef __u32 __le32;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
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
struct tss_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
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
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
   unsigned long stack[64U] ;
};
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
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
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
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
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct nsproxy;
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
struct __anonstruct_ldv_14012_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14016_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14017_135 {
   struct __anonstruct_ldv_14012_136 ldv_14012 ;
   struct __anonstruct_ldv_14016_137 ldv_14016 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14017_135 ldv_14017 ;
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
union __anonunion_ldv_14126_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14132_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14142_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14144_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14142_144 ldv_14142 ;
   int units ;
};
struct __anonstruct_ldv_14146_142 {
   union __anonunion_ldv_14144_143 ldv_14144 ;
   atomic_t _count ;
};
union __anonunion_ldv_14148_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14146_142 ldv_14146 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14149_139 {
   union __anonunion_ldv_14132_140 ldv_14132 ;
   union __anonunion_ldv_14148_141 ldv_14148 ;
};
struct __anonstruct_ldv_14156_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14161_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14156_146 ldv_14156 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14167_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14126_138 ldv_14126 ;
   struct __anonstruct_ldv_14149_139 ldv_14149 ;
   union __anonunion_ldv_14161_145 ldv_14161 ;
   union __anonunion_ldv_14167_147 ldv_14167 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
union __anonunion_ldv_14530_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14530_153 ldv_14530 ;
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
union __anonunion_ldv_14674_154 {
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
   union __anonunion_ldv_14674_154 ldv_14674 ;
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
union __anonunion_ldv_15349_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15349_155 ldv_15349 ;
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
struct exception_table_entry;
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
struct mem_cgroup;
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
struct __anonstruct_ldv_15969_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15975_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15976_156 {
   struct __anonstruct_ldv_15969_157 ldv_15969 ;
   struct __anonstruct_ldv_15975_158 ldv_15975 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15976_156 ldv_15976 ;
};
struct tty_struct;
struct __anonstruct_sigset_t_159 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_159 sigset_t;
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
struct __anonstruct__kill_161 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_162 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_163 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_165 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_166 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_167 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_160 {
   int _pad[28U] ;
   struct __anonstruct__kill_161 _kill ;
   struct __anonstruct__timer_162 _timer ;
   struct __anonstruct__rt_163 _rt ;
   struct __anonstruct__sigchld_164 _sigchld ;
   struct __anonstruct__sigfault_165 _sigfault ;
   struct __anonstruct__sigpoll_166 _sigpoll ;
   struct __anonstruct__sigsys_167 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_160 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
union __anonunion_ldv_20390_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_20398_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_20411_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_20412_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_20411_174 ldv_20411 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_20427_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_20390_171 ldv_20390 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_20398_172 ldv_20398 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_20412_173 ldv_20412 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_20427_176 ldv_20427 ;
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
struct pipe_inode_info;
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
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_23876_182 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_23877_181 {
   struct __anonstruct_ldv_23876_182 ldv_23876 ;
};
struct lockref {
   union __anonunion_ldv_23877_181 ldv_23877 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_23901_184 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23903_183 {
   struct __anonstruct_ldv_23901_184 ldv_23901 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23903_183 ldv_23903 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_185 {
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
   union __anonunion_d_u_185 d_u ;
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
struct __anonstruct_ldv_24264_187 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_24266_186 {
   struct __anonstruct_ldv_24264_187 ldv_24264 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_24266_186 ldv_24266 ;
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
struct iovec;
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
struct __anonstruct_kprojid_t_188 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_188 kprojid_t;
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
union __anonunion_ldv_24795_189 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24795_189 ldv_24795 ;
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
union __anonunion_ldv_25209_192 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25229_193 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25246_194 {
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
   union __anonunion_ldv_25209_192 ldv_25209 ;
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
   union __anonunion_ldv_25229_193 ldv_25229 ;
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
   union __anonunion_ldv_25246_194 ldv_25246 ;
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
union __anonunion_f_u_195 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_195 f_u ;
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
struct net;
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
struct __anonstruct_afs_197 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_196 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_197 afs ;
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
   union __anonunion_fl_u_196 fl_u ;
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
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion_ldv_27675_198 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_27675_198 ldv_27675 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct class;
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
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
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct bsd_acct_struct;
struct pid_namespace {
   struct kref kref ;
   struct pidmap pidmap[128U] ;
   struct callback_head rcu ;
   int last_pid ;
   unsigned int nr_hashed ;
   struct task_struct *child_reaper ;
   struct kmem_cache *pid_cachep ;
   unsigned int level ;
   struct pid_namespace *parent ;
   struct vfsmount *proc_mnt ;
   struct dentry *proc_self ;
   struct bsd_acct_struct *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   unsigned int proc_inum ;
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
union __anonunion_ldv_30101_202 {
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
   union __anonunion_ldv_30101_202 ldv_30101 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
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
   struct msi_chip *msi ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
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
typedef unsigned char Byte_t;
typedef unsigned int ByteIO_t;
typedef unsigned int Word_t;
typedef unsigned int WordIO_t;
typedef unsigned int DWordIO_t;
struct __anonstruct_CONTROLLER_T_203 {
   int CtlID ;
   int CtlNum ;
   int BusType ;
   int boardType ;
   int isUPCI ;
   WordIO_t PCIIO ;
   WordIO_t PCIIO2 ;
   ByteIO_t MBaseIO ;
   ByteIO_t MReg1IO ;
   ByteIO_t MReg2IO ;
   ByteIO_t MReg3IO ;
   Byte_t MReg2 ;
   Byte_t MReg3 ;
   int NumAiop ;
   int AltChanRingIndicator ;
   ByteIO_t UPCIRingInd ;
   WordIO_t AiopIO[4U] ;
   ByteIO_t AiopIntChanIO[4U] ;
   int AiopID[4U] ;
   int AiopNumChan[4U] ;
   Word_t *AiopIntrBits ;
};
typedef struct __anonstruct_CONTROLLER_T_203 CONTROLLER_T;
typedef CONTROLLER_T CONTROLLER_t;
struct __anonstruct_CHANNEL_T_204 {
   CONTROLLER_T *CtlP ;
   int AiopNum ;
   int ChanID ;
   int ChanNum ;
   int rtsToggle ;
   ByteIO_t Cmd ;
   ByteIO_t IntChan ;
   ByteIO_t IntMask ;
   DWordIO_t IndexAddr ;
   WordIO_t IndexData ;
   WordIO_t TxRxData ;
   WordIO_t ChanStat ;
   WordIO_t TxRxCount ;
   ByteIO_t IntID ;
   Word_t TxFIFO ;
   Word_t TxFIFOPtrs ;
   Word_t RxFIFO ;
   Word_t RxFIFOPtrs ;
   Word_t TxPrioCnt ;
   Word_t TxPrioPtr ;
   Word_t TxPrioBuf ;
   Byte_t R[52U] ;
   Byte_t BaudDiv[4U] ;
   Byte_t TxControl[4U] ;
   Byte_t RxControl[4U] ;
   Byte_t TxEnables[4U] ;
   Byte_t TxCompare[4U] ;
   Byte_t TxReplace1[4U] ;
   Byte_t TxReplace2[4U] ;
};
typedef struct __anonstruct_CHANNEL_T_204 CHANNEL_T;
typedef CHANNEL_T CHANNEL_t;
struct r_port {
   int magic ;
   struct tty_port port ;
   int line ;
   int flags ;
   unsigned char board : 3 ;
   unsigned char aiop : 2 ;
   unsigned char chan : 3 ;
   CONTROLLER_t *ctlp ;
   CHANNEL_t channel ;
   int intmask ;
   int xmit_fifo_room ;
   unsigned char *xmit_buf ;
   int xmit_head ;
   int xmit_tail ;
   int xmit_cnt ;
   int cd_status ;
   int ignore_status_mask ;
   int read_status_mask ;
   int cps ;
   struct completion close_wait ;
   spinlock_t slock ;
   struct mutex write_mtx ;
};
struct __anonstruct_rocketModel_t_205 {
   unsigned long model ;
   char modelString[80U] ;
   unsigned long numPorts ;
   int loadrm2 ;
   int startingPortNumber ;
};
typedef struct __anonstruct_rocketModel_t_205 rocketModel_t;
struct rocket_config {
   int line ;
   int flags ;
   int closing_wait ;
   int close_delay ;
   int port ;
   int reserved[32U] ;
};
struct rocket_ports {
   int tty_major ;
   int callout_major ;
   rocketModel_t rocketModel[8U] ;
};
struct rocket_version {
   char rocket_version[32U] ;
   char rocket_date[32U] ;
   char reserved[64U] ;
};
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14132_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14126_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_cpu_ops pv_cpu_ops ;
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
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
__inline static void slow_down_io(void)
{
  {
  (*(pv_cpu_ops.io_delay))();
  return;
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
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
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
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
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_irq_4(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_7(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern int wait_for_completion_interruptible(struct completion * ) ;
extern void complete_all(struct completion * ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern struct tvec_base boot_tvec_bases ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
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
__inline static void outb_p(unsigned char value , int port )
{
  {
  outb((int )value, port);
  slow_down_io();
  return;
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
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
__inline static unsigned short inw(int port )
{
  unsigned short value ;
  {
  __asm__ volatile ("inw %w1, %w0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outw_p(unsigned short value , int port )
{
  {
  outw((int )value, port);
  slow_down_io();
  return;
}
}
__inline static unsigned short inw_p(int port )
{
  unsigned short value ;
  unsigned short tmp ;
  {
  tmp = inw(port);
  value = tmp;
  slow_down_io();
  return (value);
}
}
__inline static void outsw(int port , void const *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; outsw": "+S" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void insw(int port , void *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; insw": "+D" (addr), "+c" (count): "d" (port));
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
__inline static void outl_p(unsigned int value , int port )
{
  {
  outl(value, port);
  slow_down_io();
  return;
}
}
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
unsigned long ldv___get_free_pages_20(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern char __VERIFIER_nondet_char(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned char __VERIFIER_nondet_uchar(void) ;
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
void *rocket_port_ops_group1 ;
int ref_cnt ;
struct file *rocket_ops_group0 ;
int ldv_state_variable_1 ;
struct tty_struct *rocket_ops_group1 ;
int ldv_state_variable_0 ;
void ldv_initialize_tty_operations_2(void) ;
void ldv_tty_port_operations_1(void) ;
extern bool capable(int ) ;
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
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
  }
  return (n);
}
}
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  bool tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if ((int )tmp___0) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
__inline static unsigned char *char_buf_ptr(struct tty_buffer *b , int ofs )
{
  {
  return ((unsigned char *)(& b->data) + (unsigned long )ofs);
}
}
__inline static char *flag_buf_ptr(struct tty_buffer *b , int ofs )
{
  unsigned char *tmp ;
  {
  tmp = char_buf_ptr(b, ofs);
  return ((char *)tmp + (unsigned long )b->size);
}
}
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
extern speed_t tty_termios_baud_rate(struct ktermios * ) ;
extern void tty_encode_baud_rate(struct tty_struct * , speed_t , speed_t ) ;
__inline static speed_t tty_get_baud_rate(struct tty_struct *tty )
{
  speed_t tmp ;
  {
  tmp = tty_termios_baud_rate(& tty->termios);
  return (tmp);
}
}
extern void tty_wakeup(struct tty_struct * ) ;
extern void tty_ldisc_flush(struct tty_struct * ) ;
extern void tty_port_init(struct tty_port * ) ;
extern struct device *tty_port_register_device(struct tty_port * , struct tty_driver * ,
                                               unsigned int , struct device * ) ;
extern void tty_port_destroy(struct tty_port * ) ;
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
extern void tty_port_tty_set(struct tty_port * , struct tty_struct * ) ;
extern void tty_port_hangup(struct tty_port * ) ;
extern void tty_port_tty_hangup(struct tty_port * , bool ) ;
extern int tty_port_block_til_ready(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_port_close_start(struct tty_port * , struct tty_struct * , struct file * ) ;
extern int tty_insert_flip_string_flags(struct tty_port * , unsigned char const * ,
                                        char const * , size_t ) ;
extern int tty_prepare_flip_string(struct tty_port * , unsigned char ** , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_char(struct tty_port *port , unsigned char ch ,
                                         char flag )
{
  struct tty_buffer *tb ;
  int change ;
  char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  tb = port->buf.tail;
  change = tb->flags & 1 && (int )((signed char )flag) != 0;
  if (change == 0 && tb->used < tb->size) {
    if ((tb->flags & 1) == 0) {
      tmp = flag_buf_ptr(tb, tb->used);
      *tmp = flag;
    } else {
    }
    tmp___0 = tb->used;
    tb->used = tb->used + 1;
    tmp___1 = char_buf_ptr(tb, tmp___0);
    *tmp___1 = ch;
    return (1);
  } else {
  }
  tmp___2 = tty_insert_flip_string_flags(port, (unsigned char const *)(& ch), (char const *)(& flag),
                                         1UL);
  return (tmp___2);
}
}
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern struct pci_device_id const *pci_match_id(struct pci_device_id const * ,
                                                  struct pci_dev * ) ;
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static void sOutB(unsigned short port , unsigned char value )
{
  {
  outb_p((int )value, (int )port);
  return;
}
}
__inline static void sOutW(unsigned short port , unsigned short value )
{
  {
  outw_p((int )value, (int )port);
  return;
}
}
__inline static void out32(unsigned short port , Byte_t *p )
{
  u32 value ;
  u32 tmp ;
  {
  tmp = get_unaligned_le32((void const *)p);
  value = tmp;
  outl_p(value, (int )port);
  return;
}
}
__inline static unsigned char sInB(unsigned short port )
{
  unsigned char tmp ;
  {
  tmp = inb_p((int )port);
  return (tmp);
}
}
__inline static unsigned short sInW(unsigned short port )
{
  unsigned short tmp ;
  {
  tmp = inw_p((int )port);
  return (tmp);
}
}
static void rp_do_poll(unsigned long dummy ) ;
static struct tty_driver *rocket_driver ;
static struct rocket_version driver_version = {{'2', '.', '0', '9', '\000'}, {'1', '2', '-', 'J', 'u', 'n', 'e', '-', '2', '0',
                                   '0', '3', '\000'}, {(char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0, (char)0, (char)0,
                                                       (char)0}};
static struct r_port *rp_table[256U] ;
static unsigned int xmit_flags[8U] ;
static atomic_t rp_num_ports_open ;
static struct timer_list rocket_timer =
     {{0, (struct list_head *)1953723489}, 0UL, & boot_tvec_bases, & rp_do_poll, 0UL,
    -1, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
               (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0},
    {(struct lock_class_key *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/606/dscv_tempdir/dscv/ri/43_2a/drivers/tty/rocket.o.c.prepared:145",
     {0, 0}, "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/606/dscv_tempdir/dscv/ri/43_2a/drivers/tty/rocket.o.c.prepared:145",
     0, 0UL}};
static unsigned long board1 ;
static unsigned long board2 ;
static unsigned long board3 ;
static unsigned long board4 ;
static unsigned long controller ;
static bool support_low_speed ;
static unsigned long modem1 ;
static unsigned long modem2 ;
static unsigned long modem3 ;
static unsigned long modem4 ;
static unsigned long pc104_1[8U] ;
static unsigned long pc104_2[8U] ;
static unsigned long pc104_3[8U] ;
static unsigned long pc104_4[8U] ;
static unsigned long *pc104[4U] = { (unsigned long *)(& pc104_1), (unsigned long *)(& pc104_2), (unsigned long *)(& pc104_3), (unsigned long *)(& pc104_4)};
static int rp_baud_base[8U] ;
static unsigned long rcktpt_io_addr[8U] ;
static int rcktpt_type[8U] ;
static int is_PCI[8U] ;
static rocketModel_t rocketModel[8U] ;
static int max_board ;
static struct tty_port_operations const rocket_port_ops ;
static Word_t aiop_intr_bits[4U] = { 1U, 2U, 4U, 8U};
static Word_t upci_aiop_intr_bits[4U] = { 4U, 32U, 256U, 2048U};
static Byte_t RData[72U] =
  { 0U, 9U, 246U, 130U,
        2U, 9U, 134U, 251U,
        4U, 9U, 0U, 10U,
        6U, 9U, 1U, 10U,
        8U, 9U, 138U, 19U,
        10U, 9U, 197U, 17U,
        12U, 9U, 134U, 133U,
        14U, 9U, 32U, 10U,
        16U, 9U, 33U, 10U,
        18U, 9U, 65U, 255U,
        20U, 9U, 130U, 0U,
        22U, 9U, 130U, 123U,
        24U, 9U, 138U, 125U,
        26U, 9U, 136U, 129U,
        28U, 9U, 134U, 122U,
        30U, 9U, 132U, 129U,
        32U, 9U, 130U, 124U,
        34U, 9U, 10U, 10U};
static Byte_t RRegData[52U] =
  { 0U, 9U, 246U, 130U,
        8U, 9U, 138U, 19U,
        10U, 9U, 197U, 17U,
        12U, 9U, 134U, 133U,
        18U, 9U, 65U, 255U,
        20U, 9U, 130U, 0U,
        22U, 9U, 130U, 123U,
        24U, 9U, 138U, 125U,
        26U, 9U, 136U, 129U,
        28U, 9U, 134U, 122U,
        30U, 9U, 132U, 129U,
        32U, 9U, 130U, 124U,
        34U, 9U, 10U, 10U};
static CONTROLLER_T sController[8U] = { {-1, -1, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0U, {0U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U}, {-1, -1, -1, -1}, {0, 0, 0, 0}, 0},
        {-1, -1, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0U, {0U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U}, {-1, -1, -1, -1}, {0, 0, 0, 0}, 0},
        {-1, -1, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0U, {0U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U}, {-1, -1, -1, -1}, {0, 0, 0, 0}, 0},
        {-1, -1, 0, 0, 0, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0U, {0U, 0U, 0U, 0U},
      {0U, 0U, 0U, 0U}, {-1, -1, -1, -1}, {0, 0, 0, 0}, 0}};
static Byte_t sBitMapClrTbl[8U] =
  { 254U, 253U, 251U, 247U,
        239U, 223U, 191U, 127U};
static Byte_t sBitMapSetTbl[8U] =
  { 1U, 2U, 4U, 8U,
        16U, 32U, 64U, 128U};
static int sClockPrescale = 20;
static unsigned char lineNumbers[256U] ;
static unsigned long nextLineNumber ;
static int init_ISA(int i ) ;
static void rp_wait_until_sent(struct tty_struct *tty , int timeout ) ;
static void rp_flush_buffer(struct tty_struct *tty ) ;
static unsigned char GetLineNumber(int ctrl , int aiop , int ch ) ;
static unsigned char SetLineNumber(int ctrl , int aiop , int ch ) ;
static void rp_start(struct tty_struct *tty ) ;
static int sInitChan(CONTROLLER_T *CtlP , CHANNEL_T *ChP , int AiopNum , int ChanNum ) ;
static void sSetInterfaceMode(CHANNEL_T *ChP , Byte_t mode ) ;
static void sFlushRxFIFO(CHANNEL_T *ChP ) ;
static void sFlushTxFIFO(CHANNEL_T *ChP ) ;
static void sEnInterrupts(CHANNEL_T *ChP , Word_t Flags ) ;
static void sDisInterrupts(CHANNEL_T *ChP , Word_t Flags ) ;
static void sModemReset(CONTROLLER_T *CtlP , int chan , int on ) ;
static void sPCIModemReset(CONTROLLER_T *CtlP , int chan , int on ) ;
static int sWriteTxPrioByte(CHANNEL_T *ChP , Byte_t Data ) ;
static int sInitController(CONTROLLER_T *CtlP , int CtlNum , ByteIO_t MudbacIO , ByteIO_t *AiopIOList ,
                           int AiopIOListSize , int IRQNum , Byte_t Frequency , int PeriodicOnly ) ;
static int sReadAiopID(ByteIO_t io ) ;
static int sReadAiopNumChan(WordIO_t io ) ;
static int rp_init(void) ;
static void rp_cleanup_module(void) ;
__inline static int rocket_paranoia_check(struct r_port *info , char const *routine )
{
  {
  if ((unsigned long )info == (unsigned long )((struct r_port *)0)) {
    return (1);
  } else {
  }
  if (info->magic != 5394433) {
    printk("\fWarning: bad magic number for rocketport struct in %s\n", routine);
    return (1);
  } else {
  }
  return (0);
}
}
static void rp_do_receive(struct r_port *info , CHANNEL_t *cp , unsigned int ChanStatus )
{
  unsigned int CharNStat ;
  int ToRecv ;
  int wRecv ;
  int space ;
  unsigned char *cbuf ;
  unsigned short tmp ;
  char flag ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = sInW((int )((unsigned short )cp->TxRxCount));
  ToRecv = (int )tmp;
  if (ToRecv == 0) {
    return;
  } else {
  }
  if ((ChanStatus & 9984U) != 0U) {
    if ((ChanStatus & 32768U) == 0U) {
      ChanStatus = ChanStatus | 32768U;
      sOutW((int )((unsigned short )cp->ChanStat), 32768);
    } else {
    }
  } else {
  }
  if ((ChanStatus & 32768U) != 0U) {
    goto ldv_32923;
    ldv_32924:
    tmp___0 = sInW((int )((unsigned short )cp->TxRxData));
    CharNStat = (unsigned int )tmp___0;
    if ((CharNStat & 2048U) != 0U) {
      CharNStat = CharNStat & 4294966015U;
    } else {
    }
    if (((unsigned int )info->ignore_status_mask & CharNStat) != 0U) {
      ToRecv = ToRecv - 1;
      goto ldv_32923;
    } else {
    }
    CharNStat = (unsigned int )info->read_status_mask & CharNStat;
    if ((CharNStat & 2048U) != 0U) {
      flag = 1;
    } else
    if ((CharNStat & 256U) != 0U) {
      flag = 3;
    } else
    if ((CharNStat & 1024U) != 0U) {
      flag = 2;
    } else
    if ((CharNStat & 512U) != 0U) {
      flag = 4;
    } else {
      flag = 0;
    }
    tty_insert_flip_char(& info->port, (int )((unsigned char )CharNStat), (int )flag);
    ToRecv = ToRecv - 1;
    ldv_32923: ;
    if (ToRecv != 0) {
      goto ldv_32924;
    } else {
    }
    tmp___1 = sInW((int )((unsigned short )cp->TxRxCount));
    if ((unsigned int )tmp___1 == 0U) {
      sOutW((int )((unsigned short )cp->ChanStat), 0);
    } else {
    }
  } else {
    space = tty_prepare_flip_string(& info->port, & cbuf, (size_t )ToRecv);
    if (space < ToRecv) {
      if (space <= 0) {
        return;
      } else {
      }
      ToRecv = space;
    } else {
    }
    wRecv = ToRecv >> 1;
    if (wRecv != 0) {
      if (wRecv != 0) {
        insw((int )cp->TxRxData, (void *)cbuf, (unsigned long )wRecv);
      } else {
      }
    } else {
    }
    if (ToRecv & 1) {
      *(cbuf + ((unsigned long )ToRecv + 0xffffffffffffffffUL)) = sInB((int )((unsigned short )cp->TxRxData));
    } else {
    }
  }
  tty_flip_buffer_push(& info->port);
  return;
}
}
static void rp_do_transmit(struct r_port *info )
{
  int c ;
  CHANNEL_t *cp ;
  struct tty_struct *tty ;
  unsigned long flags ;
  unsigned char tmp ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  cp = & info->channel;
  if ((unsigned long )info == (unsigned long )((struct r_port *)0)) {
    return;
  } else {
  }
  tty = tty_port_tty_get(& info->port);
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    printk("\frp: WARNING %s called with tty==NULL\n", "rp_do_transmit");
    clear_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
    return;
  } else {
  }
  ldv_spin_lock();
  tmp = sInB((int )((unsigned short )cp->TxRxCount));
  info->xmit_fifo_room = 255 - (int )tmp;
  ldv_32941: ;
  if ((unsigned int )*((unsigned char *)tty + 1316UL) != 0U) {
    goto ldv_32934;
  } else {
  }
  _min1 = info->xmit_fifo_room;
  _min2 = info->xmit_cnt;
  c = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = c;
  _min2___0 = 4096 - info->xmit_tail;
  c = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  if (c <= 0 || info->xmit_fifo_room <= 0) {
    goto ldv_32934;
  } else {
  }
  if ((unsigned int )c - 4294967295U > 2U) {
    outsw((int )cp->TxRxData, (void const *)info->xmit_buf + (unsigned long )info->xmit_tail,
          (unsigned long )(c / 2));
  } else {
  }
  if (c & 1) {
    sOutB((int )((unsigned short )cp->TxRxData), (int )*(info->xmit_buf + ((unsigned long )(info->xmit_tail + c) + 0xffffffffffffffffUL)));
  } else {
  }
  info->xmit_tail = info->xmit_tail + c;
  info->xmit_tail = info->xmit_tail & 4095;
  info->xmit_cnt = info->xmit_cnt - c;
  info->xmit_fifo_room = info->xmit_fifo_room - c;
  goto ldv_32941;
  ldv_32934: ;
  if (info->xmit_cnt == 0) {
    clear_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  } else {
  }
  if (info->xmit_cnt <= 255) {
    tty_wakeup(tty);
  } else {
  }
  spin_unlock_irqrestore(& info->slock, flags);
  tty_kref_put(tty);
  return;
}
}
static void rp_handle_port(struct r_port *info )
{
  CHANNEL_t *cp ;
  unsigned int IntMask ;
  unsigned int ChanStatus ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  if ((unsigned long )info == (unsigned long )((struct r_port *)0)) {
    return;
  } else {
  }
  if ((info->port.flags & 2147483648UL) == 0UL) {
    printk("\frp: WARNING: rp_handle_port called with info->flags & NOT_INIT\n");
    return;
  } else {
  }
  cp = & info->channel;
  tmp = sInB((int )((unsigned short )cp->IntID));
  IntMask = (unsigned int )(((int )tmp & 63) & info->intmask);
  tmp___0 = sInW((int )((unsigned short )cp->ChanStat));
  ChanStatus = (unsigned int )tmp___0;
  if ((IntMask & 32U) != 0U) {
    rp_do_receive(info, cp, ChanStatus);
  } else {
  }
  if ((IntMask & 4U) != 0U) {
    if ((ChanStatus & 8U) == 0U && info->cd_status != 0) {
      tty_port_tty_hangup(& info->port, 0);
    } else {
    }
    info->cd_status = (ChanStatus & 8U) != 0U;
    __wake_up(& info->port.open_wait, 1U, 1, (void *)0);
  } else {
  }
  return;
}
}
static void rp_do_poll(unsigned long dummy )
{
  CONTROLLER_t *ctlp ;
  int ctrl ;
  int aiop ;
  int ch ;
  int line ;
  unsigned int xmitmask ;
  unsigned int i ;
  unsigned int CtlMask ;
  unsigned char AiopMask ;
  Word_t bit ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  int tmp___4 ;
  {
  ctrl = 0;
  goto ldv_32972;
  ldv_32971: ;
  if (rcktpt_io_addr[ctrl] == 0UL) {
    goto ldv_32961;
  } else {
  }
  ctlp = (CONTROLLER_t *)(& sController) + (unsigned long )ctrl;
  if (ctlp->BusType == 1) {
    if (ctlp->isUPCI != 0) {
      tmp = sInW((int )((unsigned short )ctlp->PCIIO2));
      CtlMask = (unsigned int )tmp & 2340U;
    } else {
      tmp___0 = sInW((int )((unsigned short )ctlp->PCIIO));
      CtlMask = (unsigned int )((int )tmp___0 >> 8) & 15U;
    }
  } else {
    tmp___1 = sInB((int )((unsigned short )ctlp->MReg1IO));
    CtlMask = (unsigned int )tmp___1 & 15U;
  }
  aiop = 0;
  goto ldv_32966;
  ldv_32965:
  bit = *(ctlp->AiopIntrBits + (unsigned long )aiop);
  if ((CtlMask & bit) != 0U) {
    CtlMask = ~ bit & CtlMask;
    AiopMask = sInB((int )((unsigned short )ctlp->AiopIntChanIO[aiop]));
    ch = 0;
    goto ldv_32963;
    ldv_32962: ;
    if ((int )AiopMask & 1) {
      tmp___2 = GetLineNumber(ctrl, aiop, ch);
      line = (int )tmp___2;
      rp_handle_port(rp_table[line]);
    } else {
    }
    AiopMask = (int )AiopMask >> 1;
    ch = ch + 1;
    ldv_32963: ;
    if ((unsigned int )AiopMask != 0U) {
      goto ldv_32962;
    } else {
    }
  } else {
  }
  aiop = aiop + 1;
  ldv_32966: ;
  if (CtlMask != 0U) {
    goto ldv_32965;
  } else {
  }
  xmitmask = xmit_flags[ctrl];
  if (xmitmask != 0U) {
    i = 0U;
    goto ldv_32969;
    ldv_32968: ;
    if (((unsigned int )(1 << (int )i) & xmitmask) != 0U) {
      aiop = (int )((i & 24U) >> 3);
      ch = (int )i & 7;
      tmp___3 = GetLineNumber(ctrl, aiop, ch);
      line = (int )tmp___3;
      rp_do_transmit(rp_table[line]);
    } else {
    }
    i = i + 1U;
    ldv_32969: ;
    if ((unsigned long )i < rocketModel[ctrl].numPorts) {
      goto ldv_32968;
    } else {
    }
  } else {
  }
  ldv_32961:
  ctrl = ctrl + 1;
  ldv_32972: ;
  if (ctrl < max_board) {
    goto ldv_32971;
  } else {
  }
  tmp___4 = atomic_read((atomic_t const *)(& rp_num_ports_open));
  if (tmp___4 != 0) {
    mod_timer(& rocket_timer, (unsigned long )jiffies + 2UL);
  } else {
  }
  return;
}
}
static void init_r_port(int board , int aiop , int chan , struct pci_dev *pci_dev )
{
  unsigned int rocketMode ;
  struct r_port *info ;
  int line ;
  CONTROLLER_T *ctlp ;
  unsigned char tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  tmp = SetLineNumber(board, aiop, chan);
  line = (int )tmp;
  ctlp = (CONTROLLER_T *)(& sController) + (unsigned long )board;
  tmp___0 = kzalloc(1648UL, 208U);
  info = (struct r_port *)tmp___0;
  if ((unsigned long )info == (unsigned long )((struct r_port *)0)) {
    printk("\vCouldn\'t allocate info struct for line #%d\n", line);
    return;
  } else {
  }
  info->magic = 5394433;
  info->line = line;
  info->ctlp = ctlp;
  info->board = (unsigned char )board;
  info->aiop = (unsigned char )aiop;
  info->chan = (unsigned char )chan;
  tty_port_init(& info->port);
  info->port.ops = & rocket_port_ops;
  init_completion(& info->close_wait);
  info->flags = info->flags & -12289;
  switch (*(pc104[board] + (unsigned long )line)) {
  case 422UL:
  info->flags = info->flags | 8192;
  goto ldv_32985;
  case 485UL:
  info->flags = info->flags | 4096;
  goto ldv_32985;
  case 232UL: ;
  default:
  info->flags = info->flags;
  goto ldv_32985;
  }
  ldv_32985:
  info->intmask = 63;
  tmp___1 = sInitChan(ctlp, & info->channel, aiop, chan);
  if (tmp___1 == 0) {
    printk("\vRocketPort sInitChan(%d, %d, %d) failed!\n", board, aiop, chan);
    tty_port_destroy(& info->port);
    kfree((void const *)info);
    return;
  } else {
  }
  rocketMode = (unsigned int )info->flags & 12288U;
  if ((info->flags & 1024) != 0 || rocketMode == 4096U) {
    info->channel.RxControl[2] = (unsigned int )info->channel.RxControl[2] & 191U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.RxControl));
    info->channel.TxControl[2] = (Byte_t )((unsigned int )info->channel.TxControl[2] | 64U);
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 253U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    info->channel.rtsToggle = 1;
  } else {
    info->channel.TxControl[2] = (unsigned int )info->channel.TxControl[2] & 191U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    info->channel.rtsToggle = 0;
  }
  if (ctlp->boardType == 4) {
    switch (rocketMode) {
    case 4096U:
    sSetInterfaceMode(& info->channel, 16);
    goto ldv_32990;
    case 8192U:
    sSetInterfaceMode(& info->channel, 8);
    goto ldv_32990;
    case 0U: ;
    default: ;
    if ((info->flags & 1024) != 0) {
      sSetInterfaceMode(& info->channel, 24);
    } else {
      sSetInterfaceMode(& info->channel, 0);
    }
    goto ldv_32990;
    }
    ldv_32990: ;
  } else {
  }
  spinlock_check(& info->slock);
  __raw_spin_lock_init(& info->slock.ldv_6347.rlock, "&(&info->slock)->rlock", & __key);
  __mutex_init(& info->write_mtx, "&info->write_mtx", & __key___0);
  rp_table[line] = info;
  tty_port_register_device(& info->port, rocket_driver, (unsigned int )line, (unsigned long )pci_dev != (unsigned long )((struct pci_dev *)0) ? & pci_dev->dev : (struct device *)0);
  return;
}
}
static void configure_r_port(struct tty_struct *tty , struct r_port *info , struct ktermios *old_termios )
{
  unsigned int cflag ;
  unsigned long flags ;
  unsigned int rocketMode ;
  int bits ;
  int baud ;
  int divisor ;
  CHANNEL_t *cp ;
  struct ktermios *t ;
  speed_t tmp ;
  speed_t tmp___0 ;
  unsigned short tmp___1 ;
  {
  t = & tty->termios;
  cp = & info->channel;
  cflag = t->c_cflag;
  if ((cflag & 48U) == 48U) {
    cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 1U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    bits = 10;
  } else {
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 254U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    bits = 9;
  }
  if ((cflag & 64U) != 0U) {
    cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 8U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    bits = bits + 1;
  } else {
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 247U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  }
  if ((cflag & 256U) != 0U) {
    cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 4U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    bits = bits + 1;
    if ((cflag & 512U) != 0U) {
      cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 253U;
      out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    } else {
      cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 2U);
      out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    }
  } else {
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 251U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  }
  tmp = tty_get_baud_rate(tty);
  baud = (int )tmp;
  if (baud == 0) {
    baud = 9600;
  } else {
  }
  divisor = (rp_baud_base[(int )info->board] + (baud >> 1)) / baud + -1;
  if ((divisor > 8191 || divisor < 0) && (unsigned long )old_termios != (unsigned long )((struct ktermios *)0)) {
    tmp___0 = tty_termios_baud_rate(old_termios);
    baud = (int )tmp___0;
    if (baud == 0) {
      baud = 9600;
    } else {
    }
    divisor = rp_baud_base[(int )info->board] / baud + -1;
  } else {
  }
  if (divisor > 8191 || divisor < 0) {
    baud = 9600;
    divisor = rp_baud_base[(int )info->board] / baud + -1;
  } else {
  }
  info->cps = baud / bits;
  cp->BaudDiv[2] = (unsigned char )divisor;
  cp->BaudDiv[3] = (unsigned char )(divisor >> 8);
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->BaudDiv));
  tty_encode_baud_rate(tty, (speed_t )baud, (speed_t )baud);
  if ((int )cflag < 0) {
    info->intmask = info->intmask | 2;
    cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 128U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  } else {
    info->intmask = info->intmask & -3;
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 127U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  }
  if ((cflag & 2048U) != 0U) {
    info->intmask = info->intmask & -5;
  } else {
    ldv_spin_lock();
    tmp___1 = sInW((int )((unsigned short )cp->ChanStat));
    if (((int )tmp___1 & 8) != 0) {
      info->cd_status = 1;
    } else {
      info->cd_status = 0;
    }
    info->intmask = info->intmask | 4;
    spin_unlock_irqrestore(& info->slock, flags);
  }
  info->read_status_mask = 767;
  if ((tty->termios.c_iflag & 16U) != 0U) {
    info->read_status_mask = info->read_status_mask | 1280;
  } else {
  }
  if ((tty->termios.c_iflag & 2U) != 0U || (tty->termios.c_iflag & 8U) != 0U) {
    info->read_status_mask = info->read_status_mask | 2048;
  } else {
  }
  info->ignore_status_mask = 0;
  if ((tty->termios.c_iflag & 4U) != 0U) {
    info->ignore_status_mask = info->ignore_status_mask | 1280;
  } else {
  }
  if ((int )tty->termios.c_iflag & 1) {
    info->ignore_status_mask = info->ignore_status_mask | 2048;
    if ((tty->termios.c_iflag & 4U) != 0U) {
      info->ignore_status_mask = info->ignore_status_mask | 512;
    } else {
    }
  } else {
  }
  rocketMode = (unsigned int )info->flags & 12288U;
  if ((info->flags & 1024) != 0 || rocketMode == 4096U) {
    cp->RxControl[2] = (unsigned int )cp->RxControl[2] & 191U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->RxControl));
    cp->TxControl[2] = (Byte_t )((unsigned int )cp->TxControl[2] | 64U);
    cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 253U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    cp->rtsToggle = 1;
  } else {
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 191U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    cp->rtsToggle = 0;
  }
  if (info->channel.rtsToggle != 0) {
    goto ldv_33009;
  } else {
  }
  info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 2U);
  out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  ldv_33009: ;
  if ((cp->CtlP)->boardType == 4) {
    switch (rocketMode) {
    case 4096U:
    sSetInterfaceMode(cp, 16);
    goto ldv_33011;
    case 8192U:
    sSetInterfaceMode(cp, 8);
    goto ldv_33011;
    case 0U: ;
    default: ;
    if ((info->flags & 1024) != 0) {
      sSetInterfaceMode(cp, 24);
    } else {
      sSetInterfaceMode(cp, 0);
    }
    goto ldv_33011;
    }
    ldv_33011: ;
  } else {
  }
  return;
}
}
static int carrier_raised(struct tty_port *port )
{
  struct r_port *info ;
  struct tty_port const *__mptr ;
  unsigned char tmp ;
  {
  __mptr = (struct tty_port const *)port;
  info = (struct r_port *)__mptr + 0xfffffffffffffff8UL;
  tmp = sInB((int )((unsigned short )info->channel.ChanStat));
  return (((int )tmp & 8) != 0);
}
}
static void dtr_rts(struct tty_port *port , int on )
{
  struct r_port *info ;
  struct tty_port const *__mptr ;
  {
  __mptr = (struct tty_port const *)port;
  info = (struct r_port *)__mptr + 0xfffffffffffffff8UL;
  if (on != 0) {
    info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 4U);
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    if (info->channel.rtsToggle != 0) {
      goto ldv_33028;
    } else {
    }
    info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 2U);
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    ldv_33028: ;
  } else {
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 251U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    if (info->channel.rtsToggle != 0) {
      goto ldv_33029;
    } else {
    }
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 253U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
    ldv_33029: ;
  }
  return;
}
}
static int rp_open(struct tty_struct *tty , struct file *filp )
{
  struct r_port *info ;
  struct tty_port *port ;
  int retval ;
  CHANNEL_t *cp ;
  unsigned long page ;
  int tmp ;
  unsigned short tmp___0 ;
  int tmp___1 ;
  {
  info = rp_table[tty->index];
  if ((unsigned long )info == (unsigned long )((struct r_port *)0)) {
    return (-6);
  } else {
  }
  port = & info->port;
  page = ldv___get_free_pages_20(208U, 0U);
  if (page == 0UL) {
    return (-12);
  } else {
  }
  if ((port->flags & 134217728UL) != 0UL) {
    retval = wait_for_completion_interruptible(& info->close_wait);
    free_pages(page, 0U);
    if (retval != 0) {
      return (retval);
    } else {
    }
    return ((int )port->flags & 1 ? -11 : -512);
  } else {
  }
  if ((unsigned long )info->xmit_buf != (unsigned long )((unsigned char *)0U)) {
    free_pages(page, 0U);
  } else {
    info->xmit_buf = (unsigned char *)page;
  }
  tty->driver_data = (void *)info;
  tty_port_tty_set(port, tty);
  tmp = port->count;
  port->count = port->count + 1;
  if (tmp == 0) {
    atomic_inc(& rp_num_ports_open);
  } else {
  }
  tmp___1 = constant_test_bit(31L, (unsigned long const volatile *)(& port->flags));
  if (tmp___1 == 0) {
    cp = & info->channel;
    cp->RxControl[2] = (unsigned int )cp->RxControl[2] & 231U;
    cp->RxControl[2] = (Byte_t )((unsigned int )cp->RxControl[2] | 8U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->RxControl));
    tmp___0 = sInW((int )((unsigned short )cp->ChanStat));
    if (((int )tmp___0 & 8) != 0) {
      info->cd_status = 1;
    } else {
      info->cd_status = 0;
    }
    sOutW((int )((unsigned short )cp->ChanStat), 0);
    sFlushRxFIFO(cp);
    sFlushTxFIFO(cp);
    sEnInterrupts(cp, 279U);
    cp->RxControl[2] = (unsigned int )cp->RxControl[2] & 231U;
    cp->RxControl[2] = (Byte_t )((unsigned int )cp->RxControl[2] | 8U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->RxControl));
    sInW((int )((unsigned short )cp->ChanStat));
    sOutW((int )((unsigned short )cp->ChanStat), 0);
    sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned int )((unsigned char )cp->ChanNum) | 64U));
    sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned char )cp->ChanNum));
    cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 127U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    cp->R[6] = 138U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->R) + 4UL);
    cp->R[50] = 8U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->R) + 48UL);
    cp->TxControl[3] = (Byte_t )((unsigned int )cp->TxControl[3] | 1U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    set_bit(31L, (unsigned long volatile *)(& info->port.flags));
    if ((info->flags & 112) == 16) {
      tty->alt_speed = 57600;
    } else {
    }
    if ((info->flags & 112) == 32) {
      tty->alt_speed = 115200;
    } else {
    }
    if ((info->flags & 112) == 48) {
      tty->alt_speed = 230400;
    } else {
    }
    if ((info->flags & 112) == 64) {
      tty->alt_speed = 460800;
    } else {
    }
    configure_r_port(tty, info, (struct ktermios *)0);
    if ((tty->termios.c_cflag & 4111U) != 0U) {
      cp->TxControl[3] = (Byte_t )((unsigned int )cp->TxControl[3] | 4U);
      out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
      if (cp->rtsToggle != 0) {
        goto ldv_33039;
      } else {
      }
      cp->TxControl[3] = (Byte_t )((unsigned int )cp->TxControl[3] | 2U);
      out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
      ldv_33039: ;
    } else {
    }
  } else {
  }
  mod_timer(& rocket_timer, (unsigned long )jiffies + 2UL);
  retval = tty_port_block_til_ready(port, tty, filp);
  if (retval != 0) {
    return (retval);
  } else {
  }
  return (0);
}
}
static void rp_close(struct tty_struct *tty , struct file *filp )
{
  struct r_port *info ;
  struct tty_port *port ;
  int timeout ;
  CHANNEL_t *cp ;
  int tmp ;
  int tmp___0 ;
  unsigned char tmp___1 ;
  unsigned int tmp___2 ;
  {
  info = (struct r_port *)tty->driver_data;
  port = & info->port;
  tmp = rocket_paranoia_check(info, "rp_close");
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = tty_port_close_start(port, tty, filp);
  if (tmp___0 == 0) {
    return;
  } else {
  }
  mutex_lock_nested(& port->mutex, 0U);
  cp = & info->channel;
  tmp___1 = sInB((int )((unsigned short )cp->TxRxCount));
  timeout = (((int )tmp___1 + 1) * 250) / info->cps;
  if (timeout == 0) {
    timeout = 1;
  } else {
  }
  rp_wait_until_sent(tty, timeout);
  clear_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 254U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  sDisInterrupts(cp, 279U);
  cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 127U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  cp->R[6] = 138U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->R) + 4UL);
  sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned int )((unsigned char )cp->ChanNum) | 64U));
  sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned char )cp->ChanNum));
  sFlushRxFIFO(cp);
  sFlushTxFIFO(cp);
  if (cp->rtsToggle != 0) {
    goto ldv_33048;
  } else {
  }
  cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 253U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  ldv_33048: ;
  if ((tty->termios.c_cflag & 1024U) != 0U) {
    cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 251U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  } else {
  }
  rp_flush_buffer(tty);
  tty_ldisc_flush(tty);
  clear_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  if (port->blocked_open != 0) {
    if (port->close_delay != 0U) {
      tmp___2 = jiffies_to_msecs((unsigned long const )port->close_delay);
      msleep_interruptible(tmp___2);
    } else {
    }
    __wake_up(& port->open_wait, 1U, 1, (void *)0);
  } else
  if ((unsigned long )info->xmit_buf != (unsigned long )((unsigned char *)0U)) {
    free_pages((unsigned long )info->xmit_buf, 0U);
    info->xmit_buf = (unsigned char *)0U;
  } else {
  }
  spin_lock_irq(& port->lock);
  info->port.flags = info->port.flags & 1476395007UL;
  tty->closing = 0U;
  spin_unlock_irq(& port->lock);
  mutex_unlock(& port->mutex);
  tty_port_tty_set(port, (struct tty_struct *)0);
  __wake_up(& port->close_wait, 1U, 1, (void *)0);
  complete_all(& info->close_wait);
  atomic_dec(& rp_num_ports_open);
  return;
}
}
static void rp_set_termios(struct tty_struct *tty , struct ktermios *old_termios )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  unsigned int cflag ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_set_termios");
  if (tmp != 0) {
    return;
  } else {
  }
  cflag = tty->termios.c_cflag;
  if ((cflag & 48U) == 0U || (cflag & 48U) == 16U) {
    tty->termios.c_cflag = (cflag & 4294967247U) | (old_termios->c_cflag & 48U);
  } else {
  }
  tty->termios.c_cflag = tty->termios.c_cflag & 3221225471U;
  configure_r_port(tty, info, old_termios);
  cp = & info->channel;
  if ((old_termios->c_cflag & 4111U) != 0U && (tty->termios.c_cflag & 4111U) == 0U) {
    cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 251U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    if (cp->rtsToggle != 0) {
      goto ldv_33056;
    } else {
    }
    cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 253U;
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    ldv_33056: ;
  } else {
  }
  if ((old_termios->c_cflag & 4111U) == 0U && (tty->termios.c_cflag & 4111U) != 0U) {
    if (cp->rtsToggle != 0) {
      goto ldv_33057;
    } else {
    }
    cp->TxControl[3] = (Byte_t )((unsigned int )cp->TxControl[3] | 2U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
    ldv_33057:
    cp->TxControl[3] = (Byte_t )((unsigned int )cp->TxControl[3] | 4U);
    out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  } else {
  }
  if ((int )old_termios->c_cflag < 0 && (int )tty->termios.c_cflag >= 0) {
    rp_start(tty);
  } else {
  }
  return;
}
}
static int rp_break(struct tty_struct *tty , int break_state )
{
  struct r_port *info ;
  unsigned long flags ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_break");
  if (tmp != 0) {
    return (-22);
  } else {
  }
  ldv_spin_lock();
  if (break_state == -1) {
    info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 16U);
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  } else {
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 239U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  }
  spin_unlock_irqrestore(& info->slock, flags);
  return (0);
}
}
static int sGetChanRI(CHANNEL_T *ChP )
{
  CONTROLLER_t *CtlP ;
  int ChanNum ;
  int RingInd ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  CtlP = ChP->CtlP;
  ChanNum = ChP->ChanNum;
  RingInd = 0;
  if (CtlP->UPCIRingInd != 0U) {
    tmp = sInB((int )((unsigned short )CtlP->UPCIRingInd));
    RingInd = (unsigned int )((int )tmp & (int )sBitMapSetTbl[ChanNum]) == 0U;
  } else
  if (CtlP->AltChanRingIndicator != 0) {
    tmp___0 = sInB((int )((unsigned int )((unsigned short )ChP->ChanStat) + 8U));
    RingInd = (int )tmp___0 & 16;
  } else
  if (CtlP->boardType == 4) {
    tmp___1 = sInB((int )((unsigned short )CtlP->AiopIO[3]));
    RingInd = (unsigned int )((int )tmp___1 & (int )sBitMapSetTbl[ChanNum]) == 0U;
  } else {
  }
  return (RingInd);
}
}
static int rp_tiocmget(struct tty_struct *tty )
{
  struct r_port *info ;
  unsigned int control ;
  unsigned int result ;
  unsigned int ChanStatus ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = sInB((int )((unsigned short )info->channel.ChanStat));
  ChanStatus = (unsigned int )tmp;
  control = (unsigned int )info->channel.TxControl[3];
  tmp___0 = sGetChanRI(& info->channel);
  result = (unsigned int )(((((((control & 2U) != 0U ? 4 : 0) | ((control & 4U) != 0U ? 2 : 0)) | ((ChanStatus & 8U) != 0U ? 64 : 0)) | (tmp___0 != 0 ? 128 : 0)) | ((ChanStatus & 16U) != 0U ? 256 : 0)) | ((int )ChanStatus & 32));
  return ((int )result);
}
}
static int rp_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct r_port *info ;
  {
  info = (struct r_port *)tty->driver_data;
  if ((set & 4U) != 0U) {
    info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 2U);
  } else {
  }
  if ((set & 2U) != 0U) {
    info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 4U);
  } else {
  }
  if ((clear & 4U) != 0U) {
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 253U;
  } else {
  }
  if ((clear & 2U) != 0U) {
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 251U;
  } else {
  }
  out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  return (0);
}
}
static int get_config(struct r_port *info , struct rocket_config *retinfo )
{
  struct rocket_config tmp ;
  unsigned long tmp___0 ;
  {
  if ((unsigned long )retinfo == (unsigned long )((struct rocket_config *)0)) {
    return (-14);
  } else {
  }
  memset((void *)(& tmp), 0, 148UL);
  mutex_lock_nested(& info->port.mutex, 0U);
  tmp.line = info->line;
  tmp.flags = info->flags;
  tmp.close_delay = (int )info->port.close_delay;
  tmp.closing_wait = (int )info->port.closing_wait;
  tmp.port = (int )rcktpt_io_addr[(info->line >> 5) & 3];
  mutex_unlock(& info->port.mutex);
  tmp___0 = copy_to_user((void *)retinfo, (void const *)(& tmp), 148UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int set_config(struct tty_struct *tty , struct r_port *info , struct rocket_config *new_info )
{
  struct rocket_config new_serial ;
  unsigned long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = copy_from_user((void *)(& new_serial), (void const *)new_info, 148UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  mutex_lock_nested(& info->port.mutex, 0U);
  tmp___0 = capable(21);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if (((new_serial.flags ^ info->flags) & -114) != 0) {
      mutex_unlock(& info->port.mutex);
      return (-1);
    } else {
    }
    info->flags = (info->flags & -114) | (new_serial.flags & 113);
    configure_r_port(tty, info, (struct ktermios *)0);
    mutex_unlock(& info->port.mutex);
    return (0);
  } else {
  }
  info->flags = (info->flags & -16384) | (new_serial.flags & 16383);
  info->port.close_delay = (unsigned int )new_serial.close_delay;
  info->port.closing_wait = (unsigned int )new_serial.closing_wait;
  if ((info->flags & 112) == 16) {
    tty->alt_speed = 57600;
  } else {
  }
  if ((info->flags & 112) == 32) {
    tty->alt_speed = 115200;
  } else {
  }
  if ((info->flags & 112) == 48) {
    tty->alt_speed = 230400;
  } else {
  }
  if ((info->flags & 112) == 64) {
    tty->alt_speed = 460800;
  } else {
  }
  mutex_unlock(& info->port.mutex);
  configure_r_port(tty, info, (struct ktermios *)0);
  return (0);
}
}
static int get_ports(struct r_port *info , struct rocket_ports *retports )
{
  struct rocket_ports tmp ;
  int board ;
  unsigned long tmp___0 ;
  {
  if ((unsigned long )retports == (unsigned long )((struct rocket_ports *)0)) {
    return (-14);
  } else {
  }
  memset((void *)(& tmp), 0, 840UL);
  tmp.tty_major = rocket_driver->major;
  board = 0;
  goto ldv_33101;
  ldv_33100:
  tmp.rocketModel[board].model = rocketModel[board].model;
  strcpy((char *)(& tmp.rocketModel[board].modelString), (char const *)(& rocketModel[board].modelString));
  tmp.rocketModel[board].numPorts = rocketModel[board].numPorts;
  tmp.rocketModel[board].loadrm2 = rocketModel[board].loadrm2;
  tmp.rocketModel[board].startingPortNumber = rocketModel[board].startingPortNumber;
  board = board + 1;
  ldv_33101: ;
  if (board <= 3) {
    goto ldv_33100;
  } else {
  }
  tmp___0 = copy_to_user((void *)retports, (void const *)(& tmp), 840UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int reset_rm2(struct r_port *info , void *arg )
{
  int reset ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = copy_from_user((void *)(& reset), (void const *)arg, 4UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  if (reset != 0) {
    reset = 1;
  } else {
  }
  if (rcktpt_type[(int )info->board] != 2 && rcktpt_type[(int )info->board] != 3) {
    return (-22);
  } else {
  }
  if ((info->ctlp)->BusType == 0) {
    sModemReset(info->ctlp, (int )info->chan, reset);
  } else {
    sPCIModemReset(info->ctlp, (int )info->chan, reset);
  }
  return (0);
}
}
static int get_version(struct r_port *info , struct rocket_version *retvers )
{
  unsigned long tmp ;
  {
  tmp = copy_to_user((void *)retvers, (void const *)(& driver_version), 128UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int rp_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct r_port *info ;
  void *argp ;
  int ret ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  info = (struct r_port *)tty->driver_data;
  argp = (void *)arg;
  ret = 0;
  if (cmd != 5394436U) {
    tmp = rocket_paranoia_check(info, "rp_ioctl");
    if (tmp != 0) {
      return (-6);
    } else {
    }
  } else {
  }
  switch (cmd) {
  case 5394433U:
  tmp___0 = copy_to_user(argp, (void const *)info, 1648UL);
  if (tmp___0 != 0UL) {
    ret = -14;
  } else {
  }
  goto ldv_33121;
  case 5394434U:
  ret = get_config(info, (struct rocket_config *)argp);
  goto ldv_33121;
  case 5394435U:
  ret = set_config(tty, info, (struct rocket_config *)argp);
  goto ldv_33121;
  case 5394436U:
  ret = get_ports(info, (struct rocket_ports *)argp);
  goto ldv_33121;
  case 5394437U:
  ret = reset_rm2(info, argp);
  goto ldv_33121;
  case 5394438U:
  ret = get_version(info, (struct rocket_version *)argp);
  goto ldv_33121;
  default:
  ret = -515;
  }
  ldv_33121: ;
  return (ret);
}
}
static void rp_send_xchar(struct tty_struct *tty , char ch )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_send_xchar");
  if (tmp != 0) {
    return;
  } else {
  }
  cp = & info->channel;
  tmp___0 = sInB((int )((unsigned short )cp->TxRxCount));
  if ((unsigned int )tmp___0 != 0U) {
    sWriteTxPrioByte(cp, (int )((Byte_t )ch));
  } else {
    sOutB((int )((unsigned short )cp->TxRxData), (int )((unsigned char )ch));
  }
  return;
}
}
static void rp_throttle(struct tty_struct *tty )
{
  struct r_port *info ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_throttle");
  if (tmp != 0) {
    return;
  } else {
  }
  if ((tty->termios.c_iflag & 4096U) != 0U) {
    rp_send_xchar(tty, (int )((char )tty->termios.c_cc[9]));
  } else {
  }
  if (info->channel.rtsToggle != 0) {
    goto ldv_33138;
  } else {
  }
  info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 253U;
  out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  ldv_33138: ;
  return;
}
}
static void rp_unthrottle(struct tty_struct *tty )
{
  struct r_port *info ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_throttle");
  if (tmp != 0) {
    return;
  } else {
  }
  if ((tty->termios.c_iflag & 4096U) != 0U) {
    rp_send_xchar(tty, (int )((char )tty->termios.c_cc[8]));
  } else {
  }
  if (info->channel.rtsToggle != 0) {
    goto ldv_33143;
  } else {
  }
  info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 2U);
  out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  ldv_33143: ;
  return;
}
}
static void rp_stop(struct tty_struct *tty )
{
  struct r_port *info ;
  int tmp ;
  unsigned char tmp___0 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_stop");
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = sInB((int )((unsigned short )info->channel.TxRxCount));
  if ((unsigned int )tmp___0 != 0U) {
    info->channel.TxControl[3] = (unsigned int )info->channel.TxControl[3] & 254U;
    out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  } else {
  }
  return;
}
}
static void rp_start(struct tty_struct *tty )
{
  struct r_port *info ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_stop");
  if (tmp != 0) {
    return;
  } else {
  }
  info->channel.TxControl[3] = (Byte_t )((unsigned int )info->channel.TxControl[3] | 1U);
  out32((int )((unsigned short )info->channel.IndexAddr), (Byte_t *)(& info->channel.TxControl));
  set_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  return;
}
}
static void rp_wait_until_sent(struct tty_struct *tty , int timeout )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  unsigned long orig_jiffies ;
  int check_time ;
  int exit_time ;
  int txcnt ;
  int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned int tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_wait_until_sent");
  if (tmp != 0) {
    return;
  } else {
  }
  cp = & info->channel;
  orig_jiffies = jiffies;
  ldv_33163:
  tmp___0 = sInB((int )((unsigned short )cp->TxRxCount));
  txcnt = (int )tmp___0;
  if (txcnt == 0) {
    tmp___1 = sInB((int )((unsigned short )cp->ChanStat));
    if (((int )tmp___1 & 2) != 0) {
      goto ldv_33162;
    } else {
    }
    check_time = 50 / info->cps;
  } else {
    check_time = (txcnt * 250) / info->cps;
  }
  if (timeout != 0) {
    exit_time = (int )(((unsigned int )orig_jiffies + (unsigned int )timeout) - (unsigned int )jiffies);
    if (exit_time <= 0) {
      goto ldv_33162;
    } else {
    }
    if (exit_time < check_time) {
      check_time = exit_time;
    } else {
    }
  } else {
  }
  if (check_time == 0) {
    check_time = 1;
  } else {
  }
  tmp___2 = jiffies_to_msecs((unsigned long const )check_time);
  msleep_interruptible(tmp___2);
  tmp___3 = get_current();
  tmp___4 = signal_pending(tmp___3);
  if (tmp___4 != 0) {
    goto ldv_33162;
  } else {
  }
  goto ldv_33163;
  ldv_33162:
  tmp___5 = get_current();
  tmp___5->state = 0L;
  return;
}
}
static void rp_hangup(struct tty_struct *tty )
{
  CHANNEL_t *cp ;
  struct r_port *info ;
  unsigned long flags ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_hangup");
  if (tmp != 0) {
    return;
  } else {
  }
  rp_flush_buffer(tty);
  ldv_spin_lock();
  if ((info->port.flags & 134217728UL) != 0UL) {
    spin_unlock_irqrestore(& info->port.lock, flags);
    return;
  } else {
  }
  if (info->port.count != 0) {
    atomic_dec(& rp_num_ports_open);
  } else {
  }
  clear_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  spin_unlock_irqrestore(& info->port.lock, flags);
  tty_port_hangup(& info->port);
  cp = & info->channel;
  cp->R[50] = 10U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->R) + 48UL);
  cp->TxControl[3] = (unsigned int )cp->TxControl[3] & 254U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  sDisInterrupts(cp, 279U);
  cp->TxControl[2] = (unsigned int )cp->TxControl[2] & 127U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->TxControl));
  cp->R[6] = 138U;
  out32((int )((unsigned short )cp->IndexAddr), (Byte_t *)(& cp->R) + 4UL);
  sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned int )((unsigned char )cp->ChanNum) | 64U));
  sOutB((int )((unsigned short )cp->Cmd), (int )((unsigned char )cp->ChanNum));
  clear_bit(31L, (unsigned long volatile *)(& info->port.flags));
  __wake_up(& info->port.open_wait, 1U, 1, (void *)0);
  return;
}
}
static int rp_put_char(struct tty_struct *tty , unsigned char ch )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  unsigned long flags ;
  int tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_put_char");
  if (tmp != 0) {
    return (0);
  } else {
  }
  mutex_lock_nested(& info->write_mtx, 0U);
  ldv_spin_lock();
  cp = & info->channel;
  if ((unsigned int )*((unsigned char *)tty + 1316UL) == 0U && info->xmit_fifo_room == 0) {
    tmp___0 = sInB((int )((unsigned short )cp->TxRxCount));
    info->xmit_fifo_room = 255 - (int )tmp___0;
  } else {
  }
  if (((unsigned int )*((unsigned char *)tty + 1316UL) != 0U || info->xmit_fifo_room == 0) || info->xmit_cnt != 0) {
    tmp___1 = info->xmit_head;
    info->xmit_head = info->xmit_head + 1;
    *(info->xmit_buf + (unsigned long )tmp___1) = ch;
    info->xmit_head = info->xmit_head & 4095;
    info->xmit_cnt = info->xmit_cnt + 1;
    set_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  } else {
    sOutB((int )((unsigned short )cp->TxRxData), (int )ch);
    info->xmit_fifo_room = info->xmit_fifo_room - 1;
  }
  spin_unlock_irqrestore(& info->slock, flags);
  mutex_unlock(& info->write_mtx);
  return (1);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
static int rp_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  unsigned char const *b ;
  int c ;
  int retval ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  unsigned char tmp___1 ;
  int _min1 ;
  int _min2 ;
  int tmp___2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  size_t __len ;
  void *__ret ;
  {
  info = (struct r_port *)tty->driver_data;
  retval = 0;
  if (count <= 0) {
    return (0);
  } else {
    tmp = rocket_paranoia_check(info, "rp_write");
    if (tmp != 0) {
      return (0);
    } else {
    }
  }
  tmp___0 = mutex_lock_interruptible_nested(& info->write_mtx, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  cp = & info->channel;
  if ((unsigned int )*((unsigned char *)tty + 1316UL) == 0U && info->xmit_fifo_room < count) {
    tmp___1 = sInB((int )((unsigned short )cp->TxRxCount));
    info->xmit_fifo_room = 255 - (int )tmp___1;
  } else {
  }
  if (((unsigned int )*((unsigned char *)tty + 1316UL) == 0U && info->xmit_cnt == 0) && info->xmit_fifo_room > 0) {
    _min1 = count;
    _min2 = info->xmit_fifo_room;
    c = _min1 < _min2 ? _min1 : _min2;
    b = buf;
    if ((unsigned int )c - 4294967295U > 2U) {
      outsw((int )cp->TxRxData, (void const *)b, (unsigned long )(c / 2));
    } else {
    }
    if (c & 1) {
      sOutB((int )((unsigned short )cp->TxRxData), (int )*(b + ((unsigned long )c + 0xffffffffffffffffUL)));
    } else {
    }
    retval = retval + c;
    buf = buf + (unsigned long )c;
    count = count - c;
    ldv_spin_lock();
    info->xmit_fifo_room = info->xmit_fifo_room - c;
    spin_unlock_irqrestore(& info->slock, flags);
  } else {
  }
  if (count == 0) {
    goto end;
  } else {
  }
  ldv_33202:
  tmp___2 = constant_test_bit(29L, (unsigned long const volatile *)(& info->port.flags));
  if (tmp___2 == 0) {
    goto end;
  } else {
  }
  _min1___0 = count;
  _min2___0 = 4095 - info->xmit_cnt;
  c = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _min1___1 = c;
  _min2___1 = 4096 - info->xmit_head;
  c = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  if (c <= 0) {
    goto ldv_33198;
  } else {
  }
  b = buf;
  __len = (size_t )c;
  __ret = memcpy((void *)info->xmit_buf + (unsigned long )info->xmit_head,
                           (void const *)b, __len);
  ldv_spin_lock();
  info->xmit_head = (info->xmit_head + c) & 4095;
  info->xmit_cnt = info->xmit_cnt + c;
  spin_unlock_irqrestore(& info->slock, flags);
  buf = buf + (unsigned long )c;
  count = count - c;
  retval = retval + c;
  goto ldv_33202;
  ldv_33198: ;
  if (retval > 0 && (unsigned int )*((unsigned char *)tty + 1316UL) == 0U) {
    set_bit((long )((int )info->aiop * 8 + (int )info->chan), (unsigned long volatile *)(& xmit_flags) + (unsigned long )info->board);
  } else {
  }
  end: ;
  if (info->xmit_cnt <= 255) {
    tty_wakeup(tty);
  } else {
  }
  mutex_unlock(& info->write_mtx);
  return (retval);
}
}
static int rp_write_room(struct tty_struct *tty )
{
  struct r_port *info ;
  int ret ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_write_room");
  if (tmp != 0) {
    return (0);
  } else {
  }
  ret = 4095 - info->xmit_cnt;
  if (ret < 0) {
    ret = 0;
  } else {
  }
  return (ret);
}
}
static int rp_chars_in_buffer(struct tty_struct *tty )
{
  struct r_port *info ;
  int tmp ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_chars_in_buffer");
  if (tmp != 0) {
    return (0);
  } else {
  }
  return (info->xmit_cnt);
}
}
static void rp_flush_buffer(struct tty_struct *tty )
{
  struct r_port *info ;
  CHANNEL_t *cp ;
  unsigned long flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  info = (struct r_port *)tty->driver_data;
  tmp = rocket_paranoia_check(info, "rp_flush_buffer");
  if (tmp != 0) {
    return;
  } else {
  }
  ldv_spin_lock();
  tmp___1 = 0;
  info->xmit_tail = tmp___1;
  tmp___0 = tmp___1;
  info->xmit_head = tmp___0;
  info->xmit_cnt = tmp___0;
  spin_unlock_irqrestore(& info->slock, flags);
  tty_wakeup(tty);
  cp = & info->channel;
  sFlushTxFIFO(cp);
  return;
}
}
static struct pci_device_id const rocket_pci_ids[23U] =
  { {4606U, 4U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 5U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2053U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2050U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 6U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 7U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 8U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 9U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 3U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2051U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2307U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 1U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2049U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 10U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 11U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 14U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 15U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 12U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 13U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2060U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4606U, 2061U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__rocket_pci_ids_device_table ;
static void rmSpeakerReset(CONTROLLER_T *CtlP , unsigned long model )
{
  ByteIO_t addr ;
  {
  if (model == 13UL || model == 12UL) {
    addr = CtlP->AiopIO[0] + 79U;
    sOutB((int )((unsigned short )addr), 0);
  } else {
  }
  if (model == 2060UL || model == 2060UL) {
    addr = CtlP->AiopIO[0] + 136U;
    sOutB((int )((unsigned short )addr), 0);
  } else {
  }
  return;
}
}
static int sPCIInitController(CONTROLLER_T *CtlP , int CtlNum , ByteIO_t *AiopIOList ,
                              int AiopIOListSize , WordIO_t ConfigIO , int IRQNum ,
                              Byte_t Frequency , int PeriodicOnly , int altChanRingIndicator ,
                              int UPCIRingInd )
{
  int i ;
  ByteIO_t io ;
  Word_t w ;
  unsigned short tmp ;
  {
  CtlP->AltChanRingIndicator = altChanRingIndicator;
  CtlP->UPCIRingInd = (ByteIO_t )UPCIRingInd;
  CtlP->CtlNum = CtlNum;
  CtlP->CtlID = 1;
  CtlP->BusType = 1;
  if (ConfigIO != 0U) {
    CtlP->isUPCI = 1;
    CtlP->PCIIO = ConfigIO + 76U;
    CtlP->PCIIO2 = ConfigIO + 84U;
    CtlP->AiopIntrBits = (Word_t *)(& upci_aiop_intr_bits);
  } else {
    CtlP->isUPCI = 0;
    CtlP->PCIIO = *AiopIOList + 58U;
    CtlP->AiopIntrBits = (Word_t *)(& aiop_intr_bits);
  }
  if (CtlP->isUPCI != 0) {
    tmp = sInW((int )((unsigned short )CtlP->PCIIO));
    w = (Word_t )tmp;
    sOutW((int )((unsigned short )CtlP->PCIIO), (int )((unsigned int )((unsigned short )w) ^ 1U));
    sOutW((int )((unsigned short )CtlP->PCIIO), (int )((unsigned short )w));
  } else {
    sOutW((int )((unsigned short )CtlP->PCIIO), 8192);
  }
  CtlP->NumAiop = 0;
  i = 0;
  goto ldv_33242;
  ldv_33241:
  io = *(AiopIOList + (unsigned long )i);
  CtlP->AiopIO[i] = io;
  CtlP->AiopIntChanIO[i] = io + 57U;
  CtlP->AiopID[i] = sReadAiopID(io);
  if (CtlP->AiopID[i] == -1) {
    goto ldv_33240;
  } else {
  }
  CtlP->AiopNumChan[i] = sReadAiopNumChan(io);
  sOutW((int )((unsigned int )((unsigned short )io) + 60U), 4086);
  sOutB((int )((unsigned int )((unsigned short )io) + 62U), (int )((unsigned char )sClockPrescale));
  CtlP->NumAiop = CtlP->NumAiop + 1;
  i = i + 1;
  ldv_33242: ;
  if (i < AiopIOListSize) {
    goto ldv_33241;
  } else {
  }
  ldv_33240: ;
  if (CtlP->NumAiop == 0) {
    return (-1);
  } else {
    return (CtlP->NumAiop);
  }
}
}
static int register_PCI(int i , struct pci_dev *dev )
{
  int num_aiops ;
  int aiop ;
  int max_num_aiops ;
  int num_chan ;
  int chan ;
  unsigned int aiopio[4U] ;
  CONTROLLER_t *ctlp ;
  int fast_clock ;
  int altChanRingIndicator ;
  int ports_per_aiop ;
  WordIO_t ConfigIO ;
  ByteIO_t UPCIRingInd ;
  struct pci_device_id const *tmp ;
  int tmp___0 ;
  unsigned short tmp___1 ;
  {
  fast_clock = 0;
  altChanRingIndicator = 0;
  ports_per_aiop = 8;
  ConfigIO = 0U;
  UPCIRingInd = 0U;
  if ((unsigned long )dev == (unsigned long )((struct pci_dev *)0)) {
    return (0);
  } else {
    tmp = pci_match_id((struct pci_device_id const *)(& rocket_pci_ids), dev);
    if ((unsigned long )tmp == (unsigned long )((struct pci_device_id const *)0)) {
      return (0);
    } else {
      tmp___0 = pci_enable_device(dev);
      if (tmp___0 != 0) {
        return (0);
      } else {
      }
    }
  }
  rcktpt_io_addr[i] = (unsigned long )dev->resource[0].start;
  rcktpt_type[i] = 0;
  rocketModel[i].loadrm2 = 0;
  rocketModel[i].startingPortNumber = (int )nextLineNumber;
  switch ((int )dev->device) {
  case 4:
  max_num_aiops = 1;
  ports_per_aiop = 4;
  rocketModel[i].model = 4UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 4 port w/quad cable");
  rocketModel[i].numPorts = 4UL;
  goto ldv_33260;
  case 5:
  max_num_aiops = 1;
  rocketModel[i].model = 5UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 8 port w/octa cable");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 2053:
  max_num_aiops = 1;
  rocketModel[i].model = 2053UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort UPCI 8 port w/octa cable");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 2:
  max_num_aiops = 1;
  rocketModel[i].model = 2UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 8 port w/external I/F");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 2050:
  max_num_aiops = 1;
  rocketModel[i].model = 2050UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort UPCI 8 port w/external I/F");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 6:
  max_num_aiops = 1;
  rocketModel[i].model = 6UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 8 port w/RJ11 connectors");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 7:
  max_num_aiops = 1;
  ports_per_aiop = 4;
  rocketModel[i].model = 7UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 4 port w/RJ45 connectors");
  rocketModel[i].numPorts = 4UL;
  goto ldv_33260;
  case 8:
  max_num_aiops = 1;
  rocketModel[i].model = 8UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 8 port w/ custom DB78");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 9:
  max_num_aiops = 2;
  rocketModel[i].model = 9UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 16 port w/ custom DB78");
  rocketModel[i].numPorts = 16UL;
  goto ldv_33260;
  case 3:
  max_num_aiops = 2;
  rocketModel[i].model = 3UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 16 port w/external I/F");
  rocketModel[i].numPorts = 16UL;
  goto ldv_33260;
  case 2051:
  max_num_aiops = 2;
  rocketModel[i].model = 2051UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort UPCI 16 port w/external I/F");
  rocketModel[i].numPorts = 16UL;
  goto ldv_33260;
  case 2307:
  max_num_aiops = 2;
  rocketModel[i].model = 2307UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort Compact PCI 16 port w/external I/F");
  rocketModel[i].numPorts = 16UL;
  goto ldv_33260;
  case 1:
  max_num_aiops = 4;
  rocketModel[i].model = 1UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort 32 port w/external I/F");
  rocketModel[i].numPorts = 32UL;
  goto ldv_33260;
  case 2049:
  max_num_aiops = 4;
  rocketModel[i].model = 2049UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort UPCI 32 port w/external I/F");
  rocketModel[i].numPorts = 32UL;
  goto ldv_33260;
  case 10:
  max_num_aiops = 1;
  ports_per_aiop = 4;
  altChanRingIndicator = altChanRingIndicator + 1;
  fast_clock = fast_clock + 1;
  rocketModel[i].model = 10UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort Plus 4 port");
  rocketModel[i].numPorts = 4UL;
  goto ldv_33260;
  case 11:
  max_num_aiops = 2;
  ports_per_aiop = 4;
  altChanRingIndicator = altChanRingIndicator + 1;
  fast_clock = fast_clock + 1;
  rocketModel[i].model = 11UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort Plus 8 port");
  rocketModel[i].numPorts = 8UL;
  goto ldv_33260;
  case 14:
  max_num_aiops = 1;
  ports_per_aiop = 2;
  altChanRingIndicator = altChanRingIndicator + 1;
  fast_clock = fast_clock + 1;
  rocketModel[i].model = 14UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort Plus 2 port RS232");
  rocketModel[i].numPorts = 2UL;
  goto ldv_33260;
  case 15:
  max_num_aiops = 1;
  ports_per_aiop = 2;
  altChanRingIndicator = altChanRingIndicator + 1;
  fast_clock = fast_clock + 1;
  rocketModel[i].model = 15UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketPort Plus 2 port RS422");
  rocketModel[i].numPorts = 2UL;
  goto ldv_33260;
  case 12:
  max_num_aiops = 1;
  ports_per_aiop = 6;
  if ((unsigned int )dev->revision == 1U) {
    rcktpt_type[i] = 2;
    rocketModel[i].loadrm2 = 1;
  } else {
    rcktpt_type[i] = 1;
  }
  rocketModel[i].model = 12UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketModem 6 port");
  rocketModel[i].numPorts = 6UL;
  goto ldv_33260;
  case 13:
  max_num_aiops = 1;
  ports_per_aiop = 4;
  if ((unsigned int )dev->revision == 1U) {
    rcktpt_type[i] = 2;
    rocketModel[i].loadrm2 = 1;
  } else {
    rcktpt_type[i] = 1;
  }
  rocketModel[i].model = 13UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketModem 4 port");
  rocketModel[i].numPorts = 4UL;
  goto ldv_33260;
  default:
  max_num_aiops = 0;
  goto ldv_33260;
  }
  ldv_33260: ;
  switch ((int )dev->device) {
  case 2049: ;
  case 2050: ;
  case 2051: ;
  case 2307: ;
  case 2053:
  rcktpt_io_addr[i] = (unsigned long )dev->resource[2].start;
  ConfigIO = (WordIO_t )dev->resource[1].start;
  if ((unsigned int )dev->device == 2053U) {
    UPCIRingInd = (ByteIO_t )rcktpt_io_addr[i] + 192U;
    tmp___1 = sInW((int )((unsigned int )((unsigned short )ConfigIO) + 84U));
    if (((int )tmp___1 & 16384) == 0) {
      ports_per_aiop = 4;
      rocketModel[i].numPorts = 4UL;
    } else {
    }
  } else {
  }
  goto ldv_33286;
  case 2060:
  max_num_aiops = 1;
  rocketModel[i].model = 2060UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketModem III 8 port");
  rocketModel[i].numPorts = 8UL;
  rcktpt_io_addr[i] = (unsigned long )dev->resource[2].start;
  UPCIRingInd = (ByteIO_t )rcktpt_io_addr[i] + 192U;
  ConfigIO = (WordIO_t )dev->resource[1].start;
  rcktpt_type[i] = 3;
  goto ldv_33286;
  case 2061:
  max_num_aiops = 1;
  rocketModel[i].model = 2060UL;
  strcpy((char *)(& rocketModel[i].modelString), "RocketModem III 4 port");
  rocketModel[i].numPorts = 4UL;
  rcktpt_io_addr[i] = (unsigned long )dev->resource[2].start;
  UPCIRingInd = (ByteIO_t )rcktpt_io_addr[i] + 192U;
  ConfigIO = (WordIO_t )dev->resource[1].start;
  rcktpt_type[i] = 3;
  goto ldv_33286;
  default: ;
  goto ldv_33286;
  }
  ldv_33286: ;
  if (fast_clock != 0) {
    sClockPrescale = 18;
    rp_baud_base[i] = 921600;
  } else
  if ((int )support_low_speed) {
    sClockPrescale = 25;
    rp_baud_base[i] = 230400;
  } else {
    sClockPrescale = 20;
    rp_baud_base[i] = 460800;
  }
  aiop = 0;
  goto ldv_33291;
  ldv_33290:
  aiopio[aiop] = (unsigned int )rcktpt_io_addr[i] + (unsigned int )(aiop * 64);
  aiop = aiop + 1;
  ldv_33291: ;
  if (aiop < max_num_aiops) {
    goto ldv_33290;
  } else {
  }
  ctlp = (CONTROLLER_t *)(& sController) + (unsigned long )i;
  num_aiops = sPCIInitController(ctlp, i, (ByteIO_t *)(& aiopio), max_num_aiops, ConfigIO,
                                 0, 0, 0, altChanRingIndicator, (int )UPCIRingInd);
  aiop = 0;
  goto ldv_33294;
  ldv_33293:
  ctlp->AiopNumChan[aiop] = ports_per_aiop;
  aiop = aiop + 1;
  ldv_33294: ;
  if (aiop < max_num_aiops) {
    goto ldv_33293;
  } else {
  }
  _dev_info((struct device const *)(& dev->dev), "comtrol PCI controller #%d found at address %04lx, %d AIOP(s) (%s), creating ttyR%d - %ld\n",
            i, rcktpt_io_addr[i], num_aiops, (char *)(& rocketModel[i].modelString),
            rocketModel[i].startingPortNumber, ((unsigned long )rocketModel[i].startingPortNumber + rocketModel[i].numPorts) - 1UL);
  if (num_aiops <= 0) {
    rcktpt_io_addr[i] = 0UL;
    return (0);
  } else {
  }
  is_PCI[i] = 1;
  aiop = 0;
  goto ldv_33300;
  ldv_33299:
  sOutB((int )((unsigned int )((unsigned short )ctlp->AiopIO[aiop]) + 56U), 128);
  sOutB((int )((unsigned int )((unsigned short )ctlp->AiopIO[aiop]) + 56U), 0);
  num_chan = ports_per_aiop;
  chan = 0;
  goto ldv_33297;
  ldv_33296:
  init_r_port(i, aiop, chan, dev);
  chan = chan + 1;
  ldv_33297: ;
  if (chan < num_chan) {
    goto ldv_33296;
  } else {
  }
  aiop = aiop + 1;
  ldv_33300: ;
  if (aiop < num_aiops) {
    goto ldv_33299;
  } else {
  }
  if ((rcktpt_type[i] == 1 || rcktpt_type[i] == 2) || rcktpt_type[i] == 3) {
    num_chan = ports_per_aiop;
    chan = 0;
    goto ldv_33303;
    ldv_33302:
    sPCIModemReset(ctlp, chan, 1);
    chan = chan + 1;
    ldv_33303: ;
    if (chan < num_chan) {
      goto ldv_33302;
    } else {
    }
    msleep(500U);
    chan = 0;
    goto ldv_33306;
    ldv_33305:
    sPCIModemReset(ctlp, chan, 0);
    chan = chan + 1;
    ldv_33306: ;
    if (chan < num_chan) {
      goto ldv_33305;
    } else {
    }
    msleep(500U);
    rmSpeakerReset(ctlp, rocketModel[i].model);
  } else {
  }
  return (1);
}
}
static int init_PCI(int boards_found )
{
  struct pci_dev *dev ;
  int count ;
  int tmp ;
  {
  dev = (struct pci_dev *)0;
  count = 0;
  goto ldv_33314;
  ldv_33313:
  tmp = register_PCI(count + boards_found, dev);
  if (tmp != 0) {
    count = count + 1;
  } else {
  }
  ldv_33314:
  dev = pci_get_device(4606U, 4294967295U, dev);
  if ((unsigned long )dev != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_33313;
  } else {
  }
  return (count);
}
}
static int init_ISA(int i )
{
  int num_aiops ;
  int num_chan ;
  int total_num_chan ;
  int aiop ;
  int chan ;
  unsigned int aiopio[4U] ;
  CONTROLLER_t *ctlp ;
  char *type_string ;
  struct resource *tmp ;
  {
  num_chan = 0;
  total_num_chan = 0;
  if (rcktpt_io_addr[i] == 0UL) {
    return (0);
  } else {
  }
  tmp = __request_region(& ioport_resource, (resource_size_t )rcktpt_io_addr[i], 64ULL,
                         "Comtrol RocketPort", 0);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    printk("\vUnable to reserve IO region for configured ISA RocketPort at address 0x%lx, board not installed...\n",
           rcktpt_io_addr[i]);
    rcktpt_io_addr[i] = 0UL;
    return (0);
  } else {
  }
  ctlp = (CONTROLLER_t *)(& sController) + (unsigned long )i;
  ctlp->boardType = rcktpt_type[i];
  switch (rcktpt_type[i]) {
  case 4:
  type_string = (char *)"(PC104)";
  goto ldv_33328;
  case 1:
  type_string = (char *)"(RocketModem)";
  goto ldv_33328;
  case 2:
  type_string = (char *)"(RocketModem II)";
  goto ldv_33328;
  default:
  type_string = (char *)"";
  goto ldv_33328;
  }
  ldv_33328: ;
  if ((int )support_low_speed) {
    sClockPrescale = 25;
    rp_baud_base[i] = 230400;
  } else {
    sClockPrescale = 20;
    rp_baud_base[i] = 460800;
  }
  aiop = 0;
  goto ldv_33333;
  ldv_33332:
  aiopio[aiop] = (unsigned int )rcktpt_io_addr[i] + (unsigned int )(aiop * 1024);
  aiop = aiop + 1;
  ldv_33333: ;
  if (aiop <= 3) {
    goto ldv_33332;
  } else {
  }
  num_aiops = sInitController(ctlp, i, (ByteIO_t )(i * 1024) + (ByteIO_t )controller,
                              (ByteIO_t *)(& aiopio), 4, 0, 0, 0);
  if (ctlp->boardType == 4) {
    ctlp->MReg3 = (Byte_t )((int )ctlp->MReg3 | (int )sBitMapSetTbl[2]);
    sOutB((int )((unsigned short )ctlp->MReg3IO), (int )ctlp->MReg3);
    ctlp->MReg3 = (Byte_t )((int )ctlp->MReg3 | (int )sBitMapSetTbl[3]);
    sOutB((int )((unsigned short )ctlp->MReg3IO), (int )ctlp->MReg3);
  } else {
  }
  if (num_aiops <= 0) {
    __release_region(& ioport_resource, (resource_size_t )rcktpt_io_addr[i], 64ULL);
    rcktpt_io_addr[i] = 0UL;
    return (0);
  } else {
  }
  rocketModel[i].startingPortNumber = (int )nextLineNumber;
  aiop = 0;
  goto ldv_33339;
  ldv_33338:
  sOutB((int )((unsigned int )((unsigned short )ctlp->AiopIO[aiop]) + 56U), 128);
  sOutB((int )((unsigned int )((unsigned short )ctlp->AiopIO[aiop]) + 56U), 0);
  ctlp->MReg3 = (Byte_t )((int )ctlp->MReg3 | (int )sBitMapSetTbl[aiop]);
  sOutB((int )((unsigned short )ctlp->MReg3IO), (int )ctlp->MReg3);
  num_chan = ctlp->AiopNumChan[aiop];
  total_num_chan = total_num_chan + num_chan;
  chan = 0;
  goto ldv_33336;
  ldv_33335:
  init_r_port(i, aiop, chan, (struct pci_dev *)0);
  chan = chan + 1;
  ldv_33336: ;
  if (chan < num_chan) {
    goto ldv_33335;
  } else {
  }
  aiop = aiop + 1;
  ldv_33339: ;
  if (aiop < num_aiops) {
    goto ldv_33338;
  } else {
  }
  is_PCI[i] = 0;
  if (rcktpt_type[i] == 1 || rcktpt_type[i] == 2) {
    num_chan = ctlp->AiopNumChan[0];
    total_num_chan = num_chan;
    chan = 0;
    goto ldv_33342;
    ldv_33341:
    sModemReset(ctlp, chan, 1);
    chan = chan + 1;
    ldv_33342: ;
    if (chan < num_chan) {
      goto ldv_33341;
    } else {
    }
    msleep(500U);
    chan = 0;
    goto ldv_33345;
    ldv_33344:
    sModemReset(ctlp, chan, 0);
    chan = chan + 1;
    ldv_33345: ;
    if (chan < num_chan) {
      goto ldv_33344;
    } else {
    }
    msleep(500U);
    strcpy((char *)(& rocketModel[i].modelString), "RocketModem ISA");
  } else {
    strcpy((char *)(& rocketModel[i].modelString), "RocketPort ISA");
  }
  rocketModel[i].numPorts = (unsigned long )total_num_chan;
  rocketModel[i].model = 4096UL;
  printk("\016RocketPort ISA card #%d found at 0x%lx - %d AIOPs %s\n", i, rcktpt_io_addr[i],
         num_aiops, type_string);
  printk("\016Installing %s, creating /dev/ttyR%d - %ld\n", (char *)(& rocketModel[i].modelString),
         rocketModel[i].startingPortNumber, ((unsigned long )rocketModel[i].startingPortNumber + rocketModel[i].numPorts) - 1UL);
  return (1);
}
}
static struct tty_operations const rocket_ops =
     {0, 0, 0, & rp_open, & rp_close, 0, 0, & rp_write, & rp_put_char, 0, & rp_write_room,
    & rp_chars_in_buffer, & rp_ioctl, 0, & rp_set_termios, & rp_throttle, & rp_unthrottle,
    & rp_stop, & rp_start, & rp_hangup, & rp_break, & rp_flush_buffer, 0, & rp_wait_until_sent,
    & rp_send_xchar, & rp_tiocmget, & rp_tiocmset, 0, 0, 0, 0, 0, 0, 0};
static struct tty_port_operations const rocket_port_ops = {& carrier_raised, & dtr_rts, 0, 0, 0};
static int rp_init(void)
{
  int ret ;
  int pci_boards_found ;
  int isa_boards_found ;
  int i ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  ret = -12;
  printk("\016RocketPort device driver module, version %s, %s\n", (char *)"2.09",
         (char *)"12-June-2003");
  rocket_driver = alloc_tty_driver(256U);
  if ((unsigned long )rocket_driver == (unsigned long )((struct tty_driver *)0)) {
    goto err;
  } else {
  }
  if (board1 != 0UL) {
    if (controller == 0UL) {
      controller = board1 + 64UL;
    } else {
    }
  } else {
    controller = 0UL;
  }
  if (controller != 0UL) {
    tmp = __request_region(& ioport_resource, (resource_size_t )controller, 4ULL,
                           "Comtrol RocketPort", 0);
    if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
      printk("\vUnable to reserve IO region for first configured ISA RocketPort controller 0x%lx.  Driver exiting\n",
             controller);
      ret = -16;
      goto err_tty;
    } else {
    }
  } else {
  }
  rcktpt_io_addr[0] = board1;
  rcktpt_io_addr[1] = board2;
  rcktpt_io_addr[2] = board3;
  rcktpt_io_addr[3] = board4;
  rcktpt_type[0] = modem1 != 0UL;
  rcktpt_type[0] = pc104_1[0] == 0UL ? rcktpt_type[0] : 4;
  rcktpt_type[1] = modem2 != 0UL;
  rcktpt_type[1] = pc104_2[0] == 0UL ? rcktpt_type[1] : 4;
  rcktpt_type[2] = modem3 != 0UL;
  rcktpt_type[2] = pc104_3[0] == 0UL ? rcktpt_type[2] : 4;
  rcktpt_type[3] = modem4 != 0UL;
  rcktpt_type[3] = pc104_4[0] == 0UL ? rcktpt_type[3] : 4;
  rocket_driver->flags = 8UL;
  rocket_driver->name = "ttyR";
  rocket_driver->driver_name = "Comtrol RocketPort";
  rocket_driver->major = 46;
  rocket_driver->minor_start = 0;
  rocket_driver->type = 3;
  rocket_driver->subtype = 1;
  rocket_driver->init_termios = tty_std_termios;
  rocket_driver->init_termios.c_cflag = 3261U;
  rocket_driver->init_termios.c_ispeed = 9600U;
  rocket_driver->init_termios.c_ospeed = 9600U;
  tty_set_operations(rocket_driver, & rocket_ops);
  ret = tty_register_driver(rocket_driver);
  if (ret < 0) {
    printk("\vCouldn\'t install tty RocketPort driver\n");
    goto err_controller;
  } else {
  }
  isa_boards_found = 0;
  pci_boards_found = 0;
  i = 0;
  goto ldv_33360;
  ldv_33359:
  tmp___0 = init_ISA(i);
  if (tmp___0 != 0) {
    isa_boards_found = isa_boards_found + 1;
  } else {
  }
  i = i + 1;
  ldv_33360: ;
  if (i <= 7) {
    goto ldv_33359;
  } else {
  }
  if (isa_boards_found <= 7) {
    pci_boards_found = init_PCI(isa_boards_found);
  } else {
  }
  max_board = pci_boards_found + isa_boards_found;
  if (max_board == 0) {
    printk("\vNo rocketport ports found; unloading driver\n");
    ret = -6;
    goto err_ttyu;
  } else {
  }
  return (0);
  err_ttyu:
  tty_unregister_driver(rocket_driver);
  err_controller: ;
  if (controller != 0UL) {
    __release_region(& ioport_resource, (resource_size_t )controller, 4ULL);
  } else {
  }
  err_tty:
  put_tty_driver(rocket_driver);
  err: ;
  return (ret);
}
}
static void rp_cleanup_module(void)
{
  int retval ;
  int i ;
  {
  del_timer_sync(& rocket_timer);
  retval = tty_unregister_driver(rocket_driver);
  if (retval != 0) {
    printk("\vError %d while trying to unregister rocketport driver\n", - retval);
  } else {
  }
  i = 0;
  goto ldv_33369;
  ldv_33368: ;
  if ((unsigned long )rp_table[i] != (unsigned long )((struct r_port *)0)) {
    tty_unregister_device(rocket_driver, (unsigned int )i);
    tty_port_destroy(& (rp_table[i])->port);
    kfree((void const *)rp_table[i]);
  } else {
  }
  i = i + 1;
  ldv_33369: ;
  if (i <= 255) {
    goto ldv_33368;
  } else {
  }
  put_tty_driver(rocket_driver);
  i = 0;
  goto ldv_33373;
  ldv_33372: ;
  if (rcktpt_io_addr[i] == 0UL || is_PCI[i] != 0) {
    goto ldv_33371;
  } else {
  }
  __release_region(& ioport_resource, (resource_size_t )rcktpt_io_addr[i], 64ULL);
  ldv_33371:
  i = i + 1;
  ldv_33373: ;
  if (i <= 7) {
    goto ldv_33372;
  } else {
  }
  if (controller != 0UL) {
    __release_region(& ioport_resource, (resource_size_t )controller, 4ULL);
  } else {
  }
  return;
}
}
static int sInitController(CONTROLLER_T *CtlP , int CtlNum , ByteIO_t MudbacIO , ByteIO_t *AiopIOList ,
                           int AiopIOListSize , int IRQNum , Byte_t Frequency , int PeriodicOnly )
{
  int i ;
  ByteIO_t io ;
  int done ;
  {
  CtlP->AiopIntrBits = (Word_t *)(& aiop_intr_bits);
  CtlP->AltChanRingIndicator = 0;
  CtlP->CtlNum = CtlNum;
  CtlP->CtlID = 1;
  CtlP->BusType = 0;
  CtlP->MBaseIO = MudbacIO;
  CtlP->MReg1IO = MudbacIO + 1U;
  CtlP->MReg2IO = MudbacIO + 2U;
  CtlP->MReg3IO = MudbacIO + 3U;
  CtlP->MReg2 = 0U;
  CtlP->MReg3 = 0U;
  sOutB((int )((unsigned short )CtlP->MReg2IO), (int )CtlP->MReg2);
  sOutB((int )((unsigned short )CtlP->MReg3IO), (int )CtlP->MReg3);
  sOutB((int )((unsigned short )CtlP->MReg2IO), (int )((unsigned int )CtlP->MReg2 | 4U));
  CtlP->NumAiop = 0;
  done = 0;
  i = done;
  goto ldv_33390;
  ldv_33389:
  io = *(AiopIOList + (unsigned long )i);
  CtlP->AiopIO[i] = io;
  CtlP->AiopIntChanIO[i] = io + 57U;
  sOutB((int )((unsigned short )CtlP->MReg2IO), (int )((unsigned char )((int )((signed char )CtlP->MReg2) | ((int )((signed char )i) & 3))));
  sOutB((int )((unsigned short )MudbacIO), (int )((unsigned char )(io >> 6)));
  if (done != 0) {
    goto ldv_33388;
  } else {
  }
  CtlP->MReg3 = (Byte_t )((int )CtlP->MReg3 | (int )sBitMapSetTbl[i]);
  sOutB((int )((unsigned short )CtlP->MReg3IO), (int )CtlP->MReg3);
  CtlP->AiopID[i] = sReadAiopID(io);
  if (CtlP->AiopID[i] == -1) {
    done = 1;
  } else {
    CtlP->AiopNumChan[i] = sReadAiopNumChan(io);
    sOutW((int )((unsigned int )((unsigned short )io) + 60U), 4086);
    sOutB((int )((unsigned int )((unsigned short )io) + 62U), (int )((unsigned char )sClockPrescale));
    CtlP->NumAiop = CtlP->NumAiop + 1;
  }
  CtlP->MReg3 = (Byte_t )((int )CtlP->MReg3 & (int )sBitMapClrTbl[i]);
  sOutB((int )((unsigned short )CtlP->MReg3IO), (int )CtlP->MReg3);
  ldv_33388:
  i = i + 1;
  ldv_33390: ;
  if (i < AiopIOListSize) {
    goto ldv_33389;
  } else {
  }
  if (CtlP->NumAiop == 0) {
    return (-1);
  } else {
    return (CtlP->NumAiop);
  }
}
}
static int sReadAiopID(ByteIO_t io )
{
  Byte_t AiopID ;
  unsigned short tmp ;
  {
  sOutB((int )((unsigned int )((unsigned short )io) + 56U), 128);
  sOutB((int )((unsigned int )((unsigned short )io) + 56U), 0);
  tmp = sInW((int )((unsigned int )((unsigned short )io) + 32U));
  AiopID = (unsigned int )((Byte_t )tmp) & 7U;
  if ((unsigned int )AiopID == 6U) {
    return (1);
  } else {
    return (-1);
  }
}
}
static int sReadAiopNumChan(WordIO_t io )
{
  Word_t x ;
  Byte_t R[4U] ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  {
  R[0] = 0U;
  R[1] = 0U;
  R[2] = 52U;
  R[3] = 18U;
  out32((int )((unsigned int )((unsigned short )io) + 60U), (Byte_t *)(& R));
  sOutW((int )((unsigned int )((unsigned short )io) + 60U), 0);
  tmp = sInW((int )((unsigned int )((unsigned short )io) + 62U));
  x = (Word_t )tmp;
  sOutW((int )((unsigned int )((unsigned short )io) + 60U), 16384);
  tmp___0 = sInW((int )((unsigned int )((unsigned short )io) + 62U));
  if ((Word_t )tmp___0 != x) {
    return (8);
  } else {
    return (4);
  }
}
}
static int sInitChan(CONTROLLER_T *CtlP , CHANNEL_T *ChP , int AiopNum , int ChanNum )
{
  int i ;
  WordIO_t AiopIO ;
  WordIO_t ChIOOff ;
  Byte_t *ChR ;
  Word_t ChOff ;
  Byte_t R[4U] ;
  int brd9600 ;
  {
  if (CtlP->AiopNumChan[AiopNum] <= ChanNum) {
    return (0);
  } else {
  }
  ChP->CtlP = CtlP;
  ChP->ChanID = CtlP->AiopID[AiopNum];
  ChP->AiopNum = AiopNum;
  ChP->ChanNum = ChanNum;
  AiopIO = CtlP->AiopIO[AiopNum];
  ChP->Cmd = AiopIO + 56U;
  ChP->IntChan = AiopIO + 57U;
  ChP->IntMask = AiopIO + 58U;
  ChP->IndexAddr = AiopIO + 60U;
  ChP->IndexData = AiopIO + 62U;
  ChIOOff = (WordIO_t )(ChP->ChanNum * 2) + AiopIO;
  ChP->TxRxData = ChIOOff;
  ChP->ChanStat = ChIOOff + 32U;
  ChP->TxRxCount = ChIOOff + 16U;
  ChP->IntID = ((WordIO_t )ChP->ChanNum + AiopIO) + 48U;
  i = 0;
  goto ldv_33415;
  ldv_33414:
  R[0] = RData[i];
  R[1] = (unsigned int )RData[i + 1] + (unsigned int )((Byte_t )ChanNum) * 16U;
  R[2] = RData[i + 2];
  R[3] = RData[i + 3];
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& R));
  i = i + 4;
  ldv_33415: ;
  if (i <= 71) {
    goto ldv_33414;
  } else {
  }
  ChR = (Byte_t *)(& ChP->R);
  i = 0;
  goto ldv_33418;
  ldv_33417:
  *(ChR + (unsigned long )i) = RRegData[i];
  *(ChR + ((unsigned long )i + 1UL)) = (unsigned int )RRegData[i + 1] + (unsigned int )((Byte_t )ChanNum) * 16U;
  *(ChR + ((unsigned long )i + 2UL)) = RRegData[i + 2];
  *(ChR + ((unsigned long )i + 3UL)) = RRegData[i + 3];
  i = i + 4;
  ldv_33418: ;
  if (i <= 51) {
    goto ldv_33417;
  } else {
  }
  ChOff = (unsigned int )ChanNum * 4096U;
  if (sClockPrescale == 20) {
    brd9600 = 47;
  } else {
    brd9600 = 23;
  }
  ChP->BaudDiv[0] = (unsigned int )((unsigned char )ChOff) + 244U;
  ChP->BaudDiv[1] = (unsigned char )((ChOff + 4084U) >> 8);
  ChP->BaudDiv[2] = (unsigned char )brd9600;
  ChP->BaudDiv[3] = (unsigned char )(brd9600 >> 8);
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->BaudDiv));
  ChP->TxControl[0] = (unsigned int )((unsigned char )ChOff) + 240U;
  ChP->TxControl[1] = (unsigned char )((ChOff + 4080U) >> 8);
  ChP->TxControl[2] = 0U;
  ChP->TxControl[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxControl));
  ChP->RxControl[0] = (unsigned int )((unsigned char )ChOff) + 242U;
  ChP->RxControl[1] = (unsigned char )((ChOff + 4082U) >> 8);
  ChP->RxControl[2] = 0U;
  ChP->RxControl[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->RxControl));
  ChP->TxEnables[0] = (unsigned int )((unsigned char )ChOff) + 128U;
  ChP->TxEnables[1] = (unsigned char )((ChOff + 2432U) >> 8);
  ChP->TxEnables[2] = 0U;
  ChP->TxEnables[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxEnables));
  ChP->TxCompare[0] = (unsigned int )((unsigned char )ChOff) + 136U;
  ChP->TxCompare[1] = (unsigned char )((ChOff + 2440U) >> 8);
  ChP->TxCompare[2] = 0U;
  ChP->TxCompare[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxCompare));
  ChP->TxReplace1[0] = (unsigned int )((unsigned char )ChOff) + 138U;
  ChP->TxReplace1[1] = (unsigned char )((ChOff + 2442U) >> 8);
  ChP->TxReplace1[2] = 0U;
  ChP->TxReplace1[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxReplace1));
  ChP->TxReplace2[0] = (unsigned int )((unsigned char )ChOff) + 140U;
  ChP->TxReplace2[1] = (unsigned char )((ChOff + 2444U) >> 8);
  ChP->TxReplace2[2] = 0U;
  ChP->TxReplace2[3] = 0U;
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxReplace2));
  ChP->TxFIFOPtrs = ChOff + 2452U;
  ChP->TxFIFO = ChOff + 2048U;
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned int )((unsigned char )ChanNum) | 16U));
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned char )ChanNum));
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->TxFIFOPtrs));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  ChP->RxFIFOPtrs = ChOff + 2448U;
  ChP->RxFIFO = ChOff;
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned int )((unsigned char )ChanNum) | 8U));
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned char )ChanNum));
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->RxFIFOPtrs));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned int )((unsigned short )ChP->RxFIFOPtrs) + 2U));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  ChP->TxPrioCnt = ChOff + 2454U;
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->TxPrioCnt));
  sOutB((int )((unsigned short )ChP->IndexData), 0);
  ChP->TxPrioPtr = ChOff + 2455U;
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->TxPrioPtr));
  sOutB((int )((unsigned short )ChP->IndexData), 0);
  ChP->TxPrioBuf = ChOff + 2496U;
  ChP->RxControl[2] = (Byte_t )((unsigned int )ChP->RxControl[2] | 32U);
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->RxControl));
  return (1);
}
}
static void sStopRxProcessor(CHANNEL_T *ChP )
{
  Byte_t R[4U] ;
  {
  R[0] = ChP->R[0];
  R[1] = ChP->R[1];
  R[2] = 10U;
  R[3] = ChP->R[3];
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& R));
  return;
}
}
static void sFlushRxFIFO(CHANNEL_T *ChP )
{
  int i ;
  Byte_t Ch ;
  int RxFIFOEnabled ;
  unsigned short tmp ;
  {
  tmp = sInW((int )((unsigned short )ChP->TxRxCount));
  if ((unsigned int )tmp == 0U) {
    return;
  } else {
  }
  RxFIFOEnabled = 0;
  if ((unsigned int )ChP->R[50] == 8U) {
    RxFIFOEnabled = 1;
    ChP->R[50] = 10U;
    out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->R) + 48UL);
    i = 0;
    goto ldv_33431;
    ldv_33430:
    sInB((int )((unsigned short )ChP->IntChan));
    i = i + 1;
    ldv_33431: ;
    if (i <= 9) {
      goto ldv_33430;
    } else {
    }
  } else {
  }
  sInW((int )((unsigned short )ChP->ChanStat));
  Ch = (unsigned char )ChP->ChanNum;
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned int )Ch | 8U));
  sOutB((int )((unsigned short )ChP->Cmd), (int )Ch);
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->RxFIFOPtrs));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned int )((unsigned short )ChP->RxFIFOPtrs) + 2U));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  if (RxFIFOEnabled != 0) {
    ChP->R[50] = 8U;
    out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->R) + 48UL);
  } else {
  }
  return;
}
}
static void sFlushTxFIFO(CHANNEL_T *ChP )
{
  int i ;
  Byte_t Ch ;
  int TxEnabled ;
  unsigned char tmp ;
  {
  tmp = sInB((int )((unsigned short )ChP->TxRxCount));
  if ((unsigned int )tmp == 0U) {
    return;
  } else {
  }
  TxEnabled = 0;
  if ((int )ChP->TxControl[3] & 1) {
    TxEnabled = 1;
    ChP->TxControl[3] = (unsigned int )ChP->TxControl[3] & 254U;
    out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxControl));
  } else {
  }
  sStopRxProcessor(ChP);
  i = 0;
  goto ldv_33440;
  ldv_33439:
  sInB((int )((unsigned short )ChP->IntChan));
  i = i + 1;
  ldv_33440: ;
  if (i <= 19) {
    goto ldv_33439;
  } else {
  }
  Ch = (unsigned char )ChP->ChanNum;
  sOutB((int )((unsigned short )ChP->Cmd), (int )((unsigned int )Ch | 16U));
  sOutB((int )((unsigned short )ChP->Cmd), (int )Ch);
  sOutW((int )((unsigned short )ChP->IndexAddr), (int )((unsigned short )ChP->TxFIFOPtrs));
  sOutW((int )((unsigned short )ChP->IndexData), 0);
  if (TxEnabled != 0) {
    ChP->TxControl[3] = (Byte_t )((unsigned int )ChP->TxControl[3] | 1U);
    out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxControl));
  } else {
  }
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->R));
  return;
}
}
static int sWriteTxPrioByte(CHANNEL_T *ChP , Byte_t Data )
{
  Byte_t DWBuf[4U] ;
  Word_t *WordPtr ;
  register DWordIO_t IndexAddr ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  tmp___0 = sInB((int )((unsigned short )ChP->TxRxCount));
  if ((unsigned int )tmp___0 > 1U) {
    IndexAddr = ChP->IndexAddr;
    sOutW((int )((unsigned short )IndexAddr), (int )((unsigned short )ChP->TxPrioCnt));
    tmp = sInB((int )((unsigned short )ChP->IndexData));
    if ((int )((signed char )tmp) < 0) {
      return (0);
    } else {
    }
    WordPtr = (Word_t *)(& DWBuf);
    *WordPtr = ChP->TxPrioBuf;
    DWBuf[2] = Data;
    out32((int )((unsigned short )IndexAddr), (Byte_t *)(& DWBuf));
    *WordPtr = ChP->TxPrioCnt;
    DWBuf[2] = 129U;
    DWBuf[3] = 0U;
    out32((int )((unsigned short )IndexAddr), (Byte_t *)(& DWBuf));
  } else {
    sOutB((int )((unsigned short )ChP->TxRxData), (int )Data);
  }
  return (1);
}
}
static void sEnInterrupts(CHANNEL_T *ChP , Word_t Flags )
{
  Byte_t Mask ;
  unsigned char tmp ;
  {
  ChP->RxControl[2] = (Byte_t )((int )((signed char )ChP->RxControl[2]) | ((int )((signed char )Flags) & 7));
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->RxControl));
  ChP->TxControl[2] = (Byte_t )((int )((signed char )ChP->TxControl[2]) | ((int )((signed char )Flags) & 16));
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxControl));
  if ((Flags & 256U) != 0U) {
    tmp = sInB((int )((unsigned short )ChP->IntMask));
    Mask = (Byte_t )((int )tmp | (int )sBitMapSetTbl[ChP->ChanNum]);
    sOutB((int )((unsigned short )ChP->IntMask), (int )Mask);
  } else {
  }
  return;
}
}
static void sDisInterrupts(CHANNEL_T *ChP , Word_t Flags )
{
  Byte_t Mask ;
  unsigned char tmp ;
  {
  ChP->RxControl[2] = (Byte_t )((int )((signed char )ChP->RxControl[2]) & (int )((signed char )(~ ((unsigned int )((unsigned char )Flags) & 7U))));
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->RxControl));
  ChP->TxControl[2] = (Byte_t )((int )((signed char )ChP->TxControl[2]) & (int )((signed char )(~ ((unsigned int )((unsigned char )Flags) & 16U))));
  out32((int )((unsigned short )ChP->IndexAddr), (Byte_t *)(& ChP->TxControl));
  if ((Flags & 256U) != 0U) {
    tmp = sInB((int )((unsigned short )ChP->IntMask));
    Mask = (Byte_t )((int )tmp & (int )sBitMapClrTbl[ChP->ChanNum]);
    sOutB((int )((unsigned short )ChP->IntMask), (int )Mask);
  } else {
  }
  return;
}
}
static void sSetInterfaceMode(CHANNEL_T *ChP , Byte_t mode )
{
  {
  sOutB((int )((unsigned short )(ChP->CtlP)->AiopIO[2]), (int )((unsigned char )(((int )((signed char )mode) & 24) | (int )((signed char )ChP->ChanNum))));
  return;
}
}
static void sModemReset(CONTROLLER_T *CtlP , int chan , int on )
{
  ByteIO_t addr ;
  Byte_t val ;
  {
  addr = CtlP->AiopIO[0] + 1024U;
  val = sInB((int )((unsigned short )CtlP->MReg3IO));
  if (((int )val & 2) == 0) {
    val = sInB((int )((unsigned short )CtlP->MReg2IO));
    sOutB((int )((unsigned short )CtlP->MReg2IO), (int )((unsigned char )(((int )((signed char )val) & -4) | 1)));
    sOutB((int )((unsigned short )CtlP->MBaseIO), (int )((unsigned char )(addr >> 6)));
  } else {
  }
  CtlP->MReg3 = (Byte_t )((int )CtlP->MReg3 | (int )sBitMapSetTbl[1]);
  sOutB((int )((unsigned short )CtlP->MReg3IO), (int )CtlP->MReg3);
  if (on == 0) {
    addr = addr + 8U;
  } else {
  }
  sOutB((int )((unsigned short )addr) + (int )((unsigned short )chan), 0);
  CtlP->MReg3 = (Byte_t )((int )CtlP->MReg3 & (int )sBitMapClrTbl[1]);
  sOutB((int )((unsigned short )CtlP->MReg3IO), (int )CtlP->MReg3);
  return;
}
}
static void sPCIModemReset(CONTROLLER_T *CtlP , int chan , int on )
{
  ByteIO_t addr ;
  {
  addr = CtlP->AiopIO[0] + 64U;
  if (on == 0) {
    addr = addr + 8U;
  } else {
  }
  sOutB((int )((unsigned short )addr) + (int )((unsigned short )chan), 0);
  return;
}
}
static unsigned char GetLineNumber(int ctrl , int aiop , int ch )
{
  {
  return (lineNumbers[((ctrl << 5) | (aiop << 3)) | ch]);
}
}
static unsigned char SetLineNumber(int ctrl , int aiop , int ch )
{
  unsigned long tmp ;
  {
  tmp = nextLineNumber;
  nextLineNumber = nextLineNumber + 1UL;
  lineNumbers[((ctrl << 5) | (aiop << 3)) | ch] = (unsigned char )tmp;
  return ((unsigned int )((unsigned char )nextLineNumber) - 1U);
}
}
extern int ldv_shutdown_1(void) ;
int ldv_retval_2 ;
extern int ldv_destruct_1(void) ;
int ldv_retval_0 ;
extern int ldv_activate_1(void) ;
int ldv_retval_1 ;
extern int ldv_release_2(void) ;
extern int ldv_disconnect_2(void) ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_setup_2(void) ;
void ldv_initialize_tty_operations_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(512UL);
  rocket_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(1752UL);
  rocket_ops_group1 = (struct tty_struct *)tmp___0;
  return;
}
}
void ldv_tty_port_operations_1(void)
{
  {
  rocket_port_ops_group1 = ldv_zalloc(1064UL);
  return;
}
}
int main(void)
{
  struct tty_port *ldvarg1 ;
  void *tmp ;
  struct tty_port *ldvarg0 ;
  void *tmp___0 ;
  int ldvarg2 ;
  int tmp___1 ;
  unsigned long ldvarg3 ;
  unsigned long tmp___2 ;
  unsigned int ldvarg11 ;
  unsigned int tmp___3 ;
  unsigned char *ldvarg7 ;
  void *tmp___4 ;
  struct ktermios *ldvarg12 ;
  void *tmp___5 ;
  int ldvarg5 ;
  int tmp___6 ;
  int ldvarg6 ;
  int tmp___7 ;
  unsigned int ldvarg8 ;
  unsigned int tmp___8 ;
  unsigned char ldvarg14 ;
  unsigned char tmp___9 ;
  int ldvarg4 ;
  int tmp___10 ;
  char ldvarg13 ;
  char tmp___11 ;
  unsigned long ldvarg10 ;
  unsigned long tmp___12 ;
  unsigned int ldvarg9 ;
  unsigned int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  tmp = ldv_zalloc(1064UL);
  ldvarg1 = (struct tty_port *)tmp;
  tmp___0 = ldv_zalloc(1064UL);
  ldvarg0 = (struct tty_port *)tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___1;
  tmp___2 = __VERIFIER_nondet_ulong();
  ldvarg3 = tmp___2;
  tmp___3 = __VERIFIER_nondet_uint();
  ldvarg11 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg7 = (unsigned char *)tmp___4;
  tmp___5 = ldv_zalloc(44UL);
  ldvarg12 = (struct ktermios *)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  ldvarg5 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg6 = tmp___7;
  tmp___8 = __VERIFIER_nondet_uint();
  ldvarg8 = tmp___8;
  tmp___9 = __VERIFIER_nondet_uchar();
  ldvarg14 = tmp___9;
  tmp___10 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___10;
  tmp___11 = __VERIFIER_nondet_char();
  ldvarg13 = tmp___11;
  tmp___12 = __VERIFIER_nondet_ulong();
  ldvarg10 = tmp___12;
  tmp___13 = __VERIFIER_nondet_uint();
  ldvarg9 = tmp___13;
  ldv_initialize();
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_33584:
  tmp___14 = __VERIFIER_nondet_int();
  switch (tmp___14) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      dtr_rts(ldvarg1, ldvarg2);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      dtr_rts(ldvarg1, ldvarg2);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      dtr_rts(ldvarg1, ldvarg2);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_33541;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      carrier_raised(ldvarg0);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      carrier_raised(ldvarg0);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      carrier_raised(ldvarg0);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_33541;
    case 2: ;
    if (ldv_state_variable_1 == 1) {
      ldv_destruct_1();
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_33541;
    case 3: ;
    if (ldv_state_variable_1 == 3) {
      ldv_shutdown_1();
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33541;
    case 4: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = ldv_activate_1();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33541;
    default:
    ldv_stop();
    }
    ldv_33541: ;
  } else {
  }
  goto ldv_33547;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      rp_cleanup_module();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33551;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = rp_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_initialize_tty_operations_2();
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_tty_port_operations_1();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33551;
    default:
    ldv_stop();
    }
    ldv_33551: ;
  } else {
  }
  goto ldv_33547;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      rp_do_poll(ldvarg3);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_33556;
    default:
    ldv_stop();
    }
    ldv_33556: ;
  } else {
  }
  goto ldv_33547;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_2 == 3) {
      rp_start(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 1: ;
    if (ldv_state_variable_2 == 4) {
      rp_throttle(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_throttle(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_throttle(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_throttle(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_throttle(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 2: ;
    if (ldv_state_variable_2 == 4) {
      rp_put_char(rocket_ops_group1, (int )ldvarg14);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_put_char(rocket_ops_group1, (int )ldvarg14);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_put_char(rocket_ops_group1, (int )ldvarg14);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_put_char(rocket_ops_group1, (int )ldvarg14);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_put_char(rocket_ops_group1, (int )ldvarg14);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 3: ;
    if (ldv_state_variable_2 == 4) {
      rp_send_xchar(rocket_ops_group1, (int )ldvarg13);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_send_xchar(rocket_ops_group1, (int )ldvarg13);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_send_xchar(rocket_ops_group1, (int )ldvarg13);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_send_xchar(rocket_ops_group1, (int )ldvarg13);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_send_xchar(rocket_ops_group1, (int )ldvarg13);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 4: ;
    if (ldv_state_variable_2 == 4) {
      rp_hangup(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_hangup(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_hangup(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_hangup(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_hangup(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 5: ;
    if (ldv_state_variable_2 == 4) {
      rp_unthrottle(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_unthrottle(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_unthrottle(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_unthrottle(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_unthrottle(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 6: ;
    if (ldv_state_variable_2 == 2) {
      ldv_retval_2 = rp_open(rocket_ops_group1, rocket_ops_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 3;
      } else {
      }
    } else {
    }
    goto ldv_33560;
    case 7: ;
    if (ldv_state_variable_2 == 4) {
      rp_set_termios(rocket_ops_group1, ldvarg12);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_set_termios(rocket_ops_group1, ldvarg12);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_set_termios(rocket_ops_group1, ldvarg12);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_set_termios(rocket_ops_group1, ldvarg12);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_set_termios(rocket_ops_group1, ldvarg12);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 8: ;
    if (ldv_state_variable_2 == 4) {
      rp_flush_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_flush_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_flush_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_flush_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_flush_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 9: ;
    if (ldv_state_variable_2 == 4) {
      rp_ioctl(rocket_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_ioctl(rocket_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_ioctl(rocket_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_ioctl(rocket_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_ioctl(rocket_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 10: ;
    if (ldv_state_variable_2 == 5) {
      rp_stop(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    goto ldv_33560;
    case 11: ;
    if (ldv_state_variable_2 == 4) {
      rp_tiocmset(rocket_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_tiocmset(rocket_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_tiocmset(rocket_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_tiocmset(rocket_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_tiocmset(rocket_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 12: ;
    if (ldv_state_variable_2 == 5) {
      rp_write(rocket_ops_group1, (unsigned char const *)ldvarg7, ldvarg6);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 13: ;
    if (ldv_state_variable_2 == 3) {
      rp_close(rocket_ops_group1, rocket_ops_group0);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_33560;
    case 14: ;
    if (ldv_state_variable_2 == 4) {
      rp_write_room(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_write_room(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_write_room(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_write_room(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_write_room(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 15: ;
    if (ldv_state_variable_2 == 4) {
      rp_break(rocket_ops_group1, ldvarg5);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_break(rocket_ops_group1, ldvarg5);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_break(rocket_ops_group1, ldvarg5);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_break(rocket_ops_group1, ldvarg5);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_break(rocket_ops_group1, ldvarg5);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 16: ;
    if (ldv_state_variable_2 == 4) {
      rp_chars_in_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_chars_in_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_chars_in_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_chars_in_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_chars_in_buffer(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 17: ;
    if (ldv_state_variable_2 == 4) {
      rp_tiocmget(rocket_ops_group1);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_tiocmget(rocket_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_tiocmget(rocket_ops_group1);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_tiocmget(rocket_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_tiocmget(rocket_ops_group1);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 18: ;
    if (ldv_state_variable_2 == 4) {
      rp_wait_until_sent(rocket_ops_group1, ldvarg4);
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 1) {
      rp_wait_until_sent(rocket_ops_group1, ldvarg4);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 3) {
      rp_wait_until_sent(rocket_ops_group1, ldvarg4);
      ldv_state_variable_2 = 3;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      rp_wait_until_sent(rocket_ops_group1, ldvarg4);
      ldv_state_variable_2 = 2;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      rp_wait_until_sent(rocket_ops_group1, ldvarg4);
      ldv_state_variable_2 = 5;
    } else {
    }
    goto ldv_33560;
    case 19: ;
    if (ldv_state_variable_2 == 3) {
      ldv_disconnect_2();
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      ldv_disconnect_2();
      ldv_state_variable_2 = 4;
    } else {
    }
    if (ldv_state_variable_2 == 5) {
      ldv_disconnect_2();
      ldv_state_variable_2 = 4;
    } else {
    }
    goto ldv_33560;
    case 20: ;
    if (ldv_state_variable_2 == 4) {
      ldv_release_2();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33560;
    case 21: ;
    if (ldv_state_variable_2 == 1) {
      ldv_setup_2();
      ldv_state_variable_2 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_33560;
    default:
    ldv_stop();
    }
    ldv_33560: ;
  } else {
  }
  goto ldv_33547;
  default:
  ldv_stop();
  }
  ldv_33547: ;
  goto ldv_33584;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_4(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_7(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void *ldv_malloc(size_t size ) ;
unsigned long ldv___get_free_pages_20(gfp_t flags , unsigned int ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __get_free_pages(flags, ldv_func_arg2);
  return (tmp);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return ldv_malloc(sizeof(struct tty_driver));
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
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete_all(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int ldv_activate_1() {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_destruct_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_2() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_setup_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_1() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
const struct pci_device_id *pci_match_id(const struct pci_device_id *arg0, struct pci_dev *arg1) {
  return ldv_malloc(sizeof(struct pci_device_id));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_tty_driver(struct tty_driver *arg0) {
  return;
}
void tty_encode_baud_rate(struct tty_struct *arg0, speed_t arg1, speed_t arg2) {
  return;
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_flags(struct tty_port *arg0, const unsigned char *arg1, const char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_kref_put(struct tty_struct *arg0) {
  return;
}
void tty_ldisc_flush(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_port_block_til_ready(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_port_close_start(struct tty_port *arg0, struct tty_struct *arg1, struct file *arg2) {
  return __VERIFIER_nondet_int();
}
void tty_port_destroy(struct tty_port *arg0) {
  return;
}
void tty_port_hangup(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
struct device *tty_port_register_device(struct tty_port *arg0, struct tty_driver *arg1, unsigned int arg2, struct device *arg3) {
  return ldv_malloc(sizeof(struct device));
}
struct tty_struct *tty_port_tty_get(struct tty_port *arg0) {
  return ldv_malloc(sizeof(struct tty_struct));
}
void tty_port_tty_hangup(struct tty_port *arg0, bool arg1) {
  return;
}
void tty_port_tty_set(struct tty_port *arg0, struct tty_struct *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_prepare_flip_string(struct tty_port *arg0, unsigned char **arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
speed_t tty_termios_baud_rate(struct ktermios *arg0) {
  return __VERIFIER_nondet_uint();
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_wakeup(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wait_for_completion_interruptible(struct completion *arg0) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
