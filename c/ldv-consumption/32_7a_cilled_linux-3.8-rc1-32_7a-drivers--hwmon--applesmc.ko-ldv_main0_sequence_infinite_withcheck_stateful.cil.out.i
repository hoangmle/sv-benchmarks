extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
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
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct completion;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct page;
struct file;
struct seq_file;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
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
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
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
struct vm_area_struct;
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
struct timespec;
struct kref {
   atomic_t refcount ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
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
   int cpu ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
};
struct dev_pm_qos;
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
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
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
struct acpi_device_id;
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
struct acpi_dev_node {
   void *handle ;
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
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct dmi_strmatch {
   unsigned char slot ;
   char substr[79U] ;
};
struct dmi_system_id {
   int (*callback)(struct dmi_system_id const * ) ;
   char const *ident ;
   struct dmi_strmatch matches[4U] ;
   void *driver_data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_device_info {
   struct device *parent ;
   struct acpi_dev_node acpi_node ;
   char const *name ;
   int id ;
   struct resource const *res ;
   unsigned int num_res ;
   void const *data ;
   size_t size_data ;
   u64 dma_mask ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_37 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_37 u ;
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
struct path;
struct vfsmount;
struct __anonstruct_ldv_9886_39 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_9888_38 {
   struct __anonstruct_ldv_9886_39 ldv_9886 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_9888_38 ldv_9888 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_40 {
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
   union __anonunion_d_u_40 d_u ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
union __anonunion_ldv_14200_134 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_14200_134 ldv_14200 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_136 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_135 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_136 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_135 read_descriptor_t;
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
union __anonunion_ldv_14636_137 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_14656_138 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_14672_139 {
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
   union __anonunion_ldv_14636_137 ldv_14636 ;
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
   union __anonunion_ldv_14656_138 ldv_14656 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_14672_139 ldv_14672 ;
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
union __anonunion_f_u_140 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_140 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_142 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_141 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_142 afs ;
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
   union __anonunion_fl_u_141 fl_u ;
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
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
struct input_polled_dev {
   void *private ;
   void (*open)(struct input_polled_dev * ) ;
   void (*close)(struct input_polled_dev * ) ;
   void (*poll)(struct input_polled_dev * ) ;
   unsigned int poll_interval ;
   unsigned int poll_interval_max ;
   unsigned int poll_interval_min ;
   struct input_dev *input ;
   struct delayed_work work ;
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
union __anonunion_ldv_19395_151 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_19395_151 ldv_19395 ;
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
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   int brightness ;
   int max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct applesmc_dev_attr {
   struct sensor_device_attribute sda ;
   char name[32U] ;
};
struct applesmc_node_group {
   char *format ;
   void *show ;
   void *store ;
   int option ;
   struct applesmc_dev_attr *nodes ;
};
struct applesmc_entry {
   char key[5U] ;
   u8 valid ;
   u8 len ;
   char type[5U] ;
   u8 flags ;
};
struct applesmc_registers {
   struct mutex mutex ;
   unsigned int key_count ;
   unsigned int fan_count ;
   unsigned int temp_count ;
   unsigned int temp_begin ;
   unsigned int temp_end ;
   unsigned int index_count ;
   int num_light_sensors ;
   bool has_accelerometer ;
   bool has_key_backlight ;
   bool init_complete ;
   struct applesmc_entry *cache ;
   char const **index ;
};
typedef int ldv_func_ret_type___2;
long ldv__builtin_expect(long exp , long c ) ;
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
extern int printk(char const * , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern int strcmp(char const * , char const * ) ;
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern int sysfs_create_file(struct kobject * , struct attribute const * ) ;
extern void sysfs_remove_file(struct kobject * , struct attribute const * ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_register_full(struct platform_device_info const * ) ;
__inline static struct platform_device *platform_device_register_resndata(struct device *parent ,
                                                                          char const *name ,
                                                                          int id ,
                                                                          struct resource const *res ,
                                                                          unsigned int num ,
                                                                          void const *data ,
                                                                          size_t size )
{
  struct platform_device_info pdevinfo ;
  struct platform_device *tmp ;
  {
  pdevinfo.parent = parent;
  pdevinfo.acpi_node.handle = 0;
  pdevinfo.name = name;
  pdevinfo.id = id;
  pdevinfo.res = res;
  pdevinfo.num_res = num;
  pdevinfo.data = data;
  pdevinfo.size_data = size;
  pdevinfo.dma_mask = 0ULL;
  tmp = platform_device_register_full((struct platform_device_info const *)(& pdevinfo));
  return (tmp);
}
}
__inline static struct platform_device *platform_device_register_simple(char const *name ,
                                                                        int id , struct resource const *res ,
                                                                        unsigned int num )
{
  struct platform_device *tmp ;
  {
  tmp = platform_device_register_resndata(0, name, id, res, num, 0, 0UL);
  return (tmp);
}
}
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
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
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_abs(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  input_event(dev, 3U, code, value);
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  input_event(dev, 0U, 0U, 0);
  return;
}
}
extern void input_set_abs_params(struct input_dev * , unsigned int , int , int ,
                                 int , int ) ;
extern struct input_polled_dev *input_allocate_polled_device(void) ;
extern void input_free_polled_device(struct input_polled_dev * ) ;
extern int input_register_polled_device(struct input_polled_dev * ) ;
extern void input_unregister_polled_device(struct input_polled_dev * ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
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
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return (0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
extern struct module __this_module ;
extern int dmi_check_system(struct dmi_system_id const * ) ;
extern int led_classdev_register(struct device * , struct led_classdev * ) ;
extern void led_classdev_unregister(struct led_classdev * ) ;
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
static char const * const fan_speed_fmt[5U] = { "F%dAc", "F%dMn", "F%dMx", "F%dSf",
        "F%dTg"};
static struct applesmc_registers smcreg =
     {{{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "smcreg.mutex.wait_lock",
                                                                      0, 0UL}}}},
     {& smcreg.mutex.wait_list, & smcreg.mutex.wait_list}, 0, 0, (void *)(& smcreg.mutex),
     {0, {0, 0}, "smcreg.mutex", 0, 0UL}}, 0U, 0U, 0U, 0U, 0U, 0U, 0, (_Bool)0, (_Bool)0,
    (_Bool)0, 0, 0};
static int const debug ;
static struct platform_device *pdev ;
static s16 rest_x ;
static s16 rest_y ;
static u8 backlight_state[2U] ;
static struct device *hwmon_dev ;
static struct input_polled_dev *applesmc_idev ;
static unsigned int key_at_index ;
static struct workqueue_struct *applesmc_led_wq ;
static int wait_read(void)
{
  u8 status ;
  int us ;
  {
  us = 16;
  goto ldv_20201;
  ldv_20200:
  __udelay((unsigned long )us);
  status = inb(772);
  if ((int )status & 1) {
    return (0);
  } else {
  }
  us = us << 1;
  ldv_20201: ;
  if (us <= 131071) {
    goto ldv_20200;
  } else {
  }
  printk("\fapplesmc: wait_read() fail: 0x%02x\n", (int )status);
  return (-5);
}
}
static int send_byte(u8 cmd , u16 port )
{
  u8 status ;
  int us ;
  {
  outb((int )cmd, (int )port);
  us = 16;
  goto ldv_20212;
  ldv_20211:
  __udelay((unsigned long )us);
  status = inb(772);
  if (((int )status & 2) != 0) {
    goto ldv_20209;
  } else {
  }
  if (((int )status & 4) != 0) {
    return (0);
  } else {
  }
  if (us << 1 == 131072) {
    goto ldv_20210;
  } else {
  }
  __const_udelay(1099520UL);
  outb((int )cmd, (int )port);
  ldv_20209:
  us = us << 1;
  ldv_20212: ;
  if (us <= 131071) {
    goto ldv_20211;
  } else {
  }
  ldv_20210:
  printk("\fapplesmc: send_byte(0x%02x, 0x%04x) fail: 0x%02x\n", (int )cmd, (int )port,
         (int )status);
  return (-5);
}
}
static int send_command(u8 cmd )
{
  int tmp ;
  {
  tmp = send_byte((int )cmd, 772);
  return (tmp);
}
}
static int send_argument(char const *key )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_20221;
  ldv_20220:
  tmp = send_byte((int )((u8 )*(key + (unsigned long )i)), 768);
  if (tmp != 0) {
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_20221: ;
  if (i <= 3) {
    goto ldv_20220;
  } else {
  }
  return (0);
}
}
static int read_smc(u8 cmd , char const *key , u8 *buffer , u8 len )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = send_command((int )cmd);
  if (tmp != 0) {
    printk("\fapplesmc: %.4s: read arg fail\n", key);
    return (-5);
  } else {
    tmp___0 = send_argument(key);
    if (tmp___0 != 0) {
      printk("\fapplesmc: %.4s: read arg fail\n", key);
      return (-5);
    } else {
    }
  }
  tmp___1 = send_byte((int )len, 768);
  if (tmp___1 != 0) {
    printk("\fapplesmc: %.4s: read len fail\n", key);
    return (-5);
  } else {
  }
  i = 0;
  goto ldv_20231;
  ldv_20230:
  tmp___2 = wait_read();
  if (tmp___2 != 0) {
    printk("\fapplesmc: %.4s: read data[%d] fail\n", key, i);
    return (-5);
  } else {
  }
  *(buffer + (unsigned long )i) = inb(768);
  i = i + 1;
  ldv_20231: ;
  if ((int )len > i) {
    goto ldv_20230;
  } else {
  }
  return (0);
}
}
static int write_smc(u8 cmd , char const *key , u8 const *buffer , u8 len )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = send_command((int )cmd);
  if (tmp != 0) {
    printk("\fapplesmc: %s: write arg fail\n", key);
    return (-5);
  } else {
    tmp___0 = send_argument(key);
    if (tmp___0 != 0) {
      printk("\fapplesmc: %s: write arg fail\n", key);
      return (-5);
    } else {
    }
  }
  tmp___1 = send_byte((int )len, 768);
  if (tmp___1 != 0) {
    printk("\fapplesmc: %.4s: write len fail\n", key);
    return (-5);
  } else {
  }
  i = 0;
  goto ldv_20241;
  ldv_20240:
  tmp___2 = send_byte((int )*(buffer + (unsigned long )i), 768);
  if (tmp___2 != 0) {
    printk("\fapplesmc: %s: write data fail\n", key);
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_20241: ;
  if ((int )len > i) {
    goto ldv_20240;
  } else {
  }
  return (0);
}
}
static int read_register_count(unsigned int *count )
{
  __be32 be ;
  int ret ;
  __u32 tmp ;
  {
  ret = read_smc(16, "#KEY", (u8 *)(& be), 4);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = __fswab32(be);
  *count = tmp;
  return (0);
}
}
static int applesmc_read_entry(struct applesmc_entry const *entry , u8 *buf , u8 len )
{
  int ret ;
  {
  if ((int )((unsigned char )entry->len) != (int )len) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_6(& smcreg.mutex);
  ret = read_smc(16, (char const *)(& entry->key), buf, (int )len);
  ldv_mutex_unlock_7(& smcreg.mutex);
  return (ret);
}
}
static int applesmc_write_entry(struct applesmc_entry const *entry , u8 const *buf ,
                                u8 len )
{
  int ret ;
  {
  if ((int )((unsigned char )entry->len) != (int )len) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_8(& smcreg.mutex);
  ret = write_smc(17, (char const *)(& entry->key), buf, (int )len);
  ldv_mutex_unlock_9(& smcreg.mutex);
  return (ret);
}
}
static struct applesmc_entry const *applesmc_get_entry_by_index(int index )
{
  struct applesmc_entry *cache ;
  u8 key[4U] ;
  u8 info[6U] ;
  __be32 be ;
  int ret ;
  __u32 tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  void *tmp___0 ;
  {
  cache = smcreg.cache + (unsigned long )index;
  ret = 0;
  if ((unsigned int )cache->valid != 0U) {
    return ((struct applesmc_entry const *)cache);
  } else {
  }
  ldv_mutex_lock_10(& smcreg.mutex);
  if ((unsigned int )cache->valid != 0U) {
    goto out;
  } else {
  }
  tmp = __fswab32((__u32 )index);
  be = tmp;
  ret = read_smc(18, (char const *)(& be), (u8 *)(& key), 4);
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = read_smc(19, (char const *)(& key), (u8 *)(& info), 6);
  if (ret != 0) {
    goto out;
  } else {
  }
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& cache->key), (void const *)(& key), __len);
  } else {
    __ret = memcpy((void *)(& cache->key), (void const *)(& key), __len);
  }
  cache->len = info[0];
  __len___0 = 4UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& cache->type), (void const *)(& info) + 1U, __len___0);
  } else {
    __ret___0 = memcpy((void *)(& cache->type), (void const *)(& info) + 1U,
                                 __len___0);
  }
  cache->flags = info[5];
  cache->valid = 1U;
  out:
  ldv_mutex_unlock_11(& smcreg.mutex);
  if (ret != 0) {
    tmp___0 = ERR_PTR((long )ret);
    return ((struct applesmc_entry const *)tmp___0);
  } else {
  }
  return ((struct applesmc_entry const *)cache);
}
}
static int applesmc_get_lower_bound(unsigned int *lo , char const *key )
{
  int begin ;
  int end ;
  struct applesmc_entry const *entry ;
  int middle ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  begin = 0;
  end = (int )smcreg.key_count;
  goto ldv_20284;
  ldv_20283:
  middle = (end - begin) / 2 + begin;
  entry = applesmc_get_entry_by_index(middle);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    *lo = 0U;
    tmp = PTR_ERR((void const *)entry);
    return ((int )tmp);
  } else {
  }
  tmp___1 = strcmp((char const *)(& entry->key), key);
  if (tmp___1 < 0) {
    begin = middle + 1;
  } else {
    end = middle;
  }
  ldv_20284: ;
  if (begin != end) {
    goto ldv_20283;
  } else {
  }
  *lo = (unsigned int )begin;
  return (0);
}
}
static int applesmc_get_upper_bound(unsigned int *hi , char const *key )
{
  int begin ;
  int end ;
  struct applesmc_entry const *entry ;
  int middle ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  begin = 0;
  end = (int )smcreg.key_count;
  goto ldv_20295;
  ldv_20294:
  middle = (end - begin) / 2 + begin;
  entry = applesmc_get_entry_by_index(middle);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    *hi = smcreg.key_count;
    tmp = PTR_ERR((void const *)entry);
    return ((int )tmp);
  } else {
  }
  tmp___1 = strcmp(key, (char const *)(& entry->key));
  if (tmp___1 < 0) {
    end = middle;
  } else {
    begin = middle + 1;
  }
  ldv_20295: ;
  if (begin != end) {
    goto ldv_20294;
  } else {
  }
  *hi = (unsigned int )begin;
  return (0);
}
}
static struct applesmc_entry const *applesmc_get_entry_by_key(char const *key )
{
  int begin ;
  int end ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct applesmc_entry const *tmp___2 ;
  {
  ret = applesmc_get_lower_bound((unsigned int *)(& begin), key);
  if (ret != 0) {
    tmp = ERR_PTR((long )ret);
    return ((struct applesmc_entry const *)tmp);
  } else {
  }
  ret = applesmc_get_upper_bound((unsigned int *)(& end), key);
  if (ret != 0) {
    tmp___0 = ERR_PTR((long )ret);
    return ((struct applesmc_entry const *)tmp___0);
  } else {
  }
  if (end - begin != 1) {
    tmp___1 = ERR_PTR(-22L);
    return ((struct applesmc_entry const *)tmp___1);
  } else {
  }
  tmp___2 = applesmc_get_entry_by_index(begin);
  return (tmp___2);
}
}
static int applesmc_read_key(char const *key , u8 *buffer , u8 len )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  entry = applesmc_get_entry_by_key(key);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return ((int )tmp);
  } else {
  }
  tmp___1 = applesmc_read_entry(entry, buffer, (int )len);
  return (tmp___1);
}
}
static int applesmc_write_key(char const *key , u8 const *buffer , u8 len )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  entry = applesmc_get_entry_by_key(key);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return ((int )tmp);
  } else {
  }
  tmp___1 = applesmc_write_entry(entry, buffer, (int )len);
  return (tmp___1);
}
}
static int applesmc_has_key(char const *key , bool *value )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  entry = applesmc_get_entry_by_key(key);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp___1 = PTR_ERR((void const *)entry);
    if (tmp___1 != -22L) {
      tmp = PTR_ERR((void const *)entry);
      return ((int )tmp);
    } else {
    }
  } else {
  }
  tmp___2 = IS_ERR((void const *)entry);
  *value = tmp___2 == 0L;
  return (0);
}
}
static int applesmc_read_s16(char const *key , s16 *value )
{
  u8 buffer[2U] ;
  int ret ;
  {
  ret = applesmc_read_key(key, (u8 *)(& buffer), 2);
  if (ret != 0) {
    return (ret);
  } else {
  }
  *value = (int )((s16 )((int )buffer[0] << 8)) | (int )((s16 )buffer[1]);
  return (0);
}
}
static void applesmc_device_init(void)
{
  int total ;
  u8 buffer[2U] ;
  int tmp ;
  {
  if (! smcreg.has_accelerometer) {
    return;
  } else {
  }
  total = 5000;
  goto ldv_20332;
  ldv_20331:
  tmp = applesmc_read_key("MOCN", (u8 *)(& buffer), 2);
  if (tmp == 0 && ((unsigned int )buffer[0] != 0U || (unsigned int )buffer[1] != 0U)) {
    return;
  } else {
  }
  buffer[0] = 224U;
  buffer[1] = 0U;
  applesmc_write_key("MOCN", (u8 const *)(& buffer), 2);
  msleep(50U);
  total = total + -50;
  ldv_20332: ;
  if (total > 0) {
    goto ldv_20331;
  } else {
  }
  printk("\fapplesmc: failed to init the device\n");
  return;
}
}
static int applesmc_init_index(struct applesmc_registers *s )
{
  struct applesmc_entry const *entry ;
  unsigned int i ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  if ((unsigned long )s->index != (unsigned long )((char const **)0)) {
    return (0);
  } else {
  }
  tmp = kcalloc((size_t )s->temp_count, 8UL, 208U);
  s->index = (char const **)tmp;
  if ((unsigned long )s->index == (unsigned long )((char const **)0)) {
    return (-12);
  } else {
  }
  i = s->temp_begin;
  goto ldv_20341;
  ldv_20340:
  entry = applesmc_get_entry_by_index((int )i);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    goto ldv_20339;
  } else {
  }
  tmp___1 = strcmp((char const *)(& entry->type), "sp78");
  if (tmp___1 != 0) {
    goto ldv_20339;
  } else {
  }
  tmp___2 = s->index_count;
  s->index_count = s->index_count + 1U;
  *(s->index + (unsigned long )tmp___2) = (char const *)(& entry->key);
  ldv_20339:
  i = i + 1U;
  ldv_20341: ;
  if (s->temp_end > i) {
    goto ldv_20340;
  } else {
  }
  return (0);
}
}
static int applesmc_init_smcreg_try(void)
{
  struct applesmc_registers *s ;
  bool left_light_sensor ;
  bool right_light_sensor ;
  u8 tmp[1U] ;
  int ret ;
  void *tmp___0 ;
  {
  s = & smcreg;
  if ((int )s->init_complete) {
    return (0);
  } else {
  }
  ret = read_register_count(& s->key_count);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned long )s->cache == (unsigned long )((struct applesmc_entry *)0)) {
    tmp___0 = kcalloc((size_t )s->key_count, 13UL, 208U);
    s->cache = (struct applesmc_entry *)tmp___0;
  } else {
  }
  if ((unsigned long )s->cache == (unsigned long )((struct applesmc_entry *)0)) {
    return (-12);
  } else {
  }
  ret = applesmc_read_key("FNum", (u8 *)(& tmp), 1);
  if (ret != 0) {
    return (ret);
  } else {
  }
  s->fan_count = (unsigned int )tmp[0];
  ret = applesmc_get_lower_bound(& s->temp_begin, "T");
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = applesmc_get_lower_bound(& s->temp_end, "U");
  if (ret != 0) {
    return (ret);
  } else {
  }
  s->temp_count = s->temp_end - s->temp_begin;
  ret = applesmc_init_index(s);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = applesmc_has_key("ALV0", & left_light_sensor);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = applesmc_has_key("ALV1", & right_light_sensor);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = applesmc_has_key("MOCN", & s->has_accelerometer);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = applesmc_has_key("LKSB", & s->has_key_backlight);
  if (ret != 0) {
    return (ret);
  } else {
  }
  s->num_light_sensors = (int )left_light_sensor + (int )right_light_sensor;
  s->init_complete = 1;
  printk("\016applesmc: key=%d fan=%d temp=%d index=%d acc=%d lux=%d kbd=%d\n", s->key_count,
         s->fan_count, s->temp_count, s->index_count, (int )s->has_accelerometer,
         s->num_light_sensors, (int )s->has_key_backlight);
  return (0);
}
}
static void applesmc_destroy_smcreg(void)
{
  {
  kfree((void const *)smcreg.index);
  smcreg.index = 0;
  kfree((void const *)smcreg.cache);
  smcreg.cache = 0;
  smcreg.init_complete = 0;
  return;
}
}
static int applesmc_init_smcreg(void)
{
  int ms ;
  int ret ;
  {
  ms = 0;
  goto ldv_20360;
  ldv_20359:
  ret = applesmc_init_smcreg_try();
  if (ret == 0) {
    if (ms != 0) {
      printk("\016applesmc: init_smcreg() took %d ms\n", ms);
    } else {
    }
    return (0);
  } else {
  }
  msleep(50U);
  ms = ms + 50;
  ldv_20360: ;
  if (ms <= 4999) {
    goto ldv_20359;
  } else {
  }
  applesmc_destroy_smcreg();
  return (ret);
}
}
static int applesmc_probe(struct platform_device *dev )
{
  int ret ;
  {
  ret = applesmc_init_smcreg();
  if (ret != 0) {
    return (ret);
  } else {
  }
  applesmc_device_init();
  return (0);
}
}
static int applesmc_pm_resume(struct device *dev )
{
  {
  if ((int )smcreg.has_key_backlight) {
    applesmc_write_key("LKSB", (u8 const *)(& backlight_state), 2);
  } else {
  }
  return (0);
}
}
static int applesmc_pm_restore(struct device *dev )
{
  int tmp ;
  {
  applesmc_device_init();
  tmp = applesmc_pm_resume(dev);
  return (tmp);
}
}
static struct dev_pm_ops const applesmc_pm_ops =
     {0, 0, 0, & applesmc_pm_resume, 0, 0, 0, & applesmc_pm_restore, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct platform_driver applesmc_driver = {& applesmc_probe, 0, 0, 0, 0, {"applesmc", 0, & __this_module, 0, (_Bool)0, 0,
                                   0, 0, 0, 0, 0, 0, 0, & applesmc_pm_ops, 0}, 0};
static void applesmc_calibrate(void)
{
  {
  applesmc_read_s16("MO_X", & rest_x);
  applesmc_read_s16("MO_Y", & rest_y);
  rest_x = (s16 )(- ((int )((unsigned short )rest_x)));
  return;
}
}
static void applesmc_idev_poll(struct input_polled_dev *dev )
{
  struct input_dev *idev ;
  s16 x ;
  s16 y ;
  int tmp ;
  int tmp___0 ;
  {
  idev = dev->input;
  tmp = applesmc_read_s16("MO_X", & x);
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = applesmc_read_s16("MO_Y", & y);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  x = (s16 )(- ((int )((unsigned short )x)));
  input_report_abs(idev, 0U, (int )x - (int )rest_x);
  input_report_abs(idev, 1U, (int )y - (int )rest_y);
  input_sync(idev);
  return;
}
}
static ssize_t applesmc_name_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "applesmc\n");
  return ((ssize_t )tmp);
}
}
static ssize_t applesmc_position_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  int ret ;
  s16 x ;
  s16 y ;
  s16 z ;
  int tmp ;
  {
  ret = applesmc_read_s16("MO_X", & x);
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = applesmc_read_s16("MO_Y", & y);
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = applesmc_read_s16("MO_Z", & z);
  if (ret != 0) {
  } else {
  }
  out: ;
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp = snprintf(buf, 4096UL, "(%d,%d,%d)\n", (int )x, (int )y, (int )z);
    return ((ssize_t )tmp);
  }
}
}
static ssize_t applesmc_light_show(struct device *dev , struct device_attribute *attr ,
                                   char *sysfsbuf )
{
  struct applesmc_entry const *entry ;
  int data_length ;
  int ret ;
  u8 left ;
  u8 right ;
  u8 buffer[10U] ;
  long tmp ;
  long tmp___0 ;
  __u16 tmp___1 ;
  int tmp___2 ;
  {
  left = 0U;
  right = 0U;
  if (data_length == 0) {
    entry = applesmc_get_entry_by_key("ALV0");
    tmp___0 = IS_ERR((void const *)entry);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)entry);
      return (tmp);
    } else {
    }
    if ((unsigned int )((unsigned char )entry->len) > 10U) {
      return (-6L);
    } else {
    }
    data_length = (int )entry->len;
    printk("\016applesmc: light sensor data length set to %d\n", data_length);
  } else {
  }
  ret = applesmc_read_key("ALV0", (u8 *)(& buffer), (int )((u8 )data_length));
  if (data_length == 10) {
    tmp___1 = __fswab16((int )*((__be16 *)(& buffer) + 6U));
    left = (u8 )((int )tmp___1 >> 2);
    goto out;
  } else {
  }
  left = buffer[2];
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = applesmc_read_key("ALV1", (u8 *)(& buffer), (int )((u8 )data_length));
  right = buffer[2];
  out: ;
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp___2 = snprintf(sysfsbuf, 4096UL, "(%d,%d)\n", (int )left, (int )right);
    return ((ssize_t )tmp___2);
  }
}
}
static ssize_t applesmc_show_sensor_label(struct device *dev , struct device_attribute *devattr ,
                                          char *sysfsbuf )
{
  char const *key ;
  struct device_attribute const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device_attribute const *)devattr;
  key = *(smcreg.index + ((unsigned long )((struct sensor_device_attribute *)__mptr)->index & 65535UL));
  tmp = snprintf(sysfsbuf, 4096UL, "%s\n", key);
  return ((ssize_t )tmp);
}
}
static ssize_t applesmc_show_temperature(struct device *dev , struct device_attribute *devattr ,
                                         char *sysfsbuf )
{
  char const *key ;
  struct device_attribute const *__mptr ;
  int ret ;
  s16 value ;
  int temp ;
  int tmp ;
  {
  __mptr = (struct device_attribute const *)devattr;
  key = *(smcreg.index + ((unsigned long )((struct sensor_device_attribute *)__mptr)->index & 65535UL));
  ret = applesmc_read_s16(key, & value);
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  temp = ((int )value >> 6) * 250;
  tmp = snprintf(sysfsbuf, 4096UL, "%d\n", temp);
  return ((ssize_t )tmp);
}
}
static ssize_t applesmc_show_fan_speed(struct device *dev , struct device_attribute *attr ,
                                       char *sysfsbuf )
{
  int ret ;
  unsigned int speed ;
  char newkey[5U] ;
  u8 buffer[2U] ;
  struct device_attribute const *__mptr ;
  struct device_attribute const *__mptr___0 ;
  int tmp ;
  {
  speed = 0U;
  __mptr = (struct device_attribute const *)attr;
  __mptr___0 = (struct device_attribute const *)attr;
  sprintf((char *)(& newkey), fan_speed_fmt[((struct sensor_device_attribute *)__mptr___0)->index >> 16],
          ((struct sensor_device_attribute *)__mptr)->index & 65535);
  ret = applesmc_read_key((char const *)(& newkey), (u8 *)(& buffer), 2);
  speed = (unsigned int )((((int )buffer[0] << 8) | (int )buffer[1]) >> 2);
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp = snprintf(sysfsbuf, 4096UL, "%u\n", speed);
    return ((ssize_t )tmp);
  }
}
}
static ssize_t applesmc_store_fan_speed(struct device *dev , struct device_attribute *attr ,
                                        char const *sysfsbuf , size_t count )
{
  int ret ;
  unsigned long speed ;
  char newkey[5U] ;
  u8 buffer[2U] ;
  int tmp ;
  struct device_attribute const *__mptr ;
  struct device_attribute const *__mptr___0 ;
  {
  tmp = kstrtoul(sysfsbuf, 10U, & speed);
  if (tmp < 0 || speed > 16383UL) {
    return (-22L);
  } else {
  }
  __mptr = (struct device_attribute const *)attr;
  __mptr___0 = (struct device_attribute const *)attr;
  sprintf((char *)(& newkey), fan_speed_fmt[((struct sensor_device_attribute *)__mptr___0)->index >> 16],
          ((struct sensor_device_attribute *)__mptr)->index & 65535);
  buffer[0] = (u8 )(speed >> 6);
  buffer[1] = (int )((u8 )speed) << 2U;
  ret = applesmc_write_key((char const *)(& newkey), (u8 const *)(& buffer), 2);
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    return ((ssize_t )count);
  }
}
}
static ssize_t applesmc_show_fan_manual(struct device *dev , struct device_attribute *attr ,
                                        char *sysfsbuf )
{
  int ret ;
  u16 manual ;
  u8 buffer[2U] ;
  struct device_attribute const *__mptr ;
  int tmp ;
  {
  manual = 0U;
  ret = applesmc_read_key("FS! ", (u8 *)(& buffer), 2);
  __mptr = (struct device_attribute const *)attr;
  manual = (unsigned int )((u16 )((((int )buffer[0] << 8) | (int )buffer[1]) >> (((struct sensor_device_attribute *)__mptr)->index & 65535))) & 1U;
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp = snprintf(sysfsbuf, 4096UL, "%d\n", (int )manual);
    return ((ssize_t )tmp);
  }
}
}
static ssize_t applesmc_store_fan_manual(struct device *dev , struct device_attribute *attr ,
                                         char const *sysfsbuf , size_t count )
{
  int ret ;
  u8 buffer[2U] ;
  unsigned long input ;
  u16 val ;
  int tmp ;
  struct device_attribute const *__mptr ;
  struct device_attribute const *__mptr___0 ;
  {
  tmp = kstrtoul(sysfsbuf, 10U, & input);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  ret = applesmc_read_key("FS! ", (u8 *)(& buffer), 2);
  val = (u16 )((int )((short )((int )buffer[0] << 8)) | (int )((short )buffer[1]));
  if (ret != 0) {
    goto out;
  } else {
  }
  if (input != 0UL) {
    __mptr = (struct device_attribute const *)attr;
    val = (u16 )((int )((short )(1 << (((struct sensor_device_attribute *)__mptr)->index & 65535))) | (int )((short )val));
  } else {
    __mptr___0 = (struct device_attribute const *)attr;
    val = (u16 )(~ ((int )((short )(1 << (((struct sensor_device_attribute *)__mptr___0)->index & 65535)))) & (int )((short )val));
  }
  buffer[0] = (u8 )((int )val >> 8);
  buffer[1] = (u8 )val;
  ret = applesmc_write_key("FS! ", (u8 const *)(& buffer), 2);
  out: ;
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    return ((ssize_t )count);
  }
}
}
static ssize_t applesmc_show_fan_position(struct device *dev , struct device_attribute *attr ,
                                          char *sysfsbuf )
{
  int ret ;
  char newkey[5U] ;
  u8 buffer[17U] ;
  struct device_attribute const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device_attribute const *)attr;
  sprintf((char *)(& newkey), "F%dID", ((struct sensor_device_attribute *)__mptr)->index & 65535);
  ret = applesmc_read_key((char const *)(& newkey), (u8 *)(& buffer), 16);
  buffer[16] = 0U;
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp = snprintf(sysfsbuf, 4096UL, "%s\n", (u8 *)(& buffer) + 4UL);
    return ((ssize_t )tmp);
  }
}
}
static ssize_t applesmc_calibrate_show(struct device *dev , struct device_attribute *attr ,
                                       char *sysfsbuf )
{
  int tmp ;
  {
  tmp = snprintf(sysfsbuf, 4096UL, "(%d,%d)\n", (int )rest_x, (int )rest_y);
  return ((ssize_t )tmp);
}
}
static ssize_t applesmc_calibrate_store(struct device *dev , struct device_attribute *attr ,
                                        char const *sysfsbuf , size_t count )
{
  {
  applesmc_calibrate();
  return ((ssize_t )count);
}
}
static void applesmc_backlight_set(struct work_struct *work )
{
  {
  applesmc_write_key("LKSB", (u8 const *)(& backlight_state), 2);
  return;
}
}
static struct work_struct backlight_work = {{4195344L}, {& backlight_work.entry, & backlight_work.entry}, & applesmc_backlight_set,
    {(struct lock_class_key *)(& backlight_work), {0, 0}, "backlight_work", 0, 0UL}};
