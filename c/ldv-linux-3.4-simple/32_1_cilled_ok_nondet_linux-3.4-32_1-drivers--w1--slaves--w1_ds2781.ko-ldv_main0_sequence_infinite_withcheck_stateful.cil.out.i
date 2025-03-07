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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head *head ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct task_struct;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
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
struct idr_layer {
   unsigned long bitmap ;
   struct idr_layer *ary[1 << 6] ;
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
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[128UL / sizeof(long ) - 1UL] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct w1_reg_num {
   __u64 family : 8 ;
   __u64 id : 48 ;
   __u64 crc : 8 ;
};
struct w1_slave;
struct w1_slave;
struct w1_family_ops {
   int (*add_slave)(struct w1_slave * ) ;
   void (*remove_slave)(struct w1_slave * ) ;
};
struct w1_family {
   struct list_head family_entry ;
   u8 fid ;
   struct w1_family_ops *fops ;
   atomic_t refcnt ;
};
struct w1_master;
struct w1_slave {
   struct module *owner ;
   unsigned char name[32] ;
   struct list_head w1_slave_entry ;
   struct w1_reg_num reg_num ;
   atomic_t refcnt ;
   u8 rom[9] ;
   u32 flags ;
   int ttl ;
   struct w1_master *master ;
   struct w1_family *family ;
   void *family_data ;
   struct device dev ;
   struct completion released ;
};
struct w1_bus_master {
   void *data ;
   u8 (*read_bit)(void * ) ;
   void (*write_bit)(void * , u8 ) ;
   u8 (*touch_bit)(void * , u8 ) ;
   u8 (*read_byte)(void * ) ;
   void (*write_byte)(void * , u8 ) ;
   u8 (*read_block)(void * , u8 * , int ) ;
   void (*write_block)(void * , u8 const * , int ) ;
   u8 (*triplet)(void * , u8 ) ;
   u8 (*reset_bus)(void * ) ;
   u8 (*set_pullup)(void * , int ) ;
   void (*search)(void * , struct w1_master * , u8 , void (*)(struct w1_master * ,
                                                               u64 ) ) ;
};
struct w1_master {
   struct list_head w1_master_entry ;
   struct module *owner ;
   unsigned char name[32] ;
   struct list_head slist ;
   int max_slave_count ;
   int slave_count ;
   unsigned long attempts ;
   int slave_ttl ;
   int initialized ;
   u32 id ;
   int search_count ;
   atomic_t refcnt ;
   void *priv ;
   int priv_size ;
   int enable_pullup ;
   int pullup_duration ;
   struct task_struct *thread ;
   struct mutex mutex ;
   struct device_driver *driver ;
   struct device dev ;
   struct w1_bus_master *bus_master ;
   u32 seq ;
};
long ldv__builtin_expect(long val , long res ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int __attribute__((__warn_unused_result__)) sysfs_create_bin_file(struct kobject *kobj ,
                                                                          struct bin_attribute const *attr ) ;
extern void sysfs_remove_bin_file(struct kobject *kobj , struct bin_attribute const *attr ) ;
int init_module(void) ;
void cleanup_module(void) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_alloc(char const *name , int id ) ;
extern int platform_device_add(struct platform_device *pdev ) ;
extern void ida_destroy(struct ida *ida ) ;
extern void ida_init(struct ida *ida ) ;
extern int ida_simple_get(struct ida *ida , unsigned int start , unsigned int end ,
                          gfp_t gfp_mask ) ;
extern void ida_simple_remove(struct ida *ida , unsigned int id ) ;
extern void w1_unregister_family(struct w1_family * ) ;
extern int w1_register_family(struct w1_family * ) ;
extern void w1_write_8(struct w1_master * , u8 ) ;
extern void w1_write_block(struct w1_master * , u8 const * , int ) ;
extern u8 w1_read_block(struct w1_master * , u8 * , int ) ;
extern int w1_reset_select_slave(struct w1_slave *sl ) ;
int w1_ds2781_io(struct device *dev , char *buf , int addr , size_t count , int io ) ;
int w1_ds2781_io_nolock(struct device *dev , char *buf , int addr , size_t count ,
                        int io ) ;
int w1_ds2781_eeprom_cmd(struct device *dev , int addr , int cmd ) ;
static int w1_ds2781_do_io(struct device *dev , char *buf , int addr , size_t count ,
                           int io )
{ struct w1_slave *sl ;
  struct device const *__mptr ;
  int __min1 ;
  int __min2 ;
  int tmp ;
  u8 tmp___0 ;
  int tmp___1 ;
  struct w1_slave *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device *__cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  char *__cil_tmp18 ;
  char *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct w1_master *__cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct w1_master *__cil_tmp26 ;
  u8 __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct w1_master *__cil_tmp30 ;
  u8 const *__cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct w1_master *__cil_tmp35 ;
  u8 __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct w1_master *__cil_tmp39 ;
  u8 __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct w1_master *__cil_tmp43 ;
  u8 *__cil_tmp44 ;
  int __cil_tmp45 ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp13 = (struct w1_slave *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 112;
  __cil_tmp16 = (struct device *)__cil_tmp15;
  __cil_tmp17 = (unsigned int )__cil_tmp16;
  __cil_tmp18 = (char *)__mptr;
  __cil_tmp19 = __cil_tmp18 - __cil_tmp17;
  sl = (struct w1_slave *)__cil_tmp19;
  if (addr > 178) {
    return (0);
  } else
  if (addr < 0) {
    return (0);
  } else {
  }
  __min1 = (int )count;
  __min2 = 178 - addr;
  if (__min1 < __min2) {
    tmp = __min1;
  } else {
    tmp = __min2;
  }
  {
  count = (size_t )tmp;
  tmp___1 = w1_reset_select_slave(sl);
  }
  if (tmp___1 == 0) {
    if (io) {
      {
      __cil_tmp20 = (unsigned long )sl;
      __cil_tmp21 = __cil_tmp20 + 88;
      __cil_tmp22 = *((struct w1_master **)__cil_tmp21);
      __cil_tmp23 = (u8 )108;
      w1_write_8(__cil_tmp22, __cil_tmp23);
      __cil_tmp24 = (unsigned long )sl;
      __cil_tmp25 = __cil_tmp24 + 88;
      __cil_tmp26 = *((struct w1_master **)__cil_tmp25);
      __cil_tmp27 = (u8 )addr;
      w1_write_8(__cil_tmp26, __cil_tmp27);
      __cil_tmp28 = (unsigned long )sl;
      __cil_tmp29 = __cil_tmp28 + 88;
      __cil_tmp30 = *((struct w1_master **)__cil_tmp29);
      __cil_tmp31 = (u8 const *)buf;
      __cil_tmp32 = (int )count;
      w1_write_block(__cil_tmp30, __cil_tmp31, __cil_tmp32);
      }
    } else {
      {
      __cil_tmp33 = (unsigned long )sl;
      __cil_tmp34 = __cil_tmp33 + 88;
      __cil_tmp35 = *((struct w1_master **)__cil_tmp34);
      __cil_tmp36 = (u8 )105;
      w1_write_8(__cil_tmp35, __cil_tmp36);
      __cil_tmp37 = (unsigned long )sl;
      __cil_tmp38 = __cil_tmp37 + 88;
      __cil_tmp39 = *((struct w1_master **)__cil_tmp38);
      __cil_tmp40 = (u8 )addr;
      w1_write_8(__cil_tmp39, __cil_tmp40);
      __cil_tmp41 = (unsigned long )sl;
      __cil_tmp42 = __cil_tmp41 + 88;
      __cil_tmp43 = *((struct w1_master **)__cil_tmp42);
      __cil_tmp44 = (u8 *)buf;
      __cil_tmp45 = (int )count;
      tmp___0 = w1_read_block(__cil_tmp43, __cil_tmp44, __cil_tmp45);
      count = (size_t )tmp___0;
      }
    }
  } else {
  }
  return ((int )count);
}
}
int w1_ds2781_io(struct device *dev , char *buf , int addr , size_t count , int io )
{ struct w1_slave *sl ;
  struct device const *__mptr ;
  int ret ;
  struct w1_slave *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct device *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct w1_master *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct mutex *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct w1_master *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  struct mutex *__cil_tmp27 ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp9 = (struct w1_slave *)0;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 112;
  __cil_tmp12 = (struct device *)__cil_tmp11;
  __cil_tmp13 = (unsigned int )__cil_tmp12;
  __cil_tmp14 = (char *)__mptr;
  __cil_tmp15 = __cil_tmp14 - __cil_tmp13;
  sl = (struct w1_slave *)__cil_tmp15;
  if (! dev) {
    return (-19);
  } else {
  }
  {
  __cil_tmp16 = (unsigned long )sl;
  __cil_tmp17 = __cil_tmp16 + 88;
  __cil_tmp18 = *((struct w1_master **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 + 144;
  __cil_tmp21 = (struct mutex *)__cil_tmp20;
  mutex_lock(__cil_tmp21);
  ret = w1_ds2781_do_io(dev, buf, addr, count, io);
  __cil_tmp22 = (unsigned long )sl;
  __cil_tmp23 = __cil_tmp22 + 88;
  __cil_tmp24 = *((struct w1_master **)__cil_tmp23);
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 + 144;
  __cil_tmp27 = (struct mutex *)__cil_tmp26;
  mutex_unlock(__cil_tmp27);
  }
  return (ret);
}
}
extern void *__crc_w1_ds2781_io __attribute__((__weak__)) ;
static unsigned long const __kcrctab_w1_ds2781_io __attribute__((__used__, __unused__,
__section__("___kcrctab+w1_ds2781_io"))) = (unsigned long const )((unsigned long )(& __crc_w1_ds2781_io));
static char const __kstrtab_w1_ds2781_io[13] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'w', (char const )'1', (char const )'_', (char const )'d',
        (char const )'s', (char const )'2', (char const )'7', (char const )'8',
        (char const )'1', (char const )'_', (char const )'i', (char const )'o',
        (char const )'\000'};
static struct kernel_symbol const __ksymtab_w1_ds2781_io __attribute__((__used__,
__unused__, __section__("___ksymtab+w1_ds2781_io"))) = {(unsigned long )(& w1_ds2781_io), __kstrtab_w1_ds2781_io};
int w1_ds2781_io_nolock(struct device *dev , char *buf , int addr , size_t count ,
                        int io )
{ int ret ;
  {
  if (! dev) {
    return (-19);
  } else {
  }
  {
  ret = w1_ds2781_do_io(dev, buf, addr, count, io);
  }
  return (ret);
}
}
extern void *__crc_w1_ds2781_io_nolock __attribute__((__weak__)) ;
static unsigned long const __kcrctab_w1_ds2781_io_nolock __attribute__((__used__,
__unused__, __section__("___kcrctab+w1_ds2781_io_nolock"))) = (unsigned long const )((unsigned long )(& __crc_w1_ds2781_io_nolock));
static char const __kstrtab_w1_ds2781_io_nolock[20] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'w', (char const )'1', (char const )'_', (char const )'d',
        (char const )'s', (char const )'2', (char const )'7', (char const )'8',
        (char const )'1', (char const )'_', (char const )'i', (char const )'o',
        (char const )'_', (char const )'n', (char const )'o', (char const )'l',
        (char const )'o', (char const )'c', (char const )'k', (char const )'\000'};
static struct kernel_symbol const __ksymtab_w1_ds2781_io_nolock __attribute__((__used__,
__unused__, __section__("___ksymtab+w1_ds2781_io_nolock"))) = {(unsigned long )(& w1_ds2781_io_nolock), __kstrtab_w1_ds2781_io_nolock};
int w1_ds2781_eeprom_cmd(struct device *dev , int addr , int cmd )
{ struct w1_slave *sl ;
  struct device const *__mptr ;
  int tmp ;
  struct w1_slave *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  char *__cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct w1_master *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct mutex *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct w1_master *__cil_tmp22 ;
  u8 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct w1_master *__cil_tmp26 ;
  u8 __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct w1_master *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct mutex *__cil_tmp33 ;
  {
  __mptr = (struct device const *)dev;
  __cil_tmp7 = (struct w1_slave *)0;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 + 112;
  __cil_tmp10 = (struct device *)__cil_tmp9;
  __cil_tmp11 = (unsigned int )__cil_tmp10;
  __cil_tmp12 = (char *)__mptr;
  __cil_tmp13 = __cil_tmp12 - __cil_tmp11;
  sl = (struct w1_slave *)__cil_tmp13;
  if (! dev) {
    return (-22);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )sl;
  __cil_tmp15 = __cil_tmp14 + 88;
  __cil_tmp16 = *((struct w1_master **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 144;
  __cil_tmp19 = (struct mutex *)__cil_tmp18;
  mutex_lock(__cil_tmp19);
  tmp = w1_reset_select_slave(sl);
  }
  if (tmp == 0) {
    {
    __cil_tmp20 = (unsigned long )sl;
    __cil_tmp21 = __cil_tmp20 + 88;
    __cil_tmp22 = *((struct w1_master **)__cil_tmp21);
    __cil_tmp23 = (u8 )cmd;
    w1_write_8(__cil_tmp22, __cil_tmp23);
    __cil_tmp24 = (unsigned long )sl;
    __cil_tmp25 = __cil_tmp24 + 88;
    __cil_tmp26 = *((struct w1_master **)__cil_tmp25);
    __cil_tmp27 = (u8 )addr;
    w1_write_8(__cil_tmp26, __cil_tmp27);
    }
  } else {
  }
  {
  __cil_tmp28 = (unsigned long )sl;
  __cil_tmp29 = __cil_tmp28 + 88;
  __cil_tmp30 = *((struct w1_master **)__cil_tmp29);
  __cil_tmp31 = (unsigned long )__cil_tmp30;
  __cil_tmp32 = __cil_tmp31 + 144;
  __cil_tmp33 = (struct mutex *)__cil_tmp32;
  mutex_unlock(__cil_tmp33);
  }
  return (0);
}
}
extern void *__crc_w1_ds2781_eeprom_cmd __attribute__((__weak__)) ;
static unsigned long const __kcrctab_w1_ds2781_eeprom_cmd __attribute__((__used__,
__unused__, __section__("___kcrctab+w1_ds2781_eeprom_cmd"))) = (unsigned long const )((unsigned long )(& __crc_w1_ds2781_eeprom_cmd));
static char const __kstrtab_w1_ds2781_eeprom_cmd[21] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'w', (char const )'1', (char const )'_', (char const )'d',
        (char const )'s', (char const )'2', (char const )'7', (char const )'8',
        (char const )'1', (char const )'_', (char const )'e', (char const )'e',
        (char const )'p', (char const )'r', (char const )'o', (char const )'m',
        (char const )'_', (char const )'c', (char const )'m', (char const )'d',
        (char const )'\000'};
static struct kernel_symbol const __ksymtab_w1_ds2781_eeprom_cmd __attribute__((__used__,
__unused__, __section__("___ksymtab+w1_ds2781_eeprom_cmd"))) = {(unsigned long )(& w1_ds2781_eeprom_cmd), __kstrtab_w1_ds2781_eeprom_cmd};
static ssize_t w1_ds2781_read_bin(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                  char *buf , loff_t off , size_t count )
{ struct device *dev ;
  struct kobject const *__mptr ;
  int tmp ;
  struct device *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct kobject *__cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  char *__cil_tmp15 ;
  char *__cil_tmp16 ;
  int __cil_tmp17 ;
  {
  {
  __mptr = (struct kobject const *)kobj;
  __cil_tmp10 = (struct device *)0;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 + 16;
  __cil_tmp13 = (struct kobject *)__cil_tmp12;
  __cil_tmp14 = (unsigned int )__cil_tmp13;
  __cil_tmp15 = (char *)__mptr;
  __cil_tmp16 = __cil_tmp15 - __cil_tmp14;
  dev = (struct device *)__cil_tmp16;
  __cil_tmp17 = (int )off;
  tmp = w1_ds2781_io(dev, buf, __cil_tmp17, count, 0);
  }
  return ((ssize_t )tmp);
}
}
static struct bin_attribute w1_ds2781_bin_attr = {{"w1_slave", (umode_t )292}, (size_t )178, (void *)0, & w1_ds2781_read_bin, (ssize_t (*)(struct file * ,
                                                                                             struct kobject * ,
                                                                                             struct bin_attribute * ,
                                                                                             char * ,
                                                                                             loff_t ,
                                                                                             size_t ))0,
    (int (*)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ))0};
