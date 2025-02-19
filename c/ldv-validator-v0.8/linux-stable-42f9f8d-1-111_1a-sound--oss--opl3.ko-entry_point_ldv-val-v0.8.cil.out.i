extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef unsigned short umode_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
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
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct task_struct;
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
typedef void (*ctor_fn_t)(void);
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
union __anonunion____missing_field_name_8 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_11 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_11 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
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
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField6 ;
   struct __anonstruct____missing_field_name_16 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField8 ;
};
struct thread_struct;
struct cpumask;
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
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
struct __anonstruct____missing_field_name_20 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_21 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_19 {
   struct __anonstruct____missing_field_name_20 __annonCompField11 ;
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
};
union __anonunion____missing_field_name_22 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_19 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_22 __annonCompField14 ;
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
   unsigned long trap_no ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_24 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_24 mm_segment_t;
struct timespec;
struct compat_timespec;
struct __anonstruct____missing_field_name_26 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_27 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_28 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_29 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_25 {
   struct __anonstruct____missing_field_name_26 __annonCompField16 ;
   struct __anonstruct_futex_27 futex ;
   struct __anonstruct_nanosleep_28 nanosleep ;
   struct __anonstruct_poll_29 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_25 __annonCompField17 ;
};
typedef atomic64_t atomic_long_t;
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
   int uaccess_err ;
};
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_arch_rwlock_t_30 {
   unsigned int lock ;
};
typedef struct __anonstruct_arch_rwlock_t_30 arch_rwlock_t;
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
struct __anonstruct____missing_field_name_32 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_32 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_31 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_33 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_33 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
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
struct __anonstruct_nodemask_t_35 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_35 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
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
typedef long rwsem_count_t;
struct rw_semaphore {
   rwsem_count_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct __anonstruct_mm_context_t_100 {
   void *ldt ;
   int size ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_100 mm_context_t;
struct vm_area_struct;
struct key;
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
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void const *(*current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
};
struct attribute {
   char const *name ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_109 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion____missing_field_name_109 __annonCompField20 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   unsigned int elemsize ;
   void *elem ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
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
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_tracepoints ;
   char const **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
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
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int stat[18U] ;
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
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   unsigned long min_partial ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_110 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
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
   union __anonunion_d_u_110 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
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
   struct rcu_head rcu ;
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
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
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
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
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
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
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
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_113 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_112 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_113 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_112 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   void (*sync_page)(struct page * ) ;
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
   int (*migratepage)(struct address_space * , struct page * , struct page * ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   spinlock_t i_mmap_lock ;
   unsigned int truncate_count ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
   struct mutex unmap_mutex ;
};
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   int bd_openers ;
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
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_114 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_115 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   uid_t i_uid ;
   gid_t i_gid ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   spinlock_t i_lock ;
   unsigned int i_flags ;
   struct mutex i_mutex ;
   unsigned long i_state ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_114 __annonCompField21 ;
   unsigned long i_ino ;
   atomic_t i_count ;
   unsigned int i_nlink ;
   dev_t i_rdev ;
   unsigned int i_blkbits ;
   u64 i_version ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   blkcnt_t i_blocks ;
   unsigned short i_bytes ;
   struct rw_semaphore i_alloc_sem ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space *i_mapping ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_115 __annonCompField22 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   unsigned int i_readcount ;
   atomic_t i_writecount ;
   void *i_security ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
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
union __anonunion_f_u_116 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_116 f_u ;
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
   int (*fl_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*fl_notify)(struct file_lock * ) ;
   int (*fl_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*fl_release_private)(struct file_lock * ) ;
   void (*fl_break)(struct file_lock * ) ;
   int (*fl_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_118 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_117 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_118 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned char fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_117 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
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
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct list_head s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   void *s_fs_info ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
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
   int (*fsync)(struct file * , int ) ;
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
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int , unsigned int ) ;
   int (*check_acl)(struct inode * , int , unsigned int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , int , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , int ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , int , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct vfsmount * ) ;
   int (*show_stats)(struct seq_file * , struct vfsmount * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   int (*get_sb)(struct file_system_type * , int , char const * , void * , struct vfsmount * ) ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct list_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
   struct lock_class_key i_alloc_sem_key ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct____missing_field_name_136 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion____missing_field_name_135 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_136 __annonCompField33 ;
};
struct __anonstruct____missing_field_name_138 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion____missing_field_name_137 {
   struct __anonstruct____missing_field_name_138 __annonCompField35 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion____missing_field_name_139 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion____missing_field_name_135 __annonCompField34 ;
   union __anonunion____missing_field_name_137 __annonCompField36 ;
   union __anonunion____missing_field_name_139 __annonCompField37 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_141 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_140 {
   struct __anonstruct_vm_set_141 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
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
   union __anonunion_shared_140 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   unsigned long vm_truncate_count ;
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
   unsigned long count[3U] ;
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
   struct rw_semaphore mmap_sem ;
   spinlock_t page_table_lock ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
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
   cpumask_t cpu_vm_mask ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   atomic_t oom_disable_count ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sem_undo_list {
   atomic_t refcnt ;
   spinlock_t lock ;
   struct list_head list_proc ;
};
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_142 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_142 sigset_t;
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
struct __anonstruct__kill_144 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_145 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_146 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_147 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_148 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_149 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_143 {
   int _pad[28U] ;
   struct __anonstruct__kill_144 _kill ;
   struct __anonstruct__timer_145 _timer ;
   struct __anonstruct__rt_146 _rt ;
   struct __anonstruct__sigchld_147 _sigchld ;
   struct __anonstruct__sigfault_148 _sigfault ;
   struct __anonstruct__sigpoll_149 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_143 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct prop_local_single {
   unsigned long events ;
   unsigned long period ;
   int shift ;
   spinlock_t lock ;
};
struct __anonstruct_seccomp_t_152 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_152 seccomp_t;
struct plist_head {
   struct list_head prio_list ;
   struct list_head node_list ;
   raw_spinlock_t *rawlock ;
   spinlock_t *spinlock ;
};
struct plist_node {
   int prio ;
   struct plist_head plist ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
   clockid_t index ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   struct hrtimer_clock_base clock_base[2U] ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_155 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_156 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
};
union __anonunion_payload_157 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_155 __annonCompField40 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_156 type_data ;
   union __anonunion_payload_157 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
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
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct cfs_rq;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_158 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
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
   union __anonunion_ki_obj_158 ki_obj ;
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
   struct rcu_head rcu_head ;
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
   spinlock_t lock ;
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
   int oom_adj ;
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
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
   unsigned int bkl_count ;
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
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct rq * , struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct rq * , struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * , int ) ;
   void (*switched_to)(struct rq * , struct task_struct * , int ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int , int ) ;
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
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long bytes ;
   unsigned long memsw_bytes ;
};
struct irqaction;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   int lock_depth ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
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
   struct cred *replacement_session_keyring ;
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
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   struct irqaction *irqaction ;
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
   int mems_allowed_change_disable ;
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
   atomic_t fs_excl ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   struct prop_local_single dirties ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long key ;
};
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
};
typedef unsigned char sbi_instr_data[32U];
struct sbi_instrument {
   unsigned short key ;
   short device ;
   int channel ;
   sbi_instr_data operators ;
};
struct synth_info {
   char name[30U] ;
   int device ;
   int synth_type ;
   int synth_subtype ;
   int perc_mode ;
   int nr_voices ;
   int nr_drums ;
   int instr_bank_size ;
   unsigned int capabilities ;
   int dummies[19U] ;
};
struct voice_alloc_info {
   int max_voice ;
   int used_voices ;
   int ptr ;
   unsigned short map[32U] ;
   int timestamp ;
   int alloc_times[32U] ;
};
struct channel_info {
   int pgm_num ;
   int bender_value ;
   int bender_range ;
   unsigned char controllers[128U] ;
};
struct synth_operations {
   struct module *owner ;
   char *id ;
   struct synth_info *info ;
   int midi_dev ;
   int synth_type ;
   int synth_subtype ;
   int (*open)(int , int ) ;
   void (*close)(int ) ;
   int (*ioctl)(int , unsigned int , void * ) ;
   int (*kill_note)(int , int , int , int ) ;
   int (*start_note)(int , int , int , int ) ;
   int (*set_instr)(int , int , int ) ;
   void (*reset)(int ) ;
   void (*hw_control)(int , unsigned char * ) ;
   int (*load_patch)(int , int , char const * , int , int , int ) ;
   void (*aftertouch)(int , int , int ) ;
   void (*controller)(int , int , int , int ) ;
   void (*panning)(int , int , int ) ;
   void (*volume_method)(int , int ) ;
   void (*bender)(int , int , int ) ;
   int (*alloc_voice)(int , int , int , struct voice_alloc_info * ) ;
   void (*setup_voice)(int , int , int ) ;
   int (*send_sysex)(int , unsigned char * , int ) ;
   struct voice_alloc_info alloc ;
   struct channel_info chn_info[16U] ;
   int emulation ;
   unsigned char sysex_buf[64U] ;
   int sysex_ptr ;
};
struct physical_voice_info {
   unsigned char voice_num ;
   unsigned char voice_mode ;
   unsigned short ioaddr ;
   unsigned char op[4U] ;
};
struct voice_info {
   unsigned char keyon_byte ;
   long bender ;
   long bender_range ;
   unsigned long orig_freq ;
   unsigned long current_freq ;
   int volume ;
   int mode ;
   int panning ;
};
struct opl_devinfo {
   int base ;
   int left_io ;
   int right_io ;
   int nr_voice ;
   int lv_map[18U] ;
   struct voice_info voc[18U] ;
   struct voice_alloc_info *v_alloc ;
   struct channel_info *chn_info ;
   struct sbi_instrument i_map[256U] ;
   struct sbi_instrument *act_i[18U] ;
   struct synth_info fm_info ;
   int busy ;
   int model ;
   unsigned char cmask ;
   int is_opl4 ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void might_fault(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void __const_udelay(unsigned long ) ;
extern struct module __this_module ;
void ldv_check_len(long n ) ;
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
int ldv_state_variable_1 ;
int LDV_IN_INTERRUPT = 1;
int ref_cnt ;
int ldv_state_variable_0 ;
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
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
unsigned long ldv__copy_to_user_2(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                  unsigned int ldv_func_arg3 ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
unsigned long ldv__copy_from_user_1(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                    unsigned int ldv_func_arg3 ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect((long )(sz == -1 || (unsigned long )sz >= n), 1L);
  if (tmp___1 != 0L) {
    n = ldv__copy_from_user_1(to, from, (unsigned int )n);
  } else {
    __ret_warn_on = 1;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_fmt("/home/ldvuser/andrianov/commit-tester-work/task-034--linux-stable--dir/inst/current/envs/linux-stable-42f9f8d-1/linux-stable-42f9f8d-1/arch/x86/include/asm/uaccess_64.h",
                        58, "Buffer overflow detected!\n");
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (n);
}
}
__inline static unsigned long ldv_copy_from_user_7(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_7(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = ldv__copy_to_user_2(dst, src, size);
  return ((int )tmp);
}
}
extern long __copy_user_nocache(void * , void const * , unsigned int , int ) ;
long ldv___copy_user_nocache_3(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 ) ;
long ldv___copy_user_nocache_4(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 ) ;
extern void sequencer_init(void) ;
extern int note_to_freq(int ) ;
extern unsigned long compute_finetune(unsigned long , int , int , int ) ;
extern void conf_printf2(char * , int , int , int , int ) ;
extern struct synth_operations *synth_devs[11U] ;
extern void sound_unload_synthdev(int ) ;
extern int sound_alloc_synthdev(void) ;
static struct physical_voice_info pv_map[18U] =
  { {0U, 2U, 0U, {0U, 3U, 8U, 11U}},
        {1U, 2U, 0U, {1U, 4U, 9U, 12U}},
        {2U, 2U, 0U, {2U, 5U, 10U, 13U}},
        {3U, 2U, 0U, {8U, 11U, 0U, 0U}},
        {4U, 2U, 0U, {9U, 12U, 0U, 0U}},
        {5U, 2U, 0U, {10U, 13U, 0U, 0U}},
        {6U, 2U, 0U, {16U, 19U, 0U, 0U}},
        {7U, 2U, 0U, {17U, 20U, 0U, 0U}},
        {8U, 2U, 0U, {18U, 21U, 0U, 0U}},
        {0U, 2U, 1U, {0U, 3U, 8U, 11U}},
        {1U, 2U, 1U, {1U, 4U, 9U, 12U}},
        {2U, 2U, 1U, {2U, 5U, 10U, 13U}},
        {3U, 2U, 1U, {8U, 11U, 0U, 0U}},
        {4U, 2U, 1U, {9U, 12U, 0U, 0U}},
        {5U, 2U, 1U, {10U, 13U, 0U, 0U}},
        {6U, 2U, 1U, {16U, 19U, 0U, 0U}},
        {7U, 2U, 1U, {17U, 20U, 0U, 0U}},
        {8U, 2U, 1U, {18U, 21U, 0U, 0U}}};
static struct opl_devinfo *devc = (struct opl_devinfo *)0;
static int detected_model ;
static int store_instr(int instr_no , struct sbi_instrument *instr ) ;
static void freq_to_fnum(int freq , int *block , int *fnum ) ;
static void opl3_command(int io_addr , unsigned int addr , unsigned int val ) ;
static int opl3_kill_note(int devno , int voice , int note , int velocity ) ;
static void enter_4op_mode(void)
{
  int i ;
  int v4op[18U] ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  v4op[0] = 0;
  v4op[1] = 1;
  v4op[2] = 2;
  v4op[3] = 9;
  v4op[4] = 10;
  v4op[5] = 11;
  v4op[6] = 6;
  v4op[7] = 7;
  v4op[8] = 8;
  v4op[9] = 15;
  v4op[10] = 16;
  v4op[11] = 17;
  tmp = 12U;
  while (1) {
    if (tmp >= 18U) {
      break;
    } else {
    }
    v4op[tmp] = 0;
    tmp = tmp + 1U;
  }
  devc->cmask = 63U;
  opl3_command(devc->right_io, 4U, 63U);
  i = 0;
  goto ldv_26440;
  ldv_26439:
  pv_map[i].voice_mode = 4U;
  i = i + 1;
  ldv_26440: ;
  if (i <= 2) {
    goto ldv_26439;
  } else {
  }
  i = 3;
  goto ldv_26443;
  ldv_26442:
  pv_map[i].voice_mode = 0U;
  i = i + 1;
  ldv_26443: ;
  if (i <= 5) {
    goto ldv_26442;
  } else {
  }
  i = 9;
  goto ldv_26446;
  ldv_26445:
  pv_map[i].voice_mode = 4U;
  i = i + 1;
  ldv_26446: ;
  if (i <= 11) {
    goto ldv_26445;
  } else {
  }
  i = 12;
  goto ldv_26449;
  ldv_26448:
  pv_map[i].voice_mode = 0U;
  i = i + 1;
  ldv_26449: ;
  if (i <= 14) {
    goto ldv_26448;
  } else {
  }
  i = 0;
  goto ldv_26452;
  ldv_26451:
  devc->lv_map[i] = v4op[i];
  i = i + 1;
  ldv_26452: ;
  if (i <= 11) {
    goto ldv_26451;
  } else {
  }
  tmp___0 = 12;
  devc->nr_voice = tmp___0;
  (devc->v_alloc)->max_voice = tmp___0;
  return;
}
}
static int opl3_ioctl(int dev , unsigned int cmd , void *arg )
{
  struct sbi_instrument ins ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  switch (cmd) {
  case 1076384007U:
  printk("<4>Warning: Obsolete ioctl(SNDCTL_FM_LOAD_INSTR) used. Fix the program.\n");
  tmp = ldv_copy_from_user_7((void *)(& ins), (void const *)arg, 40UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (ins.channel < 0 || ins.channel > 255) {
    printk("<4>FM Error: Invalid instrument number %d\n", ins.channel);
    return (-22);
  } else {
  }
  tmp___0 = store_instr(ins.channel, & ins);
  return (tmp___0);
  case 3230421250U:
  devc->fm_info.nr_voices = devc->nr_voice != 12 ? devc->nr_voice : 6;
  tmp___1 = copy_to_user(arg, (void const *)(& devc->fm_info), 140U);
  if (tmp___1 != 0) {
    return (-14);
  } else {
  }
  return (0);
  case 3221508366U: ;
  return (2147483647);
  case 1074024719U: ;
  if (devc->model == 2) {
    enter_4op_mode();
  } else {
  }
  return (0);
  default: ;
  return (-22);
  }
}
}
static int opl3_detect(int ioaddr )
{
  unsigned char stat1 ;
  unsigned char signature ;
  int i ;
  void *tmp ;
  struct resource *tmp___0 ;
  unsigned char tmp___1 ;
  int tmp___2 ;
  unsigned char tmp___3 ;
  struct resource *tmp___4 ;
  {
  if ((unsigned long )devc != (unsigned long )((struct opl_devinfo *)0)) {
    printk("<3>opl3: Only one OPL3 supported.\n");
    return (0);
  } else {
  }
  tmp = kzalloc(11656UL, 208U);
  devc = (struct opl_devinfo *)tmp;
  if ((unsigned long )devc == (unsigned long )((struct opl_devinfo *)0)) {
    printk("<3>opl3: Can\'t allocate memory for the device control structure \n ");
    return (0);
  } else {
  }
  strcpy((char *)(& devc->fm_info.name), "OPL2");
  tmp___0 = __request_region(& ioport_resource, (resource_size_t )ioaddr, 4ULL, (char const *)(& devc->fm_info.name),
                             0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    printk("<4>opl3: I/O port 0x%x already in use\n", ioaddr);
    goto cleanup_devc;
  } else {
  }
  devc->base = ioaddr;
  opl3_command(ioaddr, 4U, 96U);
  opl3_command(ioaddr, 4U, 128U);
  stat1 = inb(ioaddr);
  signature = stat1;
  if ((((unsigned int )signature != 0U && (unsigned int )signature != 6U) && (unsigned int )signature != 2U) && (unsigned int )signature != 15U) {
    printk("<6>OPL3 not detected %x\n", (int )signature);
    goto cleanup_region;
  } else {
  }
  if ((unsigned int )signature == 6U) {
    detected_model = 2;
  } else
  if ((unsigned int )signature == 0U || (unsigned int )signature == 15U) {
    detected_model = 3;
    opl3_command(ioaddr + 2, 5U, 0U);
    opl3_command(ioaddr + 2, 5U, 3U);
    tmp___1 = inb(ioaddr);
    if ((unsigned int )tmp___1 == 2U) {
      detected_model = 4;
    } else {
    }
    tmp___4 = __request_region(& ioport_resource, (resource_size_t )(ioaddr + -8),
                               2ULL, "OPL4", 0);
    if ((unsigned long )tmp___4 != (unsigned long )((struct resource *)0)) {
      outb(2, ioaddr + -8);
      __const_udelay(42950UL);
      tmp___3 = inb(ioaddr + -7);
      tmp___2 = (int )tmp___3;
      __const_udelay(42950UL);
      if (tmp___2 == 32) {
        detected_model = 4;
        outb(248, ioaddr + -8);
        __const_udelay(42950UL);
        outb(27, ioaddr + -7);
        __const_udelay(42950UL);
      } else {
        __release_region(& ioport_resource, (resource_size_t )(ioaddr + -8), 2ULL);
        detected_model = 3;
      }
    } else {
    }
    opl3_command(ioaddr + 2, 5U, 0U);
  } else {
  }
  i = 0;
  goto ldv_26476;
  ldv_26475:
  opl3_command(ioaddr, (unsigned int )(i + 176), 0U);
  i = i + 1;
  ldv_26476: ;
  if (i <= 8) {
    goto ldv_26475;
  } else {
  }
  opl3_command(ioaddr, 1U, 32U);
  opl3_command(ioaddr, 189U, 0U);
  return (1);
  cleanup_region:
  __release_region(& ioport_resource, (resource_size_t )ioaddr, 4ULL);
  cleanup_devc:
  kfree((void const *)devc);
  devc = (struct opl_devinfo *)0;
  return (0);
}
}
static int opl3_kill_note(int devno , int voice , int note , int velocity )
{
  struct physical_voice_info *map ;
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return (0);
  } else {
  }
  (devc->v_alloc)->map[voice] = 0U;
  map = (struct physical_voice_info *)(& pv_map) + (unsigned long )devc->lv_map[voice];
  if ((unsigned int )map->voice_mode == 0U) {
    return (0);
  } else {
  }
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 176), (unsigned int )devc->voc[voice].keyon_byte & 4294967263U);
  devc->voc[voice].keyon_byte = 0U;
  devc->voc[voice].bender = 0L;
  devc->voc[voice].volume = 64;
  devc->voc[voice].panning = 65535;
  devc->voc[voice].bender_range = 200L;
  devc->voc[voice].orig_freq = 0UL;
  devc->voc[voice].current_freq = 0UL;
  devc->voc[voice].mode = 0;
  return (0);
}
}
static int store_instr(int instr_no , struct sbi_instrument *instr )
{
  size_t __len ;
  void *__ret ;
  {
  if ((unsigned int )instr->key != 509U && ((unsigned int )instr->key != 1021U || devc->model != 2)) {
    printk("<4>FM warning: Invalid patch format field (key) 0x%x\n", (int )instr->key);
  } else {
  }
  __len = 40UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& devc->i_map) + (unsigned long )instr_no, (void const *)instr,
                     __len);
  } else {
    __ret = memcpy((void *)(& devc->i_map) + (unsigned long )instr_no, (void const *)instr,
                             __len);
  }
  return (0);
}
}
static int opl3_set_instr(int dev , int voice , int instr_no )
{
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return (0);
  } else {
  }
  if (instr_no < 0 || instr_no > 255) {
    instr_no = 0;
  } else {
  }
  devc->act_i[voice] = (struct sbi_instrument *)(& devc->i_map) + (unsigned long )instr_no;
  return (0);
}
}
static char fm_volume_table[128U] =
  { -64, -48, -40, -35,
        -32, -29, -27, -26,
        -24, -23, -21, -20,
        -19, -18, -18, -17,
        -16, -15, -15, -14,
        -13, -13, -12, -12,
        -11, -11, -10, -10,
        -10, -9, -9, -8,
        -8, -8, -7, -7,
        -7, -6, -6, -6,
        -5, -5, -5, -5,
        -4, -4, -4, -4,
        -3, -3, -3, -3,
        -2, -2, -2, -2,
        -2, -1, -1, -1,
        -1, 0, 0, 0,
        0, 0, 0, 1,
        1, 1, 1, 1,
        1, 2, 2, 2,
        2, 2, 2, 2,
        3, 3, 3, 3,
        3, 3, 3, 4,
        4, 4, 4, 4,
        4, 4, 4, 5,
        5, 5, 5, 5,
        5, 5, 5, 5,
        6, 6, 6, 6,
        6, 6, 6, 6,
        6, 7, 7, 7,
        7, 7, 7, 7,
        7, 7, 7, 8,
        8, 8, 8, 8};