static void applesmc_brightness_set(struct led_classdev *led_cdev , enum led_brightness value )
{
  int ret ;
  bool tmp ;
  {
  backlight_state[0] = (u8 )value;
  tmp = queue_work(applesmc_led_wq, & backlight_work);
  ret = (int )tmp;
  if ((int )debug != 0 && ret == 0) {
    printk("\017applesmc: work was already on the queue.\n");
  } else {
  }
  return;
}
}
static ssize_t applesmc_key_count_show(struct device *dev , struct device_attribute *attr ,
                                       char *sysfsbuf )
{
  int ret ;
  u8 buffer[4U] ;
  u32 count ;
  int tmp ;
  {
  ret = applesmc_read_key("#KEY", (u8 *)(& buffer), 4);
  count = ((((unsigned int )buffer[0] << 24) + ((unsigned int )buffer[1] << 16)) + ((unsigned int )buffer[2] << 8)) + (unsigned int )buffer[3];
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
    tmp = snprintf(sysfsbuf, 4096UL, "%d\n", count);
    return ((ssize_t )tmp);
  }
}
}
static ssize_t applesmc_key_at_index_read_show(struct device *dev , struct device_attribute *attr ,
                                               char *sysfsbuf )
{
  struct applesmc_entry const *entry ;
  int ret ;
  long tmp ;
  long tmp___0 ;
  {
  entry = applesmc_get_entry_by_index((int )key_at_index);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return (tmp);
  } else {
  }
  ret = applesmc_read_entry(entry, (u8 *)sysfsbuf, (int )entry->len);
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )entry->len);
}
}
static ssize_t applesmc_key_at_index_data_length_show(struct device *dev , struct device_attribute *attr ,
                                                      char *sysfsbuf )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  entry = applesmc_get_entry_by_index((int )key_at_index);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return (tmp);
  } else {
  }
  tmp___1 = snprintf(sysfsbuf, 4096UL, "%d\n", (int )entry->len);
  return ((ssize_t )tmp___1);
}
}
static ssize_t applesmc_key_at_index_type_show(struct device *dev , struct device_attribute *attr ,
                                               char *sysfsbuf )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  entry = applesmc_get_entry_by_index((int )key_at_index);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return (tmp);
  } else {
  }
  tmp___1 = snprintf(sysfsbuf, 4096UL, "%s\n", (char const *)(& entry->type));
  return ((ssize_t )tmp___1);
}
}
static ssize_t applesmc_key_at_index_name_show(struct device *dev , struct device_attribute *attr ,
                                               char *sysfsbuf )
{
  struct applesmc_entry const *entry ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  entry = applesmc_get_entry_by_index((int )key_at_index);
  tmp___0 = IS_ERR((void const *)entry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)entry);
    return (tmp);
  } else {
  }
  tmp___1 = snprintf(sysfsbuf, 4096UL, "%s\n", (char const *)(& entry->key));
  return ((ssize_t )tmp___1);
}
}
static ssize_t applesmc_key_at_index_show(struct device *dev , struct device_attribute *attr ,
                                          char *sysfsbuf )
{
  int tmp ;
  {
  tmp = snprintf(sysfsbuf, 4096UL, "%d\n", key_at_index);
  return ((ssize_t )tmp);
}
}
static ssize_t applesmc_key_at_index_store(struct device *dev , struct device_attribute *attr ,
                                           char const *sysfsbuf , size_t count )
{
  unsigned long newkey ;
  int tmp ;
  {
  tmp = kstrtoul(sysfsbuf, 10U, & newkey);
  if (tmp < 0 || (unsigned long )smcreg.key_count <= newkey) {
    return (-22L);
  } else {
  }
  key_at_index = (unsigned int )newkey;
  return ((ssize_t )count);
}
}
static struct led_classdev applesmc_backlight =
     {"smc::kbd_backlight", 0, 0, 0, & applesmc_brightness_set, 0, 0, 0, {0, 0}, "nand-disk",
    0UL, 0UL, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0,
                                                 (char)0, (char)0, (char)0, (char)0,
                                                 (char)0, (char)0, (char)0, (char)0,
                                                 (char)0, (char)0, (char)0, (char)0},
               {0, {0, 0}, 0, 0, 0UL}}, 0, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
    0, {0L, {{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {0, 0}, {0, {0, 0}, 0, 0,
                                                                  0UL}}, 0, {0, 0},
    0, (_Bool)0};
static struct applesmc_node_group info_group[8U] = { {(char *)"name", (void *)(& applesmc_name_show), 0, 0, 0},
        {(char *)"key_count", (void *)(& applesmc_key_count_show), 0, 0, 0},
        {(char *)"key_at_index", (void *)(& applesmc_key_at_index_show), (void *)(& applesmc_key_at_index_store),
      0, 0},
        {(char *)"key_at_index_name", (void *)(& applesmc_key_at_index_name_show), 0,
      0, 0},
        {(char *)"key_at_index_type", (void *)(& applesmc_key_at_index_type_show), 0,
      0, 0},
        {(char *)"key_at_index_data_length", (void *)(& applesmc_key_at_index_data_length_show),
      0, 0, 0},
        {(char *)"key_at_index_data", (void *)(& applesmc_key_at_index_read_show), 0,
      0, 0}};
static struct applesmc_node_group accelerometer_group[3U] = { {(char *)"position", (void *)(& applesmc_position_show), 0, 0, 0},
        {(char *)"calibrate", (void *)(& applesmc_calibrate_show), (void *)(& applesmc_calibrate_store),
      0, 0}};
static struct applesmc_node_group light_sensor_group[2U] = { {(char *)"light", (void *)(& applesmc_light_show), 0, 0, 0}};
static struct applesmc_node_group fan_group[8U] = { {(char *)"fan%d_label", (void *)(& applesmc_show_fan_position), 0, 0, 0},
        {(char *)"fan%d_input", (void *)(& applesmc_show_fan_speed), 0, 0, 0},
        {(char *)"fan%d_min", (void *)(& applesmc_show_fan_speed), (void *)(& applesmc_store_fan_speed),
      1, 0},
        {(char *)"fan%d_max", (void *)(& applesmc_show_fan_speed), 0, 2, 0},
        {(char *)"fan%d_safe", (void *)(& applesmc_show_fan_speed), 0, 3, 0},
        {(char *)"fan%d_output", (void *)(& applesmc_show_fan_speed), (void *)(& applesmc_store_fan_speed),
      4, 0},
        {(char *)"fan%d_manual", (void *)(& applesmc_show_fan_manual), (void *)(& applesmc_store_fan_manual),
      0, 0}};
static struct applesmc_node_group temp_group[3U] = { {(char *)"temp%d_label", (void *)(& applesmc_show_sensor_label), 0, 0, 0},
        {(char *)"temp%d_input", (void *)(& applesmc_show_temperature), 0, 0, 0}};
static void applesmc_destroy_nodes(struct applesmc_node_group *groups )
{
  struct applesmc_node_group *grp ;
  struct applesmc_dev_attr *node ;
  {
  grp = groups;
  goto ldv_20571;
  ldv_20570:
  node = grp->nodes;
  goto ldv_20568;
  ldv_20567:
  sysfs_remove_file(& pdev->dev.kobj, (struct attribute const *)(& node->sda.dev_attr.attr));
  node = node + 1;
  ldv_20568: ;
  if ((unsigned long )node->sda.dev_attr.attr.name != (unsigned long )((char const *)0)) {
    goto ldv_20567;
  } else {
  }
  kfree((void const *)grp->nodes);
  grp->nodes = 0;
  grp = grp + 1;
  ldv_20571: ;
  if ((unsigned long )grp->nodes != (unsigned long )((struct applesmc_dev_attr *)0)) {
    goto ldv_20570;
  } else {
  }
  return;
}
}
static int applesmc_create_nodes(struct applesmc_node_group *groups , int num )
{
  struct applesmc_node_group *grp ;
  struct applesmc_dev_attr *node ;
  struct attribute *attr ;
  int ret ;
  int i ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  grp = groups;
  goto ldv_20588;
  ldv_20587:
  tmp = kcalloc((size_t )(num + 1), 88UL, 208U);
  grp->nodes = (struct applesmc_dev_attr *)tmp;
  if ((unsigned long )grp->nodes == (unsigned long )((struct applesmc_dev_attr *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_20585;
  ldv_20584:
  node = grp->nodes + (unsigned long )i;
  sprintf((char *)(& node->name), (char const *)grp->format, i + 1);
  node->sda.index = (grp->option << 16) | (i & 65535);
  node->sda.dev_attr.show = (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char * ))grp->show;
  node->sda.dev_attr.store = (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))grp->store;
  attr = & node->sda.dev_attr.attr;
  attr->key = & __key;
  attr->name = (char const *)(& node->name);
  attr->mode = (unsigned long )grp->store != (unsigned long )((void *)0) ? 420U : 292U;
  ret = sysfs_create_file(& pdev->dev.kobj, (struct attribute const *)attr);
  if (ret != 0) {
    attr->name = 0;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_20585: ;
  if (i < num) {
    goto ldv_20584;
  } else {
  }
  grp = grp + 1;
  ldv_20588: ;
  if ((unsigned long )grp->format != (unsigned long )((char *)0)) {
    goto ldv_20587;
  } else {
  }
  return (0);
  out:
  applesmc_destroy_nodes(groups);
  return (ret);
}
}
static int applesmc_create_accelerometer(void)
{
  struct input_dev *idev ;
  int ret ;
  {
  if (! smcreg.has_accelerometer) {
    return (0);
  } else {
  }
  ret = applesmc_create_nodes((struct applesmc_node_group *)(& accelerometer_group),
                              1);
  if (ret != 0) {
    goto out;
  } else {
  }
  applesmc_idev = input_allocate_polled_device();
  if ((unsigned long )applesmc_idev == (unsigned long )((struct input_polled_dev *)0)) {
    ret = -12;
    goto out_sysfs;
  } else {
  }
  applesmc_idev->poll = & applesmc_idev_poll;
  applesmc_idev->poll_interval = 50U;
  applesmc_calibrate();
  idev = applesmc_idev->input;
  idev->name = "applesmc";
  idev->id.bustype = 25U;
  idev->dev.parent = & pdev->dev;
  idev->evbit[0] = 8UL;
  input_set_abs_params(idev, 0U, -256, 256, 4, 4);
  input_set_abs_params(idev, 1U, -256, 256, 4, 4);
  ret = input_register_polled_device(applesmc_idev);
  if (ret != 0) {
    goto out_idev;
  } else {
  }
  return (0);
  out_idev:
  input_free_polled_device(applesmc_idev);
  out_sysfs:
  applesmc_destroy_nodes((struct applesmc_node_group *)(& accelerometer_group));
  out:
  printk("\fapplesmc: driver init failed (ret=%d)!\n", ret);
  return (ret);
}
}
static void applesmc_release_accelerometer(void)
{
  {
  if (! smcreg.has_accelerometer) {
    return;
  } else {
  }
  input_unregister_polled_device(applesmc_idev);
  input_free_polled_device(applesmc_idev);
  applesmc_destroy_nodes((struct applesmc_node_group *)(& accelerometer_group));
  return;
}
}
static int applesmc_create_light_sensor(void)
{
  int tmp ;
  {
  if (smcreg.num_light_sensors == 0) {
    return (0);
  } else {
  }
  tmp = applesmc_create_nodes((struct applesmc_node_group *)(& light_sensor_group),
                              1);
  return (tmp);
}
}
static void applesmc_release_light_sensor(void)
{
  {
  if (smcreg.num_light_sensors == 0) {
    return;
  } else {
  }
  applesmc_destroy_nodes((struct applesmc_node_group *)(& light_sensor_group));
  return;
}
}
static int applesmc_create_key_backlight(void)
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  int tmp___0 ;
  {
  if (! smcreg.has_key_backlight) {
    return (0);
  } else {
  }
  __lock_name = "applesmc-led";
  tmp = __alloc_workqueue_key("applesmc-led", 10U, 1, & __key, __lock_name);
  applesmc_led_wq = tmp;
  if ((unsigned long )applesmc_led_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = led_classdev_register(& pdev->dev, & applesmc_backlight);
  return (tmp___0);
}
}
static void applesmc_release_key_backlight(void)
{
  {
  if (! smcreg.has_key_backlight) {
    return;
  } else {
  }
  led_classdev_unregister(& applesmc_backlight);
  destroy_workqueue(applesmc_led_wq);
  return;
}
}
static int applesmc_dmi_match(struct dmi_system_id const *id )
{
  {
  return (1);
}
}
static struct dmi_system_id applesmc_whitelist[7U] = { {& applesmc_dmi_match, "Apple MacBook Air", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                                  {5U, {'M', 'a', 'c', 'B', 'o', 'o',
                                                        'k', 'A', 'i', 'r', '\000'}}},
      0},
        {& applesmc_dmi_match, "Apple MacBook Pro", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                                  {5U, {'M', 'a', 'c', 'B', 'o', 'o',
                                                        'k', 'P', 'r', 'o', '\000'}}},
      0},
        {& applesmc_dmi_match, "Apple MacBook", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                              {5U, {'M', 'a', 'c', 'B', 'o', 'o',
                                                    'k', '\000'}}}, 0},
        {& applesmc_dmi_match, "Apple Macmini", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                              {5U, {'M', 'a', 'c', 'm', 'i', 'n',
                                                    'i', '\000'}}}, 0},
        {& applesmc_dmi_match, "Apple MacPro", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                             {5U, {'M', 'a', 'c', 'P', 'r', 'o', '\000'}}},
      0},
        {& applesmc_dmi_match, "Apple iMac", {{9U, {'A', 'p', 'p', 'l', 'e', '\000'}},
                                           {5U, {'i', 'M', 'a', 'c', '\000'}}}, 0},
        {0,
      0, {{(unsigned char)0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0}}, {(unsigned char)0, {(char)0, (char)0, (char)0,
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
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}}, {(unsigned char)0,
                                                                         {(char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0}},
          {(unsigned char)0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                              (char)0}}}, 0}};
