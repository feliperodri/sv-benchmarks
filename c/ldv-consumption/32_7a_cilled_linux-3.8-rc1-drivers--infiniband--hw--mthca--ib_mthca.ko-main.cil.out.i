extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct completion;
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
struct mm_struct;
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
struct cpumask;
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
struct kmem_cache;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_14021_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14021_134 ldv_14021 ;
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
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
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
   __u8 id[16U] ;
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
union __anonunion_ldv_15732_136 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
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
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_15732_136 ldv_15732 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
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
   struct resource busn_res ;
   struct pci_ops *ops ;
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
struct dma_pool;
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct inode;
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
union __anonunion_ldv_16763_138 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16773_142 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16775_141 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16773_142 ldv_16773 ;
   int units ;
};
struct __anonstruct_ldv_16777_140 {
   union __anonunion_ldv_16775_141 ldv_16775 ;
   atomic_t _count ;
};
union __anonunion_ldv_16778_139 {
   unsigned long counters ;
   struct __anonstruct_ldv_16777_140 ldv_16777 ;
};
struct __anonstruct_ldv_16779_137 {
   union __anonunion_ldv_16763_138 ldv_16763 ;
   union __anonunion_ldv_16778_139 ldv_16778 ;
};
struct __anonstruct_ldv_16786_144 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16790_143 {
   struct list_head lru ;
   struct __anonstruct_ldv_16786_144 ldv_16786 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16795_145 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16779_137 ldv_16779 ;
   union __anonunion_ldv_16790_143 ldv_16790 ;
   union __anonunion_ldv_16795_145 ldv_16795 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct __anonstruct_linear_147 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_146 {
   struct __anonstruct_linear_147 linear ;
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
   union __anonunion_shared_146 shared ;
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
   unsigned long highest_vm_end ;
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
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
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
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct mem_cgroup;
struct __anonstruct_ldv_19554_149 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19555_148 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19554_149 ldv_19554 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19555_148 ldv_19555 ;
};
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
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct __anonstruct_global_151 {
   __be64 subnet_prefix ;
   __be64 interface_id ;
};
union ib_gid {
   u8 raw[16U] ;
   struct __anonstruct_global_151 global ;
};
enum rdma_link_layer {
    IB_LINK_LAYER_UNSPECIFIED = 0,
    IB_LINK_LAYER_INFINIBAND = 1,
    IB_LINK_LAYER_ETHERNET = 2
} ;
enum ib_atomic_cap {
    IB_ATOMIC_NONE = 0,
    IB_ATOMIC_HCA = 1,
    IB_ATOMIC_GLOB = 2
} ;
struct ib_device_attr {
   u64 fw_ver ;
   __be64 sys_image_guid ;
   u64 max_mr_size ;
   u64 page_size_cap ;
   u32 vendor_id ;
   u32 vendor_part_id ;
   u32 hw_ver ;
   int max_qp ;
   int max_qp_wr ;
   int device_cap_flags ;
   int max_sge ;
   int max_sge_rd ;
   int max_cq ;
   int max_cqe ;
   int max_mr ;
   int max_pd ;
   int max_qp_rd_atom ;
   int max_ee_rd_atom ;
   int max_res_rd_atom ;
   int max_qp_init_rd_atom ;
   int max_ee_init_rd_atom ;
   enum ib_atomic_cap atomic_cap ;
   enum ib_atomic_cap masked_atomic_cap ;
   int max_ee ;
   int max_rdd ;
   int max_mw ;
   int max_raw_ipv6_qp ;
   int max_raw_ethy_qp ;
   int max_mcast_grp ;
   int max_mcast_qp_attach ;
   int max_total_mcast_qp_attach ;
   int max_ah ;
   int max_fmr ;
   int max_map_per_fmr ;
   int max_srq ;
   int max_srq_wr ;
   int max_srq_sge ;
   unsigned int max_fast_reg_page_list_len ;
   u16 max_pkeys ;
   u8 local_ca_ack_delay ;
};
enum ib_mtu {
    IB_MTU_256 = 1,
    IB_MTU_512 = 2,
    IB_MTU_1024 = 3,
    IB_MTU_2048 = 4,
    IB_MTU_4096 = 5
} ;
enum ib_port_state {
    IB_PORT_NOP = 0,
    IB_PORT_DOWN = 1,
    IB_PORT_INIT = 2,
    IB_PORT_ARMED = 3,
    IB_PORT_ACTIVE = 4,
    IB_PORT_ACTIVE_DEFER = 5
} ;
struct ib_protocol_stats {
};
struct iw_protocol_stats {
   u64 ipInReceives ;
   u64 ipInHdrErrors ;
   u64 ipInTooBigErrors ;
   u64 ipInNoRoutes ;
   u64 ipInAddrErrors ;
   u64 ipInUnknownProtos ;
   u64 ipInTruncatedPkts ;
   u64 ipInDiscards ;
   u64 ipInDelivers ;
   u64 ipOutForwDatagrams ;
   u64 ipOutRequests ;
   u64 ipOutDiscards ;
   u64 ipOutNoRoutes ;
   u64 ipReasmTimeout ;
   u64 ipReasmReqds ;
   u64 ipReasmOKs ;
   u64 ipReasmFails ;
   u64 ipFragOKs ;
   u64 ipFragFails ;
   u64 ipFragCreates ;
   u64 ipInMcastPkts ;
   u64 ipOutMcastPkts ;
   u64 ipInBcastPkts ;
   u64 ipOutBcastPkts ;
   u64 tcpRtoAlgorithm ;
   u64 tcpRtoMin ;
   u64 tcpRtoMax ;
   u64 tcpMaxConn ;
   u64 tcpActiveOpens ;
   u64 tcpPassiveOpens ;
   u64 tcpAttemptFails ;
   u64 tcpEstabResets ;
   u64 tcpCurrEstab ;
   u64 tcpInSegs ;
   u64 tcpOutSegs ;
   u64 tcpRetransSegs ;
   u64 tcpInErrs ;
   u64 tcpOutRsts ;
};
union rdma_protocol_stats {
   struct ib_protocol_stats ib ;
   struct iw_protocol_stats iw ;
};
struct ib_port_attr {
   enum ib_port_state state ;
   enum ib_mtu max_mtu ;
   enum ib_mtu active_mtu ;
   int gid_tbl_len ;
   u32 port_cap_flags ;
   u32 max_msg_sz ;
   u32 bad_pkey_cntr ;
   u32 qkey_viol_cntr ;
   u16 pkey_tbl_len ;
   u16 lid ;
   u16 sm_lid ;
   u8 lmc ;
   u8 max_vl_num ;
   u8 sm_sl ;
   u8 subnet_timeout ;
   u8 init_type_reply ;
   u8 active_width ;
   u8 active_speed ;
   u8 phys_state ;
};
struct ib_device_modify {
   u64 sys_image_guid ;
   char node_desc[64U] ;
};
struct ib_port_modify {
   u32 set_port_cap_mask ;
   u32 clr_port_cap_mask ;
   u8 init_type ;
};
enum ib_event_type {
    IB_EVENT_CQ_ERR = 0,
    IB_EVENT_QP_FATAL = 1,
    IB_EVENT_QP_REQ_ERR = 2,
    IB_EVENT_QP_ACCESS_ERR = 3,
    IB_EVENT_COMM_EST = 4,
    IB_EVENT_SQ_DRAINED = 5,
    IB_EVENT_PATH_MIG = 6,
    IB_EVENT_PATH_MIG_ERR = 7,
    IB_EVENT_DEVICE_FATAL = 8,
    IB_EVENT_PORT_ACTIVE = 9,
    IB_EVENT_PORT_ERR = 10,
    IB_EVENT_LID_CHANGE = 11,
    IB_EVENT_PKEY_CHANGE = 12,
    IB_EVENT_SM_CHANGE = 13,
    IB_EVENT_SRQ_ERR = 14,
    IB_EVENT_SRQ_LIMIT_REACHED = 15,
    IB_EVENT_QP_LAST_WQE_REACHED = 16,
    IB_EVENT_CLIENT_REREGISTER = 17,
    IB_EVENT_GID_CHANGE = 18
} ;
struct ib_device;
struct ib_cq;
struct ib_qp;
struct ib_srq;
union __anonunion_element_152 {
   struct ib_cq *cq ;
   struct ib_qp *qp ;
   struct ib_srq *srq ;
   u8 port_num ;
};
struct ib_event {
   struct ib_device *device ;
   union __anonunion_element_152 element ;
   enum ib_event_type event ;
};
struct ib_event_handler {
   struct ib_device *device ;
   void (*handler)(struct ib_event_handler * , struct ib_event * ) ;
   struct list_head list ;
};
struct ib_global_route {
   union ib_gid dgid ;
   u32 flow_label ;
   u8 sgid_index ;
   u8 hop_limit ;
   u8 traffic_class ;
};
struct ib_grh {
   __be32 version_tclass_flow ;
   __be16 paylen ;
   u8 next_hdr ;
   u8 hop_limit ;
   union ib_gid sgid ;
   union ib_gid dgid ;
};
struct ib_ah_attr {
   struct ib_global_route grh ;
   u16 dlid ;
   u8 sl ;
   u8 src_path_bits ;
   u8 static_rate ;
   u8 ah_flags ;
   u8 port_num ;
};
enum ib_wc_status {
    IB_WC_SUCCESS = 0,
    IB_WC_LOC_LEN_ERR = 1,
    IB_WC_LOC_QP_OP_ERR = 2,
    IB_WC_LOC_EEC_OP_ERR = 3,
    IB_WC_LOC_PROT_ERR = 4,
    IB_WC_WR_FLUSH_ERR = 5,
    IB_WC_MW_BIND_ERR = 6,
    IB_WC_BAD_RESP_ERR = 7,
    IB_WC_LOC_ACCESS_ERR = 8,
    IB_WC_REM_INV_REQ_ERR = 9,
    IB_WC_REM_ACCESS_ERR = 10,
    IB_WC_REM_OP_ERR = 11,
    IB_WC_RETRY_EXC_ERR = 12,
    IB_WC_RNR_RETRY_EXC_ERR = 13,
    IB_WC_LOC_RDD_VIOL_ERR = 14,
    IB_WC_REM_INV_RD_REQ_ERR = 15,
    IB_WC_REM_ABORT_ERR = 16,
    IB_WC_INV_EECN_ERR = 17,
    IB_WC_INV_EEC_STATE_ERR = 18,
    IB_WC_FATAL_ERR = 19,
    IB_WC_RESP_TIMEOUT_ERR = 20,
    IB_WC_GENERAL_ERR = 21
} ;
enum ib_wc_opcode {
    IB_WC_SEND = 0,
    IB_WC_RDMA_WRITE = 1,
    IB_WC_RDMA_READ = 2,
    IB_WC_COMP_SWAP = 3,
    IB_WC_FETCH_ADD = 4,
    IB_WC_BIND_MW = 5,
    IB_WC_LSO = 6,
    IB_WC_LOCAL_INV = 7,
    IB_WC_FAST_REG_MR = 8,
    IB_WC_MASKED_COMP_SWAP = 9,
    IB_WC_MASKED_FETCH_ADD = 10,
    IB_WC_RECV = 128,
    IB_WC_RECV_RDMA_WITH_IMM = 129
} ;
union __anonunion_ex_153 {
   __be32 imm_data ;
   u32 invalidate_rkey ;
};
struct ib_wc {
   u64 wr_id ;
   enum ib_wc_status status ;
   enum ib_wc_opcode opcode ;
   u32 vendor_err ;
   u32 byte_len ;
   struct ib_qp *qp ;
   union __anonunion_ex_153 ex ;
   u32 src_qp ;
   int wc_flags ;
   u16 pkey_index ;
   u16 slid ;
   u8 sl ;
   u8 dlid_path_bits ;
   u8 port_num ;
};
enum ib_cq_notify_flags {
    IB_CQ_SOLICITED = 1,
    IB_CQ_NEXT_COMP = 2,
    IB_CQ_SOLICITED_MASK = 3,
    IB_CQ_REPORT_MISSED_EVENTS = 4
} ;
enum ib_srq_type {
    IB_SRQT_BASIC = 0,
    IB_SRQT_XRC = 1
} ;
enum ib_srq_attr_mask {
    IB_SRQ_MAX_WR = 1,
    IB_SRQ_LIMIT = 2
} ;
struct ib_srq_attr {
   u32 max_wr ;
   u32 max_sge ;
   u32 srq_limit ;
};
struct ib_xrcd;
struct __anonstruct_xrc_155 {
   struct ib_xrcd *xrcd ;
   struct ib_cq *cq ;
};
union __anonunion_ext_154 {
   struct __anonstruct_xrc_155 xrc ;
};
struct ib_srq_init_attr {
   void (*event_handler)(struct ib_event * , void * ) ;
   void *srq_context ;
   struct ib_srq_attr attr ;
   enum ib_srq_type srq_type ;
   union __anonunion_ext_154 ext ;
};
struct ib_qp_cap {
   u32 max_send_wr ;
   u32 max_recv_wr ;
   u32 max_send_sge ;
   u32 max_recv_sge ;
   u32 max_inline_data ;
};
enum ib_sig_type {
    IB_SIGNAL_ALL_WR = 0,
    IB_SIGNAL_REQ_WR = 1
} ;
enum ib_qp_type {
    IB_QPT_SMI = 0,
    IB_QPT_GSI = 1,
    IB_QPT_RC = 2,
    IB_QPT_UC = 3,
    IB_QPT_UD = 4,
    IB_QPT_RAW_IPV6 = 5,
    IB_QPT_RAW_ETHERTYPE = 6,
    IB_QPT_RAW_PACKET = 8,
    IB_QPT_XRC_INI = 9,
    IB_QPT_XRC_TGT = 10,
    IB_QPT_MAX = 11
} ;
enum ib_qp_create_flags {
    IB_QP_CREATE_IPOIB_UD_LSO = 1,
    IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK = 2,
    IB_QP_CREATE_RESERVED_START = 67108864,
    IB_QP_CREATE_RESERVED_END = (-0x7FFFFFFF-1)
} ;
struct ib_qp_init_attr {
   void (*event_handler)(struct ib_event * , void * ) ;
   void *qp_context ;
   struct ib_cq *send_cq ;
   struct ib_cq *recv_cq ;
   struct ib_srq *srq ;
   struct ib_xrcd *xrcd ;
   struct ib_qp_cap cap ;
   enum ib_sig_type sq_sig_type ;
   enum ib_qp_type qp_type ;
   enum ib_qp_create_flags create_flags ;
   u8 port_num ;
};
enum ib_qp_state {
    IB_QPS_RESET = 0,
    IB_QPS_INIT = 1,
    IB_QPS_RTR = 2,
    IB_QPS_RTS = 3,
    IB_QPS_SQD = 4,
    IB_QPS_SQE = 5,
    IB_QPS_ERR = 6
} ;
enum ib_mig_state {
    IB_MIG_MIGRATED = 0,
    IB_MIG_REARM = 1,
    IB_MIG_ARMED = 2
} ;
struct ib_qp_attr {
   enum ib_qp_state qp_state ;
   enum ib_qp_state cur_qp_state ;
   enum ib_mtu path_mtu ;
   enum ib_mig_state path_mig_state ;
   u32 qkey ;
   u32 rq_psn ;
   u32 sq_psn ;
   u32 dest_qp_num ;
   int qp_access_flags ;
   struct ib_qp_cap cap ;
   struct ib_ah_attr ah_attr ;
   struct ib_ah_attr alt_ah_attr ;
   u16 pkey_index ;
   u16 alt_pkey_index ;
   u8 en_sqd_async_notify ;
   u8 sq_draining ;
   u8 max_rd_atomic ;
   u8 max_dest_rd_atomic ;
   u8 min_rnr_timer ;
   u8 port_num ;
   u8 timeout ;
   u8 retry_cnt ;
   u8 rnr_retry ;
   u8 alt_port_num ;
   u8 alt_timeout ;
};
enum ib_wr_opcode {
    IB_WR_RDMA_WRITE = 0,
    IB_WR_RDMA_WRITE_WITH_IMM = 1,
    IB_WR_SEND = 2,
    IB_WR_SEND_WITH_IMM = 3,
    IB_WR_RDMA_READ = 4,
    IB_WR_ATOMIC_CMP_AND_SWP = 5,
    IB_WR_ATOMIC_FETCH_AND_ADD = 6,
    IB_WR_LSO = 7,
    IB_WR_SEND_WITH_INV = 8,
    IB_WR_RDMA_READ_WITH_INV = 9,
    IB_WR_LOCAL_INV = 10,
    IB_WR_FAST_REG_MR = 11,
    IB_WR_MASKED_ATOMIC_CMP_AND_SWP = 12,
    IB_WR_MASKED_ATOMIC_FETCH_AND_ADD = 13
} ;
struct ib_sge {
   u64 addr ;
   u32 length ;
   u32 lkey ;
};
struct ib_fast_reg_page_list {
   struct ib_device *device ;
   u64 *page_list ;
   unsigned int max_page_list_len ;
};
union __anonunion_ex_156 {
   __be32 imm_data ;
   u32 invalidate_rkey ;
};
struct __anonstruct_rdma_158 {
   u64 remote_addr ;
   u32 rkey ;
};
struct __anonstruct_atomic_159 {
   u64 remote_addr ;
   u64 compare_add ;
   u64 swap ;
   u64 compare_add_mask ;
   u64 swap_mask ;
   u32 rkey ;
};
struct ib_ah;
struct __anonstruct_ud_160 {
   struct ib_ah *ah ;
   void *header ;
   int hlen ;
   int mss ;
   u32 remote_qpn ;
   u32 remote_qkey ;
   u16 pkey_index ;
   u8 port_num ;
};
struct __anonstruct_fast_reg_161 {
   u64 iova_start ;
   struct ib_fast_reg_page_list *page_list ;
   unsigned int page_shift ;
   unsigned int page_list_len ;
   u32 length ;
   int access_flags ;
   u32 rkey ;
};
union __anonunion_wr_157 {
   struct __anonstruct_rdma_158 rdma ;
   struct __anonstruct_atomic_159 atomic ;
   struct __anonstruct_ud_160 ud ;
   struct __anonstruct_fast_reg_161 fast_reg ;
};
struct ib_send_wr {
   struct ib_send_wr *next ;
   u64 wr_id ;
   struct ib_sge *sg_list ;
   int num_sge ;
   enum ib_wr_opcode opcode ;
   int send_flags ;
   union __anonunion_ex_156 ex ;
   union __anonunion_wr_157 wr ;
   u32 xrc_remote_srq_num ;
};
struct ib_recv_wr {
   struct ib_recv_wr *next ;
   u64 wr_id ;
   struct ib_sge *sg_list ;
   int num_sge ;
};
struct ib_phys_buf {
   u64 addr ;
   u64 size ;
};
struct ib_pd;
struct ib_mr_attr {
   struct ib_pd *pd ;
   u64 device_virt_addr ;
   u64 size ;
   int mr_access_flags ;
   u32 lkey ;
   u32 rkey ;
};
struct ib_mr;
struct ib_mw_bind {
   struct ib_mr *mr ;
   u64 wr_id ;
   u64 addr ;
   u32 length ;
   int send_flags ;
   int mw_access_flags ;
};
struct ib_fmr_attr {
   int max_pages ;
   int max_maps ;
   u8 page_shift ;
};
struct ib_ucontext {
   struct ib_device *device ;
   struct list_head pd_list ;
   struct list_head mr_list ;
   struct list_head mw_list ;
   struct list_head cq_list ;
   struct list_head qp_list ;
   struct list_head srq_list ;
   struct list_head ah_list ;
   struct list_head xrcd_list ;
   int closing ;
};
struct ib_uobject {
   u64 user_handle ;
   struct ib_ucontext *context ;
   void *object ;
   struct list_head list ;
   int id ;
   struct kref ref ;
   struct rw_semaphore mutex ;
   int live ;
};
struct ib_udata {
   void *inbuf ;
   void *outbuf ;
   size_t inlen ;
   size_t outlen ;
};
struct ib_pd {
   struct ib_device *device ;
   struct ib_uobject *uobject ;
   atomic_t usecnt ;
};
struct ib_xrcd {
   struct ib_device *device ;
   atomic_t usecnt ;
   struct inode *inode ;
   struct mutex tgt_qp_mutex ;
   struct list_head tgt_qp_list ;
};
struct ib_ah {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
};
struct ib_cq {
   struct ib_device *device ;
   struct ib_uobject *uobject ;
   void (*comp_handler)(struct ib_cq * , void * ) ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *cq_context ;
   int cqe ;
   atomic_t usecnt ;
};
struct __anonstruct_xrc_163 {
   struct ib_xrcd *xrcd ;
   struct ib_cq *cq ;
   u32 srq_num ;
};
union __anonunion_ext_162 {
   struct __anonstruct_xrc_163 xrc ;
};
struct ib_srq {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *srq_context ;
   enum ib_srq_type srq_type ;
   atomic_t usecnt ;
   union __anonunion_ext_162 ext ;
};
struct ib_qp {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_cq *send_cq ;
   struct ib_cq *recv_cq ;
   struct ib_srq *srq ;
   struct ib_xrcd *xrcd ;
   struct list_head xrcd_list ;
   atomic_t usecnt ;
   struct list_head open_list ;
   struct ib_qp *real_qp ;
   struct ib_uobject *uobject ;
   void (*event_handler)(struct ib_event * , void * ) ;
   void *qp_context ;
   u32 qp_num ;
   enum ib_qp_type qp_type ;
};
struct ib_mr {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   u32 lkey ;
   u32 rkey ;
   atomic_t usecnt ;
};
struct ib_mw {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct ib_uobject *uobject ;
   u32 rkey ;
};
struct ib_fmr {
   struct ib_device *device ;
   struct ib_pd *pd ;
   struct list_head list ;
   u32 lkey ;
   u32 rkey ;
};
struct ib_mad;
struct ib_pkey_cache;
struct ib_gid_cache;
struct ib_cache {
   rwlock_t lock ;
   struct ib_event_handler event_handler ;
   struct ib_pkey_cache **pkey_cache ;
   struct ib_gid_cache **gid_cache ;
   u8 *lmc_cache ;
};
struct ib_dma_mapping_ops {
   int (*mapping_error)(struct ib_device * , u64 ) ;
   u64 (*map_single)(struct ib_device * , void * , size_t , enum dma_data_direction ) ;
   void (*unmap_single)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   u64 (*map_page)(struct ib_device * , struct page * , unsigned long , size_t ,
                   enum dma_data_direction ) ;
   void (*unmap_page)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   int (*map_sg)(struct ib_device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*unmap_sg)(struct ib_device * , struct scatterlist * , int , enum dma_data_direction ) ;
   u64 (*dma_address)(struct ib_device * , struct scatterlist * ) ;
   unsigned int (*dma_len)(struct ib_device * , struct scatterlist * ) ;
   void (*sync_single_for_cpu)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct ib_device * , u64 , size_t , enum dma_data_direction ) ;
   void *(*alloc_coherent)(struct ib_device * , size_t , u64 * , gfp_t ) ;
   void (*free_coherent)(struct ib_device * , size_t , void * , u64 ) ;
};
struct iw_cm_verbs;
enum ldv_20016 {
    IB_DEV_UNINITIALIZED = 0,
    IB_DEV_REGISTERED = 1,
    IB_DEV_UNREGISTERED = 2
} ;
struct ib_device {
   struct device *dma_device ;
   char name[64U] ;
   struct list_head event_handler_list ;
   spinlock_t event_handler_lock ;
   spinlock_t client_data_lock ;
   struct list_head core_list ;
   struct list_head client_data_list ;
   struct ib_cache cache ;
   int *pkey_tbl_len ;
   int *gid_tbl_len ;
   int num_comp_vectors ;
   struct iw_cm_verbs *iwcm ;
   int (*get_protocol_stats)(struct ib_device * , union rdma_protocol_stats * ) ;
   int (*query_device)(struct ib_device * , struct ib_device_attr * ) ;
   int (*query_port)(struct ib_device * , u8 , struct ib_port_attr * ) ;
   enum rdma_link_layer (*get_link_layer)(struct ib_device * , u8 ) ;
   int (*query_gid)(struct ib_device * , u8 , int , union ib_gid * ) ;
   int (*query_pkey)(struct ib_device * , u8 , u16 , u16 * ) ;
   int (*modify_device)(struct ib_device * , int , struct ib_device_modify * ) ;
   int (*modify_port)(struct ib_device * , u8 , int , struct ib_port_modify * ) ;
   struct ib_ucontext *(*alloc_ucontext)(struct ib_device * , struct ib_udata * ) ;
   int (*dealloc_ucontext)(struct ib_ucontext * ) ;
   int (*mmap)(struct ib_ucontext * , struct vm_area_struct * ) ;
   struct ib_pd *(*alloc_pd)(struct ib_device * , struct ib_ucontext * , struct ib_udata * ) ;
   int (*dealloc_pd)(struct ib_pd * ) ;
   struct ib_ah *(*create_ah)(struct ib_pd * , struct ib_ah_attr * ) ;
   int (*modify_ah)(struct ib_ah * , struct ib_ah_attr * ) ;
   int (*query_ah)(struct ib_ah * , struct ib_ah_attr * ) ;
   int (*destroy_ah)(struct ib_ah * ) ;
   struct ib_srq *(*create_srq)(struct ib_pd * , struct ib_srq_init_attr * , struct ib_udata * ) ;
   int (*modify_srq)(struct ib_srq * , struct ib_srq_attr * , enum ib_srq_attr_mask ,
                     struct ib_udata * ) ;
   int (*query_srq)(struct ib_srq * , struct ib_srq_attr * ) ;
   int (*destroy_srq)(struct ib_srq * ) ;
   int (*post_srq_recv)(struct ib_srq * , struct ib_recv_wr * , struct ib_recv_wr ** ) ;
   struct ib_qp *(*create_qp)(struct ib_pd * , struct ib_qp_init_attr * , struct ib_udata * ) ;
   int (*modify_qp)(struct ib_qp * , struct ib_qp_attr * , int , struct ib_udata * ) ;
   int (*query_qp)(struct ib_qp * , struct ib_qp_attr * , int , struct ib_qp_init_attr * ) ;
   int (*destroy_qp)(struct ib_qp * ) ;
   int (*post_send)(struct ib_qp * , struct ib_send_wr * , struct ib_send_wr ** ) ;
   int (*post_recv)(struct ib_qp * , struct ib_recv_wr * , struct ib_recv_wr ** ) ;
   struct ib_cq *(*create_cq)(struct ib_device * , int , int , struct ib_ucontext * ,
                              struct ib_udata * ) ;
   int (*modify_cq)(struct ib_cq * , u16 , u16 ) ;
   int (*destroy_cq)(struct ib_cq * ) ;
   int (*resize_cq)(struct ib_cq * , int , struct ib_udata * ) ;
   int (*poll_cq)(struct ib_cq * , int , struct ib_wc * ) ;
   int (*peek_cq)(struct ib_cq * , int ) ;
   int (*req_notify_cq)(struct ib_cq * , enum ib_cq_notify_flags ) ;
   int (*req_ncomp_notif)(struct ib_cq * , int ) ;
   struct ib_mr *(*get_dma_mr)(struct ib_pd * , int ) ;
   struct ib_mr *(*reg_phys_mr)(struct ib_pd * , struct ib_phys_buf * , int , int ,
                                u64 * ) ;
   struct ib_mr *(*reg_user_mr)(struct ib_pd * , u64 , u64 , u64 , int , struct ib_udata * ) ;
   int (*query_mr)(struct ib_mr * , struct ib_mr_attr * ) ;
   int (*dereg_mr)(struct ib_mr * ) ;
   struct ib_mr *(*alloc_fast_reg_mr)(struct ib_pd * , int ) ;
   struct ib_fast_reg_page_list *(*alloc_fast_reg_page_list)(struct ib_device * ,
                                                             int ) ;
   void (*free_fast_reg_page_list)(struct ib_fast_reg_page_list * ) ;
   int (*rereg_phys_mr)(struct ib_mr * , int , struct ib_pd * , struct ib_phys_buf * ,
                        int , int , u64 * ) ;
   struct ib_mw *(*alloc_mw)(struct ib_pd * ) ;
   int (*bind_mw)(struct ib_qp * , struct ib_mw * , struct ib_mw_bind * ) ;
   int (*dealloc_mw)(struct ib_mw * ) ;
   struct ib_fmr *(*alloc_fmr)(struct ib_pd * , int , struct ib_fmr_attr * ) ;
   int (*map_phys_fmr)(struct ib_fmr * , u64 * , int , u64 ) ;
   int (*unmap_fmr)(struct list_head * ) ;
   int (*dealloc_fmr)(struct ib_fmr * ) ;
   int (*attach_mcast)(struct ib_qp * , union ib_gid * , u16 ) ;
   int (*detach_mcast)(struct ib_qp * , union ib_gid * , u16 ) ;
   int (*process_mad)(struct ib_device * , int , u8 , struct ib_wc * , struct ib_grh * ,
                      struct ib_mad * , struct ib_mad * ) ;
   struct ib_xrcd *(*alloc_xrcd)(struct ib_device * , struct ib_ucontext * , struct ib_udata * ) ;
   int (*dealloc_xrcd)(struct ib_xrcd * ) ;
   struct ib_dma_mapping_ops *dma_ops ;
   struct module *owner ;
   struct device dev ;
   struct kobject *ports_parent ;
   struct list_head port_list ;
   enum ldv_20016 reg_state ;
   int uverbs_abi_ver ;
   u64 uverbs_cmd_mask ;
   char node_desc[64U] ;
   __be64 node_guid ;
   u32 local_dma_lkey ;
   u8 node_type ;
   u8 phys_port_cnt ;
};
struct mthca_buf_list {
   void *buf ;
   dma_addr_t mapping ;
};
struct mthca_uar {
   unsigned long pfn ;
   int index ;
};
struct mthca_mtt;
struct ib_umem;
struct mthca_mr {
   struct ib_mr ibmr ;
   struct ib_umem *umem ;
   struct mthca_mtt *mtt ;
};
struct mthca_pd {
   struct ib_pd ibpd ;
   u32 pd_num ;
   atomic_t sqp_count ;
   struct mthca_mr ntmr ;
   int privileged ;
};
struct mthca_dev;
struct mthca_eq {
   struct mthca_dev *dev ;
   int eqn ;
   u32 eqn_mask ;
   u32 cons_index ;
   u16 msi_x_vector ;
   u16 msi_x_entry ;
   int have_irq ;
   int nent ;
   struct mthca_buf_list *page_list ;
   struct mthca_mr mr ;
   char irq_name[64U] ;
};
struct mthca_cmd_context;
struct mthca_cmd {
   struct dma_pool *pool ;
   struct mutex hcr_mutex ;
   struct semaphore poll_sem ;
   struct semaphore event_sem ;
   int max_cmds ;
   spinlock_t context_lock ;
   int free_head ;
   struct mthca_cmd_context *context ;
   u16 token_mask ;
   u32 flags ;
   void *dbell_map ;
   u16 dbell_offsets[8U] ;
};
struct mthca_limits {
   int num_ports ;
   int vl_cap ;
   int mtu_cap ;
   int gid_table_len ;
   int pkey_table_len ;
   int local_ca_ack_delay ;
   int num_uars ;
   int max_sg ;
   int num_qps ;
   int max_wqes ;
   int max_desc_sz ;
   int max_qp_init_rdma ;
   int reserved_qps ;
   int num_srqs ;
   int max_srq_wqes ;
   int max_srq_sge ;
   int reserved_srqs ;
   int num_eecs ;
   int reserved_eecs ;
   int num_cqs ;
   int max_cqes ;
   int reserved_cqs ;
   int num_eqs ;
   int reserved_eqs ;
   int num_mpts ;
   int num_mtt_segs ;
   int mtt_seg_size ;
   int fmr_reserved_mtts ;
   int reserved_mtts ;
   int reserved_mrws ;
   int reserved_uars ;
   int num_mgms ;
   int num_amgms ;
   int reserved_mcgs ;
   int num_pds ;
   int reserved_pds ;
   u32 page_size_cap ;
   u32 flags ;
   u16 stat_rate_support ;
   u8 port_width_cap ;
};
struct mthca_alloc {
   u32 last ;
   u32 top ;
   u32 max ;
   u32 mask ;
   spinlock_t lock ;
   unsigned long *table ;
};
struct __anonstruct_page_list_167 {
   void **page ;
   int used ;
};
struct mthca_array {
   struct __anonstruct_page_list_167 *page_list ;
};
struct mthca_uar_table {
   struct mthca_alloc alloc ;
   u64 uarc_base ;
   int uarc_size ;
};
struct mthca_pd_table {
   struct mthca_alloc alloc ;
};
struct mthca_buddy {
   unsigned long **bits ;
   int *num_free ;
   int max_order ;
   spinlock_t lock ;
};
struct mthca_icm_table;
struct __anonstruct_tavor_fmr_168 {
   void *mpt_base ;
   void *mtt_base ;
   struct mthca_buddy mtt_buddy ;
};
struct mthca_mr_table {
   struct mthca_alloc mpt_alloc ;
   struct mthca_buddy mtt_buddy ;
   struct mthca_buddy *fmr_mtt_buddy ;
   u64 mtt_base ;
   u64 mpt_base ;
   struct mthca_icm_table *mtt_table ;
   struct mthca_icm_table *mpt_table ;
   struct __anonstruct_tavor_fmr_168 tavor_fmr ;
};
struct mthca_eq_table {
   struct mthca_alloc alloc ;
   void *clr_int ;
   u32 clr_mask ;
   u32 arm_mask ;
   struct mthca_eq eq[3U] ;
   u64 icm_virt ;
   struct page *icm_page ;
   dma_addr_t icm_dma ;
   int have_irq ;
   u8 inta_pin ;
};
struct mthca_cq_table {
   struct mthca_alloc alloc ;
   spinlock_t lock ;
   struct mthca_array cq ;
   struct mthca_icm_table *table ;
};
struct mthca_srq_table {
   struct mthca_alloc alloc ;
   spinlock_t lock ;
   struct mthca_array srq ;
   struct mthca_icm_table *table ;
};
struct mthca_qp_table {
   struct mthca_alloc alloc ;
   u32 rdb_base ;
   int rdb_shift ;
   int sqp_start ;
   spinlock_t lock ;
   struct mthca_array qp ;
   struct mthca_icm_table *qp_table ;
   struct mthca_icm_table *eqp_table ;
   struct mthca_icm_table *rdb_table ;
};
struct mthca_av_table {
   struct dma_pool *pool ;
   int num_ddr_avs ;
   u64 ddr_av_base ;
   void *av_map ;
   struct mthca_alloc alloc ;
};
struct mthca_mcg_table {
   struct mutex mutex ;
   struct mthca_alloc alloc ;
   struct mthca_icm_table *table ;
};
struct mthca_catas_err {
   u64 addr ;
   u32 *map ;
   u32 size ;
   struct timer_list timer ;
   struct list_head list ;
};
struct __anonstruct_tavor_170 {
   u64 fw_start ;
   u64 fw_end ;
};
struct mthca_icm;
struct __anonstruct_arbel_171 {
   u64 clr_int_base ;
   u64 eq_arm_base ;
   u64 eq_set_ci_base ;
   struct mthca_icm *fw_icm ;
   struct mthca_icm *aux_icm ;
   u16 fw_pages ;
};
union __anonunion_fw_169 {
   struct __anonstruct_tavor_170 tavor ;
   struct __anonstruct_arbel_171 arbel ;
};
struct __anonstruct_tavor_173 {
   void *ecr_base ;
};
struct __anonstruct_arbel_174 {
   void *eq_arm ;
   void *eq_set_ci_base ;
};
union __anonunion_eq_regs_172 {
   struct __anonstruct_tavor_173 tavor ;
   struct __anonstruct_arbel_174 arbel ;
};
struct mthca_db_table;
struct ib_mad_agent;
struct mthca_dev {
   struct ib_device ib_dev ;
   struct pci_dev *pdev ;
   int hca_type ;
   unsigned long mthca_flags ;
   unsigned long device_cap_flags ;
   u32 rev_id ;
   char board_id[64U] ;
   u64 fw_ver ;
   union __anonunion_fw_169 fw ;
   u64 ddr_start ;
   u64 ddr_end ;
   struct mutex cap_mask_mutex ;
   void *hcr ;
   void *kar ;
   void *clr_base ;
   union __anonunion_eq_regs_172 eq_regs ;
   struct mthca_cmd cmd ;
   struct mthca_limits limits ;
   struct mthca_uar_table uar_table ;
   struct mthca_pd_table pd_table ;
   struct mthca_mr_table mr_table ;
   struct mthca_eq_table eq_table ;
   struct mthca_cq_table cq_table ;
   struct mthca_srq_table srq_table ;
   struct mthca_qp_table qp_table ;
   struct mthca_av_table av_table ;
   struct mthca_mcg_table mcg_table ;
   struct mthca_catas_err catas_err ;
   struct mthca_uar driver_uar ;
   struct mthca_db_table *db_tab ;
   struct mthca_pd driver_pd ;
   struct mthca_mr driver_mr ;
   struct ib_mad_agent *send_agent[2U][2U] ;
   struct ib_ah *sm_ah[2U] ;
   spinlock_t sm_lock ;
   u8 rate[2U] ;
   bool active ;
};
struct __anonstruct_tavor_176 {
   int max_avs ;
};
struct __anonstruct_arbel_177 {
   int resize_srq ;
   int max_pbl_sz ;
   u8 bmme_flags ;
   u32 reserved_lkey ;
   int lam_required ;
   u64 max_icm_sz ;
};
union __anonunion_hca_175 {
   struct __anonstruct_tavor_176 tavor ;
   struct __anonstruct_arbel_177 arbel ;
};
struct mthca_dev_lim {
   int max_srq_sz ;
   int max_qp_sz ;
   int reserved_qps ;
   int max_qps ;
   int reserved_srqs ;
   int max_srqs ;
   int reserved_eecs ;
   int max_eecs ;
   int max_cq_sz ;
   int reserved_cqs ;
   int max_cqs ;
   int max_mpts ;
   int reserved_eqs ;
   int max_eqs ;
   int reserved_mtts ;
   int max_mrw_sz ;
   int reserved_mrws ;
   int max_mtt_seg ;
   int max_requester_per_qp ;
   int max_responder_per_qp ;
   int max_rdma_global ;
   int local_ca_ack_delay ;
   int max_mtu ;
   int max_port_width ;
   int max_vl ;
   int num_ports ;
   int max_gids ;
   u16 stat_rate_support ;
   int max_pkeys ;
   u32 flags ;
   int reserved_uars ;
   int uar_size ;
   int min_page_sz ;
   int max_sg ;
   int max_desc_sz ;
   int max_qp_per_mcg ;
   int reserved_mgms ;
   int max_mcgs ;
   int reserved_pds ;
   int max_pds ;
   int reserved_rdds ;
   int max_rdds ;
   int eec_entry_sz ;
   int qpc_entry_sz ;
   int eeec_entry_sz ;
   int eqpc_entry_sz ;
   int eqc_entry_sz ;
   int cqc_entry_sz ;
   int srq_entry_sz ;
   int uar_scratch_entry_sz ;
   int mpt_entry_sz ;
   union __anonunion_hca_175 hca ;
};
struct mthca_adapter {
   u32 vendor_id ;
   u32 device_id ;
   u32 revision_id ;
   char board_id[64U] ;
   u8 inta_pin ;
};
struct mthca_init_hca_param {
   u64 qpc_base ;
   u64 eec_base ;
   u64 srqc_base ;
   u64 cqc_base ;
   u64 eqpc_base ;
   u64 eeec_base ;
   u64 eqc_base ;
   u64 rdb_base ;
   u64 mc_base ;
   u64 mpt_base ;
   u64 mtt_base ;
   u64 uar_scratch_base ;
   u64 uarc_base ;
   u16 log_mc_entry_sz ;
   u16 mc_hash_sz ;
   u8 log_num_qps ;
   u8 log_num_eecs ;
   u8 log_num_srqs ;
   u8 log_num_cqs ;
   u8 log_num_eqs ;
   u8 log_mc_table_sz ;
   u8 mtt_seg_sz ;
   u8 log_mpt_sz ;
   u8 log_uar_sz ;
   u8 log_uarc_sz ;
};
struct mthca_profile {
   int num_qp ;
   int rdb_per_qp ;
   int num_srq ;
   int num_cq ;
   int num_mcg ;
   int num_mpt ;
   int num_mtt ;
   int num_udav ;
   int num_uar ;
   int uarc_size ;
   int fmr_reserved_mtts ;
};
struct mthca_icm {
   struct list_head chunk_list ;
   int refcount ;
};
struct mthca_icm_table {
   u64 virt ;
   int num_icm ;
   int num_obj ;
   int obj_size ;
   int lowmem ;
   int coherent ;
   struct mutex mutex ;
   struct mthca_icm *icm[0U] ;
};
struct mthca_db_page {
   unsigned long used[8U] ;
   __be64 *db_rec ;
   dma_addr_t mapping ;
};
struct mthca_db_table {
   int npages ;
   int max_group1 ;
   int min_group2 ;
   struct mthca_db_page *page ;
   struct mutex mutex ;
};
struct __anonstruct_mthca_hca_table_179 {
   u64 latest_fw ;
   u32 flags ;
};
typedef int ldv_func_ret_type___2;
typedef int __s32;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int oom_flags_t;
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs;
struct pid;
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
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
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
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
struct thread_struct;
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
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
typedef struct cpumask cpumask_t;
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
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
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
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct hrtimer;
enum hrtimer_restart;
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
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct user_struct;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct user_namespace;
typedef unsigned long cputime_t;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_144 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_144 sigset_t;
struct siginfo;
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
struct __anonstruct__kill_146 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_147 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_148 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_149 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_150 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_151 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_152 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_145 {
   int _pad[28U] ;
   struct __anonstruct__kill_146 _kill ;
   struct __anonstruct__timer_147 _timer ;
   struct __anonstruct__rt_148 _rt ;
   struct __anonstruct__sigchld_149 _sigchld ;
   struct __anonstruct__sigfault_150 _sigfault ;
   struct __anonstruct__sigpoll_151 _sigpoll ;
   struct __anonstruct__sigsys_152 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_145 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
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
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_21370_157 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_21379_158 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_159 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_160 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_21370_157 ldv_21370 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_21379_158 ldv_21379 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_159 type_data ;
   union __anonunion_payload_160 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
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
   void (*migrate_task_rq)(struct task_struct * , int ) ;
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
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct files_struct;
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
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
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
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
struct ib_mad_hdr {
   u8 base_version ;
   u8 mgmt_class ;
   u8 class_version ;
   u8 method ;
   __be16 status ;
   __be16 class_specific ;
   __be64 tid ;
   __be16 attr_id ;
   __be16 resv ;
   __be32 attr_mod ;
};
struct ib_mad {
   struct ib_mad_hdr mad_hdr ;
   u8 data[232U] ;
};
struct ib_mad_send_buf {
   struct ib_mad_send_buf *next ;
   void *mad ;
   struct ib_mad_agent *mad_agent ;
   struct ib_ah *ah ;
   void *context[2U] ;
   int hdr_len ;
   int data_len ;
   int seg_count ;
   int seg_size ;
   int timeout_ms ;
   int retries ;
};
struct ib_mad_send_wc;
struct ib_mad_recv_wc;
struct ib_mad_agent {
   struct ib_device *device ;
   struct ib_qp *qp ;
   struct ib_mr *mr ;
   void (*recv_handler)(struct ib_mad_agent * , struct ib_mad_recv_wc * ) ;
   void (*send_handler)(struct ib_mad_agent * , struct ib_mad_send_wc * ) ;
   void (*snoop_handler)(struct ib_mad_agent * , struct ib_mad_send_buf * , struct ib_mad_send_wc * ) ;
   void *context ;
   u32 hi_tid ;
   u8 port_num ;
   u8 rmpp_version ;
};
struct ib_mad_send_wc {
   struct ib_mad_send_buf *send_buf ;
   enum ib_wc_status status ;
   u32 vendor_err ;
};
struct ib_mad_recv_buf {
   struct list_head list ;
   struct ib_grh *grh ;
   struct ib_mad *mad ;
};
struct ib_mad_recv_wc {
   struct ib_wc *wc ;
   struct ib_mad_recv_buf recv_buf ;
   struct list_head rmpp_list ;
   int mad_len ;
};
struct mthca_mailbox {
   dma_addr_t dma ;
   void *buf ;
};
struct mthca_init_ib_param {
   int port_width ;
   int vl_cap ;
   int mtu_cap ;
   u16 gid_cap ;
   u16 pkey_cap ;
   int set_guid0 ;
   u64 guid0 ;
   int set_node_guid ;
   u64 node_guid ;
   int set_si_guid ;
   u64 si_guid ;
};
struct mthca_set_ib_param {
   int set_si_guid ;
   int reset_qkey_viol ;
   u64 si_guid ;
   u32 cap_mask ;
};
struct mthca_icm_chunk {
   struct list_head list ;
   int npages ;
   int nsg ;
   struct scatterlist mem[5U] ;
};
struct mthca_icm_iter {
   struct mthca_icm *icm ;
   struct mthca_icm_chunk *chunk ;
   int page_idx ;
};
struct mthca_cmd_context {
   struct completion done ;
   int result ;
   int next ;
   u64 out_param ;
   u16 token ;
   u8 status ;
};
struct mthca_resource {
   u64 size ;
   u64 start ;
   int type ;
   int num ;
   int log_num ;
};
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
union mthca_buf {
   struct mthca_buf_list direct ;
   struct mthca_buf_list *page_list ;
};
struct __anonstruct_168 {
   void **page ;
   int used ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct mthca_eq_context {
   __be32 flags ;
   __be64 start ;
   __be32 logsize_usrpage ;
   __be32 tavor_pd ;
   u8 reserved1[3U] ;
   u8 intr ;
   __be32 arbel_pd ;
   __be32 lkey ;
   u32 reserved2[2U] ;
   __be32 consumer_index ;
   __be32 producer_index ;
   u32 reserved3[4U] ;
};
struct __anonstruct_comp_172 {
   __be32 cqn ;
};
struct __anonstruct_cmd_173 {
   u16 reserved1 ;
   __be16 token ;
   u32 reserved2 ;
   u8 reserved3[3U] ;
   u8 status ;
   __be64 out_param ;
};
struct __anonstruct_qp_174 {
   __be32 qpn ;
};
struct __anonstruct_srq_175 {
   __be32 srqn ;
};
struct __anonstruct_cq_err_176 {
   __be32 cqn ;
   u32 reserved1 ;
   u8 reserved2[3U] ;
   u8 syndrome ;
};
struct __anonstruct_port_change_177 {
   u32 reserved1[2U] ;
   __be32 port ;
};
union __anonunion_event_171 {
   u32 raw[6U] ;
   struct __anonstruct_comp_172 comp ;
   struct __anonstruct_cmd_173 cmd ;
   struct __anonstruct_qp_174 qp ;
   struct __anonstruct_srq_175 srq ;
   struct __anonstruct_cq_err_176 cq_err ;
   struct __anonstruct_port_change_177 port_change ;
};
struct mthca_eqe {
   u8 reserved1 ;
   u8 type ;
   u8 reserved2 ;
   u8 subtype ;
   union __anonunion_event_171 event ;
   u8 reserved3[3U] ;
   u8 owner ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct mthca_user_db_table;
struct mthca_ucontext {
   struct ib_ucontext ibucontext ;
   struct mthca_uar uar ;
   struct mthca_user_db_table *db_tab ;
   int reg_mr_warned ;
};
struct mthca_cq_buf {
   union mthca_buf queue ;
   struct mthca_mr mr ;
   int is_direct ;
};
enum ldv_20949 {
    CQ_RESIZE_ALLOC = 0,
    CQ_RESIZE_READY = 1,
    CQ_RESIZE_SWAPPED = 2
} ;
struct mthca_cq_resize {
   struct mthca_cq_buf buf ;
   int cqe ;
   enum ldv_20949 state ;
};
struct mthca_cq {
   struct ib_cq ibcq ;
   spinlock_t lock ;
   int refcount ;
   int cqn ;
   u32 cons_index ;
   struct mthca_cq_buf buf ;
   struct mthca_cq_resize *resize_buf ;
   int is_kernel ;
   int set_ci_db_index ;
   __be32 *set_ci_db ;
   int arm_db_index ;
   __be32 *arm_db ;
   int arm_sn ;
   wait_queue_head_t wait ;
   struct mutex mutex ;
};
struct mthca_srq {
   struct ib_srq ibsrq ;
   spinlock_t lock ;
   int refcount ;
   int srqn ;
   int max ;
   int max_gs ;
   int wqe_shift ;
   int first_free ;
   int last_free ;
   u16 counter ;
   int db_index ;
   __be32 *db ;
   void *last ;
   int is_direct ;
   u64 *wrid ;
   union mthca_buf queue ;
   struct mthca_mr mr ;
   wait_queue_head_t wait ;
   struct mutex mutex ;
};
struct mthca_wq {
   spinlock_t lock ;
   int max ;
   unsigned int next_ind ;
   unsigned int last_comp ;
   unsigned int head ;
   unsigned int tail ;
   void *last ;
   int max_gs ;
   int wqe_shift ;
   int db_index ;
   __be32 *db ;
};
struct mthca_qp {
   struct ib_qp ibqp ;
   int refcount ;
   u32 qpn ;
   int is_direct ;
   u8 port ;
   u8 alt_port ;
   u8 transport ;
   u8 state ;
   u8 atomic_rd_en ;
   u8 resp_depth ;
   struct mthca_mr mr ;
   struct mthca_wq rq ;
   struct mthca_wq sq ;
   enum ib_sig_type sq_policy ;
   int send_wqe_offset ;
   int max_inline_data ;
   u64 *wrid ;
   union mthca_buf queue ;
   wait_queue_head_t wait ;
   struct mutex mutex ;
};
enum mthca_db_type {
    MTHCA_DB_TYPE_INVALID = 0,
    MTHCA_DB_TYPE_CQ_SET_CI = 1,
    MTHCA_DB_TYPE_CQ_ARM = 2,
    MTHCA_DB_TYPE_SQ = 3,
    MTHCA_DB_TYPE_RQ = 4,
    MTHCA_DB_TYPE_SRQ = 5,
    MTHCA_DB_TYPE_GROUP_SEP = 7
} ;
struct mthca_cq_context {
   __be32 flags ;
   __be64 start ;
   __be32 logsize_usrpage ;
   __be32 error_eqn ;
   __be32 comp_eqn ;
   __be32 pd ;
   __be32 lkey ;
   __be32 last_notified_index ;
   __be32 solicit_producer_index ;
   __be32 consumer_index ;
   __be32 producer_index ;
   __be32 cqn ;
   __be32 ci_db ;
   __be32 state_db ;
   u32 reserved ;
};
struct mthca_cqe {
   __be32 my_qpn ;
   __be32 my_ee ;
   __be32 rqpn ;
   u8 sl_ipok ;
   u8 g_mlpath ;
   __be16 rlid ;
   __be32 imm_etype_pkey_eec ;
   __be32 byte_cnt ;
   __be32 wqe ;
   u8 opcode ;
   u8 is_send ;
   u8 reserved ;
   u8 owner ;
};
struct mthca_err_cqe {
   __be32 my_qpn ;
   u32 reserved1[3U] ;
   u8 syndrome ;
   u8 vendor_err ;
   __be16 db_cnt ;
   u32 reserved2 ;
   __be32 wqe ;
   u8 opcode ;
   u8 reserved3[2U] ;
   u8 owner ;
};
typedef int ldv_func_ret_type___4;
struct mthca_mpt_entry;
struct __anonstruct_tavor_157 {
   struct mthca_mpt_entry *mpt ;
   u64 *mtts ;
};
struct __anonstruct_arbel_158 {
   struct mthca_mpt_entry *mpt ;
   __be64 *mtts ;
   dma_addr_t dma_handle ;
};
union __anonunion_mem_156 {
   struct __anonstruct_tavor_157 tavor ;
   struct __anonstruct_arbel_158 arbel ;
};
struct mthca_fmr {
   struct ib_fmr ibmr ;
   struct ib_fmr_attr attr ;
   struct mthca_mtt *mtt ;
   int maps ;
   union __anonunion_mem_156 mem ;
};
struct mthca_mtt {
   struct mthca_buddy *buddy ;
   int order ;
   u32 first_seg ;
};
struct mthca_mpt_entry {
   __be32 flags ;
   __be32 page_size ;
   __be32 key ;
   __be32 pd ;
   __be64 start ;
   __be64 length ;
   __be32 lkey ;
   __be32 window_count ;
   __be32 window_count_limit ;
   __be64 mtt_seg ;
   __be32 mtt_sz ;
   u32 reserved[2U] ;
};
enum hrtimer_restart;
enum ib_rate {
    IB_RATE_PORT_CURRENT = 0,
    IB_RATE_2_5_GBPS = 2,
    IB_RATE_5_GBPS = 5,
    IB_RATE_10_GBPS = 3,
    IB_RATE_20_GBPS = 6,
    IB_RATE_30_GBPS = 4,
    IB_RATE_40_GBPS = 7,
    IB_RATE_60_GBPS = 8,
    IB_RATE_80_GBPS = 9,
    IB_RATE_120_GBPS = 10,
    IB_RATE_14_GBPS = 11,
    IB_RATE_56_GBPS = 12,
    IB_RATE_112_GBPS = 13,
    IB_RATE_168_GBPS = 14,
    IB_RATE_25_GBPS = 15,
    IB_RATE_100_GBPS = 16,
    IB_RATE_200_GBPS = 17,
    IB_RATE_300_GBPS = 18
} ;
enum ib_qp_attr_mask {
    IB_QP_STATE = 1,
    IB_QP_CUR_STATE = 2,
    IB_QP_EN_SQD_ASYNC_NOTIFY = 4,
    IB_QP_ACCESS_FLAGS = 8,
    IB_QP_PKEY_INDEX = 16,
    IB_QP_PORT = 32,
    IB_QP_QKEY = 64,
    IB_QP_AV = 128,
    IB_QP_PATH_MTU = 256,
    IB_QP_TIMEOUT = 512,
    IB_QP_RETRY_CNT = 1024,
    IB_QP_RNR_RETRY = 2048,
    IB_QP_RQ_PSN = 4096,
    IB_QP_MAX_QP_RD_ATOMIC = 8192,
    IB_QP_ALT_PATH = 16384,
    IB_QP_MIN_RNR_TIMER = 32768,
    IB_QP_SQ_PSN = 65536,
    IB_QP_MAX_DEST_RD_ATOMIC = 131072,
    IB_QP_PATH_MIG_STATE = 262144,
    IB_QP_CAP = 524288,
    IB_QP_DEST_QPN = 1048576
} ;
struct ib_unpacked_lrh {
   u8 virtual_lane ;
   u8 link_version ;
   u8 service_level ;
   u8 link_next_header ;
   __be16 destination_lid ;
   __be16 packet_length ;
   __be16 source_lid ;
};
struct ib_unpacked_grh {
   u8 ip_version ;
   u8 traffic_class ;
   __be32 flow_label ;
   __be16 payload_length ;
   u8 next_header ;
   u8 hop_limit ;
   union ib_gid source_gid ;
   union ib_gid destination_gid ;
};
struct ib_unpacked_bth {
   u8 opcode ;
   u8 solicited_event ;
   u8 mig_req ;
   u8 pad_count ;
   u8 transport_header_version ;
   __be16 pkey ;
   __be32 destination_qpn ;
   u8 ack_req ;
   __be32 psn ;
};
struct ib_unpacked_deth {
   __be32 qkey ;
   __be32 source_qpn ;
};
struct ib_unpacked_eth {
   u8 dmac_h[4U] ;
   u8 dmac_l[2U] ;
   u8 smac_h[2U] ;
   u8 smac_l[4U] ;
   __be16 type ;
};
struct ib_unpacked_vlan {
   __be16 tag ;
   __be16 type ;
};
struct ib_ud_header {
   int lrh_present ;
   struct ib_unpacked_lrh lrh ;
   int eth_present ;
   struct ib_unpacked_eth eth ;
   int vlan_present ;
   struct ib_unpacked_vlan vlan ;
   int grh_present ;
   struct ib_unpacked_grh grh ;
   struct ib_unpacked_bth bth ;
   struct ib_unpacked_deth deth ;
   int immediate_present ;
   __be32 immediate_data ;
};
struct mthca_av;
enum mthca_ah_type {
    MTHCA_AH_ON_HCA = 0,
    MTHCA_AH_PCI_POOL = 1,
    MTHCA_AH_KMALLOC = 2
} ;
struct mthca_ah {
   struct ib_ah ibah ;
   enum mthca_ah_type type ;
   u32 key ;
   struct mthca_av *av ;
   dma_addr_t avdma ;
};
struct mthca_sqp {
   struct mthca_qp qp ;
   int pkey_index ;
   u32 qkey ;
   u32 send_psn ;
   struct ib_ud_header ud_header ;
   int header_buf_size ;
   void *header_buf ;
   dma_addr_t header_dma ;
};
struct mthca_next_seg {
   __be32 nda_op ;
   __be32 ee_nds ;
   __be32 flags ;
   __be32 imm ;
};
struct mthca_tavor_ud_seg {
   u32 reserved1 ;
   __be32 lkey ;
   __be64 av_addr ;
   u32 reserved2[4U] ;
   __be32 dqpn ;
   __be32 qkey ;
   u32 reserved3[2U] ;
};
struct mthca_arbel_ud_seg {
   __be32 av[8U] ;
   __be32 dqpn ;
   __be32 qkey ;
   u32 reserved[2U] ;
};
struct mthca_raddr_seg {
   __be64 raddr ;
   __be32 rkey ;
   u32 reserved ;
};
struct mthca_atomic_seg {
   __be64 swap_add ;
   __be64 compare ;
};
struct mthca_data_seg {
   __be32 byte_count ;
   __be32 lkey ;
   __be64 addr ;
};
struct mthca_mlx_seg {
   __be32 nda_op ;
   __be32 nds ;
   __be32 flags ;
   __be16 rlid ;
   __be16 vcrc ;
};
struct mthca_qp_path {
   __be32 port_pkey ;
   u8 rnr_retry ;
   u8 g_mylmc ;
   __be16 rlid ;
   u8 ackto ;
   u8 mgid_index ;
   u8 static_rate ;
   u8 hop_limit ;
   __be32 sl_tclass_flowlabel ;
   u8 rgid[16U] ;
};
struct mthca_qp_context {
   __be32 flags ;
   __be32 tavor_sched_queue ;
   u8 mtu_msgmax ;
   u8 rq_size_stride ;
   u8 sq_size_stride ;
   u8 rlkey_arbel_sched_queue ;
   __be32 usr_page ;
   __be32 local_qpn ;
   __be32 remote_qpn ;
   u32 reserved1[2U] ;
   struct mthca_qp_path pri_path ;
   struct mthca_qp_path alt_path ;
   __be32 rdd ;
   __be32 pd ;
   __be32 wqe_base ;
   __be32 wqe_lkey ;
   __be32 params1 ;
   __be32 reserved2 ;
   __be32 next_send_psn ;
   __be32 cqn_snd ;
   __be32 snd_wqe_base_l ;
   __be32 snd_db_index ;
   __be32 last_acked_psn ;
   __be32 ssn ;
   __be32 params2 ;
   __be32 rnr_nextrecvpsn ;
   __be32 ra_buff_indx ;
   __be32 cqn_rcv ;
   __be32 rcv_wqe_base_l ;
   __be32 rcv_db_index ;
   __be32 qkey ;
   __be32 srqn ;
   __be32 rmsn ;
   __be16 rq_wqe_counter ;
   __be16 sq_wqe_counter ;
   u32 reserved3[18U] ;
};
struct mthca_qp_param {
   __be32 opt_param_mask ;
   u32 reserved1 ;
   struct mthca_qp_context context ;
   u32 reserved2[62U] ;
};
struct mthca_av {
   __be32 port_pd ;
   u8 reserved1 ;
   u8 g_slid ;
   __be16 dlid ;
   u8 reserved2 ;
   u8 gid_index ;
   u8 msg_sr ;
   u8 hop_limit ;
   __be32 sl_tclass_flowlabel ;
   __be32 dgid[4U] ;
};
struct mthca_mgm {
   __be32 next_gid_index ;
   u32 reserved[3U] ;
   u8 gid[16U] ;
   __be32 qp[56U] ;
};
enum ib_port_width {
    IB_WIDTH_1X = 1,
    IB_WIDTH_4X = 2,
    IB_WIDTH_8X = 4,
    IB_WIDTH_12X = 8
} ;
struct ib_mad_reg_req {
   u8 mgmt_class ;
   u8 mgmt_class_version ;
   u8 oui[3U] ;
   unsigned long method_mask[2U] ;
};
struct ib_smp {
   u8 base_version ;
   u8 mgmt_class ;
   u8 class_version ;
   u8 method ;
   __be16 status ;
   u8 hop_ptr ;
   u8 hop_cnt ;
   __be64 tid ;
   __be16 attr_id ;
   __be16 resv ;
   __be32 attr_mod ;
   __be64 mkey ;
   __be16 dr_slid ;
   __be16 dr_dlid ;
   u8 reserved[28U] ;
   u8 data[64U] ;
   u8 initial_path[64U] ;
   u8 return_path[64U] ;
};
struct ib_port_info {
   __be64 mkey ;
   __be64 gid_prefix ;
   __be16 lid ;
   __be16 sm_lid ;
   __be32 cap_mask ;
   __be16 diag_code ;
   __be16 mkey_lease_period ;
   u8 local_port_num ;
   u8 link_width_enabled ;
   u8 link_width_supported ;
   u8 link_width_active ;
   u8 linkspeed_portstate ;
   u8 portphysstate_linkdown ;
   u8 mkeyprot_resv_lmc ;
   u8 linkspeedactive_enabled ;
   u8 neighbormtu_mastersmsl ;
   u8 vlcap_inittype ;
   u8 vl_high_limit ;
   u8 vl_arb_high_cap ;
   u8 vl_arb_low_cap ;
   u8 inittypereply_mtucap ;
   u8 vlstallcnt_hoqlife ;
   u8 operationalvl_pei_peo_fpi_fpo ;
   __be16 mkey_violations ;
   __be16 pkey_violations ;
   __be16 qkey_violations ;
   u8 guid_cap ;
   u8 clientrereg_resv_subnetto ;
   u8 resv_resptimevalue ;
   u8 localphyerrors_overrunerrors ;
   __be16 max_credit_hint ;
   u8 resv ;
   u8 link_roundtrip_latency[3U] ;
};
struct cpuinfo_x86;
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
enum hrtimer_restart;
struct ib_umem {
   struct ib_ucontext *context ;
   size_t length ;
   int offset ;
   int page_size ;
   int writable ;
   int hugetlb ;
   struct list_head chunk_list ;
   struct work_struct work ;
   struct mm_struct *mm ;
   unsigned long diff ;
};
struct ib_umem_chunk {
   struct list_head list ;
   int nents ;
   int nmap ;
   struct scatterlist page_list[0U] ;
};
struct mthca_alloc_ucontext_resp {
   __u32 qp_tab_size ;
   __u32 uarc_size ;
};
struct mthca_reg_mr {
   __u32 mr_attrs ;
   __u32 reserved ;
};
struct mthca_create_cq {
   __u32 lkey ;
   __u32 pdn ;
   __u64 arm_db_page ;
   __u64 set_db_page ;
   __u32 arm_db_index ;
   __u32 set_db_index ;
};
struct mthca_resize_cq {
   __u32 lkey ;
   __u32 reserved ;
};
struct mthca_create_srq {
   __u32 lkey ;
   __u32 db_index ;
   __u64 db_page ;
};
struct mthca_create_qp {
   __u32 lkey ;
   __u32 reserved ;
   __u64 sq_db_page ;
   __u64 rq_db_page ;
   __u32 sq_db_index ;
   __u32 rq_db_index ;
};
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___8;
enum hrtimer_restart;
struct __anonstruct_page_190 {
   u64 uvirt ;
   struct scatterlist mem ;
   int refcount ;
};
struct mthca_user_db_table {
   struct mutex mutex ;
   struct __anonstruct_page_190 page[0U] ;
};
enum hrtimer_restart;
struct mthca_tavor_srq_context {
   __be64 wqe_base_ds ;
   __be32 state_pd ;
   __be32 lkey ;
   __be32 uar ;
   __be16 limit_watermark ;
   __be16 wqe_cnt ;
   u32 reserved[2U] ;
};
struct mthca_arbel_srq_context {
   __be32 state_logsize_srqn ;
   __be32 lkey ;
   __be32 db_index ;
   __be32 logstride_usrpage ;
   __be64 wqe_base ;
   __be32 eq_pd ;
   __be16 limit_watermark ;
   __be16 wqe_cnt ;
   u16 reserved1 ;
   __be16 wqe_counter ;
   u32 reserved2[3U] ;
};
struct workqueue_struct;
__inline static int fls64(__u64 x )
{ int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
__inline static unsigned int fls_long(unsigned long l )
{ int tmp___0 ;
  {
  tmp___0 = fls64((__u64 )l);
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{ unsigned int tmp ;
  {
  tmp = fls_long(n - 1UL);
  return (1UL << (int )tmp);
}
}
extern int printk(char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mthca_device_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mthca_device_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_2 ;
int ref_cnt ;
extern int __VERIFIER_nondet_int(void) ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{ void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct module __this_module ;
__inline static char const *dev_name(struct device const *dev )
{ char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pcix_get_max_mmrbc(struct pci_dev * ) ;
extern int pcix_set_mmrbc(struct pci_dev * , int ) ;
extern int pcie_set_readrq(struct pci_dev * , int ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{ int tmp ;
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
__inline static unsigned int dma_set_max_seg_size(struct device *dev , unsigned int size )
{
  {
  if ((unsigned long )dev->dma_parms != (unsigned long )((struct device_dma_parameters *)0)) {
    (dev->dma_parms)->max_segment_size = size;
    return (0U);
  } else {
    return (4294967291U);
  }
}
}
__inline static int dma_get_cache_alignment(void)
{
  {
  return (1);
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{ int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{ int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{ void *tmp ;
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
__inline static char const *pci_name(struct pci_dev const *pdev )
{ char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
__inline static int pci_pcie_cap(struct pci_dev *dev )
{
  {
  return ((int )dev->pcie_cap);
}
}
__inline static bool pci_is_pcie(struct pci_dev *dev )
{ int tmp ;
  {
  tmp = pci_pcie_cap(dev);
  return (tmp != 0);
}
}
extern struct ib_device *ib_alloc_device(size_t ) ;
extern void ib_dealloc_device(struct ib_device * ) ;
struct mutex mthca_device_mutex ;
int mthca_debug_level ;
int mthca_reset(struct mthca_dev *mdev ) ;
int mthca_init_uar_table(struct mthca_dev *dev ) ;
int mthca_init_pd_table(struct mthca_dev *dev ) ;
int mthca_init_mr_table(struct mthca_dev *dev ) ;
int mthca_init_eq_table(struct mthca_dev *dev ) ;
int mthca_init_cq_table(struct mthca_dev *dev ) ;
int mthca_init_srq_table(struct mthca_dev *dev ) ;
int mthca_init_qp_table(struct mthca_dev *dev ) ;
int mthca_init_av_table(struct mthca_dev *dev ) ;
int mthca_init_mcg_table(struct mthca_dev *dev ) ;
void mthca_cleanup_uar_table(struct mthca_dev *dev ) ;
void mthca_cleanup_pd_table(struct mthca_dev *dev ) ;
void mthca_cleanup_mr_table(struct mthca_dev *dev ) ;
void mthca_cleanup_eq_table(struct mthca_dev *dev ) ;
void mthca_cleanup_cq_table(struct mthca_dev *dev ) ;
void mthca_cleanup_srq_table(struct mthca_dev *dev ) ;
void mthca_cleanup_qp_table(struct mthca_dev *dev ) ;
void mthca_cleanup_av_table(struct mthca_dev *dev ) ;
void mthca_cleanup_mcg_table(struct mthca_dev *dev ) ;
int mthca_register_device(struct mthca_dev *dev ) ;
void mthca_unregister_device(struct mthca_dev *dev ) ;
int __mthca_restart_one(struct pci_dev *pdev ) ;
int mthca_catas_init(void) ;
void mthca_catas_cleanup(void) ;
int mthca_uar_alloc(struct mthca_dev *dev , struct mthca_uar *uar ) ;
void mthca_uar_free(struct mthca_dev *dev , struct mthca_uar *uar ) ;
int mthca_pd_alloc(struct mthca_dev *dev , int privileged , struct mthca_pd *pd ) ;
void mthca_pd_free(struct mthca_dev *dev , struct mthca_pd *pd ) ;
int mthca_map_eq_icm(struct mthca_dev *dev , u64 icm_virt ) ;
void mthca_unmap_eq_icm(struct mthca_dev *dev ) ;
int mthca_max_srq_sge(struct mthca_dev *dev ) ;
int mthca_create_agents(struct mthca_dev *dev ) ;
void mthca_free_agents(struct mthca_dev *dev ) ;
__inline static int mthca_is_memfree(struct mthca_dev *dev )
{
  {
  return ((int )dev->mthca_flags & 64);
}
}
int mthca_cmd_init(struct mthca_dev *dev ) ;
void mthca_cmd_cleanup(struct mthca_dev *dev ) ;
int mthca_cmd_use_events(struct mthca_dev *dev ) ;
void mthca_cmd_use_polling(struct mthca_dev *dev ) ;
int mthca_SYS_EN(struct mthca_dev *dev ) ;
int mthca_SYS_DIS(struct mthca_dev *dev ) ;
int mthca_MAP_FA(struct mthca_dev *dev , struct mthca_icm *icm ) ;
int mthca_UNMAP_FA(struct mthca_dev *dev ) ;
int mthca_RUN_FW(struct mthca_dev *dev ) ;
int mthca_QUERY_FW(struct mthca_dev *dev ) ;
int mthca_ENABLE_LAM(struct mthca_dev *dev ) ;
int mthca_DISABLE_LAM(struct mthca_dev *dev ) ;
int mthca_QUERY_DDR(struct mthca_dev *dev ) ;
int mthca_QUERY_DEV_LIM(struct mthca_dev *dev , struct mthca_dev_lim *dev_lim ) ;
int mthca_QUERY_ADAPTER(struct mthca_dev *dev , struct mthca_adapter *adapter ) ;
int mthca_INIT_HCA(struct mthca_dev *dev , struct mthca_init_hca_param *param ) ;
int mthca_CLOSE_IB(struct mthca_dev *dev , int port ) ;
int mthca_CLOSE_HCA(struct mthca_dev *dev , int panic___0 ) ;
int mthca_MAP_ICM_AUX(struct mthca_dev *dev , struct mthca_icm *icm ) ;
int mthca_UNMAP_ICM_AUX(struct mthca_dev *dev ) ;
int mthca_SET_ICM_SIZE(struct mthca_dev *dev , u64 icm_size , u64 *aux_pages ) ;
int mthca_NOP(struct mthca_dev *dev ) ;
s64 mthca_make_profile(struct mthca_dev *dev , struct mthca_profile *request , struct mthca_dev_lim *dev_lim ,
                       struct mthca_init_hca_param *init_hca ) ;
struct mthca_icm *mthca_alloc_icm(struct mthca_dev *dev , int npages , gfp_t gfp_mask ,
                                  int coherent ) ;
void mthca_free_icm(struct mthca_dev *dev , struct mthca_icm *icm , int coherent ) ;
struct mthca_icm_table *mthca_alloc_icm_table(struct mthca_dev *dev , u64 virt , int obj_size ,
                                              int nobj , int reserved , int use_lowmem ,
                                              int use_coherent ) ;
void mthca_free_icm_table(struct mthca_dev *dev , struct mthca_icm_table *table ) ;
int mthca_debug_level = 0;
static int msi_x = 1;
static int tune_pci = 0;
struct mutex mthca_device_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "mthca_device_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& mthca_device_mutex.wait_list,
                                                                                  & mthca_device_mutex.wait_list},
    0, 0, (void *)(& mthca_device_mutex), {0, {0, 0}, "mthca_device_mutex", 0, 0UL}};
static struct mthca_profile hca_profile =
     {65536, 4, 0, 65536, 8192, 131072, 1048576, 32768, 0, 262144, 262144};
static int log_mtts_per_seg = 3;
static char mthca_version[63U] =
  { 'i', 'b', '_', 'm',
        't', 'h', 'c', 'a',
        ':', ' ', 'M', 'e',
        'l', 'l', 'a', 'n',
        'o', 'x', ' ', 'I',
        'n', 'f', 'i', 'n',
        'i', 'B', 'a', 'n',
        'd', ' ', 'H', 'C',
        'A', ' ', 'd', 'r',
        'i', 'v', 'e', 'r',
        ' ', 'v', '1', '.',
        '0', ' ', '(', 'A',
        'p', 'r', 'i', 'l',
        ' ', '4', ',', ' ',
        '2', '0', '0', '8',
        ')', '\n', '\000'};
static int mthca_tune_pci(struct mthca_dev *mdev )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  if (tune_pci == 0) {
    return (0);
  } else {
  }
  tmp___1 = pci_find_capability(mdev->pdev, 7);
  if (tmp___1 != 0) {
    tmp = pcix_get_max_mmrbc(mdev->pdev);
    tmp___0 = pcix_set_mmrbc(mdev->pdev, tmp);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t set PCI-X max read count, aborting.\n");
      return (-19);
    } else
    if ((mdev->mthca_flags & 128UL) == 0UL) {
      _dev_info((struct device const *)(& (mdev->pdev)->dev), "No PCI-X capability, not setting RBC.\n");
    } else {
    }
  } else {
  }
  tmp___3 = pci_is_pcie(mdev->pdev);
  if ((int )tmp___3) {
    tmp___2 = pcie_set_readrq(mdev->pdev, 4096);
    if (tmp___2 != 0) {
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t write PCI Express read request, aborting.\n");
      return (-19);
    } else
    if ((mdev->mthca_flags & 128UL) != 0UL) {
      _dev_info((struct device const *)(& (mdev->pdev)->dev), "No PCI Express capability, not setting Max Read Request Size.\n");
    } else {
    }
  } else {
  }
  return (0);
}
}
static int mthca_dev_lim(struct mthca_dev *mdev , struct mthca_dev_lim *dev_lim )
{ int err ;
  resource_size_t tmp ;
  resource_size_t tmp___0 ;
  int __min1 ;
  int __min2 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  mdev->limits.mtt_seg_size = 8 << log_mtts_per_seg;
  err = mthca_QUERY_DEV_LIM(mdev, dev_lim);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_DEV_LIM command returned %d, aborting.\n",
            err);
    return (err);
  } else {
  }
  if ((unsigned int )dev_lim->min_page_sz > 4096U) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "HCA minimum page size of %d bigger than kernel PAGE_SIZE of %ld, aborting.\n",
            dev_lim->min_page_sz, 4096UL);
    return (-19);
  } else {
  }
  if (dev_lim->num_ports > 2) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "HCA has %d ports, but we only support %d, aborting.\n",
            dev_lim->num_ports, 2);
    return (-19);
  } else {
  }
  if ((mdev->pdev)->resource[2].start != 0ULL || (mdev->pdev)->resource[2].end != (mdev->pdev)->resource[2].start) {
    tmp___0 = ((mdev->pdev)->resource[2].end - (mdev->pdev)->resource[2].start) + 1ULL;
  } else {
    tmp___0 = 0ULL;
  }
  if ((resource_size_t )dev_lim->uar_size > tmp___0) {
    if ((mdev->pdev)->resource[2].start != 0ULL || (mdev->pdev)->resource[2].end != (mdev->pdev)->resource[2].start) {
      tmp = ((mdev->pdev)->resource[2].end - (mdev->pdev)->resource[2].start) + 1ULL;
    } else {
      tmp = 0ULL;
    }
    dev_err((struct device const *)(& (mdev->pdev)->dev), "HCA reported UAR size of 0x%x bigger than PCI resource 2 size of 0x%llx, aborting.\n",
            dev_lim->uar_size, tmp);
    return (-19);
  } else {
  }
  mdev->limits.num_ports = dev_lim->num_ports;
  mdev->limits.vl_cap = dev_lim->max_vl;
  mdev->limits.mtu_cap = dev_lim->max_mtu;
  mdev->limits.gid_table_len = dev_lim->max_gids;
  mdev->limits.pkey_table_len = dev_lim->max_pkeys;
  mdev->limits.local_ca_ack_delay = dev_lim->local_ca_ack_delay;
  __min1 = dev_lim->max_sg;
  mthca_is_memfree(mdev);
  __min2 = (int )(((unsigned long )dev_lim->max_desc_sz - 64UL) / 16UL);
  if (__min1 < __min2) {
    tmp___1 = __min1;
  } else {
    tmp___1 = __min2;
  }
  mdev->limits.max_sg = tmp___1;
  mdev->limits.max_wqes = dev_lim->max_qp_sz;
  mdev->limits.max_qp_init_rdma = dev_lim->max_requester_per_qp;
  mdev->limits.reserved_qps = dev_lim->reserved_qps;
  mdev->limits.max_srq_wqes = dev_lim->max_srq_sz;
  mdev->limits.reserved_srqs = dev_lim->reserved_srqs;
  mdev->limits.reserved_eecs = dev_lim->reserved_eecs;
  mdev->limits.max_desc_sz = dev_lim->max_desc_sz;
  mdev->limits.max_srq_sge = mthca_max_srq_sge(mdev);
  mdev->limits.max_cqes = dev_lim->max_cq_sz + -1;
  mdev->limits.reserved_cqs = dev_lim->reserved_cqs;
  mdev->limits.reserved_eqs = dev_lim->reserved_eqs;
  mdev->limits.reserved_mtts = dev_lim->reserved_mtts;
  mdev->limits.reserved_mrws = dev_lim->reserved_mrws;
  mdev->limits.reserved_uars = dev_lim->reserved_uars;
  mdev->limits.reserved_pds = dev_lim->reserved_pds;
  mdev->limits.port_width_cap = (u8 )dev_lim->max_port_width;
  mdev->limits.page_size_cap = - ((unsigned int )dev_lim->min_page_sz);
  mdev->limits.flags = dev_lim->flags;
  if ((unsigned int )dev_lim->stat_rate_support != 0U) {
    mdev->limits.stat_rate_support = dev_lim->stat_rate_support;
  } else
  if ((mdev->mthca_flags & 256UL) != 0UL) {
    mdev->limits.stat_rate_support = 15U;
  } else {
    mdev->limits.stat_rate_support = 3U;
  }
  mdev->device_cap_flags = 7200UL;
  if ((dev_lim->flags & 256U) != 0U) {
    mdev->device_cap_flags = mdev->device_cap_flags | 2UL;
  } else {
  }
  if ((dev_lim->flags & 512U) != 0U) {
    mdev->device_cap_flags = mdev->device_cap_flags | 4UL;
  } else {
  }
  if ((dev_lim->flags & 524288U) != 0U) {
    mdev->device_cap_flags = mdev->device_cap_flags | 8UL;
  } else {
  }
  if ((dev_lim->flags & 131072U) != 0U) {
    mdev->device_cap_flags = mdev->device_cap_flags | 16UL;
  } else {
  }
  if ((dev_lim->flags & 1048576U) != 0U) {
    mdev->device_cap_flags = mdev->device_cap_flags | 64UL;
  } else {
  }
  if ((dev_lim->flags & 64U) != 0U) {
    mdev->mthca_flags = mdev->mthca_flags | 4UL;
  } else {
  }
  tmp___2 = mthca_is_memfree(mdev);
  if (tmp___2 != 0) {
    if ((dev_lim->flags & 128U) != 0U) {
      mdev->device_cap_flags = mdev->device_cap_flags | 262144UL;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int mthca_init_tavor(struct mthca_dev *mdev )
{ s64 size ;
  int err ;
  struct mthca_dev_lim dev_lim ;
  struct mthca_profile profile ;
  struct mthca_init_hca_param init_hca ;
  {
  err = mthca_SYS_EN(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "SYS_EN command returned %d, aborting.\n",
            err);
    return (err);
  } else {
  }
  err = mthca_QUERY_FW(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_FW command returned %d, aborting.\n",
            err);
    goto err_disable;
  } else {
  }
  err = mthca_QUERY_DDR(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_DDR command returned %d, aborting.\n",
            err);
    goto err_disable;
  } else {
  }
  err = mthca_dev_lim(mdev, & dev_lim);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_DEV_LIM command returned %d, aborting.\n",
            err);
    goto err_disable;
  } else {
  }
  profile = hca_profile;
  profile.num_uar = (int )((unsigned long )dev_lim.uar_size / 4096UL);
  profile.uarc_size = 0;
  if ((mdev->mthca_flags & 4UL) != 0UL) {
    profile.num_srq = dev_lim.max_srqs;
  } else {
  }
  size = mthca_make_profile(mdev, & profile, & dev_lim, & init_hca);
  if (size < 0LL) {
    err = (int )size;
    goto err_disable;
  } else {
  }
  err = mthca_INIT_HCA(mdev, & init_hca);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "INIT_HCA command returned %d, aborting.\n",
            err);
    goto err_disable;
  } else {
  }
  return (0);
  err_disable:
  mthca_SYS_DIS(mdev);
  return (err);
}
}
static int mthca_load_fw(struct mthca_dev *mdev )
{ int err ;
  {
  mdev->fw.arbel.fw_icm = mthca_alloc_icm(mdev, (int )mdev->fw.arbel.fw_pages, 131794U,
                                          0);
  if ((unsigned long )mdev->fw.arbel.fw_icm == (unsigned long )((struct mthca_icm *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t allocate FW area, aborting.\n");
    return (-12);
  } else {
  }
  err = mthca_MAP_FA(mdev, mdev->fw.arbel.fw_icm);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "MAP_FA command returned %d, aborting.\n",
            err);
    goto err_free;
  } else {
  }
  err = mthca_RUN_FW(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "RUN_FW command returned %d, aborting.\n",
            err);
    goto err_unmap_fa;
  } else {
  }
  return (0);
  err_unmap_fa:
  mthca_UNMAP_FA(mdev);
  err_free:
  mthca_free_icm(mdev, mdev->fw.arbel.fw_icm, 0);
  return (err);
}
}
static int mthca_init_icm(struct mthca_dev *mdev , struct mthca_dev_lim *dev_lim ,
                          struct mthca_init_hca_param *init_hca , u64 icm_size )
{ u64 aux_pages ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  err = mthca_SET_ICM_SIZE(mdev, icm_size, & aux_pages);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "SET_ICM_SIZE command returned %d, aborting.\n",
            err);
    return (err);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (mdev->pdev)->dev), "%lld KB of HCA context requires %lld KB aux memory.\n",
               icm_size >> 10, aux_pages << 2);
  } else {
  }
  mdev->fw.arbel.aux_icm = mthca_alloc_icm(mdev, (int )aux_pages, 131794U, 0);
  if ((unsigned long )mdev->fw.arbel.aux_icm == (unsigned long )((struct mthca_icm *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t allocate aux memory, aborting.\n");
    return (-12);
  } else {
  }
  err = mthca_MAP_ICM_AUX(mdev, mdev->fw.arbel.aux_icm);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "MAP_ICM_AUX returned %d, aborting.\n",
            err);
    goto err_free_aux;
  } else {
  }
  err = mthca_map_eq_icm(mdev, init_hca->eqc_base);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map EQ context memory, aborting.\n");
    goto err_unmap_aux;
  } else {
  }
  tmp = dma_get_cache_alignment();
  tmp___0 = dma_get_cache_alignment();
  mdev->limits.reserved_mtts = ((mdev->limits.reserved_mtts * mdev->limits.mtt_seg_size + (tmp + -1)) & - tmp___0) / mdev->limits.mtt_seg_size;
  mdev->mr_table.mtt_table = mthca_alloc_icm_table(mdev, init_hca->mtt_base, mdev->limits.mtt_seg_size,
                                                   mdev->limits.num_mtt_segs, mdev->limits.reserved_mtts,
                                                   1, 0);
  if ((unsigned long )mdev->mr_table.mtt_table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map MTT context memory, aborting.\n");
    err = -12;
    goto err_unmap_eq;
  } else {
  }
  mdev->mr_table.mpt_table = mthca_alloc_icm_table(mdev, init_hca->mpt_base, dev_lim->mpt_entry_sz,
                                                   mdev->limits.num_mpts, mdev->limits.reserved_mrws,
                                                   1, 1);
  if ((unsigned long )mdev->mr_table.mpt_table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map MPT context memory, aborting.\n");
    err = -12;
    goto err_unmap_mtt;
  } else {
  }
  mdev->qp_table.qp_table = mthca_alloc_icm_table(mdev, init_hca->qpc_base, dev_lim->qpc_entry_sz,
                                                  mdev->limits.num_qps, mdev->limits.reserved_qps,
                                                  0, 0);
  if ((unsigned long )mdev->qp_table.qp_table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map QP context memory, aborting.\n");
    err = -12;
    goto err_unmap_mpt;
  } else {
  }
  mdev->qp_table.eqp_table = mthca_alloc_icm_table(mdev, init_hca->eqpc_base, dev_lim->eqpc_entry_sz,
                                                   mdev->limits.num_qps, mdev->limits.reserved_qps,
                                                   0, 0);
  if ((unsigned long )mdev->qp_table.eqp_table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map EQP context memory, aborting.\n");
    err = -12;
    goto err_unmap_qp;
  } else {
  }
  mdev->qp_table.rdb_table = mthca_alloc_icm_table(mdev, init_hca->rdb_base, 32, mdev->limits.num_qps << mdev->qp_table.rdb_shift,
                                                   0, 0, 0);
  if ((unsigned long )mdev->qp_table.rdb_table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map RDB context memory, aborting\n");
    err = -12;
    goto err_unmap_eqp;
  } else {
  }
  mdev->cq_table.table = mthca_alloc_icm_table(mdev, init_hca->cqc_base, dev_lim->cqc_entry_sz,
                                               mdev->limits.num_cqs, mdev->limits.reserved_cqs,
                                               0, 0);
  if ((unsigned long )mdev->cq_table.table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map CQ context memory, aborting.\n");
    err = -12;
    goto err_unmap_rdb;
  } else {
  }
  if ((mdev->mthca_flags & 4UL) != 0UL) {
    mdev->srq_table.table = mthca_alloc_icm_table(mdev, init_hca->srqc_base, dev_lim->srq_entry_sz,
                                                  mdev->limits.num_srqs, mdev->limits.reserved_srqs,
                                                  0, 0);
    if ((unsigned long )mdev->srq_table.table == (unsigned long )((struct mthca_icm_table *)0)) {
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map SRQ context memory, aborting.\n");
      err = -12;
      goto err_unmap_cq;
    } else {
    }
  } else {
  }
  mdev->mcg_table.table = mthca_alloc_icm_table(mdev, init_hca->mc_base, 256, mdev->limits.num_mgms + mdev->limits.num_amgms,
                                                mdev->limits.num_mgms + mdev->limits.num_amgms,
                                                0, 0);
  if ((unsigned long )mdev->mcg_table.table == (unsigned long )((struct mthca_icm_table *)0)) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to map MCG context memory, aborting.\n");
    err = -12;
    goto err_unmap_srq;
  } else {
  }
  return (0);
  err_unmap_srq: ;
  if ((mdev->mthca_flags & 4UL) != 0UL) {
    mthca_free_icm_table(mdev, mdev->srq_table.table);
  } else {
  }
  err_unmap_cq:
  mthca_free_icm_table(mdev, mdev->cq_table.table);
  err_unmap_rdb:
  mthca_free_icm_table(mdev, mdev->qp_table.rdb_table);
  err_unmap_eqp:
  mthca_free_icm_table(mdev, mdev->qp_table.eqp_table);
  err_unmap_qp:
  mthca_free_icm_table(mdev, mdev->qp_table.qp_table);
  err_unmap_mpt:
  mthca_free_icm_table(mdev, mdev->mr_table.mpt_table);
  err_unmap_mtt:
  mthca_free_icm_table(mdev, mdev->mr_table.mtt_table);
  err_unmap_eq:
  mthca_unmap_eq_icm(mdev);
  err_unmap_aux:
  mthca_UNMAP_ICM_AUX(mdev);
  err_free_aux:
  mthca_free_icm(mdev, mdev->fw.arbel.aux_icm, 0);
  return (err);
}
}
static void mthca_free_icms(struct mthca_dev *mdev )
{
  {
  mthca_free_icm_table(mdev, mdev->mcg_table.table);
  if ((mdev->mthca_flags & 4UL) != 0UL) {
    mthca_free_icm_table(mdev, mdev->srq_table.table);
  } else {
  }
  mthca_free_icm_table(mdev, mdev->cq_table.table);
  mthca_free_icm_table(mdev, mdev->qp_table.rdb_table);
  mthca_free_icm_table(mdev, mdev->qp_table.eqp_table);
  mthca_free_icm_table(mdev, mdev->qp_table.qp_table);
  mthca_free_icm_table(mdev, mdev->mr_table.mpt_table);
  mthca_free_icm_table(mdev, mdev->mr_table.mtt_table);
  mthca_unmap_eq_icm(mdev);
  mthca_UNMAP_ICM_AUX(mdev);
  mthca_free_icm(mdev, mdev->fw.arbel.aux_icm, 0);
  return;
}
}
static int mthca_init_arbel(struct mthca_dev *mdev )
{ struct mthca_dev_lim dev_lim ;
  struct mthca_profile profile ;
  struct mthca_init_hca_param init_hca ;
  s64 icm_size ;
  int err ;
  {
  err = mthca_QUERY_FW(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_FW command failed %d, aborting.\n",
            err);
    return (err);
  } else {
  }
  err = mthca_ENABLE_LAM(mdev);
  if (err == -11) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (mdev->pdev)->dev), "No HCA-attached memory (running in MemFree mode)\n");
    } else {
    }
    mdev->mthca_flags = mdev->mthca_flags | 16UL;
  } else
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "ENABLE_LAM returned %d, aborting.\n",
            err);
    return (err);
  } else {
  }
  err = mthca_load_fw(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Loading FW returned %d, aborting.\n",
            err);
    goto err_disable;
  } else {
  }
  err = mthca_dev_lim(mdev, & dev_lim);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_DEV_LIM returned %d, aborting.\n",
            err);
    goto err_stop_fw;
  } else {
  }
  profile = hca_profile;
  profile.num_uar = (int )((unsigned long )dev_lim.uar_size / 4096UL);
  profile.num_udav = 0;
  if ((mdev->mthca_flags & 4UL) != 0UL) {
    profile.num_srq = dev_lim.max_srqs;
  } else {
  }
  icm_size = mthca_make_profile(mdev, & profile, & dev_lim, & init_hca);
  if (icm_size < 0LL) {
    err = (int )icm_size;
    goto err_stop_fw;
  } else {
  }
  err = mthca_init_icm(mdev, & dev_lim, & init_hca, (u64 )icm_size);
  if (err != 0) {
    goto err_stop_fw;
  } else {
  }
  err = mthca_INIT_HCA(mdev, & init_hca);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "INIT_HCA command returned %d, aborting.\n",
            err);
    goto err_free_icm;
  } else {
  }
  return (0);
  err_free_icm:
  mthca_free_icms(mdev);
  err_stop_fw:
  mthca_UNMAP_FA(mdev);
  mthca_free_icm(mdev, mdev->fw.arbel.fw_icm, 0);
  err_disable: ;
  if ((mdev->mthca_flags & 16UL) == 0UL) {
    mthca_DISABLE_LAM(mdev);
  } else {
  }
  return (err);
}
}
static void mthca_close_hca(struct mthca_dev *mdev )
{ int tmp ;
  {
  mthca_CLOSE_HCA(mdev, 0);
  tmp = mthca_is_memfree(mdev);
  if (tmp != 0) {
    mthca_free_icms(mdev);
    mthca_UNMAP_FA(mdev);
    mthca_free_icm(mdev, mdev->fw.arbel.fw_icm, 0);
    if ((mdev->mthca_flags & 16UL) == 0UL) {
      mthca_DISABLE_LAM(mdev);
    } else {
    }
  } else {
    mthca_SYS_DIS(mdev);
  }
  return;
}
}
static int mthca_init_hca(struct mthca_dev *mdev )
{ int err ;
  struct mthca_adapter adapter ;
  int tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = mthca_is_memfree(mdev);
  if (tmp != 0) {
    err = mthca_init_arbel(mdev);
  } else {
    err = mthca_init_tavor(mdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  err = mthca_QUERY_ADAPTER(mdev, & adapter);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "QUERY_ADAPTER command returned %d, aborting.\n",
            err);
    goto err_close;
  } else {
  }
  mdev->eq_table.inta_pin = adapter.inta_pin;
  tmp___0 = mthca_is_memfree(mdev);
  if (tmp___0 == 0) {
    mdev->rev_id = adapter.revision_id;
  } else {
  }
  __len = 64UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& mdev->board_id), (void const *)(& adapter.board_id),
                     __len);
  } else {
    __ret = memcpy((void *)(& mdev->board_id), (void const *)(& adapter.board_id),
                             __len);
  }
  return (0);
  err_close:
  mthca_close_hca(mdev);
  return (err);
}
}
static int mthca_setup_hca(struct mthca_dev *dev )
{ int err ;
  {
  err = mthca_init_uar_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize user access region table, aborting.\n");
    return (err);
  } else {
  }
  err = mthca_uar_alloc(dev, & dev->driver_uar);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to allocate driver access region, aborting.\n");
    goto err_uar_table_free;
  } else {
  }
  dev->kar = ioremap((unsigned long long )dev->driver_uar.pfn << 12, 4096UL);
  if ((unsigned long )dev->kar == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map kernel access region, aborting.\n");
    err = -12;
    goto err_uar_free;
  } else {
  }
  err = mthca_init_pd_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize protection domain table, aborting.\n");
    goto err_kar_unmap;
  } else {
  }
  err = mthca_init_mr_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize memory region table, aborting.\n");
    goto err_pd_table_free;
  } else {
  }
  err = mthca_pd_alloc(dev, 1, & dev->driver_pd);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to create driver PD, aborting.\n");
    goto err_mr_table_free;
  } else {
  }
  err = mthca_init_eq_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize event queue table, aborting.\n");
    goto err_pd_free;
  } else {
  }
  err = mthca_cmd_use_events(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to switch to event-driven firmware commands, aborting.\n");
    goto err_eq_table_free;
  } else {
  }
  err = mthca_NOP(dev);
  if (err != 0) {
    if ((dev->mthca_flags & 8UL) != 0UL) {
      dev_warn((struct device const *)(& (dev->pdev)->dev), "NOP command failed to generate interrupt (IRQ %d).\n",
               (int )dev->eq_table.eq[0].msi_x_vector);
      dev_warn((struct device const *)(& (dev->pdev)->dev), "Trying again with MSI-X disabled.\n");
    } else {
      dev_err((struct device const *)(& (dev->pdev)->dev), "NOP command failed to generate interrupt (IRQ %d), aborting.\n",
              (dev->pdev)->irq);
      dev_err((struct device const *)(& (dev->pdev)->dev), "BIOS or ACPI interrupt routing problem?\n");
    }
    goto err_cmd_poll;
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "NOP command IRQ test passed\n");
  } else {
  }
  err = mthca_init_cq_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize completion queue table, aborting.\n");
    goto err_cmd_poll;
  } else {
  }
  err = mthca_init_srq_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize shared receive queue table, aborting.\n");
    goto err_cq_table_free;
  } else {
  }
  err = mthca_init_qp_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize queue pair table, aborting.\n");
    goto err_srq_table_free;
  } else {
  }
  err = mthca_init_av_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize address vector table, aborting.\n");
    goto err_qp_table_free;
  } else {
  }
  err = mthca_init_mcg_table(dev);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to initialize multicast group table, aborting.\n");
    goto err_av_table_free;
  } else {
  }
  return (0);
  err_av_table_free:
  mthca_cleanup_av_table(dev);
  err_qp_table_free:
  mthca_cleanup_qp_table(dev);
  err_srq_table_free:
  mthca_cleanup_srq_table(dev);
  err_cq_table_free:
  mthca_cleanup_cq_table(dev);
  err_cmd_poll:
  mthca_cmd_use_polling(dev);
  err_eq_table_free:
  mthca_cleanup_eq_table(dev);
  err_pd_free:
  mthca_pd_free(dev, & dev->driver_pd);
  err_mr_table_free:
  mthca_cleanup_mr_table(dev);
  err_pd_table_free:
  mthca_cleanup_pd_table(dev);
  err_kar_unmap:
  iounmap((void volatile *)dev->kar);
  err_uar_free:
  mthca_uar_free(dev, & dev->driver_uar);
  err_uar_table_free:
  mthca_cleanup_uar_table(dev);
  return (err);
}
}
static int mthca_enable_msi_x(struct mthca_dev *mdev )
{ struct msix_entry entries[3U] ;
  int err ;
  {
  entries[0].entry = 0U;
  entries[1].entry = 1U;
  entries[2].entry = 2U;
  err = pci_enable_msix(mdev->pdev, (struct msix_entry *)(& entries), 3);
  if (err != 0) {
    if (err > 0) {
      _dev_info((struct device const *)(& (mdev->pdev)->dev), "Only %d MSI-X vectors available, not using MSI-X\n",
                err);
    } else {
    }
    return (err);
  } else {
  }
  mdev->eq_table.eq[2].msi_x_vector = (u16 )entries[0].vector;
  mdev->eq_table.eq[1].msi_x_vector = (u16 )entries[1].vector;
  mdev->eq_table.eq[0].msi_x_vector = (u16 )entries[2].vector;
  return (0);
}
}
static struct __anonstruct_mthca_hca_table_179 mthca_hca_table[4U] = { {12885229568ULL, 0U},
        {17180393672ULL, 128U},
        {21475033088ULL, 192U},
        {4295098368ULL, 448U}};
static int __mthca_init_one(struct pci_dev *pdev , int hca_type )
{ int ddr_hidden ;
  int err ;
  struct mthca_dev *mdev ;
  char const *tmp ;
  struct ib_device *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ddr_hidden = 0;
  tmp = pci_name((struct pci_dev const *)pdev);
  printk("\016ib_mthca: Initializing %s\n", tmp);
  err = pci_enable_device(pdev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable PCI device, aborting.\n");
    return (err);
  } else {
  }
  if ((pdev->resource[0].flags & 512UL) == 0UL || ((pdev->resource[0].start == 0ULL && pdev->resource[0].end == pdev->resource[0].start) || pdev->resource[0].end - pdev->resource[0].start != 1048575ULL)) {
    dev_err((struct device const *)(& pdev->dev), "Missing DCS, aborting.\n");
    err = -19;
    goto err_disable_pdev;
  } else {
  }
  if ((pdev->resource[2].flags & 512UL) == 0UL) {
    dev_err((struct device const *)(& pdev->dev), "Missing UAR, aborting.\n");
    err = -19;
    goto err_disable_pdev;
  } else {
  }
  if ((pdev->resource[4].flags & 512UL) == 0UL) {
    ddr_hidden = 1;
  } else {
  }
  err = pci_request_regions(pdev, "ib_mthca");
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot obtain PCI resources, aborting.\n");
    goto err_disable_pdev;
  } else {
  }
  pci_set_master(pdev);
  err = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (err != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Warning: couldn\'t set 64-bit PCI DMA mask.\n");
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "Can\'t set PCI DMA mask, aborting.\n");
      goto err_free_res;
    } else {
    }
  } else {
  }
  err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
  if (err != 0) {
    dev_warn((struct device const *)(& pdev->dev), "Warning: couldn\'t set 64-bit consistent PCI DMA mask.\n");
    err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "Can\'t set consistent PCI DMA mask, aborting.\n");
      goto err_free_res;
    } else {
    }
  } else {
  }
  dma_set_max_seg_size(& pdev->dev, 1073741824U);
  tmp___0 = ib_alloc_device(5824UL);
  mdev = (struct mthca_dev *)tmp___0;
  if ((unsigned long )mdev == (unsigned long )((struct mthca_dev *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Device struct alloc failed, aborting.\n");
    err = -12;
    goto err_free_res;
  } else {
  }
  mdev->pdev = pdev;
  mdev->mthca_flags = (unsigned long )mthca_hca_table[hca_type].flags;
  if (ddr_hidden != 0) {
    mdev->mthca_flags = mdev->mthca_flags | 2UL;
  } else {
  }
  err = mthca_reset(mdev);
  if (err != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to reset HCA, aborting.\n");
    goto err_free_dev;
  } else {
  }
  tmp___1 = mthca_cmd_init(mdev);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Failed to init command interface, aborting.\n");
    goto err_free_dev;
  } else {
  }
  err = mthca_tune_pci(mdev);
  if (err != 0) {
    goto err_cmd;
  } else {
  }
  err = mthca_init_hca(mdev);
  if (err != 0) {
    goto err_cmd;
  } else {
  }
  if (mdev->fw_ver < mthca_hca_table[hca_type].latest_fw) {
    dev_warn((struct device const *)(& (mdev->pdev)->dev), "HCA FW version %d.%d.%03d is old (%d.%d.%03d is current).\n",
             (int )(mdev->fw_ver >> 32), (int )(mdev->fw_ver >> 16) & 65535, (int )mdev->fw_ver & 65535,
             (int )(mthca_hca_table[hca_type].latest_fw >> 32), (int )(mthca_hca_table[hca_type].latest_fw >> 16) & 65535,
             (int )mthca_hca_table[hca_type].latest_fw & 65535);
    dev_warn((struct device const *)(& (mdev->pdev)->dev), "If you have problems, try updating your HCA FW.\n");
  } else {
  }
  if (msi_x != 0) {
    tmp___2 = mthca_enable_msi_x(mdev);
    if (tmp___2 == 0) {
      mdev->mthca_flags = mdev->mthca_flags | 8UL;
    } else {
    }
  } else {
  }
  err = mthca_setup_hca(mdev);
  if (err == -16 && (mdev->mthca_flags & 8UL) != 0UL) {
    if ((mdev->mthca_flags & 8UL) != 0UL) {
      pci_disable_msix(pdev);
    } else {
    }
    mdev->mthca_flags = mdev->mthca_flags & 0xfffffffffffffff7UL;
    err = mthca_setup_hca(mdev);
  } else {
  }
  if (err != 0) {
    goto err_close;
  } else {
  }
  err = mthca_register_device(mdev);
  if (err != 0) {
    goto err_cleanup;
  } else {
  }
  err = mthca_create_agents(mdev);
  if (err != 0) {
    goto err_unregister;
  } else {
  }
  pci_set_drvdata(pdev, (void *)mdev);
  mdev->hca_type = hca_type;
  mdev->active = 1;
  return (0);
  err_unregister:
  mthca_unregister_device(mdev);
  err_cleanup:
  mthca_cleanup_mcg_table(mdev);
  mthca_cleanup_av_table(mdev);
  mthca_cleanup_qp_table(mdev);
  mthca_cleanup_srq_table(mdev);
  mthca_cleanup_cq_table(mdev);
  mthca_cmd_use_polling(mdev);
  mthca_cleanup_eq_table(mdev);
  mthca_pd_free(mdev, & mdev->driver_pd);
  mthca_cleanup_mr_table(mdev);
  mthca_cleanup_pd_table(mdev);
  mthca_cleanup_uar_table(mdev);
  err_close: ;
  if ((mdev->mthca_flags & 8UL) != 0UL) {
    pci_disable_msix(pdev);
  } else {
  }
  mthca_close_hca(mdev);
  err_cmd:
  mthca_cmd_cleanup(mdev);
  err_free_dev:
  ib_dealloc_device(& mdev->ib_dev);
  err_free_res:
  pci_release_regions(pdev);
  err_disable_pdev:
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, 0);
  return (err);
}
}
static void __mthca_remove_one(struct pci_dev *pdev )
{ struct mthca_dev *mdev ;
  void *tmp ;
  int p ;
  {
  tmp = pci_get_drvdata(pdev);
  mdev = (struct mthca_dev *)tmp;
  if ((unsigned long )mdev != (unsigned long )((struct mthca_dev *)0)) {
    mthca_free_agents(mdev);
    mthca_unregister_device(mdev);
    p = 1;
    goto ldv_25998;
    ldv_25997:
    mthca_CLOSE_IB(mdev, p);
    p = p + 1;
    ldv_25998: ;
    if (mdev->limits.num_ports >= p) {
      goto ldv_25997;
    } else {
      goto ldv_25999;
    }
    ldv_25999:
    mthca_cleanup_mcg_table(mdev);
    mthca_cleanup_av_table(mdev);
    mthca_cleanup_qp_table(mdev);
    mthca_cleanup_srq_table(mdev);
    mthca_cleanup_cq_table(mdev);
    mthca_cmd_use_polling(mdev);
    mthca_cleanup_eq_table(mdev);
    mthca_pd_free(mdev, & mdev->driver_pd);
    mthca_cleanup_mr_table(mdev);
    mthca_cleanup_pd_table(mdev);
    iounmap((void volatile *)mdev->kar);
    mthca_uar_free(mdev, & mdev->driver_uar);
    mthca_cleanup_uar_table(mdev);
    mthca_close_hca(mdev);
    mthca_cmd_cleanup(mdev);
    if ((mdev->mthca_flags & 8UL) != 0UL) {
      pci_disable_msix(pdev);
    } else {
    }
    ib_dealloc_device(& mdev->ib_dev);
    pci_release_regions(pdev);
    pci_disable_device(pdev);
    pci_set_drvdata(pdev, 0);
  } else {
  }
  return;
}
}
int __mthca_restart_one(struct pci_dev *pdev )
{ struct mthca_dev *mdev ;
  int hca_type ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  mdev = (struct mthca_dev *)tmp;
  if ((unsigned long )mdev == (unsigned long )((struct mthca_dev *)0)) {
    return (-19);
  } else {
  }
  hca_type = mdev->hca_type;
  __mthca_remove_one(pdev);
  tmp___0 = __mthca_init_one(pdev, hca_type);
  return (tmp___0);
}
}
static int mthca_init_one(struct pci_dev *pdev , struct pci_device_id const *id )
{ int ret ;
  bool __print_once ;
  char const *tmp ;
  {
  ldv_mutex_lock_6(& mthca_device_mutex);
  if (! __print_once) {
    __print_once = 1;
    printk("\016%s", (char *)(& mthca_version));
  } else {
  }
  if ((unsigned long )id->driver_data > 3UL) {
    tmp = pci_name((struct pci_dev const *)pdev);
    printk("\vib_mthca: %s has invalid driver data %lx\n", tmp, id->driver_data);
    ldv_mutex_unlock_7(& mthca_device_mutex);
    return (-19);
  } else {
  }
  ret = __mthca_init_one(pdev, (int )id->driver_data);
  ldv_mutex_unlock_8(& mthca_device_mutex);
  return (ret);
}
}
static void mthca_remove_one(struct pci_dev *pdev )
{
  {
  ldv_mutex_lock_9(& mthca_device_mutex);
  __mthca_remove_one(pdev);
  ldv_mutex_unlock_10(& mthca_device_mutex);
  return;
}
}
static struct pci_device_id mthca_pci_table[11U] =
  { {5555U, 23108U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6247U, 23108U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5555U, 25208U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {6247U, 25208U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5555U, 25218U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {6247U, 25218U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {5555U, 25204U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {6247U, 25204U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {5555U, 24204U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {6247U, 24204U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver mthca_driver =
     {{0, 0}, "ib_mthca", (struct pci_device_id const *)(& mthca_pci_table), & mthca_init_one,
    & mthca_remove_one, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                              0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                  0, {0, {0, 0}, 0,
                                                                      0, 0UL}}}},
                                                               {0, 0}}};
static void __mthca_check_profile_val(char const *name , int *pval , int pval_default )
{ int old_pval ;
  unsigned long tmp ;
  {
  old_pval = *pval;
  if (old_pval <= 0) {
    *pval = pval_default;
  } else {
    tmp = __roundup_pow_of_two((unsigned long )old_pval);
    *pval = (int )tmp;
  }
  if (*pval != old_pval) {
    printk("\fib_mthca: Invalid value %d for %s in module parameter.\n", old_pval,
           name);
    printk("\fib_mthca: Corrected %s to %d.\n", name, *pval);
  } else {
  }
  return;
}
}
static void mthca_validate_profile(void)
{
  {
  __mthca_check_profile_val("num_qp", & hca_profile.num_qp, 65536);
  __mthca_check_profile_val("rdb_per_qp", & hca_profile.rdb_per_qp, 4);
  __mthca_check_profile_val("num_cq", & hca_profile.num_cq, 65536);
  __mthca_check_profile_val("num_mcg", & hca_profile.num_mcg, 8192);
  __mthca_check_profile_val("num_mpt", & hca_profile.num_mpt, 131072);
  __mthca_check_profile_val("num_mtt", & hca_profile.num_mtt, 1048576);
  __mthca_check_profile_val("num_udav", & hca_profile.num_udav, 32768);
  __mthca_check_profile_val("fmr_reserved_mtts", & hca_profile.fmr_reserved_mtts,
                            262144);
  if (hca_profile.fmr_reserved_mtts >= hca_profile.num_mtt) {
    printk("\fib_mthca: Invalid fmr_reserved_mtts module parameter %d.\n", hca_profile.fmr_reserved_mtts);
    printk("\fib_mthca: (Must be smaller than num_mtt %d)\n", hca_profile.num_mtt);
    hca_profile.fmr_reserved_mtts = hca_profile.num_mtt / 2;
    printk("\fib_mthca: Corrected fmr_reserved_mtts to %d.\n", hca_profile.fmr_reserved_mtts);
  } else {
  }
  if (log_mtts_per_seg <= 0 || log_mtts_per_seg > 5) {
    printk("\fib_mthca: bad log_mtts_per_seg (%d). Using default - %d\n", log_mtts_per_seg,
           3);
    log_mtts_per_seg = 3;
  } else {
  }
  return;
}
}
static int mthca_init(void)
{ int ret ;
  {
  mthca_validate_profile();
  ret = mthca_catas_init();
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = __pci_register_driver(& mthca_driver, & __this_module, "ib_mthca");
  if (ret < 0) {
    mthca_catas_cleanup();
    return (ret);
  } else {
  }
  return (0);
}
}
static void mthca_cleanup(void)
{
  {
  pci_unregister_driver(& mthca_driver);
  mthca_catas_cleanup();
  return;
}
}
struct pci_dev *mthca_driver_group0 ;
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
struct pci_device_id *ldvarg12 ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_1(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_initialize();
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_26085:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_26069;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_26069;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      mthca_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_26074;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = mthca_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_26074;
    default: ;
    goto ldv_26074;
    }
    ldv_26074: ;
  } else {
  }
  goto ldv_26069;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_26069;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_26069;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_1 = mthca_init_one(mthca_driver_group0, (struct pci_device_id const *)ldvarg12);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_26081;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      mthca_remove_one(mthca_driver_group0);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_26081;
    default: ;
    goto ldv_26081;
    }
    ldv_26081: ;
  } else {
  }
  goto ldv_26069;
  default: ;
  goto ldv_26069;
  }
  ldv_26069: ;
  goto ldv_26085;
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mthca_device_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mthca_device_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mthca_device_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mthca_device_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mthca_device_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
__inline static int ffs(int x )
{ int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
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
{ __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
__inline static __u64 __fswab64(__u64 val )
{ __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{ __u16 tmp ;
  {
  tmp = __fswab16((int )*p);
  return (tmp);
}
}
__inline static __u32 __swab32p(__u32 const *p )
{ __u32 tmp ;
  {
  tmp = __fswab32(*p);
  return (tmp);
}
}
__inline static __u64 __swab64p(__u64 const *p )
{ __u64 tmp ;
  {
  tmp = __fswab64(*p);
  return (tmp);
}
}
__inline static __u64 __be64_to_cpup(__be64 const *p )
{ __u64 tmp ;
  {
  tmp = __swab64p(p);
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{ __u32 tmp ;
  {
  tmp = __swab32p(p);
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{ __u16 tmp ;
  {
  tmp = __swab16p(p);
  return (tmp);
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
{ struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
{ long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void __xchg_wrong_size(void) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_hcr_mutex_of_mthca_cmd(struct mutex *lock ) ;
void ldv_mutex_unlock_hcr_mutex_of_mthca_cmd(struct mutex *lock ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{ struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned int readl(void const volatile *addr )
{ unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int __readl(void const volatile *addr )
{ unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)));
  return (ret);
}
}
__inline static void __writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)));
  return;
}
}
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
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
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
extern void schedule(void) ;
__inline static void sema_init(struct semaphore *sem , int val )
{ struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.ldv_2024.head_tail = 0U;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = 0xffffffffffffffffUL;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  return;
}
}
extern void down(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern void __buggy_use_of_MTHCA_GET(void) ;
extern void __buggy_use_of_MTHCA_PUT(void) ;
void mthca_cmd_event(struct mthca_dev *dev , u16 token , u8 status , u64 out_param ) ;
struct mthca_mailbox *mthca_alloc_mailbox(struct mthca_dev *dev , gfp_t gfp_mask ) ;
void mthca_free_mailbox(struct mthca_dev *dev , struct mthca_mailbox *mailbox ) ;
int mthca_INIT_IB(struct mthca_dev *dev , struct mthca_init_ib_param *param , int port ) ;
int mthca_SET_IB(struct mthca_dev *dev , struct mthca_set_ib_param *param , int port ) ;
int mthca_MAP_ICM(struct mthca_dev *dev , struct mthca_icm *icm , u64 virt ) ;
int mthca_MAP_ICM_page(struct mthca_dev *dev , u64 dma_addr , u64 virt ) ;
int mthca_UNMAP_ICM(struct mthca_dev *dev , u64 virt , u32 page_count___0 ) ;
int mthca_SW2HW_MPT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int mpt_index ) ;
int mthca_HW2SW_MPT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int mpt_index ) ;
int mthca_WRITE_MTT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int num_mtt ) ;
int mthca_SYNC_TPT(struct mthca_dev *dev ) ;
int mthca_MAP_EQ(struct mthca_dev *dev , u64 event_mask , int unmap , int eq_num ) ;
int mthca_SW2HW_EQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int eq_num ) ;
int mthca_HW2SW_EQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int eq_num ) ;
int mthca_SW2HW_CQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int cq_num ) ;
int mthca_HW2SW_CQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int cq_num ) ;
int mthca_RESIZE_CQ(struct mthca_dev *dev , int cq_num , u32 lkey , u8 log_size ) ;
int mthca_SW2HW_SRQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int srq_num ) ;
int mthca_HW2SW_SRQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int srq_num ) ;
int mthca_QUERY_SRQ(struct mthca_dev *dev , u32 num , struct mthca_mailbox *mailbox ) ;
int mthca_ARM_SRQ(struct mthca_dev *dev , int srq_num , int limit ) ;
int mthca_MODIFY_QP(struct mthca_dev *dev , enum ib_qp_state cur , enum ib_qp_state next ,
                    u32 num , int is_ee , struct mthca_mailbox *mailbox , u32 optmask ) ;
int mthca_QUERY_QP(struct mthca_dev *dev , u32 num , int is_ee , struct mthca_mailbox *mailbox ) ;
int mthca_CONF_SPECIAL_QP(struct mthca_dev *dev , int type , u32 qpn ) ;
int mthca_MAD_IFC(struct mthca_dev *dev , int ignore_mkey , int ignore_bkey , int port ,
                  struct ib_wc *in_wc , struct ib_grh *in_grh , void *in_mad , void *response_mad ) ;
int mthca_READ_MGM(struct mthca_dev *dev , int index , struct mthca_mailbox *mailbox ) ;
int mthca_WRITE_MGM(struct mthca_dev *dev , int index , struct mthca_mailbox *mailbox ) ;
int mthca_MGID_HASH(struct mthca_dev *dev , struct mthca_mailbox *mailbox , u16 *hash ) ;
__inline static void mthca_icm_first(struct mthca_icm *icm , struct mthca_icm_iter *iter )
{ struct list_head const *__mptr ;
  int tmp___0 ;
  {
  iter->icm = icm;
  tmp___0 = list_empty((struct list_head const *)(& icm->chunk_list));
  if (tmp___0 == 0) {
    __mptr = (struct list_head const *)icm->chunk_list.next;
    iter->chunk = (struct mthca_icm_chunk *)__mptr;
  } else {
    iter->chunk = 0;
  }
  iter->page_idx = 0;
  return;
}
}
__inline static int mthca_icm_last(struct mthca_icm_iter *iter )
{
  {
  return ((unsigned long )iter->chunk == (unsigned long )((struct mthca_icm_chunk *)0));
}
}
__inline static void mthca_icm_next(struct mthca_icm_iter *iter )
{ struct list_head const *__mptr ;
  {
  iter->page_idx = iter->page_idx + 1;
  if (iter->page_idx >= (iter->chunk)->nsg) {
    if ((unsigned long )(iter->chunk)->list.next == (unsigned long )(& (iter->icm)->chunk_list)) {
      iter->chunk = 0;
      return;
    } else {
    }
    __mptr = (struct list_head const *)(iter->chunk)->list.next;
    iter->chunk = (struct mthca_icm_chunk *)__mptr;
    iter->page_idx = 0;
  } else {
  }
  return;
}
}
__inline static dma_addr_t mthca_icm_addr(struct mthca_icm_iter *iter )
{
  {
  return (((struct scatterlist *)(& (iter->chunk)->mem) + (unsigned long )iter->page_idx)->dma_address);
}
}
__inline static unsigned long mthca_icm_size(struct mthca_icm_iter *iter )
{
  {
  return ((unsigned long )((struct scatterlist *)(& (iter->chunk)->mem) + (unsigned long )iter->page_idx)->dma_length);
}
}
static int fw_cmd_doorbell = 0;
__inline static int go_bit(struct mthca_dev *dev )
{ unsigned int tmp ;
  {
  tmp = readl((void const volatile *)dev->hcr + 24U);
  return ((int )tmp & 32768);
}
}
static void mthca_cmd_post_dbell(struct mthca_dev *dev , u64 in_param , u64 out_param ,
                                 u32 in_modifier , u8 op_modifier , u16 op , u16 token )
{ void *ptr ;
  u16 *offs ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  ptr = dev->cmd.dbell_map;
  offs = (u16 *)(& dev->cmd.dbell_offsets);
  tmp = __fswab32((__u32 )(in_param >> 32));
  __writel(tmp, (void volatile *)ptr + (unsigned long )*offs);
  __asm__ volatile ("sfence": : : "memory");
  tmp___0 = __fswab32((__u32 )in_param);
  __writel(tmp___0, (void volatile *)ptr + (unsigned long )*(offs + 1UL));
  __asm__ volatile ("sfence": : : "memory");
  tmp___1 = __fswab32(in_modifier);
  __writel(tmp___1, (void volatile *)ptr + (unsigned long )*(offs + 2UL));
  __asm__ volatile ("sfence": : : "memory");
  tmp___2 = __fswab32((__u32 )(out_param >> 32));
  __writel(tmp___2, (void volatile *)ptr + (unsigned long )*(offs + 3UL));
  __asm__ volatile ("sfence": : : "memory");
  tmp___3 = __fswab32((__u32 )out_param);
  __writel(tmp___3, (void volatile *)ptr + (unsigned long )*(offs + 4UL));
  __asm__ volatile ("sfence": : : "memory");
  tmp___4 = __fswab32((__u32 )((int )token << 16));
  __writel(tmp___4, (void volatile *)ptr + (unsigned long )*(offs + 5UL));
  __asm__ volatile ("sfence": : : "memory");
  tmp___5 = __fswab32((__u32 )((((int )op_modifier << 12) | 12582912) | (int )op));
  __writel(tmp___5, (void volatile *)ptr + (unsigned long )*(offs + 6UL));
  __asm__ volatile ("sfence": : : "memory");
  __writel(0U, (void volatile *)ptr + (unsigned long )*(offs + 7UL));
  __asm__ volatile ("sfence": : : "memory");
  return;
}
}
static int mthca_cmd_post_hcr(struct mthca_dev *dev , u64 in_param , u64 out_param ,
                              u32 in_modifier , u8 op_modifier , u16 op , u16 token ,
                              int event )
{ unsigned long end ;
  long volatile __ret ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  int tmp___11 ;
  __u32 tmp___12 ;
  {
  if (event != 0) {
    end = (unsigned long )jiffies + 2500UL;
    goto ldv_27611;
    ldv_27610:
    __ret = 0L;
    switch (8UL) {
    case 1:
    tmp = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp->state): : "memory",
                         "cc");
    goto ldv_27604;
    case 2:
    tmp___0 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___0->state): : "memory",
                         "cc");
    goto ldv_27604;
    case 4:
    tmp___1 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                         "cc");
    goto ldv_27604;
    case 8:
    tmp___2 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                         "cc");
    goto ldv_27604;
    default:
    __xchg_wrong_size();
    }
    ldv_27604:
    schedule();
    ldv_27611:
    tmp___3 = go_bit(dev);
    if (tmp___3 != 0 && (long )jiffies - (long )end < 0L) {
      goto ldv_27610;
    } else {
      goto ldv_27612;
    }
    ldv_27612: ;
  } else {
  }
  tmp___4 = go_bit(dev);
  if (tmp___4 != 0) {
    return (-11);
  } else {
  }
  tmp___5 = __fswab32((__u32 )(in_param >> 32));
  __writel(tmp___5, (void volatile *)dev->hcr);
  tmp___6 = __fswab32((__u32 )in_param);
  __writel(tmp___6, (void volatile *)dev->hcr + 4U);
  tmp___7 = __fswab32(in_modifier);
  __writel(tmp___7, (void volatile *)dev->hcr + 8U);
  tmp___8 = __fswab32((__u32 )(out_param >> 32));
  __writel(tmp___8, (void volatile *)dev->hcr + 12U);
  tmp___9 = __fswab32((__u32 )out_param);
  __writel(tmp___9, (void volatile *)dev->hcr + 16U);
  tmp___10 = __fswab32((__u32 )((int )token << 16));
  __writel(tmp___10, (void volatile *)dev->hcr + 20U);
  __asm__ volatile ("sfence": : : "memory");
  if (event != 0) {
    tmp___11 = 12582912;
  } else {
    tmp___11 = 8388608;
  }
  tmp___12 = __fswab32((__u32 )((tmp___11 | ((int )op_modifier << 12)) | (int )op));
  __writel(tmp___12, (void volatile *)dev->hcr + 24U);
  return (0);
}
}
static int mthca_cmd_post(struct mthca_dev *dev , u64 in_param , u64 out_param , u32 in_modifier ,
                          u8 op_modifier , u16 op , u16 token , int event )
{ int err ;
  {
  err = 0;
  ldv_mutex_lock_28(& dev->cmd.hcr_mutex);
  if ((event != 0 && (dev->cmd.flags & 2U) != 0U) && fw_cmd_doorbell != 0) {
    mthca_cmd_post_dbell(dev, in_param, out_param, in_modifier, (int )op_modifier,
                         (int )op, (int )token);
  } else {
    err = mthca_cmd_post_hcr(dev, in_param, out_param, in_modifier, (int )op_modifier,
                             (int )op, (int )token, event);
  }
  __asm__ volatile ("": : : "memory");
  ldv_mutex_unlock_29(& dev->cmd.hcr_mutex);
  return (err);
}
}
static int mthca_status_to_errno(u8 status )
{ int trans_table[65U] ;
  {
  trans_table[0] = 0;
  trans_table[1] = -5;
  trans_table[2] = -1;
  trans_table[3] = -22;
  trans_table[4] = -6;
  trans_table[5] = -9;
  trans_table[6] = -16;
  trans_table[7] = -12;
  trans_table[8] = -12;
  trans_table[9] = -9;
  trans_table[10] = -9;
  trans_table[11] = -14;
  trans_table[12] = 0;
  trans_table[13] = 0;
  trans_table[14] = 0;
  trans_table[15] = 0;
  trans_table[16] = -22;
  trans_table[17] = 0;
  trans_table[18] = 0;
  trans_table[19] = 0;
  trans_table[20] = 0;
  trans_table[21] = 0;
  trans_table[22] = 0;
  trans_table[23] = 0;
  trans_table[24] = 0;
  trans_table[25] = 0;
  trans_table[26] = 0;
  trans_table[27] = 0;
  trans_table[28] = 0;
  trans_table[29] = 0;
  trans_table[30] = 0;
  trans_table[31] = 0;
  trans_table[32] = -14;
  trans_table[33] = -16;
  trans_table[34] = -11;
  trans_table[35] = 0;
  trans_table[36] = 0;
  trans_table[37] = 0;
  trans_table[38] = 0;
  trans_table[39] = 0;
  trans_table[40] = 0;
  trans_table[41] = 0;
  trans_table[42] = 0;
  trans_table[43] = 0;
  trans_table[44] = 0;
  trans_table[45] = 0;
  trans_table[46] = 0;
  trans_table[47] = 0;
  trans_table[48] = -74;
  trans_table[49] = 0;
  trans_table[50] = 0;
  trans_table[51] = 0;
  trans_table[52] = 0;
  trans_table[53] = 0;
  trans_table[54] = 0;
  trans_table[55] = 0;
  trans_table[56] = 0;
  trans_table[57] = 0;
  trans_table[58] = 0;
  trans_table[59] = 0;
  trans_table[60] = 0;
  trans_table[61] = 0;
  trans_table[62] = 0;
  trans_table[63] = 0;
  trans_table[64] = -12;
  if ((unsigned int )status > 64U || ((unsigned int )status != 0U && trans_table[(int )status] == 0)) {
    return (-22);
  } else {
  }
  return (trans_table[(int )status]);
}
}
static int mthca_cmd_poll(struct mthca_dev *dev , u64 in_param , u64 *out_param ,
                          int out_is_imm , u32 in_modifier , u8 op_modifier , u16 op ,
                          unsigned long timeout )
{ int err ;
  unsigned long end ;
  u8 status ;
  u64 tmp ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  __u32 tmp___7 ;
  unsigned int tmp___8 ;
  __u32 tmp___9 ;
  unsigned int tmp___10 ;
  __u32 tmp___11 ;
  {
  err = 0;
  down(& dev->cmd.poll_sem);
  if ((unsigned long )out_param != (unsigned long )((u64 *)0)) {
    tmp = *out_param;
  } else {
    tmp = 0ULL;
  }
  err = mthca_cmd_post(dev, in_param, tmp, in_modifier, (int )op_modifier, (int )op,
                       65535, 0);
  if (err != 0) {
    goto out;
  } else {
  }
  end = timeout + (unsigned long )jiffies;
  goto ldv_27659;
  ldv_27658:
  __ret = 0L;
  switch (8UL) {
  case 1:
  tmp___0 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                       "cc");
  goto ldv_27652;
  case 2:
  tmp___1 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_27652;
  case 4:
  tmp___2 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_27652;
  case 8:
  tmp___3 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_27652;
  default:
  __xchg_wrong_size();
  }
  ldv_27652:
  schedule();
  ldv_27659:
  tmp___4 = go_bit(dev);
  if (tmp___4 != 0 && (long )jiffies - (long )end < 0L) {
    goto ldv_27658;
  } else {
    goto ldv_27660;
  }
  ldv_27660:
  tmp___5 = go_bit(dev);
  if (tmp___5 != 0) {
    err = -16;
    goto out;
  } else {
  }
  if (out_is_imm != 0) {
    tmp___6 = __readl((void const volatile *)dev->hcr + 12U);
    tmp___7 = __fswab32(tmp___6);
    tmp___8 = __readl((void const volatile *)dev->hcr + 16U);
    tmp___9 = __fswab32(tmp___8);
    *out_param = ((unsigned long long )tmp___7 << 32) | (unsigned long long )tmp___9;
  } else {
  }
  tmp___10 = __readl((void const volatile *)dev->hcr + 24U);
  tmp___11 = __fswab32(tmp___10);
  status = (u8 )(tmp___11 >> 24);
  if ((unsigned int )status != 0U) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Command %02x completed with status %02x\n",
                 (int )op, (int )status);
    } else {
    }
    err = mthca_status_to_errno((int )status);
  } else {
  }
  out:
  up(& dev->cmd.poll_sem);
  return (err);
}
}
void mthca_cmd_event(struct mthca_dev *dev , u16 token , u8 status , u64 out_param )
{ struct mthca_cmd_context *context ;
  {
  context = dev->cmd.context + (unsigned long )((int )dev->cmd.token_mask & (int )token);
  if ((int )context->token != (int )token) {
    return;
  } else {
  }
  context->result = 0;
  context->status = status;
  context->out_param = out_param;
  complete(& context->done);
  return;
}
}
static int mthca_cmd_wait(struct mthca_dev *dev , u64 in_param , u64 *out_param ,
                          int out_is_imm , u32 in_modifier , u8 op_modifier , u16 op ,
                          unsigned long timeout )
{ int err ;
  struct mthca_cmd_context *context ;
  long tmp ;
  u64 tmp___0 ;
  unsigned long tmp___1 ;
  {
  err = 0;
  down(& dev->cmd.event_sem);
  spin_lock(& dev->cmd.context_lock);
  tmp = ldv__builtin_expect(dev->cmd.free_head < 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_cmd.c.prepared"),
                         "i" (543), "i" (12UL));
    ldv_27680: ;
    goto ldv_27680;
  } else {
  }
  context = dev->cmd.context + (unsigned long )dev->cmd.free_head;
  context->token = (unsigned int )((int )context->token + (int )dev->cmd.token_mask) + 1U;
  dev->cmd.free_head = context->next;
  spin_unlock(& dev->cmd.context_lock);
  init_completion(& context->done);
  if ((unsigned long )out_param != (unsigned long )((u64 *)0)) {
    tmp___0 = *out_param;
  } else {
    tmp___0 = 0ULL;
  }
  err = mthca_cmd_post(dev, in_param, tmp___0, in_modifier, (int )op_modifier, (int )op,
                       (int )context->token, 1);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___1 = wait_for_completion_timeout(& context->done, timeout);
  if (tmp___1 == 0UL) {
    err = -16;
    goto out;
  } else {
  }
  err = context->result;
  if (err != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )context->status != 0U) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Command %02x completed with status %02x\n",
                 (int )op, (int )context->status);
    } else {
    }
    err = mthca_status_to_errno((int )context->status);
  } else {
  }
  if (out_is_imm != 0) {
    *out_param = context->out_param;
  } else {
  }
  out:
  spin_lock(& dev->cmd.context_lock);
  context->next = dev->cmd.free_head;
  dev->cmd.free_head = (int )(((long )context - (long )dev->cmd.context) / 120L);
  spin_unlock(& dev->cmd.context_lock);
  up(& dev->cmd.event_sem);
  return (err);
}
}
static int mthca_cmd_box(struct mthca_dev *dev , u64 in_param , u64 out_param , u32 in_modifier ,
                         u8 op_modifier , u16 op , unsigned long timeout )
{ int tmp ;
  int tmp___0 ;
  {
  if ((int )dev->cmd.flags & 1) {
    tmp = mthca_cmd_wait(dev, in_param, & out_param, 0, in_modifier, (int )op_modifier,
                         (int )op, timeout);
    return (tmp);
  } else {
    tmp___0 = mthca_cmd_poll(dev, in_param, & out_param, 0, in_modifier, (int )op_modifier,
                             (int )op, timeout);
    return (tmp___0);
  }
}
}
static int mthca_cmd(struct mthca_dev *dev , u64 in_param , u32 in_modifier , u8 op_modifier ,
                     u16 op , unsigned long timeout )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, in_param, 0ULL, in_modifier, (int )op_modifier, (int )op,
                      timeout);
  return (tmp);
}
}
static int mthca_cmd_imm(struct mthca_dev *dev , u64 in_param , u64 *out_param , u32 in_modifier ,
                         u8 op_modifier , u16 op , unsigned long timeout )
{ int tmp ;
  int tmp___0 ;
  {
  if ((int )dev->cmd.flags & 1) {
    tmp = mthca_cmd_wait(dev, in_param, out_param, 1, in_modifier, (int )op_modifier,
                         (int )op, timeout);
    return (tmp);
  } else {
    tmp___0 = mthca_cmd_poll(dev, in_param, out_param, 1, in_modifier, (int )op_modifier,
                             (int )op, timeout);
    return (tmp___0);
  }
}
}
int mthca_cmd_init(struct mthca_dev *dev )
{ struct lock_class_key __key ;
  {
  __mutex_init(& dev->cmd.hcr_mutex, "&dev->cmd.hcr_mutex", & __key);
  sema_init(& dev->cmd.poll_sem, 1);
  dev->cmd.flags = 0U;
  dev->hcr = ioremap((dev->pdev)->resource[0].start + 525952ULL, 28UL);
  if ((unsigned long )dev->hcr == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map command register.");
    return (-12);
  } else {
  }
  dev->cmd.pool = dma_pool_create("mthca_cmd", & (dev->pdev)->dev, 4096UL, 4096UL,
                                  0UL);
  if ((unsigned long )dev->cmd.pool == (unsigned long )((struct dma_pool *)0)) {
    iounmap((void volatile *)dev->hcr);
    return (-12);
  } else {
  }
  return (0);
}
}
void mthca_cmd_cleanup(struct mthca_dev *dev )
{
  {
  dma_pool_destroy(dev->cmd.pool);
  iounmap((void volatile *)dev->hcr);
  if ((dev->cmd.flags & 2U) != 0U) {
    iounmap((void volatile *)dev->cmd.dbell_map);
  } else {
  }
  return;
}
}
int mthca_cmd_use_events(struct mthca_dev *dev )
{ int i ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kmalloc((unsigned long )dev->cmd.max_cmds * 120UL, 208U);
  dev->cmd.context = (struct mthca_cmd_context *)tmp;
  if ((unsigned long )dev->cmd.context == (unsigned long )((struct mthca_cmd_context *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_27720;
  ldv_27719:
  (dev->cmd.context + (unsigned long )i)->token = (u16 )i;
  (dev->cmd.context + (unsigned long )i)->next = i + 1;
  i = i + 1;
  ldv_27720: ;
  if (dev->cmd.max_cmds > i) {
    goto ldv_27719;
  } else {
    goto ldv_27721;
  }
  ldv_27721:
  (dev->cmd.context + ((unsigned long )dev->cmd.max_cmds + 0xffffffffffffffffUL))->next = -1;
  dev->cmd.free_head = 0;
  sema_init(& dev->cmd.event_sem, dev->cmd.max_cmds);
  spinlock_check(& dev->cmd.context_lock);
  __raw_spin_lock_init(& dev->cmd.context_lock.ldv_5961.rlock, "&(&dev->cmd.context_lock)->rlock",
                       & __key);
  dev->cmd.token_mask = 1U;
  goto ldv_27724;
  ldv_27723:
  dev->cmd.token_mask = (int )dev->cmd.token_mask << 1U;
  ldv_27724: ;
  if ((int )dev->cmd.token_mask < dev->cmd.max_cmds) {
    goto ldv_27723;
  } else {
    goto ldv_27725;
  }
  ldv_27725:
  dev->cmd.token_mask = (u16 )((int )dev->cmd.token_mask - 1);
  dev->cmd.flags = dev->cmd.flags | 1U;
  down(& dev->cmd.poll_sem);
  return (0);
}
}
void mthca_cmd_use_polling(struct mthca_dev *dev )
{ int i ;
  {
  dev->cmd.flags = dev->cmd.flags & 4294967294U;
  i = 0;
  goto ldv_27731;
  ldv_27730:
  down(& dev->cmd.event_sem);
  i = i + 1;
  ldv_27731: ;
  if (dev->cmd.max_cmds > i) {
    goto ldv_27730;
  } else {
    goto ldv_27732;
  }
  ldv_27732:
  kfree((void const *)dev->cmd.context);
  up(& dev->cmd.poll_sem);
  return;
}
}
struct mthca_mailbox *mthca_alloc_mailbox(struct mthca_dev *dev , gfp_t gfp_mask )
{ struct mthca_mailbox *mailbox ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = kmalloc(16UL, gfp_mask);
  mailbox = (struct mthca_mailbox *)tmp;
  if ((unsigned long )mailbox == (unsigned long )((struct mthca_mailbox *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct mthca_mailbox *)tmp___0);
  } else {
  }
  mailbox->buf = dma_pool_alloc(dev->cmd.pool, gfp_mask, & mailbox->dma);
  if ((unsigned long )mailbox->buf == (unsigned long )((void *)0)) {
    kfree((void const *)mailbox);
    tmp___1 = ERR_PTR(-12L);
    return ((struct mthca_mailbox *)tmp___1);
  } else {
  }
  return (mailbox);
}
}
void mthca_free_mailbox(struct mthca_dev *dev , struct mthca_mailbox *mailbox )
{
  {
  if ((unsigned long )mailbox == (unsigned long )((struct mthca_mailbox *)0)) {
    return;
  } else {
  }
  dma_pool_free(dev->cmd.pool, mailbox->buf, mailbox->dma);
  kfree((void const *)mailbox);
  return;
}
}
int mthca_SYS_EN(struct mthca_dev *dev )
{ u64 out ;
  int ret ;
  char *tmp ;
  {
  ret = mthca_cmd_imm(dev, 0ULL, & out, 0U, 0, 1, 15000UL);
  if (ret == -12) {
    if ((int )out & 1) {
      tmp = (char *)"NVMEM";
    } else {
      tmp = (char *)"DIMM";
    }
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SYS_EN DDR error: syn=%x, sock=%d, sladdr=%d, SPD source=%s\n",
             (int )(out >> 6) & 15, (int )(out >> 4) & 3, (int )(out >> 1) & 7, tmp);
  } else {
  }
  return (ret);
}
}
int mthca_SYS_DIS(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 2, 15000UL);
  return (tmp);
}
}
static int mthca_map_cmd(struct mthca_dev *dev , u16 op , struct mthca_icm *icm ,
                         u64 virt )
{ struct mthca_mailbox *mailbox ;
  struct mthca_icm_iter iter ;
  __be64 *pages ;
  int lg ;
  int nent ;
  int i ;
  int err ;
  int ts ;
  int tc ;
  long tmp ;
  long tmp___0 ;
  dma_addr_t tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  unsigned long tmp___4 ;
  dma_addr_t tmp___5 ;
  __u64 tmp___6 ;
  dma_addr_t tmp___7 ;
  __u64 tmp___8 ;
  unsigned long tmp___9 ;
  int tmp___10 ;
  {
  nent = 0;
  err = 0;
  ts = 0;
  tc = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  memset(mailbox->buf, 0, 4096UL);
  pages = (__be64 *)mailbox->buf;
  mthca_icm_first(icm, & iter);
  goto ldv_27770;
  ldv_27769:
  tmp___1 = mthca_icm_addr(& iter);
  tmp___2 = mthca_icm_size(& iter);
  tmp___3 = ffs((int )((unsigned int )tmp___1 | (unsigned int )tmp___2));
  lg = tmp___3 + -1;
  if (lg <= 11) {
    tmp___4 = mthca_icm_size(& iter);
    tmp___5 = mthca_icm_addr(& iter);
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Got FW area not aligned to %d (%llx/%lx).\n",
             4096, tmp___5, tmp___4);
    err = -22;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_27767;
  ldv_27766: ;
  if (virt != 0xffffffffffffffffULL) {
    tmp___6 = __fswab64(virt);
    *(pages + (unsigned long )(nent * 2)) = tmp___6;
    virt = (u64 )(1 << lg) + virt;
  } else {
  }
  tmp___7 = mthca_icm_addr(& iter);
  tmp___8 = __fswab64((tmp___7 + (dma_addr_t )(i << lg)) | (dma_addr_t )(lg + -12));
  *(pages + ((unsigned long )(nent * 2) + 1UL)) = tmp___8;
  ts = (1 << (lg + -10)) + ts;
  tc = tc + 1;
  nent = nent + 1;
  if (nent == 256) {
    err = mthca_cmd(dev, mailbox->dma, (u32 )nent, 0, (int )op, 15000UL);
    if (err != 0) {
      goto out;
    } else {
    }
    nent = 0;
  } else {
  }
  i = i + 1;
  ldv_27767:
  tmp___9 = mthca_icm_size(& iter);
  if ((unsigned long )i < tmp___9 >> lg) {
    goto ldv_27766;
  } else {
    goto ldv_27768;
  }
  ldv_27768:
  mthca_icm_next(& iter);
  ldv_27770:
  tmp___10 = mthca_icm_last(& iter);
  if (tmp___10 == 0) {
    goto ldv_27769;
  } else {
    goto ldv_27771;
  }
  ldv_27771: ;
  if (nent != 0) {
    err = mthca_cmd(dev, mailbox->dma, (u32 )nent, 0, (int )op, 15000UL);
  } else {
  }
  switch ((int )op) {
  case 4095: ;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Mapped %d chunks/%d KB for FW.\n",
               tc, ts);
  } else {
  }
  goto ldv_27773;
  case 4092: ;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Mapped %d chunks/%d KB for ICM aux.\n",
               tc, ts);
  } else {
  }
  goto ldv_27773;
  case 4090: ;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Mapped %d chunks/%d KB at %llx for ICM.\n",
               tc, ts, virt - (u64 )(ts << 10));
  } else {
  }
  goto ldv_27773;
  }
  ldv_27773: ;
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_MAP_FA(struct mthca_dev *dev , struct mthca_icm *icm )
{ int tmp ;
  {
  tmp = mthca_map_cmd(dev, 4095, icm, 0xffffffffffffffffULL);
  return (tmp);
}
}
int mthca_UNMAP_FA(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 4094, 15000UL);
  return (tmp);
}
}
int mthca_RUN_FW(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 4086, 15000UL);
  return (tmp);
}
}
static void mthca_setup_cmd_doorbells(struct mthca_dev *dev , u64 base )
{ phys_addr_t addr ;
  u16 max_off ;
  int i ;
  u16 _max1 ;
  u16 _max2 ;
  int tmp ;
  unsigned long long tmp___0 ;
  {
  max_off = 0U;
  i = 0;
  goto ldv_27797;
  ldv_27796:
  _max1 = max_off;
  _max2 = dev->cmd.dbell_offsets[i];
  if ((int )_max1 > (int )_max2) {
    tmp = _max1;
  } else {
    tmp = _max2;
  }
  max_off = (u16 )tmp;
  i = i + 1;
  ldv_27797: ;
  if (i <= 7) {
    goto ldv_27796;
  } else {
    goto ldv_27798;
  }
  ldv_27798: ;
  if (((((u64 )max_off + base) ^ base) & 0xfffffffffffff000ULL) != 0ULL) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Firmware doorbell region at 0x%016llx, length 0x%x crosses a page boundary\n",
             base, (int )max_off);
    return;
  } else {
  }
  if ((dev->pdev)->resource[2].start != 0ULL || (dev->pdev)->resource[2].end != (dev->pdev)->resource[2].start) {
    tmp___0 = (dev->pdev)->resource[2].end - (dev->pdev)->resource[2].start;
  } else {
    tmp___0 = 0xffffffffffffffffULL;
  }
  addr = (dev->pdev)->resource[2].start + (tmp___0 & base);
  dev->cmd.dbell_map = ioremap(addr, (unsigned long )max_off + 4UL);
  if ((unsigned long )dev->cmd.dbell_map == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  dev->cmd.flags = dev->cmd.flags | 2U;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Mapped doorbell page for posting FW commands\n");
  } else {
  }
  return;
}
}
int mthca_QUERY_FW(struct mthca_dev *dev )
{ struct mthca_mailbox *mailbox ;
  u32 *outbox ;
  u64 base ;
  u32 tmp ;
  int err ;
  u8 lg ;
  int i ;
  long tmp___0 ;
  long tmp___1 ;
  void *__p ;
  __u16 tmp___2 ;
  __u32 tmp___3 ;
  void *__p___0 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  void *__p___1 ;
  __u16 tmp___7 ;
  __u32 tmp___8 ;
  void *__p___2 ;
  __u16 tmp___9 ;
  __u64 tmp___10 ;
  void *__p___3 ;
  __u16 tmp___11 ;
  __u64 tmp___12 ;
  void *__p___4 ;
  __u16 tmp___13 ;
  __u32 tmp___14 ;
  void *__p___5 ;
  __u32 tmp___15 ;
  __u64 tmp___16 ;
  void *__p___6 ;
  __u32 tmp___17 ;
  __u64 tmp___18 ;
  void *__p___7 ;
  __u16 tmp___19 ;
  __u32 tmp___20 ;
  void *__p___8 ;
  __u16 tmp___21 ;
  __u32 tmp___22 ;
  void *__p___9 ;
  __u16 tmp___23 ;
  __u32 tmp___24 ;
  void *__p___10 ;
  __u16 tmp___25 ;
  __u32 tmp___26 ;
  void *__p___11 ;
  __u16 tmp___27 ;
  __u32 tmp___28 ;
  int tmp___29 ;
  {
  err = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___1 = IS_ERR((void const *)mailbox);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)mailbox);
    return ((int )tmp___0);
  } else {
  }
  outbox = (u32 *)mailbox->buf;
  err = mthca_cmd_box(dev, 0ULL, mailbox->dma, 0U, 0, 4, 15000UL);
  if (err != 0) {
    goto out;
  } else {
  }
  __p = (void *)outbox;
  switch (8UL) {
  case 1:
  dev->fw_ver = (u64 )*((u8 *)__p);
  goto ldv_27812;
  case 2:
  tmp___2 = __be16_to_cpup((__be16 const *)__p);
  dev->fw_ver = (u64 )tmp___2;
  goto ldv_27812;
  case 4:
  tmp___3 = __be32_to_cpup((__be32 const *)__p);
  dev->fw_ver = (u64 )tmp___3;
  goto ldv_27812;
  case 8:
  dev->fw_ver = __be64_to_cpup((__be64 const *)__p);
  goto ldv_27812;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27812:
  dev->fw_ver = ((dev->fw_ver & 281470681743360ULL) | ((dev->fw_ver & 4294901760ULL) >> 16)) | ((dev->fw_ver << 16) & 4294967295ULL);
  __p___0 = (void *)outbox + 15U;
  switch (1UL) {
  case 1:
  lg = *((u8 *)__p___0);
  goto ldv_27819;
  case 2:
  tmp___4 = __be16_to_cpup((__be16 const *)__p___0);
  lg = (u8 )tmp___4;
  goto ldv_27819;
  case 4:
  tmp___5 = __be32_to_cpup((__be32 const *)__p___0);
  lg = (u8 )tmp___5;
  goto ldv_27819;
  case 8:
  tmp___6 = __be64_to_cpup((__be64 const *)__p___0);
  lg = (u8 )tmp___6;
  goto ldv_27819;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27819:
  dev->cmd.max_cmds = 1 << (int )lg;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "FW version %012llx, max commands %d\n",
               dev->fw_ver, dev->cmd.max_cmds);
  } else {
  }
  __p___1 = (void *)outbox + 48U;
  switch (8UL) {
  case 1:
  dev->catas_err.addr = (u64 )*((u8 *)__p___1);
  goto ldv_27826;
  case 2:
  tmp___7 = __be16_to_cpup((__be16 const *)__p___1);
  dev->catas_err.addr = (u64 )tmp___7;
  goto ldv_27826;
  case 4:
  tmp___8 = __be32_to_cpup((__be32 const *)__p___1);
  dev->catas_err.addr = (u64 )tmp___8;
  goto ldv_27826;
  case 8:
  dev->catas_err.addr = __be64_to_cpup((__be64 const *)__p___1);
  goto ldv_27826;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27826:
  __p___2 = (void *)outbox + 56U;
  switch (4UL) {
  case 1:
  dev->catas_err.size = (u32 )*((u8 *)__p___2);
  goto ldv_27833;
  case 2:
  tmp___9 = __be16_to_cpup((__be16 const *)__p___2);
  dev->catas_err.size = (u32 )tmp___9;
  goto ldv_27833;
  case 4:
  dev->catas_err.size = __be32_to_cpup((__be32 const *)__p___2);
  goto ldv_27833;
  case 8:
  tmp___10 = __be64_to_cpup((__be64 const *)__p___2);
  dev->catas_err.size = (u32 )tmp___10;
  goto ldv_27833;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27833: ;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Catastrophic error buffer at 0x%llx, size 0x%x\n",
               dev->catas_err.addr, dev->catas_err.size);
  } else {
  }
  __p___3 = (void *)outbox + 16U;
  switch (4UL) {
  case 1:
  tmp = (u32 )*((u8 *)__p___3);
  goto ldv_27840;
  case 2:
  tmp___11 = __be16_to_cpup((__be16 const *)__p___3);
  tmp = (u32 )tmp___11;
  goto ldv_27840;
  case 4:
  tmp = __be32_to_cpup((__be32 const *)__p___3);
  goto ldv_27840;
  case 8:
  tmp___12 = __be64_to_cpup((__be64 const *)__p___3);
  tmp = (u32 )tmp___12;
  goto ldv_27840;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27840: ;
  if ((int )tmp & 1) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "FW supports commands through doorbells\n");
    } else {
    }
    __p___4 = (void *)outbox + 96U;
    switch (8UL) {
    case 1:
    base = (u64 )*((u8 *)__p___4);
    goto ldv_27847;
    case 2:
    tmp___13 = __be16_to_cpup((__be16 const *)__p___4);
    base = (u64 )tmp___13;
    goto ldv_27847;
    case 4:
    tmp___14 = __be32_to_cpup((__be32 const *)__p___4);
    base = (u64 )tmp___14;
    goto ldv_27847;
    case 8:
    base = __be64_to_cpup((__be64 const *)__p___4);
    goto ldv_27847;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27847:
    i = 0;
    goto ldv_27860;
    ldv_27859:
    __p___5 = (void *)outbox + (unsigned long )((i << 1) + 80);
    switch (2UL) {
    case 1:
    dev->cmd.dbell_offsets[i] = (u16 )*((u8 *)__p___5);
    goto ldv_27854;
    case 2:
    dev->cmd.dbell_offsets[i] = __be16_to_cpup((__be16 const *)__p___5);
    goto ldv_27854;
    case 4:
    tmp___15 = __be32_to_cpup((__be32 const *)__p___5);
    dev->cmd.dbell_offsets[i] = (u16 )tmp___15;
    goto ldv_27854;
    case 8:
    tmp___16 = __be64_to_cpup((__be64 const *)__p___5);
    dev->cmd.dbell_offsets[i] = (u16 )tmp___16;
    goto ldv_27854;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27854:
    i = i + 1;
    ldv_27860: ;
    if (i <= 7) {
      goto ldv_27859;
    } else {
      goto ldv_27861;
    }
    ldv_27861:
    mthca_setup_cmd_doorbells(dev, base);
  } else {
  }
  tmp___29 = mthca_is_memfree(dev);
  if (tmp___29 != 0) {
    __p___6 = (void *)outbox;
    switch (2UL) {
    case 1:
    dev->fw.arbel.fw_pages = (u16 )*((u8 *)__p___6);
    goto ldv_27864;
    case 2:
    dev->fw.arbel.fw_pages = __be16_to_cpup((__be16 const *)__p___6);
    goto ldv_27864;
    case 4:
    tmp___17 = __be32_to_cpup((__be32 const *)__p___6);
    dev->fw.arbel.fw_pages = (u16 )tmp___17;
    goto ldv_27864;
    case 8:
    tmp___18 = __be64_to_cpup((__be64 const *)__p___6);
    dev->fw.arbel.fw_pages = (u16 )tmp___18;
    goto ldv_27864;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27864:
    __p___7 = (void *)outbox + 32U;
    switch (8UL) {
    case 1:
    dev->fw.arbel.clr_int_base = (u64 )*((u8 *)__p___7);
    goto ldv_27871;
    case 2:
    tmp___19 = __be16_to_cpup((__be16 const *)__p___7);
    dev->fw.arbel.clr_int_base = (u64 )tmp___19;
    goto ldv_27871;
    case 4:
    tmp___20 = __be32_to_cpup((__be32 const *)__p___7);
    dev->fw.arbel.clr_int_base = (u64 )tmp___20;
    goto ldv_27871;
    case 8:
    dev->fw.arbel.clr_int_base = __be64_to_cpup((__be64 const *)__p___7);
    goto ldv_27871;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27871:
    __p___8 = (void *)outbox + 64U;
    switch (8UL) {
    case 1:
    dev->fw.arbel.eq_arm_base = (u64 )*((u8 *)__p___8);
    goto ldv_27878;
    case 2:
    tmp___21 = __be16_to_cpup((__be16 const *)__p___8);
    dev->fw.arbel.eq_arm_base = (u64 )tmp___21;
    goto ldv_27878;
    case 4:
    tmp___22 = __be32_to_cpup((__be32 const *)__p___8);
    dev->fw.arbel.eq_arm_base = (u64 )tmp___22;
    goto ldv_27878;
    case 8:
    dev->fw.arbel.eq_arm_base = __be64_to_cpup((__be64 const *)__p___8);
    goto ldv_27878;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27878:
    __p___9 = (void *)outbox + 72U;
    switch (8UL) {
    case 1:
    dev->fw.arbel.eq_set_ci_base = (u64 )*((u8 *)__p___9);
    goto ldv_27885;
    case 2:
    tmp___23 = __be16_to_cpup((__be16 const *)__p___9);
    dev->fw.arbel.eq_set_ci_base = (u64 )tmp___23;
    goto ldv_27885;
    case 4:
    tmp___24 = __be32_to_cpup((__be32 const *)__p___9);
    dev->fw.arbel.eq_set_ci_base = (u64 )tmp___24;
    goto ldv_27885;
    case 8:
    dev->fw.arbel.eq_set_ci_base = __be64_to_cpup((__be64 const *)__p___9);
    goto ldv_27885;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27885: ;
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "FW size %d KB\n",
                 (int )dev->fw.arbel.fw_pages << 2);
    } else {
    }
    dev->fw.arbel.fw_pages = dev->fw.arbel.fw_pages;
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Clear int @ %llx, EQ arm @ %llx, EQ set CI @ %llx\n",
                 dev->fw.arbel.clr_int_base, dev->fw.arbel.eq_arm_base, dev->fw.arbel.eq_set_ci_base);
    } else {
    }
  } else {
    __p___10 = (void *)outbox + 32U;
    switch (8UL) {
    case 1:
    dev->fw.tavor.fw_start = (u64 )*((u8 *)__p___10);
    goto ldv_27892;
    case 2:
    tmp___25 = __be16_to_cpup((__be16 const *)__p___10);
    dev->fw.tavor.fw_start = (u64 )tmp___25;
    goto ldv_27892;
    case 4:
    tmp___26 = __be32_to_cpup((__be32 const *)__p___10);
    dev->fw.tavor.fw_start = (u64 )tmp___26;
    goto ldv_27892;
    case 8:
    dev->fw.tavor.fw_start = __be64_to_cpup((__be64 const *)__p___10);
    goto ldv_27892;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27892:
    __p___11 = (void *)outbox + 40U;
    switch (8UL) {
    case 1:
    dev->fw.tavor.fw_end = (u64 )*((u8 *)__p___11);
    goto ldv_27899;
    case 2:
    tmp___27 = __be16_to_cpup((__be16 const *)__p___11);
    dev->fw.tavor.fw_end = (u64 )tmp___27;
    goto ldv_27899;
    case 4:
    tmp___28 = __be32_to_cpup((__be32 const *)__p___11);
    dev->fw.tavor.fw_end = (u64 )tmp___28;
    goto ldv_27899;
    case 8:
    dev->fw.tavor.fw_end = __be64_to_cpup((__be64 const *)__p___11);
    goto ldv_27899;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_27899: ;
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "FW size %d KB (start %llx, end %llx)\n",
                 (int )((dev->fw.tavor.fw_end - dev->fw.tavor.fw_start) >> 10), dev->fw.tavor.fw_start,
                 dev->fw.tavor.fw_end);
    } else {
    }
  }
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_ENABLE_LAM(struct mthca_dev *dev )
{ struct mthca_mailbox *mailbox ;
  u8 info ;
  u32 *outbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__p ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  void *__p___0 ;
  __u16 tmp___3 ;
  __u32 tmp___4 ;
  void *__p___1 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  __u64 tmp___7 ;
  char *tmp___8 ;
  {
  err = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  outbox = (u32 *)mailbox->buf;
  err = mthca_cmd_box(dev, 0ULL, mailbox->dma, 0U, 0, 4088, 15000UL);
  if (err != 0) {
    goto out;
  } else {
  }
  __p = (void *)outbox;
  switch (8UL) {
  case 1:
  dev->ddr_start = (u64 )*((u8 *)__p);
  goto ldv_27914;
  case 2:
  tmp___1 = __be16_to_cpup((__be16 const *)__p);
  dev->ddr_start = (u64 )tmp___1;
  goto ldv_27914;
  case 4:
  tmp___2 = __be32_to_cpup((__be32 const *)__p);
  dev->ddr_start = (u64 )tmp___2;
  goto ldv_27914;
  case 8:
  dev->ddr_start = __be64_to_cpup((__be64 const *)__p);
  goto ldv_27914;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27914:
  __p___0 = (void *)outbox + 8U;
  switch (8UL) {
  case 1:
  dev->ddr_end = (u64 )*((u8 *)__p___0);
  goto ldv_27921;
  case 2:
  tmp___3 = __be16_to_cpup((__be16 const *)__p___0);
  dev->ddr_end = (u64 )tmp___3;
  goto ldv_27921;
  case 4:
  tmp___4 = __be32_to_cpup((__be32 const *)__p___0);
  dev->ddr_end = (u64 )tmp___4;
  goto ldv_27921;
  case 8:
  dev->ddr_end = __be64_to_cpup((__be64 const *)__p___0);
  goto ldv_27921;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27921:
  __p___1 = (void *)outbox + 19U;
  switch (1UL) {
  case 1:
  info = *((u8 *)__p___1);
  goto ldv_27928;
  case 2:
  tmp___5 = __be16_to_cpup((__be16 const *)__p___1);
  info = (u8 )tmp___5;
  goto ldv_27928;
  case 4:
  tmp___6 = __be32_to_cpup((__be32 const *)__p___1);
  info = (u8 )tmp___6;
  goto ldv_27928;
  case 8:
  tmp___7 = __be64_to_cpup((__be64 const *)__p___1);
  info = (u8 )tmp___7;
  goto ldv_27928;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27928: ;
  if ((((int )info & 16) != 0) ^ ((dev->mthca_flags & 2UL) != 0UL)) {
    if (((int )info & 16) != 0) {
      tmp___8 = (char *)"";
    } else {
      tmp___8 = (char *)"not";
    }
    _dev_info((struct device const *)(& (dev->pdev)->dev), "FW reports that HCA-attached memory is %s hidden; does not match PCI config\n",
              tmp___8);
  } else {
  }
  if (((int )info & 16) != 0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA-attached memory is hidden.\n");
    } else {
    }
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA memory size %d KB (start %llx, end %llx)\n",
               (int )((dev->ddr_end - dev->ddr_start) >> 10), dev->ddr_start, dev->ddr_end);
  } else {
  }
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_DISABLE_LAM(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 2, 15000UL);
  return (tmp);
}
}
int mthca_QUERY_DDR(struct mthca_dev *dev )
{ struct mthca_mailbox *mailbox ;
  u8 info ;
  u32 *outbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__p ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  void *__p___0 ;
  __u16 tmp___3 ;
  __u32 tmp___4 ;
  void *__p___1 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  __u64 tmp___7 ;
  char *tmp___8 ;
  {
  err = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  outbox = (u32 *)mailbox->buf;
  err = mthca_cmd_box(dev, 0ULL, mailbox->dma, 0U, 0, 5, 15000UL);
  if (err != 0) {
    goto out;
  } else {
  }
  __p = (void *)outbox;
  switch (8UL) {
  case 1:
  dev->ddr_start = (u64 )*((u8 *)__p);
  goto ldv_27946;
  case 2:
  tmp___1 = __be16_to_cpup((__be16 const *)__p);
  dev->ddr_start = (u64 )tmp___1;
  goto ldv_27946;
  case 4:
  tmp___2 = __be32_to_cpup((__be32 const *)__p);
  dev->ddr_start = (u64 )tmp___2;
  goto ldv_27946;
  case 8:
  dev->ddr_start = __be64_to_cpup((__be64 const *)__p);
  goto ldv_27946;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27946:
  __p___0 = (void *)outbox + 8U;
  switch (8UL) {
  case 1:
  dev->ddr_end = (u64 )*((u8 *)__p___0);
  goto ldv_27953;
  case 2:
  tmp___3 = __be16_to_cpup((__be16 const *)__p___0);
  dev->ddr_end = (u64 )tmp___3;
  goto ldv_27953;
  case 4:
  tmp___4 = __be32_to_cpup((__be32 const *)__p___0);
  dev->ddr_end = (u64 )tmp___4;
  goto ldv_27953;
  case 8:
  dev->ddr_end = __be64_to_cpup((__be64 const *)__p___0);
  goto ldv_27953;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27953:
  __p___1 = (void *)outbox + 19U;
  switch (1UL) {
  case 1:
  info = *((u8 *)__p___1);
  goto ldv_27960;
  case 2:
  tmp___5 = __be16_to_cpup((__be16 const *)__p___1);
  info = (u8 )tmp___5;
  goto ldv_27960;
  case 4:
  tmp___6 = __be32_to_cpup((__be32 const *)__p___1);
  info = (u8 )tmp___6;
  goto ldv_27960;
  case 8:
  tmp___7 = __be64_to_cpup((__be64 const *)__p___1);
  info = (u8 )tmp___7;
  goto ldv_27960;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27960: ;
  if ((((int )info & 16) != 0) ^ ((dev->mthca_flags & 2UL) != 0UL)) {
    if (((int )info & 16) != 0) {
      tmp___8 = (char *)"";
    } else {
      tmp___8 = (char *)"not";
    }
    _dev_info((struct device const *)(& (dev->pdev)->dev), "FW reports that HCA-attached memory is %s hidden; does not match PCI config\n",
              tmp___8);
  } else {
  }
  if (((int )info & 16) != 0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA-attached memory is hidden.\n");
    } else {
    }
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA memory size %d KB (start %llx, end %llx)\n",
               (int )((dev->ddr_end - dev->ddr_start) >> 10), dev->ddr_start, dev->ddr_end);
  } else {
  }
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_QUERY_DEV_LIM(struct mthca_dev *dev , struct mthca_dev_lim *dev_lim )
{ struct mthca_mailbox *mailbox ;
  u32 *outbox ;
  u8 field ;
  u16 size ;
  u16 stat_rate ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__p ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u64 tmp___3 ;
  void *__p___0 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  void *__p___1 ;
  __u16 tmp___7 ;
  __u32 tmp___8 ;
  __u64 tmp___9 ;
  void *__p___2 ;
  __u16 tmp___10 ;
  __u32 tmp___11 ;
  __u64 tmp___12 ;
  void *__p___3 ;
  __u16 tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  void *__p___4 ;
  __u16 tmp___16 ;
  __u32 tmp___17 ;
  __u64 tmp___18 ;
  void *__p___5 ;
  __u16 tmp___19 ;
  __u32 tmp___20 ;
  __u64 tmp___21 ;
  void *__p___6 ;
  __u16 tmp___22 ;
  __u32 tmp___23 ;
  __u64 tmp___24 ;
  void *__p___7 ;
  __u16 tmp___25 ;
  __u32 tmp___26 ;
  __u64 tmp___27 ;
  void *__p___8 ;
  __u16 tmp___28 ;
  __u32 tmp___29 ;
  __u64 tmp___30 ;
  void *__p___9 ;
  __u16 tmp___31 ;
  __u32 tmp___32 ;
  __u64 tmp___33 ;
  void *__p___10 ;
  __u16 tmp___34 ;
  __u32 tmp___35 ;
  __u64 tmp___36 ;
  void *__p___11 ;
  __u16 tmp___37 ;
  __u32 tmp___38 ;
  __u64 tmp___39 ;
  int tmp___40 ;
  void *__p___12 ;
  __u16 tmp___41 ;
  __u32 tmp___42 ;
  __u64 tmp___43 ;
  void *__p___13 ;
  __u16 tmp___44 ;
  __u32 tmp___45 ;
  __u64 tmp___46 ;
  void *__p___14 ;
  __u16 tmp___47 ;
  __u32 tmp___48 ;
  __u64 tmp___49 ;
  void *__p___15 ;
  __u16 tmp___50 ;
  __u32 tmp___51 ;
  __u64 tmp___52 ;
  void *__p___16 ;
  __u16 tmp___53 ;
  __u32 tmp___54 ;
  __u64 tmp___55 ;
  void *__p___17 ;
  __u16 tmp___56 ;
  __u32 tmp___57 ;
  __u64 tmp___58 ;
  void *__p___18 ;
  __u16 tmp___59 ;
  __u32 tmp___60 ;
  __u64 tmp___61 ;
  void *__p___19 ;
  __u16 tmp___62 ;
  __u32 tmp___63 ;
  __u64 tmp___64 ;
  void *__p___20 ;
  __u16 tmp___65 ;
  __u32 tmp___66 ;
  __u64 tmp___67 ;
  void *__p___21 ;
  __u16 tmp___68 ;
  __u32 tmp___69 ;
  __u64 tmp___70 ;
  void *__p___22 ;
  __u32 tmp___71 ;
  __u64 tmp___72 ;
  void *__p___23 ;
  __u16 tmp___73 ;
  __u32 tmp___74 ;
  __u64 tmp___75 ;
  void *__p___24 ;
  __u16 tmp___76 ;
  __u64 tmp___77 ;
  void *__p___25 ;
  __u16 tmp___78 ;
  __u32 tmp___79 ;
  __u64 tmp___80 ;
  void *__p___26 ;
  __u16 tmp___81 ;
  __u32 tmp___82 ;
  __u64 tmp___83 ;
  void *__p___27 ;
  __u16 tmp___84 ;
  __u32 tmp___85 ;
  __u64 tmp___86 ;
  void *__p___28 ;
  __u16 tmp___87 ;
  __u32 tmp___88 ;
  __u64 tmp___89 ;
  void *__p___29 ;
  __u32 tmp___90 ;
  __u64 tmp___91 ;
  void *__p___30 ;
  __u16 tmp___92 ;
  __u32 tmp___93 ;
  __u64 tmp___94 ;
  void *__p___31 ;
  __u16 tmp___95 ;
  __u32 tmp___96 ;
  __u64 tmp___97 ;
  void *__p___32 ;
  __u16 tmp___98 ;
  __u32 tmp___99 ;
  __u64 tmp___100 ;
  void *__p___33 ;
  __u16 tmp___101 ;
  __u32 tmp___102 ;
  __u64 tmp___103 ;
  void *__p___34 ;
  __u16 tmp___104 ;
  __u32 tmp___105 ;
  __u64 tmp___106 ;
  void *__p___35 ;
  __u16 tmp___107 ;
  __u32 tmp___108 ;
  __u64 tmp___109 ;
  void *__p___36 ;
  __u16 tmp___110 ;
  __u32 tmp___111 ;
  __u64 tmp___112 ;
  void *__p___37 ;
  __u32 tmp___113 ;
  __u64 tmp___114 ;
  void *__p___38 ;
  __u32 tmp___115 ;
  __u64 tmp___116 ;
  void *__p___39 ;
  __u32 tmp___117 ;
  __u64 tmp___118 ;
  void *__p___40 ;
  __u32 tmp___119 ;
  __u64 tmp___120 ;
  void *__p___41 ;
  __u32 tmp___121 ;
  __u64 tmp___122 ;
  void *__p___42 ;
  __u32 tmp___123 ;
  __u64 tmp___124 ;
  void *__p___43 ;
  __u32 tmp___125 ;
  __u64 tmp___126 ;
  void *__p___44 ;
  __u32 tmp___127 ;
  __u64 tmp___128 ;
  void *__p___45 ;
  __u16 tmp___129 ;
  __u32 tmp___130 ;
  __u64 tmp___131 ;
  void *__p___46 ;
  __u16 tmp___132 ;
  __u32 tmp___133 ;
  __u64 tmp___134 ;
  void *__p___47 ;
  __u16 tmp___135 ;
  __u32 tmp___136 ;
  __u64 tmp___137 ;
  void *__p___48 ;
  __u16 tmp___138 ;
  __u32 tmp___139 ;
  __u64 tmp___140 ;
  int __min1 ;
  int __min2 ;
  int tmp___141 ;
  void *__p___49 ;
  __u32 tmp___142 ;
  __u64 tmp___143 ;
  int __min1___0 ;
  int __min2___0 ;
  int tmp___144 ;
  void *__p___50 ;
  __u32 tmp___145 ;
  __u64 tmp___146 ;
  void *__p___51 ;
  __u16 tmp___147 ;
  __u32 tmp___148 ;
  __u64 tmp___149 ;
  void *__p___52 ;
  __u16 tmp___150 ;
  __u32 tmp___151 ;
  __u64 tmp___152 ;
  void *__p___53 ;
  __u16 tmp___153 ;
  __u64 tmp___154 ;
  void *__p___54 ;
  __u16 tmp___155 ;
  __u32 tmp___156 ;
  __u64 tmp___157 ;
  void *__p___55 ;
  __u16 tmp___158 ;
  __u32 tmp___159 ;
  void *__p___56 ;
  __u16 tmp___160 ;
  __u32 tmp___161 ;
  __u64 tmp___162 ;
  void *__p___57 ;
  __u16 tmp___163 ;
  __u32 tmp___164 ;
  __u64 tmp___165 ;
  void *__p___58 ;
  __u16 tmp___166 ;
  __u32 tmp___167 ;
  __u64 tmp___168 ;
  int tmp___169 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  outbox = (u32 *)mailbox->buf;
  err = mthca_cmd_box(dev, 0ULL, mailbox->dma, 0U, 0, 3, 15000UL);
  if (err != 0) {
    goto out;
  } else {
  }
  __p = (void *)outbox + 18U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p);
  goto ldv_27978;
  case 2:
  tmp___1 = __be16_to_cpup((__be16 const *)__p);
  field = (u8 )tmp___1;
  goto ldv_27978;
  case 4:
  tmp___2 = __be32_to_cpup((__be32 const *)__p);
  field = (u8 )tmp___2;
  goto ldv_27978;
  case 8:
  tmp___3 = __be64_to_cpup((__be64 const *)__p);
  field = (u8 )tmp___3;
  goto ldv_27978;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27978:
  dev_lim->reserved_qps = 1 << ((int )field & 15);
  __p___0 = (void *)outbox + 19U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___0);
  goto ldv_27985;
  case 2:
  tmp___4 = __be16_to_cpup((__be16 const *)__p___0);
  field = (u8 )tmp___4;
  goto ldv_27985;
  case 4:
  tmp___5 = __be32_to_cpup((__be32 const *)__p___0);
  field = (u8 )tmp___5;
  goto ldv_27985;
  case 8:
  tmp___6 = __be64_to_cpup((__be64 const *)__p___0);
  field = (u8 )tmp___6;
  goto ldv_27985;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27985:
  dev_lim->max_qps = 1 << ((int )field & 31);
  __p___1 = (void *)outbox + 20U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___1);
  goto ldv_27992;
  case 2:
  tmp___7 = __be16_to_cpup((__be16 const *)__p___1);
  field = (u8 )tmp___7;
  goto ldv_27992;
  case 4:
  tmp___8 = __be32_to_cpup((__be32 const *)__p___1);
  field = (u8 )tmp___8;
  goto ldv_27992;
  case 8:
  tmp___9 = __be64_to_cpup((__be64 const *)__p___1);
  field = (u8 )tmp___9;
  goto ldv_27992;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27992:
  dev_lim->reserved_srqs = 1 << ((int )field >> 4);
  __p___2 = (void *)outbox + 21U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___2);
  goto ldv_27999;
  case 2:
  tmp___10 = __be16_to_cpup((__be16 const *)__p___2);
  field = (u8 )tmp___10;
  goto ldv_27999;
  case 4:
  tmp___11 = __be32_to_cpup((__be32 const *)__p___2);
  field = (u8 )tmp___11;
  goto ldv_27999;
  case 8:
  tmp___12 = __be64_to_cpup((__be64 const *)__p___2);
  field = (u8 )tmp___12;
  goto ldv_27999;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_27999:
  dev_lim->max_srqs = 1 << ((int )field & 31);
  __p___3 = (void *)outbox + 22U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___3);
  goto ldv_28006;
  case 2:
  tmp___13 = __be16_to_cpup((__be16 const *)__p___3);
  field = (u8 )tmp___13;
  goto ldv_28006;
  case 4:
  tmp___14 = __be32_to_cpup((__be32 const *)__p___3);
  field = (u8 )tmp___14;
  goto ldv_28006;
  case 8:
  tmp___15 = __be64_to_cpup((__be64 const *)__p___3);
  field = (u8 )tmp___15;
  goto ldv_28006;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28006:
  dev_lim->reserved_eecs = 1 << ((int )field & 15);
  __p___4 = (void *)outbox + 23U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___4);
  goto ldv_28013;
  case 2:
  tmp___16 = __be16_to_cpup((__be16 const *)__p___4);
  field = (u8 )tmp___16;
  goto ldv_28013;
  case 4:
  tmp___17 = __be32_to_cpup((__be32 const *)__p___4);
  field = (u8 )tmp___17;
  goto ldv_28013;
  case 8:
  tmp___18 = __be64_to_cpup((__be64 const *)__p___4);
  field = (u8 )tmp___18;
  goto ldv_28013;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28013:
  dev_lim->max_eecs = 1 << ((int )field & 31);
  __p___5 = (void *)outbox + 25U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___5);
  goto ldv_28020;
  case 2:
  tmp___19 = __be16_to_cpup((__be16 const *)__p___5);
  field = (u8 )tmp___19;
  goto ldv_28020;
  case 4:
  tmp___20 = __be32_to_cpup((__be32 const *)__p___5);
  field = (u8 )tmp___20;
  goto ldv_28020;
  case 8:
  tmp___21 = __be64_to_cpup((__be64 const *)__p___5);
  field = (u8 )tmp___21;
  goto ldv_28020;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28020:
  dev_lim->max_cq_sz = 1 << (int )field;
  __p___6 = (void *)outbox + 26U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___6);
  goto ldv_28027;
  case 2:
  tmp___22 = __be16_to_cpup((__be16 const *)__p___6);
  field = (u8 )tmp___22;
  goto ldv_28027;
  case 4:
  tmp___23 = __be32_to_cpup((__be32 const *)__p___6);
  field = (u8 )tmp___23;
  goto ldv_28027;
  case 8:
  tmp___24 = __be64_to_cpup((__be64 const *)__p___6);
  field = (u8 )tmp___24;
  goto ldv_28027;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28027:
  dev_lim->reserved_cqs = 1 << ((int )field & 15);
  __p___7 = (void *)outbox + 27U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___7);
  goto ldv_28034;
  case 2:
  tmp___25 = __be16_to_cpup((__be16 const *)__p___7);
  field = (u8 )tmp___25;
  goto ldv_28034;
  case 4:
  tmp___26 = __be32_to_cpup((__be32 const *)__p___7);
  field = (u8 )tmp___26;
  goto ldv_28034;
  case 8:
  tmp___27 = __be64_to_cpup((__be64 const *)__p___7);
  field = (u8 )tmp___27;
  goto ldv_28034;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28034:
  dev_lim->max_cqs = 1 << ((int )field & 31);
  __p___8 = (void *)outbox + 29U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___8);
  goto ldv_28041;
  case 2:
  tmp___28 = __be16_to_cpup((__be16 const *)__p___8);
  field = (u8 )tmp___28;
  goto ldv_28041;
  case 4:
  tmp___29 = __be32_to_cpup((__be32 const *)__p___8);
  field = (u8 )tmp___29;
  goto ldv_28041;
  case 8:
  tmp___30 = __be64_to_cpup((__be64 const *)__p___8);
  field = (u8 )tmp___30;
  goto ldv_28041;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28041:
  dev_lim->max_mpts = 1 << ((int )field & 63);
  __p___9 = (void *)outbox + 30U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___9);
  goto ldv_28048;
  case 2:
  tmp___31 = __be16_to_cpup((__be16 const *)__p___9);
  field = (u8 )tmp___31;
  goto ldv_28048;
  case 4:
  tmp___32 = __be32_to_cpup((__be32 const *)__p___9);
  field = (u8 )tmp___32;
  goto ldv_28048;
  case 8:
  tmp___33 = __be64_to_cpup((__be64 const *)__p___9);
  field = (u8 )tmp___33;
  goto ldv_28048;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28048:
  dev_lim->reserved_eqs = 1 << ((int )field & 15);
  __p___10 = (void *)outbox + 31U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___10);
  goto ldv_28055;
  case 2:
  tmp___34 = __be16_to_cpup((__be16 const *)__p___10);
  field = (u8 )tmp___34;
  goto ldv_28055;
  case 4:
  tmp___35 = __be32_to_cpup((__be32 const *)__p___10);
  field = (u8 )tmp___35;
  goto ldv_28055;
  case 8:
  tmp___36 = __be64_to_cpup((__be64 const *)__p___10);
  field = (u8 )tmp___36;
  goto ldv_28055;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28055:
  dev_lim->max_eqs = 1 << ((int )field & 7);
  __p___11 = (void *)outbox + 32U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___11);
  goto ldv_28062;
  case 2:
  tmp___37 = __be16_to_cpup((__be16 const *)__p___11);
  field = (u8 )tmp___37;
  goto ldv_28062;
  case 4:
  tmp___38 = __be32_to_cpup((__be32 const *)__p___11);
  field = (u8 )tmp___38;
  goto ldv_28062;
  case 8:
  tmp___39 = __be64_to_cpup((__be64 const *)__p___11);
  field = (u8 )tmp___39;
  goto ldv_28062;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28062:
  tmp___40 = mthca_is_memfree(dev);
  if (tmp___40 != 0) {
    dev_lim->reserved_mtts = (int )(((((unsigned long )(1 << ((int )field >> 4)) * 8UL + (unsigned long )dev->limits.mtt_seg_size) - 1UL) & - ((unsigned long )dev->limits.mtt_seg_size)) / (unsigned long )dev->limits.mtt_seg_size);
  } else {
    dev_lim->reserved_mtts = 1 << ((int )field >> 4);
  }
  __p___12 = (void *)outbox + 33U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___12);
  goto ldv_28069;
  case 2:
  tmp___41 = __be16_to_cpup((__be16 const *)__p___12);
  field = (u8 )tmp___41;
  goto ldv_28069;
  case 4:
  tmp___42 = __be32_to_cpup((__be32 const *)__p___12);
  field = (u8 )tmp___42;
  goto ldv_28069;
  case 8:
  tmp___43 = __be64_to_cpup((__be64 const *)__p___12);
  field = (u8 )tmp___43;
  goto ldv_28069;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28069:
  dev_lim->max_mrw_sz = 1 << (int )field;
  __p___13 = (void *)outbox + 34U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___13);
  goto ldv_28076;
  case 2:
  tmp___44 = __be16_to_cpup((__be16 const *)__p___13);
  field = (u8 )tmp___44;
  goto ldv_28076;
  case 4:
  tmp___45 = __be32_to_cpup((__be32 const *)__p___13);
  field = (u8 )tmp___45;
  goto ldv_28076;
  case 8:
  tmp___46 = __be64_to_cpup((__be64 const *)__p___13);
  field = (u8 )tmp___46;
  goto ldv_28076;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28076:
  dev_lim->reserved_mrws = 1 << ((int )field & 15);
  __p___14 = (void *)outbox + 35U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___14);
  goto ldv_28083;
  case 2:
  tmp___47 = __be16_to_cpup((__be16 const *)__p___14);
  field = (u8 )tmp___47;
  goto ldv_28083;
  case 4:
  tmp___48 = __be32_to_cpup((__be32 const *)__p___14);
  field = (u8 )tmp___48;
  goto ldv_28083;
  case 8:
  tmp___49 = __be64_to_cpup((__be64 const *)__p___14);
  field = (u8 )tmp___49;
  goto ldv_28083;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28083:
  dev_lim->max_mtt_seg = 1 << ((int )field & 63);
  __p___15 = (void *)outbox + 41U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___15);
  goto ldv_28090;
  case 2:
  tmp___50 = __be16_to_cpup((__be16 const *)__p___15);
  field = (u8 )tmp___50;
  goto ldv_28090;
  case 4:
  tmp___51 = __be32_to_cpup((__be32 const *)__p___15);
  field = (u8 )tmp___51;
  goto ldv_28090;
  case 8:
  tmp___52 = __be64_to_cpup((__be64 const *)__p___15);
  field = (u8 )tmp___52;
  goto ldv_28090;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28090:
  dev_lim->max_requester_per_qp = 1 << ((int )field & 63);
  __p___16 = (void *)outbox + 43U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___16);
  goto ldv_28097;
  case 2:
  tmp___53 = __be16_to_cpup((__be16 const *)__p___16);
  field = (u8 )tmp___53;
  goto ldv_28097;
  case 4:
  tmp___54 = __be32_to_cpup((__be32 const *)__p___16);
  field = (u8 )tmp___54;
  goto ldv_28097;
  case 8:
  tmp___55 = __be64_to_cpup((__be64 const *)__p___16);
  field = (u8 )tmp___55;
  goto ldv_28097;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28097:
  dev_lim->max_responder_per_qp = 1 << ((int )field & 63);
  __p___17 = (void *)outbox + 47U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___17);
  goto ldv_28104;
  case 2:
  tmp___56 = __be16_to_cpup((__be16 const *)__p___17);
  field = (u8 )tmp___56;
  goto ldv_28104;
  case 4:
  tmp___57 = __be32_to_cpup((__be32 const *)__p___17);
  field = (u8 )tmp___57;
  goto ldv_28104;
  case 8:
  tmp___58 = __be64_to_cpup((__be64 const *)__p___17);
  field = (u8 )tmp___58;
  goto ldv_28104;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28104:
  dev_lim->max_rdma_global = 1 << ((int )field & 63);
  __p___18 = (void *)outbox + 53U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___18);
  goto ldv_28111;
  case 2:
  tmp___59 = __be16_to_cpup((__be16 const *)__p___18);
  field = (u8 )tmp___59;
  goto ldv_28111;
  case 4:
  tmp___60 = __be32_to_cpup((__be32 const *)__p___18);
  field = (u8 )tmp___60;
  goto ldv_28111;
  case 8:
  tmp___61 = __be64_to_cpup((__be64 const *)__p___18);
  field = (u8 )tmp___61;
  goto ldv_28111;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28111:
  dev_lim->local_ca_ack_delay = (int )field & 31;
  __p___19 = (void *)outbox + 54U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___19);
  goto ldv_28118;
  case 2:
  tmp___62 = __be16_to_cpup((__be16 const *)__p___19);
  field = (u8 )tmp___62;
  goto ldv_28118;
  case 4:
  tmp___63 = __be32_to_cpup((__be32 const *)__p___19);
  field = (u8 )tmp___63;
  goto ldv_28118;
  case 8:
  tmp___64 = __be64_to_cpup((__be64 const *)__p___19);
  field = (u8 )tmp___64;
  goto ldv_28118;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28118:
  dev_lim->max_mtu = (int )field >> 4;
  dev_lim->max_port_width = (int )field & 15;
  __p___20 = (void *)outbox + 55U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___20);
  goto ldv_28125;
  case 2:
  tmp___65 = __be16_to_cpup((__be16 const *)__p___20);
  field = (u8 )tmp___65;
  goto ldv_28125;
  case 4:
  tmp___66 = __be32_to_cpup((__be32 const *)__p___20);
  field = (u8 )tmp___66;
  goto ldv_28125;
  case 8:
  tmp___67 = __be64_to_cpup((__be64 const *)__p___20);
  field = (u8 )tmp___67;
  goto ldv_28125;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28125:
  dev_lim->max_vl = (int )field >> 4;
  dev_lim->num_ports = (int )field & 15;
  __p___21 = (void *)outbox + 59U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___21);
  goto ldv_28132;
  case 2:
  tmp___68 = __be16_to_cpup((__be16 const *)__p___21);
  field = (u8 )tmp___68;
  goto ldv_28132;
  case 4:
  tmp___69 = __be32_to_cpup((__be32 const *)__p___21);
  field = (u8 )tmp___69;
  goto ldv_28132;
  case 8:
  tmp___70 = __be64_to_cpup((__be64 const *)__p___21);
  field = (u8 )tmp___70;
  goto ldv_28132;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28132:
  dev_lim->max_gids = 1 << ((int )field & 15);
  __p___22 = (void *)outbox + 60U;
  switch (2UL) {
  case 1:
  stat_rate = (u16 )*((u8 *)__p___22);
  goto ldv_28139;
  case 2:
  stat_rate = __be16_to_cpup((__be16 const *)__p___22);
  goto ldv_28139;
  case 4:
  tmp___71 = __be32_to_cpup((__be32 const *)__p___22);
  stat_rate = (u16 )tmp___71;
  goto ldv_28139;
  case 8:
  tmp___72 = __be64_to_cpup((__be64 const *)__p___22);
  stat_rate = (u16 )tmp___72;
  goto ldv_28139;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28139:
  dev_lim->stat_rate_support = stat_rate;
  __p___23 = (void *)outbox + 63U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___23);
  goto ldv_28146;
  case 2:
  tmp___73 = __be16_to_cpup((__be16 const *)__p___23);
  field = (u8 )tmp___73;
  goto ldv_28146;
  case 4:
  tmp___74 = __be32_to_cpup((__be32 const *)__p___23);
  field = (u8 )tmp___74;
  goto ldv_28146;
  case 8:
  tmp___75 = __be64_to_cpup((__be64 const *)__p___23);
  field = (u8 )tmp___75;
  goto ldv_28146;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28146:
  dev_lim->max_pkeys = 1 << ((int )field & 15);
  __p___24 = (void *)outbox + 68U;
  switch (4UL) {
  case 1:
  dev_lim->flags = (u32 )*((u8 *)__p___24);
  goto ldv_28153;
  case 2:
  tmp___76 = __be16_to_cpup((__be16 const *)__p___24);
  dev_lim->flags = (u32 )tmp___76;
  goto ldv_28153;
  case 4:
  dev_lim->flags = __be32_to_cpup((__be32 const *)__p___24);
  goto ldv_28153;
  case 8:
  tmp___77 = __be64_to_cpup((__be64 const *)__p___24);
  dev_lim->flags = (u32 )tmp___77;
  goto ldv_28153;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28153:
  __p___25 = (void *)outbox + 72U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___25);
  goto ldv_28160;
  case 2:
  tmp___78 = __be16_to_cpup((__be16 const *)__p___25);
  field = (u8 )tmp___78;
  goto ldv_28160;
  case 4:
  tmp___79 = __be32_to_cpup((__be32 const *)__p___25);
  field = (u8 )tmp___79;
  goto ldv_28160;
  case 8:
  tmp___80 = __be64_to_cpup((__be64 const *)__p___25);
  field = (u8 )tmp___80;
  goto ldv_28160;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28160:
  dev_lim->reserved_uars = (int )field >> 4;
  __p___26 = (void *)outbox + 73U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___26);
  goto ldv_28167;
  case 2:
  tmp___81 = __be16_to_cpup((__be16 const *)__p___26);
  field = (u8 )tmp___81;
  goto ldv_28167;
  case 4:
  tmp___82 = __be32_to_cpup((__be32 const *)__p___26);
  field = (u8 )tmp___82;
  goto ldv_28167;
  case 8:
  tmp___83 = __be64_to_cpup((__be64 const *)__p___26);
  field = (u8 )tmp___83;
  goto ldv_28167;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28167:
  dev_lim->uar_size = 1 << (((int )field & 63) + 20);
  __p___27 = (void *)outbox + 75U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___27);
  goto ldv_28174;
  case 2:
  tmp___84 = __be16_to_cpup((__be16 const *)__p___27);
  field = (u8 )tmp___84;
  goto ldv_28174;
  case 4:
  tmp___85 = __be32_to_cpup((__be32 const *)__p___27);
  field = (u8 )tmp___85;
  goto ldv_28174;
  case 8:
  tmp___86 = __be64_to_cpup((__be64 const *)__p___27);
  field = (u8 )tmp___86;
  goto ldv_28174;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28174:
  dev_lim->min_page_sz = 1 << (int )field;
  __p___28 = (void *)outbox + 81U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___28);
  goto ldv_28181;
  case 2:
  tmp___87 = __be16_to_cpup((__be16 const *)__p___28);
  field = (u8 )tmp___87;
  goto ldv_28181;
  case 4:
  tmp___88 = __be32_to_cpup((__be32 const *)__p___28);
  field = (u8 )tmp___88;
  goto ldv_28181;
  case 8:
  tmp___89 = __be64_to_cpup((__be64 const *)__p___28);
  field = (u8 )tmp___89;
  goto ldv_28181;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28181:
  dev_lim->max_sg = (int )field;
  __p___29 = (void *)outbox + 82U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___29);
  goto ldv_28188;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___29);
  goto ldv_28188;
  case 4:
  tmp___90 = __be32_to_cpup((__be32 const *)__p___29);
  size = (u16 )tmp___90;
  goto ldv_28188;
  case 8:
  tmp___91 = __be64_to_cpup((__be64 const *)__p___29);
  size = (u16 )tmp___91;
  goto ldv_28188;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28188:
  dev_lim->max_desc_sz = (int )size;
  __p___30 = (void *)outbox + 97U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___30);
  goto ldv_28195;
  case 2:
  tmp___92 = __be16_to_cpup((__be16 const *)__p___30);
  field = (u8 )tmp___92;
  goto ldv_28195;
  case 4:
  tmp___93 = __be32_to_cpup((__be32 const *)__p___30);
  field = (u8 )tmp___93;
  goto ldv_28195;
  case 8:
  tmp___94 = __be64_to_cpup((__be64 const *)__p___30);
  field = (u8 )tmp___94;
  goto ldv_28195;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28195:
  dev_lim->max_qp_per_mcg = 1 << (int )field;
  __p___31 = (void *)outbox + 98U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___31);
  goto ldv_28202;
  case 2:
  tmp___95 = __be16_to_cpup((__be16 const *)__p___31);
  field = (u8 )tmp___95;
  goto ldv_28202;
  case 4:
  tmp___96 = __be32_to_cpup((__be32 const *)__p___31);
  field = (u8 )tmp___96;
  goto ldv_28202;
  case 8:
  tmp___97 = __be64_to_cpup((__be64 const *)__p___31);
  field = (u8 )tmp___97;
  goto ldv_28202;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28202:
  dev_lim->reserved_mgms = (int )field & 15;
  __p___32 = (void *)outbox + 99U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___32);
  goto ldv_28209;
  case 2:
  tmp___98 = __be16_to_cpup((__be16 const *)__p___32);
  field = (u8 )tmp___98;
  goto ldv_28209;
  case 4:
  tmp___99 = __be32_to_cpup((__be32 const *)__p___32);
  field = (u8 )tmp___99;
  goto ldv_28209;
  case 8:
  tmp___100 = __be64_to_cpup((__be64 const *)__p___32);
  field = (u8 )tmp___100;
  goto ldv_28209;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28209:
  dev_lim->max_mcgs = 1 << (int )field;
  __p___33 = (void *)outbox + 100U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___33);
  goto ldv_28216;
  case 2:
  tmp___101 = __be16_to_cpup((__be16 const *)__p___33);
  field = (u8 )tmp___101;
  goto ldv_28216;
  case 4:
  tmp___102 = __be32_to_cpup((__be32 const *)__p___33);
  field = (u8 )tmp___102;
  goto ldv_28216;
  case 8:
  tmp___103 = __be64_to_cpup((__be64 const *)__p___33);
  field = (u8 )tmp___103;
  goto ldv_28216;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28216:
  dev_lim->reserved_pds = (int )field >> 4;
  __p___34 = (void *)outbox + 101U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___34);
  goto ldv_28223;
  case 2:
  tmp___104 = __be16_to_cpup((__be16 const *)__p___34);
  field = (u8 )tmp___104;
  goto ldv_28223;
  case 4:
  tmp___105 = __be32_to_cpup((__be32 const *)__p___34);
  field = (u8 )tmp___105;
  goto ldv_28223;
  case 8:
  tmp___106 = __be64_to_cpup((__be64 const *)__p___34);
  field = (u8 )tmp___106;
  goto ldv_28223;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28223:
  dev_lim->max_pds = 1 << ((int )field & 63);
  __p___35 = (void *)outbox + 102U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___35);
  goto ldv_28230;
  case 2:
  tmp___107 = __be16_to_cpup((__be16 const *)__p___35);
  field = (u8 )tmp___107;
  goto ldv_28230;
  case 4:
  tmp___108 = __be32_to_cpup((__be32 const *)__p___35);
  field = (u8 )tmp___108;
  goto ldv_28230;
  case 8:
  tmp___109 = __be64_to_cpup((__be64 const *)__p___35);
  field = (u8 )tmp___109;
  goto ldv_28230;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28230:
  dev_lim->reserved_rdds = (int )field >> 4;
  __p___36 = (void *)outbox + 103U;
  switch (1UL) {
  case 1:
  field = *((u8 *)__p___36);
  goto ldv_28237;
  case 2:
  tmp___110 = __be16_to_cpup((__be16 const *)__p___36);
  field = (u8 )tmp___110;
  goto ldv_28237;
  case 4:
  tmp___111 = __be32_to_cpup((__be32 const *)__p___36);
  field = (u8 )tmp___111;
  goto ldv_28237;
  case 8:
  tmp___112 = __be64_to_cpup((__be64 const *)__p___36);
  field = (u8 )tmp___112;
  goto ldv_28237;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28237:
  dev_lim->max_rdds = 1 << ((int )field & 63);
  __p___37 = (void *)outbox + 128U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___37);
  goto ldv_28244;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___37);
  goto ldv_28244;
  case 4:
  tmp___113 = __be32_to_cpup((__be32 const *)__p___37);
  size = (u16 )tmp___113;
  goto ldv_28244;
  case 8:
  tmp___114 = __be64_to_cpup((__be64 const *)__p___37);
  size = (u16 )tmp___114;
  goto ldv_28244;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28244:
  dev_lim->eec_entry_sz = (int )size;
  __p___38 = (void *)outbox + 130U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___38);
  goto ldv_28251;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___38);
  goto ldv_28251;
  case 4:
  tmp___115 = __be32_to_cpup((__be32 const *)__p___38);
  size = (u16 )tmp___115;
  goto ldv_28251;
  case 8:
  tmp___116 = __be64_to_cpup((__be64 const *)__p___38);
  size = (u16 )tmp___116;
  goto ldv_28251;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28251:
  dev_lim->qpc_entry_sz = (int )size;
  __p___39 = (void *)outbox + 132U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___39);
  goto ldv_28258;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___39);
  goto ldv_28258;
  case 4:
  tmp___117 = __be32_to_cpup((__be32 const *)__p___39);
  size = (u16 )tmp___117;
  goto ldv_28258;
  case 8:
  tmp___118 = __be64_to_cpup((__be64 const *)__p___39);
  size = (u16 )tmp___118;
  goto ldv_28258;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28258:
  dev_lim->eeec_entry_sz = (int )size;
  __p___40 = (void *)outbox + 134U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___40);
  goto ldv_28265;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___40);
  goto ldv_28265;
  case 4:
  tmp___119 = __be32_to_cpup((__be32 const *)__p___40);
  size = (u16 )tmp___119;
  goto ldv_28265;
  case 8:
  tmp___120 = __be64_to_cpup((__be64 const *)__p___40);
  size = (u16 )tmp___120;
  goto ldv_28265;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28265:
  dev_lim->eqpc_entry_sz = (int )size;
  __p___41 = (void *)outbox + 136U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___41);
  goto ldv_28272;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___41);
  goto ldv_28272;
  case 4:
  tmp___121 = __be32_to_cpup((__be32 const *)__p___41);
  size = (u16 )tmp___121;
  goto ldv_28272;
  case 8:
  tmp___122 = __be64_to_cpup((__be64 const *)__p___41);
  size = (u16 )tmp___122;
  goto ldv_28272;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28272:
  dev_lim->eqc_entry_sz = (int )size;
  __p___42 = (void *)outbox + 138U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___42);
  goto ldv_28279;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___42);
  goto ldv_28279;
  case 4:
  tmp___123 = __be32_to_cpup((__be32 const *)__p___42);
  size = (u16 )tmp___123;
  goto ldv_28279;
  case 8:
  tmp___124 = __be64_to_cpup((__be64 const *)__p___42);
  size = (u16 )tmp___124;
  goto ldv_28279;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28279:
  dev_lim->cqc_entry_sz = (int )size;
  __p___43 = (void *)outbox + 140U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___43);
  goto ldv_28286;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___43);
  goto ldv_28286;
  case 4:
  tmp___125 = __be32_to_cpup((__be32 const *)__p___43);
  size = (u16 )tmp___125;
  goto ldv_28286;
  case 8:
  tmp___126 = __be64_to_cpup((__be64 const *)__p___43);
  size = (u16 )tmp___126;
  goto ldv_28286;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28286:
  dev_lim->srq_entry_sz = (int )size;
  __p___44 = (void *)outbox + 142U;
  switch (2UL) {
  case 1:
  size = (u16 )*((u8 *)__p___44);
  goto ldv_28293;
  case 2:
  size = __be16_to_cpup((__be16 const *)__p___44);
  goto ldv_28293;
  case 4:
  tmp___127 = __be32_to_cpup((__be32 const *)__p___44);
  size = (u16 )tmp___127;
  goto ldv_28293;
  case 8:
  tmp___128 = __be64_to_cpup((__be64 const *)__p___44);
  size = (u16 )tmp___128;
  goto ldv_28293;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28293:
  dev_lim->uar_scratch_entry_sz = (int )size;
  tmp___169 = mthca_is_memfree(dev);
  if (tmp___169 != 0) {
    __p___45 = (void *)outbox + 16U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___45);
    goto ldv_28300;
    case 2:
    tmp___129 = __be16_to_cpup((__be16 const *)__p___45);
    field = (u8 )tmp___129;
    goto ldv_28300;
    case 4:
    tmp___130 = __be32_to_cpup((__be32 const *)__p___45);
    field = (u8 )tmp___130;
    goto ldv_28300;
    case 8:
    tmp___131 = __be64_to_cpup((__be64 const *)__p___45);
    field = (u8 )tmp___131;
    goto ldv_28300;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28300:
    dev_lim->max_srq_sz = 1 << (int )field;
    __p___46 = (void *)outbox + 17U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___46);
    goto ldv_28307;
    case 2:
    tmp___132 = __be16_to_cpup((__be16 const *)__p___46);
    field = (u8 )tmp___132;
    goto ldv_28307;
    case 4:
    tmp___133 = __be32_to_cpup((__be32 const *)__p___46);
    field = (u8 )tmp___133;
    goto ldv_28307;
    case 8:
    tmp___134 = __be64_to_cpup((__be64 const *)__p___46);
    field = (u8 )tmp___134;
    goto ldv_28307;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28307:
    dev_lim->max_qp_sz = 1 << (int )field;
    __p___47 = (void *)outbox + 51U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___47);
    goto ldv_28314;
    case 2:
    tmp___135 = __be16_to_cpup((__be16 const *)__p___47);
    field = (u8 )tmp___135;
    goto ldv_28314;
    case 4:
    tmp___136 = __be32_to_cpup((__be32 const *)__p___47);
    field = (u8 )tmp___136;
    goto ldv_28314;
    case 8:
    tmp___137 = __be64_to_cpup((__be64 const *)__p___47);
    field = (u8 )tmp___137;
    goto ldv_28314;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28314:
    dev_lim->hca.arbel.resize_srq = (int )field & 1;
    __p___48 = (void *)outbox + 85U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___48);
    goto ldv_28321;
    case 2:
    tmp___138 = __be16_to_cpup((__be16 const *)__p___48);
    field = (u8 )tmp___138;
    goto ldv_28321;
    case 4:
    tmp___139 = __be32_to_cpup((__be32 const *)__p___48);
    field = (u8 )tmp___139;
    goto ldv_28321;
    case 8:
    tmp___140 = __be64_to_cpup((__be64 const *)__p___48);
    field = (u8 )tmp___140;
    goto ldv_28321;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28321:
    __min1 = (int )field;
    __min2 = dev_lim->max_sg;
    if (__min1 < __min2) {
      tmp___141 = __min1;
    } else {
      tmp___141 = __min2;
    }
    dev_lim->max_sg = tmp___141;
    __p___49 = (void *)outbox + 86U;
    switch (2UL) {
    case 1:
    size = (u16 )*((u8 *)__p___49);
    goto ldv_28331;
    case 2:
    size = __be16_to_cpup((__be16 const *)__p___49);
    goto ldv_28331;
    case 4:
    tmp___142 = __be32_to_cpup((__be32 const *)__p___49);
    size = (u16 )tmp___142;
    goto ldv_28331;
    case 8:
    tmp___143 = __be64_to_cpup((__be64 const *)__p___49);
    size = (u16 )tmp___143;
    goto ldv_28331;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28331:
    __min1___0 = (int )size;
    __min2___0 = dev_lim->max_desc_sz;
    if (__min1___0 < __min2___0) {
      tmp___144 = __min1___0;
    } else {
      tmp___144 = __min2___0;
    }
    dev_lim->max_desc_sz = tmp___144;
    __p___50 = (void *)outbox + 146U;
    switch (2UL) {
    case 1:
    size = (u16 )*((u8 *)__p___50);
    goto ldv_28341;
    case 2:
    size = __be16_to_cpup((__be16 const *)__p___50);
    goto ldv_28341;
    case 4:
    tmp___145 = __be32_to_cpup((__be32 const *)__p___50);
    size = (u16 )tmp___145;
    goto ldv_28341;
    case 8:
    tmp___146 = __be64_to_cpup((__be64 const *)__p___50);
    size = (u16 )tmp___146;
    goto ldv_28341;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28341:
    dev_lim->mpt_entry_sz = (int )size;
    __p___51 = (void *)outbox + 150U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___51);
    goto ldv_28348;
    case 2:
    tmp___147 = __be16_to_cpup((__be16 const *)__p___51);
    field = (u8 )tmp___147;
    goto ldv_28348;
    case 4:
    tmp___148 = __be32_to_cpup((__be32 const *)__p___51);
    field = (u8 )tmp___148;
    goto ldv_28348;
    case 8:
    tmp___149 = __be64_to_cpup((__be64 const *)__p___51);
    field = (u8 )tmp___149;
    goto ldv_28348;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28348:
    dev_lim->hca.arbel.max_pbl_sz = 1 << ((int )field & 63);
    __p___52 = (void *)outbox + 151U;
    switch (1UL) {
    case 1:
    dev_lim->hca.arbel.bmme_flags = *((u8 *)__p___52);
    goto ldv_28355;
    case 2:
    tmp___150 = __be16_to_cpup((__be16 const *)__p___52);
    dev_lim->hca.arbel.bmme_flags = (u8 )tmp___150;
    goto ldv_28355;
    case 4:
    tmp___151 = __be32_to_cpup((__be32 const *)__p___52);
    dev_lim->hca.arbel.bmme_flags = (u8 )tmp___151;
    goto ldv_28355;
    case 8:
    tmp___152 = __be64_to_cpup((__be64 const *)__p___52);
    dev_lim->hca.arbel.bmme_flags = (u8 )tmp___152;
    goto ldv_28355;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28355:
    __p___53 = (void *)outbox + 152U;
    switch (4UL) {
    case 1:
    dev_lim->hca.arbel.reserved_lkey = (u32 )*((u8 *)__p___53);
    goto ldv_28362;
    case 2:
    tmp___153 = __be16_to_cpup((__be16 const *)__p___53);
    dev_lim->hca.arbel.reserved_lkey = (u32 )tmp___153;
    goto ldv_28362;
    case 4:
    dev_lim->hca.arbel.reserved_lkey = __be32_to_cpup((__be32 const *)__p___53);
    goto ldv_28362;
    case 8:
    tmp___154 = __be64_to_cpup((__be64 const *)__p___53);
    dev_lim->hca.arbel.reserved_lkey = (u32 )tmp___154;
    goto ldv_28362;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28362:
    __p___54 = (void *)outbox + 159U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___54);
    goto ldv_28369;
    case 2:
    tmp___155 = __be16_to_cpup((__be16 const *)__p___54);
    field = (u8 )tmp___155;
    goto ldv_28369;
    case 4:
    tmp___156 = __be32_to_cpup((__be32 const *)__p___54);
    field = (u8 )tmp___156;
    goto ldv_28369;
    case 8:
    tmp___157 = __be64_to_cpup((__be64 const *)__p___54);
    field = (u8 )tmp___157;
    goto ldv_28369;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28369:
    dev_lim->hca.arbel.lam_required = (int )field & 1;
    __p___55 = (void *)outbox + 160U;
    switch (8UL) {
    case 1:
    dev_lim->hca.arbel.max_icm_sz = (u64 )*((u8 *)__p___55);
    goto ldv_28376;
    case 2:
    tmp___158 = __be16_to_cpup((__be16 const *)__p___55);
    dev_lim->hca.arbel.max_icm_sz = (u64 )tmp___158;
    goto ldv_28376;
    case 4:
    tmp___159 = __be32_to_cpup((__be32 const *)__p___55);
    dev_lim->hca.arbel.max_icm_sz = (u64 )tmp___159;
    goto ldv_28376;
    case 8:
    dev_lim->hca.arbel.max_icm_sz = __be64_to_cpup((__be64 const *)__p___55);
    goto ldv_28376;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28376: ;
    if ((int )dev_lim->hca.arbel.bmme_flags & 1) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Base MM extensions: yes (flags %d, max PBL %d, rsvd L_Key %08x)\n",
                   (int )dev_lim->hca.arbel.bmme_flags, dev_lim->hca.arbel.max_pbl_sz,
                   dev_lim->hca.arbel.reserved_lkey);
      } else
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Base MM extensions: no\n");
      } else {
      }
    } else {
    }
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max ICM size %lld MB\n",
                 dev_lim->hca.arbel.max_icm_sz >> 20);
    } else {
    }
  } else {
    __p___56 = (void *)outbox + 16U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___56);
    goto ldv_28383;
    case 2:
    tmp___160 = __be16_to_cpup((__be16 const *)__p___56);
    field = (u8 )tmp___160;
    goto ldv_28383;
    case 4:
    tmp___161 = __be32_to_cpup((__be32 const *)__p___56);
    field = (u8 )tmp___161;
    goto ldv_28383;
    case 8:
    tmp___162 = __be64_to_cpup((__be64 const *)__p___56);
    field = (u8 )tmp___162;
    goto ldv_28383;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28383:
    dev_lim->max_srq_sz = (1 << (int )field) + -1;
    __p___57 = (void *)outbox + 17U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___57);
    goto ldv_28390;
    case 2:
    tmp___163 = __be16_to_cpup((__be16 const *)__p___57);
    field = (u8 )tmp___163;
    goto ldv_28390;
    case 4:
    tmp___164 = __be32_to_cpup((__be32 const *)__p___57);
    field = (u8 )tmp___164;
    goto ldv_28390;
    case 8:
    tmp___165 = __be64_to_cpup((__be64 const *)__p___57);
    field = (u8 )tmp___165;
    goto ldv_28390;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28390:
    dev_lim->max_qp_sz = (1 << (int )field) + -1;
    __p___58 = (void *)outbox + 39U;
    switch (1UL) {
    case 1:
    field = *((u8 *)__p___58);
    goto ldv_28397;
    case 2:
    tmp___166 = __be16_to_cpup((__be16 const *)__p___58);
    field = (u8 )tmp___166;
    goto ldv_28397;
    case 4:
    tmp___167 = __be32_to_cpup((__be32 const *)__p___58);
    field = (u8 )tmp___167;
    goto ldv_28397;
    case 8:
    tmp___168 = __be64_to_cpup((__be64 const *)__p___58);
    field = (u8 )tmp___168;
    goto ldv_28397;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28397:
    dev_lim->hca.tavor.max_avs = 1 << ((int )field & 63);
    dev_lim->mpt_entry_sz = 64;
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max QPs: %d, reserved QPs: %d, entry size: %d\n",
               dev_lim->max_qps, dev_lim->reserved_qps, dev_lim->qpc_entry_sz);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max SRQs: %d, reserved SRQs: %d, entry size: %d\n",
               dev_lim->max_srqs, dev_lim->reserved_srqs, dev_lim->srq_entry_sz);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max CQs: %d, reserved CQs: %d, entry size: %d\n",
               dev_lim->max_cqs, dev_lim->reserved_cqs, dev_lim->cqc_entry_sz);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max EQs: %d, reserved EQs: %d, entry size: %d\n",
               dev_lim->max_eqs, dev_lim->reserved_eqs, dev_lim->eqc_entry_sz);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "reserved MPTs: %d, reserved MTTs: %d\n",
               dev_lim->reserved_mrws, dev_lim->reserved_mtts);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max PDs: %d, reserved PDs: %d, reserved UARs: %d\n",
               dev_lim->max_pds, dev_lim->reserved_pds, dev_lim->reserved_uars);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max QP/MCG: %d, reserved MGMs: %d\n",
               dev_lim->max_pds, dev_lim->reserved_mgms);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max CQEs: %d, max WQEs: %d, max SRQ WQEs: %d\n",
               dev_lim->max_cq_sz, dev_lim->max_qp_sz, dev_lim->max_srq_sz);
  } else {
  }
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Flags: %08x\n",
               dev_lim->flags);
  } else {
  }
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
static void get_board_id(void *vsd , char *board_id )
{ int i ;
  __u32 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  {
  memset((void *)board_id, 0, 64UL);
  tmp___0 = __be16_to_cpup((__be16 const *)vsd);
  if ((unsigned int )tmp___0 == 1453U) {
    tmp___1 = __be16_to_cpup((__be16 const *)vsd + 222U);
    if ((unsigned int )tmp___1 == 1453U) {
      strlcpy(board_id, (char const *)vsd + 32U, 64UL);
    } else {
      goto _L;
    }
  } else {
    _L:
    i = 0;
    goto ldv_28408;
    ldv_28407:
    tmp = __fswab32(*((u32 *)(vsd + ((unsigned long )(i * 4) + 208UL))));
    *((u32 *)board_id + (unsigned long )i) = tmp;
    i = i + 1;
    ldv_28408: ;
    if (i <= 3) {
      goto ldv_28407;
    } else {
      goto ldv_28409;
    }
    ldv_28409: ;
  }
  return;
}
}
int mthca_QUERY_ADAPTER(struct mthca_dev *dev , struct mthca_adapter *adapter )
{ struct mthca_mailbox *mailbox ;
  u32 *outbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__p ;
  __u16 tmp___1 ;
  __u64 tmp___2 ;
  void *__p___0 ;
  __u16 tmp___3 ;
  __u64 tmp___4 ;
  void *__p___1 ;
  __u16 tmp___5 ;
  __u64 tmp___6 ;
  int tmp___7 ;
  void *__p___2 ;
  __u16 tmp___8 ;
  __u32 tmp___9 ;
  __u64 tmp___10 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  outbox = (u32 *)mailbox->buf;
  err = mthca_cmd_box(dev, 0ULL, mailbox->dma, 0U, 0, 6, 15000UL);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___7 = mthca_is_memfree(dev);
  if (tmp___7 == 0) {
    __p = (void *)outbox;
    switch (4UL) {
    case 1:
    adapter->vendor_id = (u32 )*((u8 *)__p);
    goto ldv_28420;
    case 2:
    tmp___1 = __be16_to_cpup((__be16 const *)__p);
    adapter->vendor_id = (u32 )tmp___1;
    goto ldv_28420;
    case 4:
    adapter->vendor_id = __be32_to_cpup((__be32 const *)__p);
    goto ldv_28420;
    case 8:
    tmp___2 = __be64_to_cpup((__be64 const *)__p);
    adapter->vendor_id = (u32 )tmp___2;
    goto ldv_28420;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28420:
    __p___0 = (void *)outbox + 4U;
    switch (4UL) {
    case 1:
    adapter->device_id = (u32 )*((u8 *)__p___0);
    goto ldv_28427;
    case 2:
    tmp___3 = __be16_to_cpup((__be16 const *)__p___0);
    adapter->device_id = (u32 )tmp___3;
    goto ldv_28427;
    case 4:
    adapter->device_id = __be32_to_cpup((__be32 const *)__p___0);
    goto ldv_28427;
    case 8:
    tmp___4 = __be64_to_cpup((__be64 const *)__p___0);
    adapter->device_id = (u32 )tmp___4;
    goto ldv_28427;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28427:
    __p___1 = (void *)outbox + 8U;
    switch (4UL) {
    case 1:
    adapter->revision_id = (u32 )*((u8 *)__p___1);
    goto ldv_28434;
    case 2:
    tmp___5 = __be16_to_cpup((__be16 const *)__p___1);
    adapter->revision_id = (u32 )tmp___5;
    goto ldv_28434;
    case 4:
    adapter->revision_id = __be32_to_cpup((__be32 const *)__p___1);
    goto ldv_28434;
    case 8:
    tmp___6 = __be64_to_cpup((__be64 const *)__p___1);
    adapter->revision_id = (u32 )tmp___6;
    goto ldv_28434;
    default:
    __buggy_use_of_MTHCA_GET();
    }
    ldv_28434: ;
  } else {
  }
  __p___2 = (void *)outbox + 16U;
  switch (1UL) {
  case 1:
  adapter->inta_pin = *((u8 *)__p___2);
  goto ldv_28441;
  case 2:
  tmp___8 = __be16_to_cpup((__be16 const *)__p___2);
  adapter->inta_pin = (u8 )tmp___8;
  goto ldv_28441;
  case 4:
  tmp___9 = __be32_to_cpup((__be32 const *)__p___2);
  adapter->inta_pin = (u8 )tmp___9;
  goto ldv_28441;
  case 8:
  tmp___10 = __be64_to_cpup((__be64 const *)__p___2);
  adapter->inta_pin = (u8 )tmp___10;
  goto ldv_28441;
  default:
  __buggy_use_of_MTHCA_GET();
  }
  ldv_28441:
  get_board_id((void *)outbox + 8U, (char *)(& adapter->board_id));
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_INIT_HCA(struct mthca_dev *dev , struct mthca_init_hca_param *param )
{ struct mthca_mailbox *mailbox ;
  __be32 *inbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__d ;
  void *__d___0 ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u64 tmp___3 ;
  void *__d___1 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  void *__d___2 ;
  __u16 tmp___7 ;
  __u32 tmp___8 ;
  __u64 tmp___9 ;
  void *__d___3 ;
  __u16 tmp___10 ;
  __u32 tmp___11 ;
  __u64 tmp___12 ;
  void *__d___4 ;
  __u16 tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  void *__d___5 ;
  __u16 tmp___16 ;
  __u32 tmp___17 ;
  __u64 tmp___18 ;
  void *__d___6 ;
  __u16 tmp___19 ;
  __u32 tmp___20 ;
  __u64 tmp___21 ;
  void *__d___7 ;
  __u16 tmp___22 ;
  __u32 tmp___23 ;
  __u64 tmp___24 ;
  void *__d___8 ;
  __u16 tmp___25 ;
  __u32 tmp___26 ;
  __u64 tmp___27 ;
  void *__d___9 ;
  __u16 tmp___28 ;
  __u32 tmp___29 ;
  __u64 tmp___30 ;
  void *__d___10 ;
  __u16 tmp___31 ;
  __u32 tmp___32 ;
  __u64 tmp___33 ;
  void *__d___11 ;
  __u16 tmp___34 ;
  __u32 tmp___35 ;
  __u64 tmp___36 ;
  void *__d___12 ;
  __u16 tmp___37 ;
  __u32 tmp___38 ;
  __u64 tmp___39 ;
  void *__d___13 ;
  __u16 tmp___40 ;
  __u32 tmp___41 ;
  __u64 tmp___42 ;
  void *__d___14 ;
  __u16 tmp___43 ;
  __u32 tmp___44 ;
  __u64 tmp___45 ;
  void *__d___15 ;
  __u16 tmp___46 ;
  __u32 tmp___47 ;
  __u64 tmp___48 ;
  void *__d___16 ;
  __u16 tmp___49 ;
  __u32 tmp___50 ;
  __u64 tmp___51 ;
  void *__d___17 ;
  __u16 tmp___52 ;
  __u32 tmp___53 ;
  __u64 tmp___54 ;
  void *__d___18 ;
  __u16 tmp___55 ;
  __u32 tmp___56 ;
  __u64 tmp___57 ;
  int tmp___58 ;
  void *__d___19 ;
  __u16 tmp___59 ;
  __u32 tmp___60 ;
  __u64 tmp___61 ;
  void *__d___20 ;
  __u16 tmp___62 ;
  __u32 tmp___63 ;
  __u64 tmp___64 ;
  u8 uar_page_sz ;
  void *__d___21 ;
  __u16 tmp___65 ;
  __u32 tmp___66 ;
  __u64 tmp___67 ;
  void *__d___22 ;
  __u16 tmp___68 ;
  __u32 tmp___69 ;
  __u64 tmp___70 ;
  void *__d___23 ;
  __u16 tmp___71 ;
  __u32 tmp___72 ;
  __u64 tmp___73 ;
  void *__d___24 ;
  __u16 tmp___74 ;
  __u32 tmp___75 ;
  __u64 tmp___76 ;
  void *__d___25 ;
  __u16 tmp___77 ;
  __u32 tmp___78 ;
  __u64 tmp___79 ;
  int tmp___80 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  inbox = (__be32 *)mailbox->buf;
  memset((void *)inbox, 0, 512UL);
  if ((dev->mthca_flags & 256UL) != 0UL) {
    __d = (void *)inbox + 12U;
    switch (4UL) {
    case 1:
    *((u8 *)__d) = 1U;
    goto ldv_28455;
    case 2:
    *((__be16 *)__d) = 256U;
    goto ldv_28455;
    case 4:
    *((__be32 *)__d) = 16777216U;
    goto ldv_28455;
    case 8:
    *((__be64 *)__d) = 72057594037927936ULL;
    goto ldv_28455;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28455: ;
  } else {
  }
  *(inbox + 5UL) = *(inbox + 5UL) & 4261412863U;
  *(inbox + 5UL) = *(inbox + 5UL) | 16777216U;
  if ((dev->device_cap_flags & 262144UL) != 0UL) {
    *(inbox + 5UL) = *(inbox + 5UL) | 939524096U;
  } else {
  }
  __d___0 = (void *)inbox + 48U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___0) = (u8 )param->qpc_base;
  goto ldv_28462;
  case 2:
  tmp___1 = __fswab16((int )((__u16 )param->qpc_base));
  *((__be16 *)__d___0) = tmp___1;
  goto ldv_28462;
  case 4:
  tmp___2 = __fswab32((__u32 )param->qpc_base);
  *((__be32 *)__d___0) = tmp___2;
  goto ldv_28462;
  case 8:
  tmp___3 = __fswab64(param->qpc_base);
  *((__be64 *)__d___0) = tmp___3;
  goto ldv_28462;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28462:
  __d___1 = (void *)inbox + 55U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___1) = param->log_num_qps;
  goto ldv_28469;
  case 2:
  tmp___4 = __fswab16((int )param->log_num_qps);
  *((__be16 *)__d___1) = tmp___4;
  goto ldv_28469;
  case 4:
  tmp___5 = __fswab32((__u32 )param->log_num_qps);
  *((__be32 *)__d___1) = tmp___5;
  goto ldv_28469;
  case 8:
  tmp___6 = __fswab64((__u64 )param->log_num_qps);
  *((__be64 *)__d___1) = tmp___6;
  goto ldv_28469;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28469:
  __d___2 = (void *)inbox + 64U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___2) = (u8 )param->eec_base;
  goto ldv_28476;
  case 2:
  tmp___7 = __fswab16((int )((__u16 )param->eec_base));
  *((__be16 *)__d___2) = tmp___7;
  goto ldv_28476;
  case 4:
  tmp___8 = __fswab32((__u32 )param->eec_base);
  *((__be32 *)__d___2) = tmp___8;
  goto ldv_28476;
  case 8:
  tmp___9 = __fswab64(param->eec_base);
  *((__be64 *)__d___2) = tmp___9;
  goto ldv_28476;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28476:
  __d___3 = (void *)inbox + 71U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___3) = param->log_num_eecs;
  goto ldv_28483;
  case 2:
  tmp___10 = __fswab16((int )param->log_num_eecs);
  *((__be16 *)__d___3) = tmp___10;
  goto ldv_28483;
  case 4:
  tmp___11 = __fswab32((__u32 )param->log_num_eecs);
  *((__be32 *)__d___3) = tmp___11;
  goto ldv_28483;
  case 8:
  tmp___12 = __fswab64((__u64 )param->log_num_eecs);
  *((__be64 *)__d___3) = tmp___12;
  goto ldv_28483;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28483:
  __d___4 = (void *)inbox + 72U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___4) = (u8 )param->srqc_base;
  goto ldv_28490;
  case 2:
  tmp___13 = __fswab16((int )((__u16 )param->srqc_base));
  *((__be16 *)__d___4) = tmp___13;
  goto ldv_28490;
  case 4:
  tmp___14 = __fswab32((__u32 )param->srqc_base);
  *((__be32 *)__d___4) = tmp___14;
  goto ldv_28490;
  case 8:
  tmp___15 = __fswab64(param->srqc_base);
  *((__be64 *)__d___4) = tmp___15;
  goto ldv_28490;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28490:
  __d___5 = (void *)inbox + 79U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___5) = param->log_num_srqs;
  goto ldv_28497;
  case 2:
  tmp___16 = __fswab16((int )param->log_num_srqs);
  *((__be16 *)__d___5) = tmp___16;
  goto ldv_28497;
  case 4:
  tmp___17 = __fswab32((__u32 )param->log_num_srqs);
  *((__be32 *)__d___5) = tmp___17;
  goto ldv_28497;
  case 8:
  tmp___18 = __fswab64((__u64 )param->log_num_srqs);
  *((__be64 *)__d___5) = tmp___18;
  goto ldv_28497;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28497:
  __d___6 = (void *)inbox + 80U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___6) = (u8 )param->cqc_base;
  goto ldv_28504;
  case 2:
  tmp___19 = __fswab16((int )((__u16 )param->cqc_base));
  *((__be16 *)__d___6) = tmp___19;
  goto ldv_28504;
  case 4:
  tmp___20 = __fswab32((__u32 )param->cqc_base);
  *((__be32 *)__d___6) = tmp___20;
  goto ldv_28504;
  case 8:
  tmp___21 = __fswab64(param->cqc_base);
  *((__be64 *)__d___6) = tmp___21;
  goto ldv_28504;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28504:
  __d___7 = (void *)inbox + 87U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___7) = param->log_num_cqs;
  goto ldv_28511;
  case 2:
  tmp___22 = __fswab16((int )param->log_num_cqs);
  *((__be16 *)__d___7) = tmp___22;
  goto ldv_28511;
  case 4:
  tmp___23 = __fswab32((__u32 )param->log_num_cqs);
  *((__be32 *)__d___7) = tmp___23;
  goto ldv_28511;
  case 8:
  tmp___24 = __fswab64((__u64 )param->log_num_cqs);
  *((__be64 *)__d___7) = tmp___24;
  goto ldv_28511;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28511:
  __d___8 = (void *)inbox + 96U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___8) = (u8 )param->eqpc_base;
  goto ldv_28518;
  case 2:
  tmp___25 = __fswab16((int )((__u16 )param->eqpc_base));
  *((__be16 *)__d___8) = tmp___25;
  goto ldv_28518;
  case 4:
  tmp___26 = __fswab32((__u32 )param->eqpc_base);
  *((__be32 *)__d___8) = tmp___26;
  goto ldv_28518;
  case 8:
  tmp___27 = __fswab64(param->eqpc_base);
  *((__be64 *)__d___8) = tmp___27;
  goto ldv_28518;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28518:
  __d___9 = (void *)inbox + 112U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___9) = (u8 )param->eeec_base;
  goto ldv_28525;
  case 2:
  tmp___28 = __fswab16((int )((__u16 )param->eeec_base));
  *((__be16 *)__d___9) = tmp___28;
  goto ldv_28525;
  case 4:
  tmp___29 = __fswab32((__u32 )param->eeec_base);
  *((__be32 *)__d___9) = tmp___29;
  goto ldv_28525;
  case 8:
  tmp___30 = __fswab64(param->eeec_base);
  *((__be64 *)__d___9) = tmp___30;
  goto ldv_28525;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28525:
  __d___10 = (void *)inbox + 128U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___10) = (u8 )param->eqc_base;
  goto ldv_28532;
  case 2:
  tmp___31 = __fswab16((int )((__u16 )param->eqc_base));
  *((__be16 *)__d___10) = tmp___31;
  goto ldv_28532;
  case 4:
  tmp___32 = __fswab32((__u32 )param->eqc_base);
  *((__be32 *)__d___10) = tmp___32;
  goto ldv_28532;
  case 8:
  tmp___33 = __fswab64(param->eqc_base);
  *((__be64 *)__d___10) = tmp___33;
  goto ldv_28532;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28532:
  __d___11 = (void *)inbox + 135U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___11) = param->log_num_eqs;
  goto ldv_28539;
  case 2:
  tmp___34 = __fswab16((int )param->log_num_eqs);
  *((__be16 *)__d___11) = tmp___34;
  goto ldv_28539;
  case 4:
  tmp___35 = __fswab32((__u32 )param->log_num_eqs);
  *((__be32 *)__d___11) = tmp___35;
  goto ldv_28539;
  case 8:
  tmp___36 = __fswab64((__u64 )param->log_num_eqs);
  *((__be64 *)__d___11) = tmp___36;
  goto ldv_28539;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28539:
  __d___12 = (void *)inbox + 144U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___12) = (u8 )param->rdb_base;
  goto ldv_28546;
  case 2:
  tmp___37 = __fswab16((int )((__u16 )param->rdb_base));
  *((__be16 *)__d___12) = tmp___37;
  goto ldv_28546;
  case 4:
  tmp___38 = __fswab32((__u32 )param->rdb_base);
  *((__be32 *)__d___12) = tmp___38;
  goto ldv_28546;
  case 8:
  tmp___39 = __fswab64(param->rdb_base);
  *((__be64 *)__d___12) = tmp___39;
  goto ldv_28546;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28546:
  __d___13 = (void *)inbox + 192U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___13) = (u8 )param->mc_base;
  goto ldv_28553;
  case 2:
  tmp___40 = __fswab16((int )((__u16 )param->mc_base));
  *((__be16 *)__d___13) = tmp___40;
  goto ldv_28553;
  case 4:
  tmp___41 = __fswab32((__u32 )param->mc_base);
  *((__be32 *)__d___13) = tmp___41;
  goto ldv_28553;
  case 8:
  tmp___42 = __fswab64(param->mc_base);
  *((__be64 *)__d___13) = tmp___42;
  goto ldv_28553;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28553:
  __d___14 = (void *)inbox + 210U;
  switch (2UL) {
  case 1:
  *((u8 *)__d___14) = (u8 )param->log_mc_entry_sz;
  goto ldv_28560;
  case 2:
  tmp___43 = __fswab16((int )param->log_mc_entry_sz);
  *((__be16 *)__d___14) = tmp___43;
  goto ldv_28560;
  case 4:
  tmp___44 = __fswab32((__u32 )param->log_mc_entry_sz);
  *((__be32 *)__d___14) = tmp___44;
  goto ldv_28560;
  case 8:
  tmp___45 = __fswab64((__u64 )param->log_mc_entry_sz);
  *((__be64 *)__d___14) = tmp___45;
  goto ldv_28560;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28560:
  __d___15 = (void *)inbox + 214U;
  switch (2UL) {
  case 1:
  *((u8 *)__d___15) = (u8 )param->mc_hash_sz;
  goto ldv_28567;
  case 2:
  tmp___46 = __fswab16((int )param->mc_hash_sz);
  *((__be16 *)__d___15) = tmp___46;
  goto ldv_28567;
  case 4:
  tmp___47 = __fswab32((__u32 )param->mc_hash_sz);
  *((__be32 *)__d___15) = tmp___47;
  goto ldv_28567;
  case 8:
  tmp___48 = __fswab64((__u64 )param->mc_hash_sz);
  *((__be64 *)__d___15) = tmp___48;
  goto ldv_28567;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28567:
  __d___16 = (void *)inbox + 219U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___16) = param->log_mc_table_sz;
  goto ldv_28574;
  case 2:
  tmp___49 = __fswab16((int )param->log_mc_table_sz);
  *((__be16 *)__d___16) = tmp___49;
  goto ldv_28574;
  case 4:
  tmp___50 = __fswab32((__u32 )param->log_mc_table_sz);
  *((__be32 *)__d___16) = tmp___50;
  goto ldv_28574;
  case 8:
  tmp___51 = __fswab64((__u64 )param->log_mc_table_sz);
  *((__be64 *)__d___16) = tmp___51;
  goto ldv_28574;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28574:
  __d___17 = (void *)inbox + 240U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___17) = (u8 )param->mpt_base;
  goto ldv_28581;
  case 2:
  tmp___52 = __fswab16((int )((__u16 )param->mpt_base));
  *((__be16 *)__d___17) = tmp___52;
  goto ldv_28581;
  case 4:
  tmp___53 = __fswab32((__u32 )param->mpt_base);
  *((__be32 *)__d___17) = tmp___53;
  goto ldv_28581;
  case 8:
  tmp___54 = __fswab64(param->mpt_base);
  *((__be64 *)__d___17) = tmp___54;
  goto ldv_28581;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28581:
  tmp___58 = mthca_is_memfree(dev);
  if (tmp___58 == 0) {
    __d___18 = (void *)inbox + 249U;
    switch (1UL) {
    case 1:
    *((u8 *)__d___18) = param->mtt_seg_sz;
    goto ldv_28588;
    case 2:
    tmp___55 = __fswab16((int )param->mtt_seg_sz);
    *((__be16 *)__d___18) = tmp___55;
    goto ldv_28588;
    case 4:
    tmp___56 = __fswab32((__u32 )param->mtt_seg_sz);
    *((__be32 *)__d___18) = tmp___56;
    goto ldv_28588;
    case 8:
    tmp___57 = __fswab64((__u64 )param->mtt_seg_sz);
    *((__be64 *)__d___18) = tmp___57;
    goto ldv_28588;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28588: ;
  } else {
  }
  __d___19 = (void *)inbox + 251U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___19) = param->log_mpt_sz;
  goto ldv_28595;
  case 2:
  tmp___59 = __fswab16((int )param->log_mpt_sz);
  *((__be16 *)__d___19) = tmp___59;
  goto ldv_28595;
  case 4:
  tmp___60 = __fswab32((__u32 )param->log_mpt_sz);
  *((__be32 *)__d___19) = tmp___60;
  goto ldv_28595;
  case 8:
  tmp___61 = __fswab64((__u64 )param->log_mpt_sz);
  *((__be64 *)__d___19) = tmp___61;
  goto ldv_28595;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28595:
  __d___20 = (void *)inbox + 256U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___20) = (u8 )param->mtt_base;
  goto ldv_28602;
  case 2:
  tmp___62 = __fswab16((int )((__u16 )param->mtt_base));
  *((__be16 *)__d___20) = tmp___62;
  goto ldv_28602;
  case 4:
  tmp___63 = __fswab32((__u32 )param->mtt_base);
  *((__be32 *)__d___20) = tmp___63;
  goto ldv_28602;
  case 8:
  tmp___64 = __fswab64(param->mtt_base);
  *((__be64 *)__d___20) = tmp___64;
  goto ldv_28602;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28602:
  uar_page_sz = 0U;
  __d___21 = (void *)inbox + 299U;
  switch (1UL) {
  case 1:
  *((u8 *)__d___21) = uar_page_sz;
  goto ldv_28610;
  case 2:
  tmp___65 = __fswab16((int )uar_page_sz);
  *((__be16 *)__d___21) = tmp___65;
  goto ldv_28610;
  case 4:
  tmp___66 = __fswab32((__u32 )uar_page_sz);
  *((__be32 *)__d___21) = tmp___66;
  goto ldv_28610;
  case 8:
  tmp___67 = __fswab64((__u64 )uar_page_sz);
  *((__be64 *)__d___21) = tmp___67;
  goto ldv_28610;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28610:
  __d___22 = (void *)inbox + 304U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___22) = (u8 )param->uar_scratch_base;
  goto ldv_28617;
  case 2:
  tmp___68 = __fswab16((int )((__u16 )param->uar_scratch_base));
  *((__be16 *)__d___22) = tmp___68;
  goto ldv_28617;
  case 4:
  tmp___69 = __fswab32((__u32 )param->uar_scratch_base);
  *((__be32 *)__d___22) = tmp___69;
  goto ldv_28617;
  case 8:
  tmp___70 = __fswab64(param->uar_scratch_base);
  *((__be64 *)__d___22) = tmp___70;
  goto ldv_28617;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28617:
  tmp___80 = mthca_is_memfree(dev);
  if (tmp___80 != 0) {
    __d___23 = (void *)inbox + 297U;
    switch (1UL) {
    case 1:
    *((u8 *)__d___23) = param->log_uarc_sz;
    goto ldv_28624;
    case 2:
    tmp___71 = __fswab16((int )param->log_uarc_sz);
    *((__be16 *)__d___23) = tmp___71;
    goto ldv_28624;
    case 4:
    tmp___72 = __fswab32((__u32 )param->log_uarc_sz);
    *((__be32 *)__d___23) = tmp___72;
    goto ldv_28624;
    case 8:
    tmp___73 = __fswab64((__u64 )param->log_uarc_sz);
    *((__be64 *)__d___23) = tmp___73;
    goto ldv_28624;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28624:
    __d___24 = (void *)inbox + 298U;
    switch (1UL) {
    case 1:
    *((u8 *)__d___24) = param->log_uar_sz;
    goto ldv_28631;
    case 2:
    tmp___74 = __fswab16((int )param->log_uar_sz);
    *((__be16 *)__d___24) = tmp___74;
    goto ldv_28631;
    case 4:
    tmp___75 = __fswab32((__u32 )param->log_uar_sz);
    *((__be32 *)__d___24) = tmp___75;
    goto ldv_28631;
    case 8:
    tmp___76 = __fswab64((__u64 )param->log_uar_sz);
    *((__be64 *)__d___24) = tmp___76;
    goto ldv_28631;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28631:
    __d___25 = (void *)inbox + 312U;
    switch (8UL) {
    case 1:
    *((u8 *)__d___25) = (u8 )param->uarc_base;
    goto ldv_28638;
    case 2:
    tmp___77 = __fswab16((int )((__u16 )param->uarc_base));
    *((__be16 *)__d___25) = tmp___77;
    goto ldv_28638;
    case 4:
    tmp___78 = __fswab32((__u32 )param->uarc_base);
    *((__be32 *)__d___25) = tmp___78;
    goto ldv_28638;
    case 8:
    tmp___79 = __fswab64(param->uarc_base);
    *((__be64 *)__d___25) = tmp___79;
    goto ldv_28638;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28638: ;
  } else {
  }
  err = mthca_cmd(dev, mailbox->dma, 0U, 0, 7, 15000UL);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_INIT_IB(struct mthca_dev *dev , struct mthca_init_ib_param *param , int port )
{ struct mthca_mailbox *mailbox ;
  u32 *inbox ;
  int err ;
  u32 flags ;
  long tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  void *__d ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  void *__d___0 ;
  __u16 tmp___7 ;
  __u32 tmp___8 ;
  __u64 tmp___9 ;
  void *__d___1 ;
  __u16 tmp___10 ;
  __u32 tmp___11 ;
  __u64 tmp___12 ;
  void *__d___2 ;
  __u16 tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  void *__d___3 ;
  __u16 tmp___16 ;
  __u32 tmp___17 ;
  __u64 tmp___18 ;
  void *__d___4 ;
  __u16 tmp___19 ;
  __u32 tmp___20 ;
  __u64 tmp___21 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  inbox = (u32 *)mailbox->buf;
  memset((void *)inbox, 0, 56UL);
  flags = 0U;
  if (param->set_guid0 != 0) {
    tmp___1 = 65536U;
  } else {
    tmp___1 = 0U;
  }
  flags = tmp___1 | flags;
  if (param->set_node_guid != 0) {
    tmp___2 = 131072U;
  } else {
    tmp___2 = 0U;
  }
  flags = tmp___2 | flags;
  if (param->set_si_guid != 0) {
    tmp___3 = 262144U;
  } else {
    tmp___3 = 0U;
  }
  flags = tmp___3 | flags;
  flags = (u32 )(param->vl_cap << 4) | flags;
  flags = (u32 )(param->port_width << 8) | flags;
  flags = (u32 )(param->mtu_cap << 12) | flags;
  __d = (void *)inbox;
  switch (4UL) {
  case 1:
  *((u8 *)__d) = (u8 )flags;
  goto ldv_28654;
  case 2:
  tmp___4 = __fswab16((int )((__u16 )flags));
  *((__be16 *)__d) = tmp___4;
  goto ldv_28654;
  case 4:
  tmp___5 = __fswab32(flags);
  *((__be32 *)__d) = tmp___5;
  goto ldv_28654;
  case 8:
  tmp___6 = __fswab64((__u64 )flags);
  *((__be64 *)__d) = tmp___6;
  goto ldv_28654;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28654:
  __d___0 = (void *)inbox + 6U;
  switch (2UL) {
  case 1:
  *((u8 *)__d___0) = (u8 )param->gid_cap;
  goto ldv_28661;
  case 2:
  tmp___7 = __fswab16((int )param->gid_cap);
  *((__be16 *)__d___0) = tmp___7;
  goto ldv_28661;
  case 4:
  tmp___8 = __fswab32((__u32 )param->gid_cap);
  *((__be32 *)__d___0) = tmp___8;
  goto ldv_28661;
  case 8:
  tmp___9 = __fswab64((__u64 )param->gid_cap);
  *((__be64 *)__d___0) = tmp___9;
  goto ldv_28661;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28661:
  __d___1 = (void *)inbox + 10U;
  switch (2UL) {
  case 1:
  *((u8 *)__d___1) = (u8 )param->pkey_cap;
  goto ldv_28668;
  case 2:
  tmp___10 = __fswab16((int )param->pkey_cap);
  *((__be16 *)__d___1) = tmp___10;
  goto ldv_28668;
  case 4:
  tmp___11 = __fswab32((__u32 )param->pkey_cap);
  *((__be32 *)__d___1) = tmp___11;
  goto ldv_28668;
  case 8:
  tmp___12 = __fswab64((__u64 )param->pkey_cap);
  *((__be64 *)__d___1) = tmp___12;
  goto ldv_28668;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28668:
  __d___2 = (void *)inbox + 16U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___2) = (u8 )param->guid0;
  goto ldv_28675;
  case 2:
  tmp___13 = __fswab16((int )((__u16 )param->guid0));
  *((__be16 *)__d___2) = tmp___13;
  goto ldv_28675;
  case 4:
  tmp___14 = __fswab32((__u32 )param->guid0);
  *((__be32 *)__d___2) = tmp___14;
  goto ldv_28675;
  case 8:
  tmp___15 = __fswab64(param->guid0);
  *((__be64 *)__d___2) = tmp___15;
  goto ldv_28675;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28675:
  __d___3 = (void *)inbox + 24U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___3) = (u8 )param->node_guid;
  goto ldv_28682;
  case 2:
  tmp___16 = __fswab16((int )((__u16 )param->node_guid));
  *((__be16 *)__d___3) = tmp___16;
  goto ldv_28682;
  case 4:
  tmp___17 = __fswab32((__u32 )param->node_guid);
  *((__be32 *)__d___3) = tmp___17;
  goto ldv_28682;
  case 8:
  tmp___18 = __fswab64(param->node_guid);
  *((__be64 *)__d___3) = tmp___18;
  goto ldv_28682;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28682:
  __d___4 = (void *)inbox + 32U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___4) = (u8 )param->si_guid;
  goto ldv_28689;
  case 2:
  tmp___19 = __fswab16((int )((__u16 )param->si_guid));
  *((__be16 *)__d___4) = tmp___19;
  goto ldv_28689;
  case 4:
  tmp___20 = __fswab32((__u32 )param->si_guid);
  *((__be32 *)__d___4) = tmp___20;
  goto ldv_28689;
  case 8:
  tmp___21 = __fswab64(param->si_guid);
  *((__be64 *)__d___4) = tmp___21;
  goto ldv_28689;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28689:
  err = mthca_cmd(dev, mailbox->dma, (u32 )port, 0, 9, 15000UL);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_CLOSE_IB(struct mthca_dev *dev , int port )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, (u32 )port, 0, 10, 15000UL);
  return (tmp);
}
}
int mthca_CLOSE_HCA(struct mthca_dev *dev , int panic___0 )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, (int )((u8 )panic___0), 8, 15000UL);
  return (tmp);
}
}
int mthca_SET_IB(struct mthca_dev *dev , struct mthca_set_ib_param *param , int port )
{ struct mthca_mailbox *mailbox ;
  u32 *inbox ;
  int err ;
  u32 flags ;
  long tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  void *__d ;
  __u16 tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  void *__d___0 ;
  __u16 tmp___6 ;
  __u32 tmp___7 ;
  __u64 tmp___8 ;
  void *__d___1 ;
  __u16 tmp___9 ;
  __u32 tmp___10 ;
  __u64 tmp___11 ;
  {
  flags = 0U;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  inbox = (u32 *)mailbox->buf;
  memset((void *)inbox, 0, 64UL);
  if (param->set_si_guid != 0) {
    tmp___1 = 262144U;
  } else {
    tmp___1 = 0U;
  }
  flags = tmp___1 | flags;
  if (param->reset_qkey_viol != 0) {
    tmp___2 = 1U;
  } else {
    tmp___2 = 0U;
  }
  flags = tmp___2 | flags;
  __d = (void *)inbox;
  switch (4UL) {
  case 1:
  *((u8 *)__d) = (u8 )flags;
  goto ldv_28713;
  case 2:
  tmp___3 = __fswab16((int )((__u16 )flags));
  *((__be16 *)__d) = tmp___3;
  goto ldv_28713;
  case 4:
  tmp___4 = __fswab32(flags);
  *((__be32 *)__d) = tmp___4;
  goto ldv_28713;
  case 8:
  tmp___5 = __fswab64((__u64 )flags);
  *((__be64 *)__d) = tmp___5;
  goto ldv_28713;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28713:
  __d___0 = (void *)inbox + 4U;
  switch (4UL) {
  case 1:
  *((u8 *)__d___0) = (u8 )param->cap_mask;
  goto ldv_28720;
  case 2:
  tmp___6 = __fswab16((int )((__u16 )param->cap_mask));
  *((__be16 *)__d___0) = tmp___6;
  goto ldv_28720;
  case 4:
  tmp___7 = __fswab32(param->cap_mask);
  *((__be32 *)__d___0) = tmp___7;
  goto ldv_28720;
  case 8:
  tmp___8 = __fswab64((__u64 )param->cap_mask);
  *((__be64 *)__d___0) = tmp___8;
  goto ldv_28720;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28720:
  __d___1 = (void *)inbox + 8U;
  switch (8UL) {
  case 1:
  *((u8 *)__d___1) = (u8 )param->si_guid;
  goto ldv_28727;
  case 2:
  tmp___9 = __fswab16((int )((__u16 )param->si_guid));
  *((__be16 *)__d___1) = tmp___9;
  goto ldv_28727;
  case 4:
  tmp___10 = __fswab32((__u32 )param->si_guid);
  *((__be32 *)__d___1) = tmp___10;
  goto ldv_28727;
  case 8:
  tmp___11 = __fswab64(param->si_guid);
  *((__be64 *)__d___1) = tmp___11;
  goto ldv_28727;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28727:
  err = mthca_cmd(dev, mailbox->dma, (u32 )port, 0, 12, 15000UL);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_MAP_ICM(struct mthca_dev *dev , struct mthca_icm *icm , u64 virt )
{ int tmp ;
  {
  tmp = mthca_map_cmd(dev, 4090, icm, virt);
  return (tmp);
}
}
int mthca_MAP_ICM_page(struct mthca_dev *dev , u64 dma_addr , u64 virt )
{ struct mthca_mailbox *mailbox ;
  __be64 *inbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  __u64 tmp___1 ;
  __u64 tmp___2 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  inbox = (__be64 *)mailbox->buf;
  tmp___1 = __fswab64(virt);
  *inbox = tmp___1;
  tmp___2 = __fswab64(dma_addr);
  *(inbox + 1UL) = tmp___2;
  err = mthca_cmd(dev, mailbox->dma, 1U, 0, 4090, 15000UL);
  mthca_free_mailbox(dev, mailbox);
  if (err == 0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Mapped page at %llx to %llx for ICM.\n",
                 dma_addr, virt);
    } else {
    }
  } else {
  }
  return (err);
}
}
int mthca_UNMAP_ICM(struct mthca_dev *dev , u64 virt , u32 page_count___0 )
{ int tmp ;
  {
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Unmapping %d pages at %llx from ICM.\n",
               page_count___0, virt);
  } else {
  }
  tmp = mthca_cmd(dev, virt, page_count___0, 0, 4089, 15000UL);
  return (tmp);
}
}
int mthca_MAP_ICM_AUX(struct mthca_dev *dev , struct mthca_icm *icm )
{ int tmp ;
  {
  tmp = mthca_map_cmd(dev, 4092, icm, 0xffffffffffffffffULL);
  return (tmp);
}
}
int mthca_UNMAP_ICM_AUX(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 4091, 15000UL);
  return (tmp);
}
}
int mthca_SET_ICM_SIZE(struct mthca_dev *dev , u64 icm_size , u64 *aux_pages )
{ int ret ;
  int tmp ;
  {
  tmp = mthca_cmd_imm(dev, icm_size, aux_pages, 0U, 0, 4093, 15000UL);
  ret = tmp;
  if (ret != 0) {
    return (ret);
  } else {
  }
  *aux_pages = *aux_pages;
  return (0);
}
}
int mthca_SW2HW_MPT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int mpt_index )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )mpt_index, 0, 13, 15000UL);
  return (tmp);
}
}
int mthca_HW2SW_MPT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int mpt_index )
{ dma_addr_t tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mailbox != (unsigned long )((struct mthca_mailbox *)0)) {
    tmp = mailbox->dma;
  } else {
    tmp = 0ULL;
  }
  tmp___0 = mthca_cmd_box(dev, 0ULL, tmp, (u32 )mpt_index, (unsigned long )mailbox == (unsigned long )((struct mthca_mailbox *)0),
                          15, 15000UL);
  return (tmp___0);
}
}
int mthca_WRITE_MTT(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int num_mtt )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )num_mtt, 0, 17, 15000UL);
  return (tmp);
}
}
int mthca_SYNC_TPT(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, 0ULL, 0U, 0, 47, 15000UL);
  return (tmp);
}
}
int mthca_MAP_EQ(struct mthca_dev *dev , u64 event_mask , int unmap , int eq_num )
{ char *tmp ;
  int tmp___0 ;
  {
  if (mthca_debug_level != 0) {
    if (unmap != 0) {
      tmp = (char *)"Clearing";
    } else {
      tmp = (char *)"Setting";
    }
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "%s mask %016llx for eqn %d\n",
               tmp, event_mask, eq_num);
  } else {
  }
  tmp___0 = mthca_cmd(dev, event_mask, (u32 )((unmap << 31) | eq_num), 0, 18, 15000UL);
  return (tmp___0);
}
}
int mthca_SW2HW_EQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int eq_num )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )eq_num, 0, 19, 15000UL);
  return (tmp);
}
}
int mthca_HW2SW_EQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int eq_num )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, 0ULL, mailbox->dma, (u32 )eq_num, 0, 20, 15000UL);
  return (tmp);
}
}
int mthca_SW2HW_CQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int cq_num )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )cq_num, 0, 22, 15000UL);
  return (tmp);
}
}
int mthca_HW2SW_CQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int cq_num )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, 0ULL, mailbox->dma, (u32 )cq_num, 0, 23, 15000UL);
  return (tmp);
}
}
int mthca_RESIZE_CQ(struct mthca_dev *dev , int cq_num , u32 lkey , u8 log_size )
{ struct mthca_mailbox *mailbox ;
  __be32 *inbox ;
  int err ;
  long tmp ;
  long tmp___0 ;
  void *__d ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u64 tmp___3 ;
  void *__d___0 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  inbox = (__be32 *)mailbox->buf;
  memset((void *)inbox, 0, 64UL);
  __d = (void *)inbox + 12U;
  switch (1UL) {
  case 1:
  *((u8 *)__d) = log_size;
  goto ldv_28818;
  case 2:
  tmp___1 = __fswab16((int )log_size);
  *((__be16 *)__d) = tmp___1;
  goto ldv_28818;
  case 4:
  tmp___2 = __fswab32((__u32 )log_size);
  *((__be32 *)__d) = tmp___2;
  goto ldv_28818;
  case 8:
  tmp___3 = __fswab64((__u64 )log_size);
  *((__be64 *)__d) = tmp___3;
  goto ldv_28818;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28818:
  __d___0 = (void *)inbox + 28U;
  switch (4UL) {
  case 1:
  *((u8 *)__d___0) = (u8 )lkey;
  goto ldv_28825;
  case 2:
  tmp___4 = __fswab16((int )((__u16 )lkey));
  *((__be16 *)__d___0) = tmp___4;
  goto ldv_28825;
  case 4:
  tmp___5 = __fswab32(lkey);
  *((__be32 *)__d___0) = tmp___5;
  goto ldv_28825;
  case 8:
  tmp___6 = __fswab64((__u64 )lkey);
  *((__be64 *)__d___0) = tmp___6;
  goto ldv_28825;
  default:
  __buggy_use_of_MTHCA_PUT();
  }
  ldv_28825:
  err = mthca_cmd(dev, mailbox->dma, (u32 )cq_num, 1, 44, 15000UL);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_SW2HW_SRQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int srq_num )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )srq_num, 0, 53, 15000UL);
  return (tmp);
}
}
int mthca_HW2SW_SRQ(struct mthca_dev *dev , struct mthca_mailbox *mailbox , int srq_num )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, 0ULL, mailbox->dma, (u32 )srq_num, 0, 54, 15000UL);
  return (tmp);
}
}
int mthca_QUERY_SRQ(struct mthca_dev *dev , u32 num , struct mthca_mailbox *mailbox )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, 0ULL, mailbox->dma, num, 0, 55, 15000UL);
  return (tmp);
}
}
int mthca_ARM_SRQ(struct mthca_dev *dev , int srq_num , int limit )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, (u64 )limit, (u32 )srq_num, 0, 64, 15000UL);
  return (tmp);
}
}
int mthca_MODIFY_QP(struct mthca_dev *dev , enum ib_qp_state cur , enum ib_qp_state next ,
                    u32 num , int is_ee , struct mthca_mailbox *mailbox , u32 optmask )
{ u16 op[7U][7U] ;
  u8 op_mod ;
  int my_mailbox ;
  int err ;
  long tmp ;
  unsigned int tmp___0 ;
  dma_addr_t tmp___1 ;
  int i ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  int i___0 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  unsigned int tmp___6 ;
  {
  op[0][0] = 33U;
  op[0][1] = 25U;
  op[0][2] = (unsigned short)0;
  op[0][3] = (unsigned short)0;
  op[0][4] = (unsigned short)0;
  op[0][5] = (unsigned short)0;
  op[0][6] = 30U;
  op[1][0] = 33U;
  op[1][1] = 45U;
  op[1][2] = 26U;
  op[1][3] = (unsigned short)0;
  op[1][4] = (unsigned short)0;
  op[1][5] = (unsigned short)0;
  op[1][6] = 30U;
  op[2][0] = 33U;
  op[2][1] = (unsigned short)0;
  op[2][2] = (unsigned short)0;
  op[2][3] = 27U;
  op[2][4] = (unsigned short)0;
  op[2][5] = (unsigned short)0;
  op[2][6] = 30U;
  op[3][0] = 33U;
  op[3][1] = (unsigned short)0;
  op[3][2] = (unsigned short)0;
  op[3][3] = 28U;
  op[3][4] = 31U;
  op[3][5] = (unsigned short)0;
  op[3][6] = 30U;
  op[4][0] = 33U;
  op[4][1] = (unsigned short)0;
  op[4][2] = (unsigned short)0;
  op[4][3] = 32U;
  op[4][4] = 56U;
  op[4][5] = (unsigned short)0;
  op[4][6] = 30U;
  op[5][0] = 33U;
  op[5][1] = (unsigned short)0;
  op[5][2] = (unsigned short)0;
  op[5][3] = 29U;
  op[5][4] = (unsigned short)0;
  op[5][5] = (unsigned short)0;
  op[5][6] = 30U;
  op[6][0] = 33U;
  op[6][1] = (unsigned short)0;
  op[6][2] = (unsigned short)0;
  op[6][3] = (unsigned short)0;
  op[6][4] = (unsigned short)0;
  op[6][5] = (unsigned short)0;
  op[6][6] = 30U;
  op_mod = 0U;
  my_mailbox = 0;
  if ((unsigned int )op[(unsigned int )cur][(unsigned int )next] == 33U) {
    op_mod = 3U;
    if ((unsigned long )mailbox == (unsigned long )((struct mthca_mailbox *)0)) {
      mailbox = mthca_alloc_mailbox(dev, 208U);
      tmp = IS_ERR((void const *)mailbox);
      if (tmp == 0L) {
        my_mailbox = 1;
        op_mod = 2U;
      } else {
        mailbox = 0;
      }
    } else {
    }
    if (is_ee != 0) {
      tmp___0 = 16777216U;
    } else {
      tmp___0 = 0U;
    }
    if ((unsigned long )mailbox != (unsigned long )((struct mthca_mailbox *)0)) {
      tmp___1 = mailbox->dma;
    } else {
      tmp___1 = 0ULL;
    }
    err = mthca_cmd_box(dev, 0ULL, tmp___1, tmp___0 | num, (int )op_mod, (int )op[(unsigned int )cur][(unsigned int )next],
                        15000UL);
    if (0) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Dumping QP context:\n");
      } else {
      }
      tmp___2 = __be32_to_cpup((__be32 const *)mailbox->buf);
      printk(" %08x\n", tmp___2);
      i = 0;
      goto ldv_28865;
      ldv_28864: ;
      if (((unsigned int )i & 7U) == 0U) {
        printk("[%02x] ", i * 4);
      } else {
      }
      tmp___3 = __fswab32(*((__be32 *)mailbox->buf + ((unsigned long )i + 2UL)));
      printk(" %08x", tmp___3);
      if (((unsigned int )(i + 1) & 7U) == 0U) {
        printk("\n");
      } else {
      }
      i = i + 1;
      ldv_28865: ;
      if (i <= 63) {
        goto ldv_28864;
      } else {
        goto ldv_28866;
      }
      ldv_28866: ;
    } else {
    }
    if (my_mailbox != 0) {
      mthca_free_mailbox(dev, mailbox);
    } else {
    }
  } else {
    if (0) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Dumping QP context:\n");
      } else {
      }
      tmp___4 = __be32_to_cpup((__be32 const *)mailbox->buf);
      printk("  opt param mask: %08x\n", tmp___4);
      i___0 = 0;
      goto ldv_28869;
      ldv_28868: ;
      if (((unsigned int )i___0 & 7U) == 0U) {
        printk("  [%02x] ", i___0 * 4);
      } else {
      }
      tmp___5 = __fswab32(*((__be32 *)mailbox->buf + ((unsigned long )i___0 + 2UL)));
      printk(" %08x", tmp___5);
      if (((unsigned int )(i___0 + 1) & 7U) == 0U) {
        printk("\n");
      } else {
      }
      i___0 = i___0 + 1;
      ldv_28869: ;
      if (i___0 <= 63) {
        goto ldv_28868;
      } else {
        goto ldv_28870;
      }
      ldv_28870: ;
    } else {
    }
    if (is_ee != 0) {
      tmp___6 = 16777216U;
    } else {
      tmp___6 = 0U;
    }
    err = mthca_cmd(dev, mailbox->dma, (tmp___6 | optmask) | num, (int )op_mod, (int )op[(unsigned int )cur][(unsigned int )next],
                    15000UL);
  }
  return (err);
}
}
int mthca_QUERY_QP(struct mthca_dev *dev , u32 num , int is_ee , struct mthca_mailbox *mailbox )
{ unsigned int tmp ;
  int tmp___0 ;
  {
  if (is_ee != 0) {
    tmp = 16777216U;
  } else {
    tmp = 0U;
  }
  tmp___0 = mthca_cmd_box(dev, 0ULL, mailbox->dma, tmp | num, 0, 34, 15000UL);
  return (tmp___0);
}
}
int mthca_CONF_SPECIAL_QP(struct mthca_dev *dev , int type , u32 qpn )
{ u8 op_mod ;
  int tmp ;
  {
  switch (type) {
  case 0:
  op_mod = 0U;
  goto ldv_28884;
  case 1:
  op_mod = 1U;
  goto ldv_28884;
  case 5:
  op_mod = 2U;
  goto ldv_28884;
  case 6:
  op_mod = 3U;
  goto ldv_28884;
  default: ;
  return (-22);
  }
  ldv_28884:
  tmp = mthca_cmd(dev, 0ULL, qpn, (int )op_mod, 35, 15000UL);
  return (tmp);
}
}
int mthca_MAD_IFC(struct mthca_dev *dev , int ignore_mkey , int ignore_bkey , int port ,
                  struct ib_wc *in_wc , struct ib_grh *in_grh , void *in_mad , void *response_mad )
{ struct mthca_mailbox *inmailbox ;
  struct mthca_mailbox *outmailbox ;
  void *inbox ;
  int err ;
  u32 in_modifier ;
  u8 op_modifier ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  size_t __len ;
  void *__ret ;
  u8 val ;
  void *__d ;
  __u16 tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  void *__d___0 ;
  __u16 tmp___6 ;
  __u32 tmp___7 ;
  __u64 tmp___8 ;
  void *__d___1 ;
  __u16 tmp___9 ;
  __u32 tmp___10 ;
  __u64 tmp___11 ;
  int tmp___12 ;
  void *__d___2 ;
  __u16 tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  void *__d___3 ;
  __u16 tmp___16 ;
  __u32 tmp___17 ;
  __u64 tmp___18 ;
  void *__d___4 ;
  __u16 tmp___19 ;
  __u32 tmp___20 ;
  __u64 tmp___21 ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  in_modifier = (u32 )port;
  op_modifier = 0U;
  inmailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)inmailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)inmailbox);
    return ((int )tmp);
  } else {
  }
  inbox = inmailbox->buf;
  outmailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___2 = IS_ERR((void const *)outmailbox);
  if (tmp___2 != 0L) {
    mthca_free_mailbox(dev, inmailbox);
    tmp___1 = PTR_ERR((void const *)outmailbox);
    return ((int )tmp___1);
  } else {
  }
  __len = 256UL;
  if (__len > 63UL) {
    __ret = memcpy(inbox, (void const *)in_mad, __len);
  } else {
    __ret = memcpy(inbox, (void const *)in_mad, __len);
  }
  if (ignore_mkey != 0 || (unsigned long )in_wc == (unsigned long )((struct ib_wc *)0)) {
    op_modifier = (u8 )((unsigned int )op_modifier | 1U);
  } else {
  }
  if (ignore_bkey != 0 || (unsigned long )in_wc == (unsigned long )((struct ib_wc *)0)) {
    op_modifier = (u8 )((unsigned int )op_modifier | 2U);
  } else {
  }
  if ((unsigned long )in_wc != (unsigned long )((struct ib_wc *)0)) {
    memset(inbox + 256UL, 0, 256UL);
    __d = inbox + 256U;
    switch (4UL) {
    case 1:
    *((u8 *)__d) = (u8 )(in_wc->qp)->qp_num;
    goto ldv_28911;
    case 2:
    tmp___3 = __fswab16((int )((__u16 )(in_wc->qp)->qp_num));
    *((__be16 *)__d) = tmp___3;
    goto ldv_28911;
    case 4:
    tmp___4 = __fswab32((in_wc->qp)->qp_num);
    *((__be32 *)__d) = tmp___4;
    goto ldv_28911;
    case 8:
    tmp___5 = __fswab64((__u64 )(in_wc->qp)->qp_num);
    *((__be64 *)__d) = tmp___5;
    goto ldv_28911;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28911:
    __d___0 = inbox + 264U;
    switch (4UL) {
    case 1:
    *((u8 *)__d___0) = (u8 )in_wc->src_qp;
    goto ldv_28918;
    case 2:
    tmp___6 = __fswab16((int )((__u16 )in_wc->src_qp));
    *((__be16 *)__d___0) = tmp___6;
    goto ldv_28918;
    case 4:
    tmp___7 = __fswab32(in_wc->src_qp);
    *((__be32 *)__d___0) = tmp___7;
    goto ldv_28918;
    case 8:
    tmp___8 = __fswab64((__u64 )in_wc->src_qp);
    *((__be64 *)__d___0) = tmp___8;
    goto ldv_28918;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28918:
    val = (int )in_wc->sl << 4U;
    __d___1 = inbox + 268U;
    switch (1UL) {
    case 1:
    *((u8 *)__d___1) = val;
    goto ldv_28925;
    case 2:
    tmp___9 = __fswab16((int )val);
    *((__be16 *)__d___1) = tmp___9;
    goto ldv_28925;
    case 4:
    tmp___10 = __fswab32((__u32 )val);
    *((__be32 *)__d___1) = tmp___10;
    goto ldv_28925;
    case 8:
    tmp___11 = __fswab64((__u64 )val);
    *((__be64 *)__d___1) = tmp___11;
    goto ldv_28925;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28925: ;
    if (in_wc->wc_flags & 1) {
      tmp___12 = -128;
    } else {
      tmp___12 = 0;
    }
    val = (u8 )((int )((signed char )in_wc->dlid_path_bits) | tmp___12);
    __d___2 = inbox + 269U;
    switch (1UL) {
    case 1:
    *((u8 *)__d___2) = val;
    goto ldv_28932;
    case 2:
    tmp___13 = __fswab16((int )val);
    *((__be16 *)__d___2) = tmp___13;
    goto ldv_28932;
    case 4:
    tmp___14 = __fswab32((__u32 )val);
    *((__be32 *)__d___2) = tmp___14;
    goto ldv_28932;
    case 8:
    tmp___15 = __fswab64((__u64 )val);
    *((__be64 *)__d___2) = tmp___15;
    goto ldv_28932;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28932:
    __d___3 = inbox + 270U;
    switch (2UL) {
    case 1:
    *((u8 *)__d___3) = (u8 )in_wc->slid;
    goto ldv_28939;
    case 2:
    tmp___16 = __fswab16((int )in_wc->slid);
    *((__be16 *)__d___3) = tmp___16;
    goto ldv_28939;
    case 4:
    tmp___17 = __fswab32((__u32 )in_wc->slid);
    *((__be32 *)__d___3) = tmp___17;
    goto ldv_28939;
    case 8:
    tmp___18 = __fswab64((__u64 )in_wc->slid);
    *((__be64 *)__d___3) = tmp___18;
    goto ldv_28939;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28939:
    __d___4 = inbox + 274U;
    switch (2UL) {
    case 1:
    *((u8 *)__d___4) = (u8 )in_wc->pkey_index;
    goto ldv_28946;
    case 2:
    tmp___19 = __fswab16((int )in_wc->pkey_index);
    *((__be16 *)__d___4) = tmp___19;
    goto ldv_28946;
    case 4:
    tmp___20 = __fswab32((__u32 )in_wc->pkey_index);
    *((__be32 *)__d___4) = tmp___20;
    goto ldv_28946;
    case 8:
    tmp___21 = __fswab64((__u64 )in_wc->pkey_index);
    *((__be64 *)__d___4) = tmp___21;
    goto ldv_28946;
    default:
    __buggy_use_of_MTHCA_PUT();
    }
    ldv_28946: ;
    if ((unsigned long )in_grh != (unsigned long )((struct ib_grh *)0)) {
      __len___0 = 40UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy(inbox + 320UL, (void const *)in_grh, __len___0);
      } else {
        __ret___0 = memcpy(inbox + 320UL, (void const *)in_grh, __len___0);
      }
    } else {
    }
    op_modifier = (u8 )((unsigned int )op_modifier | 4U);
    in_modifier = (u32 )((int )in_wc->slid << 16) | in_modifier;
  } else {
  }
  err = mthca_cmd_box(dev, inmailbox->dma, outmailbox->dma, in_modifier, (int )op_modifier,
                      36, 15000UL);
  if (err == 0) {
    __len___1 = 256UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy(response_mad, (void const *)outmailbox->buf, __len___1);
    } else {
      __ret___1 = memcpy(response_mad, (void const *)outmailbox->buf,
                                   __len___1);
    }
  } else {
  }
  mthca_free_mailbox(dev, inmailbox);
  mthca_free_mailbox(dev, outmailbox);
  return (err);
}
}
int mthca_READ_MGM(struct mthca_dev *dev , int index , struct mthca_mailbox *mailbox )
{ int tmp ;
  {
  tmp = mthca_cmd_box(dev, 0ULL, mailbox->dma, (u32 )index, 0, 37, 15000UL);
  return (tmp);
}
}
int mthca_WRITE_MGM(struct mthca_dev *dev , int index , struct mthca_mailbox *mailbox )
{ int tmp ;
  {
  tmp = mthca_cmd(dev, mailbox->dma, (u32 )index, 0, 38, 15000UL);
  return (tmp);
}
}
int mthca_MGID_HASH(struct mthca_dev *dev , struct mthca_mailbox *mailbox , u16 *hash )
{ u64 imm ;
  int err ;
  {
  err = mthca_cmd_imm(dev, mailbox->dma, & imm, 0U, 0, 39, 15000UL);
  *hash = (u16 )imm;
  return (err);
}
}
int mthca_NOP(struct mthca_dev *dev )
{ unsigned long tmp ;
  int tmp___0 ;
  {
  tmp = msecs_to_jiffies(100U);
  tmp___0 = mthca_cmd(dev, 0ULL, 31U, 0, 49, tmp);
  return (tmp___0);
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_24(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hcr_mutex_of_mthca_cmd(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hcr_mutex_of_mthca_cmd(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
s64 mthca_make_profile(struct mthca_dev *dev , struct mthca_profile *request , struct mthca_dev_lim *dev_lim ,
                       struct mthca_init_hca_param *init_hca )
{ u64 mem_base ;
  u64 mem_avail ;
  s64 total_size ;
  struct mthca_resource *profile ;
  struct mthca_resource tmp ;
  int i ;
  int j ;
  void *tmp___0 ;
  int _max1 ;
  int tmp___1 ;
  int _max2 ;
  int tmp___2 ;
  u64 _max1___0 ;
  unsigned long long _max2___0 ;
  unsigned long long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  total_size = 0LL;
  tmp___0 = kzalloc(448UL, 208U);
  profile = (struct mthca_resource *)tmp___0;
  if ((unsigned long )profile == (unsigned long )((struct mthca_resource *)0)) {
    return (-12LL);
  } else {
  }
  profile->size = (u64 )dev_lim->qpc_entry_sz;
  (profile + 1UL)->size = (u64 )dev_lim->eec_entry_sz;
  (profile + 2UL)->size = (u64 )dev_lim->srq_entry_sz;
  (profile + 3UL)->size = (u64 )dev_lim->cqc_entry_sz;
  (profile + 4UL)->size = (u64 )dev_lim->eqpc_entry_sz;
  (profile + 5UL)->size = (u64 )dev_lim->eeec_entry_sz;
  (profile + 6UL)->size = (u64 )dev_lim->eqc_entry_sz;
  (profile + 7UL)->size = 32ULL;
  (profile + 8UL)->size = 256ULL;
  (profile + 9UL)->size = (u64 )dev_lim->mpt_entry_sz;
  (profile + 10UL)->size = (u64 )dev->limits.mtt_seg_size;
  (profile + 11UL)->size = (u64 )dev_lim->uar_scratch_entry_sz;
  (profile + 12UL)->size = 32ULL;
  (profile + 13UL)->size = (u64 )request->uarc_size;
  profile->num = request->num_qp;
  (profile + 2UL)->num = request->num_srq;
  (profile + 4UL)->num = request->num_qp;
  (profile + 7UL)->num = request->num_qp * request->rdb_per_qp;
  (profile + 3UL)->num = request->num_cq;
  (profile + 6UL)->num = 32;
  (profile + 8UL)->num = request->num_mcg;
  (profile + 9UL)->num = request->num_mpt;
  (profile + 10UL)->num = request->num_mtt;
  (profile + 11UL)->num = request->num_uar;
  (profile + 13UL)->num = request->num_uar;
  (profile + 12UL)->num = request->num_udav;
  i = 0;
  goto ldv_24023;
  ldv_24022:
  (profile + (unsigned long )i)->type = i;
  tmp___1 = ffs((profile + (unsigned long )i)->num);
  _max1 = tmp___1 + -1;
  _max2 = 0;
  if (_max1 > _max2) {
    tmp___2 = _max1;
  } else {
    tmp___2 = _max2;
  }
  (profile + (unsigned long )i)->log_num = tmp___2;
  (profile + (unsigned long )i)->size = (profile + (unsigned long )i)->size * (u64 )(profile + (unsigned long )i)->num;
  tmp___4 = mthca_is_memfree(dev);
  if (tmp___4 != 0) {
    _max1___0 = (profile + (unsigned long )i)->size;
    _max2___0 = 4096ULL;
    if (_max1___0 > _max2___0) {
      tmp___3 = _max1___0;
    } else {
      tmp___3 = _max2___0;
    }
    (profile + (unsigned long )i)->size = tmp___3;
  } else {
  }
  i = i + 1;
  ldv_24023: ;
  if (i <= 13) {
    goto ldv_24022;
  } else {
    goto ldv_24024;
  }
  ldv_24024:
  tmp___5 = mthca_is_memfree(dev);
  if (tmp___5 != 0) {
    mem_base = 0ULL;
    mem_avail = dev_lim->hca.arbel.max_icm_sz;
  } else {
    mem_base = dev->ddr_start;
    mem_avail = dev->fw.tavor.fw_start - dev->ddr_start;
  }
  i = 14;
  goto ldv_24029;
  ldv_24028:
  j = 1;
  goto ldv_24026;
  ldv_24025: ;
  if ((profile + (unsigned long )j)->size > (profile + ((unsigned long )j + 0xffffffffffffffffUL))->size) {
    tmp = *(profile + (unsigned long )j);
    *(profile + (unsigned long )j) = *(profile + ((unsigned long )j + 0xffffffffffffffffUL));
    *(profile + ((unsigned long )j + 0xffffffffffffffffUL)) = tmp;
  } else {
  }
  j = j + 1;
  ldv_24026: ;
  if (j < i) {
    goto ldv_24025;
  } else {
    goto ldv_24027;
  }
  ldv_24027:
  i = i - 1;
  ldv_24029: ;
  if (i > 0) {
    goto ldv_24028;
  } else {
    goto ldv_24030;
  }
  ldv_24030:
  i = 0;
  goto ldv_24032;
  ldv_24031: ;
  if ((profile + (unsigned long )i)->size != 0ULL) {
    (profile + (unsigned long )i)->start = mem_base + (unsigned long long )total_size;
    total_size = (s64 )((profile + (unsigned long )i)->size + (unsigned long long )total_size);
  } else {
  }
  if ((unsigned long long )total_size > mem_avail) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Profile requires 0x%llx bytes; won\'t fit in 0x%llx bytes of context memory.\n",
            (unsigned long long )total_size, mem_avail);
    kfree((void const *)profile);
    return (-12LL);
  } else {
  }
  if ((profile + (unsigned long )i)->size != 0ULL) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "profile[%2d]--%2d/%2d @ 0x%16llx (size 0x%8llx)\n",
                 i, (profile + (unsigned long )i)->type, (profile + (unsigned long )i)->log_num,
                 (profile + (unsigned long )i)->start, (profile + (unsigned long )i)->size);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_24032: ;
  if (i <= 13) {
    goto ldv_24031;
  } else {
    goto ldv_24033;
  }
  ldv_24033:
  tmp___6 = mthca_is_memfree(dev);
  if (tmp___6 != 0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA context memory: reserving %d KB\n",
                 (int )(total_size >> 10));
    } else
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "HCA memory: allocated %d KB/%d KB (%d KB free)\n",
                 (int )(total_size >> 10), (int )(mem_avail >> 10), (int )((mem_avail - (unsigned long long )total_size) >> 10));
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_24054;
  ldv_24053: ;
  switch ((profile + (unsigned long )i)->type) {
  case 0:
  dev->limits.num_qps = (profile + (unsigned long )i)->num;
  init_hca->qpc_base = (profile + (unsigned long )i)->start;
  init_hca->log_num_qps = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 1:
  dev->limits.num_eecs = (profile + (unsigned long )i)->num;
  init_hca->eec_base = (profile + (unsigned long )i)->start;
  init_hca->log_num_eecs = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 2:
  dev->limits.num_srqs = (profile + (unsigned long )i)->num;
  init_hca->srqc_base = (profile + (unsigned long )i)->start;
  init_hca->log_num_srqs = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 3:
  dev->limits.num_cqs = (profile + (unsigned long )i)->num;
  init_hca->cqc_base = (profile + (unsigned long )i)->start;
  init_hca->log_num_cqs = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 4:
  init_hca->eqpc_base = (profile + (unsigned long )i)->start;
  goto ldv_24035;
  case 5:
  init_hca->eeec_base = (profile + (unsigned long )i)->start;
  goto ldv_24035;
  case 6:
  dev->limits.num_eqs = (profile + (unsigned long )i)->num;
  init_hca->eqc_base = (profile + (unsigned long )i)->start;
  init_hca->log_num_eqs = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 7:
  dev->qp_table.rdb_shift = 0;
  goto ldv_24044;
  ldv_24043:
  dev->qp_table.rdb_shift = dev->qp_table.rdb_shift + 1;
  ldv_24044: ;
  if (request->num_qp << dev->qp_table.rdb_shift < (profile + (unsigned long )i)->num) {
    goto ldv_24043;
  } else {
    goto ldv_24045;
  }
  ldv_24045:
  dev->qp_table.rdb_base = (unsigned int )(profile + (unsigned long )i)->start;
  init_hca->rdb_base = (profile + (unsigned long )i)->start;
  goto ldv_24035;
  case 8:
  dev->limits.num_mgms = (profile + (unsigned long )i)->num >> 1;
  dev->limits.num_amgms = (profile + (unsigned long )i)->num >> 1;
  init_hca->mc_base = (profile + (unsigned long )i)->start;
  tmp___7 = ffs(256);
  init_hca->log_mc_entry_sz = (unsigned int )((u16 )tmp___7) + 65535U;
  init_hca->log_mc_table_sz = (u8 )(profile + (unsigned long )i)->log_num;
  init_hca->mc_hash_sz = (u16 )(1 << ((profile + (unsigned long )i)->log_num + -1));
  goto ldv_24035;
  case 9:
  dev->limits.num_mpts = (profile + (unsigned long )i)->num;
  dev->mr_table.mpt_base = (profile + (unsigned long )i)->start;
  init_hca->mpt_base = (profile + (unsigned long )i)->start;
  init_hca->log_mpt_sz = (u8 )(profile + (unsigned long )i)->log_num;
  goto ldv_24035;
  case 10:
  dev->limits.num_mtt_segs = (profile + (unsigned long )i)->num;
  dev->mr_table.mtt_base = (profile + (unsigned long )i)->start;
  init_hca->mtt_base = (profile + (unsigned long )i)->start;
  tmp___8 = ffs(dev->limits.mtt_seg_size);
  init_hca->mtt_seg_sz = (unsigned int )((u8 )tmp___8) + 249U;
  goto ldv_24035;
  case 11:
  dev->limits.num_uars = (profile + (unsigned long )i)->num;
  init_hca->uar_scratch_base = (profile + (unsigned long )i)->start;
  goto ldv_24035;
  case 12:
  dev->av_table.ddr_av_base = (profile + (unsigned long )i)->start;
  dev->av_table.num_ddr_avs = (profile + (unsigned long )i)->num;
  goto ldv_24035;
  case 13:
  dev->uar_table.uarc_size = request->uarc_size;
  dev->uar_table.uarc_base = (profile + (unsigned long )i)->start;
  init_hca->uarc_base = (profile + (unsigned long )i)->start;
  tmp___9 = ffs(request->uarc_size);
  init_hca->log_uarc_sz = (unsigned int )((u8 )tmp___9) + 243U;
  tmp___10 = ffs(request->num_uar);
  init_hca->log_uar_sz = (unsigned int )((u8 )tmp___10) + 255U;
  goto ldv_24035;
  default: ;
  goto ldv_24035;
  }
  ldv_24035:
  i = i + 1;
  ldv_24054: ;
  if (i <= 13) {
    goto ldv_24053;
  } else {
    goto ldv_24055;
  }
  ldv_24055:
  dev->limits.num_pds = 32768;
  if ((dev->mthca_flags & 256UL) != 0UL && (unsigned int )init_hca->log_mpt_sz > 23U) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "MPT table too large (requested size 2^%d >= 2^24)\n",
             (int )init_hca->log_mpt_sz);
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Disabling memory key throughput optimization.\n");
    dev->mthca_flags = dev->mthca_flags & 0xfffffffffffffeffUL;
  } else {
  }
  mthca_is_memfree(dev);
  dev->limits.fmr_reserved_mtts = 0;
  kfree((void const *)profile);
  return (total_size);
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_42(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void pci_dev_put(struct pci_dev * ) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{ int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{ int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pcie_capability_write_word(struct pci_dev * , int , u16 ) ;
extern void msleep(unsigned int ) ;
int mthca_reset(struct mthca_dev *mdev )
{ int i ;
  int err ;
  u32 *hca_header ;
  u32 *bridge_header ;
  struct pci_dev *bridge ;
  int bridge_pcix_cap ;
  int hca_pcie_cap ;
  int hca_pcix_cap ;
  u16 devctl ;
  u16 linkctl ;
  char const *tmp ;
  char const *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  void *reset ;
  void *tmp___5 ;
  u32 v ;
  int c ;
  struct pci_dev *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  {
  err = 0;
  hca_header = 0;
  bridge_header = 0;
  bridge = 0;
  bridge_pcix_cap = 0;
  hca_pcie_cap = 0;
  hca_pcix_cap = 0;
  if ((mdev->mthca_flags & 128UL) == 0UL) {
    goto ldv_22190;
    ldv_22189: ;
    if ((unsigned int )bridge->hdr_type == 1U && (unsigned long )bridge->subordinate == (unsigned long )(mdev->pdev)->bus) {
      if (mthca_debug_level != 0) {
        tmp = pci_name((struct pci_dev const *)bridge);
        dev_printk("\017", (struct device const *)(& (mdev->pdev)->dev), "Found bridge: %s\n",
                   tmp);
      } else {
      }
      goto ldv_22188;
    } else {
    }
    ldv_22190:
    bridge = pci_get_device((unsigned int )(mdev->pdev)->vendor, (unsigned int )((int )(mdev->pdev)->device + 2),
                            bridge);
    if ((unsigned long )bridge != (unsigned long )((struct pci_dev *)0)) {
      goto ldv_22189;
    } else {
      goto ldv_22188;
    }
    ldv_22188: ;
    if ((unsigned long )bridge == (unsigned long )((struct pci_dev *)0)) {
      tmp___0 = pci_name((struct pci_dev const *)mdev->pdev);
      dev_warn((struct device const *)(& (mdev->pdev)->dev), "No bridge found for %s\n",
               tmp___0);
    } else {
    }
  } else {
  }
  tmp___1 = kmalloc(256UL, 208U);
  hca_header = (u32 *)tmp___1;
  if ((unsigned long )hca_header == (unsigned long )((u32 *)0)) {
    err = -12;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t allocate memory to save HCA PCI header, aborting.\n");
    goto out;
  } else {
  }
  i = 0;
  goto ldv_22194;
  ldv_22193: ;
  if (i == 22 || i == 23) {
    goto ldv_22192;
  } else {
  }
  tmp___2 = pci_read_config_dword((struct pci_dev const *)mdev->pdev, i * 4, hca_header + (unsigned long )i);
  if (tmp___2 != 0) {
    err = -19;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t save HCA PCI header, aborting.\n");
    goto out;
  } else {
  }
  ldv_22192:
  i = i + 1;
  ldv_22194: ;
  if (i <= 63) {
    goto ldv_22193;
  } else {
    goto ldv_22195;
  }
  ldv_22195:
  hca_pcix_cap = pci_find_capability(mdev->pdev, 7);
  hca_pcie_cap = pci_pcie_cap(mdev->pdev);
  if ((unsigned long )bridge != (unsigned long )((struct pci_dev *)0)) {
    tmp___3 = kmalloc(256UL, 208U);
    bridge_header = (u32 *)tmp___3;
    if ((unsigned long )bridge_header == (unsigned long )((u32 *)0)) {
      err = -12;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t allocate memory to save HCA bridge PCI header, aborting.\n");
      goto out;
    } else {
    }
    i = 0;
    goto ldv_22198;
    ldv_22197: ;
    if (i == 22 || i == 23) {
      goto ldv_22196;
    } else {
    }
    tmp___4 = pci_read_config_dword((struct pci_dev const *)bridge, i * 4, bridge_header + (unsigned long )i);
    if (tmp___4 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t save HCA bridge PCI header, aborting.\n");
      goto out;
    } else {
    }
    ldv_22196:
    i = i + 1;
    ldv_22198: ;
    if (i <= 63) {
      goto ldv_22197;
    } else {
      goto ldv_22199;
    }
    ldv_22199:
    bridge_pcix_cap = pci_find_capability(bridge, 7);
    if (bridge_pcix_cap == 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t locate HCA bridge PCI-X capability, aborting.\n");
      goto out;
    } else {
    }
  } else {
  }
  tmp___5 = ioremap((mdev->pdev)->resource[0].start + 983056ULL, 4UL);
  reset = tmp___5;
  if ((unsigned long )reset == (unsigned long )((void *)0)) {
    err = -12;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t map HCA reset register, aborting.\n");
    goto out;
  } else {
  }
  writel(16777216U, (void volatile *)reset);
  iounmap((void volatile *)reset);
  msleep(1000U);
  c = 0;
  c = 0;
  goto ldv_22205;
  ldv_22204: ;
  if ((unsigned long )bridge == (unsigned long )((struct pci_dev *)0)) {
    tmp___6 = mdev->pdev;
  } else {
    tmp___6 = bridge;
  }
  tmp___7 = pci_read_config_dword((struct pci_dev const *)tmp___6, 0, & v);
  if (tmp___7 != 0) {
    err = -19;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t access HCA after reset, aborting.\n");
    goto out;
  } else {
  }
  if (v != 4294967295U) {
    goto good;
  } else {
  }
  msleep(100U);
  c = c + 1;
  ldv_22205: ;
  if (c <= 99) {
    goto ldv_22204;
  } else {
    goto ldv_22206;
  }
  ldv_22206:
  err = -19;
  dev_err((struct device const *)(& (mdev->pdev)->dev), "PCI device did not come back after reset, aborting.\n");
  goto out;
  good: ;
  if ((unsigned long )bridge != (unsigned long )((struct pci_dev *)0)) {
    tmp___8 = pci_write_config_dword((struct pci_dev const *)bridge, bridge_pcix_cap + 8,
                                     *(bridge_header + (unsigned long )((bridge_pcix_cap + 8) / 4)));
    if (tmp___8 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA bridge Upstream split transaction control, aborting.\n");
      goto out;
    } else {
    }
    tmp___9 = pci_write_config_dword((struct pci_dev const *)bridge, bridge_pcix_cap + 12,
                                     *(bridge_header + (unsigned long )((bridge_pcix_cap + 12) / 4)));
    if (tmp___9 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA bridge Downstream split transaction control, aborting.\n");
      goto out;
    } else {
    }
    i = 0;
    goto ldv_22209;
    ldv_22208: ;
    if (i * 4 == 4) {
      goto ldv_22207;
    } else {
    }
    tmp___10 = pci_write_config_dword((struct pci_dev const *)bridge, i * 4, *(bridge_header + (unsigned long )i));
    if (tmp___10 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA bridge reg %x, aborting.\n",
              i);
      goto out;
    } else {
    }
    ldv_22207:
    i = i + 1;
    ldv_22209: ;
    if (i <= 15) {
      goto ldv_22208;
    } else {
      goto ldv_22210;
    }
    ldv_22210:
    tmp___11 = pci_write_config_dword((struct pci_dev const *)bridge, 4, *(bridge_header + 1UL));
    if (tmp___11 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA bridge COMMAND, aborting.\n");
      goto out;
    } else {
    }
  } else {
  }
  if (hca_pcix_cap != 0) {
    tmp___12 = pci_write_config_dword((struct pci_dev const *)mdev->pdev, hca_pcix_cap,
                                      *(hca_header + (unsigned long )(hca_pcix_cap / 4)));
    if (tmp___12 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA PCI-X command register, aborting.\n");
      goto out;
    } else {
    }
  } else {
  }
  if (hca_pcie_cap != 0) {
    devctl = (u16 )*(hca_header + (unsigned long )((hca_pcie_cap + 8) / 4));
    tmp___13 = pcie_capability_write_word(mdev->pdev, 8, (int )devctl);
    if (tmp___13 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA PCI Express Device Control register, aborting.\n");
      goto out;
    } else {
    }
    linkctl = (u16 )*(hca_header + (unsigned long )((hca_pcie_cap + 16) / 4));
    tmp___14 = pcie_capability_write_word(mdev->pdev, 16, (int )linkctl);
    if (tmp___14 != 0) {
      err = -19;
      dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA PCI Express Link control register, aborting.\n");
      goto out;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_22213;
  ldv_22212: ;
  if (i * 4 == 4) {
    goto ldv_22211;
  } else {
  }
  tmp___15 = pci_write_config_dword((struct pci_dev const *)mdev->pdev, i * 4, *(hca_header + (unsigned long )i));
  if (tmp___15 != 0) {
    err = -19;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA reg %x, aborting.\n",
            i);
    goto out;
  } else {
  }
  ldv_22211:
  i = i + 1;
  ldv_22213: ;
  if (i <= 15) {
    goto ldv_22212;
  } else {
    goto ldv_22214;
  }
  ldv_22214:
  tmp___16 = pci_write_config_dword((struct pci_dev const *)mdev->pdev, 4, *(hca_header + 1UL));
  if (tmp___16 != 0) {
    err = -19;
    dev_err((struct device const *)(& (mdev->pdev)->dev), "Couldn\'t restore HCA COMMAND, aborting.\n");
    goto out;
  } else {
  }
  out: ;
  if ((unsigned long )bridge != (unsigned long )((struct pci_dev *)0)) {
    pci_dev_put(bridge);
  } else {
  }
  kfree((void const *)bridge_header);
  kfree((void const *)hca_header);
  return (err);
}
}
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_52(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern unsigned long find_next_zero_bit(unsigned long const * , unsigned long ,
                                        unsigned long ) ;
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void clear_page(void * ) ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int __get_order(unsigned long size )
{ int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
__inline static void bitmap_zero(unsigned long *dst , int nbits )
{ int len ;
  {
  len = (int )((unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U);
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{ unsigned long __ret ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
int ldv_mutex_trylock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern unsigned long get_zeroed_page(gfp_t ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{ long tmp ;
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
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{ unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    if ((int )gfp & 1) {
      dma_mask = 16777215UL;
    } else {
      dma_mask = 4294967295UL;
    }
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{ unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return (0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/zakharov_benchmarks/bench/cpa/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/dma-mapping.h",
                       166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
u32 mthca_alloc(struct mthca_alloc *alloc ) ;
void mthca_free(struct mthca_alloc *alloc , u32 obj ) ;
int mthca_alloc_init(struct mthca_alloc *alloc , u32 num , u32 mask , u32 reserved ) ;
void mthca_alloc_cleanup(struct mthca_alloc *alloc ) ;
void *mthca_array_get(struct mthca_array *array , int index ) ;
int mthca_array_set(struct mthca_array *array , int index , void *value ) ;
void mthca_array_clear(struct mthca_array *array , int index ) ;
int mthca_array_init(struct mthca_array *array , int nent ) ;
void mthca_array_cleanup(struct mthca_array *array , int nent ) ;
int mthca_buf_alloc(struct mthca_dev *dev , int size , int max_direct , union mthca_buf *buf ,
                    int *is_direct , struct mthca_pd *pd , int hca_write , struct mthca_mr *mr ) ;
void mthca_buf_free(struct mthca_dev *dev , int size , union mthca_buf *buf , int is_direct ,
                    struct mthca_mr *mr ) ;
int mthca_mr_alloc_phys(struct mthca_dev *dev , u32 pd , u64 *buffer_list , int buffer_size_shift ,
                        int list_len , u64 iova , u64 total_size , u32 access , struct mthca_mr *mr ) ;
void mthca_free_mr(struct mthca_dev *dev , struct mthca_mr *mr ) ;
u32 mthca_alloc(struct mthca_alloc *alloc )
{ unsigned long flags ;
  u32 obj ;
  raw_spinlock_t *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = spinlock_check(& alloc->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = find_next_zero_bit((unsigned long const *)alloc->table, (unsigned long )alloc->max,
                               (unsigned long )alloc->last);
  obj = (u32 )tmp___0;
  if (alloc->max <= obj) {
    alloc->top = (alloc->top + alloc->max) & alloc->mask;
    tmp___1 = find_first_zero_bit((unsigned long const *)alloc->table, (unsigned long )alloc->max);
    obj = (u32 )tmp___1;
  } else {
  }
  if (alloc->max > obj) {
    set_bit(obj, (unsigned long volatile *)alloc->table);
    obj = alloc->top | obj;
  } else {
    obj = 4294967295U;
  }
  spin_unlock_irqrestore(& alloc->lock, flags);
  return (obj);
}
}
void mthca_free(struct mthca_alloc *alloc , u32 obj )
{ unsigned long flags ;
  raw_spinlock_t *tmp ;
  u32 _min1 ;
  u32 _min2 ;
  u32 tmp___0 ;
  {
  obj = (alloc->max - 1U) & obj;
  tmp = spinlock_check(& alloc->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  clear_bit((int )obj, (unsigned long volatile *)alloc->table);
  _min1 = alloc->last;
  _min2 = obj;
  if (_min1 < _min2) {
    tmp___0 = _min1;
  } else {
    tmp___0 = _min2;
  }
  alloc->last = tmp___0;
  alloc->top = (alloc->top + alloc->max) & alloc->mask;
  spin_unlock_irqrestore(& alloc->lock, flags);
  return;
}
}
int mthca_alloc_init(struct mthca_alloc *alloc , u32 num , u32 mask , u32 reserved )
{ int i ;
  int tmp ;
  struct lock_class_key __key ;
  void *tmp___0 ;
  {
  tmp = ffs((int )num);
  if ((u32 )(1 << (tmp + -1)) != num) {
    return (-22);
  } else {
  }
  alloc->last = 0U;
  alloc->top = 0U;
  alloc->max = num;
  alloc->mask = mask;
  spinlock_check(& alloc->lock);
  __raw_spin_lock_init(& alloc->lock.ldv_5961.rlock, "&(&alloc->lock)->rlock", & __key);
  tmp___0 = kmalloc((((unsigned long )num + 63UL) / 64UL) * 8UL, 208U);
  alloc->table = (unsigned long *)tmp___0;
  if ((unsigned long )alloc->table == (unsigned long )((unsigned long *)0)) {
    return (-12);
  } else {
  }
  bitmap_zero(alloc->table, (int )num);
  i = 0;
  goto ldv_21831;
  ldv_21830:
  set_bit((unsigned int )i, (unsigned long volatile *)alloc->table);
  i = i + 1;
  ldv_21831: ;
  if ((u32 )i < reserved) {
    goto ldv_21830;
  } else {
    goto ldv_21832;
  }
  ldv_21832: ;
  return (0);
}
}
void mthca_alloc_cleanup(struct mthca_alloc *alloc )
{
  {
  kfree((void const *)alloc->table);
  return;
}
}
void *mthca_array_get(struct mthca_array *array , int index )
{ int p ;
  {
  p = (int )((unsigned long )index * 8UL >> 12);
  if ((unsigned long )(array->page_list + (unsigned long )p)->page != (unsigned long )((void **)0)) {
    return (*((array->page_list + (unsigned long )p)->page + ((unsigned long )index & 511UL)));
  } else {
    return (0);
  }
}
}
int mthca_array_set(struct mthca_array *array , int index , void *value )
{ int p ;
  unsigned long tmp ;
  {
  p = (int )((unsigned long )index * 8UL >> 12);
  if ((unsigned long )(array->page_list + (unsigned long )p)->page == (unsigned long )((void **)0)) {
    tmp = get_zeroed_page(32U);
    (array->page_list + (unsigned long )p)->page = (void **)tmp;
  } else {
  }
  if ((unsigned long )(array->page_list + (unsigned long )p)->page == (unsigned long )((void **)0)) {
    return (-12);
  } else {
  }
  *((array->page_list + (unsigned long )p)->page + ((unsigned long )index & 511UL)) = value;
  (array->page_list + (unsigned long )p)->used = (array->page_list + (unsigned long )p)->used + 1;
  return (0);
}
}
void mthca_array_clear(struct mthca_array *array , int index )
{ int p ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  p = (int )((unsigned long )index * 8UL >> 12);
  (array->page_list + (unsigned long )p)->used = (array->page_list + (unsigned long )p)->used - 1;
  if ((array->page_list + (unsigned long )p)->used == 0) {
    free_pages((unsigned long )(array->page_list + (unsigned long )p)->page, 0U);
    (array->page_list + (unsigned long )p)->page = 0;
  } else {
    *((array->page_list + (unsigned long )p)->page + ((unsigned long )index & 511UL)) = 0;
  }
  if ((array->page_list + (unsigned long )p)->used < 0) {
    descriptor.modname = "ib_mthca";
    descriptor.function = "mthca_array_clear";
    descriptor.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_allocator.c.prepared";
    descriptor.format = "Array %p index %d page %d with ref count %d < 0\n";
    descriptor.lineno = 277U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "Array %p index %d page %d with ref count %d < 0\n",
                         array, index, p, (array->page_list + (unsigned long )p)->used);
    } else {
    }
  } else {
  }
  return;
}
}
int mthca_array_init(struct mthca_array *array , int nent )
{ int npage ;
  int i ;
  void *tmp ;
  {
  npage = (int )((((unsigned long )nent + 512UL) * 8UL - 1UL) / 4096UL);
  tmp = kmalloc((unsigned long )npage * 16UL, 208U);
  array->page_list = (struct __anonstruct_168 *)tmp;
  if ((unsigned long )array->page_list == (unsigned long )((struct __anonstruct_page_list_167 *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_21861;
  ldv_21860:
  (array->page_list + (unsigned long )i)->page = 0;
  (array->page_list + (unsigned long )i)->used = 0;
  i = i + 1;
  ldv_21861: ;
  if (i < npage) {
    goto ldv_21860;
  } else {
    goto ldv_21862;
  }
  ldv_21862: ;
  return (0);
}
}
void mthca_array_cleanup(struct mthca_array *array , int nent )
{ int i ;
  {
  i = 0;
  goto ldv_21869;
  ldv_21868:
  free_pages((unsigned long )(array->page_list + (unsigned long )i)->page, 0U);
  i = i + 1;
  ldv_21869: ;
  if ((unsigned long )i < (((unsigned long )nent + 512UL) * 8UL - 1UL) / 4096UL) {
    goto ldv_21868;
  } else {
    goto ldv_21870;
  }
  ldv_21870:
  kfree((void const *)array->page_list);
  return;
}
}
int mthca_buf_alloc(struct mthca_dev *dev , int size , int max_direct , union mthca_buf *buf ,
                    int *is_direct , struct mthca_pd *pd , int hca_write , struct mthca_mr *mr )
{ int err ;
  int npages ;
  int shift ;
  u64 *dma_list ;
  dma_addr_t t ;
  int i ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  unsigned int tmp___3 ;
  {
  err = -12;
  dma_list = 0;
  if (size <= max_direct) {
    *is_direct = 1;
    npages = 1;
    tmp = __get_order((unsigned long )size);
    shift = tmp + 12;
    buf->direct.buf = dma_alloc_attrs(& (dev->pdev)->dev, (size_t )size, & t, 208U,
                                      0);
    if ((unsigned long )buf->direct.buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
    buf->direct.mapping = t;
    memset(buf->direct.buf, 0, (size_t )size);
    goto ldv_21888;
    ldv_21887:
    shift = shift - 1;
    npages = npages * 2;
    ldv_21888: ;
    if (((dma_addr_t )((1 << shift) + -1) & t) != 0ULL) {
      goto ldv_21887;
    } else {
      goto ldv_21889;
    }
    ldv_21889:
    tmp___0 = kmalloc((unsigned long )npages * 8UL, 208U);
    dma_list = (u64 *)tmp___0;
    if ((unsigned long )dma_list == (unsigned long )((u64 *)0)) {
      goto err_free;
    } else {
    }
    i = 0;
    goto ldv_21892;
    ldv_21891:
    *(dma_list + (unsigned long )i) = (dma_addr_t )(i << shift) + t;
    i = i + 1;
    ldv_21892: ;
    if (i < npages) {
      goto ldv_21891;
    } else {
      goto ldv_21893;
    }
    ldv_21893: ;
  } else {
    *is_direct = 0;
    npages = (int )(((unsigned long )size + 4095UL) / 4096UL);
    shift = 12;
    tmp___1 = kmalloc((unsigned long )npages * 8UL, 208U);
    dma_list = (u64 *)tmp___1;
    if ((unsigned long )dma_list == (unsigned long )((u64 *)0)) {
      return (-12);
    } else {
    }
    tmp___2 = kmalloc((unsigned long )npages * 16UL, 208U);
    buf->page_list = (struct mthca_buf_list *)tmp___2;
    if ((unsigned long )buf->page_list == (unsigned long )((struct mthca_buf_list *)0)) {
      goto err_out;
    } else {
    }
    i = 0;
    goto ldv_21896;
    ldv_21895:
    (buf->page_list + (unsigned long )i)->buf = 0;
    i = i + 1;
    ldv_21896: ;
    if (i < npages) {
      goto ldv_21895;
    } else {
      goto ldv_21897;
    }
    ldv_21897:
    i = 0;
    goto ldv_21899;
    ldv_21898:
    (buf->page_list + (unsigned long )i)->buf = dma_alloc_attrs(& (dev->pdev)->dev,
                                                                4096UL, & t, 208U,
                                                                0);
    if ((unsigned long )(buf->page_list + (unsigned long )i)->buf == (unsigned long )((void *)0)) {
      goto err_free;
    } else {
    }
    *(dma_list + (unsigned long )i) = t;
    (buf->page_list + (unsigned long )i)->mapping = t;
    clear_page((buf->page_list + (unsigned long )i)->buf);
    i = i + 1;
    ldv_21899: ;
    if (i < npages) {
      goto ldv_21898;
    } else {
      goto ldv_21900;
    }
    ldv_21900: ;
  }
  if (hca_write != 0) {
    tmp___3 = 3072U;
  } else {
    tmp___3 = 1024U;
  }
  err = mthca_mr_alloc_phys(dev, pd->pd_num, dma_list, shift, npages, 0ULL, (u64 )size,
                            tmp___3, mr);
  if (err != 0) {
    goto err_free;
  } else {
  }
  kfree((void const *)dma_list);
  return (0);
  err_free:
  mthca_buf_free(dev, size, buf, *is_direct, 0);
  err_out:
  kfree((void const *)dma_list);
  return (err);
}
}
void mthca_buf_free(struct mthca_dev *dev , int size , union mthca_buf *buf , int is_direct ,
                    struct mthca_mr *mr )
{ int i ;
  {
  if ((unsigned long )mr != (unsigned long )((struct mthca_mr *)0)) {
    mthca_free_mr(dev, mr);
  } else {
  }
  if (is_direct != 0) {
    dma_free_attrs(& (dev->pdev)->dev, (size_t )size, buf->direct.buf, buf->direct.mapping,
                   0);
  } else {
    i = 0;
    goto ldv_21910;
    ldv_21909:
    dma_free_attrs(& (dev->pdev)->dev, 4096UL, (buf->page_list + (unsigned long )i)->buf,
                   (buf->page_list + (unsigned long )i)->mapping, 0);
    i = i + 1;
    ldv_21910: ;
    if ((unsigned long )i < ((unsigned long )size + 4095UL) / 4096UL) {
      goto ldv_21909;
    } else {
      goto ldv_21911;
    }
    ldv_21911:
    kfree((void const *)buf->page_list);
  }
  return;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_62(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{ struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{ int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
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
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    ldv_20324: ;
    goto ldv_20324;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, 0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
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
                         "i" (91), "i" (12UL));
    ldv_20332: ;
    goto ldv_20332;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, 0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{ struct device *tmp ;
  {
  if ((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0)) {
    tmp = & hwdev->dev;
  } else {
    tmp = 0;
  }
  dma_free_attrs(tmp, size, vaddr, dma_handle, 0);
  return;
}
}
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{ struct device *tmp ;
  dma_addr_t tmp___0 ;
  {
  if ((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0)) {
    tmp = & hwdev->dev;
  } else {
    tmp = 0;
  }
  tmp___0 = dma_map_page(tmp, page, offset, size, (enum dma_data_direction )direction);
  return (tmp___0);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{ struct device *tmp ;
  {
  if ((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0)) {
    tmp = & hwdev->dev;
  } else {
    tmp = 0;
  }
  dma_unmap_page(tmp, dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{ int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
}
}
extern void ib_dispatch_event(struct ib_event * ) ;
__inline static void mthca_write64(u32 hi , u32 lo , void *dest , spinlock_t *doorbell_lock )
{ __u64 tmp ;
  {
  tmp = __fswab64(((unsigned long long )hi << 32) | (unsigned long long )lo);
  writeq((unsigned long )tmp, (void volatile *)dest);
  return;
}
}
void mthca_cq_completion(struct mthca_dev *dev , u32 cqn ) ;
void mthca_cq_event(struct mthca_dev *dev , u32 cqn , enum ib_event_type event_type ) ;
void mthca_srq_event(struct mthca_dev *dev , u32 srqn , enum ib_event_type event_type ) ;
void mthca_qp_event(struct mthca_dev *dev , u32 qpn , enum ib_event_type event_type ) ;
__inline static u64 async_mask(struct mthca_dev *dev )
{ unsigned long long tmp ;
  {
  if ((dev->mthca_flags & 4UL) != 0UL) {
    tmp = 2049022ULL;
  } else {
    tmp = 214014ULL;
  }
  return (tmp);
}
}
__inline static void tavor_set_eq_ci(struct mthca_dev *dev , struct mthca_eq *eq ,
                                     u32 ci )
{
  {
  __asm__ volatile ("sfence": : : "memory");
  mthca_write64((u32 )(eq->eqn | 67108864), (u32 )(eq->nent + -1) & ci, dev->kar + 40UL,
                0);
  return;
}
}
__inline static void arbel_set_eq_ci(struct mthca_dev *dev , struct mthca_eq *eq ,
                                     u32 ci )
{ __u32 tmp ;
  {
  __asm__ volatile ("sfence": : : "memory");
  tmp = __fswab32(ci);
  __writel(tmp, (void volatile *)dev->eq_regs.arbel.eq_set_ci_base + (unsigned long )(eq->eqn * 8));
  __asm__ volatile ("mfence": : : "memory");
  return;
}
}
__inline static void set_eq_ci(struct mthca_dev *dev , struct mthca_eq *eq , u32 ci )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    arbel_set_eq_ci(dev, eq, ci);
  } else {
    tavor_set_eq_ci(dev, eq, ci);
  }
  return;
}
}
__inline static void tavor_eq_req_not(struct mthca_dev *dev , int eqn )
{
  {
  mthca_write64((u32 )(eqn | 33554432), 0U, dev->kar + 40UL, 0);
  return;
}
}
__inline static void arbel_eq_req_not(struct mthca_dev *dev , u32 eqn_mask )
{
  {
  writel(eqn_mask, (void volatile *)dev->eq_regs.arbel.eq_arm);
  return;
}
}
__inline static void disarm_cq(struct mthca_dev *dev , int eqn , int cqn )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    mthca_write64((u32 )(eqn | 50331648), (u32 )cqn, dev->kar + 40UL, 0);
  } else {
  }
  return;
}
}
__inline static struct mthca_eqe *get_eqe(struct mthca_eq *eq , u32 entry )
{ unsigned long off ;
  {
  off = (unsigned long )(((u32 )(eq->nent + -1) & entry) * 32U);
  return ((struct mthca_eqe *)((eq->page_list + off / 4096UL)->buf + (off & 4095UL)));
}
}
__inline static struct mthca_eqe *next_eqe_sw(struct mthca_eq *eq )
{ struct mthca_eqe *eqe ;
  struct mthca_eqe *tmp ;
  {
  eqe = get_eqe(eq, eq->cons_index);
  if ((int )((signed char )eqe->owner) >= 0) {
    tmp = eqe;
  } else {
    tmp = 0;
  }
  return (tmp);
}
}
__inline static void set_eqe_hw(struct mthca_eqe *eqe )
{
  {
  eqe->owner = 128U;
  return;
}
}
static void port_change(struct mthca_dev *dev , int port , int active )
{ struct ib_event record ;
  char *tmp ;
  {
  if (mthca_debug_level != 0) {
    if (active != 0) {
      tmp = (char *)"active";
    } else {
      tmp = (char *)"down";
    }
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Port change to %s for port %d\n",
               tmp, port);
  } else {
  }
  record.device = & dev->ib_dev;
  if (active != 0) {
    record.event = 9;
  } else {
    record.event = 10;
  }
  record.element.port_num = (u8 )port;
  ib_dispatch_event(& record);
  return;
}
}
static int mthca_eq_int(struct mthca_dev *dev , struct mthca_eq *eq )
{ struct mthca_eqe *eqe ;
  int disarm_cqn ;
  int eqes_found ;
  int set_ci ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u64 tmp___9 ;
  __u16 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  char *tmp___13 ;
  __u32 tmp___14 ;
  long tmp___15 ;
  {
  eqes_found = 0;
  set_ci = 0;
  goto ldv_23826;
  ldv_23825:
  __asm__ volatile ("lfence": : : "memory");
  switch ((int )eqe->type) {
  case 0:
  tmp = __fswab32(eqe->event.comp.cqn);
  disarm_cqn = (int )tmp & 16777215;
  disarm_cq(dev, eq->eqn, disarm_cqn);
  mthca_cq_completion(dev, (u32 )disarm_cqn);
  goto ldv_23806;
  case 1:
  tmp___0 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___0 & 16777215U, 6);
  goto ldv_23806;
  case 2:
  tmp___1 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___1 & 16777215U, 4);
  goto ldv_23806;
  case 3:
  tmp___2 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___2 & 16777215U, 5);
  goto ldv_23806;
  case 19:
  tmp___3 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___3 & 16777215U, 16);
  goto ldv_23806;
  case 20:
  tmp___4 = __fswab32(eqe->event.srq.srqn);
  mthca_srq_event(dev, tmp___4 & 16777215U, 15);
  goto ldv_23806;
  case 5:
  tmp___5 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___5 & 16777215U, 1);
  goto ldv_23806;
  case 7:
  tmp___6 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___6 & 16777215U, 7);
  goto ldv_23806;
  case 16:
  tmp___7 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___7 & 16777215U, 2);
  goto ldv_23806;
  case 17:
  tmp___8 = __fswab32(eqe->event.qp.qpn);
  mthca_qp_event(dev, tmp___8 & 16777215U, 3);
  goto ldv_23806;
  case 10:
  tmp___9 = __fswab64(eqe->event.cmd.out_param);
  tmp___10 = __fswab16((int )eqe->event.cmd.token);
  mthca_cmd_event(dev, (int )tmp___10, (int )eqe->event.cmd.status, tmp___9);
  goto ldv_23806;
  case 9:
  tmp___11 = __fswab32(eqe->event.port_change.port);
  port_change(dev, (int )(tmp___11 >> 28) & 3, (unsigned int )eqe->subtype == 4U);
  goto ldv_23806;
  case 4:
  tmp___12 = __fswab32(eqe->event.cq_err.cqn);
  if ((unsigned int )eqe->event.cq_err.syndrome == 1U) {
    tmp___13 = (char *)"overrun";
  } else {
    tmp___13 = (char *)"access violation";
  }
  dev_warn((struct device const *)(& (dev->pdev)->dev), "CQ %s on CQN %06x\n", tmp___13,
           tmp___12 & 16777215U);
  tmp___14 = __fswab32(eqe->event.cq_err.cqn);
  mthca_cq_event(dev, tmp___14, 0);
  goto ldv_23806;
  case 15:
  dev_warn((struct device const *)(& (dev->pdev)->dev), "EQ overrun on EQN %d\n",
           eq->eqn);
  goto ldv_23806;
  case 6: ;
  case 18: ;
  case 8: ;
  case 14: ;
  default:
  dev_warn((struct device const *)(& (dev->pdev)->dev), "Unhandled event %02x(%02x) on EQ %d\n",
           (int )eqe->type, (int )eqe->subtype, eq->eqn);
  goto ldv_23806;
  }
  ldv_23806:
  set_eqe_hw(eqe);
  eq->cons_index = eq->cons_index + 1U;
  eqes_found = 1;
  set_ci = set_ci + 1;
  tmp___15 = ldv__builtin_expect(set_ci > 127, 0L);
  if (tmp___15 != 0L) {
    set_eq_ci(dev, eq, eq->cons_index);
    set_ci = 0;
  } else {
  }
  ldv_23826:
  eqe = next_eqe_sw(eq);
  if ((unsigned long )eqe != (unsigned long )((struct mthca_eqe *)0)) {
    goto ldv_23825;
  } else {
    goto ldv_23827;
  }
  ldv_23827: ;
  return (eqes_found);
}
}
static irqreturn_t mthca_tavor_interrupt(int irq , void *dev_ptr )
{ struct mthca_dev *dev ;
  u32 ecr ;
  int i ;
  int tmp ;
  {
  dev = (struct mthca_dev *)dev_ptr;
  if (dev->eq_table.clr_mask != 0U) {
    writel(dev->eq_table.clr_mask, (void volatile *)dev->eq_table.clr_int);
  } else {
  }
  ecr = readl((void const volatile *)dev->eq_regs.tavor.ecr_base + 4U);
  if (ecr == 0U) {
    return (0);
  } else {
  }
  writel(ecr, (void volatile *)dev->eq_regs.tavor.ecr_base + 12U);
  i = 0;
  goto ldv_23836;
  ldv_23835: ;
  if ((dev->eq_table.eq[i].eqn_mask & ecr) != 0U) {
    tmp = mthca_eq_int(dev, (struct mthca_eq *)(& dev->eq_table.eq) + (unsigned long )i);
    if (tmp != 0) {
      tavor_set_eq_ci(dev, (struct mthca_eq *)(& dev->eq_table.eq) + (unsigned long )i,
                      dev->eq_table.eq[i].cons_index);
    } else {
    }
    tavor_eq_req_not(dev, dev->eq_table.eq[i].eqn);
  } else {
  }
  i = i + 1;
  ldv_23836: ;
  if (i <= 2) {
    goto ldv_23835;
  } else {
    goto ldv_23837;
  }
  ldv_23837: ;
  return (1);
}
}
static irqreturn_t mthca_tavor_msi_x_interrupt(int irq , void *eq_ptr )
{ struct mthca_eq *eq ;
  struct mthca_dev *dev ;
  {
  eq = (struct mthca_eq *)eq_ptr;
  dev = eq->dev;
  mthca_eq_int(dev, eq);
  tavor_set_eq_ci(dev, eq, eq->cons_index);
  tavor_eq_req_not(dev, eq->eqn);
  return (1);
}
}
static irqreturn_t mthca_arbel_interrupt(int irq , void *dev_ptr )
{ struct mthca_dev *dev ;
  int work ;
  int i ;
  int tmp ;
  {
  dev = (struct mthca_dev *)dev_ptr;
  work = 0;
  if (dev->eq_table.clr_mask != 0U) {
    writel(dev->eq_table.clr_mask, (void volatile *)dev->eq_table.clr_int);
  } else {
  }
  i = 0;
  goto ldv_23852;
  ldv_23851:
  tmp = mthca_eq_int(dev, (struct mthca_eq *)(& dev->eq_table.eq) + (unsigned long )i);
  if (tmp != 0) {
    work = 1;
    arbel_set_eq_ci(dev, (struct mthca_eq *)(& dev->eq_table.eq) + (unsigned long )i,
                    dev->eq_table.eq[i].cons_index);
  } else {
  }
  i = i + 1;
  ldv_23852: ;
  if (i <= 2) {
    goto ldv_23851;
  } else {
    goto ldv_23853;
  }
  ldv_23853:
  arbel_eq_req_not(dev, dev->eq_table.arm_mask);
  return (work != 0);
}
}
static irqreturn_t mthca_arbel_msi_x_interrupt(int irq , void *eq_ptr )
{ struct mthca_eq *eq ;
  struct mthca_dev *dev ;
  {
  eq = (struct mthca_eq *)eq_ptr;
  dev = eq->dev;
  mthca_eq_int(dev, eq);
  arbel_set_eq_ci(dev, eq, eq->cons_index);
  arbel_eq_req_not(dev, eq->eqn_mask);
  return (1);
}
}
static int mthca_create_eq(struct mthca_dev *dev , int nent , u8 intr , struct mthca_eq *eq )
{ int npages ;
  u64 *dma_list ;
  dma_addr_t t ;
  struct mthca_mailbox *mailbox ;
  struct mthca_eq_context *eq_context ;
  int err ;
  int i ;
  int _max1 ;
  int _max2 ;
  int tmp ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  struct mthca_eqe *tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  int tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  {
  dma_list = 0;
  err = -12;
  eq->dev = dev;
  _max1 = nent;
  _max2 = 2;
  if (_max1 > _max2) {
    tmp = _max1;
  } else {
    tmp = _max2;
  }
  tmp___0 = __roundup_pow_of_two((unsigned long )tmp);
  eq->nent = (int )tmp___0;
  npages = (int )((unsigned long )((eq->nent * 32 + 4095) & -4096) / 4096UL);
  tmp___1 = kmalloc((unsigned long )npages * 16UL, 208U);
  eq->page_list = (struct mthca_buf_list *)tmp___1;
  if ((unsigned long )eq->page_list == (unsigned long )((struct mthca_buf_list *)0)) {
    goto err_out;
  } else {
  }
  i = 0;
  goto ldv_24091;
  ldv_24090:
  (eq->page_list + (unsigned long )i)->buf = 0;
  i = i + 1;
  ldv_24091: ;
  if (i < npages) {
    goto ldv_24090;
  } else {
    goto ldv_24092;
  }
  ldv_24092:
  tmp___2 = kmalloc((unsigned long )npages * 8UL, 208U);
  dma_list = (u64 *)tmp___2;
  if ((unsigned long )dma_list == (unsigned long )((u64 *)0)) {
    goto err_out_free;
  } else {
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___3 = IS_ERR((void const *)mailbox);
  if (tmp___3 != 0L) {
    goto err_out_free;
  } else {
  }
  eq_context = (struct mthca_eq_context *)mailbox->buf;
  i = 0;
  goto ldv_24096;
  ldv_24095:
  (eq->page_list + (unsigned long )i)->buf = dma_alloc_attrs(& (dev->pdev)->dev, 4096UL,
                                                             & t, 208U, 0);
  if ((unsigned long )(eq->page_list + (unsigned long )i)->buf == (unsigned long )((void *)0)) {
    goto err_out_free_pages;
  } else {
  }
  *(dma_list + (unsigned long )i) = t;
  (eq->page_list + (unsigned long )i)->mapping = t;
  clear_page((eq->page_list + (unsigned long )i)->buf);
  i = i + 1;
  ldv_24096: ;
  if (i < npages) {
    goto ldv_24095;
  } else {
    goto ldv_24097;
  }
  ldv_24097:
  i = 0;
  goto ldv_24099;
  ldv_24098:
  tmp___4 = get_eqe(eq, (u32 )i);
  set_eqe_hw(tmp___4);
  i = i + 1;
  ldv_24099: ;
  if (eq->nent > i) {
    goto ldv_24098;
  } else {
    goto ldv_24100;
  }
  ldv_24100:
  tmp___5 = mthca_alloc(& dev->eq_table.alloc);
  eq->eqn = (int )tmp___5;
  if (eq->eqn == -1) {
    goto err_out_free_pages;
  } else {
  }
  err = mthca_mr_alloc_phys(dev, dev->driver_pd.pd_num, dma_list, 12, npages, 0ULL,
                            (u64 )((unsigned long )npages * 4096UL), 3072U, & eq->mr);
  if (err != 0) {
    goto err_out_free_eq;
  } else {
  }
  memset((void *)eq_context, 0, 64UL);
  eq_context->flags = 66561U;
  tmp___6 = mthca_is_memfree(dev);
  if (tmp___6 != 0) {
    eq_context->flags = eq_context->flags | 524288U;
  } else {
  }
  tmp___7 = ffs(eq->nent);
  tmp___8 = __fswab32((__u32 )((tmp___7 + -1) << 24));
  eq_context->logsize_usrpage = tmp___8;
  tmp___12 = mthca_is_memfree(dev);
  if (tmp___12 != 0) {
    tmp___9 = __fswab32(dev->driver_pd.pd_num);
    eq_context->arbel_pd = tmp___9;
  } else {
    tmp___10 = __fswab32((__u32 )dev->driver_uar.index);
    eq_context->logsize_usrpage = eq_context->logsize_usrpage | tmp___10;
    tmp___11 = __fswab32(dev->driver_pd.pd_num);
    eq_context->tavor_pd = tmp___11;
  }
  eq_context->intr = intr;
  tmp___13 = __fswab32(eq->mr.ibmr.lkey);
  eq_context->lkey = tmp___13;
  err = mthca_SW2HW_EQ(dev, mailbox, eq->eqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SW2HW_EQ returned %d\n",
             err);
    goto err_out_free_mr;
  } else {
  }
  kfree((void const *)dma_list);
  mthca_free_mailbox(dev, mailbox);
  tmp___14 = __fswab32((__u32 )(1 << eq->eqn));
  eq->eqn_mask = tmp___14;
  eq->cons_index = 0U;
  dev->eq_table.arm_mask = dev->eq_table.arm_mask | eq->eqn_mask;
  if (mthca_debug_level != 0) {
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Allocated EQ %d with %d entries\n",
               eq->eqn, eq->nent);
  } else {
  }
  return (err);
  err_out_free_mr:
  mthca_free_mr(dev, & eq->mr);
  err_out_free_eq:
  mthca_free(& dev->eq_table.alloc, (u32 )eq->eqn);
  err_out_free_pages:
  i = 0;
  goto ldv_24104;
  ldv_24103: ;
  if ((unsigned long )(eq->page_list + (unsigned long )i)->buf != (unsigned long )((void *)0)) {
    dma_free_attrs(& (dev->pdev)->dev, 4096UL, (eq->page_list + (unsigned long )i)->buf,
                   (eq->page_list + (unsigned long )i)->mapping, 0);
  } else {
  }
  i = i + 1;
  ldv_24104: ;
  if (i < npages) {
    goto ldv_24103;
  } else {
    goto ldv_24105;
  }
  ldv_24105:
  mthca_free_mailbox(dev, mailbox);
  err_out_free:
  kfree((void const *)eq->page_list);
  kfree((void const *)dma_list);
  err_out: ;
  return (err);
}
}
static void mthca_free_eq(struct mthca_dev *dev , struct mthca_eq *eq )
{ struct mthca_mailbox *mailbox ;
  int err ;
  int npages ;
  int i ;
  long tmp ;
  __u32 tmp___0 ;
  {
  npages = (int )(((unsigned long )(eq->nent * 32) + 4095UL) / 4096UL);
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp = IS_ERR((void const *)mailbox);
  if (tmp != 0L) {
    return;
  } else {
  }
  err = mthca_HW2SW_EQ(dev, mailbox, eq->eqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "HW2SW_EQ returned %d\n",
             err);
  } else {
  }
  dev->eq_table.arm_mask = dev->eq_table.arm_mask & ~ eq->eqn_mask;
  if (0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Dumping EQ context %02x:\n",
                 eq->eqn);
    } else {
    }
    i = 0;
    goto ldv_24115;
    ldv_24114: ;
    if (((unsigned int )i & 3U) == 0U) {
      printk("[%02x] ", i * 4);
    } else {
    }
    tmp___0 = __be32_to_cpup((__be32 const *)mailbox->buf + (unsigned long )(i * 4));
    printk(" %08x", tmp___0);
    if (((unsigned int )(i + 1) & 3U) == 0U) {
      printk("\n");
    } else {
    }
    i = i + 1;
    ldv_24115: ;
    if ((unsigned int )i <= 15U) {
      goto ldv_24114;
    } else {
      goto ldv_24116;
    }
    ldv_24116: ;
  } else {
  }
  mthca_free_mr(dev, & eq->mr);
  i = 0;
  goto ldv_24118;
  ldv_24117:
  pci_free_consistent(dev->pdev, 4096UL, (eq->page_list + (unsigned long )i)->buf,
                      (eq->page_list + (unsigned long )i)->mapping);
  i = i + 1;
  ldv_24118: ;
  if (i < npages) {
    goto ldv_24117;
  } else {
    goto ldv_24119;
  }
  ldv_24119:
  kfree((void const *)eq->page_list);
  mthca_free_mailbox(dev, mailbox);
  return;
}
}
static void mthca_free_irqs(struct mthca_dev *dev )
{ int i ;
  {
  if (dev->eq_table.have_irq != 0) {
    free_irq((dev->pdev)->irq, (void *)dev);
  } else {
  }
  i = 0;
  goto ldv_24125;
  ldv_24124: ;
  if (dev->eq_table.eq[i].have_irq != 0) {
    free_irq((unsigned int )dev->eq_table.eq[i].msi_x_vector, (void *)(& dev->eq_table.eq) + (unsigned long )i);
    dev->eq_table.eq[i].have_irq = 0;
  } else {
  }
  i = i + 1;
  ldv_24125: ;
  if (i <= 2) {
    goto ldv_24124;
  } else {
    goto ldv_24126;
  }
  ldv_24126: ;
  return;
}
}
static int mthca_map_reg(struct mthca_dev *dev , unsigned long offset , unsigned long size ,
                         void **map )
{ phys_addr_t base ;
  {
  base = (dev->pdev)->resource[0].start;
  *map = ioremap(base + (unsigned long long )offset, size);
  if ((unsigned long )*map == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int mthca_map_eq_regs(struct mthca_dev *dev )
{ unsigned long long tmp ;
  int tmp___0 ;
  unsigned long long tmp___1 ;
  int tmp___2 ;
  unsigned long long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp___7 = mthca_is_memfree(dev);
  if (tmp___7 != 0) {
    if ((dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start) {
      tmp = (dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start;
    } else {
      tmp = 0xffffffffffffffffULL;
    }
    tmp___0 = mthca_map_reg(dev, (unsigned long )(tmp & dev->fw.arbel.clr_int_base),
                            8UL, & dev->clr_base);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map interrupt clear register, aborting.\n");
      return (-12);
    } else {
    }
    if ((dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start) {
      tmp___1 = (dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start;
    } else {
      tmp___1 = 0xffffffffffffffffULL;
    }
    tmp___2 = mthca_map_reg(dev, (unsigned long )((tmp___1 & dev->fw.arbel.eq_arm_base) + 4ULL),
                            4UL, & dev->eq_regs.arbel.eq_arm);
    if (tmp___2 != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map EQ arm register, aborting.\n");
      iounmap((void volatile *)dev->clr_base);
      return (-12);
    } else {
    }
    if ((dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start) {
      tmp___3 = (dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start;
    } else {
      tmp___3 = 0xffffffffffffffffULL;
    }
    tmp___4 = mthca_map_reg(dev, (unsigned long )(tmp___3 & dev->fw.arbel.eq_set_ci_base),
                            256UL, & dev->eq_regs.arbel.eq_set_ci_base);
    if (tmp___4 != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map EQ CI register, aborting.\n");
      iounmap((void volatile *)dev->eq_regs.arbel.eq_arm);
      iounmap((void volatile *)dev->clr_base);
      return (-12);
    } else {
    }
  } else {
    tmp___5 = mthca_map_reg(dev, 983256UL, 8UL, & dev->clr_base);
    if (tmp___5 != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map interrupt clear register, aborting.\n");
      return (-12);
    } else {
    }
    tmp___6 = mthca_map_reg(dev, 526080UL, 16UL, & dev->eq_regs.tavor.ecr_base);
    if (tmp___6 != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Couldn\'t map ecr register, aborting.\n");
      iounmap((void volatile *)dev->clr_base);
      return (-12);
    } else {
    }
  }
  return (0);
}
}
static void mthca_unmap_eq_regs(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    iounmap((void volatile *)dev->eq_regs.arbel.eq_set_ci_base);
    iounmap((void volatile *)dev->eq_regs.arbel.eq_arm);
    iounmap((void volatile *)dev->clr_base);
  } else {
    iounmap((void volatile *)dev->eq_regs.tavor.ecr_base);
    iounmap((void volatile *)dev->clr_base);
  }
  return;
}
}
int mthca_map_eq_icm(struct mthca_dev *dev , u64 icm_virt )
{ int ret ;
  int tmp ;
  {
  dev->eq_table.icm_virt = icm_virt;
  dev->eq_table.icm_page = alloc_pages(131282U, 0U);
  if ((unsigned long )dev->eq_table.icm_page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  dev->eq_table.icm_dma = pci_map_page(dev->pdev, dev->eq_table.icm_page, 0UL, 4096UL,
                                       0);
  tmp = pci_dma_mapping_error(dev->pdev, dev->eq_table.icm_dma);
  if (tmp != 0) {
    __free_pages(dev->eq_table.icm_page, 0U);
    return (-12);
  } else {
  }
  ret = mthca_MAP_ICM_page(dev, dev->eq_table.icm_dma, icm_virt);
  if (ret != 0) {
    pci_unmap_page(dev->pdev, dev->eq_table.icm_dma, 4096UL, 0);
    __free_pages(dev->eq_table.icm_page, 0U);
  } else {
  }
  return (ret);
}
}
void mthca_unmap_eq_icm(struct mthca_dev *dev )
{
  {
  mthca_UNMAP_ICM(dev, dev->eq_table.icm_virt, 1U);
  pci_unmap_page(dev->pdev, dev->eq_table.icm_dma, 4096UL, 0);
  __free_pages(dev->eq_table.icm_page, 0U);
  return;
}
}
int mthca_init_eq_table(struct mthca_dev *dev )
{ int err ;
  u8 intr ;
  int i ;
  __u32 tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  char const *eq_name[3U] ;
  char const *tmp___4 ;
  irqreturn_t (*tmp___6)(int irq , void *eq_ptr ) ;
  int tmp___7 ;
  char const *tmp___8 ;
  irqreturn_t (*tmp___10)(int irq , void *dev_ptr ) ;
  int tmp___11 ;
  u64 tmp___12 ;
  int tmp___13 ;
  {
  err = mthca_alloc_init(& dev->eq_table.alloc, (u32 )dev->limits.num_eqs, (u32 )(dev->limits.num_eqs + -1),
                         (u32 )dev->limits.reserved_eqs);
  if (err != 0) {
    return (err);
  } else {
  }
  err = mthca_map_eq_regs(dev);
  if (err != 0) {
    goto err_out_free;
  } else {
  }
  if ((dev->mthca_flags & 8UL) != 0UL) {
    dev->eq_table.clr_mask = 0U;
  } else {
    tmp = __fswab32((__u32 )(1 << ((int )dev->eq_table.inta_pin & 31)));
    dev->eq_table.clr_mask = tmp;
    if ((unsigned int )dev->eq_table.inta_pin <= 31U) {
      tmp___0 = 4UL;
    } else {
      tmp___0 = 0UL;
    }
    dev->eq_table.clr_int = dev->clr_base + tmp___0;
  }
  dev->eq_table.arm_mask = 0U;
  intr = dev->eq_table.inta_pin;
  if ((dev->mthca_flags & 8UL) == 0UL) {
    tmp___1 = (int )intr;
  } else {
    tmp___1 = 128;
  }
  err = mthca_create_eq(dev, dev->limits.num_cqs + 128, tmp___1, (struct mthca_eq *)(& dev->eq_table.eq) + 2UL);
  if (err != 0) {
    goto err_out_unmap;
  } else {
  }
  if ((dev->mthca_flags & 8UL) == 0UL) {
    tmp___2 = (int )intr;
  } else {
    tmp___2 = 129;
  }
  err = mthca_create_eq(dev, 256, tmp___2, (struct mthca_eq *)(& dev->eq_table.eq) + 1UL);
  if (err != 0) {
    goto err_out_comp;
  } else {
  }
  if ((dev->mthca_flags & 8UL) == 0UL) {
    tmp___3 = (int )intr;
  } else {
    tmp___3 = 130;
  }
  err = mthca_create_eq(dev, 256, tmp___3, (struct mthca_eq *)(& dev->eq_table.eq));
  if (err != 0) {
    goto err_out_async;
  } else {
  }
  if ((dev->mthca_flags & 8UL) != 0UL) {
    eq_name[0] = "ib_mthca-cmd";
    eq_name[1] = "ib_mthca-async";
    eq_name[2] = "ib_mthca-comp";
    i = 0;
    goto ldv_24161;
    ldv_24160:
    tmp___4 = pci_name((struct pci_dev const *)dev->pdev);
    snprintf((char *)(& dev->eq_table.eq[i].irq_name), 64UL, "%s@pci:%s", eq_name[i],
             tmp___4);
    tmp___7 = mthca_is_memfree(dev);
    if (tmp___7 != 0) {
      tmp___6 = & mthca_arbel_msi_x_interrupt;
    } else {
      tmp___6 = & mthca_tavor_msi_x_interrupt;
    }
    err = request_irq((unsigned int )dev->eq_table.eq[i].msi_x_vector, tmp___6, 0UL,
                      (char const *)(& dev->eq_table.eq[i].irq_name), (void *)(& dev->eq_table.eq) + (unsigned long )i);
    if (err != 0) {
      goto err_out_cmd;
    } else {
    }
    dev->eq_table.eq[i].have_irq = 1;
    i = i + 1;
    ldv_24161: ;
    if (i <= 2) {
      goto ldv_24160;
    } else {
      goto ldv_24162;
    }
    ldv_24162: ;
  } else {
    tmp___8 = pci_name((struct pci_dev const *)dev->pdev);
    snprintf((char *)(& dev->eq_table.eq[0].irq_name), 64UL, "ib_mthca@pci:%s", tmp___8);
    tmp___11 = mthca_is_memfree(dev);
    if (tmp___11 != 0) {
      tmp___10 = & mthca_arbel_interrupt;
    } else {
      tmp___10 = & mthca_tavor_interrupt;
    }
    err = request_irq((dev->pdev)->irq, tmp___10, 128UL, (char const *)(& dev->eq_table.eq[0].irq_name),
                      (void *)dev);
    if (err != 0) {
      goto err_out_cmd;
    } else {
    }
    dev->eq_table.have_irq = 1;
  }
  tmp___12 = async_mask(dev);
  err = mthca_MAP_EQ(dev, tmp___12, 0, dev->eq_table.eq[1].eqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "MAP_EQ for async EQ %d failed (%d)\n",
             dev->eq_table.eq[1].eqn, err);
  } else {
  }
  err = mthca_MAP_EQ(dev, 1024ULL, 0, dev->eq_table.eq[0].eqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "MAP_EQ for cmd EQ %d failed (%d)\n",
             dev->eq_table.eq[0].eqn, err);
  } else {
  }
  i = 0;
  goto ldv_24164;
  ldv_24163:
  tmp___13 = mthca_is_memfree(dev);
  if (tmp___13 != 0) {
    arbel_eq_req_not(dev, dev->eq_table.eq[i].eqn_mask);
  } else {
    tavor_eq_req_not(dev, dev->eq_table.eq[i].eqn);
  }
  i = i + 1;
  ldv_24164: ;
  if (i <= 2) {
    goto ldv_24163;
  } else {
    goto ldv_24165;
  }
  ldv_24165: ;
  return (0);
  err_out_cmd:
  mthca_free_irqs(dev);
  mthca_free_eq(dev, (struct mthca_eq *)(& dev->eq_table.eq));
  err_out_async:
  mthca_free_eq(dev, (struct mthca_eq *)(& dev->eq_table.eq) + 1UL);
  err_out_comp:
  mthca_free_eq(dev, (struct mthca_eq *)(& dev->eq_table.eq) + 2UL);
  err_out_unmap:
  mthca_unmap_eq_regs(dev);
  err_out_free:
  mthca_alloc_cleanup(& dev->eq_table.alloc);
  return (err);
}
}
void mthca_cleanup_eq_table(struct mthca_dev *dev )
{ int i ;
  u64 tmp ;
  {
  mthca_free_irqs(dev);
  tmp = async_mask(dev);
  mthca_MAP_EQ(dev, tmp, 1, dev->eq_table.eq[1].eqn);
  mthca_MAP_EQ(dev, 1024ULL, 1, dev->eq_table.eq[0].eqn);
  i = 0;
  goto ldv_24171;
  ldv_24170:
  mthca_free_eq(dev, (struct mthca_eq *)(& dev->eq_table.eq) + (unsigned long )i);
  i = i + 1;
  ldv_24171: ;
  if (i <= 2) {
    goto ldv_24170;
  } else {
    goto ldv_24172;
  }
  ldv_24172:
  mthca_unmap_eq_regs(dev);
  mthca_alloc_cleanup(& dev->eq_table.alloc);
  return;
}
}
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
int ldv_mutex_trylock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 ) ;
int mthca_mr_alloc_notrans(struct mthca_dev *dev , u32 pd , u32 access , struct mthca_mr *mr ) ;
int mthca_pd_alloc(struct mthca_dev *dev , int privileged , struct mthca_pd *pd )
{ int err ;
  {
  err = 0;
  pd->privileged = privileged;
  atomic_set(& pd->sqp_count, 0);
  pd->pd_num = mthca_alloc(& dev->pd_table.alloc);
  if (pd->pd_num == 4294967295U) {
    return (-12);
  } else {
  }
  if (privileged != 0) {
    err = mthca_mr_alloc_notrans(dev, pd->pd_num, 3072U, & pd->ntmr);
    if (err != 0) {
      mthca_free(& dev->pd_table.alloc, pd->pd_num);
    } else {
    }
  } else {
  }
  return (err);
}
}
void mthca_pd_free(struct mthca_dev *dev , struct mthca_pd *pd )
{
  {
  if (pd->privileged != 0) {
    mthca_free_mr(dev, & pd->ntmr);
  } else {
  }
  mthca_free(& dev->pd_table.alloc, pd->pd_num);
  return;
}
}
int mthca_init_pd_table(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_alloc_init(& dev->pd_table.alloc, (u32 )dev->limits.num_pds, 16777215U,
                         (u32 )dev->limits.reserved_pds);
  return (tmp);
}
}
void mthca_cleanup_pd_table(struct mthca_dev *dev )
{
  {
  mthca_alloc_cleanup(& dev->pd_table.alloc);
  return;
}
}
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_82(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void be16_add_cpu(__be16 *var , u16 val )
{ __u16 tmp ;
  __u16 tmp___0 ;
  {
  tmp = __fswab16((int )*var);
  tmp___0 = __fswab16((int )tmp + (int )val);
  *var = tmp___0;
  return;
}
}
int ldv_mutex_trylock_94(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5961.rlock);
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void synchronize_irq(unsigned int ) ;
__inline static struct mthca_cq *to_mcq(struct ib_cq *ibcq )
{ struct ib_cq const *__mptr ;
  {
  __mptr = (struct ib_cq const *)ibcq;
  return ((struct mthca_cq *)__mptr);
}
}
__inline static struct mthca_srq *to_msrq(struct ib_srq *ibsrq )
{ struct ib_srq const *__mptr ;
  {
  __mptr = (struct ib_srq const *)ibsrq;
  return ((struct mthca_srq *)__mptr);
}
}
__inline static void mthca_write_db_rec(__be32 *val , __be32 *db )
{
  {
  *((u64 *)db) = *((u64 *)val);
  return;
}
}
int mthca_poll_cq(struct ib_cq *ibcq , int num_entries , struct ib_wc *entry ) ;
int mthca_tavor_arm_cq(struct ib_cq *cq , enum ib_cq_notify_flags flags ) ;
int mthca_arbel_arm_cq(struct ib_cq *ibcq , enum ib_cq_notify_flags flags ) ;
int mthca_init_cq(struct mthca_dev *dev , int nent , struct mthca_ucontext *ctx ,
                  u32 pdn , struct mthca_cq *cq ) ;
void mthca_free_cq(struct mthca_dev *dev , struct mthca_cq *cq ) ;
void mthca_cq_clean(struct mthca_dev *dev , struct mthca_cq *cq , u32 qpn , struct mthca_srq *srq ) ;
void mthca_cq_resize_copy_cqes(struct mthca_cq *cq ) ;
int mthca_alloc_cq_buf(struct mthca_dev *dev , struct mthca_cq_buf *buf , int nent ) ;
void mthca_free_cq_buf(struct mthca_dev *dev , struct mthca_cq_buf *buf , int cqe ) ;
void mthca_free_srq_wqe(struct mthca_srq *srq , u32 wqe_addr ) ;
void mthca_free_err_wqe(struct mthca_dev *dev , struct mthca_qp *qp , int is_send ,
                        int index , int *dbd , __be32 *new_wqe ) ;
__inline static struct mthca_dev *to_mdev(struct ib_device *ibdev )
{ struct ib_device const *__mptr ;
  {
  __mptr = (struct ib_device const *)ibdev;
  return ((struct mthca_dev *)__mptr);
}
}
int mthca_table_get(struct mthca_dev *dev , struct mthca_icm_table *table , int obj ) ;
void mthca_table_put(struct mthca_dev *dev , struct mthca_icm_table *table , int obj ) ;
int mthca_alloc_db(struct mthca_dev *dev , enum mthca_db_type type , u32 qn , __be32 **db ) ;
void mthca_free_db(struct mthca_dev *dev , int type , int db_index ) ;
__inline static struct mthca_cqe *get_cqe_from_buf(struct mthca_cq_buf *buf , int entry )
{
  {
  if (buf->is_direct != 0) {
    return ((struct mthca_cqe *)buf->queue.direct.buf + (unsigned long )(entry * 32));
  } else {
    return ((struct mthca_cqe *)((buf->queue.page_list + (unsigned long )(entry * 32) / 4096UL)->buf + ((unsigned long )(entry * 32) & 4095UL)));
  }
}
}
__inline static struct mthca_cqe *get_cqe(struct mthca_cq *cq , int entry )
{ struct mthca_cqe *tmp ;
  {
  tmp = get_cqe_from_buf(& cq->buf, entry);
  return (tmp);
}
}
__inline static struct mthca_cqe *cqe_sw(struct mthca_cqe *cqe )
{ struct mthca_cqe *tmp ;
  {
  if ((int )((signed char )cqe->owner) >= 0) {
    tmp = cqe;
  } else {
    tmp = 0;
  }
  return (tmp);
}
}
__inline static struct mthca_cqe *next_cqe_sw(struct mthca_cq *cq )
{ struct mthca_cqe *tmp ;
  struct mthca_cqe *tmp___0 ;
  {
  tmp = get_cqe(cq, (int )(cq->cons_index & (u32 )cq->ibcq.cqe));
  tmp___0 = cqe_sw(tmp);
  return (tmp___0);
}
}
__inline static void set_cqe_hw(struct mthca_cqe *cqe )
{
  {
  cqe->owner = 128U;
  return;
}
}
static void dump_cqe(struct mthca_dev *dev , void *cqe_ptr )
{ __be32 *cqe ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  {
  cqe = (__be32 *)cqe_ptr;
  if (mthca_debug_level != 0) {
    tmp = __fswab32(*(cqe + 7UL));
    tmp___0 = __fswab32(*(cqe + 6UL));
    tmp___1 = __fswab32(*(cqe + 5UL));
    tmp___2 = __fswab32(*(cqe + 4UL));
    tmp___3 = __fswab32(*(cqe + 3UL));
    tmp___4 = __fswab32(*(cqe + 2UL));
    tmp___5 = __fswab32(*(cqe + 1UL));
    tmp___6 = __fswab32(*cqe);
    dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\n",
               tmp___6, tmp___5, tmp___4, tmp___3, tmp___2, tmp___1, tmp___0, tmp);
  } else {
  }
  return;
}
}
__inline static void update_cons_index(struct mthca_dev *dev , struct mthca_cq *cq ,
                                       int incr )
{ __u32 tmp ;
  int tmp___0 ;
  {
  tmp___0 = mthca_is_memfree(dev);
  if (tmp___0 != 0) {
    tmp = __fswab32(cq->cons_index);
    *(cq->set_ci_db) = tmp;
    __asm__ volatile ("sfence": : : "memory");
  } else {
    mthca_write64((u32 )(cq->cqn | 16777216), (u32 )(incr + -1), dev->kar + 32UL,
                  0);
    __asm__ volatile ("": : : "memory");
  }
  return;
}
}
void mthca_cq_completion(struct mthca_dev *dev , u32 cqn )
{ struct mthca_cq *cq ;
  void *tmp ;
  {
  tmp = mthca_array_get(& dev->cq_table.cq, (int )((u32 )(dev->limits.num_cqs + -1) & cqn));
  cq = (struct mthca_cq *)tmp;
  if ((unsigned long )cq == (unsigned long )((struct mthca_cq *)0)) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Completion event for bogus CQ %08x\n",
             cqn);
    return;
  } else {
  }
  cq->arm_sn = cq->arm_sn + 1;
  (*(cq->ibcq.comp_handler))(& cq->ibcq, cq->ibcq.cq_context);
  return;
}
}
void mthca_cq_event(struct mthca_dev *dev , u32 cqn , enum ib_event_type event_type )
{ struct mthca_cq *cq ;
  struct ib_event event ;
  void *tmp ;
  {
  spin_lock(& dev->cq_table.lock);
  tmp = mthca_array_get(& dev->cq_table.cq, (int )((u32 )(dev->limits.num_cqs + -1) & cqn));
  cq = (struct mthca_cq *)tmp;
  if ((unsigned long )cq != (unsigned long )((struct mthca_cq *)0)) {
    cq->refcount = cq->refcount + 1;
  } else {
  }
  spin_unlock(& dev->cq_table.lock);
  if ((unsigned long )cq == (unsigned long )((struct mthca_cq *)0)) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Async event for bogus CQ %08x\n",
             cqn);
    return;
  } else {
  }
  event.device = & dev->ib_dev;
  event.event = event_type;
  event.element.cq = & cq->ibcq;
  if ((unsigned long )cq->ibcq.event_handler != (unsigned long )((void (*)(struct ib_event * ,
                                                                           void * ))0)) {
    (*(cq->ibcq.event_handler))(& event, cq->ibcq.cq_context);
  } else {
  }
  spin_lock(& dev->cq_table.lock);
  cq->refcount = cq->refcount - 1;
  if (cq->refcount == 0) {
    __wake_up(& cq->wait, 3U, 1, 0);
  } else {
  }
  spin_unlock(& dev->cq_table.lock);
  return;
}
}
__inline static int is_recv_cqe(struct mthca_cqe *cqe )
{
  {
  if (((int )cqe->opcode & 254) == 254) {
    return (((int )cqe->opcode & 1) == 0);
  } else {
    return ((int )((signed char )cqe->is_send) >= 0);
  }
}
}
void mthca_cq_clean(struct mthca_dev *dev , struct mthca_cq *cq , u32 qpn , struct mthca_srq *srq )
{ struct mthca_cqe *cqe ;
  u32 prod_index ;
  int i ;
  int nfreed ;
  struct mthca_cqe *tmp ;
  struct mthca_cqe *tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  struct mthca_cqe *tmp___3 ;
  struct mthca_cqe *tmp___4 ;
  __u32 tmp___5 ;
  struct mthca_cqe *tmp___6 ;
  {
  nfreed = 0;
  spin_lock_irq(& cq->lock);
  prod_index = cq->cons_index;
  goto ldv_27448;
  ldv_27447: ;
  if (cq->cons_index + (u32 )cq->ibcq.cqe == prod_index) {
    goto ldv_27446;
  } else {
  }
  prod_index = prod_index + 1U;
  ldv_27448:
  tmp = get_cqe(cq, (int )((u32 )cq->ibcq.cqe & prod_index));
  tmp___0 = cqe_sw(tmp);
  if ((unsigned long )tmp___0 != (unsigned long )((struct mthca_cqe *)0)) {
    goto ldv_27447;
  } else {
    goto ldv_27446;
  }
  ldv_27446: ;
  goto ldv_27453;
  ldv_27452:
  cqe = get_cqe(cq, (int )((u32 )cq->ibcq.cqe & prod_index));
  tmp___5 = __fswab32(qpn);
  if (cqe->my_qpn == tmp___5) {
    if ((unsigned long )srq != (unsigned long )((struct mthca_srq *)0)) {
      tmp___2 = is_recv_cqe(cqe);
      if (tmp___2 != 0) {
        tmp___1 = __fswab32(cqe->wqe);
        mthca_free_srq_wqe(srq, tmp___1);
      } else {
      }
    } else {
    }
    nfreed = nfreed + 1;
  } else
  if (nfreed != 0) {
    __len = 32UL;
    if (__len > 63UL) {
      tmp___3 = get_cqe(cq, (int )((prod_index + (u32 )nfreed) & (u32 )cq->ibcq.cqe));
      __ret = memcpy((void *)tmp___3, (void const *)cqe, __len);
    } else {
      tmp___4 = get_cqe(cq, (int )((prod_index + (u32 )nfreed) & (u32 )cq->ibcq.cqe));
      __ret = memcpy((void *)tmp___4, (void const *)cqe, __len);
    }
  } else {
  }
  ldv_27453:
  prod_index = prod_index - 1U;
  if ((int )prod_index - (int )cq->cons_index >= 0) {
    goto ldv_27452;
  } else {
    goto ldv_27454;
  }
  ldv_27454: ;
  if (nfreed != 0) {
    i = 0;
    goto ldv_27456;
    ldv_27455:
    tmp___6 = get_cqe(cq, (int )((cq->cons_index + (u32 )i) & (u32 )cq->ibcq.cqe));
    set_cqe_hw(tmp___6);
    i = i + 1;
    ldv_27456: ;
    if (i < nfreed) {
      goto ldv_27455;
    } else {
      goto ldv_27457;
    }
    ldv_27457:
    __asm__ volatile ("sfence": : : "memory");
    cq->cons_index = cq->cons_index + (u32 )nfreed;
    update_cons_index(dev, cq, nfreed);
  } else {
  }
  spin_unlock_irq(& cq->lock);
  return;
}
}
void mthca_cq_resize_copy_cqes(struct mthca_cq *cq )
{ int i ;
  struct mthca_cqe *tmp ;
  struct mthca_cqe *tmp___0 ;
  struct mthca_dev *tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  struct mthca_cqe *tmp___3 ;
  struct mthca_cqe *tmp___4 ;
  struct mthca_cqe *tmp___5 ;
  struct mthca_cqe *tmp___6 ;
  struct mthca_cqe *tmp___7 ;
  struct mthca_cqe *tmp___8 ;
  {
  tmp___1 = to_mdev(cq->ibcq.device);
  tmp___2 = mthca_is_memfree(tmp___1);
  if (tmp___2 == 0 && cq->ibcq.cqe < (cq->resize_buf)->cqe) {
    cq->cons_index = cq->cons_index & (u32 )cq->ibcq.cqe;
    tmp = get_cqe(cq, cq->ibcq.cqe);
    tmp___0 = cqe_sw(tmp);
    if ((unsigned long )tmp___0 != (unsigned long )((struct mthca_cqe *)0)) {
      cq->cons_index = cq->cons_index + (u32 )(~ cq->ibcq.cqe);
    } else {
    }
  } else {
  }
  i = (int )cq->cons_index;
  goto ldv_27466;
  ldv_27465:
  __len = 32UL;
  if (__len > 63UL) {
    tmp___3 = get_cqe(cq, cq->ibcq.cqe & i);
    tmp___4 = get_cqe_from_buf(& (cq->resize_buf)->buf, (cq->resize_buf)->cqe & i);
    __ret = memcpy((void *)tmp___4, (void const *)tmp___3, __len);
  } else {
    tmp___5 = get_cqe(cq, cq->ibcq.cqe & i);
    tmp___6 = get_cqe_from_buf(& (cq->resize_buf)->buf, (cq->resize_buf)->cqe & i);
    __ret = memcpy((void *)tmp___6, (void const *)tmp___5, __len);
  }
  i = i + 1;
  ldv_27466:
  tmp___7 = get_cqe(cq, cq->ibcq.cqe & i);
  tmp___8 = cqe_sw(tmp___7);
  if ((unsigned long )tmp___8 != (unsigned long )((struct mthca_cqe *)0)) {
    goto ldv_27465;
  } else {
    goto ldv_27467;
  }
  ldv_27467: ;
  return;
}
}
int mthca_alloc_cq_buf(struct mthca_dev *dev , struct mthca_cq_buf *buf , int nent )
{ int ret ;
  int i ;
  struct mthca_cqe *tmp ;
  {
  ret = mthca_buf_alloc(dev, nent * 32, 16384, & buf->queue, & buf->is_direct, & dev->driver_pd,
                        1, & buf->mr);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  goto ldv_27476;
  ldv_27475:
  tmp = get_cqe_from_buf(buf, i);
  set_cqe_hw(tmp);
  i = i + 1;
  ldv_27476: ;
  if (i < nent) {
    goto ldv_27475;
  } else {
    goto ldv_27477;
  }
  ldv_27477: ;
  return (0);
}
}
void mthca_free_cq_buf(struct mthca_dev *dev , struct mthca_cq_buf *buf , int cqe )
{
  {
  mthca_buf_free(dev, (cqe + 1) * 32, & buf->queue, buf->is_direct, & buf->mr);
  return;
}
}
static void handle_error_cqe(struct mthca_dev *dev , struct mthca_cq *cq , struct mthca_qp *qp ,
                             int wqe_index , int is_send , struct mthca_err_cqe *cqe ,
                             struct ib_wc *entry , int *free_cqe )
{ int dbd ;
  __be32 new_wqe ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )cqe->syndrome == 2U) {
    if (mthca_debug_level != 0) {
      tmp = __fswab32(cqe->wqe);
      tmp___0 = __fswab32(cqe->my_qpn);
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "local QP operation err (QPN %06x, WQE @ %08x, CQN %06x, index %d)\n",
                 tmp___0, tmp, cq->cqn, cq->cons_index);
    } else {
    }
    dump_cqe(dev, (void *)cqe);
  } else {
  }
  switch ((int )cqe->syndrome) {
  case 1:
  entry->status = 1;
  goto ldv_27496;
  case 2:
  entry->status = 2;
  goto ldv_27496;
  case 3:
  entry->status = 3;
  goto ldv_27496;
  case 4:
  entry->status = 4;
  goto ldv_27496;
  case 5:
  entry->status = 5;
  goto ldv_27496;
  case 6:
  entry->status = 6;
  goto ldv_27496;
  case 16:
  entry->status = 7;
  goto ldv_27496;
  case 17:
  entry->status = 8;
  goto ldv_27496;
  case 18:
  entry->status = 9;
  goto ldv_27496;
  case 19:
  entry->status = 10;
  goto ldv_27496;
  case 20:
  entry->status = 11;
  goto ldv_27496;
  case 21:
  entry->status = 12;
  goto ldv_27496;
  case 22:
  entry->status = 13;
  goto ldv_27496;
  case 32:
  entry->status = 14;
  goto ldv_27496;
  case 33:
  entry->status = 15;
  goto ldv_27496;
  case 34:
  entry->status = 16;
  goto ldv_27496;
  case 35:
  entry->status = 17;
  goto ldv_27496;
  case 36:
  entry->status = 18;
  goto ldv_27496;
  default:
  entry->status = 21;
  goto ldv_27496;
  }
  ldv_27496:
  entry->vendor_err = (u32 )cqe->vendor_err;
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    return;
  } else {
  }
  mthca_free_err_wqe(dev, qp, is_send, wqe_index, & dbd, & new_wqe);
  if ((new_wqe & 1056964608U) == 0U || ((unsigned int )cqe->db_cnt == 0U && dbd != 0)) {
    return;
  } else {
  }
  be16_add_cpu(& cqe->db_cnt, - ((int )((u16 )dbd)));
  cqe->wqe = new_wqe;
  cqe->syndrome = 5U;
  *free_cqe = 0;
  return;
}
}
__inline static int mthca_poll_one(struct mthca_dev *dev , struct mthca_cq *cq , struct mthca_qp **cur_qp ,
                                   int *freed , struct ib_wc *entry )
{ struct mthca_wq *wq ;
  struct mthca_cqe *cqe ;
  int wqe_index ;
  int is_error ;
  int is_send ;
  int free_cqe ;
  int err ;
  u16 checksum ;
  __u32 tmp___1 ;
  void *tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  struct mthca_srq *srq ;
  struct mthca_srq *tmp___6 ;
  u32 wqe ;
  __u32 tmp___7 ;
  s32 wqe___0 ;
  __u32 tmp___8 ;
  long tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u16 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  {
  free_cqe = 1;
  err = 0;
  cqe = next_cqe_sw(cq);
  if ((unsigned long )cqe == (unsigned long )((struct mthca_cqe *)0)) {
    return (-11);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  is_error = ((int )cqe->opcode & 254) == 254;
  if (is_error != 0) {
    is_send = (int )cqe->opcode & 1;
  } else {
    is_send = (int )cqe->is_send & 128;
  }
  if ((unsigned long )*cur_qp == (unsigned long )((struct mthca_qp *)0)) {
    goto _L;
  } else {
    tmp___4 = __fswab32(cqe->my_qpn);
    if (tmp___4 != (*cur_qp)->qpn) {
      _L:
      tmp___1 = __fswab32(cqe->my_qpn);
      tmp___2 = mthca_array_get(& dev->qp_table.qp, (int )(tmp___1 & (unsigned int )(dev->limits.num_qps + -1)));
      *cur_qp = (struct mthca_qp *)tmp___2;
      if ((unsigned long )*cur_qp == (unsigned long )((struct mthca_qp *)0)) {
        tmp___3 = __fswab32(cqe->my_qpn);
        dev_warn((struct device const *)(& (dev->pdev)->dev), "CQ entry for unknown QP %06x\n",
                 tmp___3 & 16777215U);
        err = -22;
        goto out;
      } else {
      }
    } else {
    }
  }
  entry->qp = & (*cur_qp)->ibqp;
  if (is_send != 0) {
    wq = & (*cur_qp)->sq;
    tmp___5 = __fswab32(cqe->wqe);
    wqe_index = (int )((tmp___5 - (unsigned int )(*cur_qp)->send_wqe_offset) >> wq->wqe_shift);
    entry->wr_id = *((*cur_qp)->wrid + (unsigned long )((*cur_qp)->rq.max + wqe_index));
  } else
  if ((unsigned long )(*cur_qp)->ibqp.srq != (unsigned long )((struct ib_srq *)0)) {
    tmp___6 = to_msrq((*cur_qp)->ibqp.srq);
    srq = tmp___6;
    tmp___7 = __fswab32(cqe->wqe);
    wqe = tmp___7;
    wq = 0;
    wqe_index = (int )(wqe >> srq->wqe_shift);
    entry->wr_id = *(srq->wrid + (unsigned long )wqe_index);
    mthca_free_srq_wqe(srq, wqe);
  } else {
    wq = & (*cur_qp)->rq;
    tmp___8 = __fswab32(cqe->wqe);
    wqe___0 = (s32 )tmp___8;
    wqe_index = wqe___0 >> wq->wqe_shift;
    tmp___9 = ldv__builtin_expect(wqe_index < 0, 0L);
    if (tmp___9 != 0L) {
      wqe_index = wq->max + -1;
    } else {
    }
    entry->wr_id = *((*cur_qp)->wrid + (unsigned long )wqe_index);
  }
  if ((unsigned long )wq != (unsigned long )((struct mthca_wq *)0)) {
    if (wq->last_comp < (unsigned int )wqe_index) {
      wq->tail = wq->tail + ((unsigned int )wqe_index - wq->last_comp);
    } else {
      wq->tail = wq->tail + ((unsigned int )(wq->max + wqe_index) - wq->last_comp);
    }
    wq->last_comp = (unsigned int )wqe_index;
  } else {
  }
  if (is_error != 0) {
    handle_error_cqe(dev, cq, *cur_qp, wqe_index, is_send, (struct mthca_err_cqe *)cqe,
                     entry, & free_cqe);
    goto out;
  } else {
  }
  if (is_send != 0) {
    entry->wc_flags = 0;
    switch ((int )cqe->opcode) {
    case 8:
    entry->opcode = 1;
    goto ldv_27535;
    case 9:
    entry->opcode = 1;
    entry->wc_flags = entry->wc_flags | 2;
    goto ldv_27535;
    case 10:
    entry->opcode = 0;
    goto ldv_27535;
    case 11:
    entry->opcode = 0;
    entry->wc_flags = entry->wc_flags | 2;
    goto ldv_27535;
    case 16:
    entry->opcode = 2;
    tmp___10 = __fswab32(cqe->byte_cnt);
    entry->byte_len = tmp___10;
    goto ldv_27535;
    case 17:
    entry->opcode = 3;
    entry->byte_len = 8U;
    goto ldv_27535;
    case 18:
    entry->opcode = 4;
    entry->byte_len = 8U;
    goto ldv_27535;
    case 24:
    entry->opcode = 5;
    goto ldv_27535;
    default:
    entry->opcode = 255;
    goto ldv_27535;
    }
    ldv_27535: ;
  } else {
    tmp___11 = __fswab32(cqe->byte_cnt);
    entry->byte_len = tmp___11;
    switch ((int )cqe->opcode & 31) {
    case 3: ;
    case 5:
    entry->wc_flags = 2;
    entry->ex.imm_data = cqe->imm_etype_pkey_eec;
    entry->opcode = 128;
    goto ldv_27546;
    case 9: ;
    case 11:
    entry->wc_flags = 2;
    entry->ex.imm_data = cqe->imm_etype_pkey_eec;
    entry->opcode = 129;
    goto ldv_27546;
    default:
    entry->wc_flags = 0;
    entry->opcode = 128;
    goto ldv_27546;
    }
    ldv_27546:
    tmp___12 = __fswab16((int )cqe->rlid);
    entry->slid = tmp___12;
    entry->sl = (u8 )((int )cqe->sl_ipok >> 4);
    tmp___13 = __fswab32(cqe->rqpn);
    entry->src_qp = tmp___13 & 16777215U;
    entry->dlid_path_bits = (unsigned int )cqe->g_mlpath & 127U;
    tmp___14 = __fswab32(cqe->imm_etype_pkey_eec);
    entry->pkey_index = (u16 )(tmp___14 >> 16);
    entry->wc_flags = entry->wc_flags | ((int )((signed char )cqe->g_mlpath) < 0);
    tmp___15 = __fswab32(cqe->rqpn);
    tmp___16 = __fswab32(cqe->my_ee);
    checksum = (unsigned int )((u16 )(tmp___15 >> 24)) | ((unsigned int )((u16 )(tmp___16 >> 16)) & 65280U);
    if ((int )cqe->sl_ipok & 1 && (unsigned int )checksum == 65535U) {
      tmp___17 = 8;
    } else {
      tmp___17 = 0;
    }
    entry->wc_flags = entry->wc_flags | tmp___17;
  }
  entry->status = 0;
  out:
  tmp___18 = ldv__builtin_expect(free_cqe != 0, 1L);
  if (tmp___18 != 0L) {
    set_cqe_hw(cqe);
    *freed = *freed + 1;
    cq->cons_index = cq->cons_index + 1U;
  } else {
  }
  return (err);
}
}
int mthca_poll_cq(struct ib_cq *ibcq , int num_entries , struct ib_wc *entry )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_cq *cq ;
  struct mthca_cq *tmp___0 ;
  struct mthca_qp *qp ;
  unsigned long flags ;
  int err ;
  int freed ;
  int npolled ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  struct mthca_cq_buf tbuf ;
  int tcqe ;
  struct mthca_cqe *tmp___3 ;
  struct mthca_cqe *tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  {
  tmp = to_mdev(ibcq->device);
  dev = tmp;
  tmp___0 = to_mcq(ibcq);
  cq = tmp___0;
  qp = 0;
  err = 0;
  freed = 0;
  tmp___1 = spinlock_check(& cq->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  npolled = 0;
  repoll: ;
  goto ldv_27568;
  ldv_27567:
  err = mthca_poll_one(dev, cq, & qp, & freed, entry + (unsigned long )npolled);
  if (err != 0) {
    goto ldv_27566;
  } else {
  }
  npolled = npolled + 1;
  ldv_27568: ;
  if (npolled < num_entries) {
    goto ldv_27567;
  } else {
    goto ldv_27566;
  }
  ldv_27566: ;
  if (freed != 0) {
    __asm__ volatile ("sfence": : : "memory");
    update_cons_index(dev, cq, freed);
  } else {
  }
  tmp___5 = ldv__builtin_expect(err == -11, 0L);
  if (tmp___5 != 0L) {
    tmp___6 = ldv__builtin_expect((unsigned long )cq->resize_buf != (unsigned long )((struct mthca_cq_resize *)0),
                               0L);
    if (tmp___6 != 0L) {
      tmp___7 = 1;
    } else {
      tmp___7 = 0;
    }
  } else {
    tmp___7 = 0;
  }
  if (tmp___7 != 0) {
    tmp___8 = ldv__builtin_expect((unsigned int )(cq->resize_buf)->state == 1U, 0L);
    if (tmp___8 != 0L) {
      tmp___2 = mthca_is_memfree(dev);
      if (tmp___2 == 0) {
        cq->cons_index = cq->cons_index & (u32 )cq->ibcq.cqe;
      } else {
      }
      tmp___3 = get_cqe_from_buf(& (cq->resize_buf)->buf, (int )(cq->cons_index & (u32 )(cq->resize_buf)->cqe));
      tmp___4 = cqe_sw(tmp___3);
      if ((unsigned long )tmp___4 != (unsigned long )((struct mthca_cqe *)0)) {
        tbuf = cq->buf;
        tcqe = cq->ibcq.cqe;
        cq->buf = (cq->resize_buf)->buf;
        cq->ibcq.cqe = (cq->resize_buf)->cqe;
        (cq->resize_buf)->buf = tbuf;
        (cq->resize_buf)->cqe = tcqe;
        (cq->resize_buf)->state = 2;
        goto repoll;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& cq->lock, flags);
  if (err == 0 || err == -11) {
    tmp___9 = npolled;
  } else {
    tmp___9 = err;
  }
  return (tmp___9);
}
}
int mthca_tavor_arm_cq(struct ib_cq *cq , enum ib_cq_notify_flags flags )
{ u32 dbhi ;
  int tmp ;
  struct mthca_cq *tmp___0 ;
  struct mthca_dev *tmp___1 ;
  {
  if (((unsigned int )flags & 3U) == 1U) {
    tmp = 50331648;
  } else {
    tmp = 33554432;
  }
  tmp___0 = to_mcq(cq);
  dbhi = (u32 )(tmp | tmp___0->cqn);
  tmp___1 = to_mdev(cq->device);
  mthca_write64(dbhi, 4294967295U, tmp___1->kar + 32UL, 0);
  return (0);
}
}
int mthca_arbel_arm_cq(struct ib_cq *ibcq , enum ib_cq_notify_flags flags )
{ struct mthca_cq *cq ;
  struct mthca_cq *tmp ;
  __be32 db_rec[2U] ;
  u32 dbhi ;
  u32 sn ;
  __u32 tmp___0 ;
  unsigned int tmp___1 ;
  __u32 tmp___2 ;
  unsigned int tmp___3 ;
  struct mthca_dev *tmp___4 ;
  {
  tmp = to_mcq(ibcq);
  cq = tmp;
  sn = (u32 )cq->arm_sn & 3U;
  tmp___0 = __fswab32(cq->cons_index);
  db_rec[0] = tmp___0;
  if (((unsigned int )flags & 3U) == 1U) {
    tmp___1 = 1U;
  } else {
    tmp___1 = 2U;
  }
  tmp___2 = __fswab32((((u32 )(cq->cqn << 8) | (sn << 3)) | tmp___1) | 64U);
  db_rec[1] = tmp___2;
  mthca_write_db_rec((__be32 *)(& db_rec), cq->arm_db);
  __asm__ volatile ("sfence": : : "memory");
  if (((unsigned int )flags & 3U) == 1U) {
    tmp___3 = 16777216U;
  } else {
    tmp___3 = 33554432U;
  }
  dbhi = ((sn << 28) | tmp___3) | (u32 )cq->cqn;
  tmp___4 = to_mdev(ibcq->device);
  mthca_write64(dbhi, cq->cons_index, tmp___4->kar + 32UL, 0);
  return (0);
}
}
int mthca_init_cq(struct mthca_dev *dev , int nent , struct mthca_ucontext *ctx ,
                  u32 pdn , struct mthca_cq *cq )
{ struct mthca_mailbox *mailbox ;
  struct mthca_cq_context *cq_context ;
  int err ;
  u32 tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  {
  err = -12;
  cq->ibcq.cqe = nent + -1;
  cq->is_kernel = (unsigned long )ctx == (unsigned long )((struct mthca_ucontext *)0);
  tmp = mthca_alloc(& dev->cq_table.alloc);
  cq->cqn = (int )tmp;
  if (cq->cqn == -1) {
    return (-12);
  } else {
  }
  tmp___0 = mthca_is_memfree(dev);
  if (tmp___0 != 0) {
    err = mthca_table_get(dev, dev->cq_table.table, cq->cqn);
    if (err != 0) {
      goto err_out;
    } else {
    }
    if (cq->is_kernel != 0) {
      cq->arm_sn = 1;
      err = -12;
      cq->set_ci_db_index = mthca_alloc_db(dev, 1, (u32 )cq->cqn, & cq->set_ci_db);
      if (cq->set_ci_db_index < 0) {
        goto err_out_icm;
      } else {
      }
      cq->arm_db_index = mthca_alloc_db(dev, 2, (u32 )cq->cqn, & cq->arm_db);
      if (cq->arm_db_index < 0) {
        goto err_out_ci;
      } else {
      }
    } else {
    }
  } else {
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___1 = IS_ERR((void const *)mailbox);
  if (tmp___1 != 0L) {
    goto err_out_arm;
  } else {
  }
  cq_context = (struct mthca_cq_context *)mailbox->buf;
  if (cq->is_kernel != 0) {
    err = mthca_alloc_cq_buf(dev, & cq->buf, nent);
    if (err != 0) {
      goto err_out_mailbox;
    } else {
    }
  } else {
  }
  spinlock_check(& cq->lock);
  __raw_spin_lock_init(& cq->lock.ldv_5961.rlock, "&(&cq->lock)->rlock", & __key);
  cq->refcount = 1;
  __init_waitqueue_head(& cq->wait, "&cq->wait", & __key___0);
  __mutex_init(& cq->mutex, "&cq->mutex", & __key___1);
  memset((void *)cq_context, 0, 64UL);
  cq_context->flags = 1024U;
  tmp___2 = ffs(nent);
  tmp___3 = __fswab32((__u32 )((tmp___2 + -1) << 24));
  cq_context->logsize_usrpage = tmp___3;
  if ((unsigned long )ctx != (unsigned long )((struct mthca_ucontext *)0)) {
    tmp___4 = __fswab32((__u32 )ctx->uar.index);
    cq_context->logsize_usrpage = cq_context->logsize_usrpage | tmp___4;
  } else {
    tmp___5 = __fswab32((__u32 )dev->driver_uar.index);
    cq_context->logsize_usrpage = cq_context->logsize_usrpage | tmp___5;
  }
  tmp___6 = __fswab32((__u32 )dev->eq_table.eq[1].eqn);
  cq_context->error_eqn = tmp___6;
  tmp___7 = __fswab32((__u32 )dev->eq_table.eq[2].eqn);
  cq_context->comp_eqn = tmp___7;
  tmp___8 = __fswab32(pdn);
  cq_context->pd = tmp___8;
  tmp___9 = __fswab32(cq->buf.mr.ibmr.lkey);
  cq_context->lkey = tmp___9;
  tmp___10 = __fswab32((__u32 )cq->cqn);
  cq_context->cqn = tmp___10;
  tmp___13 = mthca_is_memfree(dev);
  if (tmp___13 != 0) {
    tmp___11 = __fswab32((__u32 )cq->set_ci_db_index);
    cq_context->ci_db = tmp___11;
    tmp___12 = __fswab32((__u32 )cq->arm_db_index);
    cq_context->state_db = tmp___12;
  } else {
  }
  err = mthca_SW2HW_CQ(dev, mailbox, cq->cqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SW2HW_CQ failed (%d)\n",
             err);
    goto err_out_free_mr;
  } else {
  }
  spin_lock_irq(& dev->cq_table.lock);
  tmp___14 = mthca_array_set(& dev->cq_table.cq, cq->cqn & (dev->limits.num_cqs + -1),
                             (void *)cq);
  if (tmp___14 != 0) {
    spin_unlock_irq(& dev->cq_table.lock);
    goto err_out_free_mr;
  } else {
  }
  spin_unlock_irq(& dev->cq_table.lock);
  cq->cons_index = 0U;
  mthca_free_mailbox(dev, mailbox);
  return (0);
  err_out_free_mr: ;
  if (cq->is_kernel != 0) {
    mthca_free_cq_buf(dev, & cq->buf, cq->ibcq.cqe);
  } else {
  }
  err_out_mailbox:
  mthca_free_mailbox(dev, mailbox);
  err_out_arm: ;
  if (cq->is_kernel != 0) {
    tmp___15 = mthca_is_memfree(dev);
    if (tmp___15 != 0) {
      mthca_free_db(dev, 2, cq->arm_db_index);
    } else {
    }
  } else {
  }
  err_out_ci: ;
  if (cq->is_kernel != 0) {
    tmp___16 = mthca_is_memfree(dev);
    if (tmp___16 != 0) {
      mthca_free_db(dev, 1, cq->set_ci_db_index);
    } else {
    }
  } else {
  }
  err_out_icm:
  mthca_table_put(dev, dev->cq_table.table, cq->cqn);
  err_out:
  mthca_free(& dev->cq_table.alloc, (u32 )cq->cqn);
  return (err);
}
}
__inline static int get_cq_refcount(struct mthca_dev *dev , struct mthca_cq *cq )
{ int c ;
  {
  spin_lock_irq(& dev->cq_table.lock);
  c = cq->refcount;
  spin_unlock_irq(& dev->cq_table.lock);
  return (c);
}
}
void mthca_free_cq(struct mthca_dev *dev , struct mthca_cq *cq )
{ struct mthca_mailbox *mailbox ;
  int err ;
  long tmp ;
  __be32 *ctx ;
  int j ;
  struct mthca_cqe *tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp = IS_ERR((void const *)mailbox);
  if (tmp != 0L) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "No memory for mailbox to free CQ.\n");
    return;
  } else {
  }
  err = mthca_HW2SW_CQ(dev, mailbox, cq->cqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "HW2SW_CQ failed (%d)\n",
             err);
  } else {
  }
  if (0) {
    ctx = (__be32 *)mailbox->buf;
    if (cq->is_kernel != 0) {
      tmp___0 = next_cqe_sw(cq);
      if ((unsigned long )tmp___0 != (unsigned long )((struct mthca_cqe *)0)) {
        tmp___1 = 1;
      } else {
        tmp___1 = 0;
      }
    } else {
      tmp___1 = 0;
    }
    printk("\vcontext for CQN %x (cons index %x, next sw %d)\n", cq->cqn, cq->cons_index,
           tmp___1);
    j = 0;
    goto ldv_27617;
    ldv_27616:
    tmp___2 = __fswab32(*(ctx + (unsigned long )j));
    printk("\v[%2x] %08x\n", j * 4, tmp___2);
    j = j + 1;
    ldv_27617: ;
    if (j <= 15) {
      goto ldv_27616;
    } else {
      goto ldv_27618;
    }
    ldv_27618: ;
  } else {
  }
  spin_lock_irq(& dev->cq_table.lock);
  mthca_array_clear(& dev->cq_table.cq, cq->cqn & (dev->limits.num_cqs + -1));
  cq->refcount = cq->refcount - 1;
  spin_unlock_irq(& dev->cq_table.lock);
  if ((dev->mthca_flags & 8UL) != 0UL) {
    synchronize_irq((unsigned int )dev->eq_table.eq[2].msi_x_vector);
  } else {
    synchronize_irq((dev->pdev)->irq);
  }
  tmp___3 = get_cq_refcount(dev, cq);
  if (tmp___3 == 0) {
    goto ldv_27619;
  } else {
  }
  tmp___4 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___4;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_27622:
  prepare_to_wait(& cq->wait, & __wait, 2);
  tmp___5 = get_cq_refcount(dev, cq);
  if (tmp___5 == 0) {
    goto ldv_27621;
  } else {
  }
  schedule();
  goto ldv_27622;
  ldv_27621:
  finish_wait(& cq->wait, & __wait);
  ldv_27619: ;
  if (cq->is_kernel != 0) {
    mthca_free_cq_buf(dev, & cq->buf, cq->ibcq.cqe);
    tmp___6 = mthca_is_memfree(dev);
    if (tmp___6 != 0) {
      mthca_free_db(dev, 2, cq->arm_db_index);
      mthca_free_db(dev, 1, cq->set_ci_db_index);
    } else {
    }
  } else {
  }
  mthca_table_put(dev, dev->cq_table.table, cq->cqn);
  mthca_free(& dev->cq_table.alloc, (u32 )cq->cqn);
  mthca_free_mailbox(dev, mailbox);
  return;
}
}
int mthca_init_cq_table(struct mthca_dev *dev )
{ int err ;
  struct lock_class_key __key ;
  {
  spinlock_check(& dev->cq_table.lock);
  __raw_spin_lock_init(& dev->cq_table.lock.ldv_5961.rlock, "&(&dev->cq_table.lock)->rlock",
                       & __key);
  err = mthca_alloc_init(& dev->cq_table.alloc, (u32 )dev->limits.num_cqs, 16777215U,
                         (u32 )dev->limits.reserved_cqs);
  if (err != 0) {
    return (err);
  } else {
  }
  err = mthca_array_init(& dev->cq_table.cq, dev->limits.num_cqs);
  if (err != 0) {
    mthca_alloc_cleanup(& dev->cq_table.alloc);
  } else {
  }
  return (err);
}
}
void mthca_cleanup_cq_table(struct mthca_dev *dev )
{
  {
  mthca_array_cleanup(& dev->cq_table.cq, dev->limits.num_cqs);
  mthca_alloc_cleanup(& dev->cq_table.alloc);
  return;
}
}
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_94(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static int fls(int x )
{ int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
int ldv_mutex_trylock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 ) ;
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{ size_t __len ;
  void *__ret ;
  {
  __len = count;
  __ret = memcpy((void *)dst, src, __len);
  return;
}
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{ void *tmp ;
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
{ void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
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
                         "i" (103), "i" (12UL));
    ldv_18645: ;
    goto ldv_18645;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
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
                         "i" (115), "i" (12UL));
    ldv_18653: ;
    goto ldv_18653;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static struct mthca_fmr *to_mfmr(struct ib_fmr *ibmr )
{ struct ib_fmr const *__mptr ;
  {
  __mptr = (struct ib_fmr const *)ibmr;
  return ((struct mthca_fmr *)__mptr);
}
}
__inline static void mthca_write64_raw(__be64 val , void *dest )
{
  {
  writeq((unsigned long )val, (void volatile *)dest);
  return;
}
}
int mthca_write_mtt_size(struct mthca_dev *dev ) ;
struct mthca_mtt *mthca_alloc_mtt(struct mthca_dev *dev , int size ) ;
void mthca_free_mtt(struct mthca_dev *dev , struct mthca_mtt *mtt ) ;
int mthca_write_mtt(struct mthca_dev *dev , struct mthca_mtt *mtt , int start_index ,
                    u64 *buffer_list , int list_len ) ;
int mthca_mr_alloc(struct mthca_dev *dev , u32 pd , int buffer_size_shift , u64 iova ,
                   u64 total_size , u32 access , struct mthca_mr *mr ) ;
int mthca_fmr_alloc(struct mthca_dev *dev , u32 pd , u32 access , struct mthca_fmr *mr ) ;
int mthca_tavor_map_phys_fmr(struct ib_fmr *ibfmr , u64 *page_list , int list_len ,
                             u64 iova ) ;
void mthca_tavor_fmr_unmap(struct mthca_dev *dev , struct mthca_fmr *fmr ) ;
int mthca_arbel_map_phys_fmr(struct ib_fmr *ibfmr , u64 *page_list , int list_len ,
                             u64 iova ) ;
void mthca_arbel_fmr_unmap(struct mthca_dev *dev , struct mthca_fmr *fmr ) ;
int mthca_free_fmr(struct mthca_dev *dev , struct mthca_fmr *fmr ) ;
void *mthca_table_find(struct mthca_icm_table *table , int obj , dma_addr_t *dma_handle ) ;
int mthca_table_get_range(struct mthca_dev *dev , struct mthca_icm_table *table ,
                          int start , int end ) ;
void mthca_table_put_range(struct mthca_dev *dev , struct mthca_icm_table *table ,
                           int start , int end ) ;
static u32 mthca_buddy_alloc(struct mthca_buddy *buddy , int order )
{ int o ;
  int m ;
  u32 seg ;
  unsigned long tmp ;
  {
  spin_lock(& buddy->lock);
  o = order;
  goto ldv_22303;
  ldv_22302: ;
  if (*(buddy->num_free + (unsigned long )o) != 0) {
    m = 1 << (buddy->max_order - o);
    tmp = find_first_bit((unsigned long const *)*(buddy->bits + (unsigned long )o),
                         (unsigned long )m);
    seg = (u32 )tmp;
    if ((u32 )m > seg) {
      goto found;
    } else {
    }
  } else {
  }
  o = o + 1;
  ldv_22303: ;
  if (buddy->max_order >= o) {
    goto ldv_22302;
  } else {
    goto ldv_22304;
  }
  ldv_22304:
  spin_unlock(& buddy->lock);
  return (4294967295U);
  found:
  clear_bit((int )seg, (unsigned long volatile *)*(buddy->bits + (unsigned long )o));
  *(buddy->num_free + (unsigned long )o) = *(buddy->num_free + (unsigned long )o) - 1;
  goto ldv_22306;
  ldv_22305:
  o = o - 1;
  seg = seg << 1;
  set_bit(seg ^ 1U, (unsigned long volatile *)*(buddy->bits + (unsigned long )o));
  *(buddy->num_free + (unsigned long )o) = *(buddy->num_free + (unsigned long )o) + 1;
  ldv_22306: ;
  if (o > order) {
    goto ldv_22305;
  } else {
    goto ldv_22307;
  }
  ldv_22307:
  spin_unlock(& buddy->lock);
  seg = seg << order;
  return (seg);
}
}
static void mthca_buddy_free(struct mthca_buddy *buddy , u32 seg , int order )
{ int tmp ;
  {
  seg = seg >> order;
  spin_lock(& buddy->lock);
  goto ldv_22314;
  ldv_22313:
  clear_bit((int )(seg ^ 1U), (unsigned long volatile *)*(buddy->bits + (unsigned long )order));
  *(buddy->num_free + (unsigned long )order) = *(buddy->num_free + (unsigned long )order) - 1;
  seg = seg >> 1;
  order = order + 1;
  ldv_22314:
  tmp = variable_test_bit((int )(seg ^ 1U), (unsigned long const volatile *)*(buddy->bits + (unsigned long )order));
  if (tmp != 0) {
    goto ldv_22313;
  } else {
    goto ldv_22315;
  }
  ldv_22315:
  set_bit(seg, (unsigned long volatile *)*(buddy->bits + (unsigned long )order));
  *(buddy->num_free + (unsigned long )order) = *(buddy->num_free + (unsigned long )order) + 1;
  spin_unlock(& buddy->lock);
  return;
}
}
static int mthca_buddy_init(struct mthca_buddy *buddy , int max_order )
{ int i ;
  int s ;
  struct lock_class_key __key ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  buddy->max_order = max_order;
  spinlock_check(& buddy->lock);
  __raw_spin_lock_init(& buddy->lock.ldv_5961.rlock, "&(&buddy->lock)->rlock", & __key);
  tmp = kzalloc((unsigned long )(buddy->max_order + 1) * 8UL, 208U);
  buddy->bits = (unsigned long **)tmp;
  tmp___0 = kcalloc((size_t )(buddy->max_order + 1), 4UL, 208U);
  buddy->num_free = (int *)tmp___0;
  if ((unsigned long )buddy->bits == (unsigned long )((unsigned long **)0) || (unsigned long )buddy->num_free == (unsigned long )((int *)0)) {
    goto err_out;
  } else {
  }
  i = 0;
  goto ldv_22326;
  ldv_22325:
  s = (int )(((unsigned long )(1 << (buddy->max_order - i)) + 63UL) / 64UL);
  tmp___1 = kmalloc((unsigned long )s * 8UL, 208U);
  *(buddy->bits + (unsigned long )i) = (unsigned long *)tmp___1;
  if ((unsigned long )*(buddy->bits + (unsigned long )i) == (unsigned long )((unsigned long *)0)) {
    goto err_out_free;
  } else {
  }
  bitmap_zero(*(buddy->bits + (unsigned long )i), 1 << (buddy->max_order - i));
  i = i + 1;
  ldv_22326: ;
  if (buddy->max_order >= i) {
    goto ldv_22325;
  } else {
    goto ldv_22327;
  }
  ldv_22327:
  set_bit(0U, (unsigned long volatile *)*(buddy->bits + (unsigned long )buddy->max_order));
  *(buddy->num_free + (unsigned long )buddy->max_order) = 1;
  return (0);
  err_out_free:
  i = 0;
  goto ldv_22329;
  ldv_22328:
  kfree((void const *)*(buddy->bits + (unsigned long )i));
  i = i + 1;
  ldv_22329: ;
  if (buddy->max_order >= i) {
    goto ldv_22328;
  } else {
    goto ldv_22330;
  }
  ldv_22330: ;
  err_out:
  kfree((void const *)buddy->bits);
  kfree((void const *)buddy->num_free);
  return (-12);
}
}
static void mthca_buddy_cleanup(struct mthca_buddy *buddy )
{ int i ;
  {
  i = 0;
  goto ldv_22336;
  ldv_22335:
  kfree((void const *)*(buddy->bits + (unsigned long )i));
  i = i + 1;
  ldv_22336: ;
  if (buddy->max_order >= i) {
    goto ldv_22335;
  } else {
    goto ldv_22337;
  }
  ldv_22337:
  kfree((void const *)buddy->bits);
  kfree((void const *)buddy->num_free);
  return;
}
}
static u32 mthca_alloc_mtt_range(struct mthca_dev *dev , int order , struct mthca_buddy *buddy )
{ u32 seg ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = mthca_buddy_alloc(buddy, order);
  seg = tmp;
  if (seg == 4294967295U) {
    return (4294967295U);
  } else {
  }
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    tmp___0 = mthca_table_get_range(dev, dev->mr_table.mtt_table, (int )seg, (int )(((u32 )(1 << order) + seg) - 1U));
    if (tmp___0 != 0) {
      mthca_buddy_free(buddy, seg, order);
      seg = 4294967295U;
    } else {
    }
  } else {
  }
  return (seg);
}
}
static struct mthca_mtt *__mthca_alloc_mtt(struct mthca_dev *dev , int size , struct mthca_buddy *buddy )
{ struct mthca_mtt *mtt ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  if (size <= 0) {
    tmp = ERR_PTR(-22L);
    return ((struct mthca_mtt *)tmp);
  } else {
  }
  tmp___0 = kmalloc(16UL, 208U);
  mtt = (struct mthca_mtt *)tmp___0;
  if ((unsigned long )mtt == (unsigned long )((struct mthca_mtt *)0)) {
    tmp___1 = ERR_PTR(-12L);
    return ((struct mthca_mtt *)tmp___1);
  } else {
  }
  mtt->buddy = buddy;
  mtt->order = 0;
  i = dev->limits.mtt_seg_size / 8;
  goto ldv_22352;
  ldv_22351:
  mtt->order = mtt->order + 1;
  i = i << 1;
  ldv_22352: ;
  if (i < size) {
    goto ldv_22351;
  } else {
    goto ldv_22353;
  }
  ldv_22353:
  mtt->first_seg = mthca_alloc_mtt_range(dev, mtt->order, buddy);
  if (mtt->first_seg == 4294967295U) {
    kfree((void const *)mtt);
    tmp___2 = ERR_PTR(-12L);
    return ((struct mthca_mtt *)tmp___2);
  } else {
  }
  return (mtt);
}
}
struct mthca_mtt *mthca_alloc_mtt(struct mthca_dev *dev , int size )
{ struct mthca_mtt *tmp ;
  {
  tmp = __mthca_alloc_mtt(dev, size, & dev->mr_table.mtt_buddy);
  return (tmp);
}
}
void mthca_free_mtt(struct mthca_dev *dev , struct mthca_mtt *mtt )
{
  {
  if ((unsigned long )mtt == (unsigned long )((struct mthca_mtt *)0)) {
    return;
  } else {
  }
  mthca_buddy_free(mtt->buddy, mtt->first_seg, mtt->order);
  mthca_table_put_range(dev, dev->mr_table.mtt_table, (int )mtt->first_seg, (int )((mtt->first_seg + (u32 )(1 << mtt->order)) - 1U));
  kfree((void const *)mtt);
  return;
}
}
static int __mthca_write_mtt(struct mthca_dev *dev , struct mthca_mtt *mtt , int start_index ,
                             u64 *buffer_list , int list_len )
{ struct mthca_mailbox *mailbox ;
  __be64 *mtt_entry ;
  int err ;
  int i ;
  long tmp ;
  long tmp___0 ;
  __u64 tmp___1 ;
  __u64 tmp___2 ;
  {
  err = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___0 = IS_ERR((void const *)mailbox);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mailbox);
    return ((int )tmp);
  } else {
  }
  mtt_entry = (__be64 *)mailbox->buf;
  goto ldv_22378;
  ldv_22377:
  tmp___1 = __fswab64((dev->mr_table.mtt_base + (u64 )(mtt->first_seg * (u32 )dev->limits.mtt_seg_size)) + (u64 )(start_index * 8));
  *mtt_entry = tmp___1;
  *(mtt_entry + 1UL) = 0ULL;
  i = 0;
  goto ldv_22374;
  ldv_22373:
  tmp___2 = __fswab64(*(buffer_list + (unsigned long )i) | 1ULL);
  *(mtt_entry + ((unsigned long )i + 2UL)) = tmp___2;
  i = i + 1;
  ldv_22374: ;
  if (i < list_len && i <= 509) {
    goto ldv_22373;
  } else {
    goto ldv_22375;
  }
  ldv_22375: ;
  if (i & 1) {
    *(mtt_entry + ((unsigned long )i + 2UL)) = 0ULL;
  } else {
  }
  err = mthca_WRITE_MTT(dev, mailbox, (i + 1) & -2);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "WRITE_MTT failed (%d)\n",
             err);
    goto out;
  } else {
  }
  list_len = list_len - i;
  start_index = start_index + i;
  buffer_list = buffer_list + (unsigned long )i;
  ldv_22378: ;
  if (list_len > 0) {
    goto ldv_22377;
  } else {
    goto ldv_22379;
  }
  ldv_22379: ;
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_write_mtt_size(struct mthca_dev *dev )
{ int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )dev->mr_table.fmr_mtt_buddy != (unsigned long )(& dev->mr_table.mtt_buddy) || (dev->mthca_flags & 32UL) == 0UL) {
    return (510);
  } else {
  }
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    tmp___0 = 512;
  } else {
    tmp___0 = 134217727;
  }
  return (tmp___0);
}
}
static void mthca_tavor_write_mtt_seg(struct mthca_dev *dev , struct mthca_mtt *mtt ,
                                      int start_index , u64 *buffer_list , int list_len )
{ u64 *mtts ;
  int i ;
  __u64 tmp ;
  {
  mtts = (u64 *)(dev->mr_table.tavor_fmr.mtt_base + ((unsigned long )(mtt->first_seg * (u32 )dev->limits.mtt_seg_size) + (unsigned long )start_index * 8UL));
  i = 0;
  goto ldv_22393;
  ldv_22392:
  tmp = __fswab64(*(buffer_list + (unsigned long )i) | 1ULL);
  mthca_write64_raw(tmp, (void *)mtts + (unsigned long )i);
  i = i + 1;
  ldv_22393: ;
  if (i < list_len) {
    goto ldv_22392;
  } else {
    goto ldv_22394;
  }
  ldv_22394: ;
  return;
}
}
static void mthca_arbel_write_mtt_seg(struct mthca_dev *dev , struct mthca_mtt *mtt ,
                                      int start_index , u64 *buffer_list , int list_len )
{ __be64 *mtts ;
  dma_addr_t dma_handle ;
  int i ;
  int s ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  __u64 tmp___3 ;
  {
  s = (int )((unsigned int )start_index * 8U);
  tmp = ldv__builtin_expect((unsigned long )s / 4096UL != (((unsigned long )s + (unsigned long )list_len * 8UL) - 1UL) / 4096UL,
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared"),
                         "i" (459), "i" (12UL));
    ldv_22406: ;
    goto ldv_22406;
  } else {
  }
  tmp___0 = ldv__builtin_expect(s % dev->limits.mtt_seg_size != 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared"),
                         "i" (461), "i" (12UL));
    ldv_22407: ;
    goto ldv_22407;
  } else {
  }
  tmp___1 = mthca_table_find(dev->mr_table.mtt_table, (int )(mtt->first_seg + (u32 )(s / dev->limits.mtt_seg_size)),
                             & dma_handle);
  mtts = (__be64 *)tmp___1;
  tmp___2 = ldv__builtin_expect((unsigned long )mtts == (unsigned long )((__be64 *)0),
                             0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared"),
                         "i" (466), "i" (12UL));
    ldv_22408: ;
    goto ldv_22408;
  } else {
  }
  dma_sync_single_for_cpu(& (dev->pdev)->dev, dma_handle, (unsigned long )list_len * 8UL,
                          1);
  i = 0;
  goto ldv_22410;
  ldv_22409:
  tmp___3 = __fswab64(*(buffer_list + (unsigned long )i) | 1ULL);
  *(mtts + (unsigned long )i) = tmp___3;
  i = i + 1;
  ldv_22410: ;
  if (i < list_len) {
    goto ldv_22409;
  } else {
    goto ldv_22411;
  }
  ldv_22411:
  dma_sync_single_for_device(& (dev->pdev)->dev, dma_handle, (unsigned long )list_len * 8UL,
                             1);
  return;
}
}
int mthca_write_mtt(struct mthca_dev *dev , struct mthca_mtt *mtt , int start_index ,
                    u64 *buffer_list , int list_len )
{ int size ;
  int tmp ;
  int chunk ;
  int tmp___0 ;
  int _min1 ;
  int _min2 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = mthca_write_mtt_size(dev);
  size = tmp;
  if ((unsigned long )dev->mr_table.fmr_mtt_buddy != (unsigned long )(& dev->mr_table.mtt_buddy) || (dev->mthca_flags & 32UL) == 0UL) {
    tmp___0 = __mthca_write_mtt(dev, mtt, start_index, buffer_list, list_len);
    return (tmp___0);
  } else {
  }
  goto ldv_22425;
  ldv_22424:
  _min1 = size;
  _min2 = list_len;
  if (_min1 < _min2) {
    tmp___1 = _min1;
  } else {
    tmp___1 = _min2;
  }
  chunk = tmp___1;
  tmp___2 = mthca_is_memfree(dev);
  if (tmp___2 != 0) {
    mthca_arbel_write_mtt_seg(dev, mtt, start_index, buffer_list, chunk);
  } else {
    mthca_tavor_write_mtt_seg(dev, mtt, start_index, buffer_list, chunk);
  }
  list_len = list_len - chunk;
  start_index = start_index + chunk;
  buffer_list = buffer_list + (unsigned long )chunk;
  ldv_22425: ;
  if (list_len > 0) {
    goto ldv_22424;
  } else {
    goto ldv_22426;
  }
  ldv_22426: ;
  return (0);
}
}
__inline static u32 tavor_hw_index_to_key(u32 ind )
{
  {
  return (ind);
}
}
__inline static u32 arbel_hw_index_to_key(u32 ind )
{
  {
  return ((ind << 8) | (ind >> (8UL * sizeof(ind) - 8UL)));
}
}
__inline static u32 arbel_key_to_hw_index(u32 key )
{
  {
  return ((key << 24) | (key >> (8UL * sizeof(key) - 24UL)));
}
}
__inline static u32 hw_index_to_key(struct mthca_dev *dev , u32 ind )
{ u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    tmp = arbel_hw_index_to_key(ind);
    return (tmp);
  } else {
    tmp___0 = tavor_hw_index_to_key(ind);
    return (tmp___0);
  }
}
}
__inline static u32 key_to_hw_index(struct mthca_dev *dev , u32 key )
{ u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    tmp = arbel_key_to_hw_index(key);
    return (tmp);
  } else {
    tmp___0 = tavor_hw_index_to_key(key);
    return (tmp___0);
  }
}
}
__inline static u32 adjust_key(struct mthca_dev *dev , u32 key )
{
  {
  if ((dev->mthca_flags & 256UL) != 0UL) {
    return (((key << 20) & 8388608U) | (key & 8388607U));
  } else {
    return (key);
  }
}
}
int mthca_mr_alloc(struct mthca_dev *dev , u32 pd , int buffer_size_shift , u64 iova ,
                   u64 total_size , u32 access , struct mthca_mr *mr )
{ struct mthca_mailbox *mailbox ;
  struct mthca_mpt_entry *mpt_entry ;
  u32 key ;
  int i ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u64 tmp___8 ;
  __u64 tmp___9 ;
  __u64 tmp___10 ;
  __u32 tmp___11 ;
  {
  __ret_warn_on = buffer_size_shift > 31;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared",
                       558);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  key = mthca_alloc(& dev->mr_table.mpt_alloc);
  if (key == 4294967295U) {
    return (-12);
  } else {
  }
  key = adjust_key(dev, key);
  tmp___0 = hw_index_to_key(dev, key);
  mr->ibmr.lkey = tmp___0;
  mr->ibmr.rkey = tmp___0;
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    err = mthca_table_get(dev, dev->mr_table.mpt_table, (int )key);
    if (err != 0) {
      goto err_out_mpt_free;
    } else {
    }
  } else {
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___3 = IS_ERR((void const *)mailbox);
  if (tmp___3 != 0L) {
    tmp___2 = PTR_ERR((void const *)mailbox);
    err = (int )tmp___2;
    goto err_out_table;
  } else {
  }
  mpt_entry = (struct mthca_mpt_entry *)mailbox->buf;
  tmp___4 = __fswab32(access | 4026663168U);
  mpt_entry->flags = tmp___4;
  if ((unsigned long )mr->mtt == (unsigned long )((struct mthca_mtt *)0)) {
    mpt_entry->flags = mpt_entry->flags | 131072U;
  } else {
  }
  tmp___5 = __fswab32((__u32 )(buffer_size_shift + -12));
  mpt_entry->page_size = tmp___5;
  tmp___6 = __fswab32(key);
  mpt_entry->key = tmp___6;
  tmp___7 = __fswab32(pd);
  mpt_entry->pd = tmp___7;
  tmp___8 = __fswab64(iova);
  mpt_entry->start = tmp___8;
  tmp___9 = __fswab64(total_size);
  mpt_entry->length = tmp___9;
  memset((void *)(& mpt_entry->lkey), 0, 32UL);
  if ((unsigned long )mr->mtt != (unsigned long )((struct mthca_mtt *)0)) {
    tmp___10 = __fswab64(dev->mr_table.mtt_base + (u64 )((mr->mtt)->first_seg * (u32 )dev->limits.mtt_seg_size));
    mpt_entry->mtt_seg = tmp___10;
  } else {
  }
  if (0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Dumping MPT entry %08x:\n",
                 mr->ibmr.lkey);
    } else {
    }
    i = 0;
    goto ldv_22470;
    ldv_22469: ;
    if (((unsigned int )i & 3U) == 0U) {
      printk("[%02x] ", i * 4);
    } else {
    }
    tmp___11 = __fswab32(*((__be32 *)mpt_entry + (unsigned long )i));
    printk(" %08x", tmp___11);
    if (((unsigned int )(i + 1) & 3U) == 0U) {
      printk("\n");
    } else {
    }
    i = i + 1;
    ldv_22470: ;
    if ((unsigned int )i <= 15U) {
      goto ldv_22469;
    } else {
      goto ldv_22471;
    }
    ldv_22471: ;
  } else {
  }
  err = mthca_SW2HW_MPT(dev, mailbox, (int )((u32 )(dev->limits.num_mpts + -1) & key));
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SW2HW_MPT failed (%d)\n",
             err);
    goto err_out_mailbox;
  } else {
  }
  mthca_free_mailbox(dev, mailbox);
  return (err);
  err_out_mailbox:
  mthca_free_mailbox(dev, mailbox);
  err_out_table:
  mthca_table_put(dev, dev->mr_table.mpt_table, (int )key);
  err_out_mpt_free:
  mthca_free(& dev->mr_table.mpt_alloc, key);
  return (err);
}
}
int mthca_mr_alloc_notrans(struct mthca_dev *dev , u32 pd , u32 access , struct mthca_mr *mr )
{ int tmp ;
  {
  mr->mtt = 0;
  tmp = mthca_mr_alloc(dev, pd, 12, 0ULL, 0xffffffffffffffffULL, access, mr);
  return (tmp);
}
}
int mthca_mr_alloc_phys(struct mthca_dev *dev , u32 pd , u64 *buffer_list , int buffer_size_shift ,
                        int list_len , u64 iova , u64 total_size , u32 access , struct mthca_mr *mr )
{ int err ;
  long tmp ;
  long tmp___0 ;
  {
  mr->mtt = mthca_alloc_mtt(dev, list_len);
  tmp___0 = IS_ERR((void const *)mr->mtt);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)mr->mtt);
    return ((int )tmp);
  } else {
  }
  err = mthca_write_mtt(dev, mr->mtt, 0, buffer_list, list_len);
  if (err != 0) {
    mthca_free_mtt(dev, mr->mtt);
    return (err);
  } else {
  }
  err = mthca_mr_alloc(dev, pd, buffer_size_shift, iova, total_size, access, mr);
  if (err != 0) {
    mthca_free_mtt(dev, mr->mtt);
  } else {
  }
  return (err);
}
}
static void mthca_free_region(struct mthca_dev *dev , u32 lkey )
{ u32 tmp ;
  u32 tmp___0 ;
  {
  tmp = key_to_hw_index(dev, lkey);
  mthca_table_put(dev, dev->mr_table.mpt_table, (int )tmp);
  tmp___0 = key_to_hw_index(dev, lkey);
  mthca_free(& dev->mr_table.mpt_alloc, tmp___0);
  return;
}
}
void mthca_free_mr(struct mthca_dev *dev , struct mthca_mr *mr )
{ int err ;
  u32 tmp ;
  {
  tmp = key_to_hw_index(dev, mr->ibmr.lkey);
  err = mthca_HW2SW_MPT(dev, 0, (int )(tmp & (u32 )(dev->limits.num_mpts + -1)));
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "HW2SW_MPT failed (%d)\n",
             err);
  } else {
  }
  mthca_free_region(dev, mr->ibmr.lkey);
  mthca_free_mtt(dev, mr->mtt);
  return;
}
}
int mthca_fmr_alloc(struct mthca_dev *dev , u32 pd , u32 access , struct mthca_fmr *mr )
{ struct mthca_mpt_entry *mpt_entry ;
  struct mthca_mailbox *mailbox ;
  u64 mtt_seg ;
  u32 key ;
  u32 idx ;
  int list_len ;
  int err ;
  int i ;
  int tmp ;
  u32 tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  void *tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  __u32 tmp___16 ;
  {
  list_len = mr->attr.max_pages;
  err = -12;
  if ((unsigned int )mr->attr.page_shift <= 11U || (unsigned int )mr->attr.page_shift > 31U) {
    return (-22);
  } else {
  }
  tmp = mthca_is_memfree(dev);
  if (tmp != 0 && (unsigned long )mr->attr.max_pages * 8UL > 4096UL) {
    return (-22);
  } else {
  }
  mr->maps = 0;
  key = mthca_alloc(& dev->mr_table.mpt_alloc);
  if (key == 4294967295U) {
    return (-12);
  } else {
  }
  key = adjust_key(dev, key);
  idx = (u32 )(dev->limits.num_mpts + -1) & key;
  tmp___0 = hw_index_to_key(dev, key);
  mr->ibmr.lkey = tmp___0;
  mr->ibmr.rkey = tmp___0;
  tmp___3 = mthca_is_memfree(dev);
  if (tmp___3 != 0) {
    err = mthca_table_get(dev, dev->mr_table.mpt_table, (int )key);
    if (err != 0) {
      goto err_out_mpt_free;
    } else {
    }
    tmp___1 = mthca_table_find(dev->mr_table.mpt_table, (int )key, 0);
    mr->mem.arbel.mpt = (struct mthca_mpt_entry *)tmp___1;
    tmp___2 = ldv__builtin_expect((unsigned long )mr->mem.arbel.mpt == (unsigned long )((struct mthca_mpt_entry *)0),
                               0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared"),
                           "i" (722), "i" (12UL));
      ldv_22515: ;
      goto ldv_22515;
    } else {
    }
  } else {
    mr->mem.tavor.mpt = (struct mthca_mpt_entry *)(dev->mr_table.tavor_fmr.mpt_base + (unsigned long )idx * 64UL);
  }
  mr->mtt = __mthca_alloc_mtt(dev, list_len, dev->mr_table.fmr_mtt_buddy);
  tmp___5 = IS_ERR((void const *)mr->mtt);
  if (tmp___5 != 0L) {
    tmp___4 = PTR_ERR((void const *)mr->mtt);
    err = (int )tmp___4;
    goto err_out_table;
  } else {
  }
  mtt_seg = (u64 )((mr->mtt)->first_seg * (u32 )dev->limits.mtt_seg_size);
  tmp___8 = mthca_is_memfree(dev);
  if (tmp___8 != 0) {
    tmp___6 = mthca_table_find(dev->mr_table.mtt_table, (int )(mr->mtt)->first_seg,
                               & mr->mem.arbel.dma_handle);
    mr->mem.arbel.mtts = (__be64 *)tmp___6;
    tmp___7 = ldv__builtin_expect((unsigned long )mr->mem.arbel.mtts == (unsigned long )((__be64 *)0),
                               0L);
    if (tmp___7 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mr.c.prepared"),
                           "i" (739), "i" (12UL));
      ldv_22517: ;
      goto ldv_22517;
    } else {
    }
  } else {
    mr->mem.tavor.mtts = (u64 *)(dev->mr_table.tavor_fmr.mtt_base + mtt_seg);
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___10 = IS_ERR((void const *)mailbox);
  if (tmp___10 != 0L) {
    tmp___9 = PTR_ERR((void const *)mailbox);
    err = (int )tmp___9;
    goto err_out_free_mtt;
  } else {
  }
  mpt_entry = (struct mthca_mpt_entry *)mailbox->buf;
  tmp___11 = __fswab32(access | 4026663168U);
  mpt_entry->flags = tmp___11;
  tmp___12 = __fswab32((__u32 )((int )mr->attr.page_shift + -12));
  mpt_entry->page_size = tmp___12;
  tmp___13 = __fswab32(key);
  mpt_entry->key = tmp___13;
  tmp___14 = __fswab32(pd);
  mpt_entry->pd = tmp___14;
  memset((void *)(& mpt_entry->start), 0, 48UL);
  tmp___15 = __fswab64(dev->mr_table.mtt_base + mtt_seg);
  mpt_entry->mtt_seg = tmp___15;
  if (0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Dumping MPT entry %08x:\n",
                 mr->ibmr.lkey);
    } else {
    }
    i = 0;
    goto ldv_22520;
    ldv_22519: ;
    if (((unsigned int )i & 3U) == 0U) {
      printk("[%02x] ", i * 4);
    } else {
    }
    tmp___16 = __fswab32(*((__be32 *)mpt_entry + (unsigned long )i));
    printk(" %08x", tmp___16);
    if (((unsigned int )(i + 1) & 3U) == 0U) {
      printk("\n");
    } else {
    }
    i = i + 1;
    ldv_22520: ;
    if ((unsigned int )i <= 15U) {
      goto ldv_22519;
    } else {
      goto ldv_22521;
    }
    ldv_22521: ;
  } else {
  }
  err = mthca_SW2HW_MPT(dev, mailbox, (int )((u32 )(dev->limits.num_mpts + -1) & key));
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SW2HW_MPT failed (%d)\n",
             err);
    goto err_out_mailbox_free;
  } else {
  }
  mthca_free_mailbox(dev, mailbox);
  return (0);
  err_out_mailbox_free:
  mthca_free_mailbox(dev, mailbox);
  err_out_free_mtt:
  mthca_free_mtt(dev, mr->mtt);
  err_out_table:
  mthca_table_put(dev, dev->mr_table.mpt_table, (int )key);
  err_out_mpt_free:
  mthca_free(& dev->mr_table.mpt_alloc, key);
  return (err);
}
}
int mthca_free_fmr(struct mthca_dev *dev , struct mthca_fmr *fmr )
{
  {
  if (fmr->maps != 0) {
    return (-16);
  } else {
  }
  mthca_free_region(dev, fmr->ibmr.lkey);
  mthca_free_mtt(dev, fmr->mtt);
  return (0);
}
}
__inline static int mthca_check_fmr(struct mthca_fmr *fmr , u64 *page_list , int list_len ,
                                    u64 iova )
{ int i ;
  int page_mask ;
  {
  if (fmr->attr.max_pages < list_len) {
    return (-22);
  } else {
  }
  page_mask = (1 << (int )fmr->attr.page_shift) + -1;
  if (((u64 )page_mask & iova) != 0ULL) {
    return (-22);
  } else {
  }
  if (0) {
    i = 0;
    goto ldv_22536;
    ldv_22535: ;
    if ((*(page_list + (unsigned long )i) & (u64 )(~ page_mask)) != 0ULL) {
      return (-22);
    } else {
    }
    i = i + 1;
    ldv_22536: ;
    if (i < list_len) {
      goto ldv_22535;
    } else {
      goto ldv_22537;
    }
    ldv_22537: ;
  } else {
  }
  if (fmr->maps >= fmr->attr.max_maps) {
    return (-22);
  } else {
  }
  return (0);
}
}
int mthca_tavor_map_phys_fmr(struct ib_fmr *ibfmr , u64 *page_list , int list_len ,
                             u64 iova )
{ struct mthca_fmr *fmr ;
  struct mthca_fmr *tmp ;
  struct mthca_dev *dev ;
  struct mthca_dev *tmp___0 ;
  struct mthca_mpt_entry mpt_entry ;
  u32 key ;
  int i ;
  int err ;
  u32 tmp___1 ;
  __be64 mtt_entry ;
  __u64 tmp___2 ;
  __u32 tmp___3 ;
  __u64 tmp___4 ;
  __u64 tmp___5 ;
  {
  tmp = to_mfmr(ibfmr);
  fmr = tmp;
  tmp___0 = to_mdev(ibfmr->device);
  dev = tmp___0;
  err = mthca_check_fmr(fmr, page_list, list_len, iova);
  if (err != 0) {
    return (err);
  } else {
  }
  fmr->maps = fmr->maps + 1;
  key = tavor_hw_index_to_key(fmr->ibmr.lkey);
  key = (u32 )dev->limits.num_mpts + key;
  tmp___1 = tavor_hw_index_to_key(key);
  fmr->ibmr.rkey = tmp___1;
  fmr->ibmr.lkey = tmp___1;
  writeb(240, (void volatile *)fmr->mem.tavor.mpt);
  i = 0;
  goto ldv_22552;
  ldv_22551:
  tmp___2 = __fswab64(*(page_list + (unsigned long )i) | 1ULL);
  mtt_entry = tmp___2;
  mthca_write64_raw(mtt_entry, (void *)fmr->mem.tavor.mtts + (unsigned long )i);
  i = i + 1;
  ldv_22552: ;
  if (i < list_len) {
    goto ldv_22551;
  } else {
    goto ldv_22553;
  }
  ldv_22553:
  tmp___3 = __fswab32(key);
  mpt_entry.lkey = tmp___3;
  tmp___4 = __fswab64((unsigned long long )list_len << (int )fmr->attr.page_shift);
  mpt_entry.length = tmp___4;
  tmp___5 = __fswab64(iova);
  mpt_entry.start = tmp___5;
  __writel(mpt_entry.lkey, (void volatile *)(& (fmr->mem.tavor.mpt)->key));
  memcpy_toio((void volatile *)(& (fmr->mem.tavor.mpt)->start), (void const *)(& mpt_entry.start),
              20UL);
  writeb(0, (void volatile *)fmr->mem.tavor.mpt);
  return (0);
}
}
int mthca_arbel_map_phys_fmr(struct ib_fmr *ibfmr , u64 *page_list , int list_len ,
                             u64 iova )
{ struct mthca_fmr *fmr ;
  struct mthca_fmr *tmp ;
  struct mthca_dev *dev ;
  struct mthca_dev *tmp___0 ;
  u32 key ;
  int i ;
  int err ;
  u32 tmp___1 ;
  __u64 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  __u64 tmp___6 ;
  {
  tmp = to_mfmr(ibfmr);
  fmr = tmp;
  tmp___0 = to_mdev(ibfmr->device);
  dev = tmp___0;
  err = mthca_check_fmr(fmr, page_list, list_len, iova);
  if (err != 0) {
    return (err);
  } else {
  }
  fmr->maps = fmr->maps + 1;
  key = arbel_key_to_hw_index(fmr->ibmr.lkey);
  if ((dev->mthca_flags & 256UL) != 0UL) {
    key = key + 16777216U;
  } else {
    key = (u32 )dev->limits.num_mpts + key;
  }
  tmp___1 = arbel_hw_index_to_key(key);
  fmr->ibmr.rkey = tmp___1;
  fmr->ibmr.lkey = tmp___1;
  *((u8 *)fmr->mem.arbel.mpt) = 240U;
  __asm__ volatile ("sfence": : : "memory");
  dma_sync_single_for_cpu(& (dev->pdev)->dev, fmr->mem.arbel.dma_handle, (unsigned long )list_len * 8UL,
                          1);
  i = 0;
  goto ldv_22566;
  ldv_22565:
  tmp___2 = __fswab64(*(page_list + (unsigned long )i) | 1ULL);
  *(fmr->mem.arbel.mtts + (unsigned long )i) = tmp___2;
  i = i + 1;
  ldv_22566: ;
  if (i < list_len) {
    goto ldv_22565;
  } else {
    goto ldv_22567;
  }
  ldv_22567:
  dma_sync_single_for_device(& (dev->pdev)->dev, fmr->mem.arbel.dma_handle, (unsigned long )list_len * 8UL,
                             1);
  tmp___3 = __fswab32(key);
  (fmr->mem.arbel.mpt)->key = tmp___3;
  tmp___4 = __fswab32(key);
  (fmr->mem.arbel.mpt)->lkey = tmp___4;
  tmp___5 = __fswab64((unsigned long long )list_len << (int )fmr->attr.page_shift);
  (fmr->mem.arbel.mpt)->length = tmp___5;
  tmp___6 = __fswab64(iova);
  (fmr->mem.arbel.mpt)->start = tmp___6;
  __asm__ volatile ("sfence": : : "memory");
  *((u8 *)fmr->mem.arbel.mpt) = 0U;
  __asm__ volatile ("sfence": : : "memory");
  return (0);
}
}
void mthca_tavor_fmr_unmap(struct mthca_dev *dev , struct mthca_fmr *fmr )
{
  {
  if (fmr->maps == 0) {
    return;
  } else {
  }
  fmr->maps = 0;
  writeb(240, (void volatile *)fmr->mem.tavor.mpt);
  return;
}
}
void mthca_arbel_fmr_unmap(struct mthca_dev *dev , struct mthca_fmr *fmr )
{
  {
  if (fmr->maps == 0) {
    return;
  } else {
  }
  fmr->maps = 0;
  *((u8 *)fmr->mem.arbel.mpt) = 240U;
  return;
}
}
int mthca_init_mr_table(struct mthca_dev *dev )
{ phys_addr_t addr ;
  int mpts ;
  int mtts ;
  int err ;
  int i ;
  int tmp ;
  int tmp___0 ;
  unsigned long long tmp___1 ;
  unsigned long long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  {
  err = mthca_alloc_init(& dev->mr_table.mpt_alloc, (u32 )dev->limits.num_mpts, 4294967295U,
                         (u32 )dev->limits.reserved_mrws);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = mthca_is_memfree(dev);
  if (tmp == 0 && (dev->mthca_flags & 2UL) != 0UL) {
    dev->limits.fmr_reserved_mtts = 0;
  } else {
    dev->mthca_flags = dev->mthca_flags | 32UL;
  }
  if ((dev->mthca_flags & 256UL) != 0UL) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Memory key throughput optimization activated.\n");
    } else {
    }
  } else {
  }
  tmp___0 = fls(dev->limits.num_mtt_segs + -1);
  err = mthca_buddy_init(& dev->mr_table.mtt_buddy, tmp___0);
  if (err != 0) {
    goto err_mtt_buddy;
  } else {
  }
  dev->mr_table.tavor_fmr.mpt_base = 0;
  dev->mr_table.tavor_fmr.mtt_base = 0;
  if (dev->limits.fmr_reserved_mtts != 0) {
    i = fls(dev->limits.fmr_reserved_mtts + -1);
    if (i > 30) {
      dev_warn((struct device const *)(& (dev->pdev)->dev), "Unable to reserve 2^31 FMR MTTs.\n");
      err = -22;
      goto err_fmr_mpt;
    } else {
    }
    mtts = 1 << i;
    mpts = mtts;
  } else {
    mtts = dev->limits.num_mtt_segs;
    mpts = dev->limits.num_mpts;
  }
  tmp___3 = mthca_is_memfree(dev);
  if (tmp___3 == 0 && (dev->mthca_flags & 32UL) != 0UL) {
    if ((dev->pdev)->resource[4].start != 0ULL || (dev->pdev)->resource[4].end != (dev->pdev)->resource[4].start) {
      tmp___1 = (dev->pdev)->resource[4].end - (dev->pdev)->resource[4].start;
    } else {
      tmp___1 = 0xffffffffffffffffULL;
    }
    addr = (dev->pdev)->resource[4].start + (tmp___1 & dev->mr_table.mpt_base);
    dev->mr_table.tavor_fmr.mpt_base = ioremap(addr, (unsigned long )mpts * 64UL);
    if ((unsigned long )dev->mr_table.tavor_fmr.mpt_base == (unsigned long )((void *)0)) {
      dev_warn((struct device const *)(& (dev->pdev)->dev), "MPT ioremap for FMR failed.\n");
      err = -12;
      goto err_fmr_mpt;
    } else {
    }
    if ((dev->pdev)->resource[4].start != 0ULL || (dev->pdev)->resource[4].end != (dev->pdev)->resource[4].start) {
      tmp___2 = (dev->pdev)->resource[4].end - (dev->pdev)->resource[4].start;
    } else {
      tmp___2 = 0xffffffffffffffffULL;
    }
    addr = (dev->pdev)->resource[4].start + (tmp___2 & dev->mr_table.mtt_base);
    dev->mr_table.tavor_fmr.mtt_base = ioremap(addr, (unsigned long )(dev->limits.mtt_seg_size * mtts));
    if ((unsigned long )dev->mr_table.tavor_fmr.mtt_base == (unsigned long )((void *)0)) {
      dev_warn((struct device const *)(& (dev->pdev)->dev), "MTT ioremap for FMR failed.\n");
      err = -12;
      goto err_fmr_mtt;
    } else {
    }
  } else {
  }
  if (dev->limits.fmr_reserved_mtts != 0) {
    tmp___4 = fls(mtts + -1);
    err = mthca_buddy_init(& dev->mr_table.tavor_fmr.mtt_buddy, tmp___4);
    if (err != 0) {
      goto err_fmr_mtt_buddy;
    } else {
    }
    tmp___5 = fls(mtts + -1);
    tmp___6 = mthca_buddy_alloc(& dev->mr_table.mtt_buddy, tmp___5);
    err = (int )tmp___6;
    if (err != 0) {
      goto err_reserve_fmr;
    } else {
    }
    dev->mr_table.fmr_mtt_buddy = & dev->mr_table.tavor_fmr.mtt_buddy;
  } else {
    dev->mr_table.fmr_mtt_buddy = & dev->mr_table.mtt_buddy;
  }
  if (dev->limits.reserved_mtts != 0) {
    i = fls(dev->limits.reserved_mtts + -1);
    tmp___7 = mthca_alloc_mtt_range(dev, i, dev->mr_table.fmr_mtt_buddy);
    if (tmp___7 == 4294967295U) {
      dev_warn((struct device const *)(& (dev->pdev)->dev), "MTT table of order %d is too small.\n",
               (dev->mr_table.fmr_mtt_buddy)->max_order);
      err = -12;
      goto err_reserve_mtts;
    } else {
    }
  } else {
  }
  return (0);
  err_reserve_mtts: ;
  err_reserve_fmr: ;
  if (dev->limits.fmr_reserved_mtts != 0) {
    mthca_buddy_cleanup(& dev->mr_table.tavor_fmr.mtt_buddy);
  } else {
  }
  err_fmr_mtt_buddy: ;
  if ((unsigned long )dev->mr_table.tavor_fmr.mtt_base != (unsigned long )((void *)0)) {
    iounmap((void volatile *)dev->mr_table.tavor_fmr.mtt_base);
  } else {
  }
  err_fmr_mtt: ;
  if ((unsigned long )dev->mr_table.tavor_fmr.mpt_base != (unsigned long )((void *)0)) {
    iounmap((void volatile *)dev->mr_table.tavor_fmr.mpt_base);
  } else {
  }
  err_fmr_mpt:
  mthca_buddy_cleanup(& dev->mr_table.mtt_buddy);
  err_mtt_buddy:
  mthca_alloc_cleanup(& dev->mr_table.mpt_alloc);
  return (err);
}
}
void mthca_cleanup_mr_table(struct mthca_dev *dev )
{
  {
  if (dev->limits.fmr_reserved_mtts != 0) {
    mthca_buddy_cleanup(& dev->mr_table.tavor_fmr.mtt_buddy);
  } else {
  }
  mthca_buddy_cleanup(& dev->mr_table.mtt_buddy);
  if ((unsigned long )dev->mr_table.tavor_fmr.mtt_base != (unsigned long )((void *)0)) {
    iounmap((void volatile *)dev->mr_table.tavor_fmr.mtt_base);
  } else {
  }
  if ((unsigned long )dev->mr_table.tavor_fmr.mpt_base != (unsigned long )((void *)0)) {
    iounmap((void volatile *)dev->mr_table.tavor_fmr.mpt_base);
  } else {
  }
  mthca_alloc_cleanup(& dev->mr_table.mpt_alloc);
  return;
}
}
void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_106(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int __ilog2_u32(u32 n )
{ int tmp ;
  {
  tmp = fls((int )n);
  return (tmp + -1);
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
int ldv_mutex_trylock_118(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_mthca_qp(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_qp(struct mutex *lock ) ;
extern void _raw_spin_lock_nested(raw_spinlock_t * , int ) ;
extern int ib_modify_qp_is_ok(enum ib_qp_state , enum ib_qp_state , enum ib_qp_type ,
                              enum ib_qp_attr_mask ) ;
extern int ib_get_cached_pkey(struct ib_device * , u8 , int , u16 * ) ;
extern void ib_ud_header_init(int , int , int , int , int , int , struct ib_ud_header * ) ;
extern int ib_ud_header_pack(struct ib_ud_header * , void * ) ;
__inline static struct mthca_ucontext *to_mucontext(struct ib_ucontext *ibucontext )
{ struct ib_ucontext const *__mptr ;
  {
  __mptr = (struct ib_ucontext const *)ibucontext;
  return ((struct mthca_ucontext *)__mptr);
}
}
__inline static struct mthca_pd *to_mpd(struct ib_pd *ibpd )
{ struct ib_pd const *__mptr ;
  {
  __mptr = (struct ib_pd const *)ibpd;
  return ((struct mthca_pd *)__mptr);
}
}
__inline static struct mthca_ah *to_mah(struct ib_ah *ibah )
{ struct ib_ah const *__mptr ;
  {
  __mptr = (struct ib_ah const *)ibah;
  return ((struct mthca_ah *)__mptr);
}
}
__inline static struct mthca_qp *to_mqp(struct ib_qp *ibqp )
{ struct ib_qp const *__mptr ;
  {
  __mptr = (struct ib_qp const *)ibqp;
  return ((struct mthca_qp *)__mptr);
}
}
__inline static struct mthca_sqp *to_msqp(struct mthca_qp *qp )
{ struct mthca_qp const *__mptr ;
  {
  __mptr = (struct mthca_qp const *)qp;
  return ((struct mthca_sqp *)__mptr);
}
}
int mthca_query_qp(struct ib_qp *ibqp , struct ib_qp_attr *qp_attr , int qp_attr_mask ,
                   struct ib_qp_init_attr *qp_init_attr ) ;
int mthca_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr *attr , int attr_mask ,
                    struct ib_udata *udata ) ;
int mthca_tavor_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr ) ;
int mthca_tavor_post_receive(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
int mthca_arbel_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr ) ;
int mthca_arbel_post_receive(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
int mthca_alloc_qp(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_cq *send_cq ,
                   struct mthca_cq *recv_cq , enum ib_qp_type type , enum ib_sig_type send_policy ,
                   struct ib_qp_cap *cap , struct mthca_qp *qp ) ;
int mthca_alloc_sqp(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_cq *send_cq ,
                    struct mthca_cq *recv_cq , enum ib_sig_type send_policy , struct ib_qp_cap *cap ,
                    int qpn , int port , struct mthca_sqp *sqp ) ;
void mthca_free_qp(struct mthca_dev *dev , struct mthca_qp *qp ) ;
int mthca_read_ah(struct mthca_dev *dev , struct mthca_ah *ah , struct ib_ud_header *header ) ;
int mthca_ah_grh_present(struct mthca_ah *ah ) ;
u8 mthca_get_rate(struct mthca_dev *dev , int static_rate , u8 port ) ;
enum ib_rate mthca_rate_to_ib(struct mthca_dev *dev , u8 mthca_rate , u8 port ) ;
__inline static void mthca_set_data_seg(struct mthca_data_seg *dseg , struct ib_sge *sg )
{ __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  {
  tmp = __fswab32(sg->length);
  dseg->byte_count = tmp;
  tmp___0 = __fswab32(sg->lkey);
  dseg->lkey = tmp___0;
  tmp___1 = __fswab64(sg->addr);
  dseg->addr = tmp___1;
  return;
}
}
__inline static void mthca_set_data_seg_inval(struct mthca_data_seg *dseg )
{
  {
  dseg->byte_count = 0U;
  dseg->lkey = 65536U;
  dseg->addr = 0ULL;
  return;
}
}
static u8 const mthca_opcode[7U] = { 8U, 9U, 10U, 11U,
        16U, 17U, 18U};
static int is_sqp(struct mthca_dev *dev , struct mthca_qp *qp )
{
  {
  return (qp->qpn >= (u32 )dev->qp_table.sqp_start && qp->qpn <= (u32 )(dev->qp_table.sqp_start + 3));
}
}
static int is_qp0(struct mthca_dev *dev , struct mthca_qp *qp )
{
  {
  return (qp->qpn >= (u32 )dev->qp_table.sqp_start && qp->qpn <= (u32 )(dev->qp_table.sqp_start + 1));
}
}
static void *get_recv_wqe(struct mthca_qp *qp , int n )
{
  {
  if (qp->is_direct != 0) {
    return (qp->queue.direct.buf + (unsigned long )(n << qp->rq.wqe_shift));
  } else {
    return ((qp->queue.page_list + (unsigned long )((n << qp->rq.wqe_shift) >> 12))->buf + ((unsigned long )(n << qp->rq.wqe_shift) & 4095UL));
  }
}
}
static void *get_send_wqe(struct mthca_qp *qp , int n )
{
  {
  if (qp->is_direct != 0) {
    return (qp->queue.direct.buf + ((unsigned long )qp->send_wqe_offset + (unsigned long )(n << qp->sq.wqe_shift)));
  } else {
    return ((qp->queue.page_list + (unsigned long )((qp->send_wqe_offset + (n << qp->sq.wqe_shift)) >> 12))->buf + ((unsigned long )(qp->send_wqe_offset + (n << qp->sq.wqe_shift)) & 4095UL));
  }
}
}
static void mthca_wq_reset(struct mthca_wq *wq )
{
  {
  wq->next_ind = 0U;
  wq->last_comp = (unsigned int )(wq->max + -1);
  wq->head = 0U;
  wq->tail = 0U;
  return;
}
}
void mthca_qp_event(struct mthca_dev *dev , u32 qpn , enum ib_event_type event_type )
{ struct mthca_qp *qp ;
  struct ib_event event ;
  void *tmp ;
  {
  spin_lock(& dev->qp_table.lock);
  tmp = mthca_array_get(& dev->qp_table.qp, (int )((u32 )(dev->limits.num_qps + -1) & qpn));
  qp = (struct mthca_qp *)tmp;
  if ((unsigned long )qp != (unsigned long )((struct mthca_qp *)0)) {
    qp->refcount = qp->refcount + 1;
  } else {
  }
  spin_unlock(& dev->qp_table.lock);
  if ((unsigned long )qp == (unsigned long )((struct mthca_qp *)0)) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Async event %d for bogus QP %08x\n",
             (unsigned int )event_type, qpn);
    return;
  } else {
  }
  if ((unsigned int )event_type == 6U) {
    qp->port = qp->alt_port;
  } else {
  }
  event.device = & dev->ib_dev;
  event.event = event_type;
  event.element.qp = & qp->ibqp;
  if ((unsigned long )qp->ibqp.event_handler != (unsigned long )((void (*)(struct ib_event * ,
                                                                           void * ))0)) {
    (*(qp->ibqp.event_handler))(& event, qp->ibqp.qp_context);
  } else {
  }
  spin_lock(& dev->qp_table.lock);
  qp->refcount = qp->refcount - 1;
  if (qp->refcount == 0) {
    __wake_up(& qp->wait, 3U, 1, 0);
  } else {
  }
  spin_unlock(& dev->qp_table.lock);
  return;
}
}
static int to_mthca_state(enum ib_qp_state ib_state )
{
  {
  switch ((unsigned int )ib_state) {
  case 0: ;
  return (0);
  case 1: ;
  return (1);
  case 2: ;
  return (2);
  case 3: ;
  return (3);
  case 4: ;
  return (5);
  case 5: ;
  return (4);
  case 6: ;
  return (6);
  default: ;
  return (-1);
  }
}
}
static int to_mthca_st(int transport )
{
  {
  switch (transport) {
  case 0: ;
  return (0);
  case 1: ;
  return (1);
  case 2: ;
  return (3);
  case 3: ;
  return (2);
  case 5: ;
  return (7);
  default: ;
  return (-1);
  }
}
}
static void store_attrs(struct mthca_sqp *sqp , struct ib_qp_attr const *attr ,
                        int attr_mask )
{
  {
  if ((attr_mask & 16) != 0) {
    sqp->pkey_index = (int )attr->pkey_index;
  } else {
  }
  if ((attr_mask & 64) != 0) {
    sqp->qkey = attr->qkey;
  } else {
  }
  if ((attr_mask & 65536) != 0) {
    sqp->send_psn = attr->sq_psn;
  } else {
  }
  return;
}
}
static void init_port(struct mthca_dev *dev , int port )
{ int err ;
  struct mthca_init_ib_param param ;
  {
  memset((void *)(& param), 0, 64UL);
  param.port_width = (int )dev->limits.port_width_cap;
  param.vl_cap = dev->limits.vl_cap;
  param.mtu_cap = dev->limits.mtu_cap;
  param.gid_cap = (u16 )dev->limits.gid_table_len;
  param.pkey_cap = (u16 )dev->limits.pkey_table_len;
  err = mthca_INIT_IB(dev, & param, port);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "INIT_IB failed, return code %d.\n",
             err);
  } else {
  }
  return;
}
}
static __be32 get_hw_access_flags(struct mthca_qp *qp , struct ib_qp_attr const *attr ,
                                  int attr_mask )
{ u8 dest_rd_atomic ;
  u32 access_flags ;
  u32 hw_access_flags ;
  __u32 tmp ;
  {
  hw_access_flags = 0U;
  if ((attr_mask & 131072) != 0) {
    dest_rd_atomic = attr->max_dest_rd_atomic;
  } else {
    dest_rd_atomic = qp->resp_depth;
  }
  if ((attr_mask & 8) != 0) {
    access_flags = (u32 )attr->qp_access_flags;
  } else {
    access_flags = (u32 )qp->atomic_rd_en;
  }
  if ((unsigned int )dest_rd_atomic == 0U) {
    access_flags = access_flags & 2U;
  } else {
  }
  if ((access_flags & 4U) != 0U) {
    hw_access_flags = hw_access_flags | 32768U;
  } else {
  }
  if ((access_flags & 8U) != 0U) {
    hw_access_flags = hw_access_flags | 8192U;
  } else {
  }
  if ((access_flags & 2U) != 0U) {
    hw_access_flags = hw_access_flags | 16384U;
  } else {
  }
  tmp = __fswab32(hw_access_flags);
  return (tmp);
}
}
__inline static enum ib_qp_state to_ib_qp_state(int mthca_state )
{
  {
  switch (mthca_state) {
  case 0: ;
  return (0);
  case 1: ;
  return (1);
  case 2: ;
  return (2);
  case 3: ;
  return (3);
  case 7: ;
  case 5: ;
  return (4);
  case 4: ;
  return (5);
  case 6: ;
  return (6);
  default: ;
  return (4294967295L);
  }
}
}
__inline static enum ib_mig_state to_ib_mig_state(int mthca_mig_state )
{
  {
  switch (mthca_mig_state) {
  case 0: ;
  return (2);
  case 1: ;
  return (1);
  case 3: ;
  return (0);
  default: ;
  return (4294967295L);
  }
}
}
static int to_ib_qp_access_flags(int mthca_flags )
{ int ib_flags ;
  {
  ib_flags = 0;
  if ((mthca_flags & 32768) != 0) {
    ib_flags = ib_flags | 4;
  } else {
  }
  if ((mthca_flags & 16384) != 0) {
    ib_flags = ib_flags | 2;
  } else {
  }
  if ((mthca_flags & 8192) != 0) {
    ib_flags = ib_flags | 8;
  } else {
  }
  return (ib_flags);
}
}
static void to_ib_ah_attr(struct mthca_dev *dev , struct ib_ah_attr *ib_ah_attr ,
                          struct mthca_qp_path *path )
{ __u32 tmp ;
  __u16 tmp___0 ;
  __u32 tmp___1 ;
  enum ib_rate tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)ib_ah_attr, 0, 32UL);
  tmp = __fswab32(path->port_pkey);
  ib_ah_attr->port_num = (unsigned int )((u8 )(tmp >> 24)) & 3U;
  if ((unsigned int )ib_ah_attr->port_num == 0U || (int )ib_ah_attr->port_num > dev->limits.num_ports) {
    return;
  } else {
  }
  tmp___0 = __fswab16((int )path->rlid);
  ib_ah_attr->dlid = tmp___0;
  tmp___1 = __fswab32(path->sl_tclass_flowlabel);
  ib_ah_attr->sl = (u8 )(tmp___1 >> 28);
  ib_ah_attr->src_path_bits = (unsigned int )path->g_mylmc & 127U;
  tmp___2 = mthca_rate_to_ib(dev, (int )path->static_rate & 15, (int )ib_ah_attr->port_num);
  ib_ah_attr->static_rate = (u8 )tmp___2;
  ib_ah_attr->ah_flags = (int )((signed char )path->g_mylmc) < 0;
  if ((unsigned int )ib_ah_attr->ah_flags != 0U) {
    ib_ah_attr->grh.sgid_index = (u8 )((int )((signed char )path->mgid_index) & (int )((signed char )((unsigned int )((unsigned char )dev->limits.gid_table_len) + 255U)));
    ib_ah_attr->grh.hop_limit = path->hop_limit;
    tmp___3 = __fswab32(path->sl_tclass_flowlabel);
    ib_ah_attr->grh.traffic_class = (u8 )(tmp___3 >> 20);
    tmp___4 = __fswab32(path->sl_tclass_flowlabel);
    ib_ah_attr->grh.flow_label = tmp___4 & 1048575U;
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ib_ah_attr->grh.dgid.raw), (void const *)(& path->rgid),
                       __len);
    } else {
      __ret = memcpy((void *)(& ib_ah_attr->grh.dgid.raw), (void const *)(& path->rgid),
                               __len);
    }
  } else {
  }
  return;
}
}
int mthca_query_qp(struct ib_qp *ibqp , struct ib_qp_attr *qp_attr , int qp_attr_mask ,
                   struct ib_qp_init_attr *qp_init_attr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  int err ;
  struct mthca_mailbox *mailbox ;
  struct mthca_qp_param *qp_param ;
  struct mthca_qp_context *context ;
  int mthca_state ;
  long tmp___1 ;
  long tmp___2 ;
  __u32 tmp___3 ;
  enum ib_qp_state tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  __u32 tmp___17 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  mailbox = 0;
  ldv_mutex_lock_120(& qp->mutex);
  if ((unsigned int )qp->state == 0U) {
    qp_attr->qp_state = 0;
    goto done;
  } else {
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___2 = IS_ERR((void const *)mailbox);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)mailbox);
    err = (int )tmp___1;
    goto out;
  } else {
  }
  err = mthca_QUERY_QP(dev, qp->qpn, 0, mailbox);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "QUERY_QP failed (%d)\n",
             err);
    goto out_mailbox;
  } else {
  }
  qp_param = (struct mthca_qp_param *)mailbox->buf;
  context = & qp_param->context;
  tmp___3 = __fswab32(context->flags);
  mthca_state = (int )(tmp___3 >> 28);
  tmp___4 = to_ib_qp_state(mthca_state);
  qp->state = (u8 )tmp___4;
  qp_attr->qp_state = (enum ib_qp_state )qp->state;
  qp_attr->path_mtu = (enum ib_mtu )((int )context->mtu_msgmax >> 5);
  tmp___5 = __fswab32(context->flags);
  qp_attr->path_mig_state = to_ib_mig_state((int )(tmp___5 >> 11) & 3);
  tmp___6 = __fswab32(context->qkey);
  qp_attr->qkey = tmp___6;
  tmp___7 = __fswab32(context->rnr_nextrecvpsn);
  qp_attr->rq_psn = tmp___7 & 16777215U;
  tmp___8 = __fswab32(context->next_send_psn);
  qp_attr->sq_psn = tmp___8 & 16777215U;
  tmp___9 = __fswab32(context->remote_qpn);
  qp_attr->dest_qp_num = tmp___9 & 16777215U;
  tmp___10 = __fswab32(context->params2);
  qp_attr->qp_access_flags = to_ib_qp_access_flags((int )tmp___10);
  if ((unsigned int )qp->transport == 0U || (unsigned int )qp->transport == 1U) {
    to_ib_ah_attr(dev, & qp_attr->ah_attr, & context->pri_path);
    to_ib_ah_attr(dev, & qp_attr->alt_ah_attr, & context->alt_path);
    tmp___11 = __fswab32(context->alt_path.port_pkey);
    qp_attr->alt_pkey_index = (unsigned int )((u16 )tmp___11) & 127U;
    qp_attr->alt_port_num = qp_attr->alt_ah_attr.port_num;
  } else {
  }
  tmp___12 = __fswab32(context->pri_path.port_pkey);
  qp_attr->pkey_index = (unsigned int )((u16 )tmp___12) & 127U;
  tmp___13 = __fswab32(context->pri_path.port_pkey);
  qp_attr->port_num = (unsigned int )((u8 )(tmp___13 >> 24)) & 3U;
  qp_attr->sq_draining = mthca_state == 7;
  tmp___14 = __fswab32(context->params1);
  qp_attr->max_rd_atomic = (u8 )(1 << ((int )(tmp___14 >> 21) & 7));
  tmp___15 = __fswab32(context->params2);
  qp_attr->max_dest_rd_atomic = (u8 )(1 << ((int )(tmp___15 >> 21) & 7));
  tmp___16 = __fswab32(context->rnr_nextrecvpsn);
  qp_attr->min_rnr_timer = (unsigned int )((u8 )(tmp___16 >> 24)) & 31U;
  qp_attr->timeout = (u8 )((int )context->pri_path.ackto >> 3);
  tmp___17 = __fswab32(context->params1);
  qp_attr->retry_cnt = (unsigned int )((u8 )(tmp___17 >> 16)) & 7U;
  qp_attr->rnr_retry = (u8 )((int )context->pri_path.rnr_retry >> 5);
  qp_attr->alt_timeout = (u8 )((int )context->alt_path.ackto >> 3);
  done:
  qp_attr->cur_qp_state = qp_attr->qp_state;
  qp_attr->cap.max_send_wr = (u32 )qp->sq.max;
  qp_attr->cap.max_recv_wr = (u32 )qp->rq.max;
  qp_attr->cap.max_send_sge = (u32 )qp->sq.max_gs;
  qp_attr->cap.max_recv_sge = (u32 )qp->rq.max_gs;
  qp_attr->cap.max_inline_data = (u32 )qp->max_inline_data;
  qp_init_attr->cap = qp_attr->cap;
  qp_init_attr->sq_sig_type = qp->sq_policy;
  out_mailbox:
  mthca_free_mailbox(dev, mailbox);
  out:
  ldv_mutex_unlock_121(& qp->mutex);
  return (err);
}
}
static int mthca_path_set(struct mthca_dev *dev , struct ib_ah_attr const *ah ,
                          struct mthca_qp_path *path , u8 port )
{ __u16 tmp ;
  __u32 tmp___0 ;
  size_t __len ;
  void *__ret ;
  __u32 tmp___1 ;
  {
  path->g_mylmc = (unsigned int )((u8 )ah->src_path_bits) & 127U;
  tmp = __fswab16((int )ah->dlid);
  path->rlid = tmp;
  path->static_rate = mthca_get_rate(dev, (int )ah->static_rate, (int )port);
  if ((int )ah->ah_flags & 1) {
    if ((int )ah->grh.sgid_index >= dev->limits.gid_table_len) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "sgid_index (%u) too large. max is %d\n",
                   (int )ah->grh.sgid_index, dev->limits.gid_table_len + -1);
      } else {
      }
      return (-1);
    } else {
    }
    path->g_mylmc = (u8 )((unsigned int )path->g_mylmc | 128U);
    path->mgid_index = ah->grh.sgid_index;
    path->hop_limit = ah->grh.hop_limit;
    tmp___0 = __fswab32((unsigned int )(((int )ah->sl << 28) | ((int )ah->grh.traffic_class << 20)) | (unsigned int )ah->grh.flow_label);
    path->sl_tclass_flowlabel = tmp___0;
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& path->rgid), (void const *)(& ah->grh.dgid.raw),
                       __len);
    } else {
      __ret = memcpy((void *)(& path->rgid), (void const *)(& ah->grh.dgid.raw),
                               __len);
    }
  } else {
    tmp___1 = __fswab32((__u32 )((int )ah->sl << 28));
    path->sl_tclass_flowlabel = tmp___1;
  }
  return (0);
}
}
static int __mthca_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr const *attr ,
                             int attr_mask , enum ib_qp_state cur_state , enum ib_qp_state new_state )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  struct mthca_mailbox *mailbox ;
  struct mthca_qp_param *qp_param ;
  struct mthca_qp_context *qp_context ;
  u32 sqd_event ;
  int err ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct mthca_ucontext *tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  __u32 tmp___15 ;
  __u32 tmp___16 ;
  u8 tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  u8 sched_queue ;
  unsigned int tmp___20 ;
  __u32 tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  __u32 tmp___24 ;
  struct mthca_pd *tmp___25 ;
  __u32 tmp___26 ;
  __u32 tmp___27 ;
  __u32 tmp___28 ;
  int tmp___29 ;
  __u32 tmp___30 ;
  __u32 tmp___31 ;
  struct mthca_cq *tmp___32 ;
  __u32 tmp___33 ;
  __u32 tmp___34 ;
  __u32 tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  __u32 tmp___38 ;
  __be32 tmp___39 ;
  __u32 tmp___40 ;
  __u32 tmp___41 ;
  __u32 tmp___42 ;
  struct mthca_cq *tmp___43 ;
  __u32 tmp___44 ;
  __u32 tmp___45 ;
  int tmp___46 ;
  __u32 tmp___47 ;
  struct mthca_srq *tmp___48 ;
  __u32 tmp___49 ;
  struct mthca_sqp *tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  struct mthca_srq *tmp___53 ;
  struct mthca_srq *tmp___54 ;
  struct mthca_cq *tmp___55 ;
  struct mthca_cq *tmp___56 ;
  int tmp___57 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  sqd_event = 0U;
  err = -22;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___2 = IS_ERR((void const *)mailbox);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)mailbox);
    err = (int )tmp___1;
    goto out;
  } else {
  }
  qp_param = (struct mthca_qp_param *)mailbox->buf;
  qp_context = & qp_param->context;
  memset((void *)qp_param, 0, 512UL);
  tmp___3 = to_mthca_state(new_state);
  tmp___4 = to_mthca_st((int )qp->transport);
  tmp___5 = __fswab32((__u32 )((tmp___3 << 28) | (tmp___4 << 16)));
  qp_context->flags = tmp___5;
  qp_context->flags = qp_context->flags | 65536U;
  if ((attr_mask & 262144) == 0) {
    qp_context->flags = qp_context->flags | 1572864U;
  } else {
    qp_param->opt_param_mask = qp_param->opt_param_mask | 262144U;
    switch ((unsigned int )attr->path_mig_state) {
    case 0:
    qp_context->flags = qp_context->flags | 1572864U;
    goto ldv_26750;
    case 1:
    qp_context->flags = qp_context->flags | 524288U;
    goto ldv_26750;
    case 2:
    qp_context->flags = qp_context->flags;
    goto ldv_26750;
    }
    ldv_26750: ;
  }
  if ((unsigned int )qp->transport == 5U || (unsigned int )qp->transport == 2U) {
    qp_context->mtu_msgmax = 139U;
  } else
  if ((attr_mask & 256) != 0) {
    if ((unsigned int )attr->path_mtu == 0U || (unsigned int )attr->path_mtu > 4U) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "path MTU (%u) is invalid\n",
                   (unsigned int )attr->path_mtu);
      } else {
      }
      goto out_mailbox;
    } else {
    }
    qp_context->mtu_msgmax = (unsigned int )((int )((u8 )attr->path_mtu) << 5U) | 31U;
  } else {
  }
  tmp___8 = mthca_is_memfree(dev);
  if (tmp___8 != 0) {
    if (qp->rq.max != 0) {
      tmp___6 = __ilog2_u32((u32 )qp->rq.max);
      qp_context->rq_size_stride = (int )((u8 )tmp___6) << 3U;
    } else {
    }
    qp_context->rq_size_stride = (u8 )((int )((signed char )qp_context->rq_size_stride) | (int )((signed char )((unsigned int )((unsigned char )qp->rq.wqe_shift) + 252U)));
    if (qp->sq.max != 0) {
      tmp___7 = __ilog2_u32((u32 )qp->sq.max);
      qp_context->sq_size_stride = (int )((u8 )tmp___7) << 3U;
    } else {
    }
    qp_context->sq_size_stride = (u8 )((int )((signed char )qp_context->sq_size_stride) | (int )((signed char )((unsigned int )((unsigned char )qp->sq.wqe_shift) + 252U)));
  } else {
  }
  if ((unsigned long )qp->ibqp.uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp___9 = to_mucontext((qp->ibqp.uobject)->context);
    tmp___10 = __fswab32((__u32 )tmp___9->uar.index);
    qp_context->usr_page = tmp___10;
  } else {
    tmp___11 = __fswab32((__u32 )dev->driver_uar.index);
    qp_context->usr_page = tmp___11;
  }
  tmp___12 = __fswab32(qp->qpn);
  qp_context->local_qpn = tmp___12;
  if ((attr_mask & 1048576) != 0) {
    tmp___13 = __fswab32(attr->dest_qp_num);
    qp_context->remote_qpn = tmp___13;
  } else {
  }
  if ((unsigned int )qp->transport == 5U) {
    tmp___14 = __fswab32((__u32 )((int )qp->port << 24));
    qp_context->pri_path.port_pkey = qp_context->pri_path.port_pkey | tmp___14;
  } else
  if ((attr_mask & 32) != 0) {
    tmp___15 = __fswab32((__u32 )((int )attr->port_num << 24));
    qp_context->pri_path.port_pkey = qp_context->pri_path.port_pkey | tmp___15;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 524288U;
  } else {
  }
  if ((attr_mask & 16) != 0) {
    tmp___16 = __fswab32((__u32 )attr->pkey_index);
    qp_context->pri_path.port_pkey = qp_context->pri_path.port_pkey | tmp___16;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 268435456U;
  } else {
  }
  if ((attr_mask & 2048) != 0) {
    tmp___17 = (int )((u8 )attr->rnr_retry) << 5U;
    qp_context->pri_path.rnr_retry = tmp___17;
    qp_context->alt_path.rnr_retry = tmp___17;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 10485760U;
  } else {
  }
  if ((attr_mask & 128) != 0) {
    if ((attr_mask & 32) != 0) {
      tmp___18 = (int )attr->port_num;
    } else {
      tmp___18 = (int )qp->port;
    }
    tmp___19 = mthca_path_set(dev, & attr->ah_attr, & qp_context->pri_path, tmp___18);
    if (tmp___19 != 0) {
      goto out_mailbox;
    } else {
    }
    qp_param->opt_param_mask = qp_param->opt_param_mask | 2147483648U;
  } else {
  }
  if (((unsigned int )ibqp->qp_type == 2U && (unsigned int )cur_state == 1U) && (unsigned int )new_state == 2U) {
    if ((unsigned long )ibqp->uobject != (unsigned long )((struct ib_uobject *)0)) {
      tmp___20 = 2U;
    } else {
      tmp___20 = 1U;
    }
    sched_queue = tmp___20;
    tmp___22 = mthca_is_memfree(dev);
    if (tmp___22 != 0) {
      qp_context->rlkey_arbel_sched_queue = (u8 )((int )qp_context->rlkey_arbel_sched_queue | (int )sched_queue);
    } else {
      tmp___21 = __fswab32((__u32 )sched_queue);
      qp_context->tavor_sched_queue = qp_context->tavor_sched_queue | tmp___21;
    }
    qp_param->opt_param_mask = qp_param->opt_param_mask | 256U;
  } else {
  }
  if ((attr_mask & 512) != 0) {
    qp_context->pri_path.ackto = (int )((u8 )attr->timeout) << 3U;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 4194304U;
  } else {
  }
  if ((attr_mask & 16384) != 0) {
    if ((int )attr->alt_pkey_index >= dev->limits.pkey_table_len) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Alternate P_Key index (%u) too large. max is %d\n",
                   (int )attr->alt_pkey_index, dev->limits.pkey_table_len + -1);
      } else {
      }
      goto out_mailbox;
    } else {
    }
    if ((unsigned int )((unsigned char )attr->alt_port_num) == 0U || (int )attr->alt_port_num > dev->limits.num_ports) {
      if (mthca_debug_level != 0) {
        dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Alternate port number (%u) is invalid\n",
                   (int )attr->alt_port_num);
      } else {
      }
      goto out_mailbox;
    } else {
    }
    tmp___23 = mthca_path_set(dev, & attr->alt_ah_attr, & qp_context->alt_path, (int )attr->alt_ah_attr.port_num);
    if (tmp___23 != 0) {
      goto out_mailbox;
    } else {
    }
    tmp___24 = __fswab32((__u32 )((int )attr->alt_pkey_index | ((int )attr->alt_port_num << 24)));
    qp_context->alt_path.port_pkey = qp_context->alt_path.port_pkey | tmp___24;
    qp_context->alt_path.ackto = (int )((u8 )attr->alt_timeout) << 3U;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 16777216U;
  } else {
  }
  tmp___25 = to_mpd(ibqp->pd);
  tmp___26 = __fswab32(tmp___25->pd_num);
  qp_context->pd = tmp___26;
  tmp___27 = __fswab32(qp->mr.ibmr.lkey);
  qp_context->wqe_lkey = tmp___27;
  qp_context->params1 = 4194473U;
  if ((unsigned int )qp->sq_policy == 0U) {
    qp_context->params1 = qp_context->params1 | 134217728U;
  } else {
  }
  if ((attr_mask & 1024) != 0) {
    tmp___28 = __fswab32((__u32 )((int )attr->retry_cnt << 16));
    qp_context->params1 = qp_context->params1 | tmp___28;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 1048576U;
  } else {
  }
  if ((attr_mask & 8192) != 0) {
    if ((unsigned int )((unsigned char )attr->max_rd_atomic) != 0U) {
      qp_context->params1 = qp_context->params1 | 10485760U;
      tmp___29 = fls((int )attr->max_rd_atomic + -1);
      tmp___30 = __fswab32((__u32 )(tmp___29 << 21));
      qp_context->params1 = qp_context->params1 | tmp___30;
    } else {
    }
    qp_param->opt_param_mask = qp_param->opt_param_mask | 65536U;
  } else {
  }
  if ((attr_mask & 65536) != 0) {
    tmp___31 = __fswab32(attr->sq_psn);
    qp_context->next_send_psn = tmp___31;
  } else {
  }
  tmp___32 = to_mcq(ibqp->send_cq);
  tmp___33 = __fswab32((__u32 )tmp___32->cqn);
  qp_context->cqn_snd = tmp___33;
  tmp___36 = mthca_is_memfree(dev);
  if (tmp___36 != 0) {
    tmp___34 = __fswab32((__u32 )qp->send_wqe_offset);
    qp_context->snd_wqe_base_l = tmp___34;
    tmp___35 = __fswab32((__u32 )qp->sq.db_index);
    qp_context->snd_db_index = tmp___35;
  } else {
  }
  if ((attr_mask & 131072) != 0) {
    if ((unsigned int )((unsigned char )attr->max_dest_rd_atomic) != 0U) {
      tmp___37 = fls((int )attr->max_dest_rd_atomic + -1);
      tmp___38 = __fswab32((__u32 )(tmp___37 << 21));
      qp_context->params2 = qp_context->params2 | tmp___38;
    } else {
    }
    qp_param->opt_param_mask = qp_param->opt_param_mask | 131072U;
  } else {
  }
  if ((attr_mask & 131080) != 0) {
    tmp___39 = get_hw_access_flags(qp, attr, attr_mask);
    qp_context->params2 = qp_context->params2 | tmp___39;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 234881024U;
  } else {
  }
  qp_context->params2 = qp_context->params2 | 134217728U;
  if ((unsigned long )ibqp->srq != (unsigned long )((struct ib_srq *)0)) {
    qp_context->params2 = qp_context->params2 | 268435456U;
  } else {
  }
  if ((attr_mask & 32768) != 0) {
    tmp___40 = __fswab32((__u32 )((int )attr->min_rnr_timer << 24));
    qp_context->rnr_nextrecvpsn = qp_context->rnr_nextrecvpsn | tmp___40;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 1073741824U;
  } else {
  }
  if ((attr_mask & 4096) != 0) {
    tmp___41 = __fswab32(attr->rq_psn);
    qp_context->rnr_nextrecvpsn = qp_context->rnr_nextrecvpsn | tmp___41;
  } else {
  }
  tmp___42 = __fswab32(dev->qp_table.rdb_base + ((qp->qpn & (u32 )(dev->limits.num_qps + -1)) * 32U << dev->qp_table.rdb_shift));
  qp_context->ra_buff_indx = tmp___42;
  tmp___43 = to_mcq(ibqp->recv_cq);
  tmp___44 = __fswab32((__u32 )tmp___43->cqn);
  qp_context->cqn_rcv = tmp___44;
  tmp___46 = mthca_is_memfree(dev);
  if (tmp___46 != 0) {
    tmp___45 = __fswab32((__u32 )qp->rq.db_index);
    qp_context->rcv_db_index = tmp___45;
  } else {
  }
  if ((attr_mask & 64) != 0) {
    tmp___47 = __fswab32(attr->qkey);
    qp_context->qkey = tmp___47;
    qp_param->opt_param_mask = qp_param->opt_param_mask | 536870912U;
  } else {
  }
  if ((unsigned long )ibqp->srq != (unsigned long )((struct ib_srq *)0)) {
    tmp___48 = to_msrq(ibqp->srq);
    tmp___49 = __fswab32((__u32 )(tmp___48->srqn | 16777216));
    qp_context->srqn = tmp___49;
  } else {
  }
  if ((((unsigned int )cur_state == 3U && (unsigned int )new_state == 4U) && (attr_mask & 4) != 0) && (unsigned int )((unsigned char )attr->en_sqd_async_notify) != 0U) {
    sqd_event = 2147483648U;
  } else {
  }
  err = mthca_MODIFY_QP(dev, cur_state, new_state, qp->qpn, 0, mailbox, sqd_event);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "modify QP %d->%d returned %d.\n",
             (unsigned int )cur_state, (unsigned int )new_state, err);
    goto out_mailbox;
  } else {
  }
  qp->state = (u8 )new_state;
  if ((attr_mask & 8) != 0) {
    qp->atomic_rd_en = (u8 )attr->qp_access_flags;
  } else {
  }
  if ((attr_mask & 131072) != 0) {
    qp->resp_depth = attr->max_dest_rd_atomic;
  } else {
  }
  if ((attr_mask & 32) != 0) {
    qp->port = attr->port_num;
  } else {
  }
  if ((attr_mask & 16384) != 0) {
    qp->alt_port = attr->alt_port_num;
  } else {
  }
  tmp___51 = is_sqp(dev, qp);
  if (tmp___51 != 0) {
    tmp___50 = to_msqp(qp);
    store_attrs(tmp___50, attr, attr_mask);
  } else {
  }
  tmp___52 = is_qp0(dev, qp);
  if (tmp___52 != 0) {
    if ((unsigned int )cur_state != 2U && (unsigned int )new_state == 2U) {
      init_port(dev, (int )qp->port);
    } else {
    }
    if (((unsigned int )cur_state != 0U && (unsigned int )cur_state != 6U) && ((unsigned int )new_state == 0U || (unsigned int )new_state == 6U)) {
      mthca_CLOSE_IB(dev, (int )qp->port);
    } else {
    }
  } else {
  }
  if ((unsigned int )new_state == 0U && (unsigned long )qp->ibqp.uobject == (unsigned long )((struct ib_uobject *)0)) {
    if ((unsigned long )qp->ibqp.srq != (unsigned long )((struct ib_srq *)0)) {
      tmp___53 = to_msrq(qp->ibqp.srq);
      tmp___54 = tmp___53;
    } else {
      tmp___54 = 0;
    }
    tmp___55 = to_mcq(qp->ibqp.recv_cq);
    mthca_cq_clean(dev, tmp___55, qp->qpn, tmp___54);
    if ((unsigned long )qp->ibqp.send_cq != (unsigned long )qp->ibqp.recv_cq) {
      tmp___56 = to_mcq(qp->ibqp.send_cq);
      mthca_cq_clean(dev, tmp___56, qp->qpn, 0);
    } else {
    }
    mthca_wq_reset(& qp->sq);
    qp->sq.last = get_send_wqe(qp, qp->sq.max + -1);
    mthca_wq_reset(& qp->rq);
    qp->rq.last = get_recv_wqe(qp, qp->rq.max + -1);
    tmp___57 = mthca_is_memfree(dev);
    if (tmp___57 != 0) {
      *(qp->sq.db) = 0U;
      *(qp->rq.db) = 0U;
    } else {
    }
  } else {
  }
  out_mailbox:
  mthca_free_mailbox(dev, mailbox);
  out: ;
  return (err);
}
}
int mthca_modify_qp(struct ib_qp *ibqp , struct ib_qp_attr *attr , int attr_mask ,
                    struct ib_udata *udata )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  enum ib_qp_state cur_state ;
  enum ib_qp_state new_state ;
  int err ;
  int tmp___1 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = -22;
  ldv_mutex_lock_122(& qp->mutex);
  if ((attr_mask & 2) != 0) {
    cur_state = attr->cur_qp_state;
  } else {
    spin_lock_irq(& qp->sq.lock);
    spin_lock(& qp->rq.lock);
    cur_state = (enum ib_qp_state )qp->state;
    spin_unlock(& qp->rq.lock);
    spin_unlock_irq(& qp->sq.lock);
  }
  if (attr_mask & 1) {
    new_state = attr->qp_state;
  } else {
    new_state = cur_state;
  }
  tmp___1 = ib_modify_qp_is_ok(cur_state, new_state, ibqp->qp_type, (enum ib_qp_attr_mask )attr_mask);
  if (tmp___1 == 0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Bad QP transition (transport %d) %d->%d with attr 0x%08x\n",
                 (int )qp->transport, (unsigned int )cur_state, (unsigned int )new_state,
                 attr_mask);
    } else {
    }
    goto out;
  } else {
  }
  if ((attr_mask & 16) != 0 && (int )attr->pkey_index >= dev->limits.pkey_table_len) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "P_Key index (%u) too large. max is %d\n",
                 (int )attr->pkey_index, dev->limits.pkey_table_len + -1);
    } else {
    }
    goto out;
  } else {
  }
  if ((attr_mask & 32) != 0 && ((unsigned int )attr->port_num == 0U || (int )attr->port_num > dev->limits.num_ports)) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Port number (%u) is invalid\n",
                 (int )attr->port_num);
    } else {
    }
    goto out;
  } else {
  }
  if ((attr_mask & 8192) != 0 && (int )attr->max_rd_atomic > dev->limits.max_qp_init_rdma) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max rdma_atomic as initiator %u too large (max is %d)\n",
                 (int )attr->max_rd_atomic, dev->limits.max_qp_init_rdma);
    } else {
    }
    goto out;
  } else {
  }
  if ((attr_mask & 131072) != 0 && (int )attr->max_dest_rd_atomic > 1 << dev->qp_table.rdb_shift) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Max rdma_atomic as responder %u too large (max %d)\n",
                 (int )attr->max_dest_rd_atomic, 1 << dev->qp_table.rdb_shift);
    } else {
    }
    goto out;
  } else {
  }
  if ((unsigned int )cur_state == (unsigned int )new_state && (unsigned int )cur_state == 0U) {
    err = 0;
    goto out;
  } else {
  }
  err = __mthca_modify_qp(ibqp, (struct ib_qp_attr const *)attr, attr_mask, cur_state,
                          new_state);
  out:
  ldv_mutex_unlock_123(& qp->mutex);
  return (err);
}
}
static int mthca_max_data_size(struct mthca_dev *dev , struct mthca_qp *qp , int desc_sz )
{ int max_data_size ;
  int tmp ;
  {
  max_data_size = (int )((unsigned int )desc_sz - 16U);
  switch ((int )qp->transport) {
  case 5:
  max_data_size = (int )((unsigned int )max_data_size - 32U);
  goto ldv_26774;
  case 2:
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    max_data_size = (int )((unsigned int )max_data_size - 48U);
  } else {
    max_data_size = (int )((unsigned int )max_data_size - 48U);
  }
  goto ldv_26774;
  default:
  max_data_size = (int )((unsigned int )max_data_size - 16U);
  goto ldv_26774;
  }
  ldv_26774: ;
  return (max_data_size);
}
}
__inline static int mthca_max_inline_data(struct mthca_pd *pd , int max_data_size )
{ int tmp ;
  {
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp = max_data_size + -4;
  } else {
    tmp = 0;
  }
  return (tmp);
}
}
static void mthca_adjust_qp_caps(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_qp *qp )
{ int max_data_size ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  int tmp___0 ;
  int __min1 ;
  int __min2 ;
  int tmp___1 ;
  int __min1___0 ;
  int __min2___0 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  _min1 = dev->limits.max_desc_sz;
  _min2 = 1 << qp->sq.wqe_shift;
  if (_min1 < _min2) {
    tmp = _min1;
  } else {
    tmp = _min2;
  }
  tmp___0 = mthca_max_data_size(dev, qp, tmp);
  max_data_size = tmp___0;
  qp->max_inline_data = mthca_max_inline_data(pd, max_data_size);
  __min1 = dev->limits.max_sg;
  __min2 = (int )((unsigned long )max_data_size / 16UL);
  if (__min1 < __min2) {
    tmp___1 = __min1;
  } else {
    tmp___1 = __min2;
  }
  qp->sq.max_gs = tmp___1;
  __min1___0 = dev->limits.max_sg;
  _min1___0 = dev->limits.max_desc_sz;
  _min2___0 = 1 << qp->rq.wqe_shift;
  if (_min1___0 < _min2___0) {
    tmp___2 = _min1___0;
  } else {
    tmp___2 = _min2___0;
  }
  __min2___0 = (int )(((unsigned long )tmp___2 - 16UL) / 16UL);
  if (__min1___0 < __min2___0) {
    tmp___3 = __min1___0;
  } else {
    tmp___3 = __min2___0;
  }
  qp->rq.max_gs = tmp___3;
  return;
}
}
static int mthca_alloc_wqe_buf(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_qp *qp )
{ int size ;
  int err ;
  int __max1 ;
  int __max2 ;
  int tmp ;
  int __max1___0 ;
  int __max2___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  err = -12;
  size = (int )((unsigned int )((unsigned long )qp->rq.max_gs + 1UL) * 16U);
  if (dev->limits.max_desc_sz < size) {
    return (-22);
  } else {
  }
  qp->rq.wqe_shift = 6;
  goto ldv_26807;
  ldv_26806:
  qp->rq.wqe_shift = qp->rq.wqe_shift + 1;
  ldv_26807: ;
  if (1 << qp->rq.wqe_shift < size) {
    goto ldv_26806;
  } else {
    goto ldv_26808;
  }
  ldv_26808:
  size = (int )((unsigned int )qp->sq.max_gs * 16U);
  switch ((int )qp->transport) {
  case 5:
  size = (int )((unsigned int )size + 32U);
  goto ldv_26810;
  case 2:
  mthca_is_memfree(dev);
  size = (int )((unsigned long )size + 48UL);
  goto ldv_26810;
  case 1:
  size = (int )((unsigned int )size + 16U);
  goto ldv_26810;
  case 0:
  size = (int )((unsigned int )size + 16U);
  __max1 = size;
  __max2 = 48;
  if (__max1 > __max2) {
    tmp = __max1;
  } else {
    tmp = __max2;
  }
  size = tmp;
  goto ldv_26810;
  default: ;
  goto ldv_26810;
  }
  ldv_26810:
  __max1___0 = size;
  __max2___0 = 32;
  if (__max1___0 > __max2___0) {
    tmp___0 = __max1___0;
  } else {
    tmp___0 = __max2___0;
  }
  size = tmp___0;
  size = (int )((unsigned int )size + 16U);
  if (dev->limits.max_desc_sz < size) {
    return (-22);
  } else {
  }
  qp->sq.wqe_shift = 6;
  goto ldv_26822;
  ldv_26821:
  qp->sq.wqe_shift = qp->sq.wqe_shift + 1;
  ldv_26822: ;
  if (1 << qp->sq.wqe_shift < size) {
    goto ldv_26821;
  } else {
    goto ldv_26823;
  }
  ldv_26823:
  qp->send_wqe_offset = ((qp->rq.max << qp->rq.wqe_shift) + ((1 << qp->sq.wqe_shift) + -1)) & - (1 << qp->sq.wqe_shift);
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    return (0);
  } else {
  }
  size = ((qp->send_wqe_offset + (qp->sq.max << qp->sq.wqe_shift)) + 4095) & -4096;
  tmp___1 = kmalloc((unsigned long )(qp->rq.max + qp->sq.max) * 8UL, 208U);
  qp->wrid = (u64 *)tmp___1;
  if ((unsigned long )qp->wrid == (unsigned long )((u64 *)0)) {
    goto err_out;
  } else {
  }
  err = mthca_buf_alloc(dev, size, 16384, & qp->queue, & qp->is_direct, pd, 0, & qp->mr);
  if (err != 0) {
    goto err_out;
  } else {
  }
  return (0);
  err_out:
  kfree((void const *)qp->wrid);
  return (err);
}
}
static void mthca_free_wqe_buf(struct mthca_dev *dev , struct mthca_qp *qp )
{
  {
  mthca_buf_free(dev, ((qp->send_wqe_offset + (qp->sq.max << qp->sq.wqe_shift)) + 4095) & -4096,
                 & qp->queue, qp->is_direct, & qp->mr);
  kfree((void const *)qp->wrid);
  return;
}
}
static int mthca_map_memfree(struct mthca_dev *dev , struct mthca_qp *qp )
{ int ret ;
  int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    ret = mthca_table_get(dev, dev->qp_table.qp_table, (int )qp->qpn);
    if (ret != 0) {
      return (ret);
    } else {
    }
    ret = mthca_table_get(dev, dev->qp_table.eqp_table, (int )qp->qpn);
    if (ret != 0) {
      goto err_qpc;
    } else {
    }
    ret = mthca_table_get(dev, dev->qp_table.rdb_table, (int )(qp->qpn << dev->qp_table.rdb_shift));
    if (ret != 0) {
      goto err_eqpc;
    } else {
    }
  } else {
  }
  return (0);
  err_eqpc:
  mthca_table_put(dev, dev->qp_table.eqp_table, (int )qp->qpn);
  err_qpc:
  mthca_table_put(dev, dev->qp_table.qp_table, (int )qp->qpn);
  return (ret);
}
}
static void mthca_unmap_memfree(struct mthca_dev *dev , struct mthca_qp *qp )
{
  {
  mthca_table_put(dev, dev->qp_table.rdb_table, (int )(qp->qpn << dev->qp_table.rdb_shift));
  mthca_table_put(dev, dev->qp_table.eqp_table, (int )qp->qpn);
  mthca_table_put(dev, dev->qp_table.qp_table, (int )qp->qpn);
  return;
}
}
static int mthca_alloc_memfree(struct mthca_dev *dev , struct mthca_qp *qp )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    qp->rq.db_index = mthca_alloc_db(dev, 4, qp->qpn, & qp->rq.db);
    if (qp->rq.db_index < 0) {
      return (-12);
    } else {
    }
    qp->sq.db_index = mthca_alloc_db(dev, 3, qp->qpn, & qp->sq.db);
    if (qp->sq.db_index < 0) {
      mthca_free_db(dev, 4, qp->rq.db_index);
      return (-12);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void mthca_free_memfree(struct mthca_dev *dev , struct mthca_qp *qp )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    mthca_free_db(dev, 3, qp->sq.db_index);
    mthca_free_db(dev, 4, qp->rq.db_index);
  } else {
  }
  return;
}
}
static int mthca_alloc_qp_common(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_cq *send_cq ,
                                 struct mthca_cq *recv_cq , enum ib_sig_type send_policy ,
                                 struct mthca_qp *qp )
{ int ret ;
  int i ;
  struct mthca_next_seg *next ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct mthca_data_seg *scatter ;
  int size ;
  void *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  void *tmp___2 ;
  __u32 tmp___3 ;
  void *tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  {
  qp->refcount = 1;
  __init_waitqueue_head(& qp->wait, "&qp->wait", & __key);
  __mutex_init(& qp->mutex, "&qp->mutex", & __key___0);
  qp->state = 0U;
  qp->atomic_rd_en = 0U;
  qp->resp_depth = 0U;
  qp->sq_policy = send_policy;
  mthca_wq_reset(& qp->sq);
  mthca_wq_reset(& qp->rq);
  spinlock_check(& qp->sq.lock);
  __raw_spin_lock_init(& qp->sq.lock.ldv_5961.rlock, "&(&qp->sq.lock)->rlock", & __key___1);
  spinlock_check(& qp->rq.lock);
  __raw_spin_lock_init(& qp->rq.lock.ldv_5961.rlock, "&(&qp->rq.lock)->rlock", & __key___2);
  ret = mthca_map_memfree(dev, qp);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = mthca_alloc_wqe_buf(dev, pd, qp);
  if (ret != 0) {
    mthca_unmap_memfree(dev, qp);
    return (ret);
  } else {
  }
  mthca_adjust_qp_caps(dev, pd, qp);
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    return (0);
  } else {
  }
  ret = mthca_alloc_memfree(dev, qp);
  if (ret != 0) {
    mthca_free_wqe_buf(dev, qp);
    mthca_unmap_memfree(dev, qp);
    return (ret);
  } else {
  }
  tmp___6 = mthca_is_memfree(dev);
  if (tmp___6 != 0) {
    size = (int )((((unsigned long )qp->rq.max_gs + 1UL) * 16UL) / 16UL);
    i = 0;
    goto ldv_26869;
    ldv_26868:
    tmp = get_recv_wqe(qp, i);
    next = (struct mthca_next_seg *)tmp;
    tmp___0 = __fswab32((__u32 )(((i + 1) & (qp->rq.max + -1)) << qp->rq.wqe_shift));
    next->nda_op = tmp___0;
    tmp___1 = __fswab32((__u32 )size);
    next->ee_nds = tmp___1;
    scatter = (struct mthca_data_seg *)next + 1U;
    goto ldv_26866;
    ldv_26865:
    scatter->lkey = 65536U;
    scatter = scatter + 1;
    ldv_26866: ;
    if ((unsigned long )((void *)next + (unsigned long )(1 << qp->rq.wqe_shift)) > (unsigned long )((void *)scatter)) {
      goto ldv_26865;
    } else {
      goto ldv_26867;
    }
    ldv_26867:
    i = i + 1;
    ldv_26869: ;
    if (qp->rq.max > i) {
      goto ldv_26868;
    } else {
      goto ldv_26870;
    }
    ldv_26870:
    i = 0;
    goto ldv_26872;
    ldv_26871:
    tmp___2 = get_send_wqe(qp, i);
    next = (struct mthca_next_seg *)tmp___2;
    tmp___3 = __fswab32((__u32 )((((i + 1) & (qp->sq.max + -1)) << qp->sq.wqe_shift) + qp->send_wqe_offset));
    next->nda_op = tmp___3;
    i = i + 1;
    ldv_26872: ;
    if (qp->sq.max > i) {
      goto ldv_26871;
    } else {
      goto ldv_26873;
    }
    ldv_26873: ;
  } else {
    i = 0;
    goto ldv_26875;
    ldv_26874:
    tmp___4 = get_recv_wqe(qp, i);
    next = (struct mthca_next_seg *)tmp___4;
    tmp___5 = __fswab32((__u32 )(((i + 1) % qp->rq.max << qp->rq.wqe_shift) | 1));
    next->nda_op = tmp___5;
    i = i + 1;
    ldv_26875: ;
    if (qp->rq.max > i) {
      goto ldv_26874;
    } else {
      goto ldv_26876;
    }
    ldv_26876: ;
  }
  qp->sq.last = get_send_wqe(qp, qp->sq.max + -1);
  qp->rq.last = get_recv_wqe(qp, qp->rq.max + -1);
  return (0);
}
}
static int mthca_set_qp_size(struct mthca_dev *dev , struct ib_qp_cap *cap , struct mthca_pd *pd ,
                             struct mthca_qp *qp )
{ int max_data_size ;
  int tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int __max1 ;
  int __max2 ;
  int tmp___4 ;
  {
  tmp = mthca_max_data_size(dev, qp, dev->limits.max_desc_sz);
  max_data_size = tmp;
  if (((cap->max_send_wr > (u32 )dev->limits.max_wqes || cap->max_recv_wr > (u32 )dev->limits.max_wqes) || cap->max_send_sge > (u32 )dev->limits.max_sg) || cap->max_recv_sge > (u32 )dev->limits.max_sg) {
    return (-22);
  } else {
    tmp___0 = mthca_max_inline_data(pd, max_data_size);
    if (cap->max_inline_data > (u32 )tmp___0) {
      return (-22);
    } else {
    }
  }
  if ((unsigned int )qp->transport == 5U && cap->max_send_sge + 2U > (u32 )dev->limits.max_sg) {
    return (-22);
  } else {
  }
  tmp___3 = mthca_is_memfree(dev);
  if (tmp___3 != 0) {
    if (cap->max_recv_wr != 0U) {
      tmp___1 = __roundup_pow_of_two((unsigned long )cap->max_recv_wr);
      qp->rq.max = (int )tmp___1;
    } else {
      qp->rq.max = 0;
    }
    if (cap->max_send_wr != 0U) {
      tmp___2 = __roundup_pow_of_two((unsigned long )cap->max_send_wr);
      qp->sq.max = (int )tmp___2;
    } else {
      qp->sq.max = 0;
    }
  } else {
    qp->rq.max = (int )cap->max_recv_wr;
    qp->sq.max = (int )cap->max_send_wr;
  }
  qp->rq.max_gs = (int )cap->max_recv_sge;
  __max1 = (int )cap->max_send_sge;
  __max2 = (int )(((unsigned long )(cap->max_inline_data + 19U) & 4294967280UL) / 16UL);
  if (__max1 > __max2) {
    tmp___4 = __max1;
  } else {
    tmp___4 = __max2;
  }
  qp->sq.max_gs = tmp___4;
  return (0);
}
}
int mthca_alloc_qp(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_cq *send_cq ,
                   struct mthca_cq *recv_cq , enum ib_qp_type type , enum ib_sig_type send_policy ,
                   struct ib_qp_cap *cap , struct mthca_qp *qp )
{ int err ;
  {
  switch ((unsigned int )type) {
  case 2:
  qp->transport = 0U;
  goto ldv_26899;
  case 3:
  qp->transport = 1U;
  goto ldv_26899;
  case 4:
  qp->transport = 2U;
  goto ldv_26899;
  default: ;
  return (-22);
  }
  ldv_26899:
  err = mthca_set_qp_size(dev, cap, pd, qp);
  if (err != 0) {
    return (err);
  } else {
  }
  qp->qpn = mthca_alloc(& dev->qp_table.alloc);
  if (qp->qpn == 4294967295U) {
    return (-12);
  } else {
  }
  qp->port = 0U;
  err = mthca_alloc_qp_common(dev, pd, send_cq, recv_cq, send_policy, qp);
  if (err != 0) {
    mthca_free(& dev->qp_table.alloc, qp->qpn);
    return (err);
  } else {
  }
  spin_lock_irq(& dev->qp_table.lock);
  mthca_array_set(& dev->qp_table.qp, (int )(qp->qpn & (u32 )(dev->limits.num_qps + -1)),
                  (void *)qp);
  spin_unlock_irq(& dev->qp_table.lock);
  return (0);
}
}
static void mthca_lock_cqs(struct mthca_cq *send_cq , struct mthca_cq *recv_cq )
{ raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  if ((unsigned long )send_cq == (unsigned long )recv_cq) {
    spin_lock_irq(& send_cq->lock);
  } else
  if (send_cq->cqn < recv_cq->cqn) {
    spin_lock_irq(& send_cq->lock);
    tmp = spinlock_check(& recv_cq->lock);
    _raw_spin_lock_nested(tmp, 1);
  } else {
    spin_lock_irq(& recv_cq->lock);
    tmp___0 = spinlock_check(& send_cq->lock);
    _raw_spin_lock_nested(tmp___0, 1);
  }
  return;
}
}
static void mthca_unlock_cqs(struct mthca_cq *send_cq , struct mthca_cq *recv_cq )
{
  {
  if ((unsigned long )send_cq == (unsigned long )recv_cq) {
    spin_unlock_irq(& send_cq->lock);
  } else
  if (send_cq->cqn < recv_cq->cqn) {
    spin_unlock(& recv_cq->lock);
    spin_unlock_irq(& send_cq->lock);
  } else {
    spin_unlock(& send_cq->lock);
    spin_unlock_irq(& recv_cq->lock);
  }
  return;
}
}
int mthca_alloc_sqp(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_cq *send_cq ,
                    struct mthca_cq *recv_cq , enum ib_sig_type send_policy , struct ib_qp_cap *cap ,
                    int qpn , int port , struct mthca_sqp *sqp )
{ u32 mqpn ;
  int err ;
  void *tmp ;
  {
  mqpn = (u32 )(((qpn * 2 + dev->qp_table.sqp_start) + port) + -1);
  sqp->qp.transport = 5U;
  err = mthca_set_qp_size(dev, cap, pd, & sqp->qp);
  if (err != 0) {
    return (err);
  } else {
  }
  sqp->header_buf_size = sqp->qp.sq.max * 72;
  sqp->header_buf = dma_alloc_attrs(& (dev->pdev)->dev, (size_t )sqp->header_buf_size,
                                    & sqp->header_dma, 208U, 0);
  if ((unsigned long )sqp->header_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  spin_lock_irq(& dev->qp_table.lock);
  tmp = mthca_array_get(& dev->qp_table.qp, (int )mqpn);
  if ((unsigned long )tmp != (unsigned long )((void *)0)) {
    err = -16;
  } else {
    mthca_array_set(& dev->qp_table.qp, (int )mqpn, (void *)sqp);
  }
  spin_unlock_irq(& dev->qp_table.lock);
  if (err != 0) {
    goto err_out;
  } else {
  }
  sqp->qp.port = (u8 )port;
  sqp->qp.qpn = mqpn;
  sqp->qp.transport = 5U;
  err = mthca_alloc_qp_common(dev, pd, send_cq, recv_cq, send_policy, & sqp->qp);
  if (err != 0) {
    goto err_out_free;
  } else {
  }
  atomic_inc(& pd->sqp_count);
  return (0);
  err_out_free:
  mthca_lock_cqs(send_cq, recv_cq);
  spin_lock(& dev->qp_table.lock);
  mthca_array_clear(& dev->qp_table.qp, (int )mqpn);
  spin_unlock(& dev->qp_table.lock);
  mthca_unlock_cqs(send_cq, recv_cq);
  err_out:
  dma_free_attrs(& (dev->pdev)->dev, (size_t )sqp->header_buf_size, sqp->header_buf,
                 sqp->header_dma, 0);
  return (err);
}
}
__inline static int get_qp_refcount(struct mthca_dev *dev , struct mthca_qp *qp )
{ int c ;
  {
  spin_lock_irq(& dev->qp_table.lock);
  c = qp->refcount;
  spin_unlock_irq(& dev->qp_table.lock);
  return (c);
}
}
void mthca_free_qp(struct mthca_dev *dev , struct mthca_qp *qp )
{ struct mthca_cq *send_cq ;
  struct mthca_cq *recv_cq ;
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  struct mthca_srq *tmp___2 ;
  struct mthca_srq *tmp___3 ;
  struct mthca_pd *tmp___4 ;
  struct mthca_sqp *tmp___5 ;
  struct mthca_sqp *tmp___6 ;
  struct mthca_sqp *tmp___7 ;
  int tmp___8 ;
  {
  send_cq = to_mcq(qp->ibqp.send_cq);
  recv_cq = to_mcq(qp->ibqp.recv_cq);
  mthca_lock_cqs(send_cq, recv_cq);
  spin_lock(& dev->qp_table.lock);
  mthca_array_clear(& dev->qp_table.qp, (int )(qp->qpn & (u32 )(dev->limits.num_qps + -1)));
  qp->refcount = qp->refcount - 1;
  spin_unlock(& dev->qp_table.lock);
  mthca_unlock_cqs(send_cq, recv_cq);
  tmp = get_qp_refcount(dev, qp);
  if (tmp == 0) {
    goto ldv_26937;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_26940:
  prepare_to_wait(& qp->wait, & __wait, 2);
  tmp___1 = get_qp_refcount(dev, qp);
  if (tmp___1 == 0) {
    goto ldv_26939;
  } else {
  }
  schedule();
  goto ldv_26940;
  ldv_26939:
  finish_wait(& qp->wait, & __wait);
  ldv_26937: ;
  if ((unsigned int )qp->state != 0U) {
    mthca_MODIFY_QP(dev, (enum ib_qp_state )qp->state, 0, qp->qpn, 0, 0, 0U);
  } else {
  }
  if ((unsigned long )qp->ibqp.uobject == (unsigned long )((struct ib_uobject *)0)) {
    if ((unsigned long )qp->ibqp.srq != (unsigned long )((struct ib_srq *)0)) {
      tmp___2 = to_msrq(qp->ibqp.srq);
      tmp___3 = tmp___2;
    } else {
      tmp___3 = 0;
    }
    mthca_cq_clean(dev, recv_cq, qp->qpn, tmp___3);
    if ((unsigned long )send_cq != (unsigned long )recv_cq) {
      mthca_cq_clean(dev, send_cq, qp->qpn, 0);
    } else {
    }
    mthca_free_memfree(dev, qp);
    mthca_free_wqe_buf(dev, qp);
  } else {
  }
  mthca_unmap_memfree(dev, qp);
  tmp___8 = is_sqp(dev, qp);
  if (tmp___8 != 0) {
    tmp___4 = to_mpd(qp->ibqp.pd);
    atomic_dec(& tmp___4->sqp_count);
    tmp___5 = to_msqp(qp);
    tmp___6 = to_msqp(qp);
    tmp___7 = to_msqp(qp);
    dma_free_attrs(& (dev->pdev)->dev, (size_t )tmp___7->header_buf_size, tmp___6->header_buf,
                   tmp___5->header_dma, 0);
  } else {
    mthca_free(& dev->qp_table.alloc, qp->qpn);
  }
  return;
}
}
static int build_mlx_header(struct mthca_dev *dev , struct mthca_sqp *sqp , int ind ,
                            struct ib_send_wr *wr , struct mthca_mlx_seg *mlx , struct mthca_data_seg *data )
{ int header_size ;
  int err ;
  u16 pkey ;
  struct mthca_ah *tmp ;
  int tmp___0 ;
  struct mthca_ah *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  u32 tmp___7 ;
  __u32 tmp___8 ;
  u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  struct mthca_pd *tmp___13 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  {
  tmp = to_mah(wr->wr.ud.ah);
  tmp___0 = mthca_ah_grh_present(tmp);
  ib_ud_header_init(256, 1, 0, 0, tmp___0, 0, & sqp->ud_header);
  tmp___1 = to_mah(wr->wr.ud.ah);
  err = mthca_read_ah(dev, tmp___1, & sqp->ud_header);
  if (err != 0) {
    return (err);
  } else {
  }
  mlx->flags = mlx->flags & 4244635647U;
  if (sqp->qp.ibqp.qp_num == 0U) {
    tmp___2 = 131072;
  } else {
    tmp___2 = 0;
  }
  if ((unsigned int )sqp->ud_header.lrh.destination_lid == 65535U) {
    tmp___3 = 65536;
  } else {
    tmp___3 = 0;
  }
  tmp___4 = __fswab32((__u32 )((tmp___2 | tmp___3) | ((int )sqp->ud_header.lrh.service_level << 8)));
  mlx->flags = mlx->flags | tmp___4;
  mlx->rlid = sqp->ud_header.lrh.destination_lid;
  mlx->vcrc = 0U;
  switch ((unsigned int )wr->opcode) {
  case 2:
  sqp->ud_header.bth.opcode = 100U;
  sqp->ud_header.immediate_present = 0;
  goto ldv_26953;
  case 3:
  sqp->ud_header.bth.opcode = 101U;
  sqp->ud_header.immediate_present = 1;
  sqp->ud_header.immediate_data = wr->ex.imm_data;
  goto ldv_26953;
  default: ;
  return (-22);
  }
  ldv_26953: ;
  if (sqp->qp.ibqp.qp_num == 0U) {
    sqp->ud_header.lrh.virtual_lane = 15U;
  } else {
    sqp->ud_header.lrh.virtual_lane = 0U;
  }
  if ((unsigned int )sqp->ud_header.lrh.destination_lid == 65535U) {
    sqp->ud_header.lrh.source_lid = 65535U;
  } else {
  }
  sqp->ud_header.bth.solicited_event = (wr->send_flags & 4) != 0;
  if (sqp->qp.ibqp.qp_num == 0U) {
    ib_get_cached_pkey(& dev->ib_dev, (int )sqp->qp.port, sqp->pkey_index, & pkey);
  } else {
    ib_get_cached_pkey(& dev->ib_dev, (int )sqp->qp.port, (int )wr->wr.ud.pkey_index,
                       & pkey);
  }
  tmp___5 = __fswab16((int )pkey);
  sqp->ud_header.bth.pkey = tmp___5;
  tmp___6 = __fswab32(wr->wr.ud.remote_qpn);
  sqp->ud_header.bth.destination_qpn = tmp___6;
  tmp___7 = sqp->send_psn;
  sqp->send_psn = sqp->send_psn + 1U;
  tmp___8 = __fswab32(tmp___7 & 16777215U);
  sqp->ud_header.bth.psn = tmp___8;
  if ((int )wr->wr.ud.remote_qkey < 0) {
    tmp___9 = sqp->qkey;
  } else {
    tmp___9 = wr->wr.ud.remote_qkey;
  }
  tmp___10 = __fswab32(tmp___9);
  sqp->ud_header.deth.qkey = tmp___10;
  tmp___11 = __fswab32(sqp->qp.ibqp.qp_num);
  sqp->ud_header.deth.source_qpn = tmp___11;
  header_size = ib_ud_header_pack(& sqp->ud_header, sqp->header_buf + (unsigned long )(ind * 72));
  tmp___12 = __fswab32((__u32 )header_size);
  data->byte_count = tmp___12;
  tmp___13 = to_mpd(sqp->qp.ibqp.pd);
  tmp___14 = __fswab32(tmp___13->ntmr.ibmr.lkey);
  data->lkey = tmp___14;
  tmp___15 = __fswab64(sqp->header_dma + (dma_addr_t )(ind * 72));
  data->addr = tmp___15;
  return (0);
}
}
__inline static int mthca_wq_overflow(struct mthca_wq *wq , int nreq , struct ib_cq *ib_cq )
{ unsigned int cur ;
  struct mthca_cq *cq ;
  long tmp ;
  {
  cur = wq->head - wq->tail;
  tmp = ldv__builtin_expect(cur + (unsigned int )nreq < (unsigned int )wq->max, 1L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  cq = to_mcq(ib_cq);
  spin_lock(& cq->lock);
  cur = wq->head - wq->tail;
  spin_unlock(& cq->lock);
  return (cur + (unsigned int )nreq >= (unsigned int )wq->max);
}
}
__inline static void set_raddr_seg(struct mthca_raddr_seg *rseg , u64 remote_addr ,
                                   u32 rkey )
{ __u64 tmp ;
  __u32 tmp___0 ;
  {
  tmp = __fswab64(remote_addr);
  rseg->raddr = tmp;
  tmp___0 = __fswab32(rkey);
  rseg->rkey = tmp___0;
  rseg->reserved = 0U;
  return;
}
}
__inline static void set_atomic_seg(struct mthca_atomic_seg *aseg , struct ib_send_wr *wr )
{ __u64 tmp ;
  __u64 tmp___0 ;
  __u64 tmp___1 ;
  {
  if ((unsigned int )wr->opcode == 5U) {
    tmp = __fswab64(wr->wr.atomic.swap);
    aseg->swap_add = tmp;
    tmp___0 = __fswab64(wr->wr.atomic.compare_add);
    aseg->compare = tmp___0;
  } else {
    tmp___1 = __fswab64(wr->wr.atomic.compare_add);
    aseg->swap_add = tmp___1;
    aseg->compare = 0ULL;
  }
  return;
}
}
static void set_tavor_ud_seg(struct mthca_tavor_ud_seg *useg , struct ib_send_wr *wr )
{ struct mthca_ah *tmp ;
  __u32 tmp___0 ;
  struct mthca_ah *tmp___1 ;
  __u64 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  {
  tmp = to_mah(wr->wr.ud.ah);
  tmp___0 = __fswab32(tmp->key);
  useg->lkey = tmp___0;
  tmp___1 = to_mah(wr->wr.ud.ah);
  tmp___2 = __fswab64(tmp___1->avdma);
  useg->av_addr = tmp___2;
  tmp___3 = __fswab32(wr->wr.ud.remote_qpn);
  useg->dqpn = tmp___3;
  tmp___4 = __fswab32(wr->wr.ud.remote_qkey);
  useg->qkey = tmp___4;
  return;
}
}
static void set_arbel_ud_seg(struct mthca_arbel_ud_seg *useg , struct ib_send_wr *wr )
{ size_t __len ;
  void *__ret ;
  struct mthca_ah *tmp ;
  struct mthca_ah *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  __len = 32UL;
  if (__len > 63UL) {
    tmp = to_mah(wr->wr.ud.ah);
    __ret = memcpy((void *)(& useg->av), (void const *)tmp->av, __len);
  } else {
    tmp___0 = to_mah(wr->wr.ud.ah);
    __ret = memcpy((void *)(& useg->av), (void const *)tmp___0->av, __len);
  }
  tmp___1 = __fswab32(wr->wr.ud.remote_qpn);
  useg->dqpn = tmp___1;
  tmp___2 = __fswab32(wr->wr.ud.remote_qkey);
  useg->qkey = tmp___2;
  return;
}
}
int mthca_tavor_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  void *wqe ;
  void *prev_wqe ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int i ;
  int size ;
  int size0 ;
  u32 f0 ;
  int ind ;
  u8 op0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  struct mthca_sqp *tmp___5 ;
  __u32 tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  __u32 tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  size0 = size0;
  f0 = f0;
  op0 = 0U;
  tmp___1 = spinlock_check(& qp->sq.lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ind = (int )qp->sq.next_ind;
  nreq = 0;
  goto ldv_27027;
  ldv_27026:
  tmp___2 = mthca_wq_overflow(& qp->sq, nreq, qp->ibqp.send_cq);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "SQ %06x full (%u head, %u tail, %d max, %d nreq)\n",
            qp->qpn, qp->sq.head, qp->sq.tail, qp->sq.max, nreq);
    err = -12;
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = get_send_wqe(qp, ind);
  prev_wqe = qp->sq.last;
  qp->sq.last = wqe;
  ((struct mthca_next_seg *)wqe)->nda_op = 0U;
  ((struct mthca_next_seg *)wqe)->ee_nds = 0U;
  if ((wr->send_flags & 2) != 0) {
    tmp___3 = 134217728U;
  } else {
    tmp___3 = 0U;
  }
  if ((wr->send_flags & 4) != 0) {
    tmp___4 = 33554432U;
  } else {
    tmp___4 = 0U;
  }
  ((struct mthca_next_seg *)wqe)->flags = (tmp___3 | tmp___4) | 16777216U;
  if ((unsigned int )wr->opcode == 3U || (unsigned int )wr->opcode == 1U) {
    ((struct mthca_next_seg *)wqe)->imm = wr->ex.imm_data;
  } else {
  }
  wqe = wqe + 16UL;
  size = 1;
  switch ((int )qp->transport) {
  case 0: ;
  switch ((unsigned int )wr->opcode) {
  case 5: ;
  case 6:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.atomic.remote_addr, wr->wr.atomic.rkey);
  wqe = wqe + 16UL;
  set_atomic_seg((struct mthca_atomic_seg *)wqe, wr);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 2U);
  goto ldv_27008;
  case 0: ;
  case 1: ;
  case 4:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27008;
  default: ;
  goto ldv_27008;
  }
  ldv_27008: ;
  goto ldv_27013;
  case 1: ;
  switch ((unsigned int )wr->opcode) {
  case 0: ;
  case 1:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27017;
  default: ;
  goto ldv_27017;
  }
  ldv_27017: ;
  goto ldv_27013;
  case 2:
  set_tavor_ud_seg((struct mthca_tavor_ud_seg *)wqe, wr);
  wqe = wqe + 48UL;
  size = (int )((unsigned int )size + 3U);
  goto ldv_27013;
  case 5:
  tmp___5 = to_msqp(qp);
  err = build_mlx_header(dev, tmp___5, ind, wr, (struct mthca_mlx_seg *)wqe + 0xfffffffffffffff0UL,
                         (struct mthca_data_seg *)wqe);
  if (err != 0) {
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27013;
  }
  ldv_27013: ;
  if (wr->num_sge > qp->sq.max_gs) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "too many gathers\n");
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_27022;
  ldv_27021:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  i = i + 1;
  ldv_27022: ;
  if (wr->num_sge > i) {
    goto ldv_27021;
  } else {
    goto ldv_27023;
  }
  ldv_27023: ;
  if ((unsigned int )qp->transport == 5U) {
    ((struct mthca_data_seg *)wqe)->byte_count = 67108992U;
    *((u32 *)wqe + 1UL) = 0U;
    wqe = wqe + 16UL;
    size = (int )((unsigned int )size + 1U);
  } else {
  }
  *(qp->wrid + (unsigned long )(qp->rq.max + ind)) = wr->wr_id;
  if ((unsigned int )wr->opcode > 6U) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "opcode invalid\n");
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  tmp___6 = __fswab32((__u32 )(((ind << qp->sq.wqe_shift) + qp->send_wqe_offset) | (int )mthca_opcode[(unsigned int )wr->opcode]));
  ((struct mthca_next_seg *)prev_wqe)->nda_op = tmp___6;
  __asm__ volatile ("sfence": : : "memory");
  if (nreq != 0) {
    tmp___7 = 0;
  } else {
    tmp___7 = 128;
  }
  if (wr->send_flags & 1) {
    tmp___8 = 64;
  } else {
    tmp___8 = 0;
  }
  tmp___9 = __fswab32((__u32 )((tmp___7 | size) | tmp___8));
  ((struct mthca_next_seg *)prev_wqe)->ee_nds = tmp___9;
  if (nreq == 0) {
    size0 = size;
    op0 = mthca_opcode[(unsigned int )wr->opcode];
    if (wr->send_flags & 1) {
      f0 = 32U;
    } else {
      f0 = 0U;
    }
  } else {
  }
  ind = ind + 1;
  tmp___10 = ldv__builtin_expect(qp->sq.max <= ind, 0L);
  if (tmp___10 != 0L) {
    ind = ind - qp->sq.max;
  } else {
  }
  nreq = nreq + 1;
  wr = wr->next;
  ldv_27027: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_send_wr *)0)) {
    goto ldv_27026;
  } else {
    goto ldv_27028;
  }
  ldv_27028: ;
  out:
  tmp___11 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___11 != 0L) {
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64((((qp->sq.next_ind << qp->sq.wqe_shift) + (unsigned int )qp->send_wqe_offset) | f0) | (unsigned int )op0,
                  (qp->qpn << 8) | (u32 )size0, dev->kar + 16UL, 0);
    __asm__ volatile ("": : : "memory");
  } else {
  }
  qp->sq.next_ind = (unsigned int )ind;
  qp->sq.head = qp->sq.head + (unsigned int )nreq;
  spin_unlock_irqrestore(& qp->sq.lock, flags);
  return (err);
}
}
int mthca_tavor_post_receive(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int i ;
  int size ;
  int size0 ;
  int ind ;
  void *wqe ;
  void *prev_wqe ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  size0 = size0;
  tmp___1 = spinlock_check(& qp->rq.lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ind = (int )qp->rq.next_ind;
  nreq = 0;
  goto ldv_27053;
  ldv_27052:
  tmp___2 = mthca_wq_overflow(& qp->rq, nreq, qp->ibqp.recv_cq);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "RQ %06x full (%u head, %u tail, %d max, %d nreq)\n",
            qp->qpn, qp->rq.head, qp->rq.tail, qp->rq.max, nreq);
    err = -12;
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = get_recv_wqe(qp, ind);
  prev_wqe = qp->rq.last;
  qp->rq.last = wqe;
  ((struct mthca_next_seg *)wqe)->ee_nds = 2147483648U;
  ((struct mthca_next_seg *)wqe)->flags = 0U;
  wqe = wqe + 16UL;
  size = 1;
  tmp___3 = ldv__builtin_expect(wr->num_sge > qp->rq.max_gs, 0L);
  if (tmp___3 != 0L) {
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_27050;
  ldv_27049:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  i = i + 1;
  ldv_27050: ;
  if (wr->num_sge > i) {
    goto ldv_27049;
  } else {
    goto ldv_27051;
  }
  ldv_27051:
  *(qp->wrid + (unsigned long )ind) = wr->wr_id;
  tmp___4 = __fswab32((__u32 )(size | 128));
  ((struct mthca_next_seg *)prev_wqe)->ee_nds = tmp___4;
  if (nreq == 0) {
    size0 = size;
  } else {
  }
  ind = ind + 1;
  tmp___5 = ldv__builtin_expect(qp->rq.max <= ind, 0L);
  if (tmp___5 != 0L) {
    ind = ind - qp->rq.max;
  } else {
  }
  nreq = nreq + 1;
  tmp___6 = ldv__builtin_expect(nreq == 256, 0L);
  if (tmp___6 != 0L) {
    nreq = 0;
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64((qp->rq.next_ind << qp->rq.wqe_shift) | (unsigned int )size0, qp->qpn << 8,
                  dev->kar + 24UL, 0);
    qp->rq.next_ind = (unsigned int )ind;
    qp->rq.head = qp->rq.head + 256U;
  } else {
  }
  wr = wr->next;
  ldv_27053: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_27052;
  } else {
    goto ldv_27054;
  }
  ldv_27054: ;
  out:
  tmp___7 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___7 != 0L) {
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64((qp->rq.next_ind << qp->rq.wqe_shift) | (unsigned int )size0, (qp->qpn << 8) | (u32 )nreq,
                  dev->kar + 24UL, 0);
  } else {
  }
  qp->rq.next_ind = (unsigned int )ind;
  qp->rq.head = qp->rq.head + (unsigned int )nreq;
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& qp->rq.lock, flags);
  return (err);
}
}
int mthca_arbel_post_send(struct ib_qp *ibqp , struct ib_send_wr *wr , struct ib_send_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  u32 dbhi ;
  void *wqe ;
  void *prev_wqe ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int i ;
  int size ;
  int size0 ;
  u32 f0 ;
  int ind ;
  u8 op0 ;
  raw_spinlock_t *tmp___1 ;
  __u32 tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  struct mthca_sqp *tmp___8 ;
  __u32 tmp___9 ;
  int tmp___10 ;
  __u32 tmp___11 ;
  long tmp___12 ;
  __u32 tmp___13 ;
  long tmp___14 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  size0 = size0;
  f0 = f0;
  op0 = 0U;
  tmp___1 = spinlock_check(& qp->sq.lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ind = (int )(qp->sq.head & (unsigned int )(qp->sq.max + -1));
  nreq = 0;
  goto ldv_27100;
  ldv_27099:
  tmp___3 = ldv__builtin_expect(nreq == 255, 0L);
  if (tmp___3 != 0L) {
    nreq = 0;
    dbhi = ((((qp->sq.head & 65535U) << 8) | f0) | (unsigned int )op0) | 4278190080U;
    qp->sq.head = qp->sq.head + 255U;
    __asm__ volatile ("sfence": : : "memory");
    tmp___2 = __fswab32(qp->sq.head & 65535U);
    *(qp->sq.db) = tmp___2;
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64(dbhi, (qp->qpn << 8) | (u32 )size0, dev->kar + 16UL, 0);
  } else {
  }
  tmp___4 = mthca_wq_overflow(& qp->sq, nreq, qp->ibqp.send_cq);
  if (tmp___4 != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "SQ %06x full (%u head, %u tail, %d max, %d nreq)\n",
            qp->qpn, qp->sq.head, qp->sq.tail, qp->sq.max, nreq);
    err = -12;
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = get_send_wqe(qp, ind);
  prev_wqe = qp->sq.last;
  qp->sq.last = wqe;
  if ((wr->send_flags & 2) != 0) {
    tmp___5 = 134217728U;
  } else {
    tmp___5 = 0U;
  }
  if ((wr->send_flags & 4) != 0) {
    tmp___6 = 33554432U;
  } else {
    tmp___6 = 0U;
  }
  if ((wr->send_flags & 16) != 0) {
    tmp___7 = 805306368U;
  } else {
    tmp___7 = 0U;
  }
  ((struct mthca_next_seg *)wqe)->flags = ((tmp___5 | tmp___6) | tmp___7) | 16777216U;
  if ((unsigned int )wr->opcode == 3U || (unsigned int )wr->opcode == 1U) {
    ((struct mthca_next_seg *)wqe)->imm = wr->ex.imm_data;
  } else {
  }
  wqe = wqe + 16UL;
  size = 1;
  switch ((int )qp->transport) {
  case 0: ;
  switch ((unsigned int )wr->opcode) {
  case 5: ;
  case 6:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.atomic.remote_addr, wr->wr.atomic.rkey);
  wqe = wqe + 16UL;
  set_atomic_seg((struct mthca_atomic_seg *)wqe, wr);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 2U);
  goto ldv_27081;
  case 4: ;
  case 0: ;
  case 1:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27081;
  default: ;
  goto ldv_27081;
  }
  ldv_27081: ;
  goto ldv_27086;
  case 1: ;
  switch ((unsigned int )wr->opcode) {
  case 0: ;
  case 1:
  set_raddr_seg((struct mthca_raddr_seg *)wqe, wr->wr.rdma.remote_addr, wr->wr.rdma.rkey);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27090;
  default: ;
  goto ldv_27090;
  }
  ldv_27090: ;
  goto ldv_27086;
  case 2:
  set_arbel_ud_seg((struct mthca_arbel_ud_seg *)wqe, wr);
  wqe = wqe + 48UL;
  size = (int )((unsigned int )size + 3U);
  goto ldv_27086;
  case 5:
  tmp___8 = to_msqp(qp);
  err = build_mlx_header(dev, tmp___8, ind, wr, (struct mthca_mlx_seg *)wqe + 0xfffffffffffffff0UL,
                         (struct mthca_data_seg *)wqe);
  if (err != 0) {
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  goto ldv_27086;
  }
  ldv_27086: ;
  if (wr->num_sge > qp->sq.max_gs) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "too many gathers\n");
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_27095;
  ldv_27094:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  size = (int )((unsigned int )size + 1U);
  i = i + 1;
  ldv_27095: ;
  if (wr->num_sge > i) {
    goto ldv_27094;
  } else {
    goto ldv_27096;
  }
  ldv_27096: ;
  if ((unsigned int )qp->transport == 5U) {
    ((struct mthca_data_seg *)wqe)->byte_count = 67108992U;
    *((u32 *)wqe + 1UL) = 0U;
    wqe = wqe + 16UL;
    size = (int )((unsigned int )size + 1U);
  } else {
  }
  *(qp->wrid + (unsigned long )(qp->rq.max + ind)) = wr->wr_id;
  if ((unsigned int )wr->opcode > 6U) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "opcode invalid\n");
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  tmp___9 = __fswab32((__u32 )(((ind << qp->sq.wqe_shift) + qp->send_wqe_offset) | (int )mthca_opcode[(unsigned int )wr->opcode]));
  ((struct mthca_next_seg *)prev_wqe)->nda_op = tmp___9;
  __asm__ volatile ("sfence": : : "memory");
  if (wr->send_flags & 1) {
    tmp___10 = 64;
  } else {
    tmp___10 = 0;
  }
  tmp___11 = __fswab32((__u32 )((size | 128) | tmp___10));
  ((struct mthca_next_seg *)prev_wqe)->ee_nds = tmp___11;
  if (nreq == 0) {
    size0 = size;
    op0 = mthca_opcode[(unsigned int )wr->opcode];
    if (wr->send_flags & 1) {
      f0 = 32U;
    } else {
      f0 = 0U;
    }
  } else {
  }
  ind = ind + 1;
  tmp___12 = ldv__builtin_expect(qp->sq.max <= ind, 0L);
  if (tmp___12 != 0L) {
    ind = ind - qp->sq.max;
  } else {
  }
  nreq = nreq + 1;
  wr = wr->next;
  ldv_27100: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_send_wr *)0)) {
    goto ldv_27099;
  } else {
    goto ldv_27101;
  }
  ldv_27101: ;
  out:
  tmp___14 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___14 != 0L) {
    dbhi = (((unsigned int )(nreq << 24) | ((qp->sq.head & 65535U) << 8)) | f0) | (unsigned int )op0;
    qp->sq.head = qp->sq.head + (unsigned int )nreq;
    __asm__ volatile ("sfence": : : "memory");
    tmp___13 = __fswab32(qp->sq.head & 65535U);
    *(qp->sq.db) = tmp___13;
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64(dbhi, (qp->qpn << 8) | (u32 )size0, dev->kar + 16UL, 0);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& qp->sq.lock, flags);
  return (err);
}
}
int mthca_arbel_post_receive(struct ib_qp *ibqp , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_qp *qp ;
  struct mthca_qp *tmp___0 ;
  unsigned long flags ;
  int err ;
  int nreq ;
  int ind ;
  int i ;
  void *wqe ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  __u32 tmp___5 ;
  long tmp___6 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  tmp___0 = to_mqp(ibqp);
  qp = tmp___0;
  err = 0;
  tmp___1 = spinlock_check(& qp->rq.lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ind = (int )(qp->rq.head & (unsigned int )(qp->rq.max + -1));
  nreq = 0;
  goto ldv_27123;
  ldv_27122:
  tmp___2 = mthca_wq_overflow(& qp->rq, nreq, qp->ibqp.recv_cq);
  if (tmp___2 != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "RQ %06x full (%u head, %u tail, %d max, %d nreq)\n",
            qp->qpn, qp->rq.head, qp->rq.tail, qp->rq.max, nreq);
    err = -12;
    *bad_wr = wr;
    goto out;
  } else {
  }
  wqe = get_recv_wqe(qp, ind);
  ((struct mthca_next_seg *)wqe)->flags = 0U;
  wqe = wqe + 16UL;
  tmp___3 = ldv__builtin_expect(wr->num_sge > qp->rq.max_gs, 0L);
  if (tmp___3 != 0L) {
    err = -22;
    *bad_wr = wr;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_27120;
  ldv_27119:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  i = i + 1;
  ldv_27120: ;
  if (wr->num_sge > i) {
    goto ldv_27119;
  } else {
    goto ldv_27121;
  }
  ldv_27121: ;
  if (qp->rq.max_gs > i) {
    mthca_set_data_seg_inval((struct mthca_data_seg *)wqe);
  } else {
  }
  *(qp->wrid + (unsigned long )ind) = wr->wr_id;
  ind = ind + 1;
  tmp___4 = ldv__builtin_expect(qp->rq.max <= ind, 0L);
  if (tmp___4 != 0L) {
    ind = ind - qp->rq.max;
  } else {
  }
  nreq = nreq + 1;
  wr = wr->next;
  ldv_27123: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_27122;
  } else {
    goto ldv_27124;
  }
  ldv_27124: ;
  out:
  tmp___6 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___6 != 0L) {
    qp->rq.head = qp->rq.head + (unsigned int )nreq;
    __asm__ volatile ("sfence": : : "memory");
    tmp___5 = __fswab32(qp->rq.head & 65535U);
    *(qp->rq.db) = tmp___5;
  } else {
  }
  spin_unlock_irqrestore(& qp->rq.lock, flags);
  return (err);
}
}
void mthca_free_err_wqe(struct mthca_dev *dev , struct mthca_qp *qp , int is_send ,
                        int index , int *dbd , __be32 *new_wqe )
{ struct mthca_next_seg *next ;
  void *tmp ;
  void *tmp___0 ;
  {
  if ((unsigned long )qp->ibqp.srq != (unsigned long )((struct ib_srq *)0) && is_send == 0) {
    *new_wqe = 0U;
    return;
  } else {
  }
  if (is_send != 0) {
    tmp = get_send_wqe(qp, index);
    next = (struct mthca_next_seg *)tmp;
  } else {
    tmp___0 = get_recv_wqe(qp, index);
    next = (struct mthca_next_seg *)tmp___0;
  }
  *dbd = (int )next->ee_nds < 0;
  if ((next->ee_nds & 1056964608U) != 0U) {
    *new_wqe = (next->nda_op & 3238002687U) | (next->ee_nds & 1056964608U);
  } else {
    *new_wqe = 0U;
  }
  return;
}
}
int mthca_init_qp_table(struct mthca_dev *dev )
{ int err ;
  int i ;
  struct lock_class_key __key ;
  {
  spinlock_check(& dev->qp_table.lock);
  __raw_spin_lock_init(& dev->qp_table.lock.ldv_5961.rlock, "&(&dev->qp_table.lock)->rlock",
                       & __key);
  dev->qp_table.sqp_start = (dev->limits.reserved_qps + 1) & -2;
  err = mthca_alloc_init(& dev->qp_table.alloc, (u32 )dev->limits.num_qps, 16777215U,
                         (u32 )(dev->qp_table.sqp_start + 4));
  if (err != 0) {
    return (err);
  } else {
  }
  err = mthca_array_init(& dev->qp_table.qp, dev->limits.num_qps);
  if (err != 0) {
    mthca_alloc_cleanup(& dev->qp_table.alloc);
    return (err);
  } else {
  }
  i = 0;
  goto ldv_27142;
  ldv_27141:
  err = mthca_CONF_SPECIAL_QP(dev, i != 0, (u32 )(dev->qp_table.sqp_start + i * 2));
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "CONF_SPECIAL_QP returned %d, aborting.\n",
             err);
    goto err_out;
  } else {
  }
  i = i + 1;
  ldv_27142: ;
  if (i <= 1) {
    goto ldv_27141;
  } else {
    goto ldv_27143;
  }
  ldv_27143: ;
  return (0);
  err_out:
  i = 0;
  goto ldv_27145;
  ldv_27144:
  mthca_CONF_SPECIAL_QP(dev, i, 0U);
  i = i + 1;
  ldv_27145: ;
  if (i <= 1) {
    goto ldv_27144;
  } else {
    goto ldv_27146;
  }
  ldv_27146:
  mthca_array_cleanup(& dev->qp_table.qp, dev->limits.num_qps);
  mthca_alloc_cleanup(& dev->qp_table.alloc);
  return (err);
}
}
void mthca_cleanup_qp_table(struct mthca_dev *dev )
{ int i ;
  {
  i = 0;
  goto ldv_27152;
  ldv_27151:
  mthca_CONF_SPECIAL_QP(dev, i, 0U);
  i = i + 1;
  ldv_27152: ;
  if (i <= 1) {
    goto ldv_27151;
  } else {
    goto ldv_27153;
  }
  ldv_27153:
  mthca_array_cleanup(& dev->qp_table.qp, dev->limits.num_qps);
  mthca_alloc_cleanup(& dev->qp_table.alloc);
  return;
}
}
void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_117(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_118(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_qp(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_qp(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_qp(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_qp(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
int ldv_mutex_trylock_138(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_135(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_137(struct mutex *ldv_func_arg1 ) ;
extern int ib_rate_to_mult(enum ib_rate ) ;
extern enum ib_rate mult_to_ib_rate(int ) ;
extern int ib_get_cached_gid(struct ib_device * , u8 , int , union ib_gid * ) ;
int mthca_create_ah(struct mthca_dev *dev , struct mthca_pd *pd , struct ib_ah_attr *ah_attr ,
                    struct mthca_ah *ah ) ;
int mthca_destroy_ah(struct mthca_dev *dev , struct mthca_ah *ah ) ;
int mthca_ah_query(struct ib_ah *ibah , struct ib_ah_attr *attr ) ;
static enum ib_rate memfree_rate_to_ib(u8 mthca_rate , u8 port_rate )
{ enum ib_rate tmp ;
  enum ib_rate tmp___0 ;
  enum ib_rate tmp___1 ;
  enum ib_rate tmp___2 ;
  {
  switch ((int )mthca_rate) {
  case 2:
  tmp = mult_to_ib_rate((int )port_rate >> 3);
  return (tmp);
  case 1:
  tmp___0 = mult_to_ib_rate((int )port_rate >> 2);
  return (tmp___0);
  case 3:
  tmp___1 = mult_to_ib_rate((int )port_rate >> 1);
  return (tmp___1);
  case 0: ;
  default:
  tmp___2 = mult_to_ib_rate((int )port_rate);
  return (tmp___2);
  }
}
}
static enum ib_rate tavor_rate_to_ib(u8 mthca_rate , u8 port_rate )
{ enum ib_rate tmp ;
  {
  switch ((int )mthca_rate) {
  case 1: ;
  return (2);
  case 3: ;
  return (5);
  case 2: ;
  return (3);
  default:
  tmp = mult_to_ib_rate((int )port_rate);
  return (tmp);
  }
}
}
enum ib_rate mthca_rate_to_ib(struct mthca_dev *dev , u8 mthca_rate , u8 port )
{ enum ib_rate tmp ;
  enum ib_rate tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    if ((unsigned int )dev->limits.stat_rate_support == 3U && (unsigned int )mthca_rate != 0U) {
      return (2);
    } else {
    }
    tmp = memfree_rate_to_ib((int )mthca_rate, (int )dev->rate[(int )port + -1]);
    return (tmp);
  } else {
    tmp___0 = tavor_rate_to_ib((int )mthca_rate, (int )dev->rate[(int )port + -1]);
    return (tmp___0);
  }
}
}
static u8 ib_rate_to_memfree(u8 req_rate , u8 cur_rate )
{
  {
  if ((int )cur_rate <= (int )req_rate) {
    return (0U);
  } else {
  }
  switch (((int )cur_rate + -1) / (int )req_rate) {
  case 0: ;
  return (0U);
  case 1: ;
  return (3U);
  case 2: ;
  case 3: ;
  return (1U);
  default: ;
  return (2U);
  }
}
}
static u8 ib_rate_to_tavor(u8 static_rate )
{
  {
  switch ((int )static_rate) {
  case 2: ;
  return (1U);
  case 5: ;
  return (3U);
  case 3: ;
  return (2U);
  default: ;
  return (0U);
  }
}
}
u8 mthca_get_rate(struct mthca_dev *dev , int static_rate , u8 port )
{ u8 rate ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (static_rate == 0) {
    return (0U);
  } else {
    tmp = ib_rate_to_mult((enum ib_rate )static_rate);
    if (tmp >= (int )dev->rate[(int )port + -1]) {
      return (0U);
    } else {
    }
  }
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    tmp___0 = ib_rate_to_mult((enum ib_rate )static_rate);
    rate = ib_rate_to_memfree((int )((u8 )tmp___0), (int )dev->rate[(int )port + -1]);
  } else {
    rate = ib_rate_to_tavor((int )((u8 )static_rate));
  }
  if ((((int )dev->limits.stat_rate_support >> (int )rate) & 1) == 0) {
    rate = 1U;
  } else {
  }
  return (rate);
}
}
int mthca_create_ah(struct mthca_dev *dev , struct mthca_pd *pd , struct ib_ah_attr *ah_attr ,
                    struct mthca_ah *ah )
{ u32 index ;
  struct mthca_av *av ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  __u32 tmp___4 ;
  __u16 tmp___5 ;
  u8 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  size_t __len ;
  void *__ret ;
  int j ;
  __u32 tmp___9 ;
  {
  index = 4294967295U;
  av = 0;
  ah->type = 1;
  tmp___2 = mthca_is_memfree(dev);
  if (tmp___2 != 0) {
    tmp = kmalloc(32UL, 32U);
    ah->av = (struct mthca_av *)tmp;
    if ((unsigned long )ah->av == (unsigned long )((struct mthca_av *)0)) {
      return (-12);
    } else {
    }
    ah->type = 2;
    av = ah->av;
  } else {
    tmp___1 = atomic_read((atomic_t const *)(& pd->sqp_count));
    if (tmp___1 == 0 && (dev->mthca_flags & 2UL) == 0UL) {
      index = mthca_alloc(& dev->av_table.alloc);
      if (index == 4294967295U) {
        goto on_hca_fail;
      } else {
      }
      tmp___0 = kmalloc(32UL, 32U);
      av = (struct mthca_av *)tmp___0;
      if ((unsigned long )av == (unsigned long )((struct mthca_av *)0)) {
        goto on_hca_fail;
      } else {
      }
      ah->type = 0;
      ah->avdma = dev->av_table.ddr_av_base + (u64 )(index * 32U);
    } else {
    }
  }
  on_hca_fail: ;
  if ((unsigned int )ah->type == 1U) {
    tmp___3 = dma_pool_alloc(dev->av_table.pool, 32U, & ah->avdma);
    ah->av = (struct mthca_av *)tmp___3;
    if ((unsigned long )ah->av == (unsigned long )((struct mthca_av *)0)) {
      return (-12);
    } else {
    }
    av = ah->av;
  } else {
  }
  ah->key = pd->ntmr.ibmr.lkey;
  memset((void *)av, 0, 32UL);
  tmp___4 = __fswab32(pd->pd_num | (u32 )((int )ah_attr->port_num << 24));
  av->port_pd = tmp___4;
  av->g_slid = ah_attr->src_path_bits;
  tmp___5 = __fswab16((int )ah_attr->dlid);
  av->dlid = tmp___5;
  tmp___6 = mthca_get_rate(dev, (int )ah_attr->static_rate, (int )ah_attr->port_num);
  av->msg_sr = (u8 )((unsigned int )tmp___6 | 48U);
  tmp___7 = __fswab32((__u32 )((int )ah_attr->sl << 28));
  av->sl_tclass_flowlabel = tmp___7;
  if ((int )ah_attr->ah_flags & 1) {
    av->g_slid = (u8 )((unsigned int )av->g_slid | 128U);
    av->gid_index = (int )((u8 )((int )ah_attr->port_num + -1)) * (int )((u8 )dev->limits.gid_table_len) + (int )ah_attr->grh.sgid_index;
    av->hop_limit = ah_attr->grh.hop_limit;
    tmp___8 = __fswab32((u32 )((int )ah_attr->grh.traffic_class << 20) | ah_attr->grh.flow_label);
    av->sl_tclass_flowlabel = av->sl_tclass_flowlabel | tmp___8;
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& av->dgid), (void const *)(& ah_attr->grh.dgid.raw),
                       __len);
    } else {
      __ret = memcpy((void *)(& av->dgid), (void const *)(& ah_attr->grh.dgid.raw),
                               __len);
    }
  } else {
    av->dgid[3] = 33554432U;
  }
  if (0) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "Created UDAV at %p/%08lx:\n",
                 av, (unsigned long )ah->avdma);
    } else {
    }
    j = 0;
    goto ldv_21910;
    ldv_21909:
    tmp___9 = __fswab32(*((__be32 *)av + (unsigned long )j));
    printk("\017  [%2x] %08x\n", j * 4, tmp___9);
    j = j + 1;
    ldv_21910: ;
    if (j <= 7) {
      goto ldv_21909;
    } else {
      goto ldv_21911;
    }
    ldv_21911: ;
  } else {
  }
  if ((unsigned int )ah->type == 0U) {
    memcpy_toio((void volatile *)dev->av_table.av_map + (unsigned long )(index * 32U),
                (void const *)av, 32UL);
    kfree((void const *)av);
  } else {
  }
  return (0);
}
}
int mthca_destroy_ah(struct mthca_dev *dev , struct mthca_ah *ah )
{
  {
  switch ((unsigned int )ah->type) {
  case 0:
  mthca_free(& dev->av_table.alloc, (u32 )((ah->avdma - dev->av_table.ddr_av_base) / 32ULL));
  goto ldv_21917;
  case 1:
  dma_pool_free(dev->av_table.pool, (void *)ah->av, ah->avdma);
  goto ldv_21917;
  case 2:
  kfree((void const *)ah->av);
  goto ldv_21917;
  }
  ldv_21917: ;
  return (0);
}
}
int mthca_ah_grh_present(struct mthca_ah *ah )
{
  {
  return ((int )((signed char )(ah->av)->g_slid) < 0);
}
}
int mthca_read_ah(struct mthca_dev *dev , struct mthca_ah *ah , struct ib_ud_header *header )
{ __u32 tmp ;
  __u16 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  size_t __len ;
  void *__ret ;
  int tmp___3 ;
  {
  if ((unsigned int )ah->type == 0U) {
    return (-22);
  } else {
  }
  tmp = __fswab32((ah->av)->sl_tclass_flowlabel);
  header->lrh.service_level = (u8 )(tmp >> 28);
  header->lrh.destination_lid = (ah->av)->dlid;
  tmp___0 = __fswab16((int )(ah->av)->g_slid & 127);
  header->lrh.source_lid = tmp___0;
  tmp___3 = mthca_ah_grh_present(ah);
  if (tmp___3 != 0) {
    tmp___1 = __fswab32((ah->av)->sl_tclass_flowlabel);
    header->grh.traffic_class = (u8 )(tmp___1 >> 20);
    header->grh.flow_label = (ah->av)->sl_tclass_flowlabel & 4294905600U;
    header->grh.hop_limit = (ah->av)->hop_limit;
    tmp___2 = __fswab32((ah->av)->port_pd);
    ib_get_cached_gid(& dev->ib_dev, (int )((u8 )(tmp___2 >> 24)), (int )(ah->av)->gid_index % dev->limits.gid_table_len,
                      & header->grh.source_gid);
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& header->grh.destination_gid.raw), (void const *)(& (ah->av)->dgid),
                       __len);
    } else {
      __ret = memcpy((void *)(& header->grh.destination_gid.raw), (void const *)(& (ah->av)->dgid),
                               __len);
    }
  } else {
  }
  return (0);
}
}
int mthca_ah_query(struct ib_ah *ibah , struct ib_ah_attr *attr )
{ struct mthca_ah *ah ;
  struct mthca_ah *tmp ;
  struct mthca_dev *dev ;
  struct mthca_dev *tmp___0 ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  enum ib_rate tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = to_mah(ibah);
  ah = tmp;
  tmp___0 = to_mdev(ibah->device);
  dev = tmp___0;
  if ((unsigned int )ah->type == 0U) {
    return (-38);
  } else {
  }
  memset((void *)attr, 0, 32UL);
  tmp___1 = __fswab16((int )(ah->av)->dlid);
  attr->dlid = tmp___1;
  tmp___2 = __fswab32((ah->av)->sl_tclass_flowlabel);
  attr->sl = (u8 )(tmp___2 >> 28);
  tmp___3 = __fswab32((ah->av)->port_pd);
  attr->port_num = (u8 )(tmp___3 >> 24);
  tmp___4 = mthca_rate_to_ib(dev, (int )(ah->av)->msg_sr & 7, (int )attr->port_num);
  attr->static_rate = (u8 )tmp___4;
  attr->src_path_bits = (unsigned int )(ah->av)->g_slid & 127U;
  tmp___5 = mthca_ah_grh_present(ah);
  attr->ah_flags = tmp___5 != 0;
  if ((unsigned int )attr->ah_flags != 0U) {
    tmp___6 = __fswab32((ah->av)->sl_tclass_flowlabel);
    attr->grh.traffic_class = (u8 )(tmp___6 >> 20);
    tmp___7 = __fswab32((ah->av)->sl_tclass_flowlabel);
    attr->grh.flow_label = tmp___7 & 1048575U;
    attr->grh.hop_limit = (ah->av)->hop_limit;
    attr->grh.sgid_index = (u8 )((int )((signed char )(ah->av)->gid_index) & (int )((signed char )((unsigned int )((unsigned char )dev->limits.gid_table_len) + 255U)));
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& attr->grh.dgid.raw), (void const *)(& (ah->av)->dgid),
                       __len);
    } else {
      __ret = memcpy((void *)(& attr->grh.dgid.raw), (void const *)(& (ah->av)->dgid),
                               __len);
    }
  } else {
  }
  return (0);
}
}
int mthca_init_av_table(struct mthca_dev *dev )
{ int err ;
  int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    return (0);
  } else {
  }
  err = mthca_alloc_init(& dev->av_table.alloc, (u32 )dev->av_table.num_ddr_avs, (u32 )(dev->av_table.num_ddr_avs + -1),
                         0U);
  if (err != 0) {
    return (err);
  } else {
  }
  dev->av_table.pool = dma_pool_create("mthca_av", & (dev->pdev)->dev, 32UL, 32UL,
                                       0UL);
  if ((unsigned long )dev->av_table.pool == (unsigned long )((struct dma_pool *)0)) {
    goto out_free_alloc;
  } else {
  }
  if ((dev->mthca_flags & 2UL) == 0UL) {
    dev->av_table.av_map = ioremap(((dev->pdev)->resource[4].start + dev->av_table.ddr_av_base) - dev->ddr_start,
                                   (unsigned long )(dev->av_table.num_ddr_avs * 32));
    if ((unsigned long )dev->av_table.av_map == (unsigned long )((void *)0)) {
      goto out_free_pool;
    } else {
    }
  } else {
    dev->av_table.av_map = 0;
  }
  return (0);
  out_free_pool:
  dma_pool_destroy(dev->av_table.pool);
  out_free_alloc:
  mthca_alloc_cleanup(& dev->av_table.alloc);
  return (-12);
}
}
void mthca_cleanup_av_table(struct mthca_dev *dev )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    return;
  } else {
  }
  if ((unsigned long )dev->av_table.av_map != (unsigned long )((void *)0)) {
    iounmap((void volatile *)dev->av_table.av_map);
  } else {
  }
  dma_pool_destroy(dev->av_table.pool);
  mthca_alloc_cleanup(& dev->av_table.alloc);
  return;
}
}
void ldv_mutex_lock_135(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_137(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_138(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int memcmp(void const * , void const * , size_t ) ;
int ldv_mutex_trylock_148(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_146(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_151(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_153(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_145(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_147(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_150(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_152(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_mthca_mcg_table(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_mcg_table(struct mutex *lock ) ;
int mthca_multicast_attach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid ) ;
int mthca_multicast_detach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid ) ;
static u8 const zero_gid[16U] ;
static int find_mgm(struct mthca_dev *dev , u8 *gid , struct mthca_mailbox *mgm_mailbox ,
                    u16 *hash , int *prev , int *index )
{ struct mthca_mailbox *mailbox ;
  struct mthca_mgm *mgm ;
  u8 *mgid ;
  int err ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  {
  mgm = (struct mthca_mgm *)mgm_mailbox->buf;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp = IS_ERR((void const *)mailbox);
  if (tmp != 0L) {
    return (-12);
  } else {
  }
  mgid = (u8 *)mailbox->buf;
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)mgid, (void const *)gid, __len);
  } else {
    __ret = memcpy((void *)mgid, (void const *)gid, __len);
  }
  err = mthca_MGID_HASH(dev, mailbox, hash);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "MGID_HASH failed (%d)\n",
            err);
    goto out;
  } else {
  }
  *index = (int )*hash;
  *prev = -1;
  ldv_22185:
  err = mthca_READ_MGM(dev, *index, mgm_mailbox);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "READ_MGM failed (%d)\n",
            err);
    goto out;
  } else {
  }
  tmp___0 = memcmp((void const *)(& mgm->gid), (void const *)(& zero_gid), 16UL);
  if (tmp___0 == 0) {
    if (*index != (int )*hash) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "Found zero MGID in AMGM.\n");
      err = -22;
    } else {
    }
    goto out;
  } else {
  }
  tmp___1 = memcmp((void const *)(& mgm->gid), (void const *)gid, 16UL);
  if (tmp___1 == 0) {
    goto out;
  } else {
  }
  *prev = *index;
  tmp___2 = __fswab32(mgm->next_gid_index);
  *index = (int )(tmp___2 >> 6);
  if (*index != 0) {
    goto ldv_22185;
  } else {
    goto ldv_22186;
  }
  ldv_22186:
  *index = -1;
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_multicast_attach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_mailbox *mailbox ;
  struct mthca_mgm *mgm ;
  u16 hash ;
  int index ;
  int prev ;
  int link ;
  int i ;
  int err ;
  long tmp___0 ;
  long tmp___1 ;
  size_t __len ;
  void *__ret ;
  u32 tmp___2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  long tmp___7 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  link = 0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___1 = IS_ERR((void const *)mailbox);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)mailbox);
    return ((int )tmp___0);
  } else {
  }
  mgm = (struct mthca_mgm *)mailbox->buf;
  ldv_mutex_lock_150(& dev->mcg_table.mutex);
  err = find_mgm(dev, (u8 *)(& gid->raw), mailbox, & hash, & prev, & index);
  if (err != 0) {
    goto out;
  } else {
  }
  if (index != -1) {
    tmp___3 = memcmp((void const *)(& mgm->gid), (void const *)(& zero_gid), 16UL);
    if (tmp___3 == 0) {
      __len = 16UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)(& mgm->gid), (void const *)(& gid->raw), __len);
      } else {
        __ret = memcpy((void *)(& mgm->gid), (void const *)(& gid->raw),
                                 __len);
      }
    } else {
      link = 1;
      tmp___2 = mthca_alloc(& dev->mcg_table.alloc);
      index = (int )tmp___2;
      if (index == -1) {
        dev_err((struct device const *)(& (dev->pdev)->dev), "No AMGM entries left\n");
        err = -12;
        goto out;
      } else {
      }
      err = mthca_READ_MGM(dev, index, mailbox);
      if (err != 0) {
        dev_err((struct device const *)(& (dev->pdev)->dev), "READ_MGM failed (%d)\n",
                err);
        goto out;
      } else {
      }
      memset((void *)mgm, 0, 256UL);
      __len___0 = 16UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)(& mgm->gid), (void const *)(& gid->raw), __len___0);
      } else {
        __ret___0 = memcpy((void *)(& mgm->gid), (void const *)(& gid->raw),
                                     __len___0);
      }
    }
  } else {
  }
  i = 0;
  goto ldv_22210;
  ldv_22209:
  tmp___5 = __fswab32(ibqp->qp_num | 2147483648U);
  if (mgm->qp[i] == tmp___5) {
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (dev->pdev)->dev), "QP %06x already a member of MGM\n",
                 ibqp->qp_num);
    } else {
    }
    err = 0;
    goto out;
  } else
  if ((mgm->qp[i] & 128U) == 0U) {
    tmp___4 = __fswab32(ibqp->qp_num | 2147483648U);
    mgm->qp[i] = tmp___4;
    goto ldv_22208;
  } else {
  }
  i = i + 1;
  ldv_22210: ;
  if (i <= 55) {
    goto ldv_22209;
  } else {
    goto ldv_22208;
  }
  ldv_22208: ;
  if (i == 56) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "MGM at index %x is full.\n",
            index);
    err = -12;
    goto out;
  } else {
  }
  err = mthca_WRITE_MGM(dev, index, mailbox);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "WRITE_MGM failed %d\n",
            err);
    err = -22;
    goto out;
  } else {
  }
  if (link == 0) {
    goto out;
  } else {
  }
  err = mthca_READ_MGM(dev, prev, mailbox);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "READ_MGM failed %d\n",
            err);
    goto out;
  } else {
  }
  tmp___6 = __fswab32((__u32 )(index << 6));
  mgm->next_gid_index = tmp___6;
  err = mthca_WRITE_MGM(dev, prev, mailbox);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "WRITE_MGM returned %d\n",
            err);
  } else {
  }
  out: ;
  if ((err != 0 && link != 0) && index != -1) {
    tmp___7 = ldv__builtin_expect(dev->limits.num_mgms > index, 0L);
    if (tmp___7 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mcg.c.prepared"),
                           "i" (325), "i" (12UL));
      ldv_22211: ;
      goto ldv_22211;
    } else {
    }
    mthca_free(& dev->mcg_table.alloc, (u32 )index);
  } else {
  }
  ldv_mutex_unlock_151(& dev->mcg_table.mutex);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_multicast_detach(struct ib_qp *ibqp , union ib_gid *gid , u16 lid )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_mailbox *mailbox ;
  struct mthca_mgm *mgm ;
  u16 hash ;
  int prev ;
  int index ;
  int i ;
  int loc ;
  int err ;
  long tmp___0 ;
  long tmp___1 ;
  __u32 tmp___2 ;
  int amgm_index_to_free ;
  __u32 tmp___3 ;
  long tmp___4 ;
  int curr_next_index ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  long tmp___7 ;
  {
  tmp = to_mdev(ibqp->device);
  dev = tmp;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___1 = IS_ERR((void const *)mailbox);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)mailbox);
    return ((int )tmp___0);
  } else {
  }
  mgm = (struct mthca_mgm *)mailbox->buf;
  ldv_mutex_lock_152(& dev->mcg_table.mutex);
  err = find_mgm(dev, (u8 *)(& gid->raw), mailbox, & hash, & prev, & index);
  if (err != 0) {
    goto out;
  } else {
  }
  if (index == -1) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "MGID %pI6 not found\n",
            (u8 *)(& gid->raw));
    err = -22;
    goto out;
  } else {
  }
  loc = -1;
  i = 0;
  goto ldv_22229;
  ldv_22228:
  tmp___2 = __fswab32(ibqp->qp_num | 2147483648U);
  if (mgm->qp[i] == tmp___2) {
    loc = i;
  } else {
  }
  if ((mgm->qp[i] & 128U) == 0U) {
    goto ldv_22227;
  } else {
  }
  i = i + 1;
  ldv_22229: ;
  if (i <= 55) {
    goto ldv_22228;
  } else {
    goto ldv_22227;
  }
  ldv_22227: ;
  if (loc == -1) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "QP %06x not found in MGM\n",
            ibqp->qp_num);
    err = -22;
    goto out;
  } else {
  }
  mgm->qp[loc] = mgm->qp[i + -1];
  mgm->qp[i + -1] = 0U;
  err = mthca_WRITE_MGM(dev, index, mailbox);
  if (err != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "WRITE_MGM returned %d\n",
            err);
    goto out;
  } else {
  }
  if (i != 1) {
    goto out;
  } else {
  }
  if (prev == -1) {
    tmp___3 = __fswab32(mgm->next_gid_index);
    amgm_index_to_free = (int )(tmp___3 >> 6);
    if (amgm_index_to_free != 0) {
      err = mthca_READ_MGM(dev, amgm_index_to_free, mailbox);
      if (err != 0) {
        dev_err((struct device const *)(& (dev->pdev)->dev), "READ_MGM returned %d\n",
                err);
        goto out;
      } else {
      }
    } else {
      memset((void *)(& mgm->gid), 0, 16UL);
    }
    err = mthca_WRITE_MGM(dev, index, mailbox);
    if (err != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "WRITE_MGM returned %d\n",
              err);
      goto out;
    } else {
    }
    if (amgm_index_to_free != 0) {
      tmp___4 = ldv__builtin_expect(dev->limits.num_mgms > amgm_index_to_free, 0L);
      if (tmp___4 != 0L) {
        __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mcg.c.prepared"),
                             "i" (405), "i" (12UL));
        ldv_22231: ;
        goto ldv_22231;
      } else {
      }
      mthca_free(& dev->mcg_table.alloc, (u32 )amgm_index_to_free);
    } else {
    }
  } else {
    tmp___5 = __fswab32(mgm->next_gid_index);
    curr_next_index = (int )(tmp___5 >> 6);
    err = mthca_READ_MGM(dev, prev, mailbox);
    if (err != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "READ_MGM returned %d\n",
              err);
      goto out;
    } else {
    }
    tmp___6 = __fswab32((__u32 )(curr_next_index << 6));
    mgm->next_gid_index = tmp___6;
    err = mthca_WRITE_MGM(dev, prev, mailbox);
    if (err != 0) {
      dev_err((struct device const *)(& (dev->pdev)->dev), "WRITE_MGM returned %d\n",
              err);
      goto out;
    } else {
    }
    tmp___7 = ldv__builtin_expect(dev->limits.num_mgms > index, 0L);
    if (tmp___7 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_mcg.c.prepared"),
                           "i" (424), "i" (12UL));
      ldv_22233: ;
      goto ldv_22233;
    } else {
    }
    mthca_free(& dev->mcg_table.alloc, (u32 )index);
  }
  out:
  ldv_mutex_unlock_153(& dev->mcg_table.mutex);
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
int mthca_init_mcg_table(struct mthca_dev *dev )
{ int err ;
  int table_size ;
  struct lock_class_key __key ;
  {
  table_size = dev->limits.num_mgms + dev->limits.num_amgms;
  err = mthca_alloc_init(& dev->mcg_table.alloc, (u32 )table_size, (u32 )(table_size + -1),
                         (u32 )dev->limits.num_mgms);
  if (err != 0) {
    return (err);
  } else {
  }
  __mutex_init(& dev->mcg_table.mutex, "&dev->mcg_table.mutex", & __key);
  return (0);
}
}
void mthca_cleanup_mcg_table(struct mthca_dev *dev )
{
  {
  mthca_alloc_cleanup(& dev->mcg_table.alloc);
  return;
}
}
void ldv_mutex_lock_145(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_146(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_147(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_148(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_149(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_150(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_mcg_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_151(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_mcg_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_152(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_mcg_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_153(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_mcg_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_166(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_164(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_167(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_169(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_163(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_165(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_168(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cap_mask_mutex_of_mthca_dev(struct mutex *lock ) ;
void ldv_mutex_unlock_cap_mask_mutex_of_mthca_dev(struct mutex *lock ) ;
__inline static int ib_width_enum_to_int(enum ib_port_width width )
{
  {
  switch ((unsigned int )width) {
  case 1: ;
  return (1);
  case 2: ;
  return (4);
  case 4: ;
  return (8);
  case 8: ;
  return (12);
  default: ;
  return (-1);
  }
}
}
extern int ib_query_port(struct ib_device * , u8 , struct ib_port_attr * ) ;
extern struct ib_ah *ib_create_ah(struct ib_pd * , struct ib_ah_attr * ) ;
extern int ib_destroy_ah(struct ib_ah * ) ;
extern struct ib_mad_agent *ib_register_mad_agent(struct ib_device * , u8 , enum ib_qp_type ,
                                                  struct ib_mad_reg_req * , u8 ,
                                                  void (*)(struct ib_mad_agent * ,
                                                           struct ib_mad_send_wc * ) ,
                                                  void (*)(struct ib_mad_agent * ,
                                                           struct ib_mad_recv_wc * ) ,
                                                  void * ) ;
extern int ib_unregister_mad_agent(struct ib_mad_agent * ) ;
extern int ib_post_send_mad(struct ib_mad_send_buf * , struct ib_mad_send_buf ** ) ;
extern struct ib_mad_send_buf *ib_create_send_mad(struct ib_mad_agent * , u32 , u16 ,
                                                  int , int , int , gfp_t ) ;
extern void ib_free_send_mad(struct ib_mad_send_buf * ) ;
int mthca_process_mad(struct ib_device *ibdev , int mad_flags , u8 port_num , struct ib_wc *in_wc ,
                      struct ib_grh *in_grh , struct ib_mad *in_mad , struct ib_mad *out_mad ) ;
static int mthca_update_rate(struct mthca_dev *dev , u8 port_num )
{ struct ib_port_attr *tprops ;
  int ret ;
  void *tmp ;
  int tmp___0 ;
  {
  tprops = 0;
  tmp = kmalloc(48UL, 208U);
  tprops = (struct ib_port_attr *)tmp;
  if ((unsigned long )tprops == (unsigned long )((struct ib_port_attr *)0)) {
    return (-12);
  } else {
  }
  ret = ib_query_port(& dev->ib_dev, (int )port_num, tprops);
  if (ret != 0) {
    printk("\fib_query_port failed (%d) for %s port %d\n", ret, (char *)(& dev->ib_dev.name),
           (int )port_num);
    goto out;
  } else {
  }
  tmp___0 = ib_width_enum_to_int((enum ib_port_width )tprops->active_width);
  dev->rate[(int )port_num + -1] = (int )tprops->active_speed * (int )((u8 )tmp___0);
  out:
  kfree((void const *)tprops);
  return (ret);
}
}
static void update_sm_ah(struct mthca_dev *dev , u8 port_num , u16 lid , u8 sl )
{ struct ib_ah *new_ah ;
  struct ib_ah_attr ah_attr ;
  unsigned long flags ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  if ((unsigned long )dev->send_agent[(int )port_num + -1][0] == (unsigned long )((struct ib_mad_agent *)0)) {
    return;
  } else {
  }
  memset((void *)(& ah_attr), 0, 32UL);
  ah_attr.dlid = lid;
  ah_attr.sl = sl;
  ah_attr.port_num = port_num;
  new_ah = ib_create_ah(((dev->send_agent[(int )port_num + -1][0])->qp)->pd, & ah_attr);
  tmp = IS_ERR((void const *)new_ah);
  if (tmp != 0L) {
    return;
  } else {
  }
  tmp___0 = spinlock_check(& dev->sm_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if ((unsigned long )dev->sm_ah[(int )port_num + -1] != (unsigned long )((struct ib_ah *)0)) {
    ib_destroy_ah(dev->sm_ah[(int )port_num + -1]);
  } else {
  }
  dev->sm_ah[(int )port_num + -1] = new_ah;
  spin_unlock_irqrestore(& dev->sm_lock, flags);
  return;
}
}
static void smp_snoop(struct ib_device *ibdev , u8 port_num , struct ib_mad *mad ,
                      u16 prev_lid )
{ struct ib_event event ;
  struct ib_port_info *pinfo ;
  u16 lid ;
  __u16 tmp ;
  struct mthca_dev *tmp___0 ;
  __u16 tmp___1 ;
  struct mthca_dev *tmp___2 ;
  {
  if (((unsigned int )mad->mad_hdr.mgmt_class == 1U || (unsigned int )mad->mad_hdr.mgmt_class == 129U) && (unsigned int )mad->mad_hdr.method == 2U) {
    if ((unsigned int )mad->mad_hdr.attr_id == 5376U) {
      pinfo = (struct ib_port_info *)(& ((struct ib_smp *)mad)->data);
      tmp = __fswab16((int )pinfo->lid);
      lid = tmp;
      tmp___0 = to_mdev(ibdev);
      mthca_update_rate(tmp___0, (int )port_num);
      tmp___1 = __fswab16((int )pinfo->sm_lid);
      tmp___2 = to_mdev(ibdev);
      update_sm_ah(tmp___2, (int )port_num, (int )tmp___1, (int )pinfo->neighbormtu_mastersmsl & 15);
      event.device = ibdev;
      event.element.port_num = port_num;
      if ((int )((signed char )pinfo->clientrereg_resv_subnetto) < 0) {
        event.event = 17;
        ib_dispatch_event(& event);
      } else {
      }
      if ((int )prev_lid != (int )lid) {
        event.event = 11;
        ib_dispatch_event(& event);
      } else {
      }
    } else {
    }
    if ((unsigned int )mad->mad_hdr.attr_id == 5632U) {
      event.device = ibdev;
      event.event = 12;
      event.element.port_num = port_num;
      ib_dispatch_event(& event);
    } else {
    }
  } else {
  }
  return;
}
}
static void node_desc_override(struct ib_device *dev , struct ib_mad *mad )
{ struct mthca_dev *tmp ;
  size_t __len ;
  void *__ret ;
  struct mthca_dev *tmp___0 ;
  {
  if ((((unsigned int )mad->mad_hdr.mgmt_class == 1U || (unsigned int )mad->mad_hdr.mgmt_class == 129U) && (unsigned int )mad->mad_hdr.method == 129U) && (unsigned int )mad->mad_hdr.attr_id == 4096U) {
    tmp = to_mdev(dev);
    ldv_mutex_lock_168(& tmp->cap_mask_mutex);
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ((struct ib_smp *)mad)->data), (void const *)(& dev->node_desc),
                       __len);
    } else {
      __ret = memcpy((void *)(& ((struct ib_smp *)mad)->data), (void const *)(& dev->node_desc),
                               __len);
    }
    tmp___0 = to_mdev(dev);
    ldv_mutex_unlock_169(& tmp___0->cap_mask_mutex);
  } else {
  }
  return;
}
}
static void forward_trap(struct mthca_dev *dev , u8 port_num , struct ib_mad *mad )
{ int qpn ;
  struct ib_mad_send_buf *send_buf ;
  struct ib_mad_agent *agent ;
  int ret ;
  unsigned long flags ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  size_t __len ;
  void *__ret ;
  struct ib_ah *tmp___1 ;
  {
  qpn = (unsigned int )mad->mad_hdr.mgmt_class != 1U;
  agent = dev->send_agent[(int )port_num + -1][qpn];
  if ((unsigned long )agent != (unsigned long )((struct ib_mad_agent *)0)) {
    send_buf = ib_create_send_mad(agent, (u32 )qpn, 0, 0, 24, 232, 32U);
    tmp = IS_ERR((void const *)send_buf);
    if (tmp != 0L) {
      return;
    } else {
    }
    tmp___0 = spinlock_check(& dev->sm_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    __len = 256UL;
    if (__len > 63UL) {
      __ret = memcpy(send_buf->mad, (void const *)mad, __len);
    } else {
      __ret = memcpy(send_buf->mad, (void const *)mad, __len);
    }
    tmp___1 = dev->sm_ah[(int )port_num + -1];
    send_buf->ah = tmp___1;
    if ((unsigned long )tmp___1 != (unsigned long )((struct ib_ah *)0)) {
      ret = ib_post_send_mad(send_buf, 0);
    } else {
      ret = -22;
    }
    spin_unlock_irqrestore(& dev->sm_lock, flags);
    if (ret != 0) {
      ib_free_send_mad(send_buf);
    } else {
    }
  } else {
  }
  return;
}
}
int mthca_process_mad(struct ib_device *ibdev , int mad_flags , u8 port_num , struct ib_wc *in_wc ,
                      struct ib_grh *in_grh , struct ib_mad *in_mad , struct ib_mad *out_mad )
{ int err ;
  u16 slid ;
  unsigned int tmp ;
  u16 prev_lid ;
  struct ib_port_attr pattr ;
  struct mthca_dev *tmp___0 ;
  int tmp___1 ;
  struct mthca_dev *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  {
  if ((unsigned long )in_wc != (unsigned long )((struct ib_wc *)0)) {
    tmp = in_wc->slid;
  } else {
    tmp = 65535U;
  }
  slid = tmp;
  prev_lid = 0U;
  if ((unsigned int )in_mad->mad_hdr.method == 5U && (unsigned int )slid == 0U) {
    tmp___0 = to_mdev(ibdev);
    forward_trap(tmp___0, (int )port_num, in_mad);
    return (5);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.mgmt_class == 1U || (unsigned int )in_mad->mad_hdr.mgmt_class == 129U) {
    if (((unsigned int )in_mad->mad_hdr.method != 1U && (unsigned int )in_mad->mad_hdr.method != 2U) && (unsigned int )in_mad->mad_hdr.method != 7U) {
      return (1);
    } else {
    }
    if ((unsigned int )in_mad->mad_hdr.attr_id == 8192U || ((int )in_mad->mad_hdr.attr_id & 255) == 255) {
      return (1);
    } else {
    }
  } else
  if (((unsigned int )in_mad->mad_hdr.mgmt_class == 4U || (unsigned int )in_mad->mad_hdr.mgmt_class == 9U) || (unsigned int )in_mad->mad_hdr.mgmt_class == 10U) {
    if ((unsigned int )in_mad->mad_hdr.method != 1U && (unsigned int )in_mad->mad_hdr.method != 2U) {
      return (1);
    } else {
      return (1);
    }
  } else {
  }
  if ((((unsigned int )in_mad->mad_hdr.mgmt_class == 1U || (unsigned int )in_mad->mad_hdr.mgmt_class == 129U) && (unsigned int )in_mad->mad_hdr.method == 2U) && (unsigned int )in_mad->mad_hdr.attr_id == 5376U) {
    tmp___1 = ib_query_port(ibdev, (int )port_num, & pattr);
    if (tmp___1 == 0) {
      prev_lid = pattr.lid;
    } else {
    }
  } else {
  }
  tmp___2 = to_mdev(ibdev);
  err = mthca_MAD_IFC(tmp___2, mad_flags & 1, mad_flags & 2, (int )port_num, in_wc,
                      in_grh, (void *)in_mad, (void *)out_mad);
  if (err == -74) {
    return (1);
  } else
  if (err != 0) {
    tmp___3 = to_mdev(ibdev);
    dev_err((struct device const *)(& (tmp___3->pdev)->dev), "MAD_IFC returned %d\n",
            err);
    return (0);
  } else {
  }
  if ((unsigned int )out_mad->mad_hdr.status == 0U) {
    smp_snoop(ibdev, (int )port_num, in_mad, (int )prev_lid);
    node_desc_override(ibdev, out_mad);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.mgmt_class == 129U) {
    out_mad->mad_hdr.status = (__be16 )((unsigned int )out_mad->mad_hdr.status | 128U);
  } else {
  }
  if ((unsigned int )in_mad->mad_hdr.method == 7U) {
    return (5);
  } else {
  }
  return (3);
}
}
static void send_handler(struct ib_mad_agent *agent , struct ib_mad_send_wc *mad_send_wc )
{
  {
  ib_free_send_mad(mad_send_wc->send_buf);
  return;
}
}
int mthca_create_agents(struct mthca_dev *dev )
{ struct ib_mad_agent *agent ;
  int p ;
  int q ;
  int ret ;
  struct lock_class_key __key ;
  long tmp ;
  long tmp___0 ;
  {
  spinlock_check(& dev->sm_lock);
  __raw_spin_lock_init(& dev->sm_lock.ldv_5961.rlock, "&(&dev->sm_lock)->rlock", & __key);
  p = 0;
  goto ldv_22491;
  ldv_22490:
  q = 0;
  goto ldv_22488;
  ldv_22487:
  agent = ib_register_mad_agent(& dev->ib_dev, (int )((unsigned int )((u8 )p) + 1U),
                                q != 0, 0, 0, & send_handler, 0, 0);
  tmp___0 = IS_ERR((void const *)agent);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)agent);
    ret = (int )tmp;
    goto err;
  } else {
  }
  dev->send_agent[p][q] = agent;
  q = q + 1;
  ldv_22488: ;
  if (q <= 1) {
    goto ldv_22487;
  } else {
    goto ldv_22489;
  }
  ldv_22489:
  p = p + 1;
  ldv_22491: ;
  if (dev->limits.num_ports > p) {
    goto ldv_22490;
  } else {
    goto ldv_22492;
  }
  ldv_22492:
  p = 1;
  goto ldv_22494;
  ldv_22493:
  ret = mthca_update_rate(dev, (int )((u8 )p));
  if (ret != 0) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "Failed to obtain port %d rate. aborting.\n",
            p);
    goto err;
  } else {
  }
  p = p + 1;
  ldv_22494: ;
  if (dev->limits.num_ports >= p) {
    goto ldv_22493;
  } else {
    goto ldv_22495;
  }
  ldv_22495: ;
  return (0);
  err:
  p = 0;
  goto ldv_22500;
  ldv_22499:
  q = 0;
  goto ldv_22497;
  ldv_22496: ;
  if ((unsigned long )dev->send_agent[p][q] != (unsigned long )((struct ib_mad_agent *)0)) {
    ib_unregister_mad_agent(dev->send_agent[p][q]);
  } else {
  }
  q = q + 1;
  ldv_22497: ;
  if (q <= 1) {
    goto ldv_22496;
  } else {
    goto ldv_22498;
  }
  ldv_22498:
  p = p + 1;
  ldv_22500: ;
  if (dev->limits.num_ports > p) {
    goto ldv_22499;
  } else {
    goto ldv_22501;
  }
  ldv_22501: ;
  return (ret);
}
}
void mthca_free_agents(struct mthca_dev *dev )
{ struct ib_mad_agent *agent ;
  int p ;
  int q ;
  {
  p = 0;
  goto ldv_22512;
  ldv_22511:
  q = 0;
  goto ldv_22509;
  ldv_22508:
  agent = dev->send_agent[p][q];
  dev->send_agent[p][q] = 0;
  ib_unregister_mad_agent(agent);
  q = q + 1;
  ldv_22509: ;
  if (q <= 1) {
    goto ldv_22508;
  } else {
    goto ldv_22510;
  }
  ldv_22510: ;
  if ((unsigned long )dev->sm_ah[p] != (unsigned long )((struct ib_ah *)0)) {
    ib_destroy_ah(dev->sm_ah[p]);
  } else {
  }
  p = p + 1;
  ldv_22512: ;
  if (dev->limits.num_ports > p) {
    goto ldv_22511;
  } else {
    goto ldv_22513;
  }
  ldv_22513: ;
  return;
}
}
void ldv_mutex_lock_163(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_164(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_165(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_166(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_167(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_168(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_169(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern struct cpuinfo_x86 boot_cpu_data ;
int ldv_mutex_trylock_180(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_178(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_181(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_183(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_185(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_187(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_189(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_184(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_186(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_177(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_179(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_182(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_188(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_cap_mask_mutex_of_mthca_dev(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_mthca_cq(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_cq(struct mutex *lock ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern int remap_pfn_range(struct vm_area_struct * , unsigned long , unsigned long ,
                           unsigned long , pgprot_t ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{ int sz ;
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
        warn_slowpath_fmt("/work/ldvuser/zakharov_benchmarks/bench/cpa/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/uaccess_64.h",
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
{ unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
extern int ib_register_device(struct ib_device * , int (*)(struct ib_device * , u8 ,
                                                           struct kobject * ) ) ;
extern void ib_unregister_device(struct ib_device * ) ;
__inline static int ib_copy_from_udata(void *dest , struct ib_udata *udata , size_t len )
{ int tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp___1 = copy_from_user(dest, (void const *)udata->inbuf, len);
  if (tmp___1 != 0UL) {
    tmp___0 = -14;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline static int ib_copy_to_udata(struct ib_udata *udata , void *src , size_t len )
{ int tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = copy_to_user(udata->outbuf, (void const *)src, (unsigned int )len);
  if (tmp___1 != 0) {
    tmp___0 = -14;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
extern struct ib_umem *ib_umem_get(struct ib_ucontext * , unsigned long , size_t ,
                                   int , int ) ;
extern void ib_umem_release(struct ib_umem * ) ;
__inline static struct mthca_mr *to_mmr(struct ib_mr *ibmr )
{ struct ib_mr const *__mptr ;
  {
  __mptr = (struct ib_mr const *)ibmr;
  return ((struct mthca_mr *)__mptr);
}
}
void mthca_start_catas_poll(struct mthca_dev *dev ) ;
void mthca_stop_catas_poll(struct mthca_dev *dev ) ;
int mthca_alloc_srq(struct mthca_dev *dev , struct mthca_pd *pd , struct ib_srq_attr *attr ,
                    struct mthca_srq *srq ) ;
void mthca_free_srq(struct mthca_dev *dev , struct mthca_srq *srq ) ;
int mthca_modify_srq(struct ib_srq *ibsrq , struct ib_srq_attr *attr , enum ib_srq_attr_mask attr_mask ,
                     struct ib_udata *udata ) ;
int mthca_query_srq(struct ib_srq *ibsrq , struct ib_srq_attr *srq_attr ) ;
int mthca_tavor_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
int mthca_arbel_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr ) ;
int mthca_map_user_db(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab ,
                      int index , u64 uaddr ) ;
void mthca_unmap_user_db(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab ,
                         int index ) ;
struct mthca_user_db_table *mthca_init_user_db_tab(struct mthca_dev *dev ) ;
void mthca_cleanup_user_db_tab(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab ) ;
static void init_query_mad(struct ib_smp *mad )
{
  {
  mad->base_version = 1U;
  mad->mgmt_class = 1U;
  mad->class_version = 1U;
  mad->method = 1U;
  return;
}
}
static int mthca_query_device(struct ib_device *ibdev , struct ib_device_attr *props )
{ struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  struct mthca_dev *mdev ;
  struct mthca_dev *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  __u16 tmp___3 ;
  size_t __len ;
  void *__ret ;
  int tmp___4 ;
  {
  in_mad = 0;
  out_mad = 0;
  err = -12;
  tmp = to_mdev(ibdev);
  mdev = tmp;
  tmp___0 = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp___0;
  tmp___1 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___1;
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  memset((void *)props, 0, 176UL);
  props->fw_ver = mdev->fw_ver;
  init_query_mad(in_mad);
  in_mad->attr_id = 4352U;
  err = mthca_MAD_IFC(mdev, 1, 1, 1, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  props->device_cap_flags = (int )mdev->device_cap_flags;
  tmp___2 = __be32_to_cpup((__be32 const *)(& out_mad->data) + 36U);
  props->vendor_id = tmp___2 & 16777215U;
  tmp___3 = __be16_to_cpup((__be16 const *)(& out_mad->data) + 30U);
  props->vendor_part_id = (u32 )tmp___3;
  props->hw_ver = __be32_to_cpup((__be32 const *)(& out_mad->data) + 32U);
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& props->sys_image_guid), (void const *)(& out_mad->data) + 4U,
                     __len);
  } else {
    __ret = memcpy((void *)(& props->sys_image_guid), (void const *)(& out_mad->data) + 4U,
                             __len);
  }
  props->max_mr_size = 0xffffffffffffffffULL;
  props->page_size_cap = (u64 )mdev->limits.page_size_cap;
  props->max_qp = mdev->limits.num_qps - mdev->limits.reserved_qps;
  props->max_qp_wr = mdev->limits.max_wqes;
  props->max_sge = mdev->limits.max_sg;
  props->max_cq = mdev->limits.num_cqs - mdev->limits.reserved_cqs;
  props->max_cqe = mdev->limits.max_cqes;
  props->max_mr = mdev->limits.num_mpts - mdev->limits.reserved_mrws;
  props->max_pd = mdev->limits.num_pds - mdev->limits.reserved_pds;
  props->max_qp_rd_atom = 1 << mdev->qp_table.rdb_shift;
  props->max_qp_init_rd_atom = mdev->limits.max_qp_init_rdma;
  props->max_res_rd_atom = props->max_qp_rd_atom * props->max_qp;
  props->max_srq = mdev->limits.num_srqs - mdev->limits.reserved_srqs;
  props->max_srq_wr = mdev->limits.max_srq_wqes;
  props->max_srq_sge = mdev->limits.max_srq_sge;
  props->local_ca_ack_delay = (u8 )mdev->limits.local_ca_ack_delay;
  props->atomic_cap = (mdev->limits.flags & 262144U) != 0U;
  props->max_pkeys = (u16 )mdev->limits.pkey_table_len;
  props->max_mcast_grp = mdev->limits.num_mgms + mdev->limits.num_amgms;
  props->max_mcast_qp_attach = 56;
  props->max_total_mcast_qp_attach = props->max_mcast_qp_attach * props->max_mcast_grp;
  if ((mdev->mthca_flags & 256UL) != 0UL) {
    props->max_map_per_fmr = 255;
  } else {
    tmp___4 = __ilog2_u32((u32 )mdev->limits.num_mpts);
    props->max_map_per_fmr = (1 << (32 - tmp___4)) + -1;
  }
  err = 0;
  out:
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  return (err);
}
}
static int mthca_query_port(struct ib_device *ibdev , u8 port , struct ib_port_attr *props )
{ struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct mthca_dev *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  struct mthca_dev *tmp___4 ;
  __u16 tmp___5 ;
  __u16 tmp___6 ;
  {
  in_mad = 0;
  out_mad = 0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  memset((void *)props, 0, 48UL);
  init_query_mad(in_mad);
  in_mad->attr_id = 5376U;
  tmp___1 = __fswab32((__u32 )port);
  in_mad->attr_mod = tmp___1;
  tmp___2 = to_mdev(ibdev);
  err = mthca_MAD_IFC(tmp___2, 1, 1, (int )port, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  props->lid = __be16_to_cpup((__be16 const *)(& out_mad->data) + 16U);
  props->lmc = (unsigned int )out_mad->data[34] & 7U;
  props->sm_lid = __be16_to_cpup((__be16 const *)(& out_mad->data) + 18U);
  props->sm_sl = (unsigned int )out_mad->data[36] & 15U;
  props->state = (enum ib_port_state )((int )out_mad->data[32] & 15);
  props->phys_state = (u8 )((int )out_mad->data[33] >> 4);
  props->port_cap_flags = __be32_to_cpup((__be32 const *)(& out_mad->data) + 20U);
  tmp___3 = to_mdev(ibdev);
  props->gid_tbl_len = tmp___3->limits.gid_table_len;
  props->max_msg_sz = 2147483648U;
  tmp___4 = to_mdev(ibdev);
  props->pkey_tbl_len = (u16 )tmp___4->limits.pkey_table_len;
  tmp___5 = __be16_to_cpup((__be16 const *)(& out_mad->data) + 46U);
  props->bad_pkey_cntr = (u32 )tmp___5;
  tmp___6 = __be16_to_cpup((__be16 const *)(& out_mad->data) + 48U);
  props->qkey_viol_cntr = (u32 )tmp___6;
  props->active_width = (unsigned int )out_mad->data[31] & 15U;
  props->active_speed = (u8 )((int )out_mad->data[35] >> 4);
  props->max_mtu = (enum ib_mtu )((int )out_mad->data[41] & 15);
  props->active_mtu = (enum ib_mtu )((int )out_mad->data[36] >> 4);
  props->subnet_timeout = (unsigned int )out_mad->data[51] & 31U;
  props->max_vl_num = (u8 )((int )out_mad->data[37] >> 4);
  props->init_type_reply = (u8 )((int )out_mad->data[41] >> 4);
  out:
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  return (err);
}
}
static int mthca_modify_device(struct ib_device *ibdev , int mask , struct ib_device_modify *props )
{ struct mthca_dev *tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  struct mthca_dev *tmp___1 ;
  {
  if ((mask & -3) != 0) {
    return (-95);
  } else {
  }
  if ((mask & 2) != 0) {
    tmp = to_mdev(ibdev);
    tmp___0 = ldv_mutex_lock_interruptible_184(& tmp->cap_mask_mutex);
    if (tmp___0 != 0) {
      return (-512);
    } else {
    }
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ibdev->node_desc), (void const *)(& props->node_desc),
                       __len);
    } else {
      __ret = memcpy((void *)(& ibdev->node_desc), (void const *)(& props->node_desc),
                               __len);
    }
    tmp___1 = to_mdev(ibdev);
    ldv_mutex_unlock_185(& tmp___1->cap_mask_mutex);
  } else {
  }
  return (0);
}
}
static int mthca_modify_port(struct ib_device *ibdev , u8 port , int port_modify_mask ,
                             struct ib_port_modify *props )
{ struct mthca_set_ib_param set_ib ;
  struct ib_port_attr attr ;
  int err ;
  struct mthca_dev *tmp ;
  int tmp___0 ;
  struct mthca_dev *tmp___1 ;
  struct mthca_dev *tmp___2 ;
  {
  tmp = to_mdev(ibdev);
  tmp___0 = ldv_mutex_lock_interruptible_186(& tmp->cap_mask_mutex);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  err = mthca_query_port(ibdev, (int )port, & attr);
  if (err != 0) {
    goto out;
  } else {
  }
  set_ib.set_si_guid = 0;
  set_ib.reset_qkey_viol = (port_modify_mask & 8) != 0;
  set_ib.cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) & ~ props->clr_port_cap_mask;
  tmp___1 = to_mdev(ibdev);
  err = mthca_SET_IB(tmp___1, & set_ib, (int )port);
  if (err != 0) {
    goto out;
  } else {
  }
  out:
  tmp___2 = to_mdev(ibdev);
  ldv_mutex_unlock_187(& tmp___2->cap_mask_mutex);
  return (err);
}
}
static int mthca_query_pkey(struct ib_device *ibdev , u8 port , u16 index , u16 *pkey )
{ struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct mthca_dev *tmp___2 ;
  __u16 tmp___3 ;
  {
  in_mad = 0;
  out_mad = 0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  init_query_mad(in_mad);
  in_mad->attr_id = 5632U;
  tmp___1 = __fswab32((unsigned int )index / 32U);
  in_mad->attr_mod = tmp___1;
  tmp___2 = to_mdev(ibdev);
  err = mthca_MAD_IFC(tmp___2, 1, 1, (int )port, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___3 = __fswab16((int )*((__be16 *)(& out_mad->data) + ((unsigned long )index & 31UL)));
  *pkey = tmp___3;
  out:
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  return (err);
}
}
static int mthca_query_gid(struct ib_device *ibdev , u8 port , int index , union ib_gid *gid )
{ struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  struct mthca_dev *tmp___2 ;
  size_t __len ;
  void *__ret ;
  __u32 tmp___3 ;
  struct mthca_dev *tmp___4 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  in_mad = 0;
  out_mad = 0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  init_query_mad(in_mad);
  in_mad->attr_id = 5376U;
  tmp___1 = __fswab32((__u32 )port);
  in_mad->attr_mod = tmp___1;
  tmp___2 = to_mdev(ibdev);
  err = mthca_MAD_IFC(tmp___2, 1, 1, (int )port, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& gid->raw), (void const *)(& out_mad->data) + 8U,
                     __len);
  } else {
    __ret = memcpy((void *)(& gid->raw), (void const *)(& out_mad->data) + 8U,
                             __len);
  }
  init_query_mad(in_mad);
  in_mad->attr_id = 5120U;
  tmp___3 = __fswab32((__u32 )(index / 8));
  in_mad->attr_mod = tmp___3;
  tmp___4 = to_mdev(ibdev);
  err = mthca_MAD_IFC(tmp___4, 1, 1, (int )port, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  __len___0 = 8UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& gid->raw) + 8U, (void const *)(& out_mad->data) + (unsigned long )((index % 8) * 8),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& gid->raw) + 8U, (void const *)(& out_mad->data) + (unsigned long )((index % 8) * 8),
                                 __len___0);
  }
  out:
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  return (err);
}
}
static struct ib_ucontext *mthca_alloc_ucontext(struct ib_device *ibdev , struct ib_udata *udata )
{ struct mthca_alloc_ucontext_resp uresp ;
  struct mthca_ucontext *context ;
  int err ;
  void *tmp ;
  struct mthca_dev *tmp___0 ;
  int tmp___1 ;
  struct mthca_dev *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  struct mthca_dev *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  struct mthca_dev *tmp___8 ;
  void *tmp___9 ;
  struct mthca_dev *tmp___10 ;
  long tmp___11 ;
  struct mthca_dev *tmp___12 ;
  void *tmp___13 ;
  long tmp___14 ;
  struct mthca_dev *tmp___15 ;
  struct mthca_dev *tmp___16 ;
  void *tmp___17 ;
  int tmp___18 ;
  {
  tmp___0 = to_mdev(ibdev);
  if (tmp___0->active) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    tmp = ERR_PTR(-11L);
    return ((struct ib_ucontext *)tmp);
  } else {
  }
  memset((void *)(& uresp), 0, 8UL);
  tmp___2 = to_mdev(ibdev);
  uresp.qp_tab_size = (__u32 )tmp___2->limits.num_qps;
  tmp___4 = to_mdev(ibdev);
  tmp___5 = mthca_is_memfree(tmp___4);
  if (tmp___5 != 0) {
    tmp___3 = to_mdev(ibdev);
    uresp.uarc_size = (__u32 )tmp___3->uar_table.uarc_size;
  } else {
    uresp.uarc_size = 0U;
  }
  tmp___6 = kmalloc(176UL, 208U);
  context = (struct mthca_ucontext *)tmp___6;
  if ((unsigned long )context == (unsigned long )((struct mthca_ucontext *)0)) {
    tmp___7 = ERR_PTR(-12L);
    return ((struct ib_ucontext *)tmp___7);
  } else {
  }
  tmp___8 = to_mdev(ibdev);
  err = mthca_uar_alloc(tmp___8, & context->uar);
  if (err != 0) {
    kfree((void const *)context);
    tmp___9 = ERR_PTR((long )err);
    return ((struct ib_ucontext *)tmp___9);
  } else {
  }
  tmp___10 = to_mdev(ibdev);
  context->db_tab = mthca_init_user_db_tab(tmp___10);
  tmp___14 = IS_ERR((void const *)context->db_tab);
  if (tmp___14 != 0L) {
    tmp___11 = PTR_ERR((void const *)context->db_tab);
    err = (int )tmp___11;
    tmp___12 = to_mdev(ibdev);
    mthca_uar_free(tmp___12, & context->uar);
    kfree((void const *)context);
    tmp___13 = ERR_PTR((long )err);
    return ((struct ib_ucontext *)tmp___13);
  } else {
  }
  tmp___18 = ib_copy_to_udata(udata, (void *)(& uresp), 8UL);
  if (tmp___18 != 0) {
    tmp___15 = to_mdev(ibdev);
    mthca_cleanup_user_db_tab(tmp___15, & context->uar, context->db_tab);
    tmp___16 = to_mdev(ibdev);
    mthca_uar_free(tmp___16, & context->uar);
    kfree((void const *)context);
    tmp___17 = ERR_PTR(-14L);
    return ((struct ib_ucontext *)tmp___17);
  } else {
  }
  context->reg_mr_warned = 0;
  return (& context->ibucontext);
}
}
static int mthca_dealloc_ucontext(struct ib_ucontext *context )
{ struct mthca_ucontext *tmp ;
  struct mthca_ucontext *tmp___0 ;
  struct mthca_dev *tmp___1 ;
  struct mthca_ucontext *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  struct mthca_ucontext *tmp___4 ;
  {
  tmp = to_mucontext(context);
  tmp___0 = to_mucontext(context);
  tmp___1 = to_mdev(context->device);
  mthca_cleanup_user_db_tab(tmp___1, & tmp___0->uar, tmp->db_tab);
  tmp___2 = to_mucontext(context);
  tmp___3 = to_mdev(context->device);
  mthca_uar_free(tmp___3, & tmp___2->uar);
  tmp___4 = to_mucontext(context);
  kfree((void const *)tmp___4);
  return (0);
}
}
static int mthca_mmap_uar(struct ib_ucontext *context , struct vm_area_struct *vma )
{ pgprot_t __constr_expr_0 ;
  struct mthca_ucontext *tmp ;
  int tmp___0 ;
  {
  if (vma->vm_end - vma->vm_start != 4096UL) {
    return (-22);
  } else {
  }
  if ((unsigned int )boot_cpu_data.x86 > 3U) {
    __constr_expr_0.pgprot = vma->vm_page_prot.pgprot | 16UL;
    vma->vm_page_prot = __constr_expr_0;
  } else {
    vma->vm_page_prot = vma->vm_page_prot;
  }
  tmp = to_mucontext(context);
  tmp___0 = remap_pfn_range(vma, vma->vm_start, tmp->uar.pfn, 4096UL, vma->vm_page_prot);
  if (tmp___0 != 0) {
    return (-11);
  } else {
  }
  return (0);
}
}
static struct ib_pd *mthca_alloc_pd(struct ib_device *ibdev , struct ib_ucontext *context ,
                                    struct ib_udata *udata )
{ struct mthca_pd *pd ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  struct mthca_dev *tmp___1 ;
  void *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  tmp = kmalloc(96UL, 208U);
  pd = (struct mthca_pd *)tmp;
  if ((unsigned long )pd == (unsigned long )((struct mthca_pd *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ib_pd *)tmp___0);
  } else {
  }
  tmp___1 = to_mdev(ibdev);
  err = mthca_pd_alloc(tmp___1, (unsigned long )context == (unsigned long )((struct ib_ucontext *)0),
                       pd);
  if (err != 0) {
    kfree((void const *)pd);
    tmp___2 = ERR_PTR((long )err);
    return ((struct ib_pd *)tmp___2);
  } else {
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___5 = ib_copy_to_udata(udata, (void *)(& pd->pd_num), 4UL);
    if (tmp___5 != 0) {
      tmp___3 = to_mdev(ibdev);
      mthca_pd_free(tmp___3, pd);
      kfree((void const *)pd);
      tmp___4 = ERR_PTR(-14L);
      return ((struct ib_pd *)tmp___4);
    } else {
    }
  } else {
  }
  return (& pd->ibpd);
}
}
static int mthca_dealloc_pd(struct ib_pd *pd )
{ struct mthca_pd *tmp ;
  struct mthca_dev *tmp___0 ;
  {
  tmp = to_mpd(pd);
  tmp___0 = to_mdev(pd->device);
  mthca_pd_free(tmp___0, tmp);
  kfree((void const *)pd);
  return (0);
}
}
static struct ib_ah *mthca_ah_create(struct ib_pd *pd , struct ib_ah_attr *ah_attr )
{ int err ;
  struct mthca_ah *ah ;
  void *tmp ;
  void *tmp___0 ;
  struct mthca_pd *tmp___1 ;
  struct mthca_dev *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = kmalloc(48UL, 32U);
  ah = (struct mthca_ah *)tmp;
  if ((unsigned long )ah == (unsigned long )((struct mthca_ah *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ib_ah *)tmp___0);
  } else {
  }
  tmp___1 = to_mpd(pd);
  tmp___2 = to_mdev(pd->device);
  err = mthca_create_ah(tmp___2, tmp___1, ah_attr, ah);
  if (err != 0) {
    kfree((void const *)ah);
    tmp___3 = ERR_PTR((long )err);
    return ((struct ib_ah *)tmp___3);
  } else {
  }
  return (& ah->ibah);
}
}
static int mthca_ah_destroy(struct ib_ah *ah )
{ struct mthca_ah *tmp ;
  struct mthca_dev *tmp___0 ;
  {
  tmp = to_mah(ah);
  tmp___0 = to_mdev(ah->device);
  mthca_destroy_ah(tmp___0, tmp);
  kfree((void const *)ah);
  return (0);
}
}
static struct ib_srq *mthca_create_srq(struct ib_pd *pd , struct ib_srq_init_attr *init_attr ,
                                       struct ib_udata *udata )
{ struct mthca_create_srq ucmd ;
  struct mthca_ucontext *context ;
  struct mthca_srq *srq ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct mthca_dev *tmp___3 ;
  struct mthca_pd *tmp___4 ;
  struct mthca_dev *tmp___5 ;
  struct mthca_dev *tmp___6 ;
  struct mthca_dev *tmp___7 ;
  int tmp___8 ;
  void *tmp___9 ;
  {
  context = 0;
  if ((unsigned int )init_attr->srq_type != 0U) {
    tmp = ERR_PTR(-38L);
    return ((struct ib_srq *)tmp);
  } else {
  }
  tmp___0 = kmalloc(544UL, 208U);
  srq = (struct mthca_srq *)tmp___0;
  if ((unsigned long )srq == (unsigned long )((struct mthca_srq *)0)) {
    tmp___1 = ERR_PTR(-12L);
    return ((struct ib_srq *)tmp___1);
  } else {
  }
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    context = to_mucontext((pd->uobject)->context);
    tmp___2 = ib_copy_from_udata((void *)(& ucmd), udata, 16UL);
    if (tmp___2 != 0) {
      err = -14;
      goto err_free;
    } else {
    }
    tmp___3 = to_mdev(pd->device);
    err = mthca_map_user_db(tmp___3, & context->uar, context->db_tab, (int )ucmd.db_index,
                            ucmd.db_page);
    if (err != 0) {
      goto err_free;
    } else {
    }
    srq->mr.ibmr.lkey = ucmd.lkey;
    srq->db_index = (int )ucmd.db_index;
  } else {
  }
  tmp___4 = to_mpd(pd);
  tmp___5 = to_mdev(pd->device);
  err = mthca_alloc_srq(tmp___5, tmp___4, & init_attr->attr, srq);
  if (err != 0 && (unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp___6 = to_mdev(pd->device);
    mthca_unmap_user_db(tmp___6, & context->uar, context->db_tab, (int )ucmd.db_index);
  } else {
  }
  if (err != 0) {
    goto err_free;
  } else {
  }
  if ((unsigned long )context != (unsigned long )((struct mthca_ucontext *)0)) {
    tmp___8 = ib_copy_to_udata(udata, (void *)(& srq->srqn), 4UL);
    if (tmp___8 != 0) {
      tmp___7 = to_mdev(pd->device);
      mthca_free_srq(tmp___7, srq);
      err = -14;
      goto err_free;
    } else {
    }
  } else {
  }
  return (& srq->ibsrq);
  err_free:
  kfree((void const *)srq);
  tmp___9 = ERR_PTR((long )err);
  return ((struct ib_srq *)tmp___9);
}
}
static int mthca_destroy_srq(struct ib_srq *srq )
{ struct mthca_ucontext *context ;
  struct mthca_srq *tmp ;
  struct mthca_dev *tmp___0 ;
  struct mthca_srq *tmp___1 ;
  struct mthca_dev *tmp___2 ;
  {
  if ((unsigned long )srq->uobject != (unsigned long )((struct ib_uobject *)0)) {
    context = to_mucontext((srq->uobject)->context);
    tmp = to_msrq(srq);
    tmp___0 = to_mdev(srq->device);
    mthca_unmap_user_db(tmp___0, & context->uar, context->db_tab, tmp->db_index);
  } else {
  }
  tmp___1 = to_msrq(srq);
  tmp___2 = to_mdev(srq->device);
  mthca_free_srq(tmp___2, tmp___1);
  kfree((void const *)srq);
  return (0);
}
}
static struct ib_qp *mthca_create_qp(struct ib_pd *pd , struct ib_qp_init_attr *init_attr ,
                                     struct ib_udata *udata )
{ struct mthca_create_qp ucmd ;
  struct mthca_qp *qp ;
  int err ;
  void *tmp ;
  struct mthca_ucontext *context ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  struct mthca_dev *tmp___4 ;
  void *tmp___5 ;
  struct mthca_dev *tmp___6 ;
  struct mthca_dev *tmp___7 ;
  void *tmp___8 ;
  struct mthca_cq *tmp___9 ;
  struct mthca_cq *tmp___10 ;
  struct mthca_pd *tmp___11 ;
  struct mthca_dev *tmp___12 ;
  struct mthca_dev *tmp___13 ;
  struct mthca_dev *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  struct mthca_sqp *tmp___18 ;
  struct mthca_cq *tmp___19 ;
  struct mthca_cq *tmp___20 ;
  struct mthca_pd *tmp___21 ;
  struct mthca_dev *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  {
  if ((int )init_attr->create_flags != 0) {
    tmp = ERR_PTR(-22L);
    return ((struct ib_qp *)tmp);
  } else {
  }
  switch ((unsigned int )init_attr->qp_type) {
  case 2: ;
  case 3: ;
  case 4:
  tmp___0 = kmalloc(760UL, 208U);
  qp = (struct mthca_qp *)tmp___0;
  if ((unsigned long )qp == (unsigned long )((struct mthca_qp *)0)) {
    tmp___1 = ERR_PTR(-12L);
    return ((struct ib_qp *)tmp___1);
  } else {
  }
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    context = to_mucontext((pd->uobject)->context);
    tmp___3 = ib_copy_from_udata((void *)(& ucmd), udata, 32UL);
    if (tmp___3 != 0) {
      kfree((void const *)qp);
      tmp___2 = ERR_PTR(-14L);
      return ((struct ib_qp *)tmp___2);
    } else {
    }
    tmp___4 = to_mdev(pd->device);
    err = mthca_map_user_db(tmp___4, & context->uar, context->db_tab, (int )ucmd.sq_db_index,
                            ucmd.sq_db_page);
    if (err != 0) {
      kfree((void const *)qp);
      tmp___5 = ERR_PTR((long )err);
      return ((struct ib_qp *)tmp___5);
    } else {
    }
    tmp___6 = to_mdev(pd->device);
    err = mthca_map_user_db(tmp___6, & context->uar, context->db_tab, (int )ucmd.rq_db_index,
                            ucmd.rq_db_page);
    if (err != 0) {
      tmp___7 = to_mdev(pd->device);
      mthca_unmap_user_db(tmp___7, & context->uar, context->db_tab, (int )ucmd.sq_db_index);
      kfree((void const *)qp);
      tmp___8 = ERR_PTR((long )err);
      return ((struct ib_qp *)tmp___8);
    } else {
    }
    qp->mr.ibmr.lkey = ucmd.lkey;
    qp->sq.db_index = (int )ucmd.sq_db_index;
    qp->rq.db_index = (int )ucmd.rq_db_index;
  } else {
  }
  tmp___9 = to_mcq(init_attr->recv_cq);
  tmp___10 = to_mcq(init_attr->send_cq);
  tmp___11 = to_mpd(pd);
  tmp___12 = to_mdev(pd->device);
  err = mthca_alloc_qp(tmp___12, tmp___11, tmp___10, tmp___9, init_attr->qp_type,
                       init_attr->sq_sig_type, & init_attr->cap, qp);
  if (err != 0 && (unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    context = to_mucontext((pd->uobject)->context);
    tmp___13 = to_mdev(pd->device);
    mthca_unmap_user_db(tmp___13, & context->uar, context->db_tab, (int )ucmd.sq_db_index);
    tmp___14 = to_mdev(pd->device);
    mthca_unmap_user_db(tmp___14, & context->uar, context->db_tab, (int )ucmd.rq_db_index);
  } else {
  }
  qp->ibqp.qp_num = qp->qpn;
  goto ldv_27420;
  case 0: ;
  case 1: ;
  if ((unsigned long )pd->uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp___15 = ERR_PTR(-22L);
    return ((struct ib_qp *)tmp___15);
  } else {
  }
  tmp___16 = kmalloc(936UL, 208U);
  qp = (struct mthca_qp *)tmp___16;
  if ((unsigned long )qp == (unsigned long )((struct mthca_qp *)0)) {
    tmp___17 = ERR_PTR(-12L);
    return ((struct ib_qp *)tmp___17);
  } else {
  }
  qp->ibqp.qp_num = (unsigned int )init_attr->qp_type != 0U;
  tmp___18 = to_msqp(qp);
  tmp___19 = to_mcq(init_attr->recv_cq);
  tmp___20 = to_mcq(init_attr->send_cq);
  tmp___21 = to_mpd(pd);
  tmp___22 = to_mdev(pd->device);
  err = mthca_alloc_sqp(tmp___22, tmp___21, tmp___20, tmp___19, init_attr->sq_sig_type,
                        & init_attr->cap, (int )qp->ibqp.qp_num, (int )init_attr->port_num,
                        tmp___18);
  goto ldv_27420;
  default:
  tmp___23 = ERR_PTR(-38L);
  return ((struct ib_qp *)tmp___23);
  }
  ldv_27420: ;
  if (err != 0) {
    kfree((void const *)qp);
    tmp___24 = ERR_PTR((long )err);
    return ((struct ib_qp *)tmp___24);
  } else {
  }
  init_attr->cap.max_send_wr = (u32 )qp->sq.max;
  init_attr->cap.max_recv_wr = (u32 )qp->rq.max;
  init_attr->cap.max_send_sge = (u32 )qp->sq.max_gs;
  init_attr->cap.max_recv_sge = (u32 )qp->rq.max_gs;
  init_attr->cap.max_inline_data = (u32 )qp->max_inline_data;
  return (& qp->ibqp);
}
}
static int mthca_destroy_qp(struct ib_qp *qp )
{ struct mthca_qp *tmp ;
  struct mthca_ucontext *tmp___0 ;
  struct mthca_ucontext *tmp___1 ;
  struct mthca_dev *tmp___2 ;
  struct mthca_qp *tmp___3 ;
  struct mthca_ucontext *tmp___4 ;
  struct mthca_ucontext *tmp___5 ;
  struct mthca_dev *tmp___6 ;
  struct mthca_qp *tmp___7 ;
  struct mthca_dev *tmp___8 ;
  {
  if ((unsigned long )qp->uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp = to_mqp(qp);
    tmp___0 = to_mucontext((qp->uobject)->context);
    tmp___1 = to_mucontext((qp->uobject)->context);
    tmp___2 = to_mdev(qp->device);
    mthca_unmap_user_db(tmp___2, & tmp___1->uar, tmp___0->db_tab, tmp->sq.db_index);
    tmp___3 = to_mqp(qp);
    tmp___4 = to_mucontext((qp->uobject)->context);
    tmp___5 = to_mucontext((qp->uobject)->context);
    tmp___6 = to_mdev(qp->device);
    mthca_unmap_user_db(tmp___6, & tmp___5->uar, tmp___4->db_tab, tmp___3->rq.db_index);
  } else {
  }
  tmp___7 = to_mqp(qp);
  tmp___8 = to_mdev(qp->device);
  mthca_free_qp(tmp___8, tmp___7);
  kfree((void const *)qp);
  return (0);
}
}
static struct ib_cq *mthca_create_cq(struct ib_device *ibdev , int entries , int comp_vector ,
                                     struct ib_ucontext *context , struct ib_udata *udata )
{ struct mthca_create_cq ucmd ;
  struct mthca_cq *cq ;
  int nent ;
  int err ;
  void *tmp ;
  struct mthca_dev *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct mthca_ucontext *tmp___3 ;
  struct mthca_ucontext *tmp___4 ;
  struct mthca_dev *tmp___5 ;
  void *tmp___6 ;
  struct mthca_ucontext *tmp___7 ;
  struct mthca_ucontext *tmp___8 ;
  struct mthca_dev *tmp___9 ;
  void *tmp___10 ;
  struct mthca_dev *tmp___11 ;
  unsigned int tmp___12 ;
  struct mthca_ucontext *tmp___13 ;
  struct mthca_ucontext *tmp___14 ;
  struct mthca_dev *tmp___15 ;
  struct mthca_dev *tmp___16 ;
  int tmp___17 ;
  struct mthca_ucontext *tmp___18 ;
  struct mthca_ucontext *tmp___19 ;
  struct mthca_dev *tmp___20 ;
  struct mthca_ucontext *tmp___21 ;
  struct mthca_ucontext *tmp___22 ;
  struct mthca_dev *tmp___23 ;
  void *tmp___24 ;
  {
  if (entries <= 0) {
    tmp = ERR_PTR(-22L);
    return ((struct ib_cq *)tmp);
  } else {
    tmp___0 = to_mdev(ibdev);
    if (tmp___0->limits.max_cqes < entries) {
      tmp = ERR_PTR(-22L);
      return ((struct ib_cq *)tmp);
    } else {
    }
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___2 = ib_copy_from_udata((void *)(& ucmd), udata, 32UL);
    if (tmp___2 != 0) {
      tmp___1 = ERR_PTR(-14L);
      return ((struct ib_cq *)tmp___1);
    } else {
    }
    tmp___3 = to_mucontext(context);
    tmp___4 = to_mucontext(context);
    tmp___5 = to_mdev(ibdev);
    err = mthca_map_user_db(tmp___5, & tmp___4->uar, tmp___3->db_tab, (int )ucmd.set_db_index,
                            ucmd.set_db_page);
    if (err != 0) {
      tmp___6 = ERR_PTR((long )err);
      return ((struct ib_cq *)tmp___6);
    } else {
    }
    tmp___7 = to_mucontext(context);
    tmp___8 = to_mucontext(context);
    tmp___9 = to_mdev(ibdev);
    err = mthca_map_user_db(tmp___9, & tmp___8->uar, tmp___7->db_tab, (int )ucmd.arm_db_index,
                            ucmd.arm_db_page);
    if (err != 0) {
      goto err_unmap_set;
    } else {
    }
  } else {
  }
  tmp___10 = kmalloc(520UL, 208U);
  cq = (struct mthca_cq *)tmp___10;
  if ((unsigned long )cq == (unsigned long )((struct mthca_cq *)0)) {
    err = -12;
    goto err_unmap_arm;
  } else {
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    cq->buf.mr.ibmr.lkey = ucmd.lkey;
    cq->set_ci_db_index = (int )ucmd.set_db_index;
    cq->arm_db_index = (int )ucmd.arm_db_index;
  } else {
  }
  nent = 1;
  goto ldv_27441;
  ldv_27440:
  nent = nent << 1;
  ldv_27441: ;
  if (nent <= entries) {
    goto ldv_27440;
  } else {
    goto ldv_27442;
  }
  ldv_27442: ;
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___12 = ucmd.pdn;
  } else {
    tmp___11 = to_mdev(ibdev);
    tmp___12 = tmp___11->driver_pd.pd_num;
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___13 = to_mucontext(context);
    tmp___14 = tmp___13;
  } else {
    tmp___14 = 0;
  }
  tmp___15 = to_mdev(ibdev);
  err = mthca_init_cq(tmp___15, nent, tmp___14, tmp___12, cq);
  if (err != 0) {
    goto err_free;
  } else {
  }
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___17 = ib_copy_to_udata(udata, (void *)(& cq->cqn), 4UL);
    if (tmp___17 != 0) {
      tmp___16 = to_mdev(ibdev);
      mthca_free_cq(tmp___16, cq);
      goto err_free;
    } else {
    }
  } else {
  }
  cq->resize_buf = 0;
  return (& cq->ibcq);
  err_free:
  kfree((void const *)cq);
  err_unmap_arm: ;
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___18 = to_mucontext(context);
    tmp___19 = to_mucontext(context);
    tmp___20 = to_mdev(ibdev);
    mthca_unmap_user_db(tmp___20, & tmp___19->uar, tmp___18->db_tab, (int )ucmd.arm_db_index);
  } else {
  }
  err_unmap_set: ;
  if ((unsigned long )context != (unsigned long )((struct ib_ucontext *)0)) {
    tmp___21 = to_mucontext(context);
    tmp___22 = to_mucontext(context);
    tmp___23 = to_mdev(ibdev);
    mthca_unmap_user_db(tmp___23, & tmp___22->uar, tmp___21->db_tab, (int )ucmd.set_db_index);
  } else {
  }
  tmp___24 = ERR_PTR((long )err);
  return ((struct ib_cq *)tmp___24);
}
}
static int mthca_alloc_resize_buf(struct mthca_dev *dev , struct mthca_cq *cq , int entries )
{ int ret ;
  void *tmp ;
  {
  spin_lock_irq(& cq->lock);
  if ((unsigned long )cq->resize_buf != (unsigned long )((struct mthca_cq_resize *)0)) {
    ret = -16;
    goto unlock;
  } else {
  }
  tmp = kmalloc(88UL, 32U);
  cq->resize_buf = (struct mthca_cq_resize *)tmp;
  if ((unsigned long )cq->resize_buf == (unsigned long )((struct mthca_cq_resize *)0)) {
    ret = -12;
    goto unlock;
  } else {
  }
  (cq->resize_buf)->state = 0;
  ret = 0;
  unlock:
  spin_unlock_irq(& cq->lock);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = mthca_alloc_cq_buf(dev, & (cq->resize_buf)->buf, entries);
  if (ret != 0) {
    spin_lock_irq(& cq->lock);
    kfree((void const *)cq->resize_buf);
    cq->resize_buf = 0;
    spin_unlock_irq(& cq->lock);
    return (ret);
  } else {
  }
  (cq->resize_buf)->cqe = entries + -1;
  spin_lock_irq(& cq->lock);
  (cq->resize_buf)->state = 1;
  spin_unlock_irq(& cq->lock);
  return (0);
}
}
static int mthca_resize_cq(struct ib_cq *ibcq , int entries , struct ib_udata *udata )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_cq *cq ;
  struct mthca_cq *tmp___0 ;
  struct mthca_resize_cq ucmd ;
  u32 lkey ;
  int ret ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct mthca_cq_buf tbuf ;
  int tcqe ;
  {
  tmp = to_mdev(ibcq->device);
  dev = tmp;
  tmp___0 = to_mcq(ibcq);
  cq = tmp___0;
  if (entries <= 0 || dev->limits.max_cqes < entries) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_188(& cq->mutex);
  tmp___1 = __roundup_pow_of_two((unsigned long )(entries + 1));
  entries = (int )tmp___1;
  if (ibcq->cqe + 1 == entries) {
    ret = 0;
    goto out;
  } else {
  }
  if (cq->is_kernel != 0) {
    ret = mthca_alloc_resize_buf(dev, cq, entries);
    if (ret != 0) {
      goto out;
    } else {
    }
    lkey = (cq->resize_buf)->buf.mr.ibmr.lkey;
  } else {
    tmp___2 = ib_copy_from_udata((void *)(& ucmd), udata, 8UL);
    if (tmp___2 != 0) {
      ret = -14;
      goto out;
    } else {
    }
    lkey = ucmd.lkey;
  }
  tmp___3 = __ilog2_u32((u32 )entries);
  ret = mthca_RESIZE_CQ(dev, cq->cqn, lkey, (int )((u8 )tmp___3));
  if (ret != 0) {
    if ((unsigned long )cq->resize_buf != (unsigned long )((struct mthca_cq_resize *)0)) {
      mthca_free_cq_buf(dev, & (cq->resize_buf)->buf, (cq->resize_buf)->cqe);
      kfree((void const *)cq->resize_buf);
      spin_lock_irq(& cq->lock);
      cq->resize_buf = 0;
      spin_unlock_irq(& cq->lock);
    } else {
    }
    goto out;
  } else {
  }
  if (cq->is_kernel != 0) {
    spin_lock_irq(& cq->lock);
    if ((unsigned int )(cq->resize_buf)->state == 1U) {
      mthca_cq_resize_copy_cqes(cq);
      tbuf = cq->buf;
      tcqe = cq->ibcq.cqe;
      cq->buf = (cq->resize_buf)->buf;
      cq->ibcq.cqe = (cq->resize_buf)->cqe;
    } else {
      tbuf = (cq->resize_buf)->buf;
      tcqe = (cq->resize_buf)->cqe;
    }
    kfree((void const *)cq->resize_buf);
    cq->resize_buf = 0;
    spin_unlock_irq(& cq->lock);
    mthca_free_cq_buf(dev, & tbuf, tcqe);
  } else {
    ibcq->cqe = entries + -1;
  }
  out:
  ldv_mutex_unlock_189(& cq->mutex);
  return (ret);
}
}
static int mthca_destroy_cq(struct ib_cq *cq )
{ struct mthca_cq *tmp ;
  struct mthca_ucontext *tmp___0 ;
  struct mthca_ucontext *tmp___1 ;
  struct mthca_dev *tmp___2 ;
  struct mthca_cq *tmp___3 ;
  struct mthca_ucontext *tmp___4 ;
  struct mthca_ucontext *tmp___5 ;
  struct mthca_dev *tmp___6 ;
  struct mthca_cq *tmp___7 ;
  struct mthca_dev *tmp___8 ;
  {
  if ((unsigned long )cq->uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp = to_mcq(cq);
    tmp___0 = to_mucontext((cq->uobject)->context);
    tmp___1 = to_mucontext((cq->uobject)->context);
    tmp___2 = to_mdev(cq->device);
    mthca_unmap_user_db(tmp___2, & tmp___1->uar, tmp___0->db_tab, tmp->arm_db_index);
    tmp___3 = to_mcq(cq);
    tmp___4 = to_mucontext((cq->uobject)->context);
    tmp___5 = to_mucontext((cq->uobject)->context);
    tmp___6 = to_mdev(cq->device);
    mthca_unmap_user_db(tmp___6, & tmp___5->uar, tmp___4->db_tab, tmp___3->set_ci_db_index);
  } else {
  }
  tmp___7 = to_mcq(cq);
  tmp___8 = to_mdev(cq->device);
  mthca_free_cq(tmp___8, tmp___7);
  kfree((void const *)cq);
  return (0);
}
}
__inline static u32 convert_access(int acc )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((acc & 8) != 0) {
    tmp = 16384;
  } else {
    tmp = 0;
  }
  if ((acc & 2) != 0) {
    tmp___0 = 8192;
  } else {
    tmp___0 = 0;
  }
  if ((acc & 4) != 0) {
    tmp___1 = 4096;
  } else {
    tmp___1 = 0;
  }
  if (acc & 1) {
    tmp___2 = 2048;
  } else {
    tmp___2 = 0;
  }
  return ((u32 )((((tmp | tmp___0) | tmp___1) | tmp___2) | 1024));
}
}
static struct ib_mr *mthca_get_dma_mr(struct ib_pd *pd , int acc )
{ struct mthca_mr *mr ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  struct mthca_pd *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  void *tmp___4 ;
  {
  tmp = kmalloc(56UL, 208U);
  mr = (struct mthca_mr *)tmp;
  if ((unsigned long )mr == (unsigned long )((struct mthca_mr *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ib_mr *)tmp___0);
  } else {
  }
  tmp___1 = convert_access(acc);
  tmp___2 = to_mpd(pd);
  tmp___3 = to_mdev(pd->device);
  err = mthca_mr_alloc_notrans(tmp___3, tmp___2->pd_num, tmp___1, mr);
  if (err != 0) {
    kfree((void const *)mr);
    tmp___4 = ERR_PTR((long )err);
    return ((struct ib_mr *)tmp___4);
  } else {
  }
  mr->umem = 0;
  return (& mr->ibmr);
}
}
static struct ib_mr *mthca_reg_phys_mr(struct ib_pd *pd , struct ib_phys_buf *buffer_list ,
                                       int num_phys_buf , int acc , u64 *iova_start )
{ struct mthca_mr *mr ;
  u64 *page_list ;
  u64 total_size ;
  unsigned long mask ;
  int shift ;
  int npages ;
  int err ;
  int i ;
  int j ;
  int n ;
  void *tmp ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  struct mthca_pd *tmp___6 ;
  struct mthca_dev *tmp___7 ;
  u32 tmp___8 ;
  struct mthca_pd *tmp___9 ;
  struct mthca_dev *tmp___10 ;
  void *tmp___11 ;
  {
  mask = (unsigned long )(buffer_list->addr ^ *iova_start);
  total_size = 0ULL;
  i = 0;
  goto ldv_27494;
  ldv_27493: ;
  if (i != 0) {
    mask = (unsigned long )((buffer_list + (unsigned long )i)->addr | (unsigned long long )mask);
  } else {
  }
  if (num_phys_buf + -1 != i) {
    mask = (unsigned long )(((buffer_list + (unsigned long )i)->addr + (buffer_list + (unsigned long )i)->size) | (unsigned long long )mask);
  } else {
  }
  total_size = (buffer_list + (unsigned long )i)->size + total_size;
  i = i + 1;
  ldv_27494: ;
  if (i < num_phys_buf) {
    goto ldv_27493;
  } else {
    goto ldv_27495;
  }
  ldv_27495: ;
  if ((mask & 4095UL) != 0UL) {
    tmp = ERR_PTR(-22L);
    return ((struct ib_mr *)tmp);
  } else {
  }
  tmp___0 = __ffs(mask | 0xffffffff80000000UL);
  shift = (int )tmp___0;
  buffer_list->size = buffer_list->size + (buffer_list->addr & ((1ULL << shift) - 1ULL));
  buffer_list->addr = buffer_list->addr & (0xffffffffffffffffULL << shift);
  tmp___1 = kmalloc(56UL, 208U);
  mr = (struct mthca_mr *)tmp___1;
  if ((unsigned long )mr == (unsigned long )((struct mthca_mr *)0)) {
    tmp___2 = ERR_PTR(-12L);
    return ((struct ib_mr *)tmp___2);
  } else {
  }
  npages = 0;
  i = 0;
  goto ldv_27497;
  ldv_27496:
  npages = (int )((unsigned int )((((buffer_list + (unsigned long )i)->size + (1ULL << shift)) - 1ULL) >> shift) + (unsigned int )npages);
  i = i + 1;
  ldv_27497: ;
  if (i < num_phys_buf) {
    goto ldv_27496;
  } else {
    goto ldv_27498;
  }
  ldv_27498: ;
  if (npages == 0) {
    return (& mr->ibmr);
  } else {
  }
  tmp___3 = kmalloc((unsigned long )npages * 8UL, 208U);
  page_list = (u64 *)tmp___3;
  if ((unsigned long )page_list == (unsigned long )((u64 *)0)) {
    kfree((void const *)mr);
    tmp___4 = ERR_PTR(-12L);
    return ((struct ib_mr *)tmp___4);
  } else {
  }
  n = 0;
  i = 0;
  goto ldv_27503;
  ldv_27502:
  j = 0;
  goto ldv_27500;
  ldv_27499:
  tmp___5 = n;
  n = n + 1;
  *(page_list + (unsigned long )tmp___5) = (buffer_list + (unsigned long )i)->addr + ((unsigned long long )j << shift);
  j = j + 1;
  ldv_27500: ;
  if ((unsigned long long )j < (((buffer_list + (unsigned long )i)->size + (1ULL << shift)) - 1ULL) >> shift) {
    goto ldv_27499;
  } else {
    goto ldv_27501;
  }
  ldv_27501:
  i = i + 1;
  ldv_27503: ;
  if (i < num_phys_buf) {
    goto ldv_27502;
  } else {
    goto ldv_27504;
  }
  ldv_27504: ;
  if (mthca_debug_level != 0) {
    tmp___6 = to_mpd(pd);
    tmp___7 = to_mdev(pd->device);
    dev_printk("\017", (struct device const *)(& (tmp___7->pdev)->dev), "Registering memory at %llx (iova %llx) in PD %x; shift %d, npages %d.\n",
               buffer_list->addr, *iova_start, tmp___6->pd_num, shift, npages);
  } else {
  }
  tmp___8 = convert_access(acc);
  tmp___9 = to_mpd(pd);
  tmp___10 = to_mdev(pd->device);
  err = mthca_mr_alloc_phys(tmp___10, tmp___9->pd_num, page_list, shift, npages, *iova_start,
                            total_size, tmp___8, mr);
  if (err != 0) {
    kfree((void const *)page_list);
    kfree((void const *)mr);
    tmp___11 = ERR_PTR((long )err);
    return ((struct ib_mr *)tmp___11);
  } else {
  }
  kfree((void const *)page_list);
  mr->umem = 0;
  return (& mr->ibmr);
}
}
static struct ib_mr *mthca_reg_user_mr(struct ib_pd *pd , u64 start , u64 length ,
                                       u64 virt , int acc , struct ib_udata *udata )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct ib_umem_chunk *chunk ;
  struct mthca_mr *mr ;
  struct mthca_reg_mr ucmd ;
  u64 *pages ;
  int shift ;
  int n ;
  int len ;
  int i ;
  int j ;
  int k ;
  int err ;
  int write_mtt_size ;
  struct task_struct *tmp___0 ;
  struct mthca_ucontext *tmp___1 ;
  struct mthca_ucontext *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  long tmp___10 ;
  long tmp___11 ;
  unsigned long tmp___12 ;
  int _min1 ;
  int tmp___13 ;
  int _min2 ;
  int tmp___14 ;
  struct list_head const *__mptr___1 ;
  int tmp___15 ;
  struct list_head const *__mptr___2 ;
  u32 tmp___16 ;
  struct mthca_pd *tmp___17 ;
  void *tmp___18 ;
  {
  tmp = to_mdev(pd->device);
  dev = tmp;
  err = 0;
  if (udata->inlen - 8UL <= 7UL) {
    tmp___1 = to_mucontext((pd->uobject)->context);
    if (tmp___1->reg_mr_warned == 0) {
      tmp___0 = get_current();
      dev_warn((struct device const *)(& (dev->pdev)->dev), "Process \'%s\' did not pass in MR attrs.\n",
               (char *)(& tmp___0->comm));
      dev_warn((struct device const *)(& (dev->pdev)->dev), "  Update libmthca to fix this.\n");
    } else {
    }
    tmp___2 = to_mucontext((pd->uobject)->context);
    tmp___2->reg_mr_warned = tmp___2->reg_mr_warned + 1;
    ucmd.mr_attrs = 0U;
  } else {
    tmp___4 = ib_copy_from_udata((void *)(& ucmd), udata, 8UL);
    if (tmp___4 != 0) {
      tmp___3 = ERR_PTR(-14L);
      return ((struct ib_mr *)tmp___3);
    } else {
    }
  }
  tmp___5 = kmalloc(56UL, 208U);
  mr = (struct mthca_mr *)tmp___5;
  if ((unsigned long )mr == (unsigned long )((struct mthca_mr *)0)) {
    tmp___6 = ERR_PTR(-12L);
    return ((struct ib_mr *)tmp___6);
  } else {
  }
  mr->umem = ib_umem_get((pd->uobject)->context, (unsigned long )start, (size_t )length,
                         acc, (int )ucmd.mr_attrs & 1);
  tmp___8 = IS_ERR((void const *)mr->umem);
  if (tmp___8 != 0L) {
    tmp___7 = PTR_ERR((void const *)mr->umem);
    err = (int )tmp___7;
    goto err;
  } else {
  }
  tmp___9 = ffs((mr->umem)->page_size);
  shift = tmp___9 + -1;
  n = 0;
  __mptr = (struct list_head const *)(mr->umem)->chunk_list.next;
  chunk = (struct ib_umem_chunk *)__mptr;
  goto ldv_27532;
  ldv_27531:
  n = chunk->nents + n;
  __mptr___0 = (struct list_head const *)chunk->list.next;
  chunk = (struct ib_umem_chunk *)__mptr___0;
  ldv_27532: ;
  if ((unsigned long )(& chunk->list) != (unsigned long )(& (mr->umem)->chunk_list)) {
    goto ldv_27531;
  } else {
    goto ldv_27533;
  }
  ldv_27533:
  mr->mtt = mthca_alloc_mtt(dev, n);
  tmp___11 = IS_ERR((void const *)mr->mtt);
  if (tmp___11 != 0L) {
    tmp___10 = PTR_ERR((void const *)mr->mtt);
    err = (int )tmp___10;
    goto err_umem;
  } else {
  }
  tmp___12 = __get_free_pages(208U, 0U);
  pages = (u64 *)tmp___12;
  if ((unsigned long )pages == (unsigned long )((u64 *)0)) {
    err = -12;
    goto err_mtt;
  } else {
  }
  n = 0;
  i = n;
  tmp___13 = mthca_write_mtt_size(dev);
  _min1 = tmp___13;
  _min2 = 512;
  if (_min1 < _min2) {
    tmp___14 = _min1;
  } else {
    tmp___14 = _min2;
  }
  write_mtt_size = tmp___14;
  __mptr___1 = (struct list_head const *)(mr->umem)->chunk_list.next;
  chunk = (struct ib_umem_chunk *)__mptr___1;
  goto ldv_27551;
  ldv_27550:
  j = 0;
  goto ldv_27548;
  ldv_27547:
  len = (int )(((struct scatterlist *)(& chunk->page_list) + (unsigned long )j)->dma_length >> shift);
  k = 0;
  goto ldv_27545;
  ldv_27544:
  tmp___15 = i;
  i = i + 1;
  *(pages + (unsigned long )tmp___15) = ((struct scatterlist *)(& chunk->page_list) + (unsigned long )j)->dma_address + (dma_addr_t )((mr->umem)->page_size * k);
  if (i == write_mtt_size) {
    err = mthca_write_mtt(dev, mr->mtt, n, pages, i);
    if (err != 0) {
      goto mtt_done;
    } else {
    }
    n = n + i;
    i = 0;
  } else {
  }
  k = k + 1;
  ldv_27545: ;
  if (k < len) {
    goto ldv_27544;
  } else {
    goto ldv_27546;
  }
  ldv_27546:
  j = j + 1;
  ldv_27548: ;
  if (chunk->nmap > j) {
    goto ldv_27547;
  } else {
    goto ldv_27549;
  }
  ldv_27549:
  __mptr___2 = (struct list_head const *)chunk->list.next;
  chunk = (struct ib_umem_chunk *)__mptr___2;
  ldv_27551: ;
  if ((unsigned long )(& chunk->list) != (unsigned long )(& (mr->umem)->chunk_list)) {
    goto ldv_27550;
  } else {
    goto ldv_27552;
  }
  ldv_27552: ;
  if (i != 0) {
    err = mthca_write_mtt(dev, mr->mtt, n, pages, i);
  } else {
  }
  mtt_done:
  free_pages((unsigned long )pages, 0U);
  if (err != 0) {
    goto err_mtt;
  } else {
  }
  tmp___16 = convert_access(acc);
  tmp___17 = to_mpd(pd);
  err = mthca_mr_alloc(dev, tmp___17->pd_num, shift, virt, length, tmp___16, mr);
  if (err != 0) {
    goto err_mtt;
  } else {
  }
  return (& mr->ibmr);
  err_mtt:
  mthca_free_mtt(dev, mr->mtt);
  err_umem:
  ib_umem_release(mr->umem);
  err:
  kfree((void const *)mr);
  tmp___18 = ERR_PTR((long )err);
  return ((struct ib_mr *)tmp___18);
}
}
static int mthca_dereg_mr(struct ib_mr *mr )
{ struct mthca_mr *mmr ;
  struct mthca_mr *tmp ;
  struct mthca_dev *tmp___0 ;
  {
  tmp = to_mmr(mr);
  mmr = tmp;
  tmp___0 = to_mdev(mr->device);
  mthca_free_mr(tmp___0, mmr);
  if ((unsigned long )mmr->umem != (unsigned long )((struct ib_umem *)0)) {
    ib_umem_release(mmr->umem);
  } else {
  }
  kfree((void const *)mmr);
  return (0);
}
}
static struct ib_fmr *mthca_alloc_fmr(struct ib_pd *pd , int mr_access_flags , struct ib_fmr_attr *fmr_attr )
{ struct mthca_fmr *fmr ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  u32 tmp___1 ;
  struct mthca_pd *tmp___2 ;
  struct mthca_dev *tmp___3 ;
  void *tmp___4 ;
  {
  tmp = kmalloc(96UL, 208U);
  fmr = (struct mthca_fmr *)tmp;
  if ((unsigned long )fmr == (unsigned long )((struct mthca_fmr *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct ib_fmr *)tmp___0);
  } else {
  }
  __len = 12UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& fmr->attr), (void const *)fmr_attr, __len);
  } else {
    __ret = memcpy((void *)(& fmr->attr), (void const *)fmr_attr, __len);
  }
  tmp___1 = convert_access(mr_access_flags);
  tmp___2 = to_mpd(pd);
  tmp___3 = to_mdev(pd->device);
  err = mthca_fmr_alloc(tmp___3, tmp___2->pd_num, tmp___1, fmr);
  if (err != 0) {
    kfree((void const *)fmr);
    tmp___4 = ERR_PTR((long )err);
    return ((struct ib_fmr *)tmp___4);
  } else {
  }
  return (& fmr->ibmr);
}
}
static int mthca_dealloc_fmr(struct ib_fmr *fmr )
{ struct mthca_fmr *mfmr ;
  struct mthca_fmr *tmp ;
  int err ;
  struct mthca_dev *tmp___0 ;
  {
  tmp = to_mfmr(fmr);
  mfmr = tmp;
  tmp___0 = to_mdev(fmr->device);
  err = mthca_free_fmr(tmp___0, mfmr);
  if (err != 0) {
    return (err);
  } else {
  }
  kfree((void const *)mfmr);
  return (0);
}
}
static int mthca_unmap_fmr(struct list_head *fmr_list )
{ struct ib_fmr *fmr ;
  int err ;
  struct mthca_dev *mdev ;
  struct list_head const *__mptr ;
  struct mthca_dev *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct mthca_fmr *tmp___0 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct mthca_fmr *tmp___1 ;
  struct list_head const *__mptr___4 ;
  int tmp___2 ;
  {
  mdev = 0;
  __mptr = (struct list_head const *)fmr_list->next;
  fmr = (struct ib_fmr *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_27583;
  ldv_27582: ;
  if ((unsigned long )mdev != (unsigned long )((struct mthca_dev *)0)) {
    tmp = to_mdev(fmr->device);
    if ((unsigned long )tmp != (unsigned long )mdev) {
      return (-22);
    } else {
    }
  } else {
  }
  mdev = to_mdev(fmr->device);
  __mptr___0 = (struct list_head const *)fmr->list.next;
  fmr = (struct ib_fmr *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_27583: ;
  if ((unsigned long )(& fmr->list) != (unsigned long )fmr_list) {
    goto ldv_27582;
  } else {
    goto ldv_27584;
  }
  ldv_27584: ;
  if ((unsigned long )mdev == (unsigned long )((struct mthca_dev *)0)) {
    return (0);
  } else {
  }
  tmp___2 = mthca_is_memfree(mdev);
  if (tmp___2 != 0) {
    __mptr___1 = (struct list_head const *)fmr_list->next;
    fmr = (struct ib_fmr *)__mptr___1 + 0xfffffffffffffff0UL;
    goto ldv_27590;
    ldv_27589:
    tmp___0 = to_mfmr(fmr);
    mthca_arbel_fmr_unmap(mdev, tmp___0);
    __mptr___2 = (struct list_head const *)fmr->list.next;
    fmr = (struct ib_fmr *)__mptr___2 + 0xfffffffffffffff0UL;
    ldv_27590: ;
    if ((unsigned long )(& fmr->list) != (unsigned long )fmr_list) {
      goto ldv_27589;
    } else {
      goto ldv_27591;
    }
    ldv_27591:
    __asm__ volatile ("sfence": : : "memory");
  } else {
    __mptr___3 = (struct list_head const *)fmr_list->next;
    fmr = (struct ib_fmr *)__mptr___3 + 0xfffffffffffffff0UL;
    goto ldv_27597;
    ldv_27596:
    tmp___1 = to_mfmr(fmr);
    mthca_tavor_fmr_unmap(mdev, tmp___1);
    __mptr___4 = (struct list_head const *)fmr->list.next;
    fmr = (struct ib_fmr *)__mptr___4 + 0xfffffffffffffff0UL;
    ldv_27597: ;
    if ((unsigned long )(& fmr->list) != (unsigned long )fmr_list) {
      goto ldv_27596;
    } else {
      goto ldv_27598;
    }
    ldv_27598: ;
  }
  err = mthca_SYNC_TPT(mdev);
  return (err);
}
}
static ssize_t show_rev(struct device *device , struct device_attribute *attr , char *buf )
{ struct mthca_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)device;
  dev = (struct mthca_dev *)__mptr + 0xfffffffffffffc80UL;
  tmp = sprintf(buf, "%x\n", dev->rev_id);
  return ((ssize_t )tmp);
}
}
static ssize_t show_fw_ver(struct device *device , struct device_attribute *attr ,
                           char *buf )
{ struct mthca_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)device;
  dev = (struct mthca_dev *)__mptr + 0xfffffffffffffc80UL;
  tmp = sprintf(buf, "%d.%d.%d\n", (int )(dev->fw_ver >> 32), (int )(dev->fw_ver >> 16) & 65535,
                (int )dev->fw_ver & 65535);
  return ((ssize_t )tmp);
}
}
static ssize_t show_hca(struct device *device , struct device_attribute *attr , char *buf )
{ struct mthca_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct device const *)device;
  dev = (struct mthca_dev *)__mptr + 0xfffffffffffffc80UL;
  switch ((int )(dev->pdev)->device) {
  case 23108:
  tmp = sprintf(buf, "MT23108\n");
  return ((ssize_t )tmp);
  case 25208:
  tmp___0 = sprintf(buf, "MT25208 (MT23108 compat mode)\n");
  return ((ssize_t )tmp___0);
  case 25218:
  tmp___1 = sprintf(buf, "MT25208\n");
  return ((ssize_t )tmp___1);
  case 25204: ;
  case 24204:
  tmp___2 = sprintf(buf, "MT25204\n");
  return ((ssize_t )tmp___2);
  default:
  tmp___3 = sprintf(buf, "unknown\n");
  return ((ssize_t )tmp___3);
  }
}
}
static ssize_t show_board(struct device *device , struct device_attribute *attr ,
                          char *buf )
{ struct mthca_dev *dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)device;
  dev = (struct mthca_dev *)__mptr + 0xfffffffffffffc80UL;
  tmp = sprintf(buf, "%.*s\n", 64, (char *)(& dev->board_id));
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hw_rev = {{"hw_rev", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_rev,
    0};
static struct device_attribute dev_attr_fw_ver = {{"fw_ver", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_fw_ver,
    0};
static struct device_attribute dev_attr_hca_type = {{"hca_type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_hca, 0};
static struct device_attribute dev_attr_board_id = {{"board_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_board, 0};
static struct device_attribute *mthca_dev_attributes[4U] = { & dev_attr_hw_rev, & dev_attr_fw_ver, & dev_attr_hca_type, & dev_attr_board_id};
static int mthca_init_node_data(struct mthca_dev *dev )
{ struct ib_smp *in_mad ;
  struct ib_smp *out_mad ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  in_mad = 0;
  out_mad = 0;
  err = -12;
  tmp = kzalloc(256UL, 208U);
  in_mad = (struct ib_smp *)tmp;
  tmp___0 = kmalloc(256UL, 208U);
  out_mad = (struct ib_smp *)tmp___0;
  if ((unsigned long )in_mad == (unsigned long )((struct ib_smp *)0) || (unsigned long )out_mad == (unsigned long )((struct ib_smp *)0)) {
    goto out;
  } else {
  }
  init_query_mad(in_mad);
  in_mad->attr_id = 4096U;
  err = mthca_MAD_IFC(dev, 1, 1, 1, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  __len = 64UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& dev->ib_dev.node_desc), (void const *)(& out_mad->data),
                     __len);
  } else {
    __ret = memcpy((void *)(& dev->ib_dev.node_desc), (void const *)(& out_mad->data),
                             __len);
  }
  in_mad->attr_id = 4352U;
  err = mthca_MAD_IFC(dev, 1, 1, 1, 0, 0, (void *)in_mad, (void *)out_mad);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    dev->rev_id = __be32_to_cpup((__be32 const *)(& out_mad->data) + 32U);
  } else {
  }
  __len___0 = 8UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& dev->ib_dev.node_guid), (void const *)(& out_mad->data) + 12U,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& dev->ib_dev.node_guid), (void const *)(& out_mad->data) + 12U,
                                 __len___0);
  }
  out:
  kfree((void const *)in_mad);
  kfree((void const *)out_mad);
  return (err);
}
}
int mthca_register_device(struct mthca_dev *dev )
{ int ret ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct lock_class_key __key ;
  {
  ret = mthca_init_node_data(dev);
  if (ret != 0) {
    return (ret);
  } else {
  }
  strlcpy((char *)(& dev->ib_dev.name), "mthca%d", 64UL);
  dev->ib_dev.owner = & __this_module;
  dev->ib_dev.uverbs_abi_ver = 1;
  dev->ib_dev.uverbs_cmd_mask = 3474858527ULL;
  dev->ib_dev.node_type = 1U;
  dev->ib_dev.phys_port_cnt = (u8 )dev->limits.num_ports;
  dev->ib_dev.num_comp_vectors = 1;
  dev->ib_dev.dma_device = & (dev->pdev)->dev;
  dev->ib_dev.query_device = & mthca_query_device;
  dev->ib_dev.query_port = & mthca_query_port;
  dev->ib_dev.modify_device = & mthca_modify_device;
  dev->ib_dev.modify_port = & mthca_modify_port;
  dev->ib_dev.query_pkey = & mthca_query_pkey;
  dev->ib_dev.query_gid = & mthca_query_gid;
  dev->ib_dev.alloc_ucontext = & mthca_alloc_ucontext;
  dev->ib_dev.dealloc_ucontext = & mthca_dealloc_ucontext;
  dev->ib_dev.mmap = & mthca_mmap_uar;
  dev->ib_dev.alloc_pd = & mthca_alloc_pd;
  dev->ib_dev.dealloc_pd = & mthca_dealloc_pd;
  dev->ib_dev.create_ah = & mthca_ah_create;
  dev->ib_dev.query_ah = & mthca_ah_query;
  dev->ib_dev.destroy_ah = & mthca_ah_destroy;
  if ((dev->mthca_flags & 4UL) != 0UL) {
    dev->ib_dev.create_srq = & mthca_create_srq;
    dev->ib_dev.modify_srq = & mthca_modify_srq;
    dev->ib_dev.query_srq = & mthca_query_srq;
    dev->ib_dev.destroy_srq = & mthca_destroy_srq;
    dev->ib_dev.uverbs_cmd_mask = dev->ib_dev.uverbs_cmd_mask | 64424509440ULL;
    tmp = mthca_is_memfree(dev);
    if (tmp != 0) {
      dev->ib_dev.post_srq_recv = & mthca_arbel_post_srq_recv;
    } else {
      dev->ib_dev.post_srq_recv = & mthca_tavor_post_srq_recv;
    }
  } else {
  }
  dev->ib_dev.create_qp = & mthca_create_qp;
  dev->ib_dev.modify_qp = & mthca_modify_qp;
  dev->ib_dev.query_qp = & mthca_query_qp;
  dev->ib_dev.destroy_qp = & mthca_destroy_qp;
  dev->ib_dev.create_cq = & mthca_create_cq;
  dev->ib_dev.resize_cq = & mthca_resize_cq;
  dev->ib_dev.destroy_cq = & mthca_destroy_cq;
  dev->ib_dev.poll_cq = & mthca_poll_cq;
  dev->ib_dev.get_dma_mr = & mthca_get_dma_mr;
  dev->ib_dev.reg_phys_mr = & mthca_reg_phys_mr;
  dev->ib_dev.reg_user_mr = & mthca_reg_user_mr;
  dev->ib_dev.dereg_mr = & mthca_dereg_mr;
  if ((dev->mthca_flags & 32UL) != 0UL) {
    dev->ib_dev.alloc_fmr = & mthca_alloc_fmr;
    dev->ib_dev.unmap_fmr = & mthca_unmap_fmr;
    dev->ib_dev.dealloc_fmr = & mthca_dealloc_fmr;
    tmp___0 = mthca_is_memfree(dev);
    if (tmp___0 != 0) {
      dev->ib_dev.map_phys_fmr = & mthca_arbel_map_phys_fmr;
    } else {
      dev->ib_dev.map_phys_fmr = & mthca_tavor_map_phys_fmr;
    }
  } else {
  }
  dev->ib_dev.attach_mcast = & mthca_multicast_attach;
  dev->ib_dev.detach_mcast = & mthca_multicast_detach;
  dev->ib_dev.process_mad = & mthca_process_mad;
  tmp___1 = mthca_is_memfree(dev);
  if (tmp___1 != 0) {
    dev->ib_dev.req_notify_cq = & mthca_arbel_arm_cq;
    dev->ib_dev.post_send = & mthca_arbel_post_send;
    dev->ib_dev.post_recv = & mthca_arbel_post_receive;
  } else {
    dev->ib_dev.req_notify_cq = & mthca_tavor_arm_cq;
    dev->ib_dev.post_send = & mthca_tavor_post_send;
    dev->ib_dev.post_recv = & mthca_tavor_post_receive;
  }
  __mutex_init(& dev->cap_mask_mutex, "&dev->cap_mask_mutex", & __key);
  ret = ib_register_device(& dev->ib_dev, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  goto ldv_27664;
  ldv_27663:
  ret = device_create_file(& dev->ib_dev.dev, (struct device_attribute const *)mthca_dev_attributes[i]);
  if (ret != 0) {
    ib_unregister_device(& dev->ib_dev);
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_27664: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_27663;
  } else {
    goto ldv_27665;
  }
  ldv_27665:
  mthca_start_catas_poll(dev);
  return (0);
}
}
void mthca_unregister_device(struct mthca_dev *dev )
{
  {
  mthca_stop_catas_poll(dev);
  ib_unregister_device(& dev->ib_dev);
  return;
}
}
struct device_attribute *ldvarg11 ;
char *ldvarg7 ;
struct device *ldvarg3 ;
struct device *ldvarg0 ;
struct device_attribute *ldvarg5 ;
struct device *ldvarg6 ;
struct device_attribute *ldvarg8 ;
char *ldvarg1 ;
char *ldvarg4 ;
char *ldvarg10 ;
struct device *ldvarg9 ;
struct device_attribute *ldvarg2 ;
void ldv_main_exported_4(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    show_rev(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_27685;
  default: ;
  goto ldv_27685;
  }
  ldv_27685: ;
  return;
}
}
void ldv_main_exported_1(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_1 == 1) {
    show_board(ldvarg3, ldvarg5, ldvarg4);
    ldv_state_variable_1 = 1;
  } else {
  }
  goto ldv_27691;
  default: ;
  goto ldv_27691;
  }
  ldv_27691: ;
  return;
}
}
void ldv_main_exported_3(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    show_fw_ver(ldvarg6, ldvarg8, ldvarg7);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_27697;
  default: ;
  goto ldv_27697;
  }
  ldv_27697: ;
  return;
}
}
void ldv_main_exported_2(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    show_hca(ldvarg9, ldvarg11, ldvarg10);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_27703;
  default: ;
  goto ldv_27703;
  }
  ldv_27703: ;
  return;
}
}
void ldv_mutex_lock_177(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_178(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_179(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_180(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_181(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_182(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_183(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_184(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_185(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_186(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_187(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cap_mask_mutex_of_mthca_dev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_188(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_cq(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_189(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_cq(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
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
extern unsigned long __phys_addr(unsigned long ) ;
extern int __bitmap_empty(unsigned long const * , int ) ;
extern int __bitmap_full(unsigned long const * , int ) ;
__inline static int bitmap_empty(unsigned long const *src , int nbits )
{ int tmp___0 ;
  {
  tmp___0 = __bitmap_empty(src, nbits);
  return (tmp___0);
}
}
__inline static int bitmap_full(unsigned long const *src , int nbits )
{ int tmp___0 ;
  {
  tmp___0 = __bitmap_full(src, nbits);
  return (tmp___0);
}
}
int ldv_mutex_trylock_208(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_206(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_211(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_213(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_215(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_217(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_219(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_221(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_223(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_203(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_205(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_207(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_210(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_212(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_214(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_216(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_218(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_220(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_222(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_mthca_db_table(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_db_table(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_mthca_icm_table(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_icm_table(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_mthca_user_db_table(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_user_db_table(struct mutex *lock ) ;
extern void put_page(struct page * ) ;
extern int get_user_pages(struct task_struct * , struct mm_struct * , unsigned long ,
                          int , int , int , struct page ** , struct vm_area_struct ** ) ;
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{ unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    ldv_15249: ;
    goto ldv_15249;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    ldv_15250: ;
    goto ldv_15250;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    ldv_15251: ;
    goto ldv_15251;
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
{ long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_15261: ;
    goto ldv_15261;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_15262: ;
    goto ldv_15262;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void sg_set_buf(struct scatterlist *sg , void const *buf , unsigned int buflen )
{ unsigned long tmp ;
  {
  tmp = __phys_addr((unsigned long )buf);
  sg_set_page(sg, 0xffffea0000000000UL + (tmp >> 12), buflen, (unsigned int )((long )buf) & 4095U);
  return;
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{ struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
int mthca_init_db_tab(struct mthca_dev *dev ) ;
void mthca_cleanup_db_tab(struct mthca_dev *dev ) ;
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_22908;
  ldv_22907:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_22908: ;
  if (i < nents) {
    goto ldv_22907;
  } else {
    goto ldv_22909;
  }
  ldv_22909:
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_22910: ;
    goto ldv_22910;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (65), "i" (12UL));
    ldv_22919: ;
    goto ldv_22919;
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
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{ struct device *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0)) {
    tmp = & hwdev->dev;
  } else {
    tmp = 0;
  }
  tmp___0 = dma_map_sg_attrs(tmp, sg, nents, (enum dma_data_direction )direction,
                             0);
  return (tmp___0);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{ struct device *tmp ;
  {
  if ((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0)) {
    tmp = & hwdev->dev;
  } else {
    tmp = 0;
  }
  dma_unmap_sg_attrs(tmp, sg, nents, (enum dma_data_direction )direction, 0);
  return;
}
}
static void mthca_free_icm_pages(struct mthca_dev *dev , struct mthca_icm_chunk *chunk )
{ int i ;
  int tmp ;
  struct page *tmp___0 ;
  {
  if (chunk->nsg > 0) {
    pci_unmap_sg(dev->pdev, (struct scatterlist *)(& chunk->mem), chunk->npages, 0);
  } else {
  }
  i = 0;
  goto ldv_26456;
  ldv_26455:
  tmp = __get_order((unsigned long )chunk->mem[i].length);
  tmp___0 = sg_page((struct scatterlist *)(& chunk->mem) + (unsigned long )i);
  __free_pages(tmp___0, (unsigned int )tmp);
  i = i + 1;
  ldv_26456: ;
  if (chunk->npages > i) {
    goto ldv_26455;
  } else {
    goto ldv_26457;
  }
  ldv_26457: ;
  return;
}
}
static void mthca_free_icm_coherent(struct mthca_dev *dev , struct mthca_icm_chunk *chunk )
{ int i ;
  struct page *tmp ;
  void *tmp___0 ;
  {
  i = 0;
  goto ldv_26464;
  ldv_26463:
  tmp = sg_page((struct scatterlist *)(& chunk->mem) + (unsigned long )i);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  dma_free_attrs(& (dev->pdev)->dev, (size_t )chunk->mem[i].length, tmp___0, ((struct scatterlist *)(& chunk->mem) + (unsigned long )i)->dma_address,
                 0);
  i = i + 1;
  ldv_26464: ;
  if (chunk->npages > i) {
    goto ldv_26463;
  } else {
    goto ldv_26465;
  }
  ldv_26465: ;
  return;
}
}
void mthca_free_icm(struct mthca_dev *dev , struct mthca_icm *icm , int coherent )
{ struct mthca_icm_chunk *chunk ;
  struct mthca_icm_chunk *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned long )icm == (unsigned long )((struct mthca_icm *)0)) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)icm->chunk_list.next;
  chunk = (struct mthca_icm_chunk *)__mptr;
  __mptr___0 = (struct list_head const *)chunk->list.next;
  tmp = (struct mthca_icm_chunk *)__mptr___0;
  goto ldv_26480;
  ldv_26479: ;
  if (coherent != 0) {
    mthca_free_icm_coherent(dev, chunk);
  } else {
    mthca_free_icm_pages(dev, chunk);
  }
  kfree((void const *)chunk);
  chunk = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct mthca_icm_chunk *)__mptr___1;
  ldv_26480: ;
  if ((unsigned long )chunk != (unsigned long )icm) {
    goto ldv_26479;
  } else {
    goto ldv_26481;
  }
  ldv_26481:
  kfree((void const *)icm);
  return;
}
}
static int mthca_alloc_icm_pages(struct scatterlist *mem , int order , gfp_t gfp_mask )
{ struct page *page ;
  {
  page = alloc_pages(gfp_mask | 32768U, (unsigned int )order);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  sg_set_page(mem, page, (unsigned int )(4096UL << order), 0U);
  return (0);
}
}
static int mthca_alloc_icm_coherent(struct device *dev , struct scatterlist *mem ,
                                    int order , gfp_t gfp_mask )
{ void *buf ;
  void *tmp ;
  long tmp___0 ;
  {
  tmp = dma_alloc_attrs(dev, 4096UL << order, & mem->dma_address, gfp_mask, 0);
  buf = tmp;
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  sg_set_buf(mem, (void const *)buf, (unsigned int )(4096UL << order));
  tmp___0 = ldv__builtin_expect(mem->offset != 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_memfree.c.prepared"),
                         "i" (252), "i" (12UL));
    ldv_26495: ;
    goto ldv_26495;
  } else {
  }
  mem->dma_length = (unsigned int )(4096UL << order);
  return (0);
}
}
struct mthca_icm *mthca_alloc_icm(struct mthca_dev *dev , int npages , gfp_t gfp_mask ,
                                  int coherent )
{ struct mthca_icm *icm ;
  struct mthca_icm_chunk *chunk ;
  int cur_order ;
  int ret ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  chunk = 0;
  tmp = ldv__builtin_expect(coherent != 0, 0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect((gfp_mask & 2U) != 0U, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/infiniband/hw/mthca/ib_mthca.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/29/dscv_tempdir/dscv/ri/32_7a/drivers/infiniband/hw/mthca/mthca_memfree.c.prepared"),
                           "i" (266), "i" (12UL));
      ldv_26506: ;
      goto ldv_26506;
    } else {
    }
  } else {
  }
  tmp___1 = kmalloc(24UL, gfp_mask & 4294966781U);
  icm = (struct mthca_icm *)tmp___1;
  if ((unsigned long )icm == (unsigned long )((struct mthca_icm *)0)) {
    return (icm);
  } else {
  }
  icm->refcount = 0;
  INIT_LIST_HEAD(& icm->chunk_list);
  cur_order = 6;
  goto ldv_26512;
  ldv_26511: ;
  if ((unsigned long )chunk == (unsigned long )((struct mthca_icm_chunk *)0)) {
    tmp___2 = kmalloc(224UL, gfp_mask & 4294966781U);
    chunk = (struct mthca_icm_chunk *)tmp___2;
    if ((unsigned long )chunk == (unsigned long )((struct mthca_icm_chunk *)0)) {
      goto fail;
    } else {
    }
    sg_init_table((struct scatterlist *)(& chunk->mem), 5U);
    chunk->npages = 0;
    chunk->nsg = 0;
    list_add_tail(& chunk->list, & icm->chunk_list);
  } else {
  }
  goto ldv_26509;
  ldv_26508:
  cur_order = cur_order - 1;
  ldv_26509: ;
  if (1 << cur_order > npages) {
    goto ldv_26508;
  } else {
    goto ldv_26510;
  }
  ldv_26510: ;
  if (coherent != 0) {
    ret = mthca_alloc_icm_coherent(& (dev->pdev)->dev, (struct scatterlist *)(& chunk->mem) + (unsigned long )chunk->npages,
                                   cur_order, gfp_mask);
  } else {
    ret = mthca_alloc_icm_pages((struct scatterlist *)(& chunk->mem) + (unsigned long )chunk->npages,
                                cur_order, gfp_mask);
  }
  if (ret == 0) {
    chunk->npages = chunk->npages + 1;
    if (coherent != 0) {
      chunk->nsg = chunk->nsg + 1;
    } else
    if (chunk->npages == 5) {
      chunk->nsg = pci_map_sg(dev->pdev, (struct scatterlist *)(& chunk->mem), chunk->npages,
                              0);
      if (chunk->nsg <= 0) {
        goto fail;
      } else {
      }
    } else {
    }
    if (chunk->npages == 5) {
      chunk = 0;
    } else {
    }
    npages = npages - (1 << cur_order);
  } else {
    cur_order = cur_order - 1;
    if (cur_order < 0) {
      goto fail;
    } else {
    }
  }
  ldv_26512: ;
  if (npages > 0) {
    goto ldv_26511;
  } else {
    goto ldv_26513;
  }
  ldv_26513: ;
  if (coherent == 0 && (unsigned long )chunk != (unsigned long )((struct mthca_icm_chunk *)0)) {
    chunk->nsg = pci_map_sg(dev->pdev, (struct scatterlist *)(& chunk->mem), chunk->npages,
                            0);
    if (chunk->nsg <= 0) {
      goto fail;
    } else {
    }
  } else {
  }
  return (icm);
  fail:
  mthca_free_icm(dev, icm, coherent);
  return (0);
}
}
int mthca_table_get(struct mthca_dev *dev , struct mthca_icm_table *table , int obj )
{ int i ;
  int ret ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  i = (((table->num_obj + -1) & obj) * table->obj_size) / 262144;
  ret = 0;
  ldv_mutex_lock_210(& table->mutex);
  if ((unsigned long )table->icm[i] != (unsigned long )((struct mthca_icm *)0)) {
    (table->icm[i])->refcount = (table->icm[i])->refcount + 1;
    goto out;
  } else {
  }
  if (table->lowmem != 0) {
    tmp = 720U;
  } else {
    tmp = 131794U;
  }
  table->icm[i] = mthca_alloc_icm(dev, 64, tmp, table->coherent);
  if ((unsigned long )table->icm[i] == (unsigned long )((struct mthca_icm *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  tmp___0 = mthca_MAP_ICM(dev, table->icm[i], table->virt + (u64 )(i * 262144));
  if (tmp___0 != 0) {
    mthca_free_icm(dev, table->icm[i], table->coherent);
    table->icm[i] = 0;
    ret = -12;
    goto out;
  } else {
  }
  (table->icm[i])->refcount = (table->icm[i])->refcount + 1;
  out:
  ldv_mutex_unlock_211(& table->mutex);
  return (ret);
}
}
void mthca_table_put(struct mthca_dev *dev , struct mthca_icm_table *table , int obj )
{ int i ;
  int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  i = (((table->num_obj + -1) & obj) * table->obj_size) / 262144;
  ldv_mutex_lock_212(& table->mutex);
  (table->icm[i])->refcount = (table->icm[i])->refcount - 1;
  if ((table->icm[i])->refcount == 0) {
    mthca_UNMAP_ICM(dev, table->virt + (u64 )(i * 262144), 64U);
    mthca_free_icm(dev, table->icm[i], table->coherent);
    table->icm[i] = 0;
  } else {
  }
  ldv_mutex_unlock_213(& table->mutex);
  return;
}
}
void *mthca_table_find(struct mthca_icm_table *table , int obj , dma_addr_t *dma_handle )
{ int idx ;
  int offset ;
  int dma_offset ;
  int i ;
  struct mthca_icm_chunk *chunk ;
  struct mthca_icm *icm ;
  struct page *page ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp ;
  void *tmp___0 ;
  {
  page = 0;
  if (table->lowmem == 0) {
    return (0);
  } else {
  }
  ldv_mutex_lock_214(& table->mutex);
  idx = ((table->num_obj + -1) & obj) * table->obj_size;
  icm = table->icm[idx / 262144];
  offset = idx % 262144;
  dma_offset = offset;
  if ((unsigned long )icm == (unsigned long )((struct mthca_icm *)0)) {
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)icm->chunk_list.next;
  chunk = (struct mthca_icm_chunk *)__mptr;
  goto ldv_26549;
  ldv_26548:
  i = 0;
  goto ldv_26546;
  ldv_26545: ;
  if ((unsigned long )dma_handle != (unsigned long )((dma_addr_t *)0) && dma_offset >= 0) {
    if (((struct scatterlist *)(& chunk->mem) + (unsigned long )i)->dma_length > (unsigned int )dma_offset) {
      *dma_handle = ((struct scatterlist *)(& chunk->mem) + (unsigned long )i)->dma_address + (dma_addr_t )dma_offset;
    } else {
    }
    dma_offset = (int )((unsigned int )dma_offset - ((struct scatterlist *)(& chunk->mem) + (unsigned long )i)->dma_length);
  } else {
  }
  if (chunk->mem[i].length > (unsigned int )offset) {
    page = sg_page((struct scatterlist *)(& chunk->mem) + (unsigned long )i);
    goto out;
  } else {
  }
  offset = (int )((unsigned int )offset - chunk->mem[i].length);
  i = i + 1;
  ldv_26546: ;
  if (chunk->npages > i) {
    goto ldv_26545;
  } else {
    goto ldv_26547;
  }
  ldv_26547:
  __mptr___0 = (struct list_head const *)chunk->list.next;
  chunk = (struct mthca_icm_chunk *)__mptr___0;
  ldv_26549: ;
  if ((unsigned long )chunk != (unsigned long )icm) {
    goto ldv_26548;
  } else {
    goto ldv_26550;
  }
  ldv_26550: ;
  out:
  ldv_mutex_unlock_215(& table->mutex);
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    tmp = lowmem_page_address((struct page const *)page);
    tmp___0 = tmp + (unsigned long )offset;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
int mthca_table_get_range(struct mthca_dev *dev , struct mthca_icm_table *table ,
                          int start , int end )
{ int inc ;
  int i ;
  int err ;
  {
  inc = 262144 / table->obj_size;
  i = start;
  goto ldv_26562;
  ldv_26561:
  err = mthca_table_get(dev, table, i);
  if (err != 0) {
    goto fail;
  } else {
  }
  i = i + inc;
  ldv_26562: ;
  if (i <= end) {
    goto ldv_26561;
  } else {
    goto ldv_26563;
  }
  ldv_26563: ;
  return (0);
  fail: ;
  goto ldv_26565;
  ldv_26564:
  i = i - inc;
  mthca_table_put(dev, table, i);
  ldv_26565: ;
  if (i > start) {
    goto ldv_26564;
  } else {
    goto ldv_26566;
  }
  ldv_26566: ;
  return (err);
}
}
void mthca_table_put_range(struct mthca_dev *dev , struct mthca_icm_table *table ,
                           int start , int end )
{ int i ;
  int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  i = start;
  goto ldv_26575;
  ldv_26574:
  mthca_table_put(dev, table, i);
  i = 262144 / table->obj_size + i;
  ldv_26575: ;
  if (i <= end) {
    goto ldv_26574;
  } else {
    goto ldv_26576;
  }
  ldv_26576: ;
  return;
}
}
struct mthca_icm_table *mthca_alloc_icm_table(struct mthca_dev *dev , u64 virt , int obj_size ,
                                              int nobj , int reserved , int use_lowmem ,
                                              int use_coherent )
{ struct mthca_icm_table *table ;
  int obj_per_chunk ;
  int num_icm ;
  unsigned int chunk_size ;
  int i ;
  void *tmp ;
  struct lock_class_key __key ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  obj_per_chunk = 262144 / obj_size;
  num_icm = ((nobj + obj_per_chunk) + -1) / obj_per_chunk;
  tmp = kmalloc(((unsigned long )num_icm + 25UL) * 8UL, 208U);
  table = (struct mthca_icm_table *)tmp;
  if ((unsigned long )table == (unsigned long )((struct mthca_icm_table *)0)) {
    return (0);
  } else {
  }
  table->virt = virt;
  table->num_icm = num_icm;
  table->num_obj = nobj;
  table->obj_size = obj_size;
  table->lowmem = use_lowmem;
  table->coherent = use_coherent;
  __mutex_init(& table->mutex, "&table->mutex", & __key);
  i = 0;
  goto ldv_26593;
  ldv_26592:
  table->icm[i] = 0;
  i = i + 1;
  ldv_26593: ;
  if (i < num_icm) {
    goto ldv_26592;
  } else {
    goto ldv_26594;
  }
  ldv_26594:
  i = 0;
  goto ldv_26597;
  ldv_26596:
  chunk_size = 262144U;
  if ((i + 1) * 262144 > nobj * obj_size) {
    chunk_size = (unsigned int )(nobj * obj_size + i * -262144);
  } else {
  }
  if (use_lowmem != 0) {
    tmp___0 = 720U;
  } else {
    tmp___0 = 131794U;
  }
  table->icm[i] = mthca_alloc_icm(dev, (int )(chunk_size >> 12), tmp___0, use_coherent);
  if ((unsigned long )table->icm[i] == (unsigned long )((struct mthca_icm *)0)) {
    goto err;
  } else {
  }
  tmp___1 = mthca_MAP_ICM(dev, table->icm[i], (u64 )(i * 262144) + virt);
  if (tmp___1 != 0) {
    mthca_free_icm(dev, table->icm[i], table->coherent);
    table->icm[i] = 0;
    goto err;
  } else {
  }
  (table->icm[i])->refcount = (table->icm[i])->refcount + 1;
  i = i + 1;
  ldv_26597: ;
  if (i * 262144 < reserved * obj_size) {
    goto ldv_26596;
  } else {
    goto ldv_26598;
  }
  ldv_26598: ;
  return (table);
  err:
  i = 0;
  goto ldv_26600;
  ldv_26599: ;
  if ((unsigned long )table->icm[i] != (unsigned long )((struct mthca_icm *)0)) {
    mthca_UNMAP_ICM(dev, (u64 )(i * 262144) + virt, 64U);
    mthca_free_icm(dev, table->icm[i], table->coherent);
  } else {
  }
  i = i + 1;
  ldv_26600: ;
  if (i < num_icm) {
    goto ldv_26599;
  } else {
    goto ldv_26601;
  }
  ldv_26601:
  kfree((void const *)table);
  return (0);
}
}
void mthca_free_icm_table(struct mthca_dev *dev , struct mthca_icm_table *table )
{ int i ;
  {
  i = 0;
  goto ldv_26608;
  ldv_26607: ;
  if ((unsigned long )table->icm[i] != (unsigned long )((struct mthca_icm *)0)) {
    mthca_UNMAP_ICM(dev, table->virt + (u64 )(i * 262144), 64U);
    mthca_free_icm(dev, table->icm[i], table->coherent);
  } else {
  }
  i = i + 1;
  ldv_26608: ;
  if (table->num_icm > i) {
    goto ldv_26607;
  } else {
    goto ldv_26609;
  }
  ldv_26609:
  kfree((void const *)table);
  return;
}
}
static u64 mthca_uarc_virt(struct mthca_dev *dev , struct mthca_uar *uar , int page )
{
  {
  return ((dev->uar_table.uarc_base + (u64 )(uar->index * dev->uar_table.uarc_size)) + (u64 )(page * 4096));
}
}
int mthca_map_user_db(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab ,
                      int index , u64 uaddr )
{ struct page *pages[1U] ;
  int ret ;
  int i ;
  int tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  u64 tmp___2 ;
  struct page *tmp___3 ;
  {
  ret = 0;
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  if (index < 0 || dev->uar_table.uarc_size / 8 < index) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_216(& db_tab->mutex);
  i = index / 512;
  if ((db_tab->page[i].refcount > 511 || (db_tab->page[i].uvirt != 0ULL && db_tab->page[i].uvirt != uaddr)) || (uaddr & 4095ULL) != 0ULL) {
    ret = -22;
    goto out;
  } else {
  }
  if (db_tab->page[i].refcount != 0) {
    db_tab->page[i].refcount = db_tab->page[i].refcount + 1;
    goto out;
  } else {
  }
  tmp___0 = get_current();
  tmp___1 = get_current();
  ret = get_user_pages(tmp___1, tmp___0->mm, (unsigned long )uaddr & 0xfffffffffffff000UL,
                       1, 1, 0, (struct page **)(& pages), 0);
  if (ret < 0) {
    goto out;
  } else {
  }
  sg_set_page(& db_tab->page[i].mem, pages[0], 4096U, (unsigned int )uaddr & 4095U);
  ret = pci_map_sg(dev->pdev, & db_tab->page[i].mem, 1, 1);
  if (ret < 0) {
    put_page(pages[0]);
    goto out;
  } else {
  }
  tmp___2 = mthca_uarc_virt(dev, uar, i);
  ret = mthca_MAP_ICM_page(dev, db_tab->page[i].mem.dma_address, tmp___2);
  if (ret != 0) {
    pci_unmap_sg(dev->pdev, & db_tab->page[i].mem, 1, 1);
    tmp___3 = sg_page(& db_tab->page[i].mem);
    put_page(tmp___3);
    goto out;
  } else {
  }
  db_tab->page[i].uvirt = uaddr;
  db_tab->page[i].refcount = 1;
  out:
  ldv_mutex_unlock_217(& db_tab->mutex);
  return (ret);
}
}
void mthca_unmap_user_db(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab ,
                         int index )
{ int tmp ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  ldv_mutex_lock_218(& db_tab->mutex);
  db_tab->page[index / 512].refcount = db_tab->page[index / 512].refcount - 1;
  ldv_mutex_unlock_219(& db_tab->mutex);
  return;
}
}
struct mthca_user_db_table *mthca_init_user_db_tab(struct mthca_dev *dev )
{ struct mthca_user_db_table *db_tab ;
  int npages ;
  int i ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  npages = dev->uar_table.uarc_size / 4096;
  tmp___0 = kmalloc((unsigned long )npages * 56UL + 168UL, 208U);
  db_tab = (struct mthca_user_db_table *)tmp___0;
  if ((unsigned long )db_tab == (unsigned long )((struct mthca_user_db_table *)0)) {
    tmp___1 = ERR_PTR(-12L);
    return ((struct mthca_user_db_table *)tmp___1);
  } else {
  }
  __mutex_init(& db_tab->mutex, "&db_tab->mutex", & __key);
  i = 0;
  goto ldv_26640;
  ldv_26639:
  db_tab->page[i].refcount = 0;
  db_tab->page[i].uvirt = 0ULL;
  sg_init_table(& db_tab->page[i].mem, 1U);
  i = i + 1;
  ldv_26640: ;
  if (i < npages) {
    goto ldv_26639;
  } else {
    goto ldv_26641;
  }
  ldv_26641: ;
  return (db_tab);
}
}
void mthca_cleanup_user_db_tab(struct mthca_dev *dev , struct mthca_uar *uar , struct mthca_user_db_table *db_tab )
{ int i ;
  int tmp ;
  u64 tmp___0 ;
  struct page *tmp___1 ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_26649;
  ldv_26648: ;
  if (db_tab->page[i].uvirt != 0ULL) {
    tmp___0 = mthca_uarc_virt(dev, uar, i);
    mthca_UNMAP_ICM(dev, tmp___0, 1U);
    pci_unmap_sg(dev->pdev, & db_tab->page[i].mem, 1, 1);
    tmp___1 = sg_page(& db_tab->page[i].mem);
    put_page(tmp___1);
  } else {
  }
  i = i + 1;
  ldv_26649: ;
  if (dev->uar_table.uarc_size / 4096 > i) {
    goto ldv_26648;
  } else {
    goto ldv_26650;
  }
  ldv_26650:
  kfree((void const *)db_tab);
  return;
}
}
int mthca_alloc_db(struct mthca_dev *dev , enum mthca_db_type type , u32 qn , __be32 **db )
{ int group ;
  int start ;
  int end ;
  int dir ;
  int i ;
  int j ;
  struct mthca_db_page *page ;
  int ret ;
  int tmp ;
  void *tmp___0 ;
  u64 tmp___1 ;
  unsigned long tmp___2 ;
  __u64 tmp___3 ;
  {
  ret = 0;
  ldv_mutex_lock_220(& (dev->db_tab)->mutex);
  switch ((unsigned int )type) {
  case 2: ;
  case 3:
  group = 0;
  start = 0;
  end = (dev->db_tab)->max_group1;
  dir = 1;
  goto ldv_26667;
  case 1: ;
  case 4: ;
  case 5:
  group = 1;
  start = (dev->db_tab)->npages + -1;
  end = (dev->db_tab)->min_group2;
  dir = -1;
  goto ldv_26667;
  default:
  ret = -22;
  goto out;
  }
  ldv_26667:
  i = start;
  goto ldv_26675;
  ldv_26674: ;
  if ((unsigned long )((dev->db_tab)->page + (unsigned long )i)->db_rec != (unsigned long )((__be64 *)0)) {
    tmp = bitmap_full((unsigned long const *)(& ((dev->db_tab)->page + (unsigned long )i)->used),
                      512);
    if (tmp == 0) {
      page = (dev->db_tab)->page + (unsigned long )i;
      goto found;
    } else {
    }
  } else {
  }
  i = i + dir;
  ldv_26675: ;
  if (i != end) {
    goto ldv_26674;
  } else {
    goto ldv_26676;
  }
  ldv_26676:
  i = start;
  goto ldv_26679;
  ldv_26678: ;
  if ((unsigned long )((dev->db_tab)->page + (unsigned long )i)->db_rec == (unsigned long )((__be64 *)0)) {
    page = (dev->db_tab)->page + (unsigned long )i;
    goto alloc;
  } else {
  }
  i = i + dir;
  ldv_26679: ;
  if (i != end) {
    goto ldv_26678;
  } else {
    goto ldv_26680;
  }
  ldv_26680: ;
  if ((dev->db_tab)->max_group1 >= (dev->db_tab)->min_group2 + -1) {
    ret = -12;
    goto out;
  } else {
  }
  if (group == 0) {
    (dev->db_tab)->max_group1 = (dev->db_tab)->max_group1 + 1;
  } else {
    (dev->db_tab)->min_group2 = (dev->db_tab)->min_group2 - 1;
  }
  page = (dev->db_tab)->page + (unsigned long )end;
  alloc:
  tmp___0 = dma_alloc_attrs(& (dev->pdev)->dev, 4096UL, & page->mapping, 208U, 0);
  page->db_rec = (__be64 *)tmp___0;
  if ((unsigned long )page->db_rec == (unsigned long )((__be64 *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  memset((void *)page->db_rec, 0, 4096UL);
  tmp___1 = mthca_uarc_virt(dev, & dev->driver_uar, i);
  ret = mthca_MAP_ICM_page(dev, page->mapping, tmp___1);
  if (ret != 0) {
    dma_free_attrs(& (dev->pdev)->dev, 4096UL, (void *)page->db_rec, page->mapping,
                   0);
    goto out;
  } else {
  }
  bitmap_zero((unsigned long *)(& page->used), 512);
  found:
  tmp___2 = find_first_zero_bit((unsigned long const *)(& page->used), 512UL);
  j = (int )tmp___2;
  set_bit((unsigned int )j, (unsigned long volatile *)(& page->used));
  if (group == 1) {
    j = 511 - j;
  } else {
  }
  ret = i * 512 + j;
  tmp___3 = __fswab64((__u64 )((qn << 8) | ((unsigned int )type << 5)));
  *(page->db_rec + (unsigned long )j) = tmp___3;
  *db = (__be32 *)page->db_rec + (unsigned long )j;
  out:
  ldv_mutex_unlock_221(& (dev->db_tab)->mutex);
  return (ret);
}
}
void mthca_free_db(struct mthca_dev *dev , int type , int db_index )
{ int i ;
  int j ;
  struct mthca_db_page *page ;
  u64 tmp ;
  int tmp___0 ;
  {
  i = db_index / 512;
  j = db_index % 512;
  page = (dev->db_tab)->page + (unsigned long )i;
  ldv_mutex_lock_222(& (dev->db_tab)->mutex);
  *(page->db_rec + (unsigned long )j) = 0ULL;
  if ((dev->db_tab)->min_group2 <= i) {
    j = 511 - j;
  } else {
  }
  clear_bit(j, (unsigned long volatile *)(& page->used));
  tmp___0 = bitmap_empty((unsigned long const *)(& page->used), 512);
  if (tmp___0 != 0 && (dev->db_tab)->max_group1 + -1 <= i) {
    tmp = mthca_uarc_virt(dev, & dev->driver_uar, i);
    mthca_UNMAP_ICM(dev, tmp, 1U);
    dma_free_attrs(& (dev->pdev)->dev, 4096UL, (void *)page->db_rec, page->mapping,
                   0);
    page->db_rec = 0;
    if ((dev->db_tab)->max_group1 == i) {
      (dev->db_tab)->max_group1 = (dev->db_tab)->max_group1 - 1;
    } else {
    }
    if ((dev->db_tab)->min_group2 == i) {
      (dev->db_tab)->min_group2 = (dev->db_tab)->min_group2 + 1;
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_223(& (dev->db_tab)->mutex);
  return;
}
}
int mthca_init_db_tab(struct mthca_dev *dev )
{ int i ;
  int tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  void *tmp___1 ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  tmp___0 = kmalloc(192UL, 208U);
  dev->db_tab = (struct mthca_db_table *)tmp___0;
  if ((unsigned long )dev->db_tab == (unsigned long )((struct mthca_db_table *)0)) {
    return (-12);
  } else {
  }
  __mutex_init(& (dev->db_tab)->mutex, "&dev->db_tab->mutex", & __key);
  (dev->db_tab)->npages = dev->uar_table.uarc_size / 4096;
  (dev->db_tab)->max_group1 = 0;
  (dev->db_tab)->min_group2 = (dev->db_tab)->npages + -1;
  tmp___1 = kmalloc((unsigned long )(dev->db_tab)->npages * 80UL, 208U);
  (dev->db_tab)->page = (struct mthca_db_page *)tmp___1;
  if ((unsigned long )(dev->db_tab)->page == (unsigned long )((struct mthca_db_page *)0)) {
    kfree((void const *)dev->db_tab);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_26695;
  ldv_26694:
  ((dev->db_tab)->page + (unsigned long )i)->db_rec = 0;
  i = i + 1;
  ldv_26695: ;
  if ((dev->db_tab)->npages > i) {
    goto ldv_26694;
  } else {
    goto ldv_26696;
  }
  ldv_26696: ;
  return (0);
}
}
void mthca_cleanup_db_tab(struct mthca_dev *dev )
{ int i ;
  int tmp ;
  int tmp___0 ;
  u64 tmp___1 ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp == 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_26703;
  ldv_26702: ;
  if ((unsigned long )((dev->db_tab)->page + (unsigned long )i)->db_rec == (unsigned long )((__be64 *)0)) {
    goto ldv_26701;
  } else {
  }
  tmp___0 = bitmap_empty((unsigned long const *)(& ((dev->db_tab)->page + (unsigned long )i)->used),
                         512);
  if (tmp___0 == 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Kernel UARC page %d not empty\n",
             i);
  } else {
  }
  tmp___1 = mthca_uarc_virt(dev, & dev->driver_uar, i);
  mthca_UNMAP_ICM(dev, tmp___1, 1U);
  dma_free_attrs(& (dev->pdev)->dev, 4096UL, (void *)((dev->db_tab)->page + (unsigned long )i)->db_rec,
                 ((dev->db_tab)->page + (unsigned long )i)->mapping, 0);
  ldv_26701:
  i = i + 1;
  ldv_26703: ;
  if ((dev->db_tab)->npages > i) {
    goto ldv_26702;
  } else {
    goto ldv_26704;
  }
  ldv_26704:
  kfree((void const *)(dev->db_tab)->page);
  kfree((void const *)dev->db_tab);
  return;
}
}
void ldv_mutex_lock_203(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_205(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_206(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_207(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_208(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_210(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_211(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_212(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_213(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_214(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_215(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_icm_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_216(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_user_db_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_217(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_user_db_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_218(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_user_db_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_219(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_user_db_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_220(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_db_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_221(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_db_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_222(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_db_table(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_223(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_db_table(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_248(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_246(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_249(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_245(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_247(struct mutex *ldv_func_arg1 ) ;
int mthca_uar_alloc(struct mthca_dev *dev , struct mthca_uar *uar )
{ u32 tmp ;
  {
  tmp = mthca_alloc(& dev->uar_table.alloc);
  uar->index = (int )tmp;
  if (uar->index == -1) {
    return (-12);
  } else {
  }
  uar->pfn = (unsigned long )(((dev->pdev)->resource[2].start >> 12) + (resource_size_t )uar->index);
  return (0);
}
}
void mthca_uar_free(struct mthca_dev *dev , struct mthca_uar *uar )
{
  {
  mthca_free(& dev->uar_table.alloc, (u32 )uar->index);
  return;
}
}
int mthca_init_uar_table(struct mthca_dev *dev )
{ int ret ;
  {
  ret = mthca_alloc_init(& dev->uar_table.alloc, (u32 )dev->limits.num_uars, (u32 )(dev->limits.num_uars + -1),
                         (u32 )(dev->limits.reserved_uars + 1));
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = mthca_init_db_tab(dev);
  if (ret != 0) {
    mthca_alloc_cleanup(& dev->uar_table.alloc);
  } else {
  }
  return (ret);
}
}
void mthca_cleanup_uar_table(struct mthca_dev *dev )
{
  {
  mthca_cleanup_db_tab(dev);
  mthca_alloc_cleanup(& dev->uar_table.alloc);
  return;
}
}
void ldv_mutex_lock_245(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_246(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_247(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_248(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_249(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_260(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_258(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_261(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_263(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_257(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_259(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_262(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_mthca_srq(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_mthca_srq(struct mutex *lock ) ;
static void *get_wqe(struct mthca_srq *srq , int n )
{
  {
  if (srq->is_direct != 0) {
    return (srq->queue.direct.buf + (unsigned long )(n << srq->wqe_shift));
  } else {
    return ((srq->queue.page_list + (unsigned long )((n << srq->wqe_shift) >> 12))->buf + ((unsigned long )(n << srq->wqe_shift) & 4095UL));
  }
}
}
__inline static int *wqe_to_link(void *wqe )
{
  {
  return ((int *)wqe + 12U);
}
}
static void mthca_tavor_init_srq_context(struct mthca_dev *dev , struct mthca_pd *pd ,
                                         struct mthca_srq *srq , struct mthca_tavor_srq_context *context )
{ __u64 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  struct mthca_ucontext *tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  {
  memset((void *)context, 0, 32UL);
  tmp = __fswab64((__u64 )(1 << (srq->wqe_shift + -4)));
  context->wqe_base_ds = tmp;
  tmp___0 = __fswab32(pd->pd_num);
  context->state_pd = tmp___0;
  tmp___1 = __fswab32(srq->mr.ibmr.lkey);
  context->lkey = tmp___1;
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp___2 = to_mucontext((pd->ibpd.uobject)->context);
    tmp___3 = __fswab32((__u32 )tmp___2->uar.index);
    context->uar = tmp___3;
  } else {
    tmp___4 = __fswab32((__u32 )dev->driver_uar.index);
    context->uar = tmp___4;
  }
  return;
}
}
static void mthca_arbel_init_srq_context(struct mthca_dev *dev , struct mthca_pd *pd ,
                                         struct mthca_srq *srq , struct mthca_arbel_srq_context *context )
{ int logsize ;
  int max ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  struct mthca_ucontext *tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  {
  memset((void *)context, 0, 48UL);
  max = srq->max;
  logsize = __ilog2_u32((u32 )max);
  tmp = __fswab32((__u32 )((logsize << 24) | srq->srqn));
  context->state_logsize_srqn = tmp;
  tmp___0 = __fswab32(srq->mr.ibmr.lkey);
  context->lkey = tmp___0;
  tmp___1 = __fswab32((__u32 )srq->db_index);
  context->db_index = tmp___1;
  tmp___2 = __fswab32((__u32 )((srq->wqe_shift + -4) << 29));
  context->logstride_usrpage = tmp___2;
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    tmp___3 = to_mucontext((pd->ibpd.uobject)->context);
    tmp___4 = __fswab32((__u32 )tmp___3->uar.index);
    context->logstride_usrpage = context->logstride_usrpage | tmp___4;
  } else {
    tmp___5 = __fswab32((__u32 )dev->driver_uar.index);
    context->logstride_usrpage = context->logstride_usrpage | tmp___5;
  }
  tmp___6 = __fswab32(pd->pd_num | 16777216U);
  context->eq_pd = tmp___6;
  return;
}
}
static void mthca_free_srq_buf(struct mthca_dev *dev , struct mthca_srq *srq )
{
  {
  mthca_buf_free(dev, srq->max << srq->wqe_shift, & srq->queue, srq->is_direct, & srq->mr);
  kfree((void const *)srq->wrid);
  return;
}
}
static int mthca_alloc_srq_buf(struct mthca_dev *dev , struct mthca_pd *pd , struct mthca_srq *srq )
{ struct mthca_data_seg *scatter ;
  void *wqe ;
  int err ;
  int i ;
  void *tmp ;
  struct mthca_next_seg *next ;
  int *tmp___0 ;
  __u32 tmp___1 ;
  int *tmp___2 ;
  {
  if ((unsigned long )pd->ibpd.uobject != (unsigned long )((struct ib_uobject *)0)) {
    return (0);
  } else {
  }
  tmp = kmalloc((unsigned long )srq->max * 8UL, 208U);
  srq->wrid = (u64 *)tmp;
  if ((unsigned long )srq->wrid == (unsigned long )((u64 *)0)) {
    return (-12);
  } else {
  }
  err = mthca_buf_alloc(dev, srq->max << srq->wqe_shift, 16384, & srq->queue, & srq->is_direct,
                        pd, 1, & srq->mr);
  if (err != 0) {
    kfree((void const *)srq->wrid);
    return (err);
  } else {
  }
  i = 0;
  goto ldv_26517;
  ldv_26516:
  wqe = get_wqe(srq, i);
  next = (struct mthca_next_seg *)wqe;
  if (srq->max + -1 > i) {
    tmp___0 = wqe_to_link(wqe);
    *tmp___0 = i + 1;
    tmp___1 = __fswab32((__u32 )(((i + 1) << srq->wqe_shift) | 1));
    next->nda_op = tmp___1;
  } else {
    tmp___2 = wqe_to_link(wqe);
    *tmp___2 = -1;
    next->nda_op = 0U;
  }
  scatter = (struct mthca_data_seg *)wqe + 16U;
  goto ldv_26514;
  ldv_26513:
  scatter->lkey = 65536U;
  scatter = scatter + 1;
  ldv_26514: ;
  if ((unsigned long )(wqe + (unsigned long )(1 << srq->wqe_shift)) > (unsigned long )((void *)scatter)) {
    goto ldv_26513;
  } else {
    goto ldv_26515;
  }
  ldv_26515:
  i = i + 1;
  ldv_26517: ;
  if (srq->max > i) {
    goto ldv_26516;
  } else {
    goto ldv_26518;
  }
  ldv_26518:
  srq->last = get_wqe(srq, srq->max + -1);
  return (0);
}
}
int mthca_alloc_srq(struct mthca_dev *dev , struct mthca_pd *pd , struct ib_srq_attr *attr ,
                    struct mthca_srq *srq )
{ struct mthca_mailbox *mailbox ;
  int ds ;
  int err ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long _max1 ;
  unsigned long _max2 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  if (attr->max_wr > (u32 )dev->limits.max_srq_wqes || attr->max_sge > (u32 )dev->limits.max_srq_sge) {
    return (-22);
  } else {
  }
  srq->max = (int )attr->max_wr;
  srq->max_gs = (int )attr->max_sge;
  srq->counter = 0U;
  tmp___0 = mthca_is_memfree(dev);
  if (tmp___0 != 0) {
    tmp = __roundup_pow_of_two((unsigned long )(srq->max + 1));
    srq->max = (int )tmp;
  } else {
    srq->max = srq->max + 1;
  }
  _max1 = 64UL;
  tmp___1 = __roundup_pow_of_two(((unsigned long )srq->max_gs + 1UL) * 16UL);
  _max2 = tmp___1;
  if (_max1 > _max2) {
    tmp___2 = _max1;
  } else {
    tmp___2 = _max2;
  }
  ds = (int )tmp___2;
  tmp___3 = mthca_is_memfree(dev);
  if (tmp___3 == 0 && dev->limits.max_desc_sz < ds) {
    return (-22);
  } else {
  }
  srq->wqe_shift = __ilog2_u32((u32 )ds);
  tmp___4 = mthca_alloc(& dev->srq_table.alloc);
  srq->srqn = (int )tmp___4;
  if (srq->srqn == -1) {
    return (-12);
  } else {
  }
  tmp___5 = mthca_is_memfree(dev);
  if (tmp___5 != 0) {
    err = mthca_table_get(dev, dev->srq_table.table, srq->srqn);
    if (err != 0) {
      goto err_out;
    } else {
    }
    if ((unsigned long )pd->ibpd.uobject == (unsigned long )((struct ib_uobject *)0)) {
      srq->db_index = mthca_alloc_db(dev, 5, (u32 )srq->srqn, & srq->db);
      if (srq->db_index < 0) {
        err = -12;
        goto err_out_icm;
      } else {
      }
    } else {
    }
  } else {
  }
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___7 = IS_ERR((void const *)mailbox);
  if (tmp___7 != 0L) {
    tmp___6 = PTR_ERR((void const *)mailbox);
    err = (int )tmp___6;
    goto err_out_db;
  } else {
  }
  err = mthca_alloc_srq_buf(dev, pd, srq);
  if (err != 0) {
    goto err_out_mailbox;
  } else {
  }
  spinlock_check(& srq->lock);
  __raw_spin_lock_init(& srq->lock.ldv_5961.rlock, "&(&srq->lock)->rlock", & __key);
  srq->refcount = 1;
  __init_waitqueue_head(& srq->wait, "&srq->wait", & __key___0);
  __mutex_init(& srq->mutex, "&srq->mutex", & __key___1);
  tmp___8 = mthca_is_memfree(dev);
  if (tmp___8 != 0) {
    mthca_arbel_init_srq_context(dev, pd, srq, (struct mthca_arbel_srq_context *)mailbox->buf);
  } else {
    mthca_tavor_init_srq_context(dev, pd, srq, (struct mthca_tavor_srq_context *)mailbox->buf);
  }
  err = mthca_SW2HW_SRQ(dev, mailbox, srq->srqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "SW2HW_SRQ failed (%d)\n",
             err);
    goto err_out_free_buf;
  } else {
  }
  spin_lock_irq(& dev->srq_table.lock);
  tmp___9 = mthca_array_set(& dev->srq_table.srq, srq->srqn & (dev->limits.num_srqs + -1),
                            (void *)srq);
  if (tmp___9 != 0) {
    spin_unlock_irq(& dev->srq_table.lock);
    goto err_out_free_srq;
  } else {
  }
  spin_unlock_irq(& dev->srq_table.lock);
  mthca_free_mailbox(dev, mailbox);
  srq->first_free = 0;
  srq->last_free = srq->max + -1;
  attr->max_wr = (u32 )(srq->max + -1);
  attr->max_sge = (u32 )srq->max_gs;
  return (0);
  err_out_free_srq:
  err = mthca_HW2SW_SRQ(dev, mailbox, srq->srqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "HW2SW_SRQ failed (%d)\n",
             err);
  } else {
  }
  err_out_free_buf: ;
  if ((unsigned long )pd->ibpd.uobject == (unsigned long )((struct ib_uobject *)0)) {
    mthca_free_srq_buf(dev, srq);
  } else {
  }
  err_out_mailbox:
  mthca_free_mailbox(dev, mailbox);
  err_out_db: ;
  if ((unsigned long )pd->ibpd.uobject == (unsigned long )((struct ib_uobject *)0)) {
    tmp___10 = mthca_is_memfree(dev);
    if (tmp___10 != 0) {
      mthca_free_db(dev, 5, srq->db_index);
    } else {
    }
  } else {
  }
  err_out_icm:
  mthca_table_put(dev, dev->srq_table.table, srq->srqn);
  err_out:
  mthca_free(& dev->srq_table.alloc, (u32 )srq->srqn);
  return (err);
}
}
__inline static int get_srq_refcount(struct mthca_dev *dev , struct mthca_srq *srq )
{ int c ;
  {
  spin_lock_irq(& dev->srq_table.lock);
  c = srq->refcount;
  spin_unlock_irq(& dev->srq_table.lock);
  return (c);
}
}
void mthca_free_srq(struct mthca_dev *dev , struct mthca_srq *srq )
{ struct mthca_mailbox *mailbox ;
  int err ;
  long tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp = IS_ERR((void const *)mailbox);
  if (tmp != 0L) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "No memory for mailbox to free SRQ.\n");
    return;
  } else {
  }
  err = mthca_HW2SW_SRQ(dev, mailbox, srq->srqn);
  if (err != 0) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "HW2SW_SRQ failed (%d)\n",
             err);
  } else {
  }
  spin_lock_irq(& dev->srq_table.lock);
  mthca_array_clear(& dev->srq_table.srq, srq->srqn & (dev->limits.num_srqs + -1));
  srq->refcount = srq->refcount - 1;
  spin_unlock_irq(& dev->srq_table.lock);
  tmp___0 = get_srq_refcount(dev, srq);
  if (tmp___0 == 0) {
    goto ldv_26551;
  } else {
  }
  tmp___1 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___1;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_26554:
  prepare_to_wait(& srq->wait, & __wait, 2);
  tmp___2 = get_srq_refcount(dev, srq);
  if (tmp___2 == 0) {
    goto ldv_26553;
  } else {
  }
  schedule();
  goto ldv_26554;
  ldv_26553:
  finish_wait(& srq->wait, & __wait);
  ldv_26551: ;
  if ((unsigned long )srq->ibsrq.uobject == (unsigned long )((struct ib_uobject *)0)) {
    mthca_free_srq_buf(dev, srq);
    tmp___3 = mthca_is_memfree(dev);
    if (tmp___3 != 0) {
      mthca_free_db(dev, 5, srq->db_index);
    } else {
    }
  } else {
  }
  mthca_table_put(dev, dev->srq_table.table, srq->srqn);
  mthca_free(& dev->srq_table.alloc, (u32 )srq->srqn);
  mthca_free_mailbox(dev, mailbox);
  return;
}
}
int mthca_modify_srq(struct ib_srq *ibsrq , struct ib_srq_attr *attr , enum ib_srq_attr_mask attr_mask ,
                     struct ib_udata *udata )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_srq *srq ;
  struct mthca_srq *tmp___0 ;
  int ret ;
  u32 max_wr ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  ret = 0;
  if ((int )attr_mask & 1) {
    return (-22);
  } else {
  }
  if (((unsigned int )attr_mask & 2U) != 0U) {
    tmp___3 = mthca_is_memfree(dev);
    if (tmp___3 != 0) {
      tmp___2 = srq->max + -1;
    } else {
      tmp___2 = srq->max;
    }
    max_wr = (u32 )tmp___2;
    if (attr->srq_limit > max_wr) {
      return (-22);
    } else {
    }
    ldv_mutex_lock_262(& srq->mutex);
    ret = mthca_ARM_SRQ(dev, srq->srqn, (int )attr->srq_limit);
    ldv_mutex_unlock_263(& srq->mutex);
  } else {
  }
  return (ret);
}
}
int mthca_query_srq(struct ib_srq *ibsrq , struct ib_srq_attr *srq_attr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_srq *srq ;
  struct mthca_srq *tmp___0 ;
  struct mthca_mailbox *mailbox ;
  struct mthca_arbel_srq_context *arbel_ctx ;
  struct mthca_tavor_srq_context *tavor_ctx ;
  int err ;
  long tmp___1 ;
  long tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  int tmp___5 ;
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  mailbox = mthca_alloc_mailbox(dev, 208U);
  tmp___2 = IS_ERR((void const *)mailbox);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)mailbox);
    return ((int )tmp___1);
  } else {
  }
  err = mthca_QUERY_SRQ(dev, (u32 )srq->srqn, mailbox);
  if (err != 0) {
    goto out;
  } else {
  }
  tmp___5 = mthca_is_memfree(dev);
  if (tmp___5 != 0) {
    arbel_ctx = (struct mthca_arbel_srq_context *)mailbox->buf;
    tmp___3 = __fswab16((int )arbel_ctx->limit_watermark);
    srq_attr->srq_limit = (u32 )tmp___3;
  } else {
    tavor_ctx = (struct mthca_tavor_srq_context *)mailbox->buf;
    tmp___4 = __fswab16((int )tavor_ctx->limit_watermark);
    srq_attr->srq_limit = (u32 )tmp___4;
  }
  srq_attr->max_wr = (u32 )(srq->max + -1);
  srq_attr->max_sge = (u32 )srq->max_gs;
  out:
  mthca_free_mailbox(dev, mailbox);
  return (err);
}
}
void mthca_srq_event(struct mthca_dev *dev , u32 srqn , enum ib_event_type event_type )
{ struct mthca_srq *srq ;
  struct ib_event event ;
  void *tmp ;
  {
  spin_lock(& dev->srq_table.lock);
  tmp = mthca_array_get(& dev->srq_table.srq, (int )((u32 )(dev->limits.num_srqs + -1) & srqn));
  srq = (struct mthca_srq *)tmp;
  if ((unsigned long )srq != (unsigned long )((struct mthca_srq *)0)) {
    srq->refcount = srq->refcount + 1;
  } else {
  }
  spin_unlock(& dev->srq_table.lock);
  if ((unsigned long )srq == (unsigned long )((struct mthca_srq *)0)) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "Async event for bogus SRQ %08x\n",
             srqn);
    return;
  } else {
  }
  if ((unsigned long )srq->ibsrq.event_handler == (unsigned long )((void (*)(struct ib_event * ,
                                                                             void * ))0)) {
    goto out;
  } else {
  }
  event.device = & dev->ib_dev;
  event.event = event_type;
  event.element.srq = & srq->ibsrq;
  (*(srq->ibsrq.event_handler))(& event, srq->ibsrq.srq_context);
  out:
  spin_lock(& dev->srq_table.lock);
  srq->refcount = srq->refcount - 1;
  if (srq->refcount == 0) {
    __wake_up(& srq->wait, 3U, 1, 0);
  } else {
  }
  spin_unlock(& dev->srq_table.lock);
  return;
}
}
void mthca_free_srq_wqe(struct mthca_srq *srq , u32 wqe_addr )
{ int ind ;
  struct mthca_next_seg *last_free ;
  void *tmp ;
  int *tmp___0 ;
  __u32 tmp___1 ;
  void *tmp___2 ;
  int *tmp___3 ;
  {
  ind = (int )(wqe_addr >> srq->wqe_shift);
  spin_lock(& srq->lock);
  tmp = get_wqe(srq, srq->last_free);
  last_free = (struct mthca_next_seg *)tmp;
  tmp___0 = wqe_to_link((void *)last_free);
  *tmp___0 = ind;
  tmp___1 = __fswab32((__u32 )((ind << srq->wqe_shift) | 1));
  last_free->nda_op = tmp___1;
  tmp___2 = get_wqe(srq, ind);
  tmp___3 = wqe_to_link(tmp___2);
  *tmp___3 = -1;
  srq->last_free = ind;
  spin_unlock(& srq->lock);
  return;
}
}
int mthca_tavor_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_srq *srq ;
  struct mthca_srq *tmp___0 ;
  unsigned long flags ;
  int err ;
  int first_ind ;
  int ind ;
  int next_ind ;
  int nreq ;
  int i ;
  void *wqe ;
  void *prev_wqe ;
  raw_spinlock_t *tmp___1 ;
  int *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  err = 0;
  tmp___1 = spinlock_check(& srq->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  first_ind = srq->first_free;
  nreq = 0;
  goto ldv_26614;
  ldv_26613:
  ind = srq->first_free;
  wqe = get_wqe(srq, ind);
  tmp___2 = wqe_to_link(wqe);
  next_ind = *tmp___2;
  tmp___3 = ldv__builtin_expect(next_ind < 0, 0L);
  if (tmp___3 != 0L) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "SRQ %06x full\n", srq->srqn);
    err = -12;
    *bad_wr = wr;
    goto ldv_26609;
  } else {
  }
  prev_wqe = srq->last;
  srq->last = wqe;
  ((struct mthca_next_seg *)wqe)->ee_nds = 0U;
  wqe = wqe + 16UL;
  tmp___4 = ldv__builtin_expect(wr->num_sge > srq->max_gs, 0L);
  if (tmp___4 != 0L) {
    err = -22;
    *bad_wr = wr;
    srq->last = prev_wqe;
    goto ldv_26609;
  } else {
  }
  i = 0;
  goto ldv_26611;
  ldv_26610:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  i = i + 1;
  ldv_26611: ;
  if (wr->num_sge > i) {
    goto ldv_26610;
  } else {
    goto ldv_26612;
  }
  ldv_26612: ;
  if (srq->max_gs > i) {
    mthca_set_data_seg_inval((struct mthca_data_seg *)wqe);
  } else {
  }
  ((struct mthca_next_seg *)prev_wqe)->ee_nds = 2147483648U;
  *(srq->wrid + (unsigned long )ind) = wr->wr_id;
  srq->first_free = next_ind;
  nreq = nreq + 1;
  tmp___5 = ldv__builtin_expect(nreq == 256, 0L);
  if (tmp___5 != 0L) {
    nreq = 0;
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64((u32 )(first_ind << srq->wqe_shift), (u32 )(srq->srqn << 8), dev->kar + 24UL,
                  0);
    first_ind = srq->first_free;
  } else {
  }
  wr = wr->next;
  ldv_26614: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_26613;
  } else {
    goto ldv_26609;
  }
  ldv_26609:
  tmp___6 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___6 != 0L) {
    __asm__ volatile ("sfence": : : "memory");
    mthca_write64((u32 )(first_ind << srq->wqe_shift), (u32 )((srq->srqn << 8) | nreq),
                  dev->kar + 24UL, 0);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& srq->lock, flags);
  return (err);
}
}
int mthca_arbel_post_srq_recv(struct ib_srq *ibsrq , struct ib_recv_wr *wr , struct ib_recv_wr **bad_wr )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmp ;
  struct mthca_srq *srq ;
  struct mthca_srq *tmp___0 ;
  unsigned long flags ;
  int err ;
  int ind ;
  int next_ind ;
  int nreq ;
  int i ;
  void *wqe ;
  raw_spinlock_t *tmp___1 ;
  int *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  __u32 tmp___5 ;
  long tmp___6 ;
  {
  tmp = to_mdev(ibsrq->device);
  dev = tmp;
  tmp___0 = to_msrq(ibsrq);
  srq = tmp___0;
  err = 0;
  tmp___1 = spinlock_check(& srq->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  nreq = 0;
  goto ldv_26637;
  ldv_26636:
  ind = srq->first_free;
  wqe = get_wqe(srq, ind);
  tmp___2 = wqe_to_link(wqe);
  next_ind = *tmp___2;
  tmp___3 = ldv__builtin_expect(next_ind < 0, 0L);
  if (tmp___3 != 0L) {
    dev_err((struct device const *)(& (dev->pdev)->dev), "SRQ %06x full\n", srq->srqn);
    err = -12;
    *bad_wr = wr;
    goto ldv_26632;
  } else {
  }
  ((struct mthca_next_seg *)wqe)->ee_nds = 0U;
  wqe = wqe + 16UL;
  tmp___4 = ldv__builtin_expect(wr->num_sge > srq->max_gs, 0L);
  if (tmp___4 != 0L) {
    err = -22;
    *bad_wr = wr;
    goto ldv_26632;
  } else {
  }
  i = 0;
  goto ldv_26634;
  ldv_26633:
  mthca_set_data_seg((struct mthca_data_seg *)wqe, wr->sg_list + (unsigned long )i);
  wqe = wqe + 16UL;
  i = i + 1;
  ldv_26634: ;
  if (wr->num_sge > i) {
    goto ldv_26633;
  } else {
    goto ldv_26635;
  }
  ldv_26635: ;
  if (srq->max_gs > i) {
    mthca_set_data_seg_inval((struct mthca_data_seg *)wqe);
  } else {
  }
  *(srq->wrid + (unsigned long )ind) = wr->wr_id;
  srq->first_free = next_ind;
  nreq = nreq + 1;
  wr = wr->next;
  ldv_26637: ;
  if ((unsigned long )wr != (unsigned long )((struct ib_recv_wr *)0)) {
    goto ldv_26636;
  } else {
    goto ldv_26632;
  }
  ldv_26632:
  tmp___6 = ldv__builtin_expect(nreq != 0, 1L);
  if (tmp___6 != 0L) {
    srq->counter = (int )srq->counter + (int )((u16 )nreq);
    __asm__ volatile ("sfence": : : "memory");
    tmp___5 = __fswab32((__u32 )srq->counter);
    *(srq->db) = tmp___5;
  } else {
  }
  spin_unlock_irqrestore(& srq->lock, flags);
  return (err);
}
}
int mthca_max_srq_sge(struct mthca_dev *dev )
{ int tmp ;
  int __min1 ;
  int __min2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = mthca_is_memfree(dev);
  if (tmp != 0) {
    return (dev->limits.max_sg);
  } else {
  }
  __min1 = dev->limits.max_sg;
  tmp___0 = fls(dev->limits.max_desc_sz);
  __min2 = (int )(((unsigned long )(1 << (tmp___0 + -1)) - 16UL) / 16UL);
  if (__min1 < __min2) {
    tmp___1 = __min1;
  } else {
    tmp___1 = __min2;
  }
  return (tmp___1);
}
}
int mthca_init_srq_table(struct mthca_dev *dev )
{ int err ;
  struct lock_class_key __key ;
  {
  if ((dev->mthca_flags & 4UL) == 0UL) {
    return (0);
  } else {
  }
  spinlock_check(& dev->srq_table.lock);
  __raw_spin_lock_init(& dev->srq_table.lock.ldv_5961.rlock, "&(&dev->srq_table.lock)->rlock",
                       & __key);
  err = mthca_alloc_init(& dev->srq_table.alloc, (u32 )dev->limits.num_srqs, (u32 )(dev->limits.num_srqs + -1),
                         (u32 )dev->limits.reserved_srqs);
  if (err != 0) {
    return (err);
  } else {
  }
  err = mthca_array_init(& dev->srq_table.srq, dev->limits.num_srqs);
  if (err != 0) {
    mthca_alloc_cleanup(& dev->srq_table.alloc);
  } else {
  }
  return (err);
}
}
void mthca_cleanup_srq_table(struct mthca_dev *dev )
{
  {
  if ((dev->mthca_flags & 4UL) == 0UL) {
    return;
  } else {
  }
  mthca_array_cleanup(& dev->srq_table.srq, dev->limits.num_srqs);
  mthca_alloc_cleanup(& dev->srq_table.alloc);
  return;
}
}
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_257(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_258(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_259(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_260(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_261(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_262(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_mthca_srq(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_263(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_mthca_srq(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{ struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{ int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
int ldv_mutex_trylock_276(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_274(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_277(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_279(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_273(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_275(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_278(struct mutex *ldv_func_arg1 ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern unsigned long round_jiffies(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
static spinlock_t catas_lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "catas_lock",
                                                               0, 0UL}}}};
static struct list_head catas_list = {& catas_list, & catas_list};
static struct workqueue_struct *catas_wq ;
static struct work_struct catas_work ;
static int catas_reset_disable ;
static void catas_reset(struct work_struct *work )
{ struct mthca_dev *dev ;
  struct mthca_dev *tmpdev ;
  struct list_head tlist ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct pci_dev *pdev ;
  char const *tmp ;
  struct mthca_dev *d ;
  void *tmp___0 ;
  struct list_head const *__mptr___1 ;
  {
  tlist.next = & tlist;
  tlist.prev = & tlist;
  ldv_mutex_lock_278(& mthca_device_mutex);
  spin_lock_irq(& catas_lock);
  list_splice_init(& catas_list, & tlist);
  spin_unlock_irq(& catas_lock);
  __mptr = (struct list_head const *)tlist.next;
  dev = (struct mthca_dev *)__mptr + 0xffffffffffffea80UL;
  __mptr___0 = (struct list_head const *)dev->catas_err.list.next;
  tmpdev = (struct mthca_dev *)__mptr___0 + 0xffffffffffffea80UL;
  goto ldv_23665;
  ldv_23664:
  pdev = dev->pdev;
  ret = __mthca_restart_one(dev->pdev);
  if (ret != 0) {
    tmp = pci_name((struct pci_dev const *)pdev);
    printk("\vmthca %s: Reset failed (%d)\n", tmp, ret);
  } else {
    tmp___0 = pci_get_drvdata(pdev);
    d = (struct mthca_dev *)tmp___0;
    if (mthca_debug_level != 0) {
      dev_printk("\017", (struct device const *)(& (d->pdev)->dev), "Reset succeeded\n");
    } else {
    }
  }
  dev = tmpdev;
  __mptr___1 = (struct list_head const *)tmpdev->catas_err.list.next;
  tmpdev = (struct mthca_dev *)__mptr___1 + 0xffffffffffffea80UL;
  ldv_23665: ;
  if ((unsigned long )(& dev->catas_err.list) != (unsigned long )(& tlist)) {
    goto ldv_23664;
  } else {
    goto ldv_23666;
  }
  ldv_23666:
  ldv_mutex_unlock_279(& mthca_device_mutex);
  return;
}
}
static void handle_catas(struct mthca_dev *dev )
{ struct ib_event event ;
  unsigned long flags ;
  char const *type ;
  int i ;
  unsigned int tmp ;
  __u32 tmp___0 ;
  unsigned int tmp___1 ;
  __u32 tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  event.device = & dev->ib_dev;
  event.event = 8;
  event.element.port_num = 0U;
  dev->active = 0;
  ib_dispatch_event(& event);
  tmp = readl((void const volatile *)dev->catas_err.map);
  tmp___0 = __fswab32(tmp);
  switch (tmp___0 >> 24) {
  case 0:
  type = "internal error";
  goto ldv_23675;
  case 3:
  type = "uplink bus error";
  goto ldv_23675;
  case 4:
  type = "DDR data error";
  goto ldv_23675;
  case 5:
  type = "internal parity error";
  goto ldv_23675;
  default:
  type = "unknown error";
  goto ldv_23675;
  }
  ldv_23675:
  dev_err((struct device const *)(& (dev->pdev)->dev), "Catastrophic error detected: %s\n",
          type);
  i = 0;
  goto ldv_23681;
  ldv_23680:
  tmp___1 = readl((void const volatile *)dev->catas_err.map + (unsigned long )i);
  tmp___2 = __fswab32(tmp___1);
  dev_err((struct device const *)(& (dev->pdev)->dev), "  buf[%02x]: %08x\n", i,
          tmp___2);
  i = i + 1;
  ldv_23681: ;
  if ((u32 )i < dev->catas_err.size) {
    goto ldv_23680;
  } else {
    goto ldv_23682;
  }
  ldv_23682: ;
  if (catas_reset_disable != 0) {
    return;
  } else {
  }
  tmp___3 = spinlock_check(& catas_lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  list_add(& dev->catas_err.list, & catas_list);
  queue_work(catas_wq, & catas_work);
  spin_unlock_irqrestore(& catas_lock, flags);
  return;
}
}
static void poll_catas(unsigned long dev_ptr )
{ struct mthca_dev *dev ;
  int i ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  {
  dev = (struct mthca_dev *)dev_ptr;
  i = 0;
  goto ldv_23692;
  ldv_23691:
  tmp = readl((void const volatile *)dev->catas_err.map + (unsigned long )i);
  if (tmp != 0U) {
    handle_catas(dev);
    return;
  } else {
  }
  i = i + 1;
  ldv_23692: ;
  if ((u32 )i < dev->catas_err.size) {
    goto ldv_23691;
  } else {
    goto ldv_23693;
  }
  ldv_23693:
  tmp___0 = round_jiffies((unsigned long )jiffies + 1250UL);
  mod_timer(& dev->catas_err.timer, tmp___0);
  return;
}
}
void mthca_start_catas_poll(struct mthca_dev *dev )
{ phys_addr_t addr ;
  struct lock_class_key __key ;
  unsigned long long tmp ;
  void *tmp___0 ;
  {
  init_timer_key(& dev->catas_err.timer, 0U, "(&dev->catas_err.timer)", & __key);
  dev->catas_err.map = 0;
  if ((dev->pdev)->resource[0].start != 0ULL || (dev->pdev)->resource[0].end != (dev->pdev)->resource[0].start) {
    tmp = (dev->pdev)->resource[0].end - (dev->pdev)->resource[0].start;
  } else {
    tmp = 0xffffffffffffffffULL;
  }
  addr = (dev->pdev)->resource[0].start + (tmp & dev->catas_err.addr);
  tmp___0 = ioremap(addr, (unsigned long )(dev->catas_err.size * 4U));
  dev->catas_err.map = (u32 *)tmp___0;
  if ((unsigned long )dev->catas_err.map == (unsigned long )((u32 *)0)) {
    dev_warn((struct device const *)(& (dev->pdev)->dev), "couldn\'t map catastrophic error region at 0x%llx/0x%x\n",
             addr, dev->catas_err.size * 4U);
    return;
  } else {
  }
  dev->catas_err.timer.data = (unsigned long )dev;
  dev->catas_err.timer.function = & poll_catas;
  dev->catas_err.timer.expires = (unsigned long )jiffies + 1250UL;
  INIT_LIST_HEAD(& dev->catas_err.list);
  add_timer(& dev->catas_err.timer);
  return;
}
}
void mthca_stop_catas_poll(struct mthca_dev *dev )
{
  {
  del_timer_sync(& dev->catas_err.timer);
  if ((unsigned long )dev->catas_err.map != (unsigned long )((u32 *)0)) {
    iounmap((void volatile *)dev->catas_err.map);
  } else {
  }
  spin_lock_irq(& catas_lock);
  list_del(& dev->catas_err.list);
  spin_unlock_irq(& catas_lock);
  return;
}
}
int mthca_catas_init(void)
{ struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  __init_work(& catas_work, 0);
  __constr_expr_0.counter = 4195328L;
  catas_work.data = __constr_expr_0;
  lockdep_init_map(& catas_work.lockdep_map, "(&catas_work)", & __key, 0);
  INIT_LIST_HEAD(& catas_work.entry);
  catas_work.func = & catas_reset;
  __lock_name = "mthca_catas";
  tmp = __alloc_workqueue_key("mthca_catas", 10U, 1, & __key___0, __lock_name);
  catas_wq = tmp;
  if ((unsigned long )catas_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void mthca_catas_cleanup(void)
{
  {
  destroy_workqueue(catas_wq);
  return;
}
}
void ldv_mutex_lock_273(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_274(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_275(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_276(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_277(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_278(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mthca_device_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_279(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mthca_device_mutex(ldv_func_arg1);
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
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
static int ldv_mutex_cap_mask_mutex_of_mthca_dev ;
int ldv_mutex_lock_interruptible_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cap_mask_mutex_of_mthca_dev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cap_mask_mutex_of_mthca_dev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cap_mask_mutex_of_mthca_dev = 2;
  return;
}
}
int ldv_mutex_trylock_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cap_mask_mutex_of_mthca_dev = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cap_mask_mutex_of_mthca_dev(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cap_mask_mutex_of_mthca_dev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
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
void ldv_mutex_unlock_cap_mask_mutex_of_mthca_dev(struct mutex *lock )
{
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cap_mask_mutex_of_mthca_dev = 1;
  return;
}
}
static int ldv_mutex_cred_guard_mutex_of_signal_struct ;
int ldv_mutex_lock_interruptible_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex_of_signal_struct(atomic_t *cnt ,
                                                                    struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
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
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  return;
}
}
static int ldv_mutex_hcr_mutex_of_mthca_cmd ;
int ldv_mutex_lock_interruptible_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_hcr_mutex_of_mthca_cmd = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_hcr_mutex_of_mthca_cmd = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_hcr_mutex_of_mthca_cmd = 2;
  return;
}
}
int ldv_mutex_trylock_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_hcr_mutex_of_mthca_cmd = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_hcr_mutex_of_mthca_cmd(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_hcr_mutex_of_mthca_cmd = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
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
void ldv_mutex_unlock_hcr_mutex_of_mthca_cmd(struct mutex *lock )
{
  {
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_hcr_mutex_of_mthca_cmd = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{ int nondetermined ;
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
{ int nondetermined ;
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
{ int is_mutex_held_by_another_thread ;
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
{ int atomic_value_after_dec ;
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
{ int nondetermined ;
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
static int ldv_mutex_mthca_device_mutex ;
int ldv_mutex_lock_interruptible_mthca_device_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mthca_device_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mthca_device_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mthca_device_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mthca_device_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mthca_device_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mthca_device_mutex(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mthca_device_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mthca_device_mutex(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mthca_device_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mthca_device_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mthca_device_mutex == 1) {
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
void ldv_mutex_unlock_mthca_device_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mthca_device_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mthca_device_mutex = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
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
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_cq ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_cq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_cq = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_cq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_cq = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_cq(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_cq = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_cq(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_cq = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_cq(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_cq = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_cq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_cq(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_cq == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_cq = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_db_table ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_db_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_db_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_db_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_db_table = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_db_table(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_db_table = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_db_table(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_db_table = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_db_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_db_table == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_db_table = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_icm_table ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_icm_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_icm_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_icm_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_icm_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_icm_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_icm_table = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_icm_table(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_icm_table = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_icm_table(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_icm_table = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_icm_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_icm_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_icm_table == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_icm_table = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_mcg_table ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_mcg_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_mcg_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_mcg_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_mcg_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_mcg_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_mcg_table = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_mcg_table(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_mcg_table = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_mcg_table(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_mcg_table = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_mcg_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_mcg_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_mcg_table == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_mcg_table = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_qp ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_qp(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_qp = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_qp(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_qp = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_qp(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_qp = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_qp(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_qp = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_qp(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_qp = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_qp(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_qp(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_qp == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_qp = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_srq ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_srq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_srq = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_srq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_srq = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_srq(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_srq = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_srq(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_srq = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_srq(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_srq = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_srq(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_srq(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_srq == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_srq = 1;
  return;
}
}
static int ldv_mutex_mutex_of_mthca_user_db_table ;
int ldv_mutex_lock_interruptible_mutex_of_mthca_user_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_user_db_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_mthca_user_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_mthca_user_db_table = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_mthca_user_db_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_user_db_table = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_mthca_user_db_table(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_mthca_user_db_table = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_mthca_user_db_table(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_mthca_user_db_table = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_mthca_user_db_table(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
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
void ldv_mutex_unlock_mutex_of_mthca_user_db_table(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_mthca_user_db_table == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_mthca_user_db_table = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cap_mask_mutex_of_mthca_dev = 1;
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_hcr_mutex_of_mthca_cmd = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mthca_device_mutex = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_mutex_of_mthca_cq = 1;
  ldv_mutex_mutex_of_mthca_db_table = 1;
  ldv_mutex_mutex_of_mthca_icm_table = 1;
  ldv_mutex_mutex_of_mthca_mcg_table = 1;
  ldv_mutex_mutex_of_mthca_qp = 1;
  ldv_mutex_mutex_of_mthca_srq = 1;
  ldv_mutex_mutex_of_mthca_user_db_table = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cap_mask_mutex_of_mthca_dev == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_hcr_mutex_of_mthca_cmd == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mthca_device_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_cq == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_db_table == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_icm_table == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_mcg_table == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_qp == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_srq == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_mthca_user_db_table == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_empty(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __bitmap_full(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
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
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock_nested(raw_spinlock_t *arg0, int arg1) {
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
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
void clear_page(void *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void *dma_pool_alloc(struct dma_pool *arg0, gfp_t arg1, dma_addr_t *arg2) {
  return ldv_malloc(0UL);
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
void down(struct semaphore *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_zero_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int get_user_pages(struct task_struct *arg0, struct mm_struct *arg1, unsigned long arg2, int arg3, int arg4, int arg5, struct page **arg6, struct vm_area_struct **arg7) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_zeroed_page(gfp_t arg0) {
  return __VERIFIER_nondet_ulong();
}
struct ib_device *ib_alloc_device(size_t arg0) {
  return ldv_malloc(sizeof(struct ib_device));
}
struct ib_ah *ib_create_ah(struct ib_pd *arg0, struct ib_ah_attr *arg1) {
  return ldv_malloc(sizeof(struct ib_ah));
}
struct ib_mad_send_buf *ib_create_send_mad(struct ib_mad_agent *arg0, u32 arg1, u16 arg2, int arg3, int arg4, int arg5, gfp_t arg6) {
  return ldv_malloc(sizeof(struct ib_mad_send_buf));
}
void ib_dealloc_device(struct ib_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ib_destroy_ah(struct ib_ah *arg0) {
  return __VERIFIER_nondet_int();
}
void ib_dispatch_event(struct ib_event *arg0) {
  return;
}
void ib_free_send_mad(struct ib_mad_send_buf *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ib_get_cached_gid(struct ib_device *arg0, u8 arg1, int arg2, union ib_gid *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_get_cached_pkey(struct ib_device *arg0, u8 arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_modify_qp_is_ok(enum ib_qp_state arg0, enum ib_qp_state arg1, enum ib_qp_type arg2, enum ib_qp_attr_mask arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_post_send_mad(struct ib_mad_send_buf *arg0, struct ib_mad_send_buf **arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_query_port(struct ib_device *arg0, u8 arg1, struct ib_port_attr *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_rate_to_mult(enum ib_rate arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ib_register_device(struct ib_device *arg0, int (*arg1)(struct ib_device *, u8 , struct kobject *)) {
  return __VERIFIER_nondet_int();
}
struct ib_mad_agent *ib_register_mad_agent(struct ib_device *arg0, u8 arg1, enum ib_qp_type arg2, struct ib_mad_reg_req *arg3, u8 arg4, void (*arg5)(struct ib_mad_agent *, struct ib_mad_send_wc *), void (*arg6)(struct ib_mad_agent *, struct ib_mad_recv_wc *), void *arg7) {
  return ldv_malloc(sizeof(struct ib_mad_agent));
}
void ib_ud_header_init(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, struct ib_ud_header *arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int ib_ud_header_pack(struct ib_ud_header *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
struct ib_umem *ib_umem_get(struct ib_ucontext *arg0, unsigned long arg1, size_t arg2, int arg3, int arg4) {
  return ldv_malloc(sizeof(struct ib_umem));
}
void ib_umem_release(struct ib_umem *arg0) {
  return;
}
void ib_unregister_device(struct ib_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ib_unregister_mad_agent(struct ib_mad_agent *arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
enum ib_rate mult_to_ib_rate(int arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_dev_put(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
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
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pcie_capability_write_word(struct pci_dev *arg0, int arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_set_readrq(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcix_get_max_mmrbc(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcix_set_mmrbc(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int remap_pfn_range(struct vm_area_struct *arg0, unsigned long arg1, unsigned long arg2, unsigned long arg3, pgprot_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void schedule() {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void up(struct semaphore *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
