extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
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
typedef unsigned int gfp_t;
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
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct arch_spinlock;
struct arch_spinlock;
struct cpuinfo_x86;
struct cpuinfo_x86;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
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
   __u32 x86_capability[10U] ;
   char x86_vendor_id[16U] ;
   char x86_model_id[64U] ;
   int x86_cache_size ;
   int x86_cache_alignment ;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
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
struct vm_area_struct;
struct vm_area_struct;
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
struct mce {
   __u64 status ;
   __u64 misc ;
   __u64 addr ;
   __u64 mcgstatus ;
   __u64 ip ;
   __u64 tsc ;
   __u64 time ;
   __u8 cpuvendor ;
   __u8 inject_flags ;
   __u16 pad ;
   __u32 cpuid ;
   __u8 cs ;
   __u8 bank ;
   __u8 cpu ;
   __u8 finished ;
   __u32 extcpu ;
   __u32 socketid ;
   __u32 apicid ;
   __u64 mcgcap ;
};
struct edac_mce_attr {
   struct attribute attr ;
   ssize_t (*show)(struct kobject * , struct edac_mce_attr * , char * ) ;
   ssize_t (*store)(struct kobject * , struct edac_mce_attr * , char const * , size_t ) ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{ int tmp ;
  unsigned long long *__cil_tmp6 ;
  {
  {
  __cil_tmp6 = (unsigned long long *)res;
  tmp = kstrtoull(s, base, __cil_tmp6);
  }
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern struct cpuinfo_x86 boot_cpu_data ;
extern int sysfs_create_file(struct kobject * , struct attribute const * ) ;
extern void sysfs_remove_file(struct kobject * , struct attribute const * ) ;
extern void kobject_del(struct kobject * ) ;
extern struct kobject *kobject_create_and_add(char const * , struct kobject * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern struct bus_type *edac_get_sysfs_subsys(void) ;
extern void edac_put_sysfs_subsys(void) ;
extern int amd_decode_mce(struct notifier_block * , unsigned long , void * ) ;
static struct kobject *mce_kobj ;
static struct mce i_mce ;
static ssize_t edac_inject_status_store(struct kobject *kobj , struct edac_mce_attr *attr ,
                                        char const *data , size_t count )
{ int ret ;
  unsigned long value ;
  struct mce *__cil_tmp7 ;
  unsigned long *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  ret = 0;
  ret = kstrtoul(data, 16U, & value);
  }
  if (ret < 0) {
    {
    printk("<3>Error writing MCE status field.\n");
    }
  } else {
  }
  __cil_tmp7 = & i_mce;
  __cil_tmp8 = & value;
  __cil_tmp9 = *__cil_tmp8;
  *((__u64 *)__cil_tmp7) = (__u64 )__cil_tmp9;
  return ((ssize_t )count);
}
}
static ssize_t edac_inject_misc_store(struct kobject *kobj , struct edac_mce_attr *attr ,
                                      char const *data , size_t count )
{ int ret ;
  unsigned long value ;
  unsigned long __cil_tmp7 ;
  unsigned long *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  ret = 0;
  ret = kstrtoul(data, 16U, & value);
  }
  if (ret < 0) {
    {
    printk("<3>Error writing MCE misc field.\n");
    }
  } else {
  }
  __cil_tmp7 = (unsigned long )(& i_mce) + 8;
  __cil_tmp8 = & value;
  __cil_tmp9 = *__cil_tmp8;
  *((__u64 *)__cil_tmp7) = (__u64 )__cil_tmp9;
  return ((ssize_t )count);
}
}
static ssize_t edac_inject_addr_store(struct kobject *kobj , struct edac_mce_attr *attr ,
                                      char const *data , size_t count )
{ int ret ;
  unsigned long value ;
  unsigned long __cil_tmp7 ;
  unsigned long *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  ret = 0;
  ret = kstrtoul(data, 16U, & value);
  }
  if (ret < 0) {
    {
    printk("<3>Error writing MCE addr field.\n");
    }
  } else {
  }
  __cil_tmp7 = (unsigned long )(& i_mce) + 16;
  __cil_tmp8 = & value;
  __cil_tmp9 = *__cil_tmp8;
  *((__u64 *)__cil_tmp7) = (__u64 )__cil_tmp9;
  return ((ssize_t )count);
}
}
static ssize_t edac_inject_status_show(struct kobject *kobj , struct edac_mce_attr *attr ,
                                       char *buf )
{ int tmp ;
  struct mce *__cil_tmp5 ;
  __u64 __cil_tmp6 ;
  {
  {
  __cil_tmp5 = & i_mce;
  __cil_tmp6 = *((__u64 *)__cil_tmp5);
  tmp = sprintf(buf, "0x%016llx\n", __cil_tmp6);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t edac_inject_misc_show(struct kobject *kobj , struct edac_mce_attr *attr ,
                                     char *buf )
{ int tmp ;
  unsigned long __cil_tmp5 ;
  __u64 __cil_tmp6 ;
  {
  {
  __cil_tmp5 = (unsigned long )(& i_mce) + 8;
  __cil_tmp6 = *((__u64 *)__cil_tmp5);
  tmp = sprintf(buf, "0x%016llx\n", __cil_tmp6);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t edac_inject_addr_show(struct kobject *kobj , struct edac_mce_attr *attr ,
                                     char *buf )
{ int tmp ;
  unsigned long __cil_tmp5 ;
  __u64 __cil_tmp6 ;
  {
  {
  __cil_tmp5 = (unsigned long )(& i_mce) + 16;
  __cil_tmp6 = *((__u64 *)__cil_tmp5);
  tmp = sprintf(buf, "0x%016llx\n", __cil_tmp6);
  }
  return ((ssize_t )tmp);
}
}
static struct edac_mce_attr mce_attr_status = {{"status", (umode_t )420U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                             {(char)0}, {(char)0},
                                                             {(char)0}, {(char)0},
                                                             {(char)0}, {(char)0}}}},
    & edac_inject_status_show, & edac_inject_status_store};
static struct edac_mce_attr mce_attr_misc = {{"misc", (umode_t )420U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}}}},
    & edac_inject_misc_show, & edac_inject_misc_store};
static struct edac_mce_attr mce_attr_addr = {{"addr", (umode_t )420U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}}}},
    & edac_inject_addr_show, & edac_inject_addr_store};
