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
typedef unsigned short umode_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int u_int;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef __u32 __wsum;
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
struct net_device;
struct net_device;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
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
struct pci_dev;
struct pci_dev;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
struct sk_buff;
typedef s32 dma_cookie_t;
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{ struct list_head *__cil_tmp3 ;
  {
  {
  __cil_tmp3 = *((struct list_head **)head);
  __list_add(new, head, __cil_tmp3);
  }
  return;
}
}
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{ unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern struct module __this_module ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
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
extern void __const_udelay(unsigned long ) ;
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
int b1pcmcia_addcard_b1(unsigned int port , unsigned int irq ) ;
int b1pcmcia_addcard_m1(unsigned int port , unsigned int irq ) ;
int b1pcmcia_addcard_m2(unsigned int port , unsigned int irq ) ;
int b1pcmcia_delcard(unsigned int port , unsigned int irq ) ;
extern int attach_capi_ctr(struct capi_ctr * ) ;
extern int detach_capi_ctr(struct capi_ctr * ) ;
extern void register_capi_driver(struct capi_driver * ) ;
extern void unregister_capi_driver(struct capi_driver * ) ;
__inline static unsigned char b1outp(unsigned int base , unsigned short offset , unsigned char value )
{ unsigned char tmp ;
  int __cil_tmp5 ;
  unsigned char __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  __cil_tmp5 = (int )value;
  __cil_tmp6 = (unsigned char )__cil_tmp5;
  __cil_tmp7 = (unsigned int )offset;
  __cil_tmp8 = __cil_tmp7 + base;
  __cil_tmp9 = (int )__cil_tmp8;
  outb(__cil_tmp6, __cil_tmp9);
  __cil_tmp10 = base + 4U;
  __cil_tmp11 = (int )__cil_tmp10;
  tmp = inb(__cil_tmp11);
  }
  return (tmp);
}
}
__inline static void b1_reset(unsigned int base )
{ unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  {
  {
  b1outp(base, (unsigned short)16, (unsigned char)0);
  __ms = 110UL;
  }
  goto ldv_22905;
  ldv_22904:
  {
  __const_udelay(4295000UL);
  }
  ldv_22905:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_22904;
  } else {
    goto ldv_22906;
  }
  ldv_22906:
  {
  b1outp(base, (unsigned short)16, (unsigned char)1);
  __ms___0 = 110UL;
  }
  goto ldv_22909;
  ldv_22908:
  {
  __const_udelay(4295000UL);
  }
  ldv_22909:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_22908;
  } else {
    goto ldv_22910;
  }
  ldv_22910:
  {
  b1outp(base, (unsigned short)16, (unsigned char)0);
  __ms___1 = 110UL;
  }
  goto ldv_22913;
  ldv_22912:
  {
  __const_udelay(4295000UL);
  }
  ldv_22913:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_22912;
  } else {
    goto ldv_22914;
  }
  ldv_22914: ;
  return;
}
}
extern avmcard *b1_alloc_card(int ) ;
extern void b1_free_card(avmcard * ) ;
extern int b1_detect(unsigned int , enum avmcardtype ) ;
extern void b1_getrevision(avmcard * ) ;
extern int b1_load_firmware(struct capi_ctr * , capiloaddata * ) ;
extern void b1_reset_ctr(struct capi_ctr * ) ;
extern void b1_register_appl(struct capi_ctr * , u16 , capi_register_params * ) ;
extern void b1_release_appl(struct capi_ctr * , u16 ) ;
extern u16 b1_send_message(struct capi_ctr * , struct sk_buff * ) ;
extern irqreturn_t b1_interrupt(int , void * ) ;
extern struct file_operations const b1ctl_proc_fops ;
static char *revision = (char *)"$Revision: 1.1.2.2 $";
static void b1pcmcia_remove_ctr(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  avmcard *card ;
  unsigned int port ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  void *__cil_tmp15 ;
  {
  {
  __cil_tmp5 = (unsigned long )ctrl;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((void **)__cil_tmp6);
  cinfo = (avmctrl_info *)__cil_tmp7;
  __cil_tmp8 = (unsigned long )cinfo;
  __cil_tmp9 = __cil_tmp8 + 1256;
  card = *((struct avmcard **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )card;
  __cil_tmp11 = __cil_tmp10 + 104;
  port = *((unsigned int *)__cil_tmp11);
  b1_reset(port);
  b1_reset(port);
  detach_capi_ctr(ctrl);
  __cil_tmp12 = (unsigned long )card;
  __cil_tmp13 = __cil_tmp12 + 108;
  __cil_tmp14 = *((unsigned int *)__cil_tmp13);
  __cil_tmp15 = (void *)card;
  free_irq(__cil_tmp14, __cil_tmp15);
  b1_free_card(card);
  }
  return;
}
}
static struct list_head cards = {& cards, & cards};
static char *b1pcmcia_procinfo(struct capi_ctr *ctrl ) ;
static int b1pcmcia_add_card(unsigned int port , unsigned int irq , enum avmcardtype cardtype )
{ avmctrl_info *cinfo ;
  avmcard *card ;
  char *cardname ;
  int retval ;
  avmcard *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  char (*__cil_tmp14)[32U] ;
  char *__cil_tmp15 ;
  char (*__cil_tmp16)[32U] ;
  char *__cil_tmp17 ;
  char (*__cil_tmp18)[32U] ;
  char *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  char (*__cil_tmp29)[32U] ;
  char const *__cil_tmp30 ;
  void *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  enum avmcardtype __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  char (*__cil_tmp82)[32U] ;
  char *__cil_tmp83 ;
  char (*__cil_tmp84)[32U] ;
  char const *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  struct capi_ctr *__cil_tmp88 ;
  unsigned int __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned int __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned char __cil_tmp98 ;
  int __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  struct list_head *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  void *__cil_tmp109 ;
  {
  {
  card = b1_alloc_card(1);
  }
  {
  __cil_tmp8 = (avmcard *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = (unsigned long )card;
  if (__cil_tmp10 == __cil_tmp9) {
    {
    printk("<4>b1pcmcia: no memory.\n");
    retval = -12;
    }
    goto err;
  } else {
  }
  }
  __cil_tmp11 = (unsigned long )card;
  __cil_tmp12 = __cil_tmp11 + 2336;
  cinfo = *((struct avmctrl_info **)__cil_tmp12);
  {
  __cil_tmp13 = (unsigned int )cardtype;
  if ((int )__cil_tmp13 == 3) {
    goto case_3;
  } else
  if ((int )__cil_tmp13 == 4) {
    goto case_4;
  } else {
    {
    goto switch_default;
    if (0) {
      case_3:
      {
      __cil_tmp14 = (char (*)[32U])card;
      __cil_tmp15 = (char *)__cil_tmp14;
      sprintf(__cil_tmp15, "m1-%x", port);
      }
      goto ldv_23092;
      case_4:
      {
      __cil_tmp16 = (char (*)[32U])card;
      __cil_tmp17 = (char *)__cil_tmp16;
      sprintf(__cil_tmp17, "m2-%x", port);
      }
      goto ldv_23092;
      switch_default:
      {
      __cil_tmp18 = (char (*)[32U])card;
      __cil_tmp19 = (char *)__cil_tmp18;
      sprintf(__cil_tmp19, "b1pcmcia-%x", port);
      }
      goto ldv_23092;
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_23092:
  {
  __cil_tmp20 = (unsigned long )card;
  __cil_tmp21 = __cil_tmp20 + 104;
  *((unsigned int *)__cil_tmp21) = port;
  __cil_tmp22 = (unsigned long )card;
  __cil_tmp23 = __cil_tmp22 + 108;
  *((unsigned int *)__cil_tmp23) = irq;
  __cil_tmp24 = (unsigned long )card;
  __cil_tmp25 = __cil_tmp24 + 120;
  *((enum avmcardtype *)__cil_tmp25) = cardtype;
  __cil_tmp26 = (unsigned long )card;
  __cil_tmp27 = __cil_tmp26 + 108;
  __cil_tmp28 = *((unsigned int *)__cil_tmp27);
  __cil_tmp29 = (char (*)[32U])card;
  __cil_tmp30 = (char const *)__cil_tmp29;
  __cil_tmp31 = (void *)card;
  retval = request_irq(__cil_tmp28, & b1_interrupt, 128UL, __cil_tmp30, __cil_tmp31);
  }
  if (retval != 0) {
    {
    __cil_tmp32 = (unsigned long )card;
    __cil_tmp33 = __cil_tmp32 + 108;
    __cil_tmp34 = *((unsigned int *)__cil_tmp33);
    printk("<3>b1pcmcia: unable to get IRQ %d.\n", __cil_tmp34);
    retval = -16;
    }
    goto err_free;
  } else {
  }
  {
  __cil_tmp35 = (unsigned long )card;
  __cil_tmp36 = __cil_tmp35 + 104;
  __cil_tmp37 = *((unsigned int *)__cil_tmp36);
  b1_reset(__cil_tmp37);
  __cil_tmp38 = (unsigned long )card;
  __cil_tmp39 = __cil_tmp38 + 104;
  __cil_tmp40 = *((unsigned int *)__cil_tmp39);
  __cil_tmp41 = (unsigned long )card;
  __cil_tmp42 = __cil_tmp41 + 120;
  __cil_tmp43 = *((enum avmcardtype *)__cil_tmp42);
  retval = b1_detect(__cil_tmp40, __cil_tmp43);
  }
  if (retval != 0) {
    {
    __cil_tmp44 = (unsigned long )card;
    __cil_tmp45 = __cil_tmp44 + 104;
    __cil_tmp46 = *((unsigned int *)__cil_tmp45);
    printk("<5>b1pcmcia: NO card at 0x%x (%d)\n", __cil_tmp46, retval);
    retval = -19;
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp47 = (unsigned long )card;
  __cil_tmp48 = __cil_tmp47 + 104;
  __cil_tmp49 = *((unsigned int *)__cil_tmp48);
  b1_reset(__cil_tmp49);
  b1_getrevision(card);
  __cil_tmp50 = (unsigned long )cinfo;
  __cil_tmp51 = __cil_tmp50 + 1264;
  *((struct module **)__cil_tmp51) = & __this_module;
  __cil_tmp52 = 1264 + 48;
  __cil_tmp53 = (unsigned long )cinfo;
  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
  *((char **)__cil_tmp54) = (char *)"b1pcmcia";
  __cil_tmp55 = 1264 + 8;
  __cil_tmp56 = (unsigned long )cinfo;
  __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
  *((void **)__cil_tmp57) = (void *)cinfo;
  __cil_tmp58 = 1264 + 72;
  __cil_tmp59 = (unsigned long )cinfo;
  __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
  *((void (**)(struct capi_ctr * , u16 , capi_register_params * ))__cil_tmp60) = & b1_register_appl;
  __cil_tmp61 = 1264 + 80;
  __cil_tmp62 = (unsigned long )cinfo;
  __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
  *((void (**)(struct capi_ctr * , u16 ))__cil_tmp63) = & b1_release_appl;
  __cil_tmp64 = 1264 + 88;
  __cil_tmp65 = (unsigned long )cinfo;
  __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
  *((u16 (**)(struct capi_ctr * , struct sk_buff * ))__cil_tmp66) = & b1_send_message;
  __cil_tmp67 = 1264 + 56;
  __cil_tmp68 = (unsigned long )cinfo;
  __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
  *((int (**)(struct capi_ctr * , capiloaddata * ))__cil_tmp69) = & b1_load_firmware;
  __cil_tmp70 = 1264 + 64;
  __cil_tmp71 = (unsigned long )cinfo;
  __cil_tmp72 = __cil_tmp71 + __cil_tmp70;
  *((void (**)(struct capi_ctr * ))__cil_tmp72) = & b1_reset_ctr;
  __cil_tmp73 = 1264 + 96;
  __cil_tmp74 = (unsigned long )cinfo;
  __cil_tmp75 = __cil_tmp74 + __cil_tmp73;
  *((char *(**)(struct capi_ctr * ))__cil_tmp75) = & b1pcmcia_procinfo;
  __cil_tmp76 = 1264 + 104;
  __cil_tmp77 = (unsigned long )cinfo;
  __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
  *((struct file_operations const **)__cil_tmp78) = & b1ctl_proc_fops;
  __cil_tmp79 = 1264 + 16;
  __cil_tmp80 = (unsigned long )cinfo;
  __cil_tmp81 = __cil_tmp80 + __cil_tmp79;
  __cil_tmp82 = (char (*)[32U])__cil_tmp81;
  __cil_tmp83 = (char *)__cil_tmp82;
  __cil_tmp84 = (char (*)[32U])card;
  __cil_tmp85 = (char const *)__cil_tmp84;
  strcpy(__cil_tmp83, __cil_tmp85);
  __cil_tmp86 = (unsigned long )cinfo;
  __cil_tmp87 = __cil_tmp86 + 1264;
  __cil_tmp88 = (struct capi_ctr *)__cil_tmp87;
  retval = attach_capi_ctr(__cil_tmp88);
  }
  if (retval != 0) {
    {
    printk("<3>b1pcmcia: attach controller failed.\n");
    }
    goto err_free_irq;
  } else {
  }
  {
  __cil_tmp89 = (unsigned int )cardtype;
  if ((int )__cil_tmp89 == 3) {
    goto case_3___0;
  } else
  if ((int )__cil_tmp89 == 4) {
    goto case_4___0;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_3___0:
      cardname = (char *)"M1";
      goto ldv_23098;
      case_4___0:
      cardname = (char *)"M2";
      goto ldv_23098;
      switch_default___0:
      cardname = (char *)"B1 PCMCIA";
      goto ldv_23098;
    } else {
      switch_break___0: ;
    }
    }
  }
  }
  ldv_23098:
  {
  __cil_tmp90 = (unsigned long )card;
  __cil_tmp91 = __cil_tmp90 + 104;
  __cil_tmp92 = *((unsigned int *)__cil_tmp91);
  __cil_tmp93 = (unsigned long )card;
  __cil_tmp94 = __cil_tmp93 + 108;
  __cil_tmp95 = *((unsigned int *)__cil_tmp94);
  __cil_tmp96 = (unsigned long )card;
  __cil_tmp97 = __cil_tmp96 + 124;
  __cil_tmp98 = *((unsigned char *)__cil_tmp97);
  __cil_tmp99 = (int )__cil_tmp98;
  printk("<6>b1pcmcia: AVM %s at i/o %#x, irq %d, revision %d\n", cardname, __cil_tmp92,
         __cil_tmp95, __cil_tmp99);
  __cil_tmp100 = (unsigned long )card;
  __cil_tmp101 = __cil_tmp100 + 2352;
  __cil_tmp102 = (struct list_head *)__cil_tmp101;
  list_add(__cil_tmp102, & cards);
  }
  {
  __cil_tmp103 = 1264 + 296;
  __cil_tmp104 = (unsigned long )cinfo;
  __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
  return (*((int *)__cil_tmp105));
  }
  err_free_irq:
  {
  __cil_tmp106 = (unsigned long )card;
  __cil_tmp107 = __cil_tmp106 + 108;
  __cil_tmp108 = *((unsigned int *)__cil_tmp107);
  __cil_tmp109 = (void *)card;
  free_irq(__cil_tmp108, __cil_tmp109);
  }
  err_free:
  {
  b1_free_card(card);
  }
  err: ;
  return (retval);
}
}
static char *b1pcmcia_procinfo(struct capi_ctr *ctrl )
{ avmctrl_info *cinfo ;
  int tmp ;
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
  unsigned char __cil_tmp25 ;
  struct avmcard *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct avmcard *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct avmcard *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  struct avmcard *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct avmcard *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  struct avmcard *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  char *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  char *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  char __cil_tmp64 ;
  signed char __cil_tmp65 ;
  int __cil_tmp66 ;
  char (*__cil_tmp67)[32U] ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  char (*__cil_tmp70)[128U] ;
  char *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  char (*__cil_tmp74)[128U] ;
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
    __cil_tmp24 = __cil_tmp23 + 124;
    __cil_tmp25 = *((unsigned char *)__cil_tmp24);
    tmp = (int )__cil_tmp25;
  } else {
    tmp = 0;
  }
  }
  {
  __cil_tmp26 = (struct avmcard *)0;
  __cil_tmp27 = (unsigned long )__cil_tmp26;
  __cil_tmp28 = (unsigned long )cinfo;
  __cil_tmp29 = __cil_tmp28 + 1256;
  __cil_tmp30 = *((struct avmcard **)__cil_tmp29);
  __cil_tmp31 = (unsigned long )__cil_tmp30;
  if (__cil_tmp31 != __cil_tmp27) {
    __cil_tmp32 = (unsigned long )cinfo;
    __cil_tmp33 = __cil_tmp32 + 1256;
    __cil_tmp34 = *((struct avmcard **)__cil_tmp33);
    __cil_tmp35 = (unsigned long )__cil_tmp34;
    __cil_tmp36 = __cil_tmp35 + 108;
    tmp___0 = *((unsigned int *)__cil_tmp36);
  } else {
    tmp___0 = 0U;
  }
  }
  {
  __cil_tmp37 = (struct avmcard *)0;
  __cil_tmp38 = (unsigned long )__cil_tmp37;
  __cil_tmp39 = (unsigned long )cinfo;
  __cil_tmp40 = __cil_tmp39 + 1256;
  __cil_tmp41 = *((struct avmcard **)__cil_tmp40);
  __cil_tmp42 = (unsigned long )__cil_tmp41;
  if (__cil_tmp42 != __cil_tmp38) {
    __cil_tmp43 = (unsigned long )cinfo;
    __cil_tmp44 = __cil_tmp43 + 1256;
    __cil_tmp45 = *((struct avmcard **)__cil_tmp44);
    __cil_tmp46 = (unsigned long )__cil_tmp45;
    __cil_tmp47 = __cil_tmp46 + 104;
    tmp___1 = *((unsigned int *)__cil_tmp47);
  } else {
    tmp___1 = 0U;
  }
  }
  {
  __cil_tmp48 = (char *)0;
  __cil_tmp49 = (unsigned long )__cil_tmp48;
  __cil_tmp50 = 0 * 8UL;
  __cil_tmp51 = 1064 + __cil_tmp50;
  __cil_tmp52 = (unsigned long )cinfo;
  __cil_tmp53 = __cil_tmp52 + __cil_tmp51;
  __cil_tmp54 = *((char **)__cil_tmp53);
  __cil_tmp55 = (unsigned long )__cil_tmp54;
  if (__cil_tmp55 != __cil_tmp49) {
    __cil_tmp56 = 0 * 8UL;
    __cil_tmp57 = 1064 + __cil_tmp56;
    __cil_tmp58 = (unsigned long )cinfo;
    __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
    tmp___2 = *((char **)__cil_tmp59);
  } else {
    tmp___2 = (char *)"-";
  }
  }
  {
  __cil_tmp60 = 0 * 1UL;
  __cil_tmp61 = 0 + __cil_tmp60;
  __cil_tmp62 = (unsigned long )cinfo;
  __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
  __cil_tmp64 = *((char *)__cil_tmp63);
  __cil_tmp65 = (signed char )__cil_tmp64;
  __cil_tmp66 = (int )__cil_tmp65;
  if (__cil_tmp66 != 0) {
    __cil_tmp67 = (char (*)[32U])cinfo;
    tmp___3 = (char *)__cil_tmp67;
  } else {
    tmp___3 = (char *)"-";
  }
  }
  {
  __cil_tmp68 = (unsigned long )cinfo;
  __cil_tmp69 = __cil_tmp68 + 1128;
  __cil_tmp70 = (char (*)[128U])__cil_tmp69;
  __cil_tmp71 = (char *)__cil_tmp70;
  sprintf(__cil_tmp71, "%s %s 0x%x %d r%d", tmp___3, tmp___2, tmp___1, tmp___0, tmp);
  }
  {
  __cil_tmp72 = (unsigned long )cinfo;
  __cil_tmp73 = __cil_tmp72 + 1128;
  __cil_tmp74 = (char (*)[128U])__cil_tmp73;
  return ((char *)__cil_tmp74);
  }
}
}
int b1pcmcia_addcard_b1(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )2;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_addcard_m1(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )3;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_addcard_m2(unsigned int port , unsigned int irq )
{ int tmp ;
  enum avmcardtype __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (enum avmcardtype )4;
  tmp = b1pcmcia_add_card(port, irq, __cil_tmp4);
  }
  return (tmp);
}
}
int b1pcmcia_delcard(unsigned int port , unsigned int irq )
{ struct list_head *l ;
  avmcard *card ;
  struct list_head const *__mptr ;
  struct list_head *__cil_tmp6 ;
  avmcard *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct avmctrl_info *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct capi_ctr *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  {
  __cil_tmp6 = & cards;
  l = *((struct list_head **)__cil_tmp6);
  goto ldv_23126;
  ldv_23125:
  __mptr = (struct list_head const *)l;
  __cil_tmp7 = (avmcard *)__mptr;
  card = __cil_tmp7 + 0xfffffffffffff6d0UL;
  {
  __cil_tmp8 = (unsigned long )card;
  __cil_tmp9 = __cil_tmp8 + 104;
  __cil_tmp10 = *((unsigned int *)__cil_tmp9);
  if (__cil_tmp10 == port) {
    {
    __cil_tmp11 = (unsigned long )card;
    __cil_tmp12 = __cil_tmp11 + 108;
    __cil_tmp13 = *((unsigned int *)__cil_tmp12);
    if (__cil_tmp13 == irq) {
      {
      __cil_tmp14 = (unsigned long )card;
      __cil_tmp15 = __cil_tmp14 + 2336;
      __cil_tmp16 = *((struct avmctrl_info **)__cil_tmp15);
      __cil_tmp17 = (unsigned long )__cil_tmp16;
      __cil_tmp18 = __cil_tmp17 + 1264;
      __cil_tmp19 = (struct capi_ctr *)__cil_tmp18;
      b1pcmcia_remove_ctr(__cil_tmp19);
      }
      return (0);
    } else {
    }
    }
  } else {
  }
  }
  l = *((struct list_head **)l);
  ldv_23126: ;
  {
  __cil_tmp20 = (unsigned long )(& cards);
  __cil_tmp21 = (unsigned long )l;
  if (__cil_tmp21 != __cil_tmp20) {
    goto ldv_23125;
  } else {
    goto ldv_23127;
  }
  }
  ldv_23127: ;
  return (-3);
}
}
static struct capi_driver capi_driver_b1pcmcia = {{(char )'b', (char )'1', (char )'p', (char )'c', (char )'m', (char )'c', (char )'i',
     (char )'a', (char )'\000'}, {(char )'1', (char )'.', (char )'0', (char )'\000'},
    (int (*)(struct capi_driver * , capicardparams * ))0, {(struct list_head *)0,
                                                           (struct list_head *)0}};
