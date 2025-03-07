extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef u64 dma_addr_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
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
struct workqueue_struct;
struct workqueue_struct;
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
struct proc_dir_entry;
struct proc_dir_entry;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
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
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
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
union __anonunion_ldv_16934_137 {
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
   union __anonunion_ldv_16934_137 ldv_16934 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
union __anonunion_ldv_17806_139 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_17816_143 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_17817_142 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_17816_143 ldv_17816 ;
};
struct __anonstruct_ldv_17819_141 {
   union __anonunion_ldv_17817_142 ldv_17817 ;
   atomic_t _count ;
};
union __anonunion_ldv_17820_140 {
   unsigned long counters ;
   struct __anonstruct_ldv_17819_141 ldv_17819 ;
};
struct __anonstruct_ldv_17821_138 {
   union __anonunion_ldv_17806_139 ldv_17806 ;
   union __anonunion_ldv_17820_140 ldv_17820 ;
};
struct __anonstruct_ldv_17828_145 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_17829_144 {
   struct list_head lru ;
   struct __anonstruct_ldv_17828_145 ldv_17828 ;
};
union __anonunion_ldv_17834_146 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_17821_138 ldv_17821 ;
   union __anonunion_ldv_17829_144 ldv_17829 ;
   union __anonunion_ldv_17834_146 ldv_17834 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_148 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_147 {
   struct __anonstruct_vm_set_148 vm_set ;
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
   union __anonunion_shared_147 shared ;
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
struct tifm_device_id {
   unsigned char type ;
};
struct tifm_driver;
struct tifm_driver;
struct tifm_dev {
   char *addr ;
   spinlock_t lock ;
   unsigned char type ;
   unsigned int socket_id ;
   void (*card_event)(struct tifm_dev * ) ;
   void (*data_event)(struct tifm_dev * ) ;
   struct device dev ;
};
struct tifm_driver {
   struct tifm_device_id *id_table ;
   int (*probe)(struct tifm_dev * ) ;
   void (*remove)(struct tifm_dev * ) ;
   int (*suspend)(struct tifm_dev * , pm_message_t ) ;
   int (*resume)(struct tifm_dev * ) ;
   struct device_driver driver ;
};
struct tifm_adapter {
   char *addr ;
   spinlock_t lock ;
   unsigned int irq_status ;
   unsigned int socket_change_set ;
   unsigned int id ;
   unsigned int num_sockets ;
   struct completion *finish_me ;
   struct work_struct media_switcher ;
   struct device dev ;
   void (*eject)(struct tifm_adapter * , struct tifm_dev * ) ;
   int (*has_ms_pif)(struct tifm_adapter * , struct tifm_dev * ) ;
   struct tifm_dev *sockets[0U] ;
};
struct idr_layer {
   unsigned long bitmap ;
   struct idr_layer *ary[64U] ;
   int count ;
   int layer ;
   struct rcu_head rcu_head ;
};
struct idr {
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   spinlock_t lock ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return ((struct raw_spinlock *)lock);
}
}
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_lock(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_unlock(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern int queue_work(struct workqueue_struct * , struct work_struct * ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern int add_uevent_var(struct kobj_uevent_env * , char const * , ...) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int __bus_register(struct bus_type * , struct lock_class_key * ) ;
extern void bus_unregister(struct bus_type * ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern int __class_register(struct class * , struct lock_class_key * ) ;
extern void class_unregister(struct class * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
extern void device_unregister(struct device * ) ;
extern void device_initialize(struct device * ) ;
extern int device_add(struct device * ) ;
extern void device_del(struct device * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern struct device *get_device(struct device * ) ;
extern void put_device(struct device * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{ long __cil_tmp2 ;
  long __cil_tmp3 ;
  long __cil_tmp4 ;
  unsigned long long __cil_tmp5 ;
  unsigned long long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  {
  {
  __cil_tmp2 = (long )page;
  __cil_tmp3 = __cil_tmp2 + 24189255811072L;
  __cil_tmp4 = __cil_tmp3 / 64L;
  __cil_tmp5 = (unsigned long long )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 << 12;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = __cil_tmp7 + 0xffff880000000000UL;
  return ((void *)__cil_tmp8);
  }
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{ long tmp ;
  long tmp___0 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  long __cil_tmp11 ;
  long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  {
  {
  __cil_tmp4 = *((unsigned long *)sg);
  __cil_tmp5 = __cil_tmp4 != 2271560481UL;
  __cil_tmp6 = (long )__cil_tmp5;
  tmp = __builtin_expect(__cil_tmp6, 0L);
  }
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_20527: ;
    goto ldv_20527;
  } else {
  }
  {
  __cil_tmp7 = (unsigned long )sg;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((unsigned long *)__cil_tmp8);
  __cil_tmp10 = (int )__cil_tmp9;
  __cil_tmp11 = (long )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 & 1L;
  tmp___0 = __builtin_expect(__cil_tmp12, 0L);
  }
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_20528: ;
    goto ldv_20528;
  } else {
  }
  {
  __cil_tmp13 = (unsigned long )sg;
  __cil_tmp14 = __cil_tmp13 + 8;
  __cil_tmp15 = *((unsigned long *)__cil_tmp14);
  __cil_tmp16 = __cil_tmp15 & 0xfffffffffffffffcUL;
  return ((struct page *)__cil_tmp16);
  }
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{ struct page *tmp ;
  void *tmp___0 ;
  struct page const *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  {
  {
  tmp = sg_page(sg);
  __cil_tmp4 = (struct page const *)tmp;
  tmp___0 = lowmem_page_address(__cil_tmp4);
  }
  {
  __cil_tmp5 = (unsigned long )sg;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = *((unsigned int *)__cil_tmp6);
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  return (tmp___0 + __cil_tmp8);
  }
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
__inline static int valid_dma_direction(int dma_direction )
{ int tmp ;
  {
  if (dma_direction == 0) {
    tmp = 1;
  } else
  if (dma_direction == 1) {
    tmp = 1;
  } else
  if (dma_direction == 2) {
    tmp = 1;
  } else {
    tmp = 0;
  }
  return (tmp);
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
{ long tmp ;
  struct device *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  int __cil_tmp6 ;
  long __cil_tmp7 ;
  struct dma_map_ops *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct dma_map_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  {
  {
  __cil_tmp3 = (struct device *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = (unsigned long )dev;
  __cil_tmp6 = __cil_tmp5 == __cil_tmp4;
  __cil_tmp7 = (long )__cil_tmp6;
  tmp = __builtin_expect(__cil_tmp7, 0L);
  }
  if (tmp != 0L) {
    return (dma_ops);
  } else {
    {
    __cil_tmp8 = (struct dma_map_ops *)0;
    __cil_tmp9 = (unsigned long )__cil_tmp8;
    __cil_tmp10 = 968 + 8;
    __cil_tmp11 = (unsigned long )dev;
    __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
    __cil_tmp13 = *((struct dma_map_ops **)__cil_tmp12);
    __cil_tmp14 = (unsigned long )__cil_tmp13;
    if (__cil_tmp14 == __cil_tmp9) {
      return (dma_ops);
    } else {
      {
      __cil_tmp15 = 968 + 8;
      __cil_tmp16 = (unsigned long )dev;
      __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
      return (*((struct dma_map_ops **)__cil_tmp17));
      }
    }
    }
  }
}
}
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int (*__cil_tmp22)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                     struct dma_attrs * ) ;
  int __cil_tmp23 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  }
  goto ldv_20987;
  ldv_20986:
  {
  tmp___0 = sg_virt(s);
  __cil_tmp14 = (unsigned long )s;
  __cil_tmp15 = __cil_tmp14 + 20;
  __cil_tmp16 = *((unsigned int *)__cil_tmp15);
  kmemcheck_mark_initialized(tmp___0, __cil_tmp16);
  i = i + 1;
  s = sg_next(s);
  }
  ldv_20987: ;
  if (i < nents) {
    goto ldv_20986;
  } else {
    goto ldv_20988;
  }
  ldv_20988:
  {
  __cil_tmp17 = (int )dir;
  tmp___1 = valid_dma_direction(__cil_tmp17);
  __cil_tmp18 = tmp___1 == 0;
  __cil_tmp19 = (long )__cil_tmp18;
  tmp___2 = __builtin_expect(__cil_tmp19, 0L);
  }
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_20989: ;
    goto ldv_20989;
  } else {
  }
  {
  __cil_tmp20 = (unsigned long )ops;
  __cil_tmp21 = __cil_tmp20 + 40;
  __cil_tmp22 = *((int (**)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                            struct dma_attrs * ))__cil_tmp21);
  ents = (*__cil_tmp22)(dev, sg, nents, dir, attrs);
  __cil_tmp23 = (int )dir;
  debug_dma_map_sg(dev, sg, nents, ents, __cil_tmp23);
  }
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
                                        struct dma_attrs *attrs )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  long __cil_tmp12 ;
  int __cil_tmp13 ;
  void (*__cil_tmp14)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                      struct dma_attrs * ) ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void (*__cil_tmp18)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                      struct dma_attrs * ) ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  void (*__cil_tmp22)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                      struct dma_attrs * ) ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  __cil_tmp10 = (int )dir;
  tmp___0 = valid_dma_direction(__cil_tmp10);
  __cil_tmp11 = tmp___0 == 0;
  __cil_tmp12 = (long )__cil_tmp11;
  tmp___1 = __builtin_expect(__cil_tmp12, 0L);
  }
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (65), "i" (12UL));
    ldv_20998: ;
    goto ldv_20998;
  } else {
  }
  {
  __cil_tmp13 = (int )dir;
  debug_dma_unmap_sg(dev, sg, nents, __cil_tmp13);
  }
  {
  __cil_tmp14 = (void (*)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                          struct dma_attrs * ))0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = (unsigned long )ops;
  __cil_tmp17 = __cil_tmp16 + 48;
  __cil_tmp18 = *((void (**)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                             struct dma_attrs * ))__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  if (__cil_tmp19 != __cil_tmp15) {
    {
    __cil_tmp20 = (unsigned long )ops;
    __cil_tmp21 = __cil_tmp20 + 48;
    __cil_tmp22 = *((void (**)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                               struct dma_attrs * ))__cil_tmp21);
    (*__cil_tmp22)(dev, sg, nents, dir, attrs);
    }
  } else {
  }
  }
  return;
}
}
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{ struct device *tmp ;
  int tmp___0 ;
  struct pci_dev *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  enum dma_data_direction __cil_tmp12 ;
  struct dma_attrs *__cil_tmp13 ;
  {
  {
  __cil_tmp7 = (struct pci_dev *)0;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = (unsigned long )hwdev;
  if (__cil_tmp9 != __cil_tmp8) {
    __cil_tmp10 = (unsigned long )hwdev;
    __cil_tmp11 = __cil_tmp10 + 144;
    tmp = (struct device *)__cil_tmp11;
  } else {
    tmp = (struct device *)0;
  }
  }
  {
  __cil_tmp12 = (enum dma_data_direction )direction;
  __cil_tmp13 = (struct dma_attrs *)0;
  tmp___0 = dma_map_sg_attrs(tmp, sg, nents, __cil_tmp12, __cil_tmp13);
  }
  return (tmp___0);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{ struct device *tmp ;
  struct pci_dev *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  enum dma_data_direction __cil_tmp11 ;
  struct dma_attrs *__cil_tmp12 ;
  {
  {
  __cil_tmp6 = (struct pci_dev *)0;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = (unsigned long )hwdev;
  if (__cil_tmp8 != __cil_tmp7) {
    __cil_tmp9 = (unsigned long )hwdev;
    __cil_tmp10 = __cil_tmp9 + 144;
    tmp = (struct device *)__cil_tmp10;
  } else {
    tmp = (struct device *)0;
  }
  }
  {
  __cil_tmp11 = (enum dma_data_direction )direction;
  __cil_tmp12 = (struct dma_attrs *)0;
  dma_unmap_sg_attrs(tmp, sg, nents, __cil_tmp11, __cil_tmp12);
  }
  return;
}
}
struct tifm_adapter *tifm_alloc_adapter(unsigned int num_sockets , struct device *dev ) ;
int tifm_add_adapter(struct tifm_adapter *fm ) ;
void tifm_remove_adapter(struct tifm_adapter *fm ) ;
void tifm_free_adapter(struct tifm_adapter *fm ) ;
void tifm_free_device(struct device *dev ) ;
struct tifm_dev *tifm_alloc_device(struct tifm_adapter *fm , unsigned int id , unsigned char type ) ;
int tifm_register_driver(struct tifm_driver *drv ) ;
void tifm_unregister_driver(struct tifm_driver *drv ) ;
void tifm_eject(struct tifm_dev *sock ) ;
int tifm_has_ms_pif(struct tifm_dev *sock ) ;
int tifm_map_sg(struct tifm_dev *sock , struct scatterlist *sg , int nents , int direction ) ;
void tifm_unmap_sg(struct tifm_dev *sock , struct scatterlist *sg , int nents , int direction ) ;
void tifm_queue_work(struct work_struct *work ) ;
extern int idr_pre_get(struct idr * , gfp_t ) ;
extern int idr_get_new(struct idr * , void * , int * ) ;
extern void idr_remove(struct idr * , int ) ;
static struct workqueue_struct *workqueue ;
static struct idr tifm_adapter_idr = {(struct idr_layer *)0, (struct idr_layer *)0, 0, 0, {{{{{0U}}, 3735899821U, 4294967295U,
                                                           (void *)0xffffffffffffffffUL,
                                                           {(struct lock_class_key *)0,
                                                            {(struct lock_class *)0,
                                                             (struct lock_class *)0},
                                                            "tifm_adapter_idr.lock",
                                                            0, 0UL}}}}};
static spinlock_t tifm_adapter_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)0xffffffffffffffffUL, {(struct lock_class_key *)0,
                                                                       {(struct lock_class *)0,
                                                                        (struct lock_class *)0},
                                                                       "tifm_adapter_lock",
                                                                       0, 0UL}}}};