static ssize_t edac_inject_bank_store(struct kobject *kobj , struct edac_mce_attr *attr ,
                                      char const *data , size_t count )
{ int ret ;
  unsigned long value ;
  unsigned long *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct cpuinfo_x86 *__cil_tmp9 ;
  __u8 __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned long *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct notifier_block *__cil_tmp21 ;
  void *__cil_tmp22 ;
  {
  {
  ret = 0;
  ret = kstrtoul(data, 10U, & value);
  }
  if (ret < 0) {
    {
    printk("<3>Invalid bank value!\n");
    }
    return (-22L);
  } else {
  }
  {
  __cil_tmp7 = & value;
  __cil_tmp8 = *__cil_tmp7;
  if (__cil_tmp8 > 5UL) {
    {
    __cil_tmp9 = & boot_cpu_data;
    __cil_tmp10 = *((__u8 *)__cil_tmp9);
    __cil_tmp11 = (unsigned int )__cil_tmp10;
    if (__cil_tmp11 != 21U) {
      {
      __cil_tmp12 = & value;
      __cil_tmp13 = *__cil_tmp12;
      printk("<3>Non-existent MCE bank: %lu\n", __cil_tmp13);
      }
      return (-22L);
    } else {
      {
      __cil_tmp14 = & value;
      __cil_tmp15 = *__cil_tmp14;
      if (__cil_tmp15 > 6UL) {
        {
        __cil_tmp16 = & value;
        __cil_tmp17 = *__cil_tmp16;
        printk("<3>Non-existent MCE bank: %lu\n", __cil_tmp17);
        }
        return (-22L);
      } else {
      }
      }
    }
    }
  } else {
  }
  }
  {
  __cil_tmp18 = (unsigned long )(& i_mce) + 65;
  __cil_tmp19 = & value;
  __cil_tmp20 = *__cil_tmp19;
  *((__u8 *)__cil_tmp18) = (__u8 )__cil_tmp20;
  __cil_tmp21 = (struct notifier_block *)0;
  __cil_tmp22 = (void *)(& i_mce);
  amd_decode_mce(__cil_tmp21, 0UL, __cil_tmp22);
  }
  return ((ssize_t )count);
}
}
static ssize_t edac_inject_bank_show(struct kobject *kobj , struct edac_mce_attr *attr ,
                                     char *buf )
{ int tmp ;
  unsigned long __cil_tmp5 ;
  __u8 __cil_tmp6 ;
  int __cil_tmp7 ;
  {
  {
  __cil_tmp5 = (unsigned long )(& i_mce) + 65;
  __cil_tmp6 = *((__u8 *)__cil_tmp5);
  __cil_tmp7 = (int )__cil_tmp6;
  tmp = sprintf(buf, "%d\n", __cil_tmp7);
  }
  return ((ssize_t )tmp);
}
}
static struct edac_mce_attr mce_attr_bank = {{"bank", (umode_t )420U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}}}},
    & edac_inject_bank_show, & edac_inject_bank_store};