static int applesmc_init(void)
{
  int ret ;
  int tmp ;
  struct resource *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  tmp = dmi_check_system((struct dmi_system_id const *)(& applesmc_whitelist));
  if (tmp == 0) {
    printk("\fapplesmc: supported laptop not found!\n");
    ret = -19;
    goto out;
  } else {
  }
  tmp___0 = __request_region(& ioport_resource, 768ULL, 32ULL, "applesmc", 0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct resource *)0)) {
    ret = -6;
    goto out;
  } else {
  }
  ret = platform_driver_register(& applesmc_driver);
  if (ret != 0) {
    goto out_region;
  } else {
  }
  pdev = platform_device_register_simple("applesmc", 768, 0, 0U);
  tmp___2 = IS_ERR((void const *)pdev);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)pdev);
    ret = (int )tmp___1;
    goto out_driver;
  } else {
  }
  ret = applesmc_init_smcreg();
  if (ret != 0) {
    goto out_device;
  } else {
  }
  ret = applesmc_create_nodes((struct applesmc_node_group *)(& info_group), 1);
  if (ret != 0) {
    goto out_smcreg;
  } else {
  }
  ret = applesmc_create_nodes((struct applesmc_node_group *)(& fan_group), (int )smcreg.fan_count);
  if (ret != 0) {
    goto out_info;
  } else {
  }
  ret = applesmc_create_nodes((struct applesmc_node_group *)(& temp_group), (int )smcreg.index_count);
  if (ret != 0) {
    goto out_fans;
  } else {
  }
  ret = applesmc_create_accelerometer();
  if (ret != 0) {
    goto out_temperature;
  } else {
  }
  ret = applesmc_create_light_sensor();
  if (ret != 0) {
    goto out_accelerometer;
  } else {
  }
  ret = applesmc_create_key_backlight();
  if (ret != 0) {
    goto out_light_sysfs;
  } else {
  }
  hwmon_dev = hwmon_device_register(& pdev->dev);
  tmp___4 = IS_ERR((void const *)hwmon_dev);
  if (tmp___4 != 0L) {
    tmp___3 = PTR_ERR((void const *)hwmon_dev);
    ret = (int )tmp___3;
    goto out_light_ledclass;
  } else {
  }
  return (0);
  out_light_ledclass:
  applesmc_release_key_backlight();
  out_light_sysfs:
  applesmc_release_light_sensor();
  out_accelerometer:
  applesmc_release_accelerometer();
  out_temperature:
  applesmc_destroy_nodes((struct applesmc_node_group *)(& temp_group));
  out_fans:
  applesmc_destroy_nodes((struct applesmc_node_group *)(& fan_group));
  out_info:
  applesmc_destroy_nodes((struct applesmc_node_group *)(& info_group));
  out_smcreg:
  applesmc_destroy_smcreg();
  out_device:
  platform_device_unregister(pdev);
  out_driver:
  platform_driver_unregister(& applesmc_driver);
  out_region:
  __release_region(& ioport_resource, 768ULL, 32ULL);
  out:
  printk("\fapplesmc: driver init failed (ret=%d)!\n", ret);
  return (ret);
}
}
static void applesmc_exit(void)
{
  {
  hwmon_device_unregister(hwmon_dev);
  applesmc_release_key_backlight();
  applesmc_release_light_sensor();
  applesmc_release_accelerometer();
  applesmc_destroy_nodes((struct applesmc_node_group *)(& temp_group));
  applesmc_destroy_nodes((struct applesmc_node_group *)(& fan_group));
  applesmc_destroy_nodes((struct applesmc_node_group *)(& info_group));
  applesmc_destroy_smcreg();
  platform_device_unregister(pdev);
  platform_driver_unregister(& applesmc_driver);
  __release_region(& ioport_resource, 768ULL, 32ULL);
  return;
}
}
struct dmi_system_id const __mod_dmi_device_table ;
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct device *var_group1 ;
  struct platform_device *var_group2 ;
  int res_applesmc_probe_22 ;
  struct led_classdev *var_group3 ;
  enum led_brightness var_applesmc_brightness_set_40_p1 ;
  int ldv_s_applesmc_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_applesmc_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = applesmc_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_20683;
  ldv_20682:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  applesmc_pm_resume(var_group1);
  goto ldv_20676;
  case 1:
  ldv_handler_precall();
  applesmc_pm_restore(var_group1);
  goto ldv_20676;
  case 2: ;
  if (ldv_s_applesmc_driver_platform_driver == 0) {
    res_applesmc_probe_22 = applesmc_probe(var_group2);
    ldv_check_return_value(res_applesmc_probe_22);
    ldv_check_return_value_probe(res_applesmc_probe_22);
    if (res_applesmc_probe_22 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_applesmc_driver_platform_driver = 0;
  } else {
  }
  goto ldv_20676;
  case 3:
  ldv_handler_precall();
  applesmc_brightness_set(var_group3, var_applesmc_brightness_set_40_p1);
  goto ldv_20676;
  default: ;
  goto ldv_20676;
  }
  ldv_20676: ;
  ldv_20683:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_applesmc_driver_platform_driver != 0) {
    goto ldv_20682;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  applesmc_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
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
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
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
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock == 1) {
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void __udelay(unsigned long arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dmi_check_system(const struct dmi_system_id *arg0) {
  return __VERIFIER_nondet_int();
}
struct device *hwmon_device_register(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
struct input_polled_dev *input_allocate_polled_device() {
  return ldv_malloc(sizeof(struct input_polled_dev));
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_free_polled_device(struct input_polled_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_polled_device(struct input_polled_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_set_abs_params(struct input_dev *arg0, unsigned int arg1, int arg2, int arg3, int arg4, int arg5) {
  return;
}
void input_unregister_polled_device(struct input_polled_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
int __VERIFIER_nondet_int(void);
int led_classdev_register(struct device *arg0, struct led_classdev *arg1) {
  return __VERIFIER_nondet_int();
}
void led_classdev_unregister(struct led_classdev *arg0) {
  return;
}
void msleep(unsigned int arg0) {
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
struct platform_device *platform_device_register_full(const struct platform_device_info *arg0) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
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