static void calc_vol(unsigned char *regbyte , int volume , int main_vol )
{
  int level ;
  {
  level = ~ ((int )*regbyte) & 63;
  if (main_vol > 127) {
    main_vol = 127;
  } else {
  }
  volume = (volume * main_vol) / 127;
  if (level != 0) {
    level = (int )fm_volume_table[volume] + level;
  } else {
  }
  if (level > 63) {
    level = 63;
  } else {
  }
  if (level < 0) {
    level = 0;
  } else {
  }
  *regbyte = (unsigned char )(((int )((signed char )*regbyte) & -64) | (~ ((int )((signed char )level)) & 63));
  return;
}
}
static void set_voice_volume(int voice , int volume , int main_vol )
{
  unsigned char vol1 ;
  unsigned char vol2 ;
  unsigned char vol3 ;
  unsigned char vol4 ;
  struct sbi_instrument *instr ;
  struct physical_voice_info *map ;
  int connection ;
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  map = (struct physical_voice_info *)(& pv_map) + (unsigned long )devc->lv_map[voice];
  instr = devc->act_i[voice];
  if ((unsigned long )instr == (unsigned long )((struct sbi_instrument *)0)) {
    instr = (struct sbi_instrument *)(& devc->i_map);
  } else {
  }
  if (instr->channel < 0) {
    return;
  } else {
  }
  if (devc->voc[voice].mode == 0) {
    return;
  } else {
  }
  if (devc->voc[voice].mode == 2) {
    vol1 = instr->operators[2];
    vol2 = instr->operators[3];
    if ((int )instr->operators[10] & 1) {
      calc_vol(& vol1, volume, main_vol);
      calc_vol(& vol2, volume, main_vol);
    } else {
      calc_vol(& vol2, volume, main_vol);
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 64), (unsigned int )vol1);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 64), (unsigned int )vol2);
  } else {
    vol1 = instr->operators[2];
    vol2 = instr->operators[3];
    vol3 = instr->operators[13];
    vol4 = instr->operators[14];
    connection = (((int )instr->operators[10] & 1) << 1) | ((int )instr->operators[21] & 1);
    switch (connection) {
    case 0:
    calc_vol(& vol4, volume, main_vol);
    goto ldv_26517;
    case 1:
    calc_vol(& vol2, volume, main_vol);
    calc_vol(& vol4, volume, main_vol);
    goto ldv_26517;
    case 2:
    calc_vol(& vol1, volume, main_vol);
    calc_vol(& vol4, volume, main_vol);
    goto ldv_26517;
    case 3:
    calc_vol(& vol1, volume, main_vol);
    calc_vol(& vol3, volume, main_vol);
    calc_vol(& vol4, volume, main_vol);
    goto ldv_26517;
    default: ;
    }
    ldv_26517:
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 64), (unsigned int )vol1);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 64), (unsigned int )vol2);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 64), (unsigned int )vol3);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 64), (unsigned int )vol4);
  }
  return;
}
}
static int opl3_start_note(int dev , int voice , int note , int volume )
{
  unsigned char data ;
  unsigned char fpc ;
  int block ;
  int fnum ;
  int freq ;
  int voice_mode ;
  int pan ;
  struct sbi_instrument *instr ;
  struct physical_voice_info *map ;
  int voice_shift ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return (0);
  } else {
  }
  map = (struct physical_voice_info *)(& pv_map) + (unsigned long )devc->lv_map[voice];
  pan = devc->voc[voice].panning;
  if ((unsigned int )map->voice_mode == 0U) {
    return (0);
  } else {
  }
  if (note == 255) {
    set_voice_volume(voice, volume, devc->voc[voice].volume);
    return (0);
  } else {
  }
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 64), 255U);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 64), 255U);
  if ((unsigned int )map->voice_mode == 4U) {
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 64), 255U);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 64), 255U);
  } else {
  }
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 176), 0U);
  instr = devc->act_i[voice];
  if ((unsigned long )instr == (unsigned long )((struct sbi_instrument *)0)) {
    instr = (struct sbi_instrument *)(& devc->i_map);
  } else {
  }
  if (instr->channel < 0) {
    printk("<4>opl3: Initializing voice %d with undefined instrument\n", voice);
    return (0);
  } else {
  }
  if ((unsigned int )map->voice_mode == 2U && (unsigned int )instr->key == 1021U) {
    return (0);
  } else {
  }
  voice_mode = (int )map->voice_mode;
  if (voice_mode == 4) {
    voice_shift = (int )map->ioaddr == devc->left_io ? 0 : 3;
    voice_shift = (int )map->voice_num + voice_shift;
    if ((unsigned int )instr->key != 1021U) {
      voice_mode = 2;
      devc->cmask = (unsigned char )((int )((signed char )devc->cmask) & ~ ((int )((signed char )(1 << voice_shift))));
    } else {
      devc->cmask = (unsigned char )((int )((signed char )devc->cmask) | (int )((signed char )(1 << voice_shift)));
    }
    opl3_command(devc->right_io, 4U, (unsigned int )devc->cmask);
  } else {
  }
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 32), (unsigned int )instr->operators[0]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 32), (unsigned int )instr->operators[1]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 96), (unsigned int )instr->operators[4]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 96), (unsigned int )instr->operators[5]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 128), (unsigned int )instr->operators[6]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 128), (unsigned int )instr->operators[7]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 224), (unsigned int )instr->operators[8]);
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 224), (unsigned int )instr->operators[9]);
  fpc = instr->operators[10];
  if (pan != 65535) {
    fpc = (unsigned int )fpc & 207U;
    if (pan < -64) {
      fpc = (unsigned int )fpc | 16U;
    } else
    if (pan > 64) {
      fpc = (unsigned int )fpc | 32U;
    } else {
      fpc = (unsigned int )fpc | 48U;
    }
  } else {
  }
  if (((int )fpc & 48) == 0) {
    fpc = (unsigned int )fpc | 48U;
  } else {
  }
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 192), (unsigned int )fpc);
  if (voice_mode == 4) {
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 32), (unsigned int )instr->operators[11]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 32), (unsigned int )instr->operators[12]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 96), (unsigned int )instr->operators[15]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 96), (unsigned int )instr->operators[16]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 128), (unsigned int )instr->operators[17]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 128), (unsigned int )instr->operators[18]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 224), (unsigned int )instr->operators[19]);
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 224), (unsigned int )instr->operators[20]);
    fpc = instr->operators[21];
    if (((int )fpc & 48) == 0) {
      fpc = (unsigned int )fpc | 48U;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 195), (unsigned int )fpc);
  } else {
  }
  devc->voc[voice].mode = voice_mode;
  set_voice_volume(voice, volume, devc->voc[voice].volume);
  tmp___0 = note_to_freq(note);
  tmp = (unsigned long )(tmp___0 / 1000);
  devc->voc[voice].orig_freq = tmp;
  freq = (int )tmp;
  tmp___1 = compute_finetune(devc->voc[voice].orig_freq, (int )devc->voc[voice].bender,
                             (int )devc->voc[voice].bender_range, 0);
  freq = (int )tmp___1;
  devc->voc[voice].current_freq = (unsigned long )freq;
  freq_to_fnum(freq, & block, & fnum);
  data = (unsigned char )fnum;
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 160), (unsigned int )data);
  data = (unsigned char )(((int )((signed char )((block & 7) << 2)) | 32) | ((int )((signed char )(fnum >> 8)) & 3));
  devc->voc[voice].keyon_byte = data;
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 176), (unsigned int )data);
  if (voice_mode == 4) {
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 179), (unsigned int )data);
  } else {
  }
  return (0);
}
}
static void freq_to_fnum(int freq , int *block , int *fnum )
{
  int f ;
  int octave ;
  {
  f = freq;
  octave = 5;
  if (f == 0) {
    octave = 0;
  } else
  if (f <= 260) {
    goto ldv_26546;
    ldv_26545:
    octave = octave - 1;
    f = f << 1;
    ldv_26546: ;
    if (f <= 260) {
      goto ldv_26545;
    } else {
    }
  } else
  if (f > 493) {
    goto ldv_26549;
    ldv_26548:
    octave = octave + 1;
    f = f >> 1;
    ldv_26549: ;
    if (f > 493) {
      goto ldv_26548;
    } else {
    }
  } else {
  }
  if (octave > 7) {
    octave = 7;
  } else {
  }
  *fnum = (freq << (20 - octave)) / 49716;
  *block = octave;
  return;
}
}
static void opl3_command(int io_addr , unsigned int addr , unsigned int val )
{
  int i ;
  {
  outb((int )((unsigned char )addr), io_addr);
  if (devc->model != 2) {
    __const_udelay(42950UL);
  } else {
    i = 0;
    goto ldv_26558;
    ldv_26557:
    inb(io_addr);
    i = i + 1;
    ldv_26558: ;
    if (i <= 1) {
      goto ldv_26557;
    } else {
    }
  }
  outb((int )((unsigned char )val), io_addr + 1);
  if (devc->model != 2) {
    __const_udelay(128850UL);
  } else {
    i = 0;
    goto ldv_26561;
    ldv_26560:
    inb(io_addr);
    i = i + 1;
    ldv_26561: ;
    if (i <= 1) {
      goto ldv_26560;
    } else {
    }
  }
  return;
}
}
static void opl3_reset(int devno )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_26568;
  ldv_26567:
  devc->lv_map[i] = i;
  i = i + 1;
  ldv_26568: ;
  if (i <= 17) {
    goto ldv_26567;
  } else {
  }
  i = 0;
  goto ldv_26571;
  ldv_26570:
  opl3_command((int )pv_map[devc->lv_map[i]].ioaddr, (unsigned int )((int )pv_map[devc->lv_map[i]].op[0] + 64),
               255U);
  opl3_command((int )pv_map[devc->lv_map[i]].ioaddr, (unsigned int )((int )pv_map[devc->lv_map[i]].op[1] + 64),
               255U);
  if ((unsigned int )pv_map[devc->lv_map[i]].voice_mode == 4U) {
    opl3_command((int )pv_map[devc->lv_map[i]].ioaddr, (unsigned int )((int )pv_map[devc->lv_map[i]].op[2] + 64),
                 255U);
    opl3_command((int )pv_map[devc->lv_map[i]].ioaddr, (unsigned int )((int )pv_map[devc->lv_map[i]].op[3] + 64),
                 255U);
  } else {
  }
  opl3_kill_note(devno, i, 0, 64);
  i = i + 1;
  ldv_26571: ;
  if (devc->nr_voice > i) {
    goto ldv_26570;
  } else {
  }
  if (devc->model == 2) {
    tmp = 18;
    devc->nr_voice = tmp;
    (devc->v_alloc)->max_voice = tmp;
    i = 0;
    goto ldv_26574;
    ldv_26573:
    pv_map[i].voice_mode = 2U;
    i = i + 1;
    ldv_26574: ;
    if (i <= 17) {
      goto ldv_26573;
    } else {
    }
  } else {
  }
  return;
}
}
static int opl3_open(int dev , int mode )
{
  int i ;
  int tmp ;
  {
  if (devc->busy != 0) {
    return (-16);
  } else {
  }
  devc->busy = 1;
  tmp = devc->model == 2 ? 18 : 9;
  devc->nr_voice = tmp;
  (devc->v_alloc)->max_voice = tmp;
  (devc->v_alloc)->timestamp = 0;
  i = 0;
  goto ldv_26582;
  ldv_26581:
  (devc->v_alloc)->map[i] = 0U;
  (devc->v_alloc)->alloc_times[i] = 0;
  i = i + 1;
  ldv_26582: ;
  if (i <= 17) {
    goto ldv_26581;
  } else {
  }
  devc->cmask = 0U;
  if (devc->model == 2) {
    opl3_command(devc->right_io, 4U, (unsigned int )devc->cmask);
  } else {
  }
  return (0);
}
}
static void opl3_close(int dev )
{
  int tmp ;
  {
  devc->busy = 0;
  tmp = devc->model == 2 ? 18 : 9;
  devc->nr_voice = tmp;
  (devc->v_alloc)->max_voice = tmp;
  devc->fm_info.nr_drums = 0;
  devc->fm_info.perc_mode = 0;
  opl3_reset(dev);
  return;
}
}
static void opl3_hw_control(int dev , unsigned char *event )
{
  {
  return;
}
}
static int opl3_load_patch(int dev , int format , char const *addr , int offs ,
                           int count , int pmgr_flag )
{
  struct sbi_instrument ins ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )count <= 39U) {
    printk("<4>FM Error: Patch record too short\n");
    return (-22);
  } else {
  }
  tmp = ldv_copy_from_user_7((void *)(& ins) + (unsigned long )offs, (void const *)addr + (unsigned long )offs,
                             40UL - (unsigned long )offs);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (ins.channel < 0 || ins.channel > 255) {
    printk("<4>FM Error: Invalid instrument number %d\n", ins.channel);
    return (-22);
  } else {
  }
  ins.key = (unsigned short )format;
  tmp___0 = store_instr(ins.channel, & ins);
  return (tmp___0);
}
}
static void opl3_panning(int dev , int voice , int value )
{
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  devc->voc[voice].panning = value;
  return;
}
}
static void opl3_volume_method(int dev , int mode )
{
  {
  return;
}
}
static void opl3_aftertouch(int dev , int voice , int pressure )
{
  int tmp ;
  struct sbi_instrument *instr ;
  struct physical_voice_info *map ;
  int connection ;
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  map = (struct physical_voice_info *)(& pv_map) + (unsigned long )devc->lv_map[voice];
  if ((unsigned int )map->voice_mode == 0U) {
    return;
  } else {
  }
  instr = devc->act_i[voice];
  if ((unsigned long )instr == (unsigned long )((struct sbi_instrument *)0)) {
    instr = (struct sbi_instrument *)(& devc->i_map);
  } else {
  }
  if (devc->voc[voice].mode == 4) {
    connection = (((int )instr->operators[10] & 1) << 1) | ((int )instr->operators[21] & 1);
    switch (connection) {
    case 0:
    tmp = (int )instr->operators[14];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 32), (unsigned int )tmp);
    goto ldv_26619;
    case 1:
    tmp = (int )instr->operators[1];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 32), (unsigned int )tmp);
    tmp = (int )instr->operators[14];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 32), (unsigned int )tmp);
    goto ldv_26619;
    case 2:
    tmp = (int )instr->operators[0];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 32), (unsigned int )tmp);
    tmp = (int )instr->operators[14];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 32), (unsigned int )tmp);
    goto ldv_26619;
    case 3:
    tmp = (int )instr->operators[0];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 32), (unsigned int )tmp);
    tmp = (int )instr->operators[13];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[2] + 32), (unsigned int )tmp);
    tmp = (int )instr->operators[14];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[3] + 32), (unsigned int )tmp);
    goto ldv_26619;
    }
    ldv_26619: ;
  } else {
    tmp = (int )instr->operators[0];
    if (pressure > 110) {
      tmp = tmp | 64;
    } else {
    }
    opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[0] + 32), (unsigned int )tmp);
    if ((int )instr->operators[10] & 1) {
      tmp = (int )instr->operators[1];
      if (pressure > 110) {
        tmp = tmp | 64;
      } else {
      }
      opl3_command((int )map->ioaddr, (unsigned int )((int )map->op[1] + 32), (unsigned int )tmp);
    } else {
    }
  }
  return;
}
}
static void bend_pitch(int dev , int voice , int value )
{
  unsigned char data ;
  int block ;
  int fnum ;
  int freq ;
  struct physical_voice_info *map ;
  unsigned long tmp ;
  {
  map = (struct physical_voice_info *)(& pv_map) + (unsigned long )devc->lv_map[voice];
  if ((unsigned int )map->voice_mode == 0U) {
    return;
  } else {
  }
  devc->voc[voice].bender = (long )value;
  if (value == 0) {
    return;
  } else {
  }
  if (((int )devc->voc[voice].keyon_byte & 32) == 0) {
    return;
  } else {
  }
  tmp = compute_finetune(devc->voc[voice].orig_freq, (int )devc->voc[voice].bender,
                         (int )devc->voc[voice].bender_range, 0);
  freq = (int )tmp;
  devc->voc[voice].current_freq = (unsigned long )freq;
  freq_to_fnum(freq, & block, & fnum);
  data = (unsigned char )fnum;
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 160), (unsigned int )data);
  data = (unsigned char )(((int )((signed char )((block & 7) << 2)) | 32) | ((int )((signed char )(fnum >> 8)) & 3));
  devc->voc[voice].keyon_byte = data;
  opl3_command((int )map->ioaddr, (unsigned int )((int )map->voice_num + 176), (unsigned int )data);
  return;
}
}
static void opl3_controller(int dev , int voice , int ctrl_num , int value )
{
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  switch (ctrl_num) {
  case 255:
  bend_pitch(dev, voice, value);
  goto ldv_26640;
  case 254:
  devc->voc[voice].bender_range = (long )value;
  goto ldv_26640;
  case 7:
  devc->voc[voice].volume = value / 128;
  goto ldv_26640;
  case 10:
  devc->voc[voice].panning = (value + -64) * 2;
  goto ldv_26640;
  }
  ldv_26640: ;
  return;
}
}
static void opl3_bender(int dev , int voice , int value )
{
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  bend_pitch(dev, voice, value + -8192);
  return;
}
}
static int opl3_alloc_voice(int dev , int chn , int note , struct voice_alloc_info *alloc )
{
  int i ;
  int p ;
  int best ;
  int first ;
  int avail ;
  int best_time ;
  struct sbi_instrument *instr ;
  int is4op ;
  int instr_no ;
  {
  best_time = 2147483647;
  if (chn < 0 || chn > 15) {
    instr_no = 0;
  } else {
    instr_no = (devc->chn_info + (unsigned long )chn)->pgm_num;
  }
  instr = (struct sbi_instrument *)(& devc->i_map) + (unsigned long )instr_no;
  if (instr->channel < 0 || devc->nr_voice != 12) {
    is4op = 0;
  } else
  if (devc->nr_voice == 12) {
    is4op = (unsigned int )instr->key == 1021U;
  } else {
    is4op = 0;
  }
  if (is4op != 0) {
    p = 0;
    first = p;
    avail = 6;
  } else {
    if (devc->nr_voice == 12) {
      p = 6;
      first = p;
    } else {
      p = 0;
      first = p;
    }
    avail = devc->nr_voice;
  }
  best = first;
  i = 0;
  goto ldv_26665;
  ldv_26664: ;
  if ((unsigned int )alloc->map[p] == 0U) {
    return (p);
  } else {
  }
  if (alloc->alloc_times[p] < best_time) {
    best_time = alloc->alloc_times[p];
    best = p;
  } else {
  }
  p = (p + 1) % avail;
  i = i + 1;
  ldv_26665: ;
  if (i < avail) {
    goto ldv_26664;
  } else {
  }
  if (best < 0) {
    best = 0;
  } else {
  }
  if (devc->nr_voice < best) {
    best = best - devc->nr_voice;
  } else {
  }
  return (best);
}
}
static void opl3_setup_voice(int dev , int voice , int chn )
{
  struct channel_info *info ;
  {
  if (voice < 0 || devc->nr_voice <= voice) {
    return;
  } else {
  }
  if (chn < 0 || chn > 15) {
    return;
  } else {
  }
  info = (struct channel_info *)(& (synth_devs[dev])->chn_info) + (unsigned long )chn;
  opl3_set_instr(dev, voice, info->pgm_num);
  devc->voc[voice].bender = 0L;
  devc->voc[voice].bender_range = (long )info->bender_range;
  devc->voc[voice].volume = (int )info->controllers[7];
  devc->voc[voice].panning = ((int )info->controllers[10] + -64) * 2;
  return;
}
}
static struct synth_operations opl3_operations =
     {& __this_module, (char *)"OPL", (struct synth_info *)0, 0, 0, 0, & opl3_open,
    & opl3_close, & opl3_ioctl, & opl3_kill_note, & opl3_start_note, & opl3_set_instr,
    & opl3_reset, & opl3_hw_control, & opl3_load_patch, & opl3_aftertouch, & opl3_controller,
    & opl3_panning, & opl3_volume_method, & opl3_bender, & opl3_alloc_voice, & opl3_setup_voice,
    0, {0, 0, 0, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
                  (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0},
        0, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0}}, {{0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}},
                                       {0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0}}},
    0, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0};