static struct edac_mce_attr *sysfs_attrs[4U] = { & mce_attr_status, & mce_attr_misc, & mce_attr_addr, & mce_attr_bank};
static int edac_init_mce_inject(void)
{ struct bus_type *edac_subsys___0 ;
  int i ;
  int err ;
  struct bus_type *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct kobject *__cil_tmp12 ;
  struct kobject *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct edac_mce_attr *__cil_tmp18 ;
  struct attribute *__cil_tmp19 ;
  struct attribute const *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct edac_mce_attr *__cil_tmp23 ;
  char const *__cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct edac_mce_attr *__cil_tmp28 ;
  struct attribute *__cil_tmp29 ;
  struct attribute const *__cil_tmp30 ;
  {
  {
  edac_subsys___0 = (struct bus_type *)0;
  err = 0;
  edac_subsys___0 = edac_get_sysfs_subsys();
  }
  {
  __cil_tmp4 = (struct bus_type *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = (unsigned long )edac_subsys___0;
  if (__cil_tmp6 == __cil_tmp5) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp7 = (unsigned long )edac_subsys___0;
  __cil_tmp8 = __cil_tmp7 + 16;
  __cil_tmp9 = *((struct device **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 16;
  __cil_tmp12 = (struct kobject *)__cil_tmp11;
  mce_kobj = kobject_create_and_add("mce", __cil_tmp12);
  }
  {
  __cil_tmp13 = (struct kobject *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )mce_kobj;
  if (__cil_tmp15 == __cil_tmp14) {
    {
    printk("<3>Error creating a mce kset.\n");
    err = -12;
    }
    goto err_mce_kobj;
  } else {
  }
  }
  i = 0;
  goto ldv_15311;
  ldv_15310:
  {
  __cil_tmp16 = i * 8UL;
  __cil_tmp17 = (unsigned long )(sysfs_attrs) + __cil_tmp16;
  __cil_tmp18 = *((struct edac_mce_attr **)__cil_tmp17);
  __cil_tmp19 = (struct attribute *)__cil_tmp18;
  __cil_tmp20 = (struct attribute const *)__cil_tmp19;
  err = sysfs_create_file(mce_kobj, __cil_tmp20);
  }
  if (err != 0) {
    {
    __cil_tmp21 = i * 8UL;
    __cil_tmp22 = (unsigned long )(sysfs_attrs) + __cil_tmp21;
    __cil_tmp23 = *((struct edac_mce_attr **)__cil_tmp22);
    __cil_tmp24 = *((char const **)__cil_tmp23);
    printk("<3>Error creating %s in sysfs.\n", __cil_tmp24);
    }
    goto err_sysfs_create;
  } else {
  }
  i = i + 1;
  ldv_15311: ;
  {
  __cil_tmp25 = (unsigned int )i;
  if (__cil_tmp25 <= 3U) {
    goto ldv_15310;
  } else {
    goto ldv_15312;
  }
  }
  ldv_15312: ;
  return (0);
  err_sysfs_create: ;
  goto ldv_15314;
  ldv_15313:
  {
  __cil_tmp26 = i * 8UL;
  __cil_tmp27 = (unsigned long )(sysfs_attrs) + __cil_tmp26;
  __cil_tmp28 = *((struct edac_mce_attr **)__cil_tmp27);
  __cil_tmp29 = (struct attribute *)__cil_tmp28;
  __cil_tmp30 = (struct attribute const *)__cil_tmp29;
  sysfs_remove_file(mce_kobj, __cil_tmp30);
  }
  ldv_15314:
  i = i - 1;
  if (i >= 0) {
    goto ldv_15313;
  } else {
    goto ldv_15315;
  }
  ldv_15315:
  {
  kobject_del(mce_kobj);
  }
  err_mce_kobj:
  {
  edac_put_sysfs_subsys();
  }
  return (err);
}
}
static void edac_exit_mce_inject(void)
{ int i ;
  unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct edac_mce_attr *__cil_tmp4 ;
  struct attribute *__cil_tmp5 ;
  struct attribute const *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  {
  i = 0;
  goto ldv_15323;
  ldv_15322:
  {
  __cil_tmp2 = i * 8UL;
  __cil_tmp3 = (unsigned long )(sysfs_attrs) + __cil_tmp2;
  __cil_tmp4 = *((struct edac_mce_attr **)__cil_tmp3);
  __cil_tmp5 = (struct attribute *)__cil_tmp4;
  __cil_tmp6 = (struct attribute const *)__cil_tmp5;
  sysfs_remove_file(mce_kobj, __cil_tmp6);
  i = i + 1;
  }
  ldv_15323: ;
  {
  __cil_tmp7 = (unsigned int )i;
  if (__cil_tmp7 <= 3U) {
    goto ldv_15322;
  } else {
    goto ldv_15324;
  }
  }
  ldv_15324:
  {
  kobject_del(mce_kobj);
  edac_put_sysfs_subsys();
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = edac_init_mce_inject();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_15355;
  ldv_15354:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  {
  goto switch_default;
  if (0) {
    switch_default: ;
    goto ldv_15353;
  } else {
    switch_break: ;
  }
  }
  ldv_15353: ;
  ldv_15355:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_15354;
  } else {
    goto ldv_15356;
  }
  ldv_15356: ;
  {
  edac_exit_mce_inject();
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
int __VERIFIER_nondet_int(void);
int amd_decode_mce(struct notifier_block *arg0, unsigned long arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
struct bus_type *edac_get_sysfs_subsys() {
  return ldv_malloc(sizeof(struct bus_type));
}
void edac_put_sysfs_subsys() {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
struct kobject *kobject_create_and_add(const char *arg0, struct kobject *arg1) {
  return ldv_malloc(sizeof(struct kobject));
}
void kobject_del(struct kobject *arg0) {
  return;
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
struct page *ldv_some_page() {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_file(struct kobject *arg0, const struct attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_file(struct kobject *arg0, const struct attribute *arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
