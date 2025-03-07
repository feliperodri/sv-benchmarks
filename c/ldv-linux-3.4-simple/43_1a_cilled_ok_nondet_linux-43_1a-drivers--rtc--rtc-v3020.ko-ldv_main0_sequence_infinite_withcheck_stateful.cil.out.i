extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_clockid_t clockid_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
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
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
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
struct seq_operations;
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
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
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
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct cred;
struct cred;
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
struct rtc_time {
   int tm_sec ;
   int tm_min ;
   int tm_hour ;
   int tm_mday ;
   int tm_mon ;
   int tm_year ;
   int tm_wday ;
   int tm_yday ;
   int tm_isdst ;
};
struct rtc_wkalrm {
   unsigned char enabled ;
   unsigned char pending ;
   struct rtc_time time ;
};
struct proc_dir_entry;
struct proc_dir_entry;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
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
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct path;
struct path;
struct inode;
struct inode;
struct dentry;
struct dentry;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct file_operations;
struct file_operations;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
struct block_device;
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
struct nameidata;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_137 {
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
   union __anonunion_d_u_137 d_u ;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
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
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
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
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_140 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_139 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_140 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_139 read_descriptor_t;
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
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct request_queue;
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
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_18694_141 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18713_142 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_lock;
union __anonunion_ldv_18729_143 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_18694_141 ldv_18694 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_18713_142 ldv_18713 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_18729_143 ldv_18729 ;
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
union __anonunion_f_u_144 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_144 f_u ;
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
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_146 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_145 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_146 afs ;
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
   union __anonunion_fl_u_145 fl_u ;
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
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
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
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
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
   void (*dirty_inode)(struct inode * , int ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct rtc_class_ops {
   int (*open)(struct device * ) ;
   void (*release)(struct device * ) ;
   int (*ioctl)(struct device * , unsigned int , unsigned long ) ;
   int (*read_time)(struct device * , struct rtc_time * ) ;
   int (*set_time)(struct device * , struct rtc_time * ) ;
   int (*read_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*set_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*proc)(struct device * , struct seq_file * ) ;
   int (*set_mmss)(struct device * , unsigned long ) ;
   int (*read_callback)(struct device * , int ) ;
   int (*alarm_irq_enable)(struct device * , unsigned int ) ;
};
struct rtc_task {
   void (*func)(void * ) ;
   void *private_data ;
};
struct rtc_timer {
   struct rtc_task task ;
   struct timerqueue_node node ;
   ktime_t period ;
   int enabled ;
};
struct rtc_device {
   struct device dev ;
   struct module *owner ;
   int id ;
   char name[20U] ;
   struct rtc_class_ops const *ops ;
   struct mutex ops_lock ;
   struct cdev char_dev ;
   unsigned long flags ;
   unsigned long irq_data ;
   spinlock_t irq_lock ;
   wait_queue_head_t irq_queue ;
   struct fasync_struct *async_queue ;
   struct rtc_task *irq_task ;
   spinlock_t irq_task_lock ;
   int irq_freq ;
   int max_user_freq ;
   struct timerqueue_head timerqueue ;
   struct rtc_timer aie_timer ;
   struct rtc_timer uie_rtctimer ;
   struct hrtimer pie_timer ;
   int pie_enabled ;
   struct work_struct irqwork ;
   int uie_unsupported ;
   struct work_struct uie_task ;
   struct timer_list uie_timer ;
   unsigned int oldsecs ;
   unsigned char uie_irq_active : 1 ;
   unsigned char stop_uie_polling : 1 ;
   unsigned char uie_task_active : 1 ;
   unsigned char uie_timer_active : 1 ;
};
struct v3020_platform_data {
   int leftshift ;
   unsigned char use_gpio : 1 ;
   unsigned int gpio_cs ;
   unsigned int gpio_wr ;
   unsigned int gpio_rd ;
   unsigned int gpio_io ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct v3020;
struct v3020;
struct v3020_chip_ops {
   int (*map_io)(struct v3020 * , struct platform_device * , struct v3020_platform_data * ) ;
   void (*unmap_io)(struct v3020 * ) ;
   unsigned char (*read_bit)(struct v3020 * ) ;
   void (*write_bit)(struct v3020 * , unsigned char ) ;
};
struct v3020_gpio {
   char const *name ;
   unsigned int gpio ;
};
struct v3020 {
   void *ioaddress ;
   int leftshift ;
   struct v3020_gpio *gpio ;
   struct v3020_chip_ops *ops ;
   struct rtc_device *rtc ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
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
__inline static unsigned int readl(void const volatile *addr )
{ unsigned int ret ;
  unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*__cil_tmp3): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{ unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*__cil_tmp3): "memory");
  return;
}
}
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
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int _dev_info(struct device const * , char const * , ...) ;
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
extern struct rtc_device *rtc_device_register(char const * , struct device * , struct rtc_class_ops const * ,
                                              struct module * ) ;
extern void rtc_device_unregister(struct rtc_device * ) ;
extern unsigned int bcd2bin(unsigned char ) ;
extern unsigned char bin2bcd(unsigned int ) ;
extern void __const_udelay(unsigned long ) ;
extern int gpio_request(unsigned int , char const * ) ;
extern void gpio_free(unsigned int ) ;
extern int gpio_direction_input(unsigned int ) ;
extern int gpio_direction_output(unsigned int , int ) ;
extern int __gpio_get_value(unsigned int ) ;
extern void __gpio_set_value(unsigned int , int ) ;
__inline static int gpio_get_value(unsigned int gpio )
{ int tmp ;
  {
  {
  tmp = __gpio_get_value(gpio);
  }
  return (tmp);
}
}
__inline static void gpio_set_value(unsigned int gpio , int value )
{
  {
  {
  __gpio_set_value(gpio, value);
  }
  return;
}
}
static int v3020_mmio_map(struct v3020 *chip , struct platform_device *pdev , struct v3020_platform_data *pdata )
{ unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u32 __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct resource *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct resource *__cil_tmp17 ;
  resource_size_t __cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  {
  {
  __cil_tmp4 = (unsigned long )pdev;
  __cil_tmp5 = __cil_tmp4 + 1168;
  __cil_tmp6 = *((u32 *)__cil_tmp5);
  if (__cil_tmp6 != 1U) {
    return (-16);
  } else {
  }
  }
  {
  __cil_tmp7 = (unsigned long )pdev;
  __cil_tmp8 = __cil_tmp7 + 1176;
  __cil_tmp9 = *((struct resource **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 24;
  __cil_tmp12 = *((unsigned long *)__cil_tmp11);
  if (__cil_tmp12 != 512UL) {
    return (-16);
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )chip;
  __cil_tmp14 = __cil_tmp13 + 8;
  *((int *)__cil_tmp14) = *((int *)pdata);
  __cil_tmp15 = (unsigned long )pdev;
  __cil_tmp16 = __cil_tmp15 + 1176;
  __cil_tmp17 = *((struct resource **)__cil_tmp16);
  __cil_tmp18 = *((resource_size_t *)__cil_tmp17);
  *((void **)chip) = ioremap(__cil_tmp18, 1UL);
  }
  {
  __cil_tmp19 = (void *)0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = *((void **)chip);
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  if (__cil_tmp22 == __cil_tmp20) {
    return (-16);
  } else {
  }
  }
  return (0);
}
}
static void v3020_mmio_unmap(struct v3020 *chip )
{ void *__cil_tmp2 ;
  void volatile *__cil_tmp3 ;
  {
  {
  __cil_tmp2 = *((void **)chip);
  __cil_tmp3 = (void volatile *)__cil_tmp2;
  iounmap(__cil_tmp3);
  }
  return;
}
}
static void v3020_mmio_write_bit(struct v3020 *chip , unsigned char bit )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  void *__cil_tmp9 ;
  void volatile *__cil_tmp10 ;
  {
  {
  __cil_tmp3 = (unsigned long )chip;
  __cil_tmp4 = __cil_tmp3 + 8;
  __cil_tmp5 = *((int *)__cil_tmp4);
  __cil_tmp6 = (int )bit;
  __cil_tmp7 = __cil_tmp6 << __cil_tmp5;
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  __cil_tmp9 = *((void **)chip);
  __cil_tmp10 = (void volatile *)__cil_tmp9;
  writel(__cil_tmp8, __cil_tmp10);
  }
  return;
}
}
static unsigned char v3020_mmio_read_bit(struct v3020 *chip )
{ unsigned int tmp ;
  void *__cil_tmp3 ;
  void const volatile *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  __cil_tmp3 = *((void **)chip);
  __cil_tmp4 = (void const volatile *)__cil_tmp3;
  tmp = readl(__cil_tmp4);
  }
  {
  __cil_tmp5 = (unsigned long )chip;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((int *)__cil_tmp6);
  __cil_tmp8 = 1 << __cil_tmp7;
  __cil_tmp9 = (unsigned int )__cil_tmp8;
  __cil_tmp10 = tmp & __cil_tmp9;
  __cil_tmp11 = __cil_tmp10 != 0U;
  return ((unsigned char )__cil_tmp11);
  }
}
}
static struct v3020_chip_ops v3020_mmio_ops = {& v3020_mmio_map, & v3020_mmio_unmap, & v3020_mmio_read_bit, & v3020_mmio_write_bit};
static struct v3020_gpio v3020_gpio[4U] = { {"RTC CS", 0U},
        {"RTC WR", 0U},
        {"RTC RD", 0U},
        {"RTC IO", 0U}};