static char const *tifm_media_type_name(unsigned char type , unsigned char nt )
{ char const *card_type_name[3U][3U] ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
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
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  {
  __cil_tmp4 = 0 * 8UL;
  __cil_tmp5 = 0 * 24UL;
  __cil_tmp6 = __cil_tmp5 + __cil_tmp4;
  __cil_tmp7 = (unsigned long )(card_type_name) + __cil_tmp6;
  *((char const **)__cil_tmp7) = "SmartMedia/xD";
  __cil_tmp8 = 1 * 8UL;
  __cil_tmp9 = 0 * 24UL;
  __cil_tmp10 = __cil_tmp9 + __cil_tmp8;
  __cil_tmp11 = (unsigned long )(card_type_name) + __cil_tmp10;
  *((char const **)__cil_tmp11) = "MemoryStick";
  __cil_tmp12 = 2 * 8UL;
  __cil_tmp13 = 0 * 24UL;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = (unsigned long )(card_type_name) + __cil_tmp14;
  *((char const **)__cil_tmp15) = "MMC/SD";
  __cil_tmp16 = 0 * 8UL;
  __cil_tmp17 = 1 * 24UL;
  __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
  __cil_tmp19 = (unsigned long )(card_type_name) + __cil_tmp18;
  *((char const **)__cil_tmp19) = "XD";
  __cil_tmp20 = 1 * 8UL;
  __cil_tmp21 = 1 * 24UL;
  __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
  __cil_tmp23 = (unsigned long )(card_type_name) + __cil_tmp22;
  *((char const **)__cil_tmp23) = "MS";
  __cil_tmp24 = 2 * 8UL;
  __cil_tmp25 = 1 * 24UL;
  __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
  __cil_tmp27 = (unsigned long )(card_type_name) + __cil_tmp26;
  *((char const **)__cil_tmp27) = "SD";
  __cil_tmp28 = 0 * 8UL;
  __cil_tmp29 = 2 * 24UL;
  __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
  __cil_tmp31 = (unsigned long )(card_type_name) + __cil_tmp30;
  *((char const **)__cil_tmp31) = "xd";
  __cil_tmp32 = 1 * 8UL;
  __cil_tmp33 = 2 * 24UL;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  __cil_tmp35 = (unsigned long )(card_type_name) + __cil_tmp34;
  *((char const **)__cil_tmp35) = "ms";
  __cil_tmp36 = 2 * 8UL;
  __cil_tmp37 = 2 * 24UL;
  __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
  __cil_tmp39 = (unsigned long )(card_type_name) + __cil_tmp38;
  *((char const **)__cil_tmp39) = "sd";
  {
  __cil_tmp40 = (unsigned int )nt;
  if (__cil_tmp40 > 2U) {
    return ((char const *)0);
  } else {
    {
    __cil_tmp41 = (unsigned int )type;
    if (__cil_tmp41 == 0U) {
      return ((char const *)0);
    } else {
      {
      __cil_tmp42 = (unsigned int )type;
      if (__cil_tmp42 > 3U) {
        return ((char const *)0);
      } else {
      }
      }
    }
    }
  }
  }
  {
  __cil_tmp43 = (int )type;
  __cil_tmp44 = __cil_tmp43 + -1;
  __cil_tmp45 = __cil_tmp44 * 8UL;
  __cil_tmp46 = (int )nt;
  __cil_tmp47 = __cil_tmp46 * 24UL;
  __cil_tmp48 = __cil_tmp47 + __cil_tmp45;
  __cil_tmp49 = (unsigned long )(card_type_name) + __cil_tmp48;
  return (*((char const **)__cil_tmp49));
  }
}
}
static int tifm_dev_match(struct tifm_dev *sock , struct tifm_device_id *id )
{ unsigned char __cil_tmp3 ;
  int __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  {
  __cil_tmp3 = *((unsigned char *)id);
  __cil_tmp4 = (int )__cil_tmp3;
  __cil_tmp5 = (unsigned long )sock;
  __cil_tmp6 = __cil_tmp5 + 80;
  __cil_tmp7 = *((unsigned char *)__cil_tmp6);
  __cil_tmp8 = (int )__cil_tmp7;
  if (__cil_tmp8 == __cil_tmp4) {
    return (1);
  } else {
  }
  }
  return (0);
}
}
static int tifm_bus_match(struct device *dev , struct device_driver *drv )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_driver *fm_drv ;
  struct device_driver const *__mptr___0 ;
  struct tifm_device_id *ids ;
  int tmp ;
  struct tifm_dev *__cil_tmp9 ;
  struct tifm_driver *__cil_tmp10 ;
  struct tifm_device_id *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp9 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp9 + 0xffffffffffffff98UL;
  __mptr___0 = (struct device_driver const *)drv;
  __cil_tmp10 = (struct tifm_driver *)__mptr___0;
  fm_drv = __cil_tmp10 + 0xffffffffffffffd8UL;
  ids = *((struct tifm_device_id **)fm_drv);
  {
  __cil_tmp11 = (struct tifm_device_id *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )ids;
  if (__cil_tmp13 != __cil_tmp12) {
    goto ldv_21687;
    ldv_21686:
    {
    tmp = tifm_dev_match(sock, ids);
    }
    if (tmp != 0) {
      return (1);
    } else {
    }
    ids = ids + 1;
    ldv_21687: ;
    {
    __cil_tmp14 = *((unsigned char *)ids);
    __cil_tmp15 = (unsigned int )__cil_tmp14;
    if (__cil_tmp15 != 0U) {
      goto ldv_21686;
    } else {
      goto ldv_21688;
    }
    }
    ldv_21688: ;
  } else {
  }
  }
  return (0);
}
}
static int tifm_uevent(struct device *dev , struct kobj_uevent_env *env )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  char const *tmp ;
  int tmp___0 ;
  struct tifm_dev *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp7 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp7 + 0xffffffffffffff98UL;
  __cil_tmp8 = (unsigned long )sock;
  __cil_tmp9 = __cil_tmp8 + 80;
  __cil_tmp10 = *((unsigned char *)__cil_tmp9);
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = (unsigned char )__cil_tmp11;
  tmp = tifm_media_type_name(__cil_tmp12, (unsigned char)1);
  tmp___0 = add_uevent_var(env, "TIFM_CARD_TYPE=%s", tmp);
  }
  if (tmp___0 != 0) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int tifm_device_probe(struct device *dev )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_driver *drv ;
  struct device_driver const *__mptr___0 ;
  int rc ;
  struct tifm_dev *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device_driver *__cil_tmp10 ;
  struct tifm_driver *__cil_tmp11 ;
  struct device_driver *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device_driver *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  int (*__cil_tmp18)(struct tifm_dev * ) ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int (*__cil_tmp22)(struct tifm_dev * ) ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int (*__cil_tmp26)(struct tifm_dev * ) ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp7 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp7 + 0xffffffffffffff98UL;
  __cil_tmp8 = (unsigned long )dev;
  __cil_tmp9 = __cil_tmp8 + 272;
  __cil_tmp10 = *((struct device_driver **)__cil_tmp9);
  __mptr___0 = (struct device_driver const *)__cil_tmp10;
  __cil_tmp11 = (struct tifm_driver *)__mptr___0;
  drv = __cil_tmp11 + 0xffffffffffffffd8UL;
  rc = -19;
  get_device(dev);
  }
  {
  __cil_tmp12 = (struct device_driver *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )dev;
  __cil_tmp15 = __cil_tmp14 + 272;
  __cil_tmp16 = *((struct device_driver **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  if (__cil_tmp17 != __cil_tmp13) {
    {
    __cil_tmp18 = (int (*)(struct tifm_dev * ))0;
    __cil_tmp19 = (unsigned long )__cil_tmp18;
    __cil_tmp20 = (unsigned long )drv;
    __cil_tmp21 = __cil_tmp20 + 8;
    __cil_tmp22 = *((int (**)(struct tifm_dev * ))__cil_tmp21);
    __cil_tmp23 = (unsigned long )__cil_tmp22;
    if (__cil_tmp23 != __cil_tmp19) {
      {
      __cil_tmp24 = (unsigned long )drv;
      __cil_tmp25 = __cil_tmp24 + 8;
      __cil_tmp26 = *((int (**)(struct tifm_dev * ))__cil_tmp25);
      rc = (*__cil_tmp26)(sock);
      }
      if (rc == 0) {
        return (0);
      } else {
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  put_device(dev);
  }
  return (rc);
}
}
static void tifm_dummy_event(struct tifm_dev *sock )
{
  {
  return;
}
}
static int tifm_device_remove(struct device *dev )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_driver *drv ;
  struct device_driver const *__mptr___0 ;
  struct tifm_dev *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device_driver *__cil_tmp9 ;
  struct tifm_driver *__cil_tmp10 ;
  struct device_driver *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct device_driver *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void (*__cil_tmp17)(struct tifm_dev * ) ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void (*__cil_tmp21)(struct tifm_dev * ) ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  void (*__cil_tmp29)(struct tifm_dev * ) ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp6 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp6 + 0xffffffffffffff98UL;
  __cil_tmp7 = (unsigned long )dev;
  __cil_tmp8 = __cil_tmp7 + 272;
  __cil_tmp9 = *((struct device_driver **)__cil_tmp8);
  __mptr___0 = (struct device_driver const *)__cil_tmp9;
  __cil_tmp10 = (struct tifm_driver *)__mptr___0;
  drv = __cil_tmp10 + 0xffffffffffffffd8UL;
  {
  __cil_tmp11 = (struct device_driver *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )dev;
  __cil_tmp14 = __cil_tmp13 + 272;
  __cil_tmp15 = *((struct device_driver **)__cil_tmp14);
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  if (__cil_tmp16 != __cil_tmp12) {
    {
    __cil_tmp17 = (void (*)(struct tifm_dev * ))0;
    __cil_tmp18 = (unsigned long )__cil_tmp17;
    __cil_tmp19 = (unsigned long )drv;
    __cil_tmp20 = __cil_tmp19 + 16;
    __cil_tmp21 = *((void (**)(struct tifm_dev * ))__cil_tmp20);
    __cil_tmp22 = (unsigned long )__cil_tmp21;
    if (__cil_tmp22 != __cil_tmp18) {
      {
      __cil_tmp23 = (unsigned long )sock;
      __cil_tmp24 = __cil_tmp23 + 88;
      *((void (**)(struct tifm_dev * ))__cil_tmp24) = & tifm_dummy_event;
      __cil_tmp25 = (unsigned long )sock;
      __cil_tmp26 = __cil_tmp25 + 96;
      *((void (**)(struct tifm_dev * ))__cil_tmp26) = & tifm_dummy_event;
      __cil_tmp27 = (unsigned long )drv;
      __cil_tmp28 = __cil_tmp27 + 16;
      __cil_tmp29 = *((void (**)(struct tifm_dev * ))__cil_tmp28);
      (*__cil_tmp29)(sock);
      __cil_tmp30 = 104 + 272;
      __cil_tmp31 = (unsigned long )sock;
      __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
      *((struct device_driver **)__cil_tmp32) = (struct device_driver *)0;
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  put_device(dev);
  }
  return (0);
}
}
static int tifm_device_suspend(struct device *dev , int state_event28 )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_driver *drv ;
  struct device_driver const *__mptr___0 ;
  int tmp ;
  struct tifm_dev *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct device_driver *__cil_tmp11 ;
  struct tifm_driver *__cil_tmp12 ;
  struct device_driver *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device_driver *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int (*__cil_tmp19)(struct tifm_dev * , int ) ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int (*__cil_tmp23)(struct tifm_dev * , int ) ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int (*__cil_tmp27)(struct tifm_dev * , int ) ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp8 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp8 + 0xffffffffffffff98UL;
  __cil_tmp9 = (unsigned long )dev;
  __cil_tmp10 = __cil_tmp9 + 272;
  __cil_tmp11 = *((struct device_driver **)__cil_tmp10);
  __mptr___0 = (struct device_driver const *)__cil_tmp11;
  __cil_tmp12 = (struct tifm_driver *)__mptr___0;
  drv = __cil_tmp12 + 0xffffffffffffffd8UL;
  {
  __cil_tmp13 = (struct device_driver *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )dev;
  __cil_tmp16 = __cil_tmp15 + 272;
  __cil_tmp17 = *((struct device_driver **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 != __cil_tmp14) {
    {
    __cil_tmp19 = (int (*)(struct tifm_dev * , int ))0;
    __cil_tmp20 = (unsigned long )__cil_tmp19;
    __cil_tmp21 = (unsigned long )drv;
    __cil_tmp22 = __cil_tmp21 + 24;
    __cil_tmp23 = *((int (**)(struct tifm_dev * , int ))__cil_tmp22);
    __cil_tmp24 = (unsigned long )__cil_tmp23;
    if (__cil_tmp24 != __cil_tmp20) {
      {
      __cil_tmp25 = (unsigned long )drv;
      __cil_tmp26 = __cil_tmp25 + 24;
      __cil_tmp27 = *((int (**)(struct tifm_dev * , int ))__cil_tmp26);
      tmp = (*__cil_tmp27)(sock, state_event28);
      }
      return (tmp);
    } else {
    }
    }
  } else {
  }
  }
  return (0);
}
}
static int tifm_device_resume(struct device *dev )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_driver *drv ;
  struct device_driver const *__mptr___0 ;
  int tmp ;
  struct tifm_dev *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device_driver *__cil_tmp10 ;
  struct tifm_driver *__cil_tmp11 ;
  struct device_driver *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device_driver *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  int (*__cil_tmp18)(struct tifm_dev * ) ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int (*__cil_tmp22)(struct tifm_dev * ) ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int (*__cil_tmp26)(struct tifm_dev * ) ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp7 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp7 + 0xffffffffffffff98UL;
  __cil_tmp8 = (unsigned long )dev;
  __cil_tmp9 = __cil_tmp8 + 272;
  __cil_tmp10 = *((struct device_driver **)__cil_tmp9);
  __mptr___0 = (struct device_driver const *)__cil_tmp10;
  __cil_tmp11 = (struct tifm_driver *)__mptr___0;
  drv = __cil_tmp11 + 0xffffffffffffffd8UL;
  {
  __cil_tmp12 = (struct device_driver *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )dev;
  __cil_tmp15 = __cil_tmp14 + 272;
  __cil_tmp16 = *((struct device_driver **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  if (__cil_tmp17 != __cil_tmp13) {
    {
    __cil_tmp18 = (int (*)(struct tifm_dev * ))0;
    __cil_tmp19 = (unsigned long )__cil_tmp18;
    __cil_tmp20 = (unsigned long )drv;
    __cil_tmp21 = __cil_tmp20 + 32;
    __cil_tmp22 = *((int (**)(struct tifm_dev * ))__cil_tmp21);
    __cil_tmp23 = (unsigned long )__cil_tmp22;
    if (__cil_tmp23 != __cil_tmp19) {
      {
      __cil_tmp24 = (unsigned long )drv;
      __cil_tmp25 = __cil_tmp24 + 32;
      __cil_tmp26 = *((int (**)(struct tifm_dev * ))__cil_tmp25);
      tmp = (*__cil_tmp26)(sock);
      }
      return (tmp);
    } else {
    }
    }
  } else {
  }
  }
  return (0);
}
}
static ssize_t type_show(struct device *dev , struct device_attribute *attr , char *buf )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  int tmp ;
  struct tifm_dev *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp7 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp7 + 0xffffffffffffff98UL;
  __cil_tmp8 = (unsigned long )sock;
  __cil_tmp9 = __cil_tmp8 + 80;
  __cil_tmp10 = *((unsigned char *)__cil_tmp9);
  __cil_tmp11 = (int )__cil_tmp10;
  tmp = sprintf(buf, "%x", __cil_tmp11);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute tifm_dev_attrs[2U] = { {{"type", (umode_t )292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                             {(char)0}, {(char)0},
                                                             {(char)0}, {(char)0},
                                                             {(char)0}, {(char)0}}}},
      & type_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                size_t ))0},
        {{(char const *)0, (unsigned short)0, (struct lock_class_key *)0, {{{(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0}}}},
      (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, (ssize_t (*)(struct device * ,
                                                                                          struct device_attribute * ,
                                                                                          char const * ,
                                                                                          size_t ))0}};
static struct bus_type tifm_bus_type =
     {"tifm", (char const *)0, (struct device *)0, (struct bus_attribute *)0, (struct device_attribute *)(& tifm_dev_attrs),
    (struct driver_attribute *)0, & tifm_bus_match, & tifm_uevent, & tifm_device_probe,
    & tifm_device_remove, (void (*)(struct device * ))0, & tifm_device_suspend, & tifm_device_resume,
    (struct dev_pm_ops const *)0, (struct iommu_ops *)0, (struct subsys_private *)0};
static void tifm_free(struct device *dev )
{ struct tifm_adapter *fm ;
  struct device const *__mptr ;
  struct tifm_adapter *__cil_tmp4 ;
  void const *__cil_tmp5 ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp4 = (struct tifm_adapter *)__mptr;
  fm = __cil_tmp4 + 0xffffffffffffff48UL;
  __cil_tmp5 = (void const *)fm;
  kfree(__cil_tmp5);
  }
  return;
}
}
static struct class tifm_adapter_class =
     {"tifm_adapter", (struct module *)0, (struct class_attribute *)0, (struct device_attribute *)0,
    (struct bin_attribute *)0, (struct kobject *)0, (int (*)(struct device * , struct kobj_uevent_env * ))0,
    (char *(*)(struct device * , umode_t * ))0, (void (*)(struct class * ))0, & tifm_free,
    (int (*)(struct device * , pm_message_t ))0, (int (*)(struct device * ))0, (struct kobj_ns_type_operations const *)0,
    (void const *(*)(struct device * ))0, (struct dev_pm_ops const *)0, (struct subsys_private *)0};
struct tifm_adapter *tifm_alloc_adapter(unsigned int num_sockets , struct device *dev )
{ struct tifm_adapter *fm ;
  void *tmp ;
  struct lock_class_key __key ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct tifm_adapter *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  spinlock_t *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct raw_spinlock *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  {
  {
  __cil_tmp6 = (unsigned long )num_sockets;
  __cil_tmp7 = __cil_tmp6 + 169UL;
  __cil_tmp8 = __cil_tmp7 * 8UL;
  tmp = kzalloc(__cil_tmp8, 208U);
  fm = (struct tifm_adapter *)tmp;
  }
  {
  __cil_tmp9 = (struct tifm_adapter *)0;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = (unsigned long )fm;
  if (__cil_tmp11 != __cil_tmp10) {
    {
    __cil_tmp12 = 184 + 1128;
    __cil_tmp13 = (unsigned long )fm;
    __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
    *((struct class **)__cil_tmp14) = & tifm_adapter_class;
    __cil_tmp15 = (unsigned long )fm;
    __cil_tmp16 = __cil_tmp15 + 184;
    *((struct device **)__cil_tmp16) = dev;
    __cil_tmp17 = (unsigned long )fm;
    __cil_tmp18 = __cil_tmp17 + 184;
    __cil_tmp19 = (struct device *)__cil_tmp18;
    device_initialize(__cil_tmp19);
    __cil_tmp20 = (unsigned long )fm;
    __cil_tmp21 = __cil_tmp20 + 8;
    __cil_tmp22 = (spinlock_t *)__cil_tmp21;
    spinlock_check(__cil_tmp22);
    __cil_tmp23 = (unsigned long )fm;
    __cil_tmp24 = __cil_tmp23 + 8;
    __cil_tmp25 = (struct raw_spinlock *)__cil_tmp24;
    __raw_spin_lock_init(__cil_tmp25, "&(&fm->lock)->rlock", & __key);
    __cil_tmp26 = (unsigned long )fm;
    __cil_tmp27 = __cil_tmp26 + 92;
    *((unsigned int *)__cil_tmp27) = num_sockets;
    }
  } else {
  }
  }
  return (fm);
}
}
int tifm_add_adapter(struct tifm_adapter *fm )
{ int rc ;
  int tmp ;
  void *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int *__cil_tmp7 ;
  int *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct device *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  int __cil_tmp21 ;
  {
  {
  tmp = idr_pre_get(& tifm_adapter_idr, 208U);
  }
  if (tmp == 0) {
    return (-12);
  } else {
  }
  {
  spin_lock(& tifm_adapter_lock);
  __cil_tmp4 = (void *)fm;
  __cil_tmp5 = (unsigned long )fm;
  __cil_tmp6 = __cil_tmp5 + 88;
  __cil_tmp7 = (unsigned int *)__cil_tmp6;
  __cil_tmp8 = (int *)__cil_tmp7;
  rc = idr_get_new(& tifm_adapter_idr, __cil_tmp4, __cil_tmp8);
  spin_unlock(& tifm_adapter_lock);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  __cil_tmp9 = (unsigned long )fm;
  __cil_tmp10 = __cil_tmp9 + 184;
  __cil_tmp11 = (struct device *)__cil_tmp10;
  __cil_tmp12 = (unsigned long )fm;
  __cil_tmp13 = __cil_tmp12 + 88;
  __cil_tmp14 = *((unsigned int *)__cil_tmp13);
  dev_set_name(__cil_tmp11, "tifm%u", __cil_tmp14);
  __cil_tmp15 = (unsigned long )fm;
  __cil_tmp16 = __cil_tmp15 + 184;
  __cil_tmp17 = (struct device *)__cil_tmp16;
  rc = device_add(__cil_tmp17);
  }
  if (rc != 0) {
    {
    spin_lock(& tifm_adapter_lock);
    __cil_tmp18 = (unsigned long )fm;
    __cil_tmp19 = __cil_tmp18 + 88;
    __cil_tmp20 = *((unsigned int *)__cil_tmp19);
    __cil_tmp21 = (int )__cil_tmp20;
    idr_remove(& tifm_adapter_idr, __cil_tmp21);
    spin_unlock(& tifm_adapter_lock);
    }
  } else {
  }
  return (rc);
}
}
void tifm_remove_adapter(struct tifm_adapter *fm )
{ unsigned int cnt ;
  struct tifm_dev *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct tifm_dev *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct tifm_dev *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct device *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct device *__cil_tmp28 ;
  {
  {
  flush_workqueue(workqueue);
  cnt = 0U;
  }
  goto ldv_21782;
  ldv_21781: ;
  {
  __cil_tmp3 = (struct tifm_dev *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = cnt * 8UL;
  __cil_tmp6 = 1352 + __cil_tmp5;
  __cil_tmp7 = (unsigned long )fm;
  __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
  __cil_tmp9 = *((struct tifm_dev **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  if (__cil_tmp10 != __cil_tmp4) {
    {
    __cil_tmp11 = cnt * 8UL;
    __cil_tmp12 = 1352 + __cil_tmp11;
    __cil_tmp13 = (unsigned long )fm;
    __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
    __cil_tmp15 = *((struct tifm_dev **)__cil_tmp14);
    __cil_tmp16 = (unsigned long )__cil_tmp15;
    __cil_tmp17 = __cil_tmp16 + 104;
    __cil_tmp18 = (struct device *)__cil_tmp17;
    device_unregister(__cil_tmp18);
    }
  } else {
  }
  }
  cnt = cnt + 1U;
  ldv_21782: ;
  {
  __cil_tmp19 = (unsigned long )fm;
  __cil_tmp20 = __cil_tmp19 + 92;
  __cil_tmp21 = *((unsigned int *)__cil_tmp20);
  if (__cil_tmp21 > cnt) {
    goto ldv_21781;
  } else {
    goto ldv_21783;
  }
  }
  ldv_21783:
  {
  spin_lock(& tifm_adapter_lock);
  __cil_tmp22 = (unsigned long )fm;
  __cil_tmp23 = __cil_tmp22 + 88;
  __cil_tmp24 = *((unsigned int *)__cil_tmp23);
  __cil_tmp25 = (int )__cil_tmp24;
  idr_remove(& tifm_adapter_idr, __cil_tmp25);
  spin_unlock(& tifm_adapter_lock);
  __cil_tmp26 = (unsigned long )fm;
  __cil_tmp27 = __cil_tmp26 + 184;
  __cil_tmp28 = (struct device *)__cil_tmp27;
  device_del(__cil_tmp28);
  }
  return;
}
}
void tifm_free_adapter(struct tifm_adapter *fm )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct device *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = (unsigned long )fm;
  __cil_tmp3 = __cil_tmp2 + 184;
  __cil_tmp4 = (struct device *)__cil_tmp3;
  put_device(__cil_tmp4);
  }
  return;
}
}
void tifm_free_device(struct device *dev )
{ struct tifm_dev *sock ;
  struct device const *__mptr ;
  struct tifm_dev *__cil_tmp4 ;
  void const *__cil_tmp5 ;
  {
  {
  __mptr = (struct device const *)dev;
  __cil_tmp4 = (struct tifm_dev *)__mptr;
  sock = __cil_tmp4 + 0xffffffffffffff98UL;
  __cil_tmp5 = (void const *)sock;
  kfree(__cil_tmp5);
  }
  return;
}
}
struct tifm_dev *tifm_alloc_device(struct tifm_adapter *fm , unsigned int id , unsigned char type )
{ struct tifm_dev *sock ;
  char const *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int __cil_tmp10 ;
  unsigned char __cil_tmp11 ;
  char const *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct tifm_dev *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  spinlock_t *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct raw_spinlock *__cil_tmp23 ;
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
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct device *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned char __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct device *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned char __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  {
  {
  sock = (struct tifm_dev *)0;
  __cil_tmp10 = (int )type;
  __cil_tmp11 = (unsigned char )__cil_tmp10;
  tmp = tifm_media_type_name(__cil_tmp11, (unsigned char)0);
  }
  {
  __cil_tmp12 = (char const *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )tmp;
  if (__cil_tmp14 == __cil_tmp13) {
    return (sock);
  } else {
  }
  }
  {
  tmp___0 = kzalloc(1256UL, 208U);
  sock = (struct tifm_dev *)tmp___0;
  }
  {
  __cil_tmp15 = (struct tifm_dev *)0;
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  __cil_tmp17 = (unsigned long )sock;
  if (__cil_tmp17 != __cil_tmp16) {
    {
    __cil_tmp18 = (unsigned long )sock;
    __cil_tmp19 = __cil_tmp18 + 8;
    __cil_tmp20 = (spinlock_t *)__cil_tmp19;
    spinlock_check(__cil_tmp20);
    __cil_tmp21 = (unsigned long )sock;
    __cil_tmp22 = __cil_tmp21 + 8;
    __cil_tmp23 = (struct raw_spinlock *)__cil_tmp22;
    __raw_spin_lock_init(__cil_tmp23, "&(&sock->lock)->rlock", & __key);
    __cil_tmp24 = (unsigned long )sock;
    __cil_tmp25 = __cil_tmp24 + 80;
    *((unsigned char *)__cil_tmp25) = type;
    __cil_tmp26 = (unsigned long )sock;
    __cil_tmp27 = __cil_tmp26 + 84;
    *((unsigned int *)__cil_tmp27) = id;
    __cil_tmp28 = (unsigned long )sock;
    __cil_tmp29 = __cil_tmp28 + 88;
    *((void (**)(struct tifm_dev * ))__cil_tmp29) = & tifm_dummy_event;
    __cil_tmp30 = (unsigned long )sock;
    __cil_tmp31 = __cil_tmp30 + 96;
    *((void (**)(struct tifm_dev * ))__cil_tmp31) = & tifm_dummy_event;
    __cil_tmp32 = (unsigned long )sock;
    __cil_tmp33 = __cil_tmp32 + 104;
    __cil_tmp34 = (unsigned long )fm;
    __cil_tmp35 = __cil_tmp34 + 184;
    *((struct device **)__cil_tmp33) = *((struct device **)__cil_tmp35);
    __cil_tmp36 = 104 + 264;
    __cil_tmp37 = (unsigned long )sock;
    __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
    *((struct bus_type **)__cil_tmp38) = & tifm_bus_type;
    __cil_tmp39 = 104 + 920;
    __cil_tmp40 = (unsigned long )sock;
    __cil_tmp41 = __cil_tmp40 + __cil_tmp39;
    __cil_tmp42 = (unsigned long )fm;
    __cil_tmp43 = __cil_tmp42 + 184;
    __cil_tmp44 = *((struct device **)__cil_tmp43);
    __cil_tmp45 = (unsigned long )__cil_tmp44;
    __cil_tmp46 = __cil_tmp45 + 920;
    *((u64 **)__cil_tmp41) = *((u64 **)__cil_tmp46);
    __cil_tmp47 = 104 + 1144;
    __cil_tmp48 = (unsigned long )sock;
    __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
    *((void (**)(struct device * ))__cil_tmp49) = & tifm_free_device;
    __cil_tmp50 = (int )type;
    __cil_tmp51 = (unsigned char )__cil_tmp50;
    tmp___1 = tifm_media_type_name(__cil_tmp51, (unsigned char)2);
    __cil_tmp52 = (unsigned long )sock;
    __cil_tmp53 = __cil_tmp52 + 104;
    __cil_tmp54 = (struct device *)__cil_tmp53;
    __cil_tmp55 = (unsigned long )fm;
    __cil_tmp56 = __cil_tmp55 + 88;
    __cil_tmp57 = *((unsigned int *)__cil_tmp56);
    dev_set_name(__cil_tmp54, "tifm_%s%u:%u", tmp___1, __cil_tmp57, id);
    __cil_tmp58 = (int )type;
    __cil_tmp59 = (unsigned char )__cil_tmp58;
    tmp___2 = tifm_media_type_name(__cil_tmp59, (unsigned char)0);
    __cil_tmp60 = (unsigned long )fm;
    __cil_tmp61 = __cil_tmp60 + 88;
    __cil_tmp62 = *((unsigned int *)__cil_tmp61);
    printk("<6>tifm_core: %s card detected in socket %u:%u\n", tmp___2, __cil_tmp62,
           id);
    }
  } else {
  }
  }
  return (sock);
}
}
void tifm_eject(struct tifm_dev *sock )
{ struct tifm_adapter *fm ;
  void *tmp ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct device *__cil_tmp6 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void (*__cil_tmp10)(struct tifm_adapter * , struct tifm_dev * ) ;
  {
  {
  __cil_tmp4 = (unsigned long )sock;
  __cil_tmp5 = __cil_tmp4 + 104;
  __cil_tmp6 = *((struct device **)__cil_tmp5);
  __cil_tmp7 = (struct device const *)__cil_tmp6;
  tmp = dev_get_drvdata(__cil_tmp7);
  fm = (struct tifm_adapter *)tmp;
  __cil_tmp8 = (unsigned long )fm;
  __cil_tmp9 = __cil_tmp8 + 1336;
  __cil_tmp10 = *((void (**)(struct tifm_adapter * , struct tifm_dev * ))__cil_tmp9);
  (*__cil_tmp10)(fm, sock);
  }
  return;
}
}
int tifm_has_ms_pif(struct tifm_dev *sock )
{ struct tifm_adapter *fm ;
  void *tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int (*__cil_tmp11)(struct tifm_adapter * , struct tifm_dev * ) ;
  {
  {
  __cil_tmp5 = (unsigned long )sock;
  __cil_tmp6 = __cil_tmp5 + 104;
  __cil_tmp7 = *((struct device **)__cil_tmp6);
  __cil_tmp8 = (struct device const *)__cil_tmp7;
  tmp = dev_get_drvdata(__cil_tmp8);
  fm = (struct tifm_adapter *)tmp;
  __cil_tmp9 = (unsigned long )fm;
  __cil_tmp10 = __cil_tmp9 + 1344;
  __cil_tmp11 = *((int (**)(struct tifm_adapter * , struct tifm_dev * ))__cil_tmp10);
  tmp___0 = (*__cil_tmp11)(fm, sock);
  }
  return (tmp___0);
}
}
int tifm_map_sg(struct tifm_dev *sock , struct scatterlist *sg , int nents , int direction )
{ struct device const *__mptr ;
  int tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device *__cil_tmp9 ;
  struct pci_dev *__cil_tmp10 ;
  struct pci_dev *__cil_tmp11 ;
  {
  {
  __cil_tmp7 = (unsigned long )sock;
  __cil_tmp8 = __cil_tmp7 + 104;
  __cil_tmp9 = *((struct device **)__cil_tmp8);
  __mptr = (struct device const *)__cil_tmp9;
  __cil_tmp10 = (struct pci_dev *)__mptr;
  __cil_tmp11 = __cil_tmp10 + 0xffffffffffffff70UL;
  tmp = pci_map_sg(__cil_tmp11, sg, nents, direction);
  }
  return (tmp);
}
}
void tifm_unmap_sg(struct tifm_dev *sock , struct scatterlist *sg , int nents , int direction )
{ struct device const *__mptr ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct device *__cil_tmp8 ;
  struct pci_dev *__cil_tmp9 ;
  struct pci_dev *__cil_tmp10 ;
  {
  {
  __cil_tmp6 = (unsigned long )sock;
  __cil_tmp7 = __cil_tmp6 + 104;
  __cil_tmp8 = *((struct device **)__cil_tmp7);
  __mptr = (struct device const *)__cil_tmp8;
  __cil_tmp9 = (struct pci_dev *)__mptr;
  __cil_tmp10 = __cil_tmp9 + 0xffffffffffffff70UL;
  pci_unmap_sg(__cil_tmp10, sg, nents, direction);
  }
  return;
}
}
void tifm_queue_work(struct work_struct *work )
{
  {
  {
  queue_work(workqueue, work);
  }
  return;
}
}
int tifm_register_driver(struct tifm_driver *drv )
{ int tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct device_driver *__cil_tmp8 ;
  {
  {
  __cil_tmp3 = 40 + 8;
  __cil_tmp4 = (unsigned long )drv;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  *((struct bus_type **)__cil_tmp5) = & tifm_bus_type;
  __cil_tmp6 = (unsigned long )drv;
  __cil_tmp7 = __cil_tmp6 + 40;
  __cil_tmp8 = (struct device_driver *)__cil_tmp7;
  tmp = driver_register(__cil_tmp8);
  }
  return (tmp);
}
}
void tifm_unregister_driver(struct tifm_driver *drv )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct device_driver *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = (unsigned long )drv;
  __cil_tmp3 = __cil_tmp2 + 40;
  __cil_tmp4 = (struct device_driver *)__cil_tmp3;
  driver_unregister(__cil_tmp4);
  }
  return;
}
}
static int tifm_init(void)
{ int rc ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___0 ;
  int tmp___0 ;
  struct lock_class_key __key___1 ;
  int tmp___1 ;
  struct workqueue_struct *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  {
  {
  __lock_name = "tifm";
  tmp = __alloc_workqueue_key("tifm", 14U, 1, & __key, __lock_name);
  workqueue = tmp;
  }
  {
  __cil_tmp9 = (struct workqueue_struct *)0;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = (unsigned long )workqueue;
  if (__cil_tmp11 == __cil_tmp10) {
    return (-12);
  } else {
  }
  }
  {
  tmp___0 = __bus_register(& tifm_bus_type, & __key___0);
  rc = tmp___0;
  }
  if (rc != 0) {
    goto err_out_wq;
  } else {
  }
  {
  tmp___1 = __class_register(& tifm_adapter_class, & __key___1);
  rc = tmp___1;
  }
  if (rc == 0) {
    return (0);
  } else {
  }
  {
  bus_unregister(& tifm_bus_type);
  }
  err_out_wq:
  {
  destroy_workqueue(workqueue);
  }
  return (rc);
}
}
static void tifm_exit(void)
{
  {
  {
  class_unregister(& tifm_adapter_class);
  bus_unregister(& tifm_bus_type);
  destroy_workqueue(workqueue);
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
{ struct device *var_group1 ;
  struct device_driver *var_group2 ;
  struct kobj_uevent_env *var_group3 ;
  int res_tifm_device_probe_4 ;
  pm_message_t var_tifm_device_suspend_7_p1 ;
  int ldv_s_tifm_bus_type_bus_type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int var_tifm_device_suspend_7_p1_event10 ;
  {
  {
  ldv_s_tifm_bus_type_bus_type = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = tifm_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_21967;
  ldv_21966:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else
  if (tmp___0 == 2) {
    goto case_2;
  } else
  if (tmp___0 == 3) {
    goto case_3;
  } else
  if (tmp___0 == 4) {
    goto case_4;
  } else
  if (tmp___0 == 5) {
    goto case_5;
  } else
  if (tmp___0 == 6) {
    goto case_6;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_tifm_bus_type_bus_type == 0) {
        {
        res_tifm_device_probe_4 = tifm_device_probe(var_group1);
        ldv_check_return_value(res_tifm_device_probe_4);
        }
        if (res_tifm_device_probe_4 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_tifm_bus_type_bus_type = 0;
      } else {
      }
      goto ldv_21958;
      case_1:
      {
      tifm_bus_match(var_group1, var_group2);
      }
      goto ldv_21958;
      case_2:
      {
      tifm_uevent(var_group1, var_group3);
      }
      goto ldv_21958;
      case_3:
      {
      tifm_device_remove(var_group1);
      }
      goto ldv_21958;
      case_4:
      {
      tifm_device_suspend(var_group1, var_tifm_device_suspend_7_p1_event10);
      }
      goto ldv_21958;
      case_5:
      {
      tifm_device_resume(var_group1);
      }
      goto ldv_21958;
      case_6:
      {
      tifm_free(var_group1);
      }
      goto ldv_21958;
      switch_default: ;
      goto ldv_21958;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_21958: ;
  ldv_21967:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_21966;
  } else
  if (ldv_s_tifm_bus_type_bus_type != 0) {
    goto ldv_21966;
  } else {
    goto ldv_21968;
  }
  ldv_21968: ;
  ldv_module_exit:
  {
  tifm_exit();
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
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  }
  return;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  }
  return (tmp);
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bus_register(struct bus_type *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __class_register(struct class *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int add_uevent_var(struct kobj_uevent_env *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void bus_unregister(struct bus_type *arg0) {
  return;
}
void class_unregister(struct class *arg0) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_del(struct device *arg0) {
  return;
}
void device_initialize(struct device *arg0) {
  return;
}
void device_unregister(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
struct device *get_device(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int idr_get_new(struct idr *arg0, void *arg1, int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int idr_pre_get(struct idr *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void idr_remove(struct idr *arg0, int arg1) {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_int();
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
