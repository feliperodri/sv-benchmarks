extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
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
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_9 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_9 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct task_struct;
struct lock_class_key {
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_12 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_12 __annonCompField6 ;
};
typedef struct spinlock spinlock_t;
struct task_struct;
typedef void (*ctor_fn_t)(void);
struct page;
struct file;
struct file;
struct page;
struct task_struct;
struct arch_spinlock;
struct task_struct;
struct module;
struct module;
struct device;
struct device;
struct completion;
struct completion;
struct task_struct;
struct page;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct task_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct page;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct device;
struct device;
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
   char start_comm[16] ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
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
struct page;
struct vm_area_struct;
struct completion;
struct file;
struct task_struct;
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
struct file;
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
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
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
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
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
struct module;
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
                    size_t count ) ;
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
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
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
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
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
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
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
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
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
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
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
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
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
   void (*release)(struct device *dev ) ;
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
   unsigned int active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct platform_device_id {
   char name[20] ;
   kernel_ulong_t driver_data __attribute__((__aligned__(sizeof(kernel_ulong_t )))) ;
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
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t state ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct device;
struct regulator;
struct regulator;
struct regulator_bulk_data {
   char const *supply ;
   struct regulator *consumer ;
   int ret ;
};
struct regulator_userspace_consumer_data {
   char const *name ;
   int num_supplies ;
   struct regulator_bulk_data *supplies ;
   bool init_on ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   struct kmem_cache_node *node[1 << 10] ;
};
struct userspace_consumer_data {
   char const *name ;
   struct mutex lock ;
   bool enabled ;
   int num_supplies ;
   struct regulator_bulk_data *supplies ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( sprintf)(char *buf , char const *fmt , ...) ;
extern bool sysfs_streq(char const *s1 , char const *s2 ) ;
extern void __mutex_init(struct mutex *lock , char const *name , struct lock_class_key *key ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int __attribute__((__warn_unused_result__)) sysfs_create_group(struct kobject *kobj ,
                                                                       struct attribute_group const *grp ) ;
extern void sysfs_remove_group(struct kobject *kobj , struct attribute_group const *grp ) ;
int init_module(void) ;
void cleanup_module(void) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern int ( dev_err)(struct device const *dev , char const *fmt
                                              , ...) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device const *)__cil_tmp4;
  tmp = dev_get_drvdata(__cil_tmp5);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
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
extern int regulator_bulk_get(struct device *dev , int num_consumers , struct regulator_bulk_data *consumers ) ;
extern int regulator_bulk_enable(int num_consumers , struct regulator_bulk_data *consumers ) ;
extern int regulator_bulk_disable(int num_consumers , struct regulator_bulk_data *consumers ) ;
extern void regulator_bulk_free(int num_consumers , struct regulator_bulk_data *consumers ) ;
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
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
static ssize_t reg_show_name(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{ struct userspace_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  char const *__cil_tmp8 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  data = (struct userspace_consumer_data *)tmp;
  __cil_tmp8 = *((char const **)data);
  tmp___0 = sprintf(buf, "%s\n", __cil_tmp8);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t reg_show_state(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{ struct userspace_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct device const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  {
  {
  __cil_tmp8 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp8);
  data = (struct userspace_consumer_data *)tmp;
  }
  {
  __cil_tmp9 = (unsigned long )data;
  __cil_tmp10 = __cil_tmp9 + 80;
  if (*((bool *)__cil_tmp10)) {
    {
    tmp___0 = sprintf(buf, "enabled\n");
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  }
  {
  tmp___1 = sprintf(buf, "disabled\n");
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t reg_set_state(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{ struct userspace_consumer_data *data ;
  void *tmp ;
  bool enabled ;
  int ret ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct device const *__cil_tmp13 ;
  struct device const *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct mutex *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  bool __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct regulator_bulk_data *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct regulator_bulk_data *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  struct device const *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct mutex *__cil_tmp40 ;
  {
  {
  __cil_tmp13 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp13);
  data = (struct userspace_consumer_data *)tmp;
  tmp___2 = sysfs_streq(buf, "enabled\n");
  }
  if (tmp___2) {
    enabled = (bool )1;
  } else {
    {
    tmp___3 = sysfs_streq(buf, "1");
    }
    if (tmp___3) {
      enabled = (bool )1;
    } else {
      {
      tmp___0 = sysfs_streq(buf, "disabled\n");
      }
      if (tmp___0) {
        enabled = (bool )0;
      } else {
        {
        tmp___1 = sysfs_streq(buf, "0");
        }
        if (tmp___1) {
          enabled = (bool )0;
        } else {
          {
          __cil_tmp14 = (struct device const *)dev;
          dev_err(__cil_tmp14, "Configuring invalid mode\n");
          }
          return ((ssize_t )count);
        }
      }
    }
  }
  {
  __cil_tmp15 = (unsigned long )data;
  __cil_tmp16 = __cil_tmp15 + 8;
  __cil_tmp17 = (struct mutex *)__cil_tmp16;
  mutex_lock(__cil_tmp17);
  }
  {
  __cil_tmp18 = (unsigned long )data;
  __cil_tmp19 = __cil_tmp18 + 80;
  __cil_tmp20 = *((bool *)__cil_tmp19);
  __cil_tmp21 = (int )__cil_tmp20;
  __cil_tmp22 = (int )enabled;
  if (__cil_tmp22 != __cil_tmp21) {
    if (enabled) {
      {
      __cil_tmp23 = (unsigned long )data;
      __cil_tmp24 = __cil_tmp23 + 84;
      __cil_tmp25 = *((int *)__cil_tmp24);
      __cil_tmp26 = (unsigned long )data;
      __cil_tmp27 = __cil_tmp26 + 88;
      __cil_tmp28 = *((struct regulator_bulk_data **)__cil_tmp27);
      ret = regulator_bulk_enable(__cil_tmp25, __cil_tmp28);
      }
    } else {
      {
      __cil_tmp29 = (unsigned long )data;
      __cil_tmp30 = __cil_tmp29 + 84;
      __cil_tmp31 = *((int *)__cil_tmp30);
      __cil_tmp32 = (unsigned long )data;
      __cil_tmp33 = __cil_tmp32 + 88;
      __cil_tmp34 = *((struct regulator_bulk_data **)__cil_tmp33);
      ret = regulator_bulk_disable(__cil_tmp31, __cil_tmp34);
      }
    }
    if (ret == 0) {
      __cil_tmp35 = (unsigned long )data;
      __cil_tmp36 = __cil_tmp35 + 80;
      *((bool *)__cil_tmp36) = enabled;
    } else {
      {
      __cil_tmp37 = (struct device const *)dev;
      dev_err(__cil_tmp37, "Failed to configure state: %d\n", ret);
      }
    }
  } else {
  }
  }
  {
  __cil_tmp38 = (unsigned long )data;
  __cil_tmp39 = __cil_tmp38 + 8;
  __cil_tmp40 = (struct mutex *)__cil_tmp39;
  mutex_unlock(__cil_tmp40);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_name = {{"name", (umode_t )292}, & reg_show_name, (ssize_t (*)(struct device *dev , struct device_attribute *attr ,
                                                           char const *buf , size_t count ))((void *)0)};
static struct device_attribute dev_attr_state = {{"state", (umode_t )420}, & reg_show_state, & reg_set_state};
static struct attribute *attributes[3] = { & dev_attr_name.attr, & dev_attr_state.attr, (struct attribute *)((void *)0)};
static struct attribute_group const attr_group = {(char const *)0, (umode_t (*)(struct kobject * , struct attribute * , int ))0,
    attributes};
static struct lock_class_key __key___2 ;
static int regulator_userspace_consumer_probe(struct platform_device *pdev )
{ struct regulator_userspace_consumer_data *pdata ;
  struct userspace_consumer_data *drvdata ;
  int ret ;
  void *tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void *__cil_tmp9 ;
  void *__cil_tmp10 ;
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
  struct mutex *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct device *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct regulator_bulk_data *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct device *__cil_tmp35 ;
  struct device const *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct kobject *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct regulator_bulk_data *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct device *__cil_tmp51 ;
  struct device const *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  void *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct kobject *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  struct regulator_bulk_data *__cil_tmp67 ;
  void const *__cil_tmp68 ;
  {
  __cil_tmp6 = 16 + 184;
  __cil_tmp7 = (unsigned long )pdev;
  __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
  __cil_tmp9 = *((void **)__cil_tmp8);
  pdata = (struct regulator_userspace_consumer_data *)__cil_tmp9;
  if (! pdata) {
    return (-22);
  } else {
  }
  {
  tmp = kzalloc(96UL, 208U);
  drvdata = (struct userspace_consumer_data *)tmp;
  }
  {
  __cil_tmp10 = (void *)0;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = (unsigned long )drvdata;
  if (__cil_tmp12 == __cil_tmp11) {
    return (-12);
  } else {
  }
  }
  *((char const **)drvdata) = *((char const **)pdata);
  __cil_tmp13 = (unsigned long )drvdata;
  __cil_tmp14 = __cil_tmp13 + 84;
  __cil_tmp15 = (unsigned long )pdata;
  __cil_tmp16 = __cil_tmp15 + 8;
  *((int *)__cil_tmp14) = *((int *)__cil_tmp16);
  __cil_tmp17 = (unsigned long )drvdata;
  __cil_tmp18 = __cil_tmp17 + 88;
  __cil_tmp19 = (unsigned long )pdata;
  __cil_tmp20 = __cil_tmp19 + 16;
  *((struct regulator_bulk_data **)__cil_tmp18) = *((struct regulator_bulk_data **)__cil_tmp20);
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp21 = (unsigned long )drvdata;
    __cil_tmp22 = __cil_tmp21 + 8;
    __cil_tmp23 = (struct mutex *)__cil_tmp22;
    __mutex_init(__cil_tmp23, "&drvdata->lock", & __key___2);
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp24 = (unsigned long )pdev;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = (struct device *)__cil_tmp25;
  __cil_tmp27 = (unsigned long )drvdata;
  __cil_tmp28 = __cil_tmp27 + 84;
  __cil_tmp29 = *((int *)__cil_tmp28);
  __cil_tmp30 = (unsigned long )drvdata;
  __cil_tmp31 = __cil_tmp30 + 88;
  __cil_tmp32 = *((struct regulator_bulk_data **)__cil_tmp31);
  ret = regulator_bulk_get(__cil_tmp26, __cil_tmp29, __cil_tmp32);
  }
  if (ret) {
    {
    __cil_tmp33 = (unsigned long )pdev;
    __cil_tmp34 = __cil_tmp33 + 16;
    __cil_tmp35 = (struct device *)__cil_tmp34;
    __cil_tmp36 = (struct device const *)__cil_tmp35;
    dev_err(__cil_tmp36, "Failed to get supplies: %d\n", ret);
    }
    goto err_alloc_supplies;
  } else {
  }
  {
  __cil_tmp37 = 16 + 16;
  __cil_tmp38 = (unsigned long )pdev;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  __cil_tmp40 = (struct kobject *)__cil_tmp39;
  ret = (int )sysfs_create_group(__cil_tmp40, & attr_group);
  }
  if (ret != 0) {
    goto err_create_attrs;
  } else {
  }
  {
  __cil_tmp41 = (unsigned long )pdata;
  __cil_tmp42 = __cil_tmp41 + 24;
  if (*((bool *)__cil_tmp42)) {
    {
    __cil_tmp43 = (unsigned long )drvdata;
    __cil_tmp44 = __cil_tmp43 + 84;
    __cil_tmp45 = *((int *)__cil_tmp44);
    __cil_tmp46 = (unsigned long )drvdata;
    __cil_tmp47 = __cil_tmp46 + 88;
    __cil_tmp48 = *((struct regulator_bulk_data **)__cil_tmp47);
    ret = regulator_bulk_enable(__cil_tmp45, __cil_tmp48);
    }
    if (ret) {
      {
      __cil_tmp49 = (unsigned long )pdev;
      __cil_tmp50 = __cil_tmp49 + 16;
      __cil_tmp51 = (struct device *)__cil_tmp50;
      __cil_tmp52 = (struct device const *)__cil_tmp51;
      dev_err(__cil_tmp52, "Failed to set initial state: %d\n", ret);
      }
      goto err_enable;
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp53 = (unsigned long )drvdata;
  __cil_tmp54 = __cil_tmp53 + 80;
  __cil_tmp55 = (unsigned long )pdata;
  __cil_tmp56 = __cil_tmp55 + 24;
  *((bool *)__cil_tmp54) = *((bool *)__cil_tmp56);
  __cil_tmp57 = (void *)drvdata;
  platform_set_drvdata(pdev, __cil_tmp57);
  }
  return (0);
  err_enable:
  {
  __cil_tmp58 = 16 + 16;
  __cil_tmp59 = (unsigned long )pdev;
  __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
  __cil_tmp61 = (struct kobject *)__cil_tmp60;
  sysfs_remove_group(__cil_tmp61, & attr_group);
  }
  err_create_attrs:
  {
  __cil_tmp62 = (unsigned long )drvdata;
  __cil_tmp63 = __cil_tmp62 + 84;
  __cil_tmp64 = *((int *)__cil_tmp63);
  __cil_tmp65 = (unsigned long )drvdata;
  __cil_tmp66 = __cil_tmp65 + 88;
  __cil_tmp67 = *((struct regulator_bulk_data **)__cil_tmp66);
  regulator_bulk_free(__cil_tmp64, __cil_tmp67);
  }
  err_alloc_supplies:
  {
  __cil_tmp68 = (void const *)drvdata;
  kfree(__cil_tmp68);
  }
  return (ret);
}
}
static int regulator_userspace_consumer_remove(struct platform_device *pdev )
{ struct userspace_consumer_data *data ;
  void *tmp ;
  struct platform_device const *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct kobject *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct regulator_bulk_data *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct regulator_bulk_data *__cil_tmp22 ;
  void const *__cil_tmp23 ;
  {
  {
  __cil_tmp4 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp4);
  data = (struct userspace_consumer_data *)tmp;
  __cil_tmp5 = 16 + 16;
  __cil_tmp6 = (unsigned long )pdev;
  __cil_tmp7 = __cil_tmp6 + __cil_tmp5;
  __cil_tmp8 = (struct kobject *)__cil_tmp7;
  sysfs_remove_group(__cil_tmp8, & attr_group);
  }
  {
  __cil_tmp9 = (unsigned long )data;
  __cil_tmp10 = __cil_tmp9 + 80;
  if (*((bool *)__cil_tmp10)) {
    {
    __cil_tmp11 = (unsigned long )data;
    __cil_tmp12 = __cil_tmp11 + 84;
    __cil_tmp13 = *((int *)__cil_tmp12);
    __cil_tmp14 = (unsigned long )data;
    __cil_tmp15 = __cil_tmp14 + 88;
    __cil_tmp16 = *((struct regulator_bulk_data **)__cil_tmp15);
    regulator_bulk_disable(__cil_tmp13, __cil_tmp16);
    }
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )data;
  __cil_tmp18 = __cil_tmp17 + 84;
  __cil_tmp19 = *((int *)__cil_tmp18);
  __cil_tmp20 = (unsigned long )data;
  __cil_tmp21 = __cil_tmp20 + 88;
  __cil_tmp22 = *((struct regulator_bulk_data **)__cil_tmp21);
  regulator_bulk_free(__cil_tmp19, __cil_tmp22);
  __cil_tmp23 = (void const *)data;
  kfree(__cil_tmp23);
  }
  return (0);
}
}
static struct platform_driver regulator_userspace_consumer_driver = {& regulator_userspace_consumer_probe, & regulator_userspace_consumer_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t state ))0, (int (*)(struct platform_device * ))0,
    {"reg-userspace-consumer", (struct bus_type *)0, (struct module *)0, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device *dev ))0,
     (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                 pm_message_t state ))0,
     (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int regulator_userspace_consumer_driver_init(void) __attribute__((__section__(".init.text"),
__no_instrument_function__)) ;
static int regulator_userspace_consumer_driver_init(void)
{ int tmp ;
  {
  {
  tmp = platform_driver_register(& regulator_userspace_consumer_driver);
  }
  return (tmp);
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = regulator_userspace_consumer_driver_init();
  }
  return (tmp);
}
}
static void regulator_userspace_consumer_driver_exit(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void regulator_userspace_consumer_driver_exit(void)
{
  {
  {
  platform_driver_unregister(& regulator_userspace_consumer_driver);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  regulator_userspace_consumer_driver_exit();
  }
  return;
}
}
static char const __mod_author191[43] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'M',
        (char const )'i', (char const )'k', (char const )'e', (char const )' ',
        (char const )'R', (char const )'a', (char const )'p', (char const )'o',
        (char const )'p', (char const )'o', (char const )'r', (char const )'t',
        (char const )' ', (char const )'<', (char const )'m', (char const )'i',
        (char const )'k', (char const )'e', (char const )'@', (char const )'c',
        (char const )'o', (char const )'m', (char const )'p', (char const )'u',
        (char const )'l', (char const )'a', (char const )'b', (char const )'.',
        (char const )'c', (char const )'o', (char const )'.', (char const )'i',
        (char const )'l', (char const )'>', (char const )'\000'};
static char const __mod_description192[66] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'U', (char const )'s', (char const )'e', (char const )'r',
        (char const )'s', (char const )'p', (char const )'a', (char const )'c',
        (char const )'e', (char const )' ', (char const )'c', (char const )'o',
        (char const )'n', (char const )'s', (char const )'u', (char const )'m',
        (char const )'e', (char const )'r', (char const )' ', (char const )'f',
        (char const )'o', (char const )'r', (char const )' ', (char const )'v',
        (char const )'o', (char const )'l', (char const )'t', (char const )'a',
        (char const )'g', (char const )'e', (char const )' ', (char const )'a',
        (char const )'n', (char const )'d', (char const )' ', (char const )'c',
        (char const )'u', (char const )'r', (char const )'r', (char const )'e',
        (char const )'n', (char const )'t', (char const )' ', (char const )'r',
        (char const )'e', (char const )'g', (char const )'u', (char const )'l',
        (char const )'a', (char const )'t', (char const )'o', (char const )'r',
        (char const )'s', (char const )'\000'};
static char const __mod_license193[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_regulator_userspace_consumer_probe_3 ;
void main(void)
{ struct platform_device *var_group1 ;
  int ldv_s_regulator_userspace_consumer_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int __cil_tmp5 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_regulator_userspace_consumer_driver_platform_driver = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0) {
    } else {
      {
      __cil_tmp5 = ldv_s_regulator_userspace_consumer_driver_platform_driver == 0;
      if (! __cil_tmp5) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp = __VERIFIER_nondet_int();
    }
    if (tmp == 0) {
      goto case_0;
    } else
    if (tmp == 1) {
      goto case_1;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_regulator_userspace_consumer_driver_platform_driver == 0) {
          {
          res_regulator_userspace_consumer_probe_3 = regulator_userspace_consumer_probe(var_group1);
          ldv_check_return_value(res_regulator_userspace_consumer_probe_3);
          }
          if (res_regulator_userspace_consumer_probe_3) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_regulator_userspace_consumer_driver_platform_driver = ldv_s_regulator_userspace_consumer_driver_platform_driver + 1;
        } else {
        }
        goto switch_break;
        case_1:
        if (ldv_s_regulator_userspace_consumer_driver_platform_driver == 1) {
          {
          regulator_userspace_consumer_remove(var_group1);
          ldv_s_regulator_userspace_consumer_driver_platform_driver = 0;
          }
        } else {
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
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
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
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
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
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
int regulator_bulk_disable(int arg0, struct regulator_bulk_data *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_bulk_enable(int arg0, struct regulator_bulk_data *arg1) {
  return __VERIFIER_nondet_int();
}
void regulator_bulk_free(int arg0, struct regulator_bulk_data *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_bulk_get(struct device *arg0, int arg1, struct regulator_bulk_data *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool sysfs_streq(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