static int v3020_gpio_map(struct v3020 *chip , struct platform_device *pdev , struct v3020_platform_data *pdata )
{ int i ;
  int err ;
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
  unsigned int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char const *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  {
  __cil_tmp6 = 0 * 16UL;
  __cil_tmp7 = __cil_tmp6 + 8;
  __cil_tmp8 = (unsigned long )(v3020_gpio) + __cil_tmp7;
  __cil_tmp9 = (unsigned long )pdata;
  __cil_tmp10 = __cil_tmp9 + 8;
  *((unsigned int *)__cil_tmp8) = *((unsigned int *)__cil_tmp10);
  __cil_tmp11 = 1 * 16UL;
  __cil_tmp12 = __cil_tmp11 + 8;
  __cil_tmp13 = (unsigned long )(v3020_gpio) + __cil_tmp12;
  __cil_tmp14 = (unsigned long )pdata;
  __cil_tmp15 = __cil_tmp14 + 12;
  *((unsigned int *)__cil_tmp13) = *((unsigned int *)__cil_tmp15);
  __cil_tmp16 = 2 * 16UL;
  __cil_tmp17 = __cil_tmp16 + 8;
  __cil_tmp18 = (unsigned long )(v3020_gpio) + __cil_tmp17;
  __cil_tmp19 = (unsigned long )pdata;
  __cil_tmp20 = __cil_tmp19 + 16;
  *((unsigned int *)__cil_tmp18) = *((unsigned int *)__cil_tmp20);
  __cil_tmp21 = 3 * 16UL;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = (unsigned long )(v3020_gpio) + __cil_tmp22;
  __cil_tmp24 = (unsigned long )pdata;
  __cil_tmp25 = __cil_tmp24 + 20;
  *((unsigned int *)__cil_tmp23) = *((unsigned int *)__cil_tmp25);
  i = 0;
  goto ldv_21245;
  ldv_21244:
  {
  __cil_tmp26 = i * 16UL;
  __cil_tmp27 = __cil_tmp26 + 8;
  __cil_tmp28 = (unsigned long )(v3020_gpio) + __cil_tmp27;
  __cil_tmp29 = *((unsigned int *)__cil_tmp28);
  __cil_tmp30 = i * 16UL;
  __cil_tmp31 = (unsigned long )(v3020_gpio) + __cil_tmp30;
  __cil_tmp32 = *((char const **)__cil_tmp31);
  err = gpio_request(__cil_tmp29, __cil_tmp32);
  }
  if (err != 0) {
    goto err_request;
  } else {
  }
  {
  __cil_tmp33 = i * 16UL;
  __cil_tmp34 = __cil_tmp33 + 8;
  __cil_tmp35 = (unsigned long )(v3020_gpio) + __cil_tmp34;
  __cil_tmp36 = *((unsigned int *)__cil_tmp35);
  gpio_direction_output(__cil_tmp36, 1);
  i = i + 1;
  }
  ldv_21245: ;
  {
  __cil_tmp37 = (unsigned int )i;
  if (__cil_tmp37 <= 3U) {
    goto ldv_21244;
  } else {
    goto ldv_21246;
  }
  }
  ldv_21246:
  __cil_tmp38 = (unsigned long )chip;
  __cil_tmp39 = __cil_tmp38 + 16;
  *((struct v3020_gpio **)__cil_tmp39) = (struct v3020_gpio *)(& v3020_gpio);
  return (0);
  err_request: ;
  goto ldv_21248;
  ldv_21247:
  {
  __cil_tmp40 = i * 16UL;
  __cil_tmp41 = __cil_tmp40 + 8;
  __cil_tmp42 = (unsigned long )(v3020_gpio) + __cil_tmp41;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  gpio_free(__cil_tmp43);
  }
  ldv_21248:
  i = i - 1;
  if (i >= 0) {
    goto ldv_21247;
  } else {
    goto ldv_21249;
  }
  ldv_21249: ;
  return (err);
}
}
static void v3020_gpio_unmap(struct v3020 *chip )
{ int i ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  {
  i = 0;
  goto ldv_21257;
  ldv_21256:
  {
  __cil_tmp3 = i * 16UL;
  __cil_tmp4 = __cil_tmp3 + 8;
  __cil_tmp5 = (unsigned long )(v3020_gpio) + __cil_tmp4;
  __cil_tmp6 = *((unsigned int *)__cil_tmp5);
  gpio_free(__cil_tmp6);
  i = i + 1;
  }
  ldv_21257: ;
  {
  __cil_tmp7 = (unsigned int )i;
  if (__cil_tmp7 <= 3U) {
    goto ldv_21256;
  } else {
    goto ldv_21258;
  }
  }
  ldv_21258: ;
  return;
}
}
static void v3020_gpio_write_bit(struct v3020 *chip , unsigned char bit )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct v3020_gpio *__cil_tmp5 ;
  struct v3020_gpio *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct v3020_gpio *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct v3020_gpio *__cil_tmp19 ;
  struct v3020_gpio *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct v3020_gpio *__cil_tmp26 ;
  struct v3020_gpio *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct v3020_gpio *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  {
  {
  __cil_tmp3 = (unsigned long )chip;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = *((struct v3020_gpio **)__cil_tmp4);
  __cil_tmp6 = __cil_tmp5 + 3UL;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((unsigned int *)__cil_tmp8);
  __cil_tmp10 = (int )bit;
  gpio_direction_output(__cil_tmp9, __cil_tmp10);
  __cil_tmp11 = (unsigned long )chip;
  __cil_tmp12 = __cil_tmp11 + 16;
  __cil_tmp13 = *((struct v3020_gpio **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 8;
  __cil_tmp16 = *((unsigned int *)__cil_tmp15);
  gpio_set_value(__cil_tmp16, 0);
  __cil_tmp17 = (unsigned long )chip;
  __cil_tmp18 = __cil_tmp17 + 16;
  __cil_tmp19 = *((struct v3020_gpio **)__cil_tmp18);
  __cil_tmp20 = __cil_tmp19 + 1UL;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = *((unsigned int *)__cil_tmp22);
  gpio_set_value(__cil_tmp23, 0);
  __const_udelay(4295UL);
  __cil_tmp24 = (unsigned long )chip;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = *((struct v3020_gpio **)__cil_tmp25);
  __cil_tmp27 = __cil_tmp26 + 1UL;
  __cil_tmp28 = (unsigned long )__cil_tmp27;
  __cil_tmp29 = __cil_tmp28 + 8;
  __cil_tmp30 = *((unsigned int *)__cil_tmp29);
  gpio_set_value(__cil_tmp30, 1);
  __cil_tmp31 = (unsigned long )chip;
  __cil_tmp32 = __cil_tmp31 + 16;
  __cil_tmp33 = *((struct v3020_gpio **)__cil_tmp32);
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + 8;
  __cil_tmp36 = *((unsigned int *)__cil_tmp35);
  gpio_set_value(__cil_tmp36, 1);
  }
  return;
}
}
static unsigned char v3020_gpio_read_bit(struct v3020 *chip )
{ int bit ;
  int tmp ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct v3020_gpio *__cil_tmp6 ;
  struct v3020_gpio *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct v3020_gpio *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct v3020_gpio *__cil_tmp19 ;
  struct v3020_gpio *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct v3020_gpio *__cil_tmp26 ;
  struct v3020_gpio *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct v3020_gpio *__cil_tmp33 ;
  struct v3020_gpio *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct v3020_gpio *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  {
  {
  __cil_tmp4 = (unsigned long )chip;
  __cil_tmp5 = __cil_tmp4 + 16;
  __cil_tmp6 = *((struct v3020_gpio **)__cil_tmp5);
  __cil_tmp7 = __cil_tmp6 + 3UL;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 + 8;
  __cil_tmp10 = *((unsigned int *)__cil_tmp9);
  gpio_direction_input(__cil_tmp10);
  __cil_tmp11 = (unsigned long )chip;
  __cil_tmp12 = __cil_tmp11 + 16;
  __cil_tmp13 = *((struct v3020_gpio **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 8;
  __cil_tmp16 = *((unsigned int *)__cil_tmp15);
  gpio_set_value(__cil_tmp16, 0);
  __cil_tmp17 = (unsigned long )chip;
  __cil_tmp18 = __cil_tmp17 + 16;
  __cil_tmp19 = *((struct v3020_gpio **)__cil_tmp18);
  __cil_tmp20 = __cil_tmp19 + 2UL;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = *((unsigned int *)__cil_tmp22);
  gpio_set_value(__cil_tmp23, 0);
  __const_udelay(4295UL);
  __cil_tmp24 = (unsigned long )chip;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = *((struct v3020_gpio **)__cil_tmp25);
  __cil_tmp27 = __cil_tmp26 + 3UL;
  __cil_tmp28 = (unsigned long )__cil_tmp27;
  __cil_tmp29 = __cil_tmp28 + 8;
  __cil_tmp30 = *((unsigned int *)__cil_tmp29);
  tmp = gpio_get_value(__cil_tmp30);
  bit = tmp != 0;
  __const_udelay(4295UL);
  __cil_tmp31 = (unsigned long )chip;
  __cil_tmp32 = __cil_tmp31 + 16;
  __cil_tmp33 = *((struct v3020_gpio **)__cil_tmp32);
  __cil_tmp34 = __cil_tmp33 + 2UL;
  __cil_tmp35 = (unsigned long )__cil_tmp34;
  __cil_tmp36 = __cil_tmp35 + 8;
  __cil_tmp37 = *((unsigned int *)__cil_tmp36);
  gpio_set_value(__cil_tmp37, 1);
  __cil_tmp38 = (unsigned long )chip;
  __cil_tmp39 = __cil_tmp38 + 16;
  __cil_tmp40 = *((struct v3020_gpio **)__cil_tmp39);
  __cil_tmp41 = (unsigned long )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 + 8;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  gpio_set_value(__cil_tmp43, 1);
  }
  return ((unsigned char )bit);
}
}
static struct v3020_chip_ops v3020_gpio_ops = {& v3020_gpio_map, & v3020_gpio_unmap, & v3020_gpio_read_bit, & v3020_gpio_write_bit};
static void v3020_set_reg(struct v3020 *chip , unsigned char address , unsigned char data )
{ int i ;
  unsigned char tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct v3020_chip_ops *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void (*__cil_tmp11)(struct v3020 * , unsigned char ) ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct v3020_chip_ops *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  void (*__cil_tmp23)(struct v3020 * , unsigned char ) ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  {
  tmp = address;
  i = 0;
  goto ldv_21276;
  ldv_21275:
  {
  __cil_tmp6 = (unsigned long )chip;
  __cil_tmp7 = __cil_tmp6 + 24;
  __cil_tmp8 = *((struct v3020_chip_ops **)__cil_tmp7);
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 24;
  __cil_tmp11 = *((void (**)(struct v3020 * , unsigned char ))__cil_tmp10);
  __cil_tmp12 = (int )tmp;
  __cil_tmp13 = __cil_tmp12 & 1;
  __cil_tmp14 = (unsigned char )__cil_tmp13;
  (*__cil_tmp11)(chip, __cil_tmp14);
  __cil_tmp15 = (int )tmp;
  __cil_tmp16 = __cil_tmp15 >> 1;
  tmp = (unsigned char )__cil_tmp16;
  __const_udelay(4295UL);
  i = i + 1;
  }
  ldv_21276: ;
  if (i <= 3) {
    goto ldv_21275;
  } else {
    goto ldv_21277;
  }
  ldv_21277: ;
  {
  __cil_tmp17 = (unsigned int )address;
  if (__cil_tmp17 <= 13U) {
    i = 0;
    goto ldv_21279;
    ldv_21278:
    {
    __cil_tmp18 = (unsigned long )chip;
    __cil_tmp19 = __cil_tmp18 + 24;
    __cil_tmp20 = *((struct v3020_chip_ops **)__cil_tmp19);
    __cil_tmp21 = (unsigned long )__cil_tmp20;
    __cil_tmp22 = __cil_tmp21 + 24;
    __cil_tmp23 = *((void (**)(struct v3020 * , unsigned char ))__cil_tmp22);
    __cil_tmp24 = (int )data;
    __cil_tmp25 = __cil_tmp24 & 1;
    __cil_tmp26 = (unsigned char )__cil_tmp25;
    (*__cil_tmp23)(chip, __cil_tmp26);
    __cil_tmp27 = (int )data;
    __cil_tmp28 = __cil_tmp27 >> 1;
    data = (unsigned char )__cil_tmp28;
    __const_udelay(4295UL);
    i = i + 1;
    }
    ldv_21279: ;
    if (i <= 7) {
      goto ldv_21278;
    } else {
      goto ldv_21280;
    }
    ldv_21280: ;
  } else {
  }
  }
  return;
}
}
static unsigned char v3020_get_reg(struct v3020 *chip , unsigned char address )
{ unsigned int data ;
  int i ;
  unsigned char tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct v3020_chip_ops *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void (*__cil_tmp11)(struct v3020 * , unsigned char ) ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct v3020_chip_ops *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned char (*__cil_tmp22)(struct v3020 * ) ;
  unsigned int __cil_tmp23 ;
  {
  data = 0U;
  i = 0;
  goto ldv_21288;
  ldv_21287:
  {
  __cil_tmp6 = (unsigned long )chip;
  __cil_tmp7 = __cil_tmp6 + 24;
  __cil_tmp8 = *((struct v3020_chip_ops **)__cil_tmp7);
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 24;
  __cil_tmp11 = *((void (**)(struct v3020 * , unsigned char ))__cil_tmp10);
  __cil_tmp12 = (int )address;
  __cil_tmp13 = __cil_tmp12 & 1;
  __cil_tmp14 = (unsigned char )__cil_tmp13;
  (*__cil_tmp11)(chip, __cil_tmp14);
  __cil_tmp15 = (int )address;
  __cil_tmp16 = __cil_tmp15 >> 1;
  address = (unsigned char )__cil_tmp16;
  __const_udelay(4295UL);
  i = i + 1;
  }
  ldv_21288: ;
  if (i <= 3) {
    goto ldv_21287;
  } else {
    goto ldv_21289;
  }
  ldv_21289:
  i = 0;
  goto ldv_21291;
  ldv_21290:
  {
  data = data >> 1;
  __cil_tmp17 = (unsigned long )chip;
  __cil_tmp18 = __cil_tmp17 + 24;
  __cil_tmp19 = *((struct v3020_chip_ops **)__cil_tmp18);
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 + 16;
  __cil_tmp22 = *((unsigned char (**)(struct v3020 * ))__cil_tmp21);
  tmp = (*__cil_tmp22)(chip);
  }
  {
  __cil_tmp23 = (unsigned int )tmp;
  if (__cil_tmp23 != 0U) {
    data = data | 128U;
  } else {
  }
  }
  {
  __const_udelay(4295UL);
  i = i + 1;
  }
  ldv_21291: ;
  if (i <= 7) {
    goto ldv_21290;
  } else {
    goto ldv_21292;
  }
  ldv_21292: ;
  return ((unsigned char )data);
}
}
static int v3020_read_time(struct device *dev , struct rtc_time *dt )
{ struct v3020 *chip ;
  void *tmp ;
  int tmp___0 ;
  unsigned char tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char tmp___5 ;
  unsigned int tmp___6 ;
  unsigned char tmp___7 ;
  unsigned int tmp___8 ;
  unsigned char tmp___9 ;
  unsigned int tmp___10 ;
  unsigned char tmp___11 ;
  unsigned int tmp___12 ;
  unsigned char tmp___13 ;
  unsigned int tmp___14 ;
  struct _ddebug descriptor ;
  long tmp___15 ;
  struct _ddebug descriptor___0 ;
  long tmp___16 ;
  struct _ddebug descriptor___1 ;
  long tmp___17 ;
  struct _ddebug descriptor___2 ;
  long tmp___18 ;
  struct _ddebug descriptor___3 ;
  long tmp___19 ;
  struct _ddebug descriptor___4 ;
  long tmp___20 ;
  struct _ddebug descriptor___5 ;
  long tmp___21 ;
  struct _ddebug descriptor___6 ;
  long tmp___22 ;
  struct device const *__cil_tmp36 ;
  unsigned char __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned char __cil_tmp39 ;
  unsigned char __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned char __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned char __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned char __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned char __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned char __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned char __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned int __cil_tmp60 ;
  unsigned char __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned char __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned char __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned char __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned int __cil_tmp71 ;
  struct _ddebug *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned char __cil_tmp79 ;
  long __cil_tmp80 ;
  long __cil_tmp81 ;
  struct device const *__cil_tmp82 ;
  struct _ddebug *__cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned char __cil_tmp90 ;
  long __cil_tmp91 ;
  long __cil_tmp92 ;
  struct device const *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  int __cil_tmp96 ;
  struct _ddebug *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned char __cil_tmp104 ;
  long __cil_tmp105 ;
  long __cil_tmp106 ;
  struct device const *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  int __cil_tmp110 ;
  struct _ddebug *__cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned char __cil_tmp118 ;
  long __cil_tmp119 ;
  long __cil_tmp120 ;
  struct device const *__cil_tmp121 ;
  int __cil_tmp122 ;
  struct _ddebug *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned char __cil_tmp130 ;
  long __cil_tmp131 ;
  long __cil_tmp132 ;
  struct device const *__cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  int __cil_tmp136 ;
  struct _ddebug *__cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned char __cil_tmp144 ;
  long __cil_tmp145 ;
  long __cil_tmp146 ;
  struct device const *__cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  int __cil_tmp150 ;
  struct _ddebug *__cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned char __cil_tmp158 ;
  long __cil_tmp159 ;
  long __cil_tmp160 ;
  struct device const *__cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  int __cil_tmp164 ;
  struct _ddebug *__cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned char __cil_tmp172 ;
  long __cil_tmp173 ;
  long __cil_tmp174 ;
  struct device const *__cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  int __cil_tmp178 ;
  {
  {
  __cil_tmp36 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp36);
  chip = (struct v3020 *)tmp;
  v3020_set_reg(chip, (unsigned char)15, (unsigned char)0);
  tmp___1 = v3020_get_reg(chip, (unsigned char)2);
  tmp___0 = (int )tmp___1;
  __cil_tmp37 = (unsigned char )tmp___0;
  __cil_tmp38 = (int )__cil_tmp37;
  __cil_tmp39 = (unsigned char )__cil_tmp38;
  tmp___2 = bcd2bin(__cil_tmp39);
  *((int *)dt) = (int )tmp___2;
  tmp___3 = v3020_get_reg(chip, (unsigned char)3);
  tmp___0 = (int )tmp___3;
  __cil_tmp40 = (unsigned char )tmp___0;
  __cil_tmp41 = (int )__cil_tmp40;
  __cil_tmp42 = (unsigned char )__cil_tmp41;
  tmp___4 = bcd2bin(__cil_tmp42);
  __cil_tmp43 = (unsigned long )dt;
  __cil_tmp44 = __cil_tmp43 + 4;
  *((int *)__cil_tmp44) = (int )tmp___4;
  tmp___5 = v3020_get_reg(chip, (unsigned char)4);
  tmp___0 = (int )tmp___5;
  __cil_tmp45 = (unsigned char )tmp___0;
  __cil_tmp46 = (int )__cil_tmp45;
  __cil_tmp47 = (unsigned char )__cil_tmp46;
  tmp___6 = bcd2bin(__cil_tmp47);
  __cil_tmp48 = (unsigned long )dt;
  __cil_tmp49 = __cil_tmp48 + 8;
  *((int *)__cil_tmp49) = (int )tmp___6;
  tmp___7 = v3020_get_reg(chip, (unsigned char)5);
  tmp___0 = (int )tmp___7;
  __cil_tmp50 = (unsigned char )tmp___0;
  __cil_tmp51 = (int )__cil_tmp50;
  __cil_tmp52 = (unsigned char )__cil_tmp51;
  tmp___8 = bcd2bin(__cil_tmp52);
  __cil_tmp53 = (unsigned long )dt;
  __cil_tmp54 = __cil_tmp53 + 12;
  *((int *)__cil_tmp54) = (int )tmp___8;
  tmp___9 = v3020_get_reg(chip, (unsigned char)6);
  tmp___0 = (int )tmp___9;
  __cil_tmp55 = (unsigned char )tmp___0;
  __cil_tmp56 = (int )__cil_tmp55;
  __cil_tmp57 = (unsigned char )__cil_tmp56;
  tmp___10 = bcd2bin(__cil_tmp57);
  __cil_tmp58 = (unsigned long )dt;
  __cil_tmp59 = __cil_tmp58 + 16;
  __cil_tmp60 = tmp___10 - 1U;
  *((int *)__cil_tmp59) = (int )__cil_tmp60;
  tmp___11 = v3020_get_reg(chip, (unsigned char)8);
  tmp___0 = (int )tmp___11;
  __cil_tmp61 = (unsigned char )tmp___0;
  __cil_tmp62 = (int )__cil_tmp61;
  __cil_tmp63 = (unsigned char )__cil_tmp62;
  tmp___12 = bcd2bin(__cil_tmp63);
  __cil_tmp64 = (unsigned long )dt;
  __cil_tmp65 = __cil_tmp64 + 24;
  *((int *)__cil_tmp65) = (int )tmp___12;
  tmp___13 = v3020_get_reg(chip, (unsigned char)7);
  tmp___0 = (int )tmp___13;
  __cil_tmp66 = (unsigned char )tmp___0;
  __cil_tmp67 = (int )__cil_tmp66;
  __cil_tmp68 = (unsigned char )__cil_tmp67;
  tmp___14 = bcd2bin(__cil_tmp68);
  __cil_tmp69 = (unsigned long )dt;
  __cil_tmp70 = __cil_tmp69 + 20;
  __cil_tmp71 = tmp___14 + 100U;
  *((int *)__cil_tmp70) = (int )__cil_tmp71;
  __cil_tmp72 = & descriptor;
  *((char const **)__cil_tmp72) = "rtc_v3020";
  __cil_tmp73 = (unsigned long )(& descriptor) + 8;
  *((char const **)__cil_tmp73) = "v3020_read_time";
  __cil_tmp74 = (unsigned long )(& descriptor) + 16;
  *((char const **)__cil_tmp74) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp75 = (unsigned long )(& descriptor) + 24;
  *((char const **)__cil_tmp75) = "\n%s : Read RTC values\n";
  __cil_tmp76 = (unsigned long )(& descriptor) + 32;
  *((unsigned int *)__cil_tmp76) = 270U;
  __cil_tmp77 = (unsigned long )(& descriptor) + 35;
  *((unsigned char *)__cil_tmp77) = (unsigned char)1;
  __cil_tmp78 = (unsigned long )(& descriptor) + 35;
  __cil_tmp79 = *((unsigned char *)__cil_tmp78);
  __cil_tmp80 = (long )__cil_tmp79;
  __cil_tmp81 = __cil_tmp80 & 1L;
  tmp___15 = __builtin_expect(__cil_tmp81, 0L);
  }
  if (tmp___15 != 0L) {
    {
    __cil_tmp82 = (struct device const *)dev;
    __dynamic_dev_dbg(& descriptor, __cil_tmp82, "\n%s : Read RTC values\n", "v3020_read_time");
    }
  } else {
  }
  {
  __cil_tmp83 = & descriptor___0;
  *((char const **)__cil_tmp83) = "rtc_v3020";
  __cil_tmp84 = (unsigned long )(& descriptor___0) + 8;
  *((char const **)__cil_tmp84) = "v3020_read_time";
  __cil_tmp85 = (unsigned long )(& descriptor___0) + 16;
  *((char const **)__cil_tmp85) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp86 = (unsigned long )(& descriptor___0) + 24;
  *((char const **)__cil_tmp86) = "tm_hour: %i\n";
  __cil_tmp87 = (unsigned long )(& descriptor___0) + 32;
  *((unsigned int *)__cil_tmp87) = 271U;
  __cil_tmp88 = (unsigned long )(& descriptor___0) + 35;
  *((unsigned char *)__cil_tmp88) = (unsigned char)1;
  __cil_tmp89 = (unsigned long )(& descriptor___0) + 35;
  __cil_tmp90 = *((unsigned char *)__cil_tmp89);
  __cil_tmp91 = (long )__cil_tmp90;
  __cil_tmp92 = __cil_tmp91 & 1L;
  tmp___16 = __builtin_expect(__cil_tmp92, 0L);
  }
  if (tmp___16 != 0L) {
    {
    __cil_tmp93 = (struct device const *)dev;
    __cil_tmp94 = (unsigned long )dt;
    __cil_tmp95 = __cil_tmp94 + 8;
    __cil_tmp96 = *((int *)__cil_tmp95);
    __dynamic_dev_dbg(& descriptor___0, __cil_tmp93, "tm_hour: %i\n", __cil_tmp96);
    }
  } else {
  }
  {
  __cil_tmp97 = & descriptor___1;
  *((char const **)__cil_tmp97) = "rtc_v3020";
  __cil_tmp98 = (unsigned long )(& descriptor___1) + 8;
  *((char const **)__cil_tmp98) = "v3020_read_time";
  __cil_tmp99 = (unsigned long )(& descriptor___1) + 16;
  *((char const **)__cil_tmp99) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp100 = (unsigned long )(& descriptor___1) + 24;
  *((char const **)__cil_tmp100) = "tm_min : %i\n";
  __cil_tmp101 = (unsigned long )(& descriptor___1) + 32;
  *((unsigned int *)__cil_tmp101) = 272U;
  __cil_tmp102 = (unsigned long )(& descriptor___1) + 35;
  *((unsigned char *)__cil_tmp102) = (unsigned char)1;
  __cil_tmp103 = (unsigned long )(& descriptor___1) + 35;
  __cil_tmp104 = *((unsigned char *)__cil_tmp103);
  __cil_tmp105 = (long )__cil_tmp104;
  __cil_tmp106 = __cil_tmp105 & 1L;
  tmp___17 = __builtin_expect(__cil_tmp106, 0L);
  }
  if (tmp___17 != 0L) {
    {
    __cil_tmp107 = (struct device const *)dev;
    __cil_tmp108 = (unsigned long )dt;
    __cil_tmp109 = __cil_tmp108 + 4;
    __cil_tmp110 = *((int *)__cil_tmp109);
    __dynamic_dev_dbg(& descriptor___1, __cil_tmp107, "tm_min : %i\n", __cil_tmp110);
    }
  } else {
  }
  {
  __cil_tmp111 = & descriptor___2;
  *((char const **)__cil_tmp111) = "rtc_v3020";
  __cil_tmp112 = (unsigned long )(& descriptor___2) + 8;
  *((char const **)__cil_tmp112) = "v3020_read_time";
  __cil_tmp113 = (unsigned long )(& descriptor___2) + 16;
  *((char const **)__cil_tmp113) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp114 = (unsigned long )(& descriptor___2) + 24;
  *((char const **)__cil_tmp114) = "tm_sec : %i\n";
  __cil_tmp115 = (unsigned long )(& descriptor___2) + 32;
  *((unsigned int *)__cil_tmp115) = 273U;
  __cil_tmp116 = (unsigned long )(& descriptor___2) + 35;
  *((unsigned char *)__cil_tmp116) = (unsigned char)1;
  __cil_tmp117 = (unsigned long )(& descriptor___2) + 35;
  __cil_tmp118 = *((unsigned char *)__cil_tmp117);
  __cil_tmp119 = (long )__cil_tmp118;
  __cil_tmp120 = __cil_tmp119 & 1L;
  tmp___18 = __builtin_expect(__cil_tmp120, 0L);
  }
  if (tmp___18 != 0L) {
    {
    __cil_tmp121 = (struct device const *)dev;
    __cil_tmp122 = *((int *)dt);
    __dynamic_dev_dbg(& descriptor___2, __cil_tmp121, "tm_sec : %i\n", __cil_tmp122);
    }
  } else {
  }
  {
  __cil_tmp123 = & descriptor___3;
  *((char const **)__cil_tmp123) = "rtc_v3020";
  __cil_tmp124 = (unsigned long )(& descriptor___3) + 8;
  *((char const **)__cil_tmp124) = "v3020_read_time";
  __cil_tmp125 = (unsigned long )(& descriptor___3) + 16;
  *((char const **)__cil_tmp125) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp126 = (unsigned long )(& descriptor___3) + 24;
  *((char const **)__cil_tmp126) = "tm_year: %i\n";
  __cil_tmp127 = (unsigned long )(& descriptor___3) + 32;
  *((unsigned int *)__cil_tmp127) = 274U;
  __cil_tmp128 = (unsigned long )(& descriptor___3) + 35;
  *((unsigned char *)__cil_tmp128) = (unsigned char)1;
  __cil_tmp129 = (unsigned long )(& descriptor___3) + 35;
  __cil_tmp130 = *((unsigned char *)__cil_tmp129);
  __cil_tmp131 = (long )__cil_tmp130;
  __cil_tmp132 = __cil_tmp131 & 1L;
  tmp___19 = __builtin_expect(__cil_tmp132, 0L);
  }
  if (tmp___19 != 0L) {
    {
    __cil_tmp133 = (struct device const *)dev;
    __cil_tmp134 = (unsigned long )dt;
    __cil_tmp135 = __cil_tmp134 + 20;
    __cil_tmp136 = *((int *)__cil_tmp135);
    __dynamic_dev_dbg(& descriptor___3, __cil_tmp133, "tm_year: %i\n", __cil_tmp136);
    }
  } else {
  }
  {
  __cil_tmp137 = & descriptor___4;
  *((char const **)__cil_tmp137) = "rtc_v3020";
  __cil_tmp138 = (unsigned long )(& descriptor___4) + 8;
  *((char const **)__cil_tmp138) = "v3020_read_time";
  __cil_tmp139 = (unsigned long )(& descriptor___4) + 16;
  *((char const **)__cil_tmp139) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp140 = (unsigned long )(& descriptor___4) + 24;
  *((char const **)__cil_tmp140) = "tm_mon : %i\n";
  __cil_tmp141 = (unsigned long )(& descriptor___4) + 32;
  *((unsigned int *)__cil_tmp141) = 275U;
  __cil_tmp142 = (unsigned long )(& descriptor___4) + 35;
  *((unsigned char *)__cil_tmp142) = (unsigned char)1;
  __cil_tmp143 = (unsigned long )(& descriptor___4) + 35;
  __cil_tmp144 = *((unsigned char *)__cil_tmp143);
  __cil_tmp145 = (long )__cil_tmp144;
  __cil_tmp146 = __cil_tmp145 & 1L;
  tmp___20 = __builtin_expect(__cil_tmp146, 0L);
  }
  if (tmp___20 != 0L) {
    {
    __cil_tmp147 = (struct device const *)dev;
    __cil_tmp148 = (unsigned long )dt;
    __cil_tmp149 = __cil_tmp148 + 16;
    __cil_tmp150 = *((int *)__cil_tmp149);
    __dynamic_dev_dbg(& descriptor___4, __cil_tmp147, "tm_mon : %i\n", __cil_tmp150);
    }
  } else {
  }
  {
  __cil_tmp151 = & descriptor___5;
  *((char const **)__cil_tmp151) = "rtc_v3020";
  __cil_tmp152 = (unsigned long )(& descriptor___5) + 8;
  *((char const **)__cil_tmp152) = "v3020_read_time";
  __cil_tmp153 = (unsigned long )(& descriptor___5) + 16;
  *((char const **)__cil_tmp153) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp154 = (unsigned long )(& descriptor___5) + 24;
  *((char const **)__cil_tmp154) = "tm_mday: %i\n";
  __cil_tmp155 = (unsigned long )(& descriptor___5) + 32;
  *((unsigned int *)__cil_tmp155) = 276U;
  __cil_tmp156 = (unsigned long )(& descriptor___5) + 35;
  *((unsigned char *)__cil_tmp156) = (unsigned char)1;
  __cil_tmp157 = (unsigned long )(& descriptor___5) + 35;
  __cil_tmp158 = *((unsigned char *)__cil_tmp157);
  __cil_tmp159 = (long )__cil_tmp158;
  __cil_tmp160 = __cil_tmp159 & 1L;
  tmp___21 = __builtin_expect(__cil_tmp160, 0L);
  }
  if (tmp___21 != 0L) {
    {
    __cil_tmp161 = (struct device const *)dev;
    __cil_tmp162 = (unsigned long )dt;
    __cil_tmp163 = __cil_tmp162 + 12;
    __cil_tmp164 = *((int *)__cil_tmp163);
    __dynamic_dev_dbg(& descriptor___5, __cil_tmp161, "tm_mday: %i\n", __cil_tmp164);
    }
  } else {
  }
  {
  __cil_tmp165 = & descriptor___6;
  *((char const **)__cil_tmp165) = "rtc_v3020";
  __cil_tmp166 = (unsigned long )(& descriptor___6) + 8;
  *((char const **)__cil_tmp166) = "v3020_read_time";
  __cil_tmp167 = (unsigned long )(& descriptor___6) + 16;
  *((char const **)__cil_tmp167) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp168 = (unsigned long )(& descriptor___6) + 24;
  *((char const **)__cil_tmp168) = "tm_wday: %i\n";
  __cil_tmp169 = (unsigned long )(& descriptor___6) + 32;
  *((unsigned int *)__cil_tmp169) = 277U;
  __cil_tmp170 = (unsigned long )(& descriptor___6) + 35;
  *((unsigned char *)__cil_tmp170) = (unsigned char)1;
  __cil_tmp171 = (unsigned long )(& descriptor___6) + 35;
  __cil_tmp172 = *((unsigned char *)__cil_tmp171);
  __cil_tmp173 = (long )__cil_tmp172;
  __cil_tmp174 = __cil_tmp173 & 1L;
  tmp___22 = __builtin_expect(__cil_tmp174, 0L);
  }
  if (tmp___22 != 0L) {
    {
    __cil_tmp175 = (struct device const *)dev;
    __cil_tmp176 = (unsigned long )dt;
    __cil_tmp177 = __cil_tmp176 + 24;
    __cil_tmp178 = *((int *)__cil_tmp177);
    __dynamic_dev_dbg(& descriptor___6, __cil_tmp175, "tm_wday: %i\n", __cil_tmp178);
    }
  } else {
  }
  return (0);
}
}
static int v3020_set_time(struct device *dev , struct rtc_time *dt )
{ struct v3020 *chip ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char tmp___13 ;
  struct device const *__cil_tmp26 ;
  struct _ddebug *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned char __cil_tmp34 ;
  long __cil_tmp35 ;
  long __cil_tmp36 ;
  struct device const *__cil_tmp37 ;
  struct _ddebug *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned char __cil_tmp45 ;
  long __cil_tmp46 ;
  long __cil_tmp47 ;
  struct device const *__cil_tmp48 ;
  int __cil_tmp49 ;
  struct _ddebug *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned char __cil_tmp57 ;
  long __cil_tmp58 ;
  long __cil_tmp59 ;
  struct device const *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  int __cil_tmp63 ;
  struct _ddebug *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned char __cil_tmp71 ;
  long __cil_tmp72 ;
  long __cil_tmp73 ;
  struct device const *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  int __cil_tmp77 ;
  struct _ddebug *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned char __cil_tmp85 ;
  long __cil_tmp86 ;
  long __cil_tmp87 ;
  struct device const *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  int __cil_tmp91 ;
  struct _ddebug *__cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned char __cil_tmp99 ;
  long __cil_tmp100 ;
  long __cil_tmp101 ;
  struct device const *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  int __cil_tmp105 ;
  struct _ddebug *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned char __cil_tmp113 ;
  long __cil_tmp114 ;
  long __cil_tmp115 ;
  struct device const *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  int __cil_tmp119 ;
  int __cil_tmp120 ;
  unsigned int __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned char __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  int __cil_tmp126 ;
  unsigned int __cil_tmp127 ;
  int __cil_tmp128 ;
  unsigned char __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  int __cil_tmp132 ;
  unsigned int __cil_tmp133 ;
  int __cil_tmp134 ;
  unsigned char __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  int __cil_tmp138 ;
  unsigned int __cil_tmp139 ;
  int __cil_tmp140 ;
  unsigned char __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  int __cil_tmp144 ;
  int __cil_tmp145 ;
  unsigned int __cil_tmp146 ;
  int __cil_tmp147 ;
  unsigned char __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned int __cil_tmp152 ;
  int __cil_tmp153 ;
  unsigned char __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  int __cil_tmp157 ;
  int __cil_tmp158 ;
  unsigned int __cil_tmp159 ;
  int __cil_tmp160 ;
  unsigned char __cil_tmp161 ;
  {
  {
  __cil_tmp26 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp26);
  chip = (struct v3020 *)tmp;
  __cil_tmp27 = & descriptor;
  *((char const **)__cil_tmp27) = "rtc_v3020";
  __cil_tmp28 = (unsigned long )(& descriptor) + 8;
  *((char const **)__cil_tmp28) = "v3020_set_time";
  __cil_tmp29 = (unsigned long )(& descriptor) + 16;
  *((char const **)__cil_tmp29) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp30 = (unsigned long )(& descriptor) + 24;
  *((char const **)__cil_tmp30) = "\n%s : Setting RTC values\n";
  __cil_tmp31 = (unsigned long )(& descriptor) + 32;
  *((unsigned int *)__cil_tmp31) = 287U;
  __cil_tmp32 = (unsigned long )(& descriptor) + 35;
  *((unsigned char *)__cil_tmp32) = (unsigned char)1;
  __cil_tmp33 = (unsigned long )(& descriptor) + 35;
  __cil_tmp34 = *((unsigned char *)__cil_tmp33);
  __cil_tmp35 = (long )__cil_tmp34;
  __cil_tmp36 = __cil_tmp35 & 1L;
  tmp___0 = __builtin_expect(__cil_tmp36, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp37 = (struct device const *)dev;
    __dynamic_dev_dbg(& descriptor, __cil_tmp37, "\n%s : Setting RTC values\n", "v3020_set_time");
    }
  } else {
  }
  {
  __cil_tmp38 = & descriptor___0;
  *((char const **)__cil_tmp38) = "rtc_v3020";
  __cil_tmp39 = (unsigned long )(& descriptor___0) + 8;
  *((char const **)__cil_tmp39) = "v3020_set_time";
  __cil_tmp40 = (unsigned long )(& descriptor___0) + 16;
  *((char const **)__cil_tmp40) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp41 = (unsigned long )(& descriptor___0) + 24;
  *((char const **)__cil_tmp41) = "tm_sec : %i\n";
  __cil_tmp42 = (unsigned long )(& descriptor___0) + 32;
  *((unsigned int *)__cil_tmp42) = 288U;
  __cil_tmp43 = (unsigned long )(& descriptor___0) + 35;
  *((unsigned char *)__cil_tmp43) = (unsigned char)1;
  __cil_tmp44 = (unsigned long )(& descriptor___0) + 35;
  __cil_tmp45 = *((unsigned char *)__cil_tmp44);
  __cil_tmp46 = (long )__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 & 1L;
  tmp___1 = __builtin_expect(__cil_tmp47, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __cil_tmp48 = (struct device const *)dev;
    __cil_tmp49 = *((int *)dt);
    __dynamic_dev_dbg(& descriptor___0, __cil_tmp48, "tm_sec : %i\n", __cil_tmp49);
    }
  } else {
  }
  {
  __cil_tmp50 = & descriptor___1;
  *((char const **)__cil_tmp50) = "rtc_v3020";
  __cil_tmp51 = (unsigned long )(& descriptor___1) + 8;
  *((char const **)__cil_tmp51) = "v3020_set_time";
  __cil_tmp52 = (unsigned long )(& descriptor___1) + 16;
  *((char const **)__cil_tmp52) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp53 = (unsigned long )(& descriptor___1) + 24;
  *((char const **)__cil_tmp53) = "tm_min : %i\n";
  __cil_tmp54 = (unsigned long )(& descriptor___1) + 32;
  *((unsigned int *)__cil_tmp54) = 289U;
  __cil_tmp55 = (unsigned long )(& descriptor___1) + 35;
  *((unsigned char *)__cil_tmp55) = (unsigned char)1;
  __cil_tmp56 = (unsigned long )(& descriptor___1) + 35;
  __cil_tmp57 = *((unsigned char *)__cil_tmp56);
  __cil_tmp58 = (long )__cil_tmp57;
  __cil_tmp59 = __cil_tmp58 & 1L;
  tmp___2 = __builtin_expect(__cil_tmp59, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __cil_tmp60 = (struct device const *)dev;
    __cil_tmp61 = (unsigned long )dt;
    __cil_tmp62 = __cil_tmp61 + 4;
    __cil_tmp63 = *((int *)__cil_tmp62);
    __dynamic_dev_dbg(& descriptor___1, __cil_tmp60, "tm_min : %i\n", __cil_tmp63);
    }
  } else {
  }
  {
  __cil_tmp64 = & descriptor___2;
  *((char const **)__cil_tmp64) = "rtc_v3020";
  __cil_tmp65 = (unsigned long )(& descriptor___2) + 8;
  *((char const **)__cil_tmp65) = "v3020_set_time";
  __cil_tmp66 = (unsigned long )(& descriptor___2) + 16;
  *((char const **)__cil_tmp66) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp67 = (unsigned long )(& descriptor___2) + 24;
  *((char const **)__cil_tmp67) = "tm_hour: %i\n";
  __cil_tmp68 = (unsigned long )(& descriptor___2) + 32;
  *((unsigned int *)__cil_tmp68) = 290U;
  __cil_tmp69 = (unsigned long )(& descriptor___2) + 35;
  *((unsigned char *)__cil_tmp69) = (unsigned char)1;
  __cil_tmp70 = (unsigned long )(& descriptor___2) + 35;
  __cil_tmp71 = *((unsigned char *)__cil_tmp70);
  __cil_tmp72 = (long )__cil_tmp71;
  __cil_tmp73 = __cil_tmp72 & 1L;
  tmp___3 = __builtin_expect(__cil_tmp73, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __cil_tmp74 = (struct device const *)dev;
    __cil_tmp75 = (unsigned long )dt;
    __cil_tmp76 = __cil_tmp75 + 8;
    __cil_tmp77 = *((int *)__cil_tmp76);
    __dynamic_dev_dbg(& descriptor___2, __cil_tmp74, "tm_hour: %i\n", __cil_tmp77);
    }
  } else {
  }
  {
  __cil_tmp78 = & descriptor___3;
  *((char const **)__cil_tmp78) = "rtc_v3020";
  __cil_tmp79 = (unsigned long )(& descriptor___3) + 8;
  *((char const **)__cil_tmp79) = "v3020_set_time";
  __cil_tmp80 = (unsigned long )(& descriptor___3) + 16;
  *((char const **)__cil_tmp80) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp81 = (unsigned long )(& descriptor___3) + 24;
  *((char const **)__cil_tmp81) = "tm_mday: %i\n";
  __cil_tmp82 = (unsigned long )(& descriptor___3) + 32;
  *((unsigned int *)__cil_tmp82) = 291U;
  __cil_tmp83 = (unsigned long )(& descriptor___3) + 35;
  *((unsigned char *)__cil_tmp83) = (unsigned char)1;
  __cil_tmp84 = (unsigned long )(& descriptor___3) + 35;
  __cil_tmp85 = *((unsigned char *)__cil_tmp84);
  __cil_tmp86 = (long )__cil_tmp85;
  __cil_tmp87 = __cil_tmp86 & 1L;
  tmp___4 = __builtin_expect(__cil_tmp87, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __cil_tmp88 = (struct device const *)dev;
    __cil_tmp89 = (unsigned long )dt;
    __cil_tmp90 = __cil_tmp89 + 12;
    __cil_tmp91 = *((int *)__cil_tmp90);
    __dynamic_dev_dbg(& descriptor___3, __cil_tmp88, "tm_mday: %i\n", __cil_tmp91);
    }
  } else {
  }
  {
  __cil_tmp92 = & descriptor___4;
  *((char const **)__cil_tmp92) = "rtc_v3020";
  __cil_tmp93 = (unsigned long )(& descriptor___4) + 8;
  *((char const **)__cil_tmp93) = "v3020_set_time";
  __cil_tmp94 = (unsigned long )(& descriptor___4) + 16;
  *((char const **)__cil_tmp94) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp95 = (unsigned long )(& descriptor___4) + 24;
  *((char const **)__cil_tmp95) = "tm_wday: %i\n";
  __cil_tmp96 = (unsigned long )(& descriptor___4) + 32;
  *((unsigned int *)__cil_tmp96) = 292U;
  __cil_tmp97 = (unsigned long )(& descriptor___4) + 35;
  *((unsigned char *)__cil_tmp97) = (unsigned char)1;
  __cil_tmp98 = (unsigned long )(& descriptor___4) + 35;
  __cil_tmp99 = *((unsigned char *)__cil_tmp98);
  __cil_tmp100 = (long )__cil_tmp99;
  __cil_tmp101 = __cil_tmp100 & 1L;
  tmp___5 = __builtin_expect(__cil_tmp101, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __cil_tmp102 = (struct device const *)dev;
    __cil_tmp103 = (unsigned long )dt;
    __cil_tmp104 = __cil_tmp103 + 24;
    __cil_tmp105 = *((int *)__cil_tmp104);
    __dynamic_dev_dbg(& descriptor___4, __cil_tmp102, "tm_wday: %i\n", __cil_tmp105);
    }
  } else {
  }
  {
  __cil_tmp106 = & descriptor___5;
  *((char const **)__cil_tmp106) = "rtc_v3020";
  __cil_tmp107 = (unsigned long )(& descriptor___5) + 8;
  *((char const **)__cil_tmp107) = "v3020_set_time";
  __cil_tmp108 = (unsigned long )(& descriptor___5) + 16;
  *((char const **)__cil_tmp108) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/2673/dscv_tempdir/dscv/ri/43_1a/drivers/rtc/rtc-v3020.c.p";
  __cil_tmp109 = (unsigned long )(& descriptor___5) + 24;
  *((char const **)__cil_tmp109) = "tm_year: %i\n";
  __cil_tmp110 = (unsigned long )(& descriptor___5) + 32;
  *((unsigned int *)__cil_tmp110) = 293U;
  __cil_tmp111 = (unsigned long )(& descriptor___5) + 35;
  *((unsigned char *)__cil_tmp111) = (unsigned char)1;
  __cil_tmp112 = (unsigned long )(& descriptor___5) + 35;
  __cil_tmp113 = *((unsigned char *)__cil_tmp112);
  __cil_tmp114 = (long )__cil_tmp113;
  __cil_tmp115 = __cil_tmp114 & 1L;
  tmp___6 = __builtin_expect(__cil_tmp115, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __cil_tmp116 = (struct device const *)dev;
    __cil_tmp117 = (unsigned long )dt;
    __cil_tmp118 = __cil_tmp117 + 20;
    __cil_tmp119 = *((int *)__cil_tmp118);
    __dynamic_dev_dbg(& descriptor___5, __cil_tmp116, "tm_year: %i\n", __cil_tmp119);
    }
  } else {
  }
  {
  __cil_tmp120 = *((int *)dt);
  __cil_tmp121 = (unsigned int )__cil_tmp120;
  tmp___7 = bin2bcd(__cil_tmp121);
  __cil_tmp122 = (int )tmp___7;
  __cil_tmp123 = (unsigned char )__cil_tmp122;
  v3020_set_reg(chip, (unsigned char)2, __cil_tmp123);
  __cil_tmp124 = (unsigned long )dt;
  __cil_tmp125 = __cil_tmp124 + 4;
  __cil_tmp126 = *((int *)__cil_tmp125);
  __cil_tmp127 = (unsigned int )__cil_tmp126;
  tmp___8 = bin2bcd(__cil_tmp127);
  __cil_tmp128 = (int )tmp___8;
  __cil_tmp129 = (unsigned char )__cil_tmp128;
  v3020_set_reg(chip, (unsigned char)3, __cil_tmp129);
  __cil_tmp130 = (unsigned long )dt;
  __cil_tmp131 = __cil_tmp130 + 8;
  __cil_tmp132 = *((int *)__cil_tmp131);
  __cil_tmp133 = (unsigned int )__cil_tmp132;
  tmp___9 = bin2bcd(__cil_tmp133);
  __cil_tmp134 = (int )tmp___9;
  __cil_tmp135 = (unsigned char )__cil_tmp134;
  v3020_set_reg(chip, (unsigned char)4, __cil_tmp135);
  __cil_tmp136 = (unsigned long )dt;
  __cil_tmp137 = __cil_tmp136 + 12;
  __cil_tmp138 = *((int *)__cil_tmp137);
  __cil_tmp139 = (unsigned int )__cil_tmp138;
  tmp___10 = bin2bcd(__cil_tmp139);
  __cil_tmp140 = (int )tmp___10;
  __cil_tmp141 = (unsigned char )__cil_tmp140;
  v3020_set_reg(chip, (unsigned char)5, __cil_tmp141);
  __cil_tmp142 = (unsigned long )dt;
  __cil_tmp143 = __cil_tmp142 + 16;
  __cil_tmp144 = *((int *)__cil_tmp143);
  __cil_tmp145 = __cil_tmp144 + 1;
  __cil_tmp146 = (unsigned int )__cil_tmp145;
  tmp___11 = bin2bcd(__cil_tmp146);
  __cil_tmp147 = (int )tmp___11;
  __cil_tmp148 = (unsigned char )__cil_tmp147;
  v3020_set_reg(chip, (unsigned char)6, __cil_tmp148);
  __cil_tmp149 = (unsigned long )dt;
  __cil_tmp150 = __cil_tmp149 + 24;
  __cil_tmp151 = *((int *)__cil_tmp150);
  __cil_tmp152 = (unsigned int )__cil_tmp151;
  tmp___12 = bin2bcd(__cil_tmp152);
  __cil_tmp153 = (int )tmp___12;
  __cil_tmp154 = (unsigned char )__cil_tmp153;
  v3020_set_reg(chip, (unsigned char)8, __cil_tmp154);
  __cil_tmp155 = (unsigned long )dt;
  __cil_tmp156 = __cil_tmp155 + 20;
  __cil_tmp157 = *((int *)__cil_tmp156);
  __cil_tmp158 = __cil_tmp157 % 100;
  __cil_tmp159 = (unsigned int )__cil_tmp158;
  tmp___13 = bin2bcd(__cil_tmp159);
  __cil_tmp160 = (int )tmp___13;
  __cil_tmp161 = (unsigned char )__cil_tmp160;
  v3020_set_reg(chip, (unsigned char)7, __cil_tmp161);
  v3020_set_reg(chip, (unsigned char)14, (unsigned char)0);
  }
  return (0);
}
}
static struct rtc_class_ops const v3020_rtc_ops =
     {(int (*)(struct device * ))0, (void (*)(struct device * ))0, (int (*)(struct device * ,
                                                                          unsigned int ,
                                                                          unsigned long ))0,
    & v3020_read_time, & v3020_set_time, (int (*)(struct device * , struct rtc_wkalrm * ))0,
    (int (*)(struct device * , struct rtc_wkalrm * ))0, (int (*)(struct device * ,
                                                                 struct seq_file * ))0,
    (int (*)(struct device * , unsigned long ))0, (int (*)(struct device * , int ))0,
    (int (*)(struct device * , unsigned int ))0};
static int rtc_probe(struct platform_device *pdev )
{ struct v3020_platform_data *pdata ;
  struct v3020 *chip ;
  int retval ;
  int i ;
  int temp ;
  void *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  void *__cil_tmp15 ;
  struct v3020 *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  unsigned char *__cil_tmp20 ;
  unsigned char __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct v3020_chip_ops *__cil_tmp29 ;
  int (*__cil_tmp30)(struct v3020 * , struct platform_device * , struct v3020_platform_data * ) ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct v3020_chip_ops *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned char (*__cil_tmp36)(struct v3020 * ) ;
  unsigned int __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  unsigned char *__cil_tmp39 ;
  unsigned char __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct device *__cil_tmp44 ;
  struct device const *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct v3020_gpio *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct v3020_gpio *__cil_tmp54 ;
  struct v3020_gpio *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct v3020_gpio *__cil_tmp61 ;
  struct v3020_gpio *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct v3020_gpio *__cil_tmp68 ;
  struct v3020_gpio *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  struct device *__cil_tmp75 ;
  struct device const *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  struct resource *__cil_tmp79 ;
  resource_size_t __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int __cil_tmp83 ;
  void *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  struct device *__cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  struct rtc_device *__cil_tmp92 ;
  void const *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  struct rtc_device *__cil_tmp96 ;
  void const *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  struct v3020_chip_ops *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  void (*__cil_tmp103)(struct v3020 * ) ;
  void const *__cil_tmp104 ;
  {
  {
  __cil_tmp12 = 16 + 280;
  __cil_tmp13 = (unsigned long )pdev;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = *((void **)__cil_tmp14);
  pdata = (struct v3020_platform_data *)__cil_tmp15;
  retval = -16;
  tmp = kzalloc(40UL, 208U);
  chip = (struct v3020 *)tmp;
  }
  {
  __cil_tmp16 = (struct v3020 *)0;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = (unsigned long )chip;
  if (__cil_tmp18 == __cil_tmp17) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp19 = (unsigned char *)pdata;
  __cil_tmp20 = __cil_tmp19 + 4UL;
  __cil_tmp21 = *__cil_tmp20;
  __cil_tmp22 = (unsigned int )__cil_tmp21;
  if (__cil_tmp22 != 0U) {
    __cil_tmp23 = (unsigned long )chip;
    __cil_tmp24 = __cil_tmp23 + 24;
    *((struct v3020_chip_ops **)__cil_tmp24) = & v3020_gpio_ops;
  } else {
    __cil_tmp25 = (unsigned long )chip;
    __cil_tmp26 = __cil_tmp25 + 24;
    *((struct v3020_chip_ops **)__cil_tmp26) = & v3020_mmio_ops;
  }
  }
  {
  __cil_tmp27 = (unsigned long )chip;
  __cil_tmp28 = __cil_tmp27 + 24;
  __cil_tmp29 = *((struct v3020_chip_ops **)__cil_tmp28);
  __cil_tmp30 = *((int (**)(struct v3020 * , struct platform_device * , struct v3020_platform_data * ))__cil_tmp29);
  retval = (*__cil_tmp30)(chip, pdev, pdata);
  }
  if (retval != 0) {
    goto err_chip;
  } else {
  }
  i = 0;
  goto ldv_21332;
  ldv_21331:
  {
  __cil_tmp31 = (unsigned long )chip;
  __cil_tmp32 = __cil_tmp31 + 24;
  __cil_tmp33 = *((struct v3020_chip_ops **)__cil_tmp32);
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + 16;
  __cil_tmp36 = *((unsigned char (**)(struct v3020 * ))__cil_tmp35);
  tmp___0 = (*__cil_tmp36)(chip);
  temp = (int )tmp___0;
  i = i + 1;
  }
  ldv_21332: ;
  if (i <= 7) {
    goto ldv_21331;
  } else {
    goto ldv_21333;
  }
  ldv_21333:
  {
  v3020_set_reg(chip, (unsigned char)2, (unsigned char)51);
  tmp___1 = v3020_get_reg(chip, (unsigned char)2);
  }
  {
  __cil_tmp37 = (unsigned int )tmp___1;
  if (__cil_tmp37 != 51U) {
    retval = -19;
    goto err_io;
  } else {
  }
  }
  {
  v3020_set_reg(chip, (unsigned char)0, (unsigned char)0);
  }
  {
  __cil_tmp38 = (unsigned char *)pdata;
  __cil_tmp39 = __cil_tmp38 + 4UL;
  __cil_tmp40 = *__cil_tmp39;
  __cil_tmp41 = (unsigned int )__cil_tmp40;
  if (__cil_tmp41 != 0U) {
    {
    __cil_tmp42 = (unsigned long )pdev;
    __cil_tmp43 = __cil_tmp42 + 16;
    __cil_tmp44 = (struct device *)__cil_tmp43;
    __cil_tmp45 = (struct device const *)__cil_tmp44;
    __cil_tmp46 = (unsigned long )chip;
    __cil_tmp47 = __cil_tmp46 + 16;
    __cil_tmp48 = *((struct v3020_gpio **)__cil_tmp47);
    __cil_tmp49 = (unsigned long )__cil_tmp48;
    __cil_tmp50 = __cil_tmp49 + 8;
    __cil_tmp51 = *((unsigned int *)__cil_tmp50);
    __cil_tmp52 = (unsigned long )chip;
    __cil_tmp53 = __cil_tmp52 + 16;
    __cil_tmp54 = *((struct v3020_gpio **)__cil_tmp53);
    __cil_tmp55 = __cil_tmp54 + 1UL;
    __cil_tmp56 = (unsigned long )__cil_tmp55;
    __cil_tmp57 = __cil_tmp56 + 8;
    __cil_tmp58 = *((unsigned int *)__cil_tmp57);
    __cil_tmp59 = (unsigned long )chip;
    __cil_tmp60 = __cil_tmp59 + 16;
    __cil_tmp61 = *((struct v3020_gpio **)__cil_tmp60);
    __cil_tmp62 = __cil_tmp61 + 2UL;
    __cil_tmp63 = (unsigned long )__cil_tmp62;
    __cil_tmp64 = __cil_tmp63 + 8;
    __cil_tmp65 = *((unsigned int *)__cil_tmp64);
    __cil_tmp66 = (unsigned long )chip;
    __cil_tmp67 = __cil_tmp66 + 16;
    __cil_tmp68 = *((struct v3020_gpio **)__cil_tmp67);
    __cil_tmp69 = __cil_tmp68 + 3UL;
    __cil_tmp70 = (unsigned long )__cil_tmp69;
    __cil_tmp71 = __cil_tmp70 + 8;
    __cil_tmp72 = *((unsigned int *)__cil_tmp71);
    _dev_info(__cil_tmp45, "Chip available at GPIOs %d, %d, %d, %d\n", __cil_tmp51,
              __cil_tmp58, __cil_tmp65, __cil_tmp72);
    }
  } else {
    {
    __cil_tmp73 = (unsigned long )pdev;
    __cil_tmp74 = __cil_tmp73 + 16;
    __cil_tmp75 = (struct device *)__cil_tmp74;
    __cil_tmp76 = (struct device const *)__cil_tmp75;
    __cil_tmp77 = (unsigned long )pdev;
    __cil_tmp78 = __cil_tmp77 + 1176;
    __cil_tmp79 = *((struct resource **)__cil_tmp78);
    __cil_tmp80 = *((resource_size_t *)__cil_tmp79);
    __cil_tmp81 = (unsigned long )chip;
    __cil_tmp82 = __cil_tmp81 + 8;
    __cil_tmp83 = *((int *)__cil_tmp82);
    _dev_info(__cil_tmp76, "Chip available at physical address 0x%llx,data connected to D%d\n",
              __cil_tmp80, __cil_tmp83);
    }
  }
  }
  {
  __cil_tmp84 = (void *)chip;
  platform_set_drvdata(pdev, __cil_tmp84);
  __cil_tmp85 = (unsigned long )chip;
  __cil_tmp86 = __cil_tmp85 + 32;
  __cil_tmp87 = (unsigned long )pdev;
  __cil_tmp88 = __cil_tmp87 + 16;
  __cil_tmp89 = (struct device *)__cil_tmp88;
  *((struct rtc_device **)__cil_tmp86) = rtc_device_register("v3020", __cil_tmp89,
                                                             & v3020_rtc_ops, & __this_module);
  __cil_tmp90 = (unsigned long )chip;
  __cil_tmp91 = __cil_tmp90 + 32;
  __cil_tmp92 = *((struct rtc_device **)__cil_tmp91);
  __cil_tmp93 = (void const *)__cil_tmp92;
  tmp___3 = IS_ERR(__cil_tmp93);
  }
  if (tmp___3 != 0L) {
    {
    __cil_tmp94 = (unsigned long )chip;
    __cil_tmp95 = __cil_tmp94 + 32;
    __cil_tmp96 = *((struct rtc_device **)__cil_tmp95);
    __cil_tmp97 = (void const *)__cil_tmp96;
    tmp___2 = PTR_ERR(__cil_tmp97);
    retval = (int )tmp___2;
    }
    goto err_io;
  } else {
  }
  return (0);
  err_io:
  {
  __cil_tmp98 = (unsigned long )chip;
  __cil_tmp99 = __cil_tmp98 + 24;
  __cil_tmp100 = *((struct v3020_chip_ops **)__cil_tmp99);
  __cil_tmp101 = (unsigned long )__cil_tmp100;
  __cil_tmp102 = __cil_tmp101 + 8;
  __cil_tmp103 = *((void (**)(struct v3020 * ))__cil_tmp102);
  (*__cil_tmp103)(chip);
  }
  err_chip:
  {
  __cil_tmp104 = (void const *)chip;
  kfree(__cil_tmp104);
  }
  return (retval);
}
}
static int rtc_remove(struct platform_device *dev )
{ struct v3020 *chip ;
  void *tmp ;
  struct rtc_device *rtc ;
  struct platform_device const *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct rtc_device *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct v3020_chip_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void (*__cil_tmp16)(struct v3020 * ) ;
  void const *__cil_tmp17 ;
  {
  {
  __cil_tmp5 = (struct platform_device const *)dev;
  tmp = platform_get_drvdata(__cil_tmp5);
  chip = (struct v3020 *)tmp;
  __cil_tmp6 = (unsigned long )chip;
  __cil_tmp7 = __cil_tmp6 + 32;
  rtc = *((struct rtc_device **)__cil_tmp7);
  }
  {
  __cil_tmp8 = (struct rtc_device *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = (unsigned long )rtc;
  if (__cil_tmp10 != __cil_tmp9) {
    {
    rtc_device_unregister(rtc);
    }
  } else {
  }
  }
  {
  __cil_tmp11 = (unsigned long )chip;
  __cil_tmp12 = __cil_tmp11 + 24;
  __cil_tmp13 = *((struct v3020_chip_ops **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 8;
  __cil_tmp16 = *((void (**)(struct v3020 * ))__cil_tmp15);
  (*__cil_tmp16)(chip);
  __cil_tmp17 = (void const *)chip;
  kfree(__cil_tmp17);
  }
  return (0);
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct v3020 *var_group1 ;
  struct platform_device *var_group2 ;
  struct v3020_platform_data *var_v3020_mmio_map_0_p2 ;
  unsigned char var_v3020_mmio_write_bit_2_p1 ;
  struct v3020_platform_data *var_v3020_gpio_map_4_p2 ;
  unsigned char var_v3020_gpio_write_bit_6_p1 ;
  struct device *var_group3 ;
  struct rtc_time *var_group4 ;
  int res_rtc_probe_12 ;
  int ldv_s_rtc_device_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned char __cil_tmp16 ;
  {
  {
  ldv_s_rtc_device_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_21399;
  ldv_21398:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else
  if (tmp == 1) {
    goto case_1;
  } else
  if (tmp == 2) {
    goto case_2;
  } else
  if (tmp == 3) {
    goto case_3;
  } else
  if (tmp == 4) {
    goto case_4;
  } else
  if (tmp == 5) {
    goto case_5;
  } else
  if (tmp == 6) {
    goto case_6;
  } else
  if (tmp == 7) {
    goto case_7;
  } else
  if (tmp == 8) {
    goto case_8;
  } else
  if (tmp == 9) {
    goto case_9;
  } else
  if (tmp == 10) {
    goto case_10;
  } else
  if (tmp == 11) {
    goto case_11;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      v3020_mmio_map(var_group1, var_group2, var_v3020_mmio_map_0_p2);
      }
      goto ldv_21384;
      case_1:
      {
      v3020_mmio_unmap(var_group1);
      }
      goto ldv_21384;
      case_2:
      {
      v3020_mmio_read_bit(var_group1);
      }
      goto ldv_21384;
      case_3:
      {
      __cil_tmp13 = (int )var_v3020_mmio_write_bit_2_p1;
      __cil_tmp14 = (unsigned char )__cil_tmp13;
      v3020_mmio_write_bit(var_group1, __cil_tmp14);
      }
      goto ldv_21384;
      case_4:
      {
      v3020_gpio_map(var_group1, var_group2, var_v3020_gpio_map_4_p2);
      }
      goto ldv_21384;
      case_5:
      {
      v3020_gpio_unmap(var_group1);
      }
      goto ldv_21384;
      case_6:
      {
      v3020_gpio_read_bit(var_group1);
      }
      goto ldv_21384;
      case_7:
      {
      __cil_tmp15 = (int )var_v3020_gpio_write_bit_6_p1;
      __cil_tmp16 = (unsigned char )__cil_tmp15;
      v3020_gpio_write_bit(var_group1, __cil_tmp16);
      }
      goto ldv_21384;
      case_8:
      {
      v3020_read_time(var_group3, var_group4);
      }
      goto ldv_21384;
      case_9:
      {
      v3020_set_time(var_group3, var_group4);
      }
      goto ldv_21384;
      case_10: ;
      if (ldv_s_rtc_device_driver_platform_driver == 0) {
        {
        res_rtc_probe_12 = rtc_probe(var_group2);
        ldv_check_return_value(res_rtc_probe_12);
        }
        if (res_rtc_probe_12 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_rtc_device_driver_platform_driver = ldv_s_rtc_device_driver_platform_driver + 1;
      } else {
      }
      goto ldv_21384;
      case_11: ;
      if (ldv_s_rtc_device_driver_platform_driver == 1) {
        {
        rtc_remove(var_group2);
        ldv_s_rtc_device_driver_platform_driver = 0;
        }
      } else {
      }
      goto ldv_21384;
      switch_default: ;
      goto ldv_21384;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_21384: ;
  ldv_21399:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_21398;
  } else
  if (ldv_s_rtc_device_driver_platform_driver != 0) {
    goto ldv_21398;
  } else {
    goto ldv_21400;
  }
  ldv_21400: ;
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
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __gpio_get_value(unsigned int arg0) {
  return __VERIFIER_nondet_int();
}
void __gpio_set_value(unsigned int arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int bcd2bin(unsigned char arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned char __VERIFIER_nondet_uchar(void);
unsigned char bin2bcd(unsigned int arg0) {
  return __VERIFIER_nondet_uchar();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gpio_direction_input(unsigned int arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gpio_direction_output(unsigned int arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void gpio_free(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int gpio_request(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
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
  return ldv_malloc(0UL);
}
struct rtc_device *rtc_device_register(const char *arg0, struct device *arg1, const struct rtc_class_ops *arg2, struct module *arg3) {
  return ldv_malloc(sizeof(struct rtc_device));
}
void rtc_device_unregister(struct rtc_device *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
