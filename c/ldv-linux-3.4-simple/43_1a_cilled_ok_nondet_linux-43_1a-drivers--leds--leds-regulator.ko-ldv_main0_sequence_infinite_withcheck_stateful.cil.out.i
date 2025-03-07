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
struct module;
struct module;
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
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
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
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
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
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct platform_device;
struct led_regulator_platform_data {
   char *name ;
   enum led_brightness brightness ;
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
struct pdev_archdata {
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
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct regulator;
struct regulator;
struct regulator_led {
   struct led_classdev cdev ;
   enum led_brightness value ;
   int enabled ;
   struct mutex mutex ;
   struct work_struct work ;
   struct regulator *vcc ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  *((struct list_head **)list) = list;
  __cil_tmp2 = (unsigned long )list;
  __cil_tmp3 = __cil_tmp2 + 8;
  *((struct list_head **)__cil_tmp3) = list;
  return;
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
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  long __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 > 0xfffffffffffff000UL;
  __cil_tmp5 = (long )__cil_tmp4;
  tmp = __builtin_expect(__cil_tmp5, 0L);
  }
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern int schedule_work(struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int led_classdev_register(struct device * , struct led_classdev * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern struct regulator *regulator_get_exclusive(struct device * , char const * ) ;
extern void regulator_put(struct regulator * ) ;
extern int regulator_enable(struct regulator * ) ;
extern int regulator_disable(struct regulator * ) ;
extern int regulator_is_enabled(struct regulator * ) ;
extern int regulator_count_voltages(struct regulator * ) ;
extern int regulator_list_voltage(struct regulator * , unsigned int ) ;
extern int regulator_set_voltage(struct regulator * , int , int ) ;
__inline static int led_regulator_get_max_brightness(struct regulator *supply )
{ int ret ;
  int voltage ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = regulator_list_voltage(supply, 0U);
  voltage = tmp;
  }
  if (voltage <= 0) {
    return (1);
  } else {
  }
  {
  ret = regulator_set_voltage(supply, voltage, voltage);
  }
  if (ret < 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = regulator_count_voltages(supply);
  }
  return (tmp___0);
}
}
static int led_regulator_get_voltage(struct regulator *supply , enum led_brightness brightness )
{ int tmp ;
  unsigned int __cil_tmp4 ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  {
  __cil_tmp4 = (unsigned int )brightness;
  if (__cil_tmp4 == 0U) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp5 = (unsigned int )brightness;
  __cil_tmp6 = __cil_tmp5 - 1U;
  tmp = regulator_list_voltage(supply, __cil_tmp6);
  }
  return (tmp);
}
}
static void regulator_led_enable(struct regulator_led *led )
{ int ret ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct regulator *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct device *__cil_tmp12 ;
  struct device const *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  {
  {
  __cil_tmp3 = (unsigned long )led;
  __cil_tmp4 = __cil_tmp3 + 412;
  __cil_tmp5 = *((int *)__cil_tmp4);
  if (__cil_tmp5 != 0) {
    return;
  } else {
  }
  }
  {
  __cil_tmp6 = (unsigned long )led;
  __cil_tmp7 = __cil_tmp6 + 664;
  __cil_tmp8 = *((struct regulator **)__cil_tmp7);
  ret = regulator_enable(__cil_tmp8);
  }
  if (ret != 0) {
    {
    __cil_tmp9 = 0 + 48;
    __cil_tmp10 = (unsigned long )led;
    __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
    __cil_tmp12 = *((struct device **)__cil_tmp11);
    __cil_tmp13 = (struct device const *)__cil_tmp12;
    dev_err(__cil_tmp13, "Failed to enable vcc: %d\n", ret);
    }
    return;
  } else {
  }
  __cil_tmp14 = (unsigned long )led;
  __cil_tmp15 = __cil_tmp14 + 412;
  *((int *)__cil_tmp15) = 1;
  return;
}
}
static void regulator_led_disable(struct regulator_led *led )
{ int ret ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct regulator *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct device *__cil_tmp12 ;
  struct device const *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  {
  {
  __cil_tmp3 = (unsigned long )led;
  __cil_tmp4 = __cil_tmp3 + 412;
  __cil_tmp5 = *((int *)__cil_tmp4);
  if (__cil_tmp5 == 0) {
    return;
  } else {
  }
  }
  {
  __cil_tmp6 = (unsigned long )led;
  __cil_tmp7 = __cil_tmp6 + 664;
  __cil_tmp8 = *((struct regulator **)__cil_tmp7);
  ret = regulator_disable(__cil_tmp8);
  }
  if (ret != 0) {
    {
    __cil_tmp9 = 0 + 48;
    __cil_tmp10 = (unsigned long )led;
    __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
    __cil_tmp12 = *((struct device **)__cil_tmp11);
    __cil_tmp13 = (struct device const *)__cil_tmp12;
    dev_err(__cil_tmp13, "Failed to disable vcc: %d\n", ret);
    }
    return;
  } else {
  }
  __cil_tmp14 = (unsigned long )led;
  __cil_tmp15 = __cil_tmp14 + 412;
  *((int *)__cil_tmp15) = 0;
  return;
}
}
static void regulator_led_set_value(struct regulator_led *led )
{ int voltage ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct mutex *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  enum led_brightness __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct regulator *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  enum led_brightness __cil_tmp22 ;
  struct _ddebug *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned char __cil_tmp30 ;
  long __cil_tmp31 ;
  long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct device *__cil_tmp36 ;
  struct device const *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  enum led_brightness __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct regulator *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct device *__cil_tmp48 ;
  struct device const *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct mutex *__cil_tmp52 ;
  {
  {
  __cil_tmp6 = (unsigned long )led;
  __cil_tmp7 = __cil_tmp6 + 416;
  __cil_tmp8 = (struct mutex *)__cil_tmp7;
  mutex_lock_nested(__cil_tmp8, 0U);
  }
  {
  __cil_tmp9 = (unsigned long )led;
  __cil_tmp10 = __cil_tmp9 + 408;
  __cil_tmp11 = *((enum led_brightness *)__cil_tmp10);
  __cil_tmp12 = (unsigned int )__cil_tmp11;
  if (__cil_tmp12 == 0U) {
    {
    regulator_led_disable(led);
    }
    goto out;
  } else {
  }
  }
  {
  __cil_tmp13 = 0 + 12;
  __cil_tmp14 = (unsigned long )led;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  __cil_tmp16 = *((int *)__cil_tmp15);
  if (__cil_tmp16 > 1) {
    {
    __cil_tmp17 = (unsigned long )led;
    __cil_tmp18 = __cil_tmp17 + 664;
    __cil_tmp19 = *((struct regulator **)__cil_tmp18);
    __cil_tmp20 = (unsigned long )led;
    __cil_tmp21 = __cil_tmp20 + 408;
    __cil_tmp22 = *((enum led_brightness *)__cil_tmp21);
    voltage = led_regulator_get_voltage(__cil_tmp19, __cil_tmp22);
    __cil_tmp23 = & descriptor;
    *((char const **)__cil_tmp23) = "leds_regulator";
    __cil_tmp24 = (unsigned long )(& descriptor) + 8;
    *((char const **)__cil_tmp24) = "regulator_led_set_value";
    __cil_tmp25 = (unsigned long )(& descriptor) + 16;
    *((char const **)__cil_tmp25) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12454/dscv_tempdir/dscv/ri/43_1a/drivers/leds/leds-regulator.c.p";
    __cil_tmp26 = (unsigned long )(& descriptor) + 24;
    *((char const **)__cil_tmp26) = "brightness: %d voltage: %d\n";
    __cil_tmp27 = (unsigned long )(& descriptor) + 32;
    *((unsigned int *)__cil_tmp27) = 127U;
    __cil_tmp28 = (unsigned long )(& descriptor) + 35;
    *((unsigned char *)__cil_tmp28) = (unsigned char)0;
    __cil_tmp29 = (unsigned long )(& descriptor) + 35;
    __cil_tmp30 = *((unsigned char *)__cil_tmp29);
    __cil_tmp31 = (long )__cil_tmp30;
    __cil_tmp32 = __cil_tmp31 & 1L;
    tmp = __builtin_expect(__cil_tmp32, 0L);
    }
    if (tmp != 0L) {
      {
      __cil_tmp33 = 0 + 48;
      __cil_tmp34 = (unsigned long )led;
      __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
      __cil_tmp36 = *((struct device **)__cil_tmp35);
      __cil_tmp37 = (struct device const *)__cil_tmp36;
      __cil_tmp38 = (unsigned long )led;
      __cil_tmp39 = __cil_tmp38 + 408;
      __cil_tmp40 = *((enum led_brightness *)__cil_tmp39);
      __cil_tmp41 = (unsigned int )__cil_tmp40;
      __dynamic_dev_dbg(& descriptor, __cil_tmp37, "brightness: %d voltage: %d\n",
                        __cil_tmp41, voltage);
      }
    } else {
    }
    {
    __cil_tmp42 = (unsigned long )led;
    __cil_tmp43 = __cil_tmp42 + 664;
    __cil_tmp44 = *((struct regulator **)__cil_tmp43);
    ret = regulator_set_voltage(__cil_tmp44, voltage, voltage);
    }
    if (ret != 0) {
      {
      __cil_tmp45 = 0 + 48;
      __cil_tmp46 = (unsigned long )led;
      __cil_tmp47 = __cil_tmp46 + __cil_tmp45;
      __cil_tmp48 = *((struct device **)__cil_tmp47);
      __cil_tmp49 = (struct device const *)__cil_tmp48;
      dev_err(__cil_tmp49, "Failed to set voltage %d: %d\n", voltage, ret);
      }
    } else {
    }
  } else {
  }
  }
  {
  regulator_led_enable(led);
  }
  out:
  {
  __cil_tmp50 = (unsigned long )led;
  __cil_tmp51 = __cil_tmp50 + 416;
  __cil_tmp52 = (struct mutex *)__cil_tmp51;
  mutex_unlock(__cil_tmp52);
  }
  return;
}
}
static void led_work(struct work_struct *work )
{ struct regulator_led *led ;
  struct work_struct const *__mptr ;
  struct regulator_led *__cil_tmp4 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  __cil_tmp4 = (struct regulator_led *)__mptr;
  led = __cil_tmp4 + 0xfffffffffffffdb8UL;
  regulator_led_set_value(led);
  }
  return;
}
}
static void regulator_led_brightness_set(struct led_classdev *led_cdev , enum led_brightness value )
{ struct regulator_led *led ;
  struct led_classdev const *__mptr ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct work_struct *__cil_tmp9 ;
  {
  {
  __mptr = (struct led_classdev const *)led_cdev;
  led = (struct regulator_led *)__mptr;
  __cil_tmp5 = (unsigned long )led;
  __cil_tmp6 = __cil_tmp5 + 408;
  *((enum led_brightness *)__cil_tmp6) = value;
  __cil_tmp7 = (unsigned long )led;
  __cil_tmp8 = __cil_tmp7 + 584;
  __cil_tmp9 = (struct work_struct *)__cil_tmp8;
  schedule_work(__cil_tmp9);
  }
  return;
}
}
static int regulator_led_probe(struct platform_device *pdev )
{ struct led_regulator_platform_data *pdata ;
  struct regulator_led *led ;
  struct regulator *vcc ;
  int ret ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  struct led_regulator_platform_data *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct device *__cil_tmp22 ;
  struct device const *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct device *__cil_tmp26 ;
  void const *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct device *__cil_tmp30 ;
  struct device const *__cil_tmp31 ;
  char *__cil_tmp32 ;
  void const *__cil_tmp33 ;
  struct regulator_led *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  enum led_brightness __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct device *__cil_tmp51 ;
  struct device const *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  enum led_brightness __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  char *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  struct regulator *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  struct mutex *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  struct work_struct *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  struct lockdep_map *__cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct list_head *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  void *__cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  struct device *__cil_tmp101 ;
  struct led_classdev *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  struct work_struct *__cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  enum led_brightness __cil_tmp111 ;
  void const *__cil_tmp112 ;
  long __constr_expr_0_counter113 ;
  {
  __cil_tmp13 = 16 + 280;
  __cil_tmp14 = (unsigned long )pdev;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  __cil_tmp16 = *((void **)__cil_tmp15);
  pdata = (struct led_regulator_platform_data *)__cil_tmp16;
  ret = 0;
  {
  __cil_tmp17 = (struct led_regulator_platform_data *)0;
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  __cil_tmp19 = (unsigned long )pdata;
  if (__cil_tmp19 == __cil_tmp18) {
    {
    __cil_tmp20 = (unsigned long )pdev;
    __cil_tmp21 = __cil_tmp20 + 16;
    __cil_tmp22 = (struct device *)__cil_tmp21;
    __cil_tmp23 = (struct device const *)__cil_tmp22;
    dev_err(__cil_tmp23, "no platform data\n");
    }
    return (-19);
  } else {
  }
  }
  {
  __cil_tmp24 = (unsigned long )pdev;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = (struct device *)__cil_tmp25;
  vcc = regulator_get_exclusive(__cil_tmp26, "vled");
  __cil_tmp27 = (void const *)vcc;
  tmp___0 = IS_ERR(__cil_tmp27);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp28 = (unsigned long )pdev;
    __cil_tmp29 = __cil_tmp28 + 16;
    __cil_tmp30 = (struct device *)__cil_tmp29;
    __cil_tmp31 = (struct device const *)__cil_tmp30;
    __cil_tmp32 = *((char **)pdata);
    dev_err(__cil_tmp31, "Cannot get vcc for %s\n", __cil_tmp32);
    __cil_tmp33 = (void const *)vcc;
    tmp = PTR_ERR(__cil_tmp33);
    }
    return ((int )tmp);
  } else {
  }
  {
  tmp___1 = kzalloc(672UL, 208U);
  led = (struct regulator_led *)tmp___1;
  }
  {
  __cil_tmp34 = (struct regulator_led *)0;
  __cil_tmp35 = (unsigned long )__cil_tmp34;
  __cil_tmp36 = (unsigned long )led;
  if (__cil_tmp36 == __cil_tmp35) {
    ret = -12;
    goto err_vcc;
  } else {
  }
  }
  {
  __cil_tmp37 = 0 + 12;
  __cil_tmp38 = (unsigned long )led;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  *((int *)__cil_tmp39) = led_regulator_get_max_brightness(vcc);
  }
  {
  __cil_tmp40 = 0 + 12;
  __cil_tmp41 = (unsigned long )led;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  __cil_tmp43 = *((int *)__cil_tmp42);
  __cil_tmp44 = (unsigned int )__cil_tmp43;
  __cil_tmp45 = (unsigned long )pdata;
  __cil_tmp46 = __cil_tmp45 + 8;
  __cil_tmp47 = *((enum led_brightness *)__cil_tmp46);
  __cil_tmp48 = (unsigned int )__cil_tmp47;
  if (__cil_tmp48 > __cil_tmp44) {
    {
    __cil_tmp49 = (unsigned long )pdev;
    __cil_tmp50 = __cil_tmp49 + 16;
    __cil_tmp51 = (struct device *)__cil_tmp50;
    __cil_tmp52 = (struct device const *)__cil_tmp51;
    __cil_tmp53 = (unsigned long )pdata;
    __cil_tmp54 = __cil_tmp53 + 8;
    __cil_tmp55 = *((enum led_brightness *)__cil_tmp54);
    __cil_tmp56 = (unsigned int )__cil_tmp55;
    dev_err(__cil_tmp52, "Invalid default brightness %d\n", __cil_tmp56);
    ret = -22;
    }
    goto err_led;
  } else {
  }
  }
  {
  __cil_tmp57 = (unsigned long )led;
  __cil_tmp58 = __cil_tmp57 + 408;
  __cil_tmp59 = (unsigned long )pdata;
  __cil_tmp60 = __cil_tmp59 + 8;
  *((enum led_brightness *)__cil_tmp58) = *((enum led_brightness *)__cil_tmp60);
  __cil_tmp61 = 0 + 24;
  __cil_tmp62 = (unsigned long )led;
  __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
  *((void (**)(struct led_classdev * , enum led_brightness ))__cil_tmp63) = & regulator_led_brightness_set;
  __cil_tmp64 = *((char **)pdata);
  *((char const **)led) = (char const *)__cil_tmp64;
  __cil_tmp65 = 0 + 16;
  __cil_tmp66 = (unsigned long )led;
  __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
  __cil_tmp68 = 0 + 16;
  __cil_tmp69 = (unsigned long )led;
  __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
  __cil_tmp71 = *((int *)__cil_tmp70);
  *((int *)__cil_tmp67) = __cil_tmp71 | 65536;
  __cil_tmp72 = (unsigned long )led;
  __cil_tmp73 = __cil_tmp72 + 664;
  *((struct regulator **)__cil_tmp73) = vcc;
  __cil_tmp74 = (unsigned long )led;
  __cil_tmp75 = __cil_tmp74 + 664;
  __cil_tmp76 = *((struct regulator **)__cil_tmp75);
  tmp___2 = regulator_is_enabled(__cil_tmp76);
  }
  if (tmp___2 != 0) {
    __cil_tmp77 = (unsigned long )led;
    __cil_tmp78 = __cil_tmp77 + 412;
    *((int *)__cil_tmp78) = 1;
  } else {
  }
  {
  __cil_tmp79 = (unsigned long )led;
  __cil_tmp80 = __cil_tmp79 + 416;
  __cil_tmp81 = (struct mutex *)__cil_tmp80;
  __mutex_init(__cil_tmp81, "&led->mutex", & __key);
  __cil_tmp82 = (unsigned long )led;
  __cil_tmp83 = __cil_tmp82 + 584;
  __cil_tmp84 = (struct work_struct *)__cil_tmp83;
  __init_work(__cil_tmp84, 0);
  __constr_expr_0_counter113 = 2097664L;
  __cil_tmp85 = (unsigned long )led;
  __cil_tmp86 = __cil_tmp85 + 584;
  ((atomic_long_t *)__cil_tmp86)->counter = __constr_expr_0_counter113;
  __cil_tmp87 = 584 + 32;
  __cil_tmp88 = (unsigned long )led;
  __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
  __cil_tmp90 = (struct lockdep_map *)__cil_tmp89;
  lockdep_init_map(__cil_tmp90, "(&led->work)", & __key___0, 0);
  __cil_tmp91 = 584 + 8;
  __cil_tmp92 = (unsigned long )led;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  __cil_tmp94 = (struct list_head *)__cil_tmp93;
  INIT_LIST_HEAD(__cil_tmp94);
  __cil_tmp95 = 584 + 24;
  __cil_tmp96 = (unsigned long )led;
  __cil_tmp97 = __cil_tmp96 + __cil_tmp95;
  *((void (**)(struct work_struct * ))__cil_tmp97) = & led_work;
  __cil_tmp98 = (void *)led;
  platform_set_drvdata(pdev, __cil_tmp98);
  __cil_tmp99 = (unsigned long )pdev;
  __cil_tmp100 = __cil_tmp99 + 16;
  __cil_tmp101 = (struct device *)__cil_tmp100;
  __cil_tmp102 = (struct led_classdev *)led;
  ret = led_classdev_register(__cil_tmp101, __cil_tmp102);
  }
  if (ret < 0) {
    {
    __cil_tmp103 = (unsigned long )led;
    __cil_tmp104 = __cil_tmp103 + 584;
    __cil_tmp105 = (struct work_struct *)__cil_tmp104;
    cancel_work_sync(__cil_tmp105);
    }
    goto err_led;
  } else {
  }
  {
  __cil_tmp106 = 0 + 8;
  __cil_tmp107 = (unsigned long )led;
  __cil_tmp108 = __cil_tmp107 + __cil_tmp106;
  __cil_tmp109 = (unsigned long )led;
  __cil_tmp110 = __cil_tmp109 + 408;
  __cil_tmp111 = *((enum led_brightness *)__cil_tmp110);
  *((int *)__cil_tmp108) = (int )__cil_tmp111;
  regulator_led_set_value(led);
  }
  return (0);
  err_led:
  {
  __cil_tmp112 = (void const *)led;
  kfree(__cil_tmp112);
  }
  err_vcc:
  {
  regulator_put(vcc);
  }
  return (ret);
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct platform_device *var_group1 ;
  int res_regulator_led_probe_7 ;
  int ldv_s_regulator_led_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_s_regulator_led_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_15564;
  ldv_15563:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_regulator_led_driver_platform_driver == 0) {
        {
        res_regulator_led_probe_7 = regulator_led_probe(var_group1);
        ldv_check_return_value(res_regulator_led_probe_7);
        }
        if (res_regulator_led_probe_7 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_regulator_led_driver_platform_driver = 0;
      } else {
      }
      goto ldv_15561;
      switch_default: ;
      goto ldv_15561;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_15561: ;
  ldv_15564:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_15563;
  } else
  if (ldv_s_regulator_led_driver_platform_driver != 0) {
    goto ldv_15563;
  } else {
    goto ldv_15565;
  }
  ldv_15565: ;
  ldv_module_exit: ;
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
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
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
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int led_classdev_register(struct device *arg0, struct led_classdev *arg1) {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_count_voltages(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_disable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_enable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
struct regulator *regulator_get_exclusive(struct device *arg0, const char *arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int regulator_is_enabled(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_list_voltage(struct regulator *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void regulator_put(struct regulator *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_set_voltage(struct regulator *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