static struct ida bat_ida = {{(struct idr_layer *)((void *)0), (struct idr_layer *)((void *)0), 0, 0, {{{{{(__ticketpair_t )0}},
                                                                                3735899821U,
                                                                                4294967295U,
                                                                                (void *)-1L}}}},
    (struct ida_bitmap *)((void *)0)};
static int w1_ds2781_add_slave(struct w1_slave *sl )
{ int ret ;
  int id ;
  struct platform_device *pdev ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct kobject *__cil_tmp12 ;
  struct bin_attribute const *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device *__cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  {
  {
  id = ida_simple_get(& bat_ida, 0U, 0U, 208U);
  }
  if (id < 0) {
    ret = id;
    goto noid;
  } else {
  }
  {
  pdev = platform_device_alloc("ds2781-battery", id);
  }
  if (! pdev) {
    ret = -12;
    goto pdev_alloc_failed;
  } else {
  }
  {
  __cil_tmp5 = (unsigned long )pdev;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = (unsigned long )sl;
  __cil_tmp8 = __cil_tmp7 + 112;
  *((struct device **)__cil_tmp6) = (struct device *)__cil_tmp8;
  ret = platform_device_add(pdev);
  }
  if (ret) {
    goto bin_attr_failed;
  } else {
  }
  {
  __cil_tmp9 = 112 + 16;
  __cil_tmp10 = (unsigned long )sl;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = (struct kobject *)__cil_tmp11;
  __cil_tmp13 = (struct bin_attribute const *)(& w1_ds2781_bin_attr);
  ret = (int )sysfs_create_bin_file(__cil_tmp12, __cil_tmp13);
  }
  if (ret) {
    goto bin_attr_failed;
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )sl;
  __cil_tmp15 = __cil_tmp14 + 112;
  __cil_tmp16 = (struct device *)__cil_tmp15;
  __cil_tmp17 = (void *)pdev;
  dev_set_drvdata(__cil_tmp16, __cil_tmp17);
  }
  return (0);
  bin_attr_failed:
  {
  platform_device_unregister(pdev);
  }
  pdev_alloc_failed:
  {
  __cil_tmp18 = (unsigned int )id;
  ida_simple_remove(& bat_ida, __cil_tmp18);
  }
  noid:
  return (ret);
}
}
static void w1_ds2781_remove_slave(struct w1_slave *sl )
{ struct platform_device *pdev ;
  void *tmp ;
  int id ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct kobject *__cil_tmp15 ;
  struct bin_attribute const *__cil_tmp16 ;
  {
  {
  __cil_tmp5 = (unsigned long )sl;
  __cil_tmp6 = __cil_tmp5 + 112;
  __cil_tmp7 = (struct device *)__cil_tmp6;
  __cil_tmp8 = (struct device const *)__cil_tmp7;
  tmp = dev_get_drvdata(__cil_tmp8);
  pdev = (struct platform_device *)tmp;
  __cil_tmp9 = (unsigned long )pdev;
  __cil_tmp10 = __cil_tmp9 + 8;
  id = *((int *)__cil_tmp10);
  platform_device_unregister(pdev);
  __cil_tmp11 = (unsigned int )id;
  ida_simple_remove(& bat_ida, __cil_tmp11);
  __cil_tmp12 = 112 + 16;
  __cil_tmp13 = (unsigned long )sl;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = (struct kobject *)__cil_tmp14;
  __cil_tmp16 = (struct bin_attribute const *)(& w1_ds2781_bin_attr);
  sysfs_remove_bin_file(__cil_tmp15, __cil_tmp16);
  }
  return;
}
}
static struct w1_family_ops w1_ds2781_fops = {& w1_ds2781_add_slave, & w1_ds2781_remove_slave};
static struct w1_family w1_ds2781_family = {{(struct list_head *)0, (struct list_head *)0}, (u8 )61, & w1_ds2781_fops, {0}};
static int w1_ds2781_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int w1_ds2781_init(void)
{ int tmp ;
  {
  {
  ida_init(& bat_ida);
  tmp = w1_register_family(& w1_ds2781_family);
  }
  return (tmp);
}
}
static void w1_ds2781_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void w1_ds2781_exit(void)
{
  {
  {
  w1_unregister_family(& w1_ds2781_family);
  ida_destroy(& bat_ida);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = w1_ds2781_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  w1_ds2781_exit();
  }
  return;
}
}
static char const __mod_license200[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author201[46] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'R',
        (char const )'e', (char const )'n', (char const )'a', (char const )'t',
        (char const )'a', (char const )' ', (char const )'S', (char const )'a',
        (char const )'y', (char const )'a', (char const )'k', (char const )'h',
        (char const )'o', (char const )'v', (char const )'a', (char const )' ',
        (char const )'<', (char const )'r', (char const )'e', (char const )'n',
        (char const )'a', (char const )'t', (char const )'a', (char const )'@',
        (char const )'o', (char const )'k', (char const )'t', (char const )'e',
        (char const )'t', (char const )'l', (char const )'a', (char const )'b',
        (char const )'s', (char const )'.', (char const )'r', (char const )'u',
        (char const )'>', (char const )'\000'};
