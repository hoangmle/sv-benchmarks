extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
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
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int u_int;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef __u32 __wsum;
typedef unsigned int gfp_t;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct net_device;
struct net_device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
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
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct rw_semaphore;
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
struct pci_dev;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
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
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
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
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
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
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
struct sock;
struct sock;
struct kobject;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct exception_table_entry;
struct exception_table_entry;
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
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
   int objsize ;
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
struct address_space;
struct address_space;
union __anonunion_ldv_14216_136 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_14226_140 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14227_139 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14226_140 ldv_14226 ;
};
struct __anonstruct_ldv_14229_138 {
   union __anonunion_ldv_14227_139 ldv_14227 ;
   atomic_t _count ;
};
union __anonunion_ldv_14230_137 {
   unsigned long counters ;
   struct __anonstruct_ldv_14229_138 ldv_14229 ;
};
struct __anonstruct_ldv_14231_135 {
   union __anonunion_ldv_14216_136 ldv_14216 ;
   union __anonunion_ldv_14230_137 ldv_14230 ;
};
struct __anonstruct_ldv_14238_142 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_14239_141 {
   struct list_head lru ;
   struct __anonstruct_ldv_14238_142 ldv_14238 ;
};
union __anonunion_ldv_14244_143 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_14231_135 ldv_14231 ;
   union __anonunion_ldv_14239_141 ldv_14239 ;
   union __anonunion_ldv_14244_143 ldv_14244 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_145 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_144 {
   struct __anonstruct_vm_set_145 vm_set ;
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
   union __anonunion_shared_144 shared ;
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
   cpumask_var_t cpu_vm_mask_var ;
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
   struct cpumask cpumask_allocation ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
struct sk_buff;
struct klist_node;
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
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
typedef s32 dma_cookie_t;
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
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned int mask ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_19912_149 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_19913_148 {
   __wsum csum ;
   struct __anonstruct_ldv_19912_149 ldv_19912 ;
};
union __anonunion_ldv_19949_150 {
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
   union __anonunion_ldv_19913_148 ldv_19913 ;
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
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_19949_150 ldv_19949 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct proc_dir_entry;
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
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
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
struct pcie_link_state;
struct pci_vpd;
struct pci_vpd;
struct pci_sriov;
struct pci_sriov;
struct pci_ats;
struct pci_ats;
struct pci_driver;
union __anonunion_ldv_22579_153 {
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
   unsigned char pcie_type : 4 ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
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
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_22579_153 ldv_22579 ;
   struct pci_ats *ats ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
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
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct capi_register_params {
   __u32 level3cnt ;
   __u32 datablkcnt ;
   __u32 datablklen ;
};
typedef struct capi_register_params capi_register_params;
struct capi_version {
   __u32 majorversion ;
   __u32 minorversion ;
   __u32 majormanuversion ;
   __u32 minormanuversion ;
};
typedef struct capi_version capi_version;
struct capi_profile {
   __u16 ncontroller ;
   __u16 nbchannel ;
   __u32 goptions ;
   __u32 support1 ;
   __u32 support2 ;
   __u32 support3 ;
   __u32 reserved[6U] ;
   __u32 manu[5U] ;
};
typedef struct capi_profile capi_profile;
struct capiloaddatapart {
   int user ;
   int len ;
   unsigned char *data ;
};
typedef struct capiloaddatapart capiloaddatapart;
struct capiloaddata {
   capiloaddatapart firmware ;
   capiloaddatapart configuration ;
};
typedef struct capiloaddata capiloaddata;
struct capicardparams {
   unsigned int port ;
   unsigned int irq ;
   int cardtype ;
   int cardnr ;
   unsigned int membase ;
};
typedef struct capicardparams capicardparams;
struct file_operations;
struct capi_ctr {
   struct module *owner ;
   void *driverdata ;
   char name[32U] ;
   char *driver_name ;
   int (*load_firmware)(struct capi_ctr * , capiloaddata * ) ;
   void (*reset_ctr)(struct capi_ctr * ) ;
   void (*register_appl)(struct capi_ctr * , u16 , capi_register_params * ) ;
   void (*release_appl)(struct capi_ctr * , u16 ) ;
   u16 (*send_message)(struct capi_ctr * , struct sk_buff * ) ;
   char *(*procinfo)(struct capi_ctr * ) ;
   struct file_operations const *proc_fops ;
   u8 manu[64U] ;
   capi_version version ;
   capi_profile profile ;
   u8 serial[8U] ;
   unsigned long nrecvctlpkt ;
   unsigned long nrecvdatapkt ;
   unsigned long nsentctlpkt ;
   unsigned long nsentdatapkt ;
   int cnr ;
   unsigned short state ;
   int blocked ;
   int traceflag ;
   wait_queue_head_t state_wait_queue ;
   struct proc_dir_entry *procent ;
   char procfn[128U] ;
};
struct capi_driver {
   char name[32U] ;
   char revision[32U] ;
   int (*add_card)(struct capi_driver * , capicardparams * ) ;
   struct list_head list ;
};
enum avmcardtype {
    avm_b1isa = 0,
    avm_b1pci = 1,
    avm_b1pcmcia = 2,
    avm_m1 = 3,
    avm_m2 = 4,
    avm_t1isa = 5,
    avm_t1pci = 6,
    avm_c4 = 7,
    avm_c2 = 8
} ;
struct avmcard_dmabuf {
   long size ;
   u8 *dmabuf ;
   dma_addr_t dmaaddr ;
};
typedef struct avmcard_dmabuf avmcard_dmabuf;
struct avmcard_dmainfo {
   u32 recvlen ;
   avmcard_dmabuf recvbuf ;
   avmcard_dmabuf sendbuf ;
   struct sk_buff_head send_queue ;
   struct pci_dev *pcidev ;
};
typedef struct avmcard_dmainfo avmcard_dmainfo;
struct avmcard;
struct avmctrl_info {
   char cardname[32U] ;
   int versionlen ;
   char versionbuf[1024U] ;
   char *version[8U] ;
   char infobuf[128U] ;
   struct avmcard *card ;
   struct capi_ctr capi_ctrl ;
   struct list_head ncci_head ;
};
typedef struct avmctrl_info avmctrl_info;
struct avmcard {
   char name[32U] ;
   spinlock_t lock ;
   unsigned int port ;
   unsigned int irq ;
   unsigned long membase ;
   enum avmcardtype cardtype ;
   unsigned char revision ;
   unsigned char class ;
   int cardnr ;
   char msgbuf[128U] ;
   char databuf[2048U] ;
   void *mbase ;
   u32 volatile csr ;
   avmcard_dmainfo *dma ;
   struct avmctrl_info *ctrlinfo ;
   u_int nr_controllers ;
   u_int nlogcontr ;
   struct list_head list ;
};
typedef struct avmcard avmcard;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{ void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern struct module __this_module ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_22(struct sk_buff *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_24(struct sk_buff const *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_27(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t ldv_func_arg4 ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_25(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 ) ;
struct sk_buff *ldv___netdev_alloc_skb_26(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{ int tmp ;
  irqreturn_t (*__cil_tmp7)(int , void * ) ;
  {
  {
  __cil_tmp7 = (irqreturn_t (*)(int , void * ))0;
  tmp = request_threaded_irq(irq, handler, __cil_tmp7, flags, name, dev);
  }
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int attach_capi_ctr(struct capi_ctr * ) ;
extern int detach_capi_ctr(struct capi_ctr * ) ;
extern void register_capi_driver(struct capi_driver * ) ;
extern void unregister_capi_driver(struct capi_driver * ) ;
extern avmcard *b1_alloc_card(int ) ;
extern void b1_free_card(avmcard * ) ;
extern avmcard_dmainfo *avmcard_dma_alloc(char * , struct pci_dev * , long , long ) ;
extern void avmcard_dma_free(avmcard_dmainfo * ) ;
extern int t1pci_detect(avmcard * ) ;
extern void b1dma_reset(avmcard * ) ;
extern irqreturn_t b1dma_interrupt(int , void * ) ;
extern int b1dma_load_firmware(struct capi_ctr * , capiloaddata * ) ;
extern void b1dma_reset_ctr(struct capi_ctr * ) ;
extern void b1dma_register_appl(struct capi_ctr * , u16 , capi_register_params * ) ;
extern void b1dma_release_appl(struct capi_ctr * , u16 ) ;
extern u16 b1dma_send_message(struct capi_ctr * , struct sk_buff * ) ;
extern struct file_operations const b1dmactl_proc_fops ;
static char *revision = (char *)"$Revision: 1.1.2.2 $";
static struct pci_device_id t1pci_pci_tbl[2U] = { {4676U, 4608U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static char *t1pci_procinfo(struct capi_ctr *ctrl ) ;
static int t1pci_add_card(struct capicardparams *p , struct pci_dev *pdev )
{ avmcard *card ;
  avmctrl_info *cinfo ;
  int retval ;
  struct resource *tmp ;
  avmcard *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  char *__cil_tmp12 ;
  avmcard_dmainfo *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  avmcard_dmainfo *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  char (*__cil_tmp21)[32U] ;
  char *__cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  resource_size_t __cil_tmp40 ;
  char (*__cil_tmp41)[32U] ;
  char const *__cil_tmp42 ;
  struct resource *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  resource_size_t __cil_tmp58 ;
  void *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  void *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned int __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  char (*__cil_tmp77)[32U] ;
  char const *__cil_tmp78 ;
  void *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  char (*__cil_tmp115)[32U] ;
  char *__cil_tmp116 ;
  char (*__cil_tmp117)[32U] ;
  char const *__cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  struct capi_ctr *__cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned int __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  void *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned int __cil_tmp139 ;
  void *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  void *__cil_tmp143 ;
  void volatile *__cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned int __cil_tmp147 ;
  resource_size_t __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  avmcard_dmainfo *__cil_tmp151 ;
  {
  {
  card = b1_alloc_card(1);
  }
  {
  __cil_tmp7 = (avmcard *)0;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = (unsigned long )card;
  if (__cil_tmp9 == __cil_tmp8) {
    {
    printk("<4>t1pci: no memory.\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  }
  {
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 2328;
  __cil_tmp12 = (char *)"t1pci";
  *((avmcard_dmainfo **)__cil_tmp11) = avmcard_dma_alloc(__cil_tmp12, pdev, 2176L,
                                                         2176L);
  }
  {
  __cil_tmp13 = (avmcard_dmainfo *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )card;
  __cil_tmp16 = __cil_tmp15 + 2328;
  __cil_tmp17 = *((avmcard_dmainfo **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 == __cil_tmp14) {
    {
    printk("<4>t1pci: no memory.\n");
    retval = -12;
    }
    goto err_free;
  } else {
  }
  }
  {
  __cil_tmp19 = (unsigned long )card;
  __cil_tmp20 = __cil_tmp19 + 2336;
  cinfo = *((struct avmctrl_info **)__cil_tmp20);
  __cil_tmp21 = (char (*)[32U])card;
  __cil_tmp22 = (char *)__cil_tmp21;
  __cil_tmp23 = *((unsigned int *)p);
  sprintf(__cil_tmp22, "t1pci-%x", __cil_tmp23);
  __cil_tmp24 = (unsigned long )card;
  __cil_tmp25 = __cil_tmp24 + 104;
  *((unsigned int *)__cil_tmp25) = *((unsigned int *)p);
  __cil_tmp26 = (unsigned long )card;
  __cil_tmp27 = __cil_tmp26 + 108;
  __cil_tmp28 = (unsigned long )p;
  __cil_tmp29 = __cil_tmp28 + 4;
  *((unsigned int *)__cil_tmp27) = *((unsigned int *)__cil_tmp29);
  __cil_tmp30 = (unsigned long )card;
  __cil_tmp31 = __cil_tmp30 + 112;
  __cil_tmp32 = (unsigned long )p;
  __cil_tmp33 = __cil_tmp32 + 16;
  __cil_tmp34 = *((unsigned int *)__cil_tmp33);
  *((unsigned long *)__cil_tmp31) = (unsigned long )__cil_tmp34;
  __cil_tmp35 = (unsigned long )card;
  __cil_tmp36 = __cil_tmp35 + 120;
  *((enum avmcardtype *)__cil_tmp36) = (enum avmcardtype )6;
  __cil_tmp37 = (unsigned long )card;
  __cil_tmp38 = __cil_tmp37 + 104;
  __cil_tmp39 = *((unsigned int *)__cil_tmp38);
  __cil_tmp40 = (resource_size_t )__cil_tmp39;
  __cil_tmp41 = (char (*)[32U])card;
  __cil_tmp42 = (char const *)__cil_tmp41;
  tmp = __request_region(& ioport_resource, __cil_tmp40, 31ULL, __cil_tmp42, 0);
  }
  {
  __cil_tmp43 = (struct resource *)0;
  __cil_tmp44 = (unsigned long )__cil_tmp43;
  __cil_tmp45 = (unsigned long )tmp;
  if (__cil_tmp45 == __cil_tmp44) {
    {
    __cil_tmp46 = (unsigned long )card;
    __cil_tmp47 = __cil_tmp46 + 104;
    __cil_tmp48 = *((unsigned int *)__cil_tmp47);
    __cil_tmp49 = (unsigned long )card;
    __cil_tmp50 = __cil_tmp49 + 104;
    __cil_tmp51 = *((unsigned int *)__cil_tmp50);
    __cil_tmp52 = __cil_tmp51 + 31U;
    printk("<4>t1pci: ports 0x%03x-0x%03x in use.\n", __cil_tmp48, __cil_tmp52);
    retval = -16;
    }
    goto err_free_dma;
  } else {
  }
  }
  {
  __cil_tmp53 = (unsigned long )card;
  __cil_tmp54 = __cil_tmp53 + 2312;
  __cil_tmp55 = (unsigned long )card;
  __cil_tmp56 = __cil_tmp55 + 112;
  __cil_tmp57 = *((unsigned long *)__cil_tmp56);
  __cil_tmp58 = (resource_size_t )__cil_tmp57;
  *((void **)__cil_tmp54) = ioremap(__cil_tmp58, 64UL);
  }
  {
  __cil_tmp59 = (void *)0;
  __cil_tmp60 = (unsigned long )__cil_tmp59;
  __cil_tmp61 = (unsigned long )card;
  __cil_tmp62 = __cil_tmp61 + 2312;
  __cil_tmp63 = *((void **)__cil_tmp62);
  __cil_tmp64 = (unsigned long )__cil_tmp63;
  if (__cil_tmp64 == __cil_tmp60) {
    {
    __cil_tmp65 = (unsigned long )card;
    __cil_tmp66 = __cil_tmp65 + 112;
    __cil_tmp67 = *((unsigned long *)__cil_tmp66);
    printk("<5>t1pci: can\'t remap memory at 0x%lx\n", __cil_tmp67);
    retval = -5;
    }
    goto err_release_region;
  } else {
  }
  }
  {
  b1dma_reset(card);
  retval = t1pci_detect(card);
  }
  if (retval != 0) {
    if (retval <= 5) {
      {
      __cil_tmp68 = (unsigned long )card;
      __cil_tmp69 = __cil_tmp68 + 104;
      __cil_tmp70 = *((unsigned int *)__cil_tmp69);
      printk("<5>t1pci: NO card at 0x%x (%d)\n", __cil_tmp70, retval);
      }
    } else {
      {
      __cil_tmp71 = (unsigned long )card;
      __cil_tmp72 = __cil_tmp71 + 104;
      __cil_tmp73 = *((unsigned int *)__cil_tmp72);
      printk("<5>t1pci: card at 0x%x, but cable not connected or T1 has no power (%d)\n",
             __cil_tmp73, retval);
      }
    }
    retval = -5;
    goto err_unmap;
  } else {
  }
  {
  b1dma_reset(card);
  __cil_tmp74 = (unsigned long )card;
  __cil_tmp75 = __cil_tmp74 + 108;
  __cil_tmp76 = *((unsigned int *)__cil_tmp75);
  __cil_tmp77 = (char (*)[32U])card;
  __cil_tmp78 = (char const *)__cil_tmp77;
  __cil_tmp79 = (void *)card;
  retval = request_irq(__cil_tmp76, & b1dma_interrupt, 128UL, __cil_tmp78, __cil_tmp79);
  }
  if (retval != 0) {
    {
    __cil_tmp80 = (unsigned long )card;
    __cil_tmp81 = __cil_tmp80 + 108;
    __cil_tmp82 = *((unsigned int *)__cil_tmp81);
    printk("<3>t1pci: unable to get IRQ %d.\n", __cil_tmp82);
    retval = -16;
    }
    goto err_unmap;
  } else {
  }
  {
  __cil_tmp83 = (unsigned long )cinfo;
  __cil_tmp84 = __cil_tmp83 + 1264;
  *((struct module **)__cil_tmp84) = & __this_module;
  __cil_tmp85 = 1264 + 48;
  __cil_tmp86 = (unsigned long )cinfo;
  __cil_tmp87 = __cil_tmp86 + __cil_tmp85;
  *((char **)__cil_tmp87) = (char *)"t1pci";
  __cil_tmp88 = 1264 + 8;
  __cil_tmp89 = (unsigned long )cinfo;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((void **)__cil_tmp90) = (void *)cinfo;
  __cil_tmp91 = 1264 + 72;
  __cil_tmp92 = (unsigned long )cinfo;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  *((void (**)(struct capi_ctr * , u16 , capi_register_params * ))__cil_tmp93) = & b1dma_register_appl;
  __cil_tmp94 = 1264 + 80;
  __cil_tmp95 = (unsigned long )cinfo;
  __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
  *((void (**)(struct capi_ctr * , u16 ))__cil_tmp96) = & b1dma_release_appl;
  __cil_tmp97 = 1264 + 88;
  __cil_tmp98 = (unsigned long )cinfo;
  __cil_tmp99 = __cil_tmp98 + __cil_tmp97;
  *((u16 (**)(struct capi_ctr * , struct sk_buff * ))__cil_tmp99) = & b1dma_send_message;
  __cil_tmp100 = 1264 + 56;
  __cil_tmp101 = (unsigned long )cinfo;
  __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
  *((int (**)(struct capi_ctr * , capiloaddata * ))__cil_tmp102) = & b1dma_load_firmware;
  __cil_tmp103 = 1264 + 64;
  __cil_tmp104 = (unsigned long )cinfo;
  __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
  *((void (**)(struct capi_ctr * ))__cil_tmp105) = & b1dma_reset_ctr;
  __cil_tmp106 = 1264 + 96;
  __cil_tmp107 = (unsigned long )cinfo;
  __cil_tmp108 = __cil_tmp107 + __cil_tmp106;
  *((char *(**)(struct capi_ctr * ))__cil_tmp108) = & t1pci_procinfo;
  __cil_tmp109 = 1264 + 104;
  __cil_tmp110 = (unsigned long )cinfo;
  __cil_tmp111 = __cil_tmp110 + __cil_tmp109;
  *((struct file_operations const **)__cil_tmp111) = & b1dmactl_proc_fops;
  __cil_tmp112 = 1264 + 16;
  __cil_tmp113 = (unsigned long )cinfo;
  __cil_tmp114 = __cil_tmp113 + __cil_tmp112;
  __cil_tmp115 = (char (*)[32U])__cil_tmp114;
  __cil_tmp116 = (char *)__cil_tmp115;
  __cil_tmp117 = (char (*)[32U])card;
  __cil_tmp118 = (char const *)__cil_tmp117;
  strcpy(__cil_tmp116, __cil_tmp118);
  __cil_tmp119 = (unsigned long )cinfo;
  __cil_tmp120 = __cil_tmp119 + 1264;
  __cil_tmp121 = (struct capi_ctr *)__cil_tmp120;
  retval = attach_capi_ctr(__cil_tmp121);
  }
  if (retval != 0) {
    {
    printk("<3>t1pci: attach controller failed.\n");
    retval = -16;
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp122 = (unsigned long )card;
  __cil_tmp123 = __cil_tmp122 + 128;
  __cil_tmp124 = 1264 + 296;
  __cil_tmp125 = (unsigned long )cinfo;
  __cil_tmp126 = __cil_tmp125 + __cil_tmp124;
  *((int *)__cil_tmp123) = *((int *)__cil_tmp126);
  __cil_tmp127 = (unsigned long )card;
  __cil_tmp128 = __cil_tmp127 + 104;
  __cil_tmp129 = *((unsigned int *)__cil_tmp128);
  __cil_tmp130 = (unsigned long )card;
  __cil_tmp131 = __cil_tmp130 + 108;
  __cil_tmp132 = *((unsigned int *)__cil_tmp131);
  __cil_tmp133 = (unsigned long )card;
  __cil_tmp134 = __cil_tmp133 + 112;
  __cil_tmp135 = *((unsigned long *)__cil_tmp134);
  printk("<6>t1pci: AVM T1 PCI at i/o %#x, irq %d, mem %#lx\n", __cil_tmp129, __cil_tmp132,
         __cil_tmp135);
  __cil_tmp136 = (void *)card;
  pci_set_drvdata(pdev, __cil_tmp136);
  }
  return (0);
  err_free_irq:
  {
  __cil_tmp137 = (unsigned long )card;
  __cil_tmp138 = __cil_tmp137 + 108;
  __cil_tmp139 = *((unsigned int *)__cil_tmp138);
  __cil_tmp140 = (void *)card;
  free_irq(__cil_tmp139, __cil_tmp140);
  }
  err_unmap:
  {
  __cil_tmp141 = (unsigned long )card;
  __cil_tmp142 = __cil_tmp141 + 2312;
  __cil_tmp143 = *((void **)__cil_tmp142);
  __cil_tmp144 = (void volatile *)__cil_tmp143;
  iounmap(__cil_tmp144);
  }
  err_release_region:
  {
  __cil_tmp145 = (unsigned long )card;
  __cil_tmp146 = __cil_tmp145 + 104;
  __cil_tmp147 = *((unsigned int *)__cil_tmp146);
  __cil_tmp148 = (resource_size_t )__cil_tmp147;
  __release_region(& ioport_resource, __cil_tmp148, 31ULL);
  }
  err_free_dma:
  {
  __cil_tmp149 = (unsigned long )card;
  __cil_tmp150 = __cil_tmp149 + 2328;
  __cil_tmp151 = *((avmcard_dmainfo **)__cil_tmp150);
  avmcard_dma_free(__cil_tmp151);
  }
  err_free:
  {
  b1_free_card(card);
  }
  err: ;
  return (retval);
}
}
static void t1pci_remove(struct pci_dev *pdev )
{ avmcard *card ;
  void *tmp ;
  avmctrl_info *cinfo ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct capi_ctr *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  void volatile *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  resource_size_t __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  avmcard_dmainfo *__cil_tmp24 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  card = (avmcard *)tmp;
  __cil_tmp5 = (unsigned long )card;
  __cil_tmp6 = __cil_tmp5 + 2336;
  cinfo = *((struct avmctrl_info **)__cil_tmp6);
  b1dma_reset(card);
  __cil_tmp7 = (unsigned long )cinfo;
  __cil_tmp8 = __cil_tmp7 + 1264;
  __cil_tmp9 = (struct capi_ctr *)__cil_tmp8;
  detach_capi_ctr(__cil_tmp9);
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 108;
  __cil_tmp12 = *((unsigned int *)__cil_tmp11);
  __cil_tmp13 = (void *)card;
  free_irq(__cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (unsigned long )card;
  __cil_tmp15 = __cil_tmp14 + 2312;
  __cil_tmp16 = *((void **)__cil_tmp15);
  __cil_tmp17 = (void volatile *)__cil_tmp16;
  iounmap(__cil_tmp17);
  __cil_tmp18 = (unsigned long )card;
  __cil_tmp19 = __cil_tmp18 + 104;
  __cil_tmp20 = *((unsigned int *)__cil_tmp19);
  __cil_tmp21 = (resource_size_t )__cil_tmp20;
  __release_region(& ioport_resource, __cil_tmp21, 31ULL);
  __cil_tmp22 = (unsigned long )card;
  __cil_tmp23 = __cil_tmp22 + 2328;
  __cil_tmp24 = *((avmcard_dmainfo **)__cil_tmp23);
  avmcard_dma_free(__cil_tmp24);
  b1_free_card(card);
  }
  return;
}
}
static char *t1pci_procinfo(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  unsigned long tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  avmctrl_info *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct avmcard *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct avmcard *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct avmcard *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct avmcard *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct avmcard *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct avmcard *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct avmcard *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct avmcard *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct avmcard *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  char *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  char *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  char __cil_tmp63 ;
  signed char __cil_tmp64 ;
  int __cil_tmp65 ;
  char (*__cil_tmp66)[32U] ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  char (*__cil_tmp69)[128U] ;
  char *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  char (*__cil_tmp73)[128U] ;
  {
  __cil_tmp8 = (unsigned long )ctrl;
  __cil_tmp9 = __cil_tmp8 + 8;
  __cil_tmp10 = *((void **)__cil_tmp9);
  cinfo = (avmctrl_info *)__cil_tmp10;
  {
  __cil_tmp11 = (avmctrl_info *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )cinfo;
  if (__cil_tmp13 == __cil_tmp12) {
    return ((char *)"");
  } else {
  }
  }
  {
  __cil_tmp14 = (struct avmcard *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = (unsigned long )cinfo;
  __cil_tmp17 = __cil_tmp16 + 1256;
  __cil_tmp18 = *((struct avmcard **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  if (__cil_tmp19 != __cil_tmp15) {
    __cil_tmp20 = (unsigned long )cinfo;
    __cil_tmp21 = __cil_tmp20 + 1256;
    __cil_tmp22 = *((struct avmcard **)__cil_tmp21);
    __cil_tmp23 = (unsigned long )__cil_tmp22;
    __cil_tmp24 = __cil_tmp23 + 112;
    tmp = *((unsigned long *)__cil_tmp24);
  } else {
    tmp = 0UL;
  }
  }
  {
  __cil_tmp25 = (struct avmcard *)0;
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  __cil_tmp27 = (unsigned long )cinfo;
  __cil_tmp28 = __cil_tmp27 + 1256;
  __cil_tmp29 = *((struct avmcard **)__cil_tmp28);
  __cil_tmp30 = (unsigned long )__cil_tmp29;
  if (__cil_tmp30 != __cil_tmp26) {
    __cil_tmp31 = (unsigned long )cinfo;
    __cil_tmp32 = __cil_tmp31 + 1256;
    __cil_tmp33 = *((struct avmcard **)__cil_tmp32);
    __cil_tmp34 = (unsigned long )__cil_tmp33;
    __cil_tmp35 = __cil_tmp34 + 108;
    tmp___0 = *((unsigned int *)__cil_tmp35);
  } else {
    tmp___0 = 0U;
  }
  }
  {
  __cil_tmp36 = (struct avmcard *)0;
  __cil_tmp37 = (unsigned long )__cil_tmp36;
  __cil_tmp38 = (unsigned long )cinfo;
  __cil_tmp39 = __cil_tmp38 + 1256;
  __cil_tmp40 = *((struct avmcard **)__cil_tmp39);
  __cil_tmp41 = (unsigned long )__cil_tmp40;
  if (__cil_tmp41 != __cil_tmp37) {
    __cil_tmp42 = (unsigned long )cinfo;
    __cil_tmp43 = __cil_tmp42 + 1256;
    __cil_tmp44 = *((struct avmcard **)__cil_tmp43);
    __cil_tmp45 = (unsigned long )__cil_tmp44;
    __cil_tmp46 = __cil_tmp45 + 104;
    tmp___1 = *((unsigned int *)__cil_tmp46);
  } else {
    tmp___1 = 0U;
  }
  }
  {
  __cil_tmp47 = (char *)0;
  __cil_tmp48 = (unsigned long )__cil_tmp47;
  __cil_tmp49 = 0 * 8UL;
  __cil_tmp50 = 1064 + __cil_tmp49;
  __cil_tmp51 = (unsigned long )cinfo;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  __cil_tmp53 = *((char **)__cil_tmp52);
  __cil_tmp54 = (unsigned long )__cil_tmp53;
  if (__cil_tmp54 != __cil_tmp48) {
    __cil_tmp55 = 0 * 8UL;
    __cil_tmp56 = 1064 + __cil_tmp55;
    __cil_tmp57 = (unsigned long )cinfo;
    __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
    tmp___2 = *((char **)__cil_tmp58);
  } else {
    tmp___2 = (char *)"-";
  }
  }
  {
  __cil_tmp59 = 0 * 1UL;
  __cil_tmp60 = 0 + __cil_tmp59;
  __cil_tmp61 = (unsigned long )cinfo;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  __cil_tmp63 = *((char *)__cil_tmp62);
  __cil_tmp64 = (signed char )__cil_tmp63;
  __cil_tmp65 = (int )__cil_tmp64;
  if (__cil_tmp65 != 0) {
    __cil_tmp66 = (char (*)[32U])cinfo;
    tmp___3 = (char *)__cil_tmp66;
  } else {
    tmp___3 = (char *)"-";
  }
  }
  {
  __cil_tmp67 = (unsigned long )cinfo;
  __cil_tmp68 = __cil_tmp67 + 1128;
  __cil_tmp69 = (char (*)[128U])__cil_tmp68;
  __cil_tmp70 = (char *)__cil_tmp69;
  sprintf(__cil_tmp70, "%s %s 0x%x %d 0x%lx", tmp___3, tmp___2, tmp___1, tmp___0,
          tmp);
  }
  {
  __cil_tmp71 = (unsigned long )cinfo;
  __cil_tmp72 = __cil_tmp71 + 1128;
  __cil_tmp73 = (char (*)[128U])__cil_tmp72;
  return ((char *)__cil_tmp73);
  }
}
}
static int t1pci_probe(struct pci_dev *dev , struct pci_device_id const *ent )
{ struct capicardparams param ;
  int retval ;
  int tmp ;
  struct capicardparams *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  resource_size_t __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  resource_size_t __cil_tmp20 ;
  struct capicardparams *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  struct capicardparams *__cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  {
  {
  tmp = pci_enable_device(dev);
  }
  if (tmp < 0) {
    {
    printk("<3>t1pci: failed to enable AVM-T1-PCI\n");
    }
    return (-19);
  } else {
  }
  {
  pci_set_master(dev);
  __cil_tmp6 = & param;
  __cil_tmp7 = 1 * 56UL;
  __cil_tmp8 = 1304 + __cil_tmp7;
  __cil_tmp9 = (unsigned long )dev;
  __cil_tmp10 = __cil_tmp9 + __cil_tmp8;
  __cil_tmp11 = *((resource_size_t *)__cil_tmp10);
  *((unsigned int *)__cil_tmp6) = (unsigned int )__cil_tmp11;
  __cil_tmp12 = (unsigned long )(& param) + 4;
  __cil_tmp13 = (unsigned long )dev;
  __cil_tmp14 = __cil_tmp13 + 1300;
  *((unsigned int *)__cil_tmp12) = *((unsigned int *)__cil_tmp14);
  __cil_tmp15 = (unsigned long )(& param) + 16;
  __cil_tmp16 = 0 * 56UL;
  __cil_tmp17 = 1304 + __cil_tmp16;
  __cil_tmp18 = (unsigned long )dev;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
  __cil_tmp20 = *((resource_size_t *)__cil_tmp19);
  *((unsigned int *)__cil_tmp15) = (unsigned int )__cil_tmp20;
  __cil_tmp21 = & param;
  __cil_tmp22 = *((unsigned int *)__cil_tmp21);
  __cil_tmp23 = (unsigned long )(& param) + 4;
  __cil_tmp24 = *((unsigned int *)__cil_tmp23);
  __cil_tmp25 = (unsigned long )(& param) + 16;
  __cil_tmp26 = *((unsigned int *)__cil_tmp25);
  printk("<6>t1pci: PCI BIOS reports AVM-T1-PCI at i/o %#x, irq %d, mem %#x\n", __cil_tmp22,
         __cil_tmp24, __cil_tmp26);
  retval = t1pci_add_card(& param, dev);
  }
  if (retval != 0) {
    {
    __cil_tmp27 = & param;
    __cil_tmp28 = *((unsigned int *)__cil_tmp27);
    __cil_tmp29 = (unsigned long )(& param) + 4;
    __cil_tmp30 = *((unsigned int *)__cil_tmp29);
    __cil_tmp31 = (unsigned long )(& param) + 16;
    __cil_tmp32 = *((unsigned int *)__cil_tmp31);
    printk("<3>t1pci: no AVM-T1-PCI at i/o %#x, irq %d detected, mem %#x\n", __cil_tmp28,
           __cil_tmp30, __cil_tmp32);
    pci_disable_device(dev);
    }
    return (-19);
  } else {
  }
  return (0);
}
}
static struct pci_driver t1pci_pci_driver =
     {{(struct list_head *)0, (struct list_head *)0}, "t1pci", (struct pci_device_id const *)(& t1pci_pci_tbl),
    & t1pci_probe, & t1pci_remove, (int (*)(struct pci_dev * , pm_message_t ))0,
    (int (*)(struct pci_dev * , pm_message_t ))0, (int (*)(struct pci_dev * ))0,
    (int (*)(struct pci_dev * ))0, (void (*)(struct pci_dev * ))0, (struct pci_error_handlers *)0,
    {(char const *)0, (struct bus_type *)0, (struct module *)0, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device * ))0, (int (*)(struct device * ))0,
     (void (*)(struct device * ))0, (int (*)(struct device * , pm_message_t ))0,
     (int (*)(struct device * ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, {{{{{{0U}}, 0U, 0U, (void *)0, {(struct lock_class_key *)0,
                                                                  {(struct lock_class *)0,
                                                                   (struct lock_class *)0},
                                                                  (char const *)0,
                                                                  0, 0UL}}}}, {(struct list_head *)0,
                                                                               (struct list_head *)0}}};
static struct capi_driver capi_driver_t1pci = {{(char )'t', (char )'1', (char )'p', (char )'c', (char )'i', (char )'\000'}, {(char )'1',
                                                                                  (char )'.',
                                                                                  (char )'0',
                                                                                  (char )'\000'},
    (int (*)(struct capi_driver * , capicardparams * ))0, {(struct list_head *)0,
                                                           (struct list_head *)0}};
static int t1pci_init(void)
{ char *p ;
  char rev[32U] ;
  int err ;
  char const *__cil_tmp4 ;
  char *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  char *__cil_tmp8 ;
  char __cil_tmp9 ;
  signed char __cil_tmp10 ;
  int __cil_tmp11 ;
  char *__cil_tmp12 ;
  char const *__cil_tmp13 ;
  char const *__cil_tmp14 ;
  char const *__cil_tmp15 ;
  char *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  char *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  char *__cil_tmp22 ;
  char *__cil_tmp23 ;
  char *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  char (*__cil_tmp26)[32U] ;
  char *__cil_tmp27 ;
  char const *__cil_tmp28 ;
  char *__cil_tmp29 ;
  {
  {
  __cil_tmp4 = (char const *)revision;
  p = strchr(__cil_tmp4, 58);
  }
  {
  __cil_tmp5 = (char *)0;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = (unsigned long )p;
  if (__cil_tmp7 != __cil_tmp6) {
    {
    __cil_tmp8 = p + 1UL;
    __cil_tmp9 = *__cil_tmp8;
    __cil_tmp10 = (signed char )__cil_tmp9;
    __cil_tmp11 = (int )__cil_tmp10;
    if (__cil_tmp11 != 0) {
      {
      __cil_tmp12 = (char *)(& rev);
      __cil_tmp13 = (char const *)p;
      __cil_tmp14 = __cil_tmp13 + 2U;
      strlcpy(__cil_tmp12, __cil_tmp14, 32UL);
      __cil_tmp15 = (char const *)(& rev);
      p = strchr(__cil_tmp15, 36);
      }
      {
      __cil_tmp16 = (char *)0;
      __cil_tmp17 = (unsigned long )__cil_tmp16;
      __cil_tmp18 = (unsigned long )p;
      if (__cil_tmp18 != __cil_tmp17) {
        {
        __cil_tmp19 = (unsigned long )p;
        __cil_tmp20 = (char *)(& rev);
        __cil_tmp21 = (unsigned long )__cil_tmp20;
        if (__cil_tmp21 < __cil_tmp19) {
          __cil_tmp22 = p + 0xffffffffffffffffUL;
          *__cil_tmp22 = (char)0;
        } else {
        }
        }
      } else {
      }
      }
    } else {
      {
      __cil_tmp23 = (char *)(& rev);
      strcpy(__cil_tmp23, "1.0");
      }
    }
    }
  } else {
    {
    __cil_tmp24 = (char *)(& rev);
    strcpy(__cil_tmp24, "1.0");
    }
  }
  }
  {
  err = __pci_register_driver(& t1pci_pci_driver, & __this_module, "t1pci");
  }
  if (err == 0) {
    {
    __cil_tmp25 = (unsigned long )(& capi_driver_t1pci) + 32;
    __cil_tmp26 = (char (*)[32U])__cil_tmp25;
    __cil_tmp27 = (char *)__cil_tmp26;
    __cil_tmp28 = (char const *)(& rev);
    strlcpy(__cil_tmp27, __cil_tmp28, 32UL);
    register_capi_driver(& capi_driver_t1pci);
    __cil_tmp29 = (char *)(& rev);
    printk("<6>t1pci: revision %s\n", __cil_tmp29);
    }
  } else {
  }
  return (err);
}
}
static void t1pci_exit(void)
{
  {
  {
  unregister_capi_driver(& capi_driver_t1pci);
  pci_unregister_driver(& t1pci_pci_driver);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct pci_dev *var_group1 ;
  struct pci_device_id const *var_t1pci_probe_3_p1 ;
  int res_t1pci_probe_3 ;
  int ldv_s_t1pci_pci_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_s_t1pci_pci_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = t1pci_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_24682;
  ldv_24681:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_t1pci_pci_driver_pci_driver == 0) {
        {
        res_t1pci_probe_3 = t1pci_probe(var_group1, var_t1pci_probe_3_p1);
        ldv_check_return_value(res_t1pci_probe_3);
        }
        if (res_t1pci_probe_3 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_t1pci_pci_driver_pci_driver = 0;
      } else {
      }
      goto ldv_24678;
      case_1:
      {
      t1pci_remove(var_group1);
      }
      goto ldv_24678;
      switch_default: ;
      goto ldv_24678;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_24678: ;
  ldv_24682:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_24681;
  } else
  if (ldv_s_t1pci_pci_driver_pci_driver != 0) {
    goto ldv_24681;
  } else {
    goto ldv_24683;
  }
  ldv_24683: ;
  ldv_module_exit:
  {
  t1pci_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
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
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
struct sk_buff *ldv_skb_clone_22(struct sk_buff *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  tmp = skb_clone(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_24(struct sk_buff const *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  tmp = skb_copy(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_25(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg3);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_26(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg3);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp);
}
}
int ldv_pskb_expand_head_27(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t ldv_func_arg4 )
{ int tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg4);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  }
  return (tmp);
}
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int attach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
avmcard_dmainfo *avmcard_dma_alloc(char *arg0, struct pci_dev *arg1, long arg2, long arg3) {
  return ldv_malloc(sizeof(avmcard_dmainfo));
}
void avmcard_dma_free(avmcard_dmainfo *arg0) {
  return;
}
avmcard *b1_alloc_card(int arg0) {
  return ldv_malloc(sizeof(avmcard));
}
void b1_free_card(avmcard *arg0) {
  return;
}
void b1dma_reset(avmcard *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int detach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
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
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void register_capi_driver(struct capi_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int t1pci_detect(avmcard *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_capi_driver(struct capi_driver *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