static int b1pcmcia_init(void)
{ char *p ;
  char rev[32U] ;
  char const *__cil_tmp3 ;
  char *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  char *__cil_tmp7 ;
  char __cil_tmp8 ;
  signed char __cil_tmp9 ;
  int __cil_tmp10 ;
  char *__cil_tmp11 ;
  char const *__cil_tmp12 ;
  char const *__cil_tmp13 ;
  char const *__cil_tmp14 ;
  char *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  char *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  char *__cil_tmp21 ;
  char *__cil_tmp22 ;
  char *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  char (*__cil_tmp25)[32U] ;
  char *__cil_tmp26 ;
  char const *__cil_tmp27 ;
  char *__cil_tmp28 ;
  {
  {
  __cil_tmp3 = (char const *)revision;
  p = strchr(__cil_tmp3, 58);
  }
  {
  __cil_tmp4 = (char *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = (unsigned long )p;
  if (__cil_tmp6 != __cil_tmp5) {
    {
    __cil_tmp7 = p + 1UL;
    __cil_tmp8 = *__cil_tmp7;
    __cil_tmp9 = (signed char )__cil_tmp8;
    __cil_tmp10 = (int )__cil_tmp9;
    if (__cil_tmp10 != 0) {
      {
      __cil_tmp11 = (char *)(& rev);
      __cil_tmp12 = (char const *)p;
      __cil_tmp13 = __cil_tmp12 + 2U;
      strlcpy(__cil_tmp11, __cil_tmp13, 32UL);
      __cil_tmp14 = (char const *)(& rev);
      p = strchr(__cil_tmp14, 36);
      }
      {
      __cil_tmp15 = (char *)0;
      __cil_tmp16 = (unsigned long )__cil_tmp15;
      __cil_tmp17 = (unsigned long )p;
      if (__cil_tmp17 != __cil_tmp16) {
        {
        __cil_tmp18 = (unsigned long )p;
        __cil_tmp19 = (char *)(& rev);
        __cil_tmp20 = (unsigned long )__cil_tmp19;
        if (__cil_tmp20 < __cil_tmp18) {
          __cil_tmp21 = p + 0xffffffffffffffffUL;
          *__cil_tmp21 = (char)0;
        } else {
        }
        }
      } else {
      }
      }
    } else {
      {
      __cil_tmp22 = (char *)(& rev);
      strcpy(__cil_tmp22, "1.0");
      }
    }
    }
  } else {
    {
    __cil_tmp23 = (char *)(& rev);
    strcpy(__cil_tmp23, "1.0");
    }
  }
  }
  {
  __cil_tmp24 = (unsigned long )(& capi_driver_b1pcmcia) + 32;
  __cil_tmp25 = (char (*)[32U])__cil_tmp24;
  __cil_tmp26 = (char *)__cil_tmp25;
  __cil_tmp27 = (char const *)(& rev);
  strlcpy(__cil_tmp26, __cil_tmp27, 32UL);
  register_capi_driver(& capi_driver_b1pcmcia);
  __cil_tmp28 = (char *)(& rev);
  printk("<6>b1pci: revision %s\n", __cil_tmp28);
  }
  return (0);
}
}
static void b1pcmcia_exit(void)
{
  {
  {
  unregister_capi_driver(& capi_driver_b1pcmcia);
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
  tmp = b1pcmcia_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_23191;
  ldv_23190:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  {
  goto switch_default;
  if (0) {
    switch_default: ;
    goto ldv_23189;
  } else {
    switch_break: ;
  }
  }
  ldv_23189: ;
  ldv_23191:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_23190;
  } else {
    goto ldv_23192;
  }
  ldv_23192: ;
  {
  b1pcmcia_exit();
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int attach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
avmcard *b1_alloc_card(int arg0) {
  return ldv_malloc(sizeof(avmcard));
}
int __VERIFIER_nondet_int(void);
int b1_detect(unsigned int arg0, enum avmcardtype arg1) {
  return __VERIFIER_nondet_int();
}
void b1_free_card(avmcard *arg0) {
  return;
}
void b1_getrevision(avmcard *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int detach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
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
void unregister_capi_driver(struct capi_driver *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