static char const __mod_description202[76] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'1', (char const )'-', (char const )'w', (char const )'i',
        (char const )'r', (char const )'e', (char const )' ', (char const )'D',
        (char const )'r', (char const )'i', (char const )'v', (char const )'e',
        (char const )'r', (char const )' ', (char const )'f', (char const )'o',
        (char const )'r', (char const )' ', (char const )'M', (char const )'a',
        (char const )'x', (char const )'i', (char const )'m', (char const )'/',
        (char const )'D', (char const )'a', (char const )'l', (char const )'l',
        (char const )'a', (char const )'s', (char const )' ', (char const )'D',
        (char const )'S', (char const )'2', (char const )'7', (char const )'8',
        (char const )'1', (char const )' ', (char const )'S', (char const )'t',
        (char const )'a', (char const )'n', (char const )'d', (char const )'-',
        (char const )'A', (char const )'l', (char const )'o', (char const )'n',
        (char const )'e', (char const )' ', (char const )'F', (char const )'u',
        (char const )'e', (char const )'l', (char const )' ', (char const )'G',
        (char const )'a', (char const )'u', (char const )'g', (char const )'e',
        (char const )' ', (char const )'I', (char const )'C', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct file *var_group1 ;
  struct kobject *var_group2 ;
  struct bin_attribute *var_w1_ds2781_read_bin_4_p2 ;
  char *var_w1_ds2781_read_bin_4_p3 ;
  loff_t var_w1_ds2781_read_bin_4_p4 ;
  size_t var_w1_ds2781_read_bin_4_p5 ;
  struct w1_slave *var_group3 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = w1_ds2781_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
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
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        w1_ds2781_read_bin(var_group1, var_group2, var_w1_ds2781_read_bin_4_p2, var_w1_ds2781_read_bin_4_p3,
                           var_w1_ds2781_read_bin_4_p4, var_w1_ds2781_read_bin_4_p5);
        }
        goto switch_break;
        case_1:
        {
        w1_ds2781_add_slave(var_group3);
        }
        goto switch_break;
        case_2:
        {
        w1_ds2781_remove_slave(var_group3);
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
  {
  w1_ds2781_exit();
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
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void ida_destroy(struct ida *arg0) {
  return;
}
void ida_init(struct ida *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ida_simple_get(struct ida *arg0, unsigned int arg1, unsigned int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void ida_simple_remove(struct ida *arg0, unsigned int arg1) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_bin_file(struct kobject *arg0, const struct bin_attribute *arg1) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 w1_read_block(struct w1_master *arg0, u8 *arg1, int arg2) {
  return __VERIFIER_nondet_uchar();
}
int __VERIFIER_nondet_int(void);
int w1_register_family(struct w1_family *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int w1_reset_select_slave(struct w1_slave *arg0) {
  return __VERIFIER_nondet_int();
}
void w1_unregister_family(struct w1_family *arg0) {
  return;
}
void w1_write_8(struct w1_master *arg0, u8 arg1) {
  return;
}
void w1_write_block(struct w1_master *arg0, const u8 *arg1, int arg2) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