static int opl3_init(int ioaddr , struct module *owner )
{
  int i ;
  int me___0 ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )devc == (unsigned long )((struct opl_devinfo *)0)) {
    printk("<3>opl3: Device control structure not initialized.\n");
    return (-1);
  } else {
  }
  me___0 = sound_alloc_synthdev();
  if (me___0 == -1) {
    printk("<4>opl3: Too many synthesizers\n");
    return (-1);
  } else {
  }
  devc->nr_voice = 9;
  devc->fm_info.device = 0;
  devc->fm_info.synth_type = 0;
  devc->fm_info.synth_subtype = 0;
  devc->fm_info.perc_mode = 0;
  devc->fm_info.nr_voices = 9;
  devc->fm_info.nr_drums = 0;
  devc->fm_info.instr_bank_size = 256;
  devc->fm_info.capabilities = 0U;
  devc->left_io = ioaddr;
  devc->right_io = ioaddr + 2;
  if (detected_model <= 2) {
    devc->model = 1;
  } else {
    devc->model = 2;
    if (detected_model == 4) {
      devc->is_opl4 = 1;
    } else {
    }
  }
  opl3_operations.info = & devc->fm_info;
  synth_devs[me___0] = & opl3_operations;
  if ((unsigned long )owner != (unsigned long )((struct module *)0)) {
    (synth_devs[me___0])->owner = owner;
  } else {
  }
  sequencer_init();
  devc->v_alloc = & opl3_operations.alloc;
  devc->chn_info = (struct channel_info *)(& opl3_operations.chn_info);
  if (devc->model == 2) {
    if (devc->is_opl4 != 0) {
      strcpy((char *)(& devc->fm_info.name), "Yamaha OPL4/OPL3 FM");
    } else {
      strcpy((char *)(& devc->fm_info.name), "Yamaha OPL3");
    }
    tmp = 18;
    devc->nr_voice = tmp;
    (devc->v_alloc)->max_voice = tmp;
    devc->fm_info.nr_drums = 0;
    devc->fm_info.synth_subtype = 1;
    devc->fm_info.capabilities = devc->fm_info.capabilities | 2U;
    i = 0;
    goto ldv_26681;
    ldv_26680: ;
    if ((unsigned int )pv_map[i].ioaddr == 0U) {
      pv_map[i].ioaddr = (unsigned short )devc->left_io;
    } else {
      pv_map[i].ioaddr = (unsigned short )devc->right_io;
    }
    i = i + 1;
    ldv_26681: ;
    if (i <= 17) {
      goto ldv_26680;
    } else {
    }
    opl3_command(devc->right_io, 5U, 1U);
    opl3_command(devc->right_io, 4U, 0U);
  } else {
    strcpy((char *)(& devc->fm_info.name), "Yamaha OPL2");
    tmp___0 = 9;
    devc->nr_voice = tmp___0;
    (devc->v_alloc)->max_voice = tmp___0;
    devc->fm_info.nr_drums = 0;
    i = 0;
    goto ldv_26684;
    ldv_26683:
    pv_map[i].ioaddr = (unsigned short )devc->left_io;
    i = i + 1;
    ldv_26684: ;
    if (i <= 17) {
      goto ldv_26683;
    } else {
    }
  }
  conf_printf2((char *)(& devc->fm_info.name), ioaddr, 0, -1, -1);
  i = 0;
  goto ldv_26687;
  ldv_26686:
  devc->i_map[i].channel = -1;
  i = i + 1;
  ldv_26687: ;
  if (i <= 255) {
    goto ldv_26686;
  } else {
  }
  return (me___0);
}
}
static int me ;
static int io = 0;
static int init_opl3(void)
{
  int tmp ;
  {
  printk("<6>YM3812 and OPL-3 driver Copyright (C) by Hannu Savolainen, Rob Hooft 1993-1996\n");
  if (io != -1) {
    tmp = opl3_detect(io);
    if (tmp == 0) {
      return (-19);
    } else {
    }
    me = opl3_init(io, & __this_module);
  } else {
  }
  return (0);
}
}
static void cleanup_opl3(void)
{
  {
  if ((unsigned long )devc != (unsigned long )((struct opl_devinfo *)0) && io != -1) {
    if (devc->base != 0) {
      __release_region(& ioport_resource, (resource_size_t )devc->base, 4ULL);
      if (devc->is_opl4 != 0) {
        __release_region(& ioport_resource, (resource_size_t )(devc->base + -8), 2ULL);
      } else {
      }
    } else {
    }
    kfree((void const *)devc);
    devc = (struct opl_devinfo *)0;
    sound_unload_synthdev(me);
  } else {
  }
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int main(void)
{
  int ldvarg18 ;
  int ldvarg11 ;
  int ldvarg32 ;
  int ldvarg7 ;
  unsigned char *ldvarg23 ;
  void *tmp ;
  int ldvarg43 ;
  int ldvarg42 ;
  int ldvarg12 ;
  int ldvarg46 ;
  int ldvarg1 ;
  int ldvarg37 ;
  int ldvarg29 ;
  struct voice_alloc_info *ldvarg44 ;
  void *tmp___0 ;
  int ldvarg24 ;
  int ldvarg35 ;
  int ldvarg0 ;
  int ldvarg38 ;
  int ldvarg5 ;
  void *ldvarg33 ;
  void *tmp___1 ;
  int ldvarg16 ;
  int ldvarg6 ;
  int ldvarg4 ;
  int ldvarg14 ;
  unsigned int ldvarg34 ;
  int ldvarg28 ;
  int ldvarg2 ;
  int ldvarg47 ;
  int ldvarg39 ;
  int ldvarg20 ;
  int ldvarg31 ;
  int ldvarg41 ;
  int ldvarg3 ;
  char *ldvarg8 ;
  void *tmp___2 ;
  int ldvarg13 ;
  int ldvarg36 ;
  int ldvarg10 ;
  int ldvarg40 ;
  int ldvarg9 ;
  int ldvarg45 ;
  int ldvarg26 ;
  int ldvarg27 ;
  int ldvarg15 ;
  int ldvarg30 ;
  int ldvarg21 ;
  int ldvarg17 ;
  int ldvarg25 ;
  int ldvarg22 ;
  int ldvarg19 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg23 = (unsigned char *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  ldvarg44 = (struct voice_alloc_info *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg33 = tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___2;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg18), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg32), 0, 4UL);
  ldvarg7 = __VERIFIER_nondet_int();
  ldv_memset((void *)(& ldvarg43), 0, 4UL);
  ldv_memset((void *)(& ldvarg42), 0, 4UL);
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  ldv_memset((void *)(& ldvarg46), 0, 4UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg37), 0, 4UL);
  ldv_memset((void *)(& ldvarg29), 0, 4UL);
  ldv_memset((void *)(& ldvarg24), 0, 4UL);
  ldv_memset((void *)(& ldvarg35), 0, 4UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldvarg5 = __VERIFIER_nondet_int();
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldvarg6 = __VERIFIER_nondet_int();
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 4UL);
  ldv_memset((void *)(& ldvarg34), 0, 4UL);
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg2), 0, 4UL);
  ldv_memset((void *)(& ldvarg47), 0, 4UL);
  ldv_memset((void *)(& ldvarg39), 0, 4UL);
  ldv_memset((void *)(& ldvarg20), 0, 4UL);
  ldv_memset((void *)(& ldvarg31), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg36), 0, 4UL);
  ldvarg10 = __VERIFIER_nondet_int();
  ldv_memset((void *)(& ldvarg40), 0, 4UL);
  ldvarg9 = __VERIFIER_nondet_int();
  ldv_memset((void *)(& ldvarg45), 0, 4UL);
  ldv_memset((void *)(& ldvarg26), 0, 4UL);
  ldv_memset((void *)(& ldvarg27), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 4UL);
  ldv_memset((void *)(& ldvarg30), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 4UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_memset((void *)(& ldvarg19), 0, 4UL);
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_26809:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      opl3_alloc_voice(ldvarg45, ldvarg47, ldvarg46, ldvarg44);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_alloc_voice(ldvarg45, ldvarg47, ldvarg46, ldvarg44);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      opl3_kill_note(ldvarg41, ldvarg43, ldvarg42, ldvarg40);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_kill_note(ldvarg41, ldvarg43, ldvarg42, ldvarg40);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 2: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = opl3_open(ldvarg38, ldvarg39);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_26784;
    case 3: ;
    if (ldv_state_variable_1 == 1) {
      opl3_bender(ldvarg35, ldvarg37, ldvarg36);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_bender(ldvarg35, ldvarg37, ldvarg36);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 4: ;
    if (ldv_state_variable_1 == 1) {
      opl3_ioctl(ldvarg32, ldvarg34, ldvarg33);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_ioctl(ldvarg32, ldvarg34, ldvarg33);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 5: ;
    if (ldv_state_variable_1 == 1) {
      opl3_setup_voice(ldvarg29, ldvarg31, ldvarg30);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_setup_voice(ldvarg29, ldvarg31, ldvarg30);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 6: ;
    if (ldv_state_variable_1 == 1) {
      opl3_start_note(ldvarg26, ldvarg28, ldvarg27, ldvarg25);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_start_note(ldvarg26, ldvarg28, ldvarg27, ldvarg25);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 7: ;
    if (ldv_state_variable_1 == 1) {
      opl3_reset(ldvarg24);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_reset(ldvarg24);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 8: ;
    if (ldv_state_variable_1 == 1) {
      opl3_hw_control(ldvarg22, ldvarg23);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_hw_control(ldvarg22, ldvarg23);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 9: ;
    if (ldv_state_variable_1 == 1) {
      opl3_set_instr(ldvarg19, ldvarg21, ldvarg20);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_set_instr(ldvarg19, ldvarg21, ldvarg20);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 10: ;
    if (ldv_state_variable_1 == 2) {
      opl3_close(ldvarg18);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_26784;
    case 11: ;
    if (ldv_state_variable_1 == 1) {
      opl3_controller(ldvarg15, ldvarg17, ldvarg16, ldvarg14);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_controller(ldvarg15, ldvarg17, ldvarg16, ldvarg14);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 12: ;
    if (ldv_state_variable_1 == 1) {
      opl3_panning(ldvarg11, ldvarg13, ldvarg12);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_panning(ldvarg11, ldvarg13, ldvarg12);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 13: ;
    if (ldv_state_variable_1 == 1) {
      opl3_load_patch(ldvarg7, ldvarg9, (char const *)ldvarg8, ldvarg6, ldvarg10,
                      ldvarg5);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_load_patch(ldvarg7, ldvarg9, (char const *)ldvarg8, ldvarg6, ldvarg10,
                      ldvarg5);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 14: ;
    if (ldv_state_variable_1 == 1) {
      opl3_volume_method(ldvarg3, ldvarg4);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_volume_method(ldvarg3, ldvarg4);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    case 15: ;
    if (ldv_state_variable_1 == 1) {
      opl3_aftertouch(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      opl3_aftertouch(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_26784;
    default:
    ldv_stop();
    }
    ldv_26784: ;
  } else {
  }
  goto ldv_26801;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      cleanup_opl3();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_26805;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = init_opl3();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_1 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_26805;
    default:
    ldv_stop();
    }
    ldv_26805: ;
  } else {
  }
  goto ldv_26801;
  default:
  ldv_stop();
  }
  ldv_26801: ;
  goto ldv_26809;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
unsigned long ldv__copy_from_user_1(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                    unsigned int ldv_func_arg3 )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = _copy_from_user(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  return (tmp);
}
}
unsigned long ldv__copy_to_user_2(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                  unsigned int ldv_func_arg3 )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = _copy_to_user(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  return (tmp);
}
}
long ldv___copy_user_nocache_3(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 )
{
  long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = __copy_user_nocache(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  return (tmp);
}
}
long ldv___copy_user_nocache_4(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 )
{
  long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = __copy_user_nocache(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  return (tmp);
}
}
__inline static unsigned long ldv_copy_from_user_7(void *to , void const *from ,
                                                   unsigned long n )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )n);
  tmp = copy_from_user(to, from, n);
  return (tmp);
}
}
size_t strlen(char const *str ) ;
__kernel_size_t strnlen(char const *s , __kernel_size_t count ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
void ldv_check_ret_val(int res ) ;
size_t strlen(char const *str )
{
  size_t res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = (size_t )tmp;
  ldv_check_ret_val((int )res);
  return (res);
}
}
__kernel_size_t strnlen(char const *s , __kernel_size_t count )
{
  size_t res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = (size_t )tmp;
  ldv_check_ret_val((int )res);
  return (res);
}
}
void ldv_check_len(long n )
{
  {
  if (n < 0L) {
    ldv_error();
  } else {
  }
  return;
}
}
void ldv_check_ret_val(int res )
{
  {
  if (res < 0) {
    ldv_stop();
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int __copy_user_nocache(void *arg0, const void *arg1, unsigned int arg2, int arg3) {
  return __VERIFIER_nondet_long();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int compute_finetune(unsigned long arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
void conf_printf2(char *arg0, int arg1, int arg2, int arg3, int arg4) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int note_to_freq(int arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void sequencer_init() {
  return;
}
int __VERIFIER_nondet_int(void);
int sound_alloc_synthdev() {
  return __VERIFIER_nondet_int();
}
void sound_unload_synthdev(int arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
