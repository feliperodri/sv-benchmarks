extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
struct net_device;
struct completion;
struct pt_regs;
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
struct mm_struct;
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
struct seq_file;
struct thread_struct;
struct cpumask;
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
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
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
struct kmem_cache;
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
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
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
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
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
struct hrtimer;
enum hrtimer_restart;
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
struct notifier_block;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_9266_36 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_9266_36 ldv_9266 ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_38 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_38 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
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
struct __anonstruct_mm_context_t_39 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_39 mm_context_t;
struct address_space;
union __anonunion_ldv_10351_41 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_10361_45 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_10363_44 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_10361_45 ldv_10361 ;
   int units ;
};
struct __anonstruct_ldv_10365_43 {
   union __anonunion_ldv_10363_44 ldv_10363 ;
   atomic_t _count ;
};
union __anonunion_ldv_10366_42 {
   unsigned long counters ;
   struct __anonstruct_ldv_10365_43 ldv_10365 ;
};
struct __anonstruct_ldv_10367_40 {
   union __anonunion_ldv_10351_41 ldv_10351 ;
   union __anonunion_ldv_10366_42 ldv_10366 ;
};
struct __anonstruct_ldv_10374_47 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_10378_46 {
   struct list_head lru ;
   struct __anonstruct_ldv_10374_47 ldv_10374 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_10383_48 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_10367_40 ldv_10367 ;
   union __anonunion_ldv_10378_46 ldv_10378 ;
   union __anonunion_ldv_10383_48 ldv_10383 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_50 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_49 {
   struct __anonstruct_linear_50 linear ;
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
   union __anonunion_shared_49 shared ;
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
typedef unsigned long cputime_t;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_141 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_141 sigset_t;
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
struct __anonstruct__kill_143 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_144 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_145 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_146 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_147 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_148 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_149 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_142 {
   int _pad[28U] ;
   struct __anonstruct__kill_143 _kill ;
   struct __anonstruct__timer_144 _timer ;
   struct __anonstruct__rt_145 _rt ;
   struct __anonstruct__sigchld_146 _sigchld ;
   struct __anonstruct__sigfault_147 _sigfault ;
   struct __anonstruct__sigpoll_148 _sigpoll ;
   struct __anonstruct__sigsys_149 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_142 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct ctl_table;
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_15943_153 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_15945_152 {
   struct __anonstruct_ldv_15943_153 ldv_15943 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_15945_152 ldv_15945 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_16024_154 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_16033_155 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_156 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_157 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_16024_154 ldv_16024 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_16033_155 ldv_16033 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_156 type_data ;
   union __anonunion_payload_157 payload ;
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
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_158 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_158 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
struct uts_namespace;
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
struct mem_cgroup;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
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
struct __anonstruct_ldv_19428_166 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19429_165 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19428_166 ldv_19428 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19429_165 ldv_19429 ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = (-0x7FFFFFFF-1)
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_168 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_167 {
   __u32 data ;
   struct __anonstruct_buffer_168 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_167 u ;
   int result ;
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
struct __anonstruct_ldv_20033_170 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_20035_169 {
   struct __anonstruct_ldv_20033_170 ldv_20033 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_20035_169 ldv_20035 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_171 {
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
   union __anonunion_d_u_171 d_u ;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct block_device;
struct cgroup_subsys_state;
struct export_operations;
struct poll_table_struct;
struct kstatfs;
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
union __anonunion_ldv_20784_172 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_20784_172 ldv_20784 ;
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
struct writeback_control;
union __anonunion_arg_174 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_173 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_174 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_173 read_descriptor_t;
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
union __anonunion_ldv_21218_175 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_21238_176 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_21254_177 {
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
   union __anonunion_ldv_21218_175 ldv_21218 ;
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
   union __anonunion_ldv_21238_176 ldv_21238 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_21254_177 ldv_21254 ;
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
union __anonunion_f_u_178 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_178 f_u ;
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
struct net;
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
struct __anonstruct_afs_180 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_179 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_180 afs ;
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
   union __anonunion_fl_u_179 fl_u ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * ) ;
   int (*get_afc)(struct dvb_frontend * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_182 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_182 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
enum ldv_18859 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_18859 dmx_output_t;
enum ldv_18861 {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum ldv_18861 dmx_input_t;
enum ldv_18863 {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum ldv_18863 dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
enum ldv_18877 {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum ldv_18877 dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
enum dmx_ts_pes {
    DMX_TS_PES_AUDIO0 = 0,
    DMX_TS_PES_VIDEO0 = 1,
    DMX_TS_PES_TELETEXT0 = 2,
    DMX_TS_PES_SUBTITLE0 = 3,
    DMX_TS_PES_PCR0 = 4,
    DMX_TS_PES_AUDIO1 = 5,
    DMX_TS_PES_VIDEO1 = 6,
    DMX_TS_PES_TELETEXT1 = 7,
    DMX_TS_PES_SUBTITLE1 = 8,
    DMX_TS_PES_PCR1 = 9,
    DMX_TS_PES_AUDIO2 = 10,
    DMX_TS_PES_VIDEO2 = 11,
    DMX_TS_PES_TELETEXT2 = 12,
    DMX_TS_PES_SUBTITLE2 = 13,
    DMX_TS_PES_PCR2 = 14,
    DMX_TS_PES_AUDIO3 = 15,
    DMX_TS_PES_VIDEO3 = 16,
    DMX_TS_PES_TELETEXT3 = 17,
    DMX_TS_PES_SUBTITLE3 = 18,
    DMX_TS_PES_PCR3 = 19,
    DMX_TS_PES_OTHER = 20
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
union __anonunion_filter_183 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_184 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_185 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_183 filter ;
   union __anonunion_feed_184 feed ;
   union __anonunion_params_185 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_186 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_187 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_186 feed ;
   union __anonunion_cb_187 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_188 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_188 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_190 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_190 sync_serial_settings;
struct __anonstruct_te1_settings_191 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_191 te1_settings;
struct __anonstruct_raw_hdlc_proto_192 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_192 raw_hdlc_proto;
struct __anonstruct_fr_proto_193 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_193 fr_proto;
struct __anonstruct_fr_proto_pvc_194 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_194 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_195 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_195 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_196 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_196 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_197 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_197 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_198 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_199 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_198 ifr_ifrn ;
   union __anonunion_ifr_ifru_199 ifr_ifru ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct sk_buff;
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
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
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
struct __anonstruct_ldv_30202_217 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_30203_216 {
   __wsum csum ;
   struct __anonstruct_ldv_30202_217 ldv_30202 ;
};
union __anonunion_ldv_30242_218 {
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
   union __anonunion_ldv_30203_216 ldv_30203 ;
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
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_30242_218 ldv_30242 ;
   sk_buff_data_t inner_transport_header ;
   sk_buff_data_t inner_network_header ;
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
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
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
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   int id ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_38497_231 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_38497_231 ldv_38497 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[26U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_flags ;
   unsigned char ifa_prefixlen ;
   char ifa_label[16U] ;
};
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
};
struct firedtv_tuner_status {
   unsigned char active_system ;
   unsigned char searching : 1 ;
   unsigned char moving : 1 ;
   unsigned char no_rf : 1 ;
   unsigned char input : 1 ;
   unsigned char selected_antenna : 7 ;
   unsigned int ber ;
   unsigned char signal_strength ;
   unsigned char raster_frequency : 2 ;
   unsigned int rf_frequency : 22 ;
   unsigned char man_dep_info_length ;
   unsigned char front_end_error : 1 ;
   unsigned char antenna_error : 1 ;
   unsigned char front_end_power_status : 1 ;
   unsigned char power_supply : 1 ;
   unsigned short carrier_noise_ratio ;
   unsigned char power_supply_voltage ;
   unsigned char antenna_voltage ;
   unsigned char firewire_bus_voltage ;
   unsigned char ca_mmi : 1 ;
   unsigned char ca_pmt_reply : 1 ;
   unsigned char ca_date_time_request : 1 ;
   unsigned char ca_application_info : 1 ;
   unsigned char ca_module_present_status : 1 ;
   unsigned char ca_dvb_flag : 1 ;
   unsigned char ca_error_flag : 1 ;
   unsigned char ca_initialization_status : 1 ;
};
enum model_type {
    FIREDTV_UNKNOWN = 0,
    FIREDTV_DVB_S = 1,
    FIREDTV_DVB_C = 2,
    FIREDTV_DVB_T = 3,
    FIREDTV_DVB_S2 = 4
} ;
struct input_dev;
struct fdtv_ir_context;
struct firedtv {
   struct device *device ;
   struct list_head list ;
   struct dvb_adapter adapter ;
   struct dmxdev dmxdev ;
   struct dvb_demux demux ;
   struct dmx_frontend frontend ;
   struct dvb_net dvbnet ;
   struct dvb_frontend fe ;
   struct dvb_device *cadev ;
   int ca_last_command ;
   int ca_time_interval ;
   struct mutex avc_mutex ;
   wait_queue_head_t avc_wait ;
   bool avc_reply_received ;
   struct work_struct remote_ctrl_work ;
   struct input_dev *remote_ctrl_dev ;
   enum model_type type ;
   char subunit ;
   char isochannel ;
   struct fdtv_ir_context *ir_context ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t tone ;
   struct mutex demux_mutex ;
   unsigned long channel_active ;
   u16 channel_pid[16U] ;
   int avc_data_length ;
   u8 avc_data[512U] ;
};
struct avc_command_frame {
   u8 ctype ;
   u8 subunit ;
   u8 opcode ;
   u8 operand[509U] ;
};
struct avc_response_frame {
   u8 response ;
   u8 subunit ;
   u8 opcode ;
   u8 operand[509U] ;
};
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
struct ca_slot_info {
   int num ;
   int type ;
   unsigned int flags ;
};
struct ca_caps {
   unsigned int slot_num ;
   unsigned int slot_type ;
   unsigned int descr_num ;
   unsigned int descr_type ;
};
struct ca_msg {
   unsigned int index ;
   unsigned int type ;
   unsigned int length ;
   unsigned char msg[256U] ;
};
typedef struct poll_table_struct poll_table;
enum hrtimer_restart;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___8;
enum hrtimer_restart;
enum hrtimer_restart;
struct fw_card_driver;
struct fw_node;
struct fw_card {
   struct fw_card_driver const *driver ;
   struct device *device ;
   struct kref kref ;
   struct completion done ;
   int node_id ;
   int generation ;
   int current_tlabel ;
   u64 tlabel_mask ;
   struct list_head transaction_list ;
   u64 reset_jiffies ;
   u32 split_timeout_hi ;
   u32 split_timeout_lo ;
   unsigned int split_timeout_cycles ;
   unsigned int split_timeout_jiffies ;
   unsigned long long guid ;
   unsigned int max_receive ;
   int link_speed ;
   int config_rom_generation ;
   spinlock_t lock ;
   struct fw_node *local_node ;
   struct fw_node *root_node ;
   struct fw_node *irm_node ;
   u8 color ;
   int gap_count ;
   bool beta_repeaters_present ;
   int index ;
   struct list_head link ;
   struct list_head phy_receiver_list ;
   struct delayed_work br_work ;
   bool br_short ;
   struct delayed_work bm_work ;
   int bm_retries ;
   int bm_generation ;
   int bm_node_id ;
   bool bm_abdicate ;
   bool priority_budget_implemented ;
   bool broadcast_channel_auto_allocated ;
   bool broadcast_channel_allocated ;
   u32 broadcast_channel ;
   __be32 topology_map[256U] ;
   __be32 maint_utility_register ;
};
struct fw_attribute_group {
   struct attribute_group *groups[2U] ;
   struct attribute_group group ;
   struct attribute *attrs[13U] ;
};
struct fw_device {
   atomic_t state ;
   struct fw_node *node ;
   int node_id ;
   int generation ;
   unsigned int max_speed ;
   struct fw_card *card ;
   struct device device ;
   struct mutex client_list_mutex ;
   struct list_head client_list ;
   u32 const *config_rom ;
   size_t config_rom_length ;
   int config_rom_retries ;
   unsigned char is_local : 1 ;
   unsigned char max_rec : 4 ;
   unsigned char cmc : 1 ;
   unsigned char irmc : 1 ;
   unsigned char bc_implemented : 2 ;
   struct delayed_work work ;
   struct fw_attribute_group attribute_group ;
};
struct fw_unit {
   struct device device ;
   u32 const *directory ;
   struct fw_attribute_group attribute_group ;
};
struct ieee1394_device_id;
struct fw_driver {
   struct device_driver driver ;
   void (*update)(struct fw_unit * ) ;
   struct ieee1394_device_id const *id_table ;
};
struct fw_request;
struct fw_address_handler {
   u64 offset ;
   u64 length ;
   void (*address_callback)(struct fw_card * , struct fw_request * , int , int ,
                            int , int , unsigned long long , void * , size_t ,
                            void * ) ;
   void *callback_data ;
   struct list_head link ;
};
struct fw_address_region {
   u64 start ;
   u64 end ;
};
struct fw_iso_packet {
   u16 payload_length ;
   unsigned char interrupt : 1 ;
   unsigned char skip : 1 ;
   unsigned char tag : 2 ;
   unsigned char sy : 4 ;
   unsigned char header_length ;
   u32 header[0U] ;
};
struct fw_iso_buffer {
   enum dma_data_direction direction ;
   struct page **pages ;
   int page_count ;
   int page_count_mapped ;
};
struct fw_iso_context;
union __anonunion_callback_139 {
   void (*sc)(struct fw_iso_context * , u32 , size_t , void * , void * ) ;
   void (*mc)(struct fw_iso_context * , dma_addr_t , void * ) ;
};
struct fw_iso_context {
   struct fw_card *card ;
   int type ;
   int channel ;
   int speed ;
   size_t header_size ;
   union __anonunion_callback_139 callback ;
   void *callback_data ;
};
struct ieee1394_device_id {
   __u32 match_flags ;
   __u32 vendor_id ;
   __u32 model_id ;
   __u32 specifier_id ;
   __u32 version ;
   kernel_ulong_t driver_data ;
};
struct fdtv_ir_context {
   struct fw_iso_context *context ;
   struct fw_iso_buffer buffer ;
   int interrupt_packet ;
   int current_packet ;
   char *pages[16U] ;
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
union __anonunion_u_36 {
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
   union __anonunion_u_36 u ;
};
enum hrtimer_restart;
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
long ldv__builtin_expect(long exp , long c ) ;
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u32 __fswab32(__u32 val )
{ __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_avc_mutex_of_firedtv(struct mutex *lock ) ;
void ldv_mutex_unlock_avc_mutex_of_firedtv(struct mutex *lock ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern u32 crc32_be(u32 , unsigned char const * , size_t ) ;
extern void msleep(unsigned int ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern bool schedule_work(struct work_struct * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern long schedule_timeout(long ) ;
int avc_recv(struct firedtv *fdtv , void *data , size_t length ) ;
int avc_tuner_status(struct firedtv *fdtv , struct firedtv_tuner_status *stat ) ;
int avc_tuner_dsd(struct firedtv *fdtv , struct dtv_frontend_properties *p ) ;
int avc_tuner_set_pids(struct firedtv *fdtv , unsigned char pidc , u16 *pid ) ;
int avc_tuner_get_ts(struct firedtv *fdtv ) ;
int avc_identify_subunit(struct firedtv *fdtv ) ;
int avc_lnb_control(struct firedtv *fdtv , char voltage , char burst , char conttone ,
                    char nrdiseq , struct dvb_diseqc_master_cmd *diseqcmd ) ;
void avc_remote_ctrl_work(struct work_struct *work ) ;
int avc_register_remote_control(struct firedtv *fdtv ) ;
int avc_ca_app_info(struct firedtv *fdtv , char *app_info , unsigned int *len ) ;
int avc_ca_info(struct firedtv *fdtv , char *app_info , unsigned int *len ) ;
int avc_ca_reset(struct firedtv *fdtv ) ;
int avc_ca_pmt(struct firedtv *fdtv , char *msg , int length ) ;
int avc_ca_get_time_date(struct firedtv *fdtv , int *interval ) ;
int avc_ca_enter_menu(struct firedtv *fdtv ) ;
int avc_ca_get_mmi(struct firedtv *fdtv , char *mmi_object , unsigned int *len ) ;
int cmp_establish_pp_connection(struct firedtv *fdtv , int plug , int channel ) ;
void cmp_break_pp_connection(struct firedtv *fdtv , int plug , int channel ) ;
int fdtv_lock(struct firedtv *fdtv , u64 addr , void *data ) ;
int fdtv_read(struct firedtv *fdtv , u64 addr , void *data ) ;
int fdtv_write(struct firedtv *fdtv , u64 addr , void *data , size_t len ) ;
void fdtv_handle_rc(struct firedtv *fdtv , unsigned int code ) ;
__inline static void clear_operands(struct avc_command_frame *c , int from , int to )
{
  {
  memset((void *)(& c->operand) + (unsigned long )from, 0, (size_t )((to - from) + 1));
  return;
}
}
static void pad_operands(struct avc_command_frame *c , int from )
{ int to ;
  {
  to = (from + 3) & -4;
  if (from <= to && to <= 508) {
    clear_operands(c, from, to);
  } else {
  }
  return;
}
}
static int avc_debug ;
static unsigned int num_fake_ca_system_ids ;
static int fake_ca_system_ids[4U] = { -1, -1, -1, -1};
static char const *debug_fcp_ctype(unsigned int ctype )
{ char const *ctypes[16U] ;
  char const *ret ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  ctypes[0] = "CONTROL";
  ctypes[1] = "STATUS";
  ctypes[2] = "SPECIFIC INQUIRY";
  ctypes[3] = "NOTIFY";
  ctypes[4] = "GENERAL INQUIRY";
  ctypes[5] = 0;
  ctypes[6] = 0;
  ctypes[7] = 0;
  ctypes[8] = "NOT IMPLEMENTED";
  ctypes[9] = "ACCEPTED";
  ctypes[10] = "REJECTED";
  ctypes[11] = "IN TRANSITION";
  ctypes[12] = "IMPLEMENTED/STABLE";
  ctypes[13] = "CHANGED";
  ctypes[14] = 0;
  ctypes[15] = "INTERIM";
  if (ctype <= 15U) {
    tmp = ctypes[ctype];
  } else {
    tmp = 0;
  }
  ret = tmp;
  if ((unsigned long )ret != (unsigned long )((char const *)0)) {
    tmp___0 = ret;
  } else {
    tmp___0 = "?";
  }
  return (tmp___0);
}
}
static char const *debug_fcp_opcode(unsigned int opcode , u8 const *data , int length )
{ char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  {
  switch (opcode) {
  case 0: ;
  goto ldv_40561;
  case 9: ;
  if (avc_debug & 1) {
    tmp = "ReadDescriptor";
  } else {
    tmp = 0;
  }
  return (tmp);
  case 200: ;
  if ((avc_debug & 2) != 0) {
    tmp___0 = "DirectSelectInfo.Type";
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
  case 203: ;
  if ((avc_debug & 4) != 0) {
    tmp___1 = "DirectSelectData";
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
  default: ;
  return ("Unknown");
  }
  ldv_40561: ;
  if (((length <= 6 || (unsigned int )((unsigned char )*(data + 3UL)) != 0U) || (unsigned int )((unsigned char )*(data + 4UL)) != 18U) || (unsigned int )((unsigned char )*(data + 5UL)) != 135U) {
    return ("Vendor/Unknown");
  } else {
  }
  switch ((int )*(data + 6UL)) {
  case 10: ;
  if ((avc_debug & 8) != 0) {
    tmp___2 = "RegisterRC";
  } else {
    tmp___2 = 0;
  }
  return (tmp___2);
  case 82: ;
  if ((avc_debug & 16) != 0) {
    tmp___3 = "LNBControl";
  } else {
    tmp___3 = 0;
  }
  return (tmp___3);
  case 88: ;
  if ((avc_debug & 32) != 0) {
    tmp___4 = "TuneQPSK";
  } else {
    tmp___4 = 0;
  }
  return (tmp___4);
  case 96: ;
  if ((avc_debug & 64) != 0) {
    tmp___5 = "TuneQPSK2";
  } else {
    tmp___5 = 0;
  }
  return (tmp___5);
  case 86: ;
  if ((avc_debug & 128) != 0) {
    tmp___6 = "Host2CA";
  } else {
    tmp___6 = 0;
  }
  return (tmp___6);
  case 87: ;
  if ((avc_debug & 256) != 0) {
    tmp___7 = "CA2Host";
  } else {
    tmp___7 = 0;
  }
  return (tmp___7);
  }
  return ("Vendor/Unknown");
}
}
static void debug_fcp(u8 const *data , int length )
{ unsigned int subunit_type ;
  unsigned int subunit_id ;
  unsigned int opcode ;
  char const *op ;
  char const *prefix ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  if ((unsigned int )((unsigned char )*data) > 7U) {
    tmp = "FCP <- ";
  } else {
    tmp = "FCP -> ";
  }
  prefix = tmp;
  subunit_type = (unsigned int )((int )((unsigned char )*(data + 1UL)) >> 3);
  subunit_id = (unsigned int )*(data + 1UL) & 7U;
  if (subunit_type != 30U && subunit_id != 5U) {
    opcode = (unsigned int )*(data + 2UL);
  } else {
    opcode = 4294967295U;
  }
  op = debug_fcp_opcode(opcode, data, length);
  if ((unsigned long )op != (unsigned long )((char const *)0)) {
    tmp___0 = debug_fcp_ctype((unsigned int )*data);
    printk("\016%ssu=%x.%x l=%d: %-8s - %s\n", prefix, subunit_type, subunit_id, length,
           tmp___0, op);
    if ((avc_debug & 32768) != 0) {
      print_hex_dump("\016", prefix, 0, 16, 1, (void const *)data, (size_t )length,
                     0);
    } else {
    }
  } else {
  }
  return;
}
}
static void debug_pmt(char *msg , int length )
{
  {
  printk("\016APP PMT -> l=%d\n", length);
  print_hex_dump("\016", "APP PMT -> ", 0, 16, 1, (void const *)msg, (size_t )length,
                 0);
  return;
}
}
static int avc_write(struct firedtv *fdtv )
{ int err ;
  int retry ;
  long tmp ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  {
  fdtv->avc_reply_received = 0;
  retry = 0;
  goto ldv_40596;
  ldv_40595:
  tmp = ldv__builtin_expect(avc_debug != 0, 0L);
  if (tmp != 0L) {
    debug_fcp((u8 const *)(& fdtv->avc_data), fdtv->avc_data_length);
  } else {
  }
  err = fdtv_write(fdtv, 281474708278016ULL, (void *)(& fdtv->avc_data), (size_t )fdtv->avc_data_length);
  if (err != 0) {
    dev_err((struct device const *)fdtv->device, "FCP command write failed\n");
    return (err);
  } else {
  }
  tmp___0 = msecs_to_jiffies(200U);
  __ret = (long )tmp___0;
  if (! fdtv->avc_reply_received) {
    tmp___1 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___1;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_40593:
    prepare_to_wait(& fdtv->avc_wait, & __wait, 2);
    if ((int )fdtv->avc_reply_received) {
      goto ldv_40592;
    } else {
    }
    __ret = schedule_timeout(__ret);
    if (__ret == 0L) {
      goto ldv_40592;
    } else {
    }
    goto ldv_40593;
    ldv_40592:
    finish_wait(& fdtv->avc_wait, & __wait);
  } else {
  }
  if (__ret != 0L) {
    return (0);
  } else {
  }
  retry = retry + 1;
  ldv_40596: ;
  if (retry <= 5) {
    goto ldv_40595;
  } else {
    goto ldv_40597;
  }
  ldv_40597:
  dev_err((struct device const *)fdtv->device, "FCP response timed out\n");
  return (-110);
}
}
static bool is_register_rc(struct avc_response_frame *r )
{
  {
  return ((bool )(((((unsigned int )r->opcode == 0U && (unsigned int )r->operand[0] == 0U) && (unsigned int )r->operand[1] == 18U) && (unsigned int )r->operand[2] == 135U) && (unsigned int )r->operand[3] == 10U));
}
}
extern void *memcpy(void * , void const * , size_t ) ;
int avc_recv(struct firedtv *fdtv , void *data , size_t length )
{ struct avc_response_frame *r ;
  long tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  r = (struct avc_response_frame *)data;
  tmp = ldv__builtin_expect(avc_debug != 0, 0L);
  if (tmp != 0L) {
    debug_fcp((u8 const *)data, (int )length);
  } else {
  }
  if (length > 7UL) {
    tmp___1 = is_register_rc(r);
    if ((int )tmp___1) {
      switch ((int )r->response) {
      case 13:
      fdtv_handle_rc(fdtv, (unsigned int )(((int )r->operand[4] << 8) | (int )r->operand[5]));
      schedule_work(& fdtv->remote_ctrl_work);
      goto ldv_40608;
      case 15:
      tmp___0 = is_register_rc((struct avc_response_frame *)(& fdtv->avc_data));
      if ((int )tmp___0) {
        goto wake;
      } else {
      }
      goto ldv_40608;
      default:
      _dev_info((struct device const *)fdtv->device, "remote control result = %d\n",
                (int )r->response);
      }
      ldv_40608: ;
      return (0);
    } else {
    }
  } else {
  }
  if ((int )fdtv->avc_reply_received) {
    dev_err((struct device const *)fdtv->device, "out-of-order AVC response, ignored\n");
    return (-5);
  } else {
  }
  __len = length;
  __ret = memcpy((void *)(& fdtv->avc_data), (void const *)data, __len);
  fdtv->avc_data_length = (int )length;
  wake:
  fdtv->avc_reply_received = 1;
  __wake_up(& fdtv->avc_wait, 3U, 1, 0);
  return (0);
}
}
static int add_pid_filter(struct firedtv *fdtv , u8 *operand )
{ int i ;
  int n ;
  int pos ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  pos = 1;
  i = 0;
  n = 0;
  goto ldv_40623;
  ldv_40622:
  tmp___5 = variable_test_bit(i, (unsigned long const volatile *)(& fdtv->channel_active));
  if (tmp___5 != 0) {
    tmp = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp) = 19U;
    tmp___0 = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp___0) = 128U;
    tmp___1 = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp___1) = (unsigned int )((u8 )((int )fdtv->channel_pid[i] >> 8)) & 31U;
    tmp___2 = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp___2) = (u8 )fdtv->channel_pid[i];
    tmp___3 = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp___3) = 0U;
    tmp___4 = pos;
    pos = pos + 1;
    *(operand + (unsigned long )tmp___4) = 0U;
    n = n + 1;
  } else {
  }
  i = i + 1;
  ldv_40623: ;
  if (i <= 15) {
    goto ldv_40622;
  } else {
    goto ldv_40624;
  }
  ldv_40624:
  *operand = (u8 )n;
  return (pos);
}
}
static int avc_tuner_tuneqpsk(struct firedtv *fdtv , struct dtv_frontend_properties *p )
{ struct avc_command_frame *c ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  if ((unsigned int )fdtv->type == 4U) {
    c->operand[3] = 96U;
  } else {
    c->operand[3] = 88U;
  }
  c->operand[4] = (u8 )(p->frequency >> 24);
  c->operand[5] = (u8 )(p->frequency >> 16);
  c->operand[6] = (u8 )(p->frequency >> 8);
  c->operand[7] = (u8 )p->frequency;
  c->operand[8] = (u8 )(p->symbol_rate / 1000U >> 8);
  c->operand[9] = (u8 )(p->symbol_rate / 1000U);
  switch ((unsigned int )p->fec_inner) {
  case 1:
  c->operand[10] = 1U;
  goto ldv_40631;
  case 2:
  c->operand[10] = 2U;
  goto ldv_40631;
  case 3:
  c->operand[10] = 3U;
  goto ldv_40631;
  case 5:
  c->operand[10] = 4U;
  goto ldv_40631;
  case 7:
  c->operand[10] = 5U;
  goto ldv_40631;
  case 4: ;
  case 8: ;
  case 9: ;
  default:
  c->operand[10] = 0U;
  }
  ldv_40631: ;
  if ((unsigned int )fdtv->voltage == 255U) {
    c->operand[11] = 255U;
  } else
  if ((unsigned int )fdtv->voltage == 1U) {
    c->operand[11] = 0U;
  } else {
    c->operand[11] = 1U;
  }
  if ((unsigned int )fdtv->tone == 255U) {
    c->operand[12] = 255U;
  } else
  if ((unsigned int )fdtv->tone == 0U) {
    c->operand[12] = 1U;
  } else {
    c->operand[12] = 0U;
  }
  if ((unsigned int )fdtv->type == 4U) {
    if ((unsigned int )fdtv->fe.dtv_property_cache.delivery_system == 6U) {
      switch ((unsigned int )fdtv->fe.dtv_property_cache.modulation) {
      case 1:
      c->operand[13] = 1U;
      goto ldv_40641;
      case 0:
      c->operand[13] = 2U;
      goto ldv_40641;
      case 9:
      c->operand[13] = 3U;
      goto ldv_40641;
      default:
      c->operand[13] = 2U;
      goto ldv_40641;
      }
      ldv_40641: ;
      switch ((unsigned int )fdtv->fe.dtv_property_cache.rolloff) {
      case 0:
      c->operand[14] = 2U;
      goto ldv_40646;
      case 1:
      c->operand[14] = 0U;
      goto ldv_40646;
      case 2:
      c->operand[14] = 1U;
      goto ldv_40646;
      case 3: ;
      default:
      c->operand[14] = 2U;
      goto ldv_40646;
      }
      ldv_40646: ;
      switch ((unsigned int )fdtv->fe.dtv_property_cache.pilot) {
      case 2:
      c->operand[15] = 0U;
      goto ldv_40652;
      case 1:
      c->operand[15] = 0U;
      goto ldv_40652;
      case 0:
      c->operand[15] = 1U;
      goto ldv_40652;
      }
      ldv_40652: ;
    } else {
      c->operand[13] = 1U;
      c->operand[14] = 255U;
      c->operand[15] = 255U;
    }
    return (16);
  } else {
    return (13);
  }
}
}
static int avc_tuner_dsd_dvb_c(struct firedtv *fdtv , struct dtv_frontend_properties *p )
{ struct avc_command_frame *c ;
  int tmp ;
  int tmp___0 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  c->opcode = 203U;
  c->operand[0] = 0U;
  c->operand[1] = 210U;
  c->operand[2] = 32U;
  c->operand[3] = 0U;
  c->operand[4] = 17U;
  if ((unsigned int )p->fec_inner != 9U) {
    tmp = 26;
  } else {
    tmp = 24;
  }
  c->operand[5] = (u8 )(tmp | ((unsigned int )p->modulation != 6U));
  c->operand[6] = 0U;
  c->operand[7] = 0U;
  c->operand[8] = 0U;
  c->operand[9] = 0U;
  c->operand[10] = 0U;
  c->operand[11] = (unsigned int )((u8 )(p->frequency / 4000U >> 16)) | 128U;
  c->operand[12] = (u8 )(p->frequency / 4000U >> 8);
  c->operand[13] = (u8 )(p->frequency / 4000U);
  c->operand[14] = (u8 )(p->symbol_rate / 1000U >> 12);
  c->operand[15] = (u8 )(p->symbol_rate / 1000U >> 4);
  c->operand[16] = (int )((u8 )(p->symbol_rate / 1000U)) << 4U;
  c->operand[17] = 0U;
  switch ((unsigned int )p->fec_inner) {
  case 1:
  c->operand[18] = 1U;
  goto ldv_40661;
  case 2:
  c->operand[18] = 2U;
  goto ldv_40661;
  case 3:
  c->operand[18] = 3U;
  goto ldv_40661;
  case 5:
  c->operand[18] = 4U;
  goto ldv_40661;
  case 7:
  c->operand[18] = 5U;
  goto ldv_40661;
  case 8:
  c->operand[18] = 6U;
  goto ldv_40661;
  case 4:
  c->operand[18] = 8U;
  goto ldv_40661;
  case 9: ;
  default:
  c->operand[18] = 0U;
  }
  ldv_40661: ;
  switch ((unsigned int )p->modulation) {
  case 1:
  c->operand[19] = 8U;
  goto ldv_40671;
  case 2:
  c->operand[19] = 16U;
  goto ldv_40671;
  case 3:
  c->operand[19] = 24U;
  goto ldv_40671;
  case 4:
  c->operand[19] = 32U;
  goto ldv_40671;
  case 5:
  c->operand[19] = 40U;
  goto ldv_40671;
  case 6: ;
  default:
  c->operand[19] = 0U;
  }
  ldv_40671:
  c->operand[20] = 0U;
  c->operand[21] = 0U;
  tmp___0 = add_pid_filter(fdtv, (u8 *)(& c->operand) + 22UL);
  return (tmp___0 + 22);
}
}
static int avc_tuner_dsd_dvb_t(struct firedtv *fdtv , struct dtv_frontend_properties *p )
{ struct avc_command_frame *c ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  c->opcode = 203U;
  c->operand[0] = 0U;
  c->operand[1] = 210U;
  c->operand[2] = 32U;
  c->operand[3] = 0U;
  c->operand[4] = 12U;
  if (p->bandwidth_hz != 0U) {
    tmp = 96;
  } else {
    tmp = 64;
  }
  if ((unsigned int )p->modulation != 6U) {
    tmp___0 = 16;
  } else {
    tmp___0 = 0;
  }
  if ((unsigned int )p->hierarchy != 4U) {
    tmp___1 = 8;
  } else {
    tmp___1 = 0;
  }
  if ((unsigned int )p->code_rate_HP != 9U) {
    tmp___2 = 4;
  } else {
    tmp___2 = 0;
  }
  if ((unsigned int )p->code_rate_LP != 9U) {
    tmp___3 = 2;
  } else {
    tmp___3 = 0;
  }
  c->operand[5] = (u8 )(((((tmp | tmp___0) | tmp___1) | tmp___2) | tmp___3) | ((unsigned int )p->guard_interval != 4U));
  if ((unsigned int )p->transmission_mode != 2U) {
    c->operand[6] = 64U;
  } else {
    c->operand[6] = 0U;
  }
  c->operand[7] = 0U;
  c->operand[8] = (u8 )(p->frequency / 10U >> 24);
  c->operand[9] = (u8 )(p->frequency / 10U >> 16);
  c->operand[10] = (u8 )(p->frequency / 10U >> 8);
  c->operand[11] = (u8 )(p->frequency / 10U);
  switch (p->bandwidth_hz) {
  case 7000000:
  c->operand[12] = 32U;
  goto ldv_40684;
  case 8000000: ;
  case 6000000: ;
  case 0: ;
  default:
  c->operand[12] = 0U;
  }
  ldv_40684: ;
  switch ((unsigned int )p->modulation) {
  case 1:
  c->operand[13] = 64U;
  goto ldv_40690;
  case 3:
  c->operand[13] = 128U;
  goto ldv_40690;
  case 0: ;
  default:
  c->operand[13] = 0U;
  }
  ldv_40690: ;
  switch ((unsigned int )p->hierarchy) {
  case 1:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 8U);
  goto ldv_40695;
  case 2:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 16U);
  goto ldv_40695;
  case 3:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 24U);
  goto ldv_40695;
  case 4: ;
  case 0: ;
  default: ;
  goto ldv_40695;
  }
  ldv_40695: ;
  switch ((unsigned int )p->code_rate_HP) {
  case 2:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 1U);
  goto ldv_40702;
  case 3:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 2U);
  goto ldv_40702;
  case 5:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 3U);
  goto ldv_40702;
  case 7:
  c->operand[13] = (u8 )((unsigned int )c->operand[13] | 4U);
  goto ldv_40702;
  case 1: ;
  default: ;
  goto ldv_40702;
  }
  ldv_40702: ;
  switch ((unsigned int )p->code_rate_LP) {
  case 2:
  c->operand[14] = 32U;
  goto ldv_40709;
  case 3:
  c->operand[14] = 64U;
  goto ldv_40709;
  case 5:
  c->operand[14] = 96U;
  goto ldv_40709;
  case 7:
  c->operand[14] = 128U;
  goto ldv_40709;
  case 1: ;
  default:
  c->operand[14] = 0U;
  goto ldv_40709;
  }
  ldv_40709: ;
  switch ((unsigned int )p->guard_interval) {
  case 1:
  c->operand[14] = (u8 )((unsigned int )c->operand[14] | 8U);
  goto ldv_40716;
  case 2:
  c->operand[14] = (u8 )((unsigned int )c->operand[14] | 16U);
  goto ldv_40716;
  case 3:
  c->operand[14] = (u8 )((unsigned int )c->operand[14] | 24U);
  goto ldv_40716;
  case 0: ;
  case 4: ;
  default: ;
  goto ldv_40716;
  }
  ldv_40716: ;
  switch ((unsigned int )p->transmission_mode) {
  case 1:
  c->operand[14] = (u8 )((unsigned int )c->operand[14] | 2U);
  goto ldv_40723;
  case 0: ;
  case 2: ;
  default: ;
  goto ldv_40723;
  }
  ldv_40723:
  c->operand[15] = 0U;
  c->operand[16] = 0U;
  tmp___4 = add_pid_filter(fdtv, (u8 *)(& c->operand) + 17UL);
  return (tmp___4 + 17);
}
}
int avc_tuner_dsd(struct firedtv *fdtv , struct dtv_frontend_properties *p )
{ struct avc_command_frame *c ;
  int pos ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_8(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  switch ((unsigned int )fdtv->type) {
  case 1: ;
  case 4:
  pos = avc_tuner_tuneqpsk(fdtv, p);
  goto ldv_40736;
  case 2:
  pos = avc_tuner_dsd_dvb_c(fdtv, p);
  goto ldv_40736;
  case 3:
  pos = avc_tuner_dsd_dvb_t(fdtv, p);
  goto ldv_40736;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/media/firewire/firedtv.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/17/dscv_tempdir/dscv/ri/32_7a/drivers/media/firewire/firedtv-avc.c.prepared"),
                       "i" (659), "i" (12UL));
  ldv_40740: ;
  goto ldv_40740;
  }
  ldv_40736:
  pad_operands(c, pos);
  fdtv->avc_data_length = (pos + 6) & -4;
  ret = avc_write(fdtv);
  ldv_mutex_unlock_9(& fdtv->avc_mutex);
  if (ret == 0) {
    msleep(500U);
  } else {
  }
  return (ret);
}
}
int avc_tuner_set_pids(struct firedtv *fdtv , unsigned char pidc , u16 *pid )
{ struct avc_command_frame *c ;
  int ret ;
  int pos ;
  int k ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  if ((unsigned int )pidc > 16U && (unsigned int )pidc != 255U) {
    return (-22);
  } else {
  }
  ldv_mutex_lock_10(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 203U;
  c->operand[0] = 0U;
  c->operand[1] = 210U;
  c->operand[2] = 32U;
  c->operand[3] = 0U;
  c->operand[4] = 0U;
  c->operand[5] = pidc;
  pos = 6;
  if ((unsigned int )pidc != 255U) {
    k = 0;
    goto ldv_40751;
    ldv_40750:
    tmp = pos;
    pos = pos + 1;
    c->operand[tmp] = 19U;
    tmp___0 = pos;
    pos = pos + 1;
    c->operand[tmp___0] = 128U;
    tmp___1 = pos;
    pos = pos + 1;
    c->operand[tmp___1] = (unsigned int )((u8 )((int )*(pid + (unsigned long )k) >> 8)) & 31U;
    tmp___2 = pos;
    pos = pos + 1;
    c->operand[tmp___2] = (u8 )*(pid + (unsigned long )k);
    tmp___3 = pos;
    pos = pos + 1;
    c->operand[tmp___3] = 0U;
    tmp___4 = pos;
    pos = pos + 1;
    c->operand[tmp___4] = 0U;
    k = k + 1;
    ldv_40751: ;
    if ((int )pidc > k) {
      goto ldv_40750;
    } else {
      goto ldv_40752;
    }
    ldv_40752: ;
  } else {
  }
  pad_operands(c, pos);
  fdtv->avc_data_length = (pos + 6) & -4;
  ret = avc_write(fdtv);
  ldv_mutex_unlock_11(& fdtv->avc_mutex);
  if (ret == 0) {
    msleep(50U);
  } else {
  }
  return (ret);
}
}
int avc_tuner_get_ts(struct firedtv *fdtv )
{ struct avc_command_frame *c ;
  int ret ;
  int sl ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_12(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 200U;
  if ((unsigned int )fdtv->type == 3U) {
    sl = 12;
  } else {
    sl = 17;
  }
  c->operand[0] = 0U;
  c->operand[1] = 210U;
  c->operand[2] = 255U;
  c->operand[3] = 32U;
  c->operand[4] = 0U;
  c->operand[5] = 0U;
  c->operand[6] = (u8 )sl;
  clear_operands(c, 7, 24);
  if ((unsigned int )fdtv->type == 3U) {
    fdtv->avc_data_length = 24;
  } else {
    fdtv->avc_data_length = 28;
  }
  ret = avc_write(fdtv);
  ldv_mutex_unlock_13(& fdtv->avc_mutex);
  if (ret == 0) {
    msleep(250U);
  } else {
  }
  return (ret);
}
}
int avc_identify_subunit(struct firedtv *fdtv )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_14(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 9U;
  c->operand[0] = 0U;
  c->operand[1] = 255U;
  c->operand[2] = 0U;
  c->operand[3] = 0U;
  c->operand[4] = 8U;
  c->operand[5] = 0U;
  c->operand[6] = 13U;
  clear_operands(c, 7, 8);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  if (((unsigned int )r->response != 12U && (unsigned int )r->response != 9U) || ((int )r->operand[3] << 8) + (int )r->operand[4] != 8) {
    dev_err((struct device const *)fdtv->device, "cannot read subunit identifier\n");
    ret = -22;
  } else {
  }
  out:
  ldv_mutex_unlock_15(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_tuner_status(struct firedtv *fdtv , struct firedtv_tuner_status *stat )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int length ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_16(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 9U;
  c->operand[0] = 128U;
  c->operand[1] = 255U;
  clear_operands(c, 2, 31);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  if ((unsigned int )r->response != 12U && (unsigned int )r->response != 9U) {
    dev_err((struct device const *)fdtv->device, "cannot read tuner status\n");
    ret = -22;
    goto out;
  } else {
  }
  length = (int )r->operand[9];
  if ((unsigned int )r->operand[1] != 16U || length != 22) {
    dev_err((struct device const *)fdtv->device, "got invalid tuner status\n");
    ret = -22;
    goto out;
  } else {
  }
  stat->active_system = r->operand[10];
  stat->searching = (unsigned char )((int )r->operand[11] >> 7);
  stat->moving = (unsigned int )((unsigned char )((int )r->operand[11] >> 6)) & 1U;
  stat->no_rf = (unsigned int )((unsigned char )((int )r->operand[11] >> 5)) & 1U;
  stat->input = (unsigned char )((int )r->operand[12] >> 7);
  stat->selected_antenna = (unsigned int )r->operand[12] & 127U;
  stat->ber = (unsigned int )(((((int )r->operand[13] << 24) | ((int )r->operand[14] << 16)) | ((int )r->operand[15] << 8)) | (int )r->operand[16]);
  stat->signal_strength = r->operand[17];
  stat->raster_frequency = (unsigned int )((unsigned char )((int )r->operand[18] >> 6)) & 2U;
  stat->rf_frequency = (unsigned int )(((((int )r->operand[18] & 63) << 16) | ((int )r->operand[19] << 8)) | (int )r->operand[20]);
  stat->man_dep_info_length = r->operand[21];
  stat->front_end_error = (unsigned int )((unsigned char )((int )r->operand[22] >> 4)) & 1U;
  stat->antenna_error = (unsigned int )((unsigned char )((int )r->operand[22] >> 3)) & 1U;
  stat->front_end_power_status = (unsigned int )((unsigned char )((int )r->operand[22] >> 1)) & 1U;
  stat->power_supply = (unsigned int )r->operand[22] & 1U;
  stat->carrier_noise_ratio = (unsigned short )((int )((short )((int )r->operand[23] << 8)) | (int )((short )r->operand[24]));
  stat->power_supply_voltage = r->operand[27];
  stat->antenna_voltage = r->operand[28];
  stat->firewire_bus_voltage = r->operand[29];
  stat->ca_mmi = (unsigned int )r->operand[30] & 1U;
  stat->ca_pmt_reply = (unsigned char )((int )r->operand[31] >> 7);
  stat->ca_date_time_request = (unsigned int )((unsigned char )((int )r->operand[31] >> 6)) & 1U;
  stat->ca_application_info = (unsigned int )((unsigned char )((int )r->operand[31] >> 5)) & 1U;
  stat->ca_module_present_status = (unsigned int )((unsigned char )((int )r->operand[31] >> 4)) & 1U;
  stat->ca_dvb_flag = (unsigned int )((unsigned char )((int )r->operand[31] >> 3)) & 1U;
  stat->ca_error_flag = (unsigned int )((unsigned char )((int )r->operand[31] >> 2)) & 1U;
  stat->ca_initialization_status = (unsigned int )((unsigned char )((int )r->operand[31] >> 1)) & 1U;
  out:
  ldv_mutex_unlock_17(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_lnb_control(struct firedtv *fdtv , char voltage , char burst , char conttone ,
                    char nrdiseq , struct dvb_diseqc_master_cmd *diseqcmd )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int pos ;
  int j ;
  int k ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_18(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 82U;
  c->operand[4] = (u8 )voltage;
  c->operand[5] = (u8 )nrdiseq;
  pos = 6;
  j = 0;
  goto ldv_40793;
  ldv_40792:
  tmp = pos;
  pos = pos + 1;
  c->operand[tmp] = (diseqcmd + (unsigned long )j)->msg_len;
  k = 0;
  goto ldv_40790;
  ldv_40789:
  tmp___0 = pos;
  pos = pos + 1;
  c->operand[tmp___0] = (diseqcmd + (unsigned long )j)->msg[k];
  k = k + 1;
  ldv_40790: ;
  if ((int )(diseqcmd + (unsigned long )j)->msg_len > k) {
    goto ldv_40789;
  } else {
    goto ldv_40791;
  }
  ldv_40791:
  j = j + 1;
  ldv_40793: ;
  if ((int )nrdiseq > j) {
    goto ldv_40792;
  } else {
    goto ldv_40794;
  }
  ldv_40794:
  tmp___1 = pos;
  pos = pos + 1;
  c->operand[tmp___1] = (u8 )burst;
  tmp___2 = pos;
  pos = pos + 1;
  c->operand[tmp___2] = (u8 )conttone;
  pad_operands(c, pos);
  fdtv->avc_data_length = (pos + 6) & -4;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  if ((unsigned int )r->response != 9U) {
    dev_err((struct device const *)fdtv->device, "LNB control failed\n");
    ret = -22;
  } else {
  }
  out:
  ldv_mutex_unlock_19(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_register_remote_control(struct firedtv *fdtv )
{ struct avc_command_frame *c ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_20(& fdtv->avc_mutex);
  c->ctype = 3U;
  c->subunit = 255U;
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 10U;
  c->operand[4] = 0U;
  fdtv->avc_data_length = 8;
  ret = avc_write(fdtv);
  ldv_mutex_unlock_21(& fdtv->avc_mutex);
  return (ret);
}
}
void avc_remote_ctrl_work(struct work_struct *work )
{ struct firedtv *fdtv ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  fdtv = (struct firedtv *)__mptr + 0xfffffffffffff398UL;
  avc_register_remote_control(fdtv);
  return;
}
}
static int get_ca_object_pos(struct avc_response_frame *r )
{ int length ;
  {
  length = 1;
  if ((int )((signed char )r->operand[7]) < 0) {
    length = ((int )r->operand[7] & 127) + 1;
  } else {
  }
  return (length + 7);
}
}
static int get_ca_object_length(struct avc_response_frame *r )
{
  {
  return ((int )r->operand[7]);
}
}
int avc_ca_app_info(struct firedtv *fdtv , char *app_info , unsigned int *len )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int pos ;
  int ret ;
  size_t __len ;
  void *__ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_22(& fdtv->avc_mutex);
  c->ctype = 1U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 87U;
  c->operand[4] = 0U;
  c->operand[5] = 1U;
  clear_operands(c, 6, 508);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  pos = get_ca_object_pos(r);
  *app_info = -97;
  *(app_info + 1UL) = -128;
  *(app_info + 2UL) = 33;
  *(app_info + 3UL) = (char )((unsigned int )r->operand[pos + 4] + 6U);
  *(app_info + 4UL) = 1;
  __len = (size_t )((int )r->operand[pos + 4] + 5);
  __ret = memcpy((void *)app_info + 5U, (void const *)(& r->operand) + (unsigned long )pos,
                           __len);
  *len = (unsigned int )((int )*(app_info + 3UL) + 4);
  out:
  ldv_mutex_unlock_23(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_info(struct firedtv *fdtv , char *app_info , unsigned int *len )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int i ;
  int pos ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_24(& fdtv->avc_mutex);
  c->ctype = 1U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 87U;
  c->operand[4] = 0U;
  c->operand[5] = 1U;
  clear_operands(c, 6, 508);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  pos = get_ca_object_pos(r);
  *app_info = -97;
  *(app_info + 1UL) = -128;
  *(app_info + 2UL) = 49;
  if (num_fake_ca_system_ids == 0U) {
    *(app_info + 3UL) = 2;
    *(app_info + 4UL) = (char )r->operand[pos];
    *(app_info + 5UL) = (char )r->operand[pos + 1];
  } else {
    *(app_info + 3UL) = (char )((unsigned int )((unsigned char )num_fake_ca_system_ids) * 2U);
    i = 0;
    goto ldv_40839;
    ldv_40838:
    *(app_info + (unsigned long )((i + 2) * 2)) = (char )(fake_ca_system_ids[i] >> 8);
    *(app_info + (unsigned long )(i * 2 + 5)) = (char )fake_ca_system_ids[i];
    i = i + 1;
    ldv_40839: ;
    if ((unsigned int )i < num_fake_ca_system_ids) {
      goto ldv_40838;
    } else {
      goto ldv_40840;
    }
    ldv_40840: ;
  }
  *len = (unsigned int )((int )*(app_info + 3UL) + 4);
  out:
  ldv_mutex_unlock_25(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_reset(struct firedtv *fdtv )
{ struct avc_command_frame *c ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_26(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 86U;
  c->operand[4] = 0U;
  c->operand[5] = 0U;
  c->operand[6] = 0U;
  c->operand[7] = 1U;
  c->operand[8] = 0U;
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  ldv_mutex_unlock_27(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_pmt(struct firedtv *fdtv , char *msg , int length )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int list_management ;
  int program_info_length ;
  int pmt_cmd_id ;
  int read_pos ;
  int write_pos ;
  int es_info_length ;
  int crc32_csum ;
  int ret ;
  long tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  size_t __len___0 ;
  void *__ret___0 ;
  u32 tmp___10 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  tmp = ldv__builtin_expect((avc_debug & 16384) != 0, 0L);
  if (tmp != 0L) {
    debug_pmt(msg, length);
  } else {
  }
  ldv_mutex_lock_28(& fdtv->avc_mutex);
  c->ctype = 0U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  if ((int )((signed char )*msg) != 3) {
    _dev_info((struct device const *)fdtv->device, "forcing list_management to ONLY\n");
    *msg = 3;
  } else {
  }
  list_management = (int )*msg;
  program_info_length = (((int )*(msg + 4UL) & 15) << 8) + (int )*(msg + 5UL);
  if (program_info_length > 0) {
    program_info_length = program_info_length - 1;
  } else {
  }
  pmt_cmd_id = (int )*(msg + 6UL);
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 86U;
  c->operand[4] = 0U;
  c->operand[5] = 2U;
  c->operand[6] = 0U;
  c->operand[10] = (u8 )list_management;
  c->operand[11] = 1U;
  c->operand[12] = 2U;
  c->operand[13] = 128U;
  c->operand[15] = (u8 )*(msg + 1UL);
  c->operand[16] = (u8 )*(msg + 2UL);
  c->operand[17] = (u8 )*(msg + 3UL);
  c->operand[18] = 0U;
  c->operand[19] = 0U;
  c->operand[20] = 31U;
  c->operand[21] = 255U;
  c->operand[22] = (u8 )(program_info_length >> 8);
  c->operand[23] = (u8 )program_info_length;
  read_pos = 6;
  write_pos = 24;
  if (program_info_length > 0) {
    tmp___0 = read_pos;
    read_pos = read_pos + 1;
    pmt_cmd_id = (int )*(msg + (unsigned long )tmp___0);
    if (pmt_cmd_id != 1 && pmt_cmd_id != 4) {
      dev_err((struct device const *)fdtv->device, "invalid pmt_cmd_id %d\n", pmt_cmd_id);
    } else {
    }
    __len = (size_t )program_info_length;
    __ret = memcpy((void *)(& c->operand) + (unsigned long )write_pos, (void const *)msg + (unsigned long )read_pos,
                             __len);
    read_pos = read_pos + program_info_length;
    write_pos = write_pos + program_info_length;
  } else {
  }
  goto ldv_40868;
  ldv_40867:
  tmp___1 = write_pos;
  write_pos = write_pos + 1;
  tmp___2 = read_pos;
  read_pos = read_pos + 1;
  c->operand[tmp___1] = (u8 )*(msg + (unsigned long )tmp___2);
  tmp___3 = write_pos;
  write_pos = write_pos + 1;
  tmp___4 = read_pos;
  read_pos = read_pos + 1;
  c->operand[tmp___3] = (u8 )*(msg + (unsigned long )tmp___4);
  tmp___5 = write_pos;
  write_pos = write_pos + 1;
  tmp___6 = read_pos;
  read_pos = read_pos + 1;
  c->operand[tmp___5] = (u8 )*(msg + (unsigned long )tmp___6);
  es_info_length = (((int )*(msg + (unsigned long )read_pos) & 15) << 8) + (int )*(msg + ((unsigned long )read_pos + 1UL));
  read_pos = read_pos + 2;
  if (es_info_length > 0) {
    es_info_length = es_info_length - 1;
  } else {
  }
  tmp___7 = write_pos;
  write_pos = write_pos + 1;
  c->operand[tmp___7] = (u8 )(es_info_length >> 8);
  tmp___8 = write_pos;
  write_pos = write_pos + 1;
  c->operand[tmp___8] = (u8 )es_info_length;
  if (es_info_length > 0) {
    tmp___9 = read_pos;
    read_pos = read_pos + 1;
    pmt_cmd_id = (int )*(msg + (unsigned long )tmp___9);
    if (pmt_cmd_id != 1 && pmt_cmd_id != 4) {
      dev_err((struct device const *)fdtv->device, "invalid pmt_cmd_id %d at stream level\n",
              pmt_cmd_id);
    } else {
    }
    __len___0 = (size_t )es_info_length;
    __ret___0 = memcpy((void *)(& c->operand) + (unsigned long )write_pos,
                                 (void const *)msg + (unsigned long )read_pos, __len___0);
    read_pos = read_pos + es_info_length;
    write_pos = write_pos + es_info_length;
  } else {
  }
  ldv_40868: ;
  if (read_pos < length) {
    goto ldv_40867;
  } else {
    goto ldv_40869;
  }
  ldv_40869:
  write_pos = write_pos + 4;
  c->operand[7] = 130U;
  c->operand[8] = (u8 )((write_pos + -10) >> 8);
  c->operand[9] = (u8 )((unsigned int )((unsigned char )write_pos) + 246U);
  c->operand[14] = (unsigned int )((u8 )write_pos) + 241U;
  tmp___10 = crc32_be(0U, (unsigned char const *)(& c->operand) + 10U, (size_t )((int )c->operand[12] + -1));
  crc32_csum = (int )tmp___10;
  c->operand[write_pos + -4] = (u8 )((unsigned int )crc32_csum >> 24);
  c->operand[write_pos + -3] = (u8 )(crc32_csum >> 16);
  c->operand[write_pos + -2] = (u8 )(crc32_csum >> 8);
  c->operand[write_pos + -1] = (u8 )crc32_csum;
  pad_operands(c, write_pos);
  fdtv->avc_data_length = (write_pos + 6) & -4;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  if ((unsigned int )r->response != 9U) {
    dev_err((struct device const *)fdtv->device, "CA PMT failed with response 0x%x\n",
            (int )r->response);
    ret = -13;
  } else {
  }
  out:
  ldv_mutex_unlock_29(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_get_time_date(struct firedtv *fdtv , int *interval )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int ret ;
  int tmp ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_30(& fdtv->avc_mutex);
  c->ctype = 1U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 87U;
  c->operand[4] = 0U;
  c->operand[5] = 4U;
  clear_operands(c, 6, 508);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  tmp = get_ca_object_pos(r);
  *interval = (int )r->operand[tmp];
  out:
  ldv_mutex_unlock_31(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_enter_menu(struct firedtv *fdtv )
{ struct avc_command_frame *c ;
  int ret ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_32(& fdtv->avc_mutex);
  c->ctype = 1U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 86U;
  c->operand[4] = 0U;
  c->operand[5] = 7U;
  clear_operands(c, 6, 8);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  ldv_mutex_unlock_33(& fdtv->avc_mutex);
  return (ret);
}
}
int avc_ca_get_mmi(struct firedtv *fdtv , char *mmi_object , unsigned int *len )
{ struct avc_command_frame *c ;
  struct avc_response_frame *r ;
  int ret ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  {
  c = (struct avc_command_frame *)(& fdtv->avc_data);
  r = (struct avc_response_frame *)(& fdtv->avc_data);
  ldv_mutex_lock_34(& fdtv->avc_mutex);
  c->ctype = 1U;
  c->subunit = (u8 )((int )((signed char )fdtv->subunit) | 40);
  c->opcode = 0U;
  c->operand[0] = 0U;
  c->operand[1] = 18U;
  c->operand[2] = 135U;
  c->operand[3] = 87U;
  c->operand[4] = 0U;
  c->operand[5] = 5U;
  clear_operands(c, 6, 508);
  fdtv->avc_data_length = 12;
  ret = avc_write(fdtv);
  if (ret < 0) {
    goto out;
  } else {
  }
  tmp = get_ca_object_length(r);
  *len = (unsigned int )tmp;
  __len = (size_t )*len;
  tmp___1 = get_ca_object_pos(r);
  __ret = memcpy((void *)mmi_object, (void const *)(& r->operand) + (unsigned long )tmp___1,
                           __len);
  out:
  ldv_mutex_unlock_35(& fdtv->avc_mutex);
  return (ret);
}
}
static int cmp_read(struct firedtv *fdtv , u64 addr , __be32 *data )
{ int ret ;
  {
  ret = fdtv_read(fdtv, addr, (void *)data);
  if (ret < 0) {
    dev_err((struct device const *)fdtv->device, "CMP: read I/O error\n");
  } else {
  }
  return (ret);
}
}
static int cmp_lock(struct firedtv *fdtv , u64 addr , __be32 *data )
{ int ret ;
  {
  ret = fdtv_lock(fdtv, addr, (void *)data);
  if (ret < 0) {
    dev_err((struct device const *)fdtv->device, "CMP: lock I/O error\n");
  } else {
  }
  return (ret);
}
}
__inline static u32 get_opcr(__be32 opcr , u32 mask , u32 shift )
{ __u32 tmp ;
  {
  tmp = __fswab32(opcr);
  return ((tmp >> (int )shift) & mask);
}
}
__inline static void set_opcr(__be32 *opcr , u32 value , u32 mask , u32 shift )
{ __u32 tmp ;
  __u32 tmp___0 ;
  {
  tmp = __fswab32(mask << (int )shift);
  *opcr = *opcr & ~ tmp;
  tmp___0 = __fswab32((value & mask) << (int )shift);
  *opcr = *opcr | tmp___0;
  return;
}
}
int cmp_establish_pp_connection(struct firedtv *fdtv , int plug , int channel )
{ __be32 old_opcr ;
  __be32 opcr[2U] ;
  u64 opcr_address ;
  int attempts ;
  int ret ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  opcr_address = (unsigned long long )(plug << 2) + 281474708277508ULL;
  attempts = 0;
  ret = cmp_read(fdtv, opcr_address, (__be32 *)(& opcr));
  if (ret < 0) {
    return (ret);
  } else {
  }
  repeat:
  tmp = get_opcr(*((__be32 *)(& opcr)), 1U, 31U);
  if (tmp == 0U) {
    dev_err((struct device const *)fdtv->device, "CMP: output offline\n");
    return (-16);
  } else {
  }
  old_opcr = *((__be32 *)(& opcr));
  tmp___1 = get_opcr(*((__be32 *)(& opcr)), 63U, 24U);
  if (tmp___1 != 0U) {
    tmp___0 = get_opcr(*((__be32 *)(& opcr)), 63U, 16U);
    if (tmp___0 != (u32 )channel) {
      dev_err((struct device const *)fdtv->device, "CMP: cannot change channel\n");
      return (-16);
    } else {
    }
    _dev_info((struct device const *)fdtv->device, "CMP: overlaying connection\n");
  } else {
    set_opcr((__be32 *)(& opcr), (u32 )channel, 63U, 16U);
    set_opcr((__be32 *)(& opcr), 2U, 3U, 14U);
    set_opcr((__be32 *)(& opcr), 0U, 15U, 10U);
  }
  tmp___2 = get_opcr(*((__be32 *)(& opcr)), 63U, 24U);
  set_opcr((__be32 *)(& opcr), tmp___2 + 1U, 63U, 24U);
  opcr[1] = *((__be32 *)(& opcr));
  opcr[0] = old_opcr;
  ret = cmp_lock(fdtv, opcr_address, (__be32 *)(& opcr));
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (*((__be32 *)(& opcr)) != old_opcr) {
    attempts = attempts + 1;
    if (attempts <= 5) {
      goto repeat;
    } else {
    }
    return (-16);
  } else {
  }
  return (0);
}
}
void cmp_break_pp_connection(struct firedtv *fdtv , int plug , int channel )
{ __be32 old_opcr ;
  __be32 opcr[2U] ;
  u64 opcr_address ;
  int attempts ;
  int tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  {
  opcr_address = (unsigned long long )(plug << 2) + 281474708277508ULL;
  attempts = 0;
  tmp = cmp_read(fdtv, opcr_address, (__be32 *)(& opcr));
  if (tmp < 0) {
    return;
  } else {
  }
  repeat:
  tmp___0 = get_opcr(*((__be32 *)(& opcr)), 1U, 31U);
  if (tmp___0 == 0U) {
    dev_err((struct device const *)fdtv->device, "CMP: no connection to break\n");
    return;
  } else {
    tmp___1 = get_opcr(*((__be32 *)(& opcr)), 63U, 24U);
    if (tmp___1 == 0U) {
      dev_err((struct device const *)fdtv->device, "CMP: no connection to break\n");
      return;
    } else {
      tmp___2 = get_opcr(*((__be32 *)(& opcr)), 63U, 16U);
      if (tmp___2 != (u32 )channel) {
        dev_err((struct device const *)fdtv->device, "CMP: no connection to break\n");
        return;
      } else {
      }
    }
  }
  old_opcr = *((__be32 *)(& opcr));
  tmp___3 = get_opcr(*((__be32 *)(& opcr)), 63U, 24U);
  set_opcr((__be32 *)(& opcr), tmp___3 - 1U, 63U, 24U);
  opcr[1] = *((__be32 *)(& opcr));
  opcr[0] = old_opcr;
  tmp___4 = cmp_lock(fdtv, opcr_address, (__be32 *)(& opcr));
  if (tmp___4 < 0) {
    return;
  } else {
  }
  if (*((__be32 *)(& opcr)) != old_opcr) {
    attempts = attempts + 1;
    if (attempts <= 5) {
      goto repeat;
    } else {
    }
  } else {
  }
  return;
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
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_avc_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_4 ;
int ref_cnt ;
extern int __VERIFIER_nondet_int(void) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern struct module __this_module ;
extern int dvb_register_device(struct dvb_adapter * , struct dvb_device ** , struct dvb_device const * ,
                               void * , int ) ;
extern void dvb_unregister_device(struct dvb_device * ) ;
extern int dvb_generic_open(struct inode * , struct file * ) ;
extern int dvb_generic_release(struct inode * , struct file * ) ;
extern long dvb_generic_ioctl(struct file * , unsigned int , unsigned long ) ;
int fdtv_ca_register(struct firedtv *fdtv ) ;
void fdtv_ca_release(struct firedtv *fdtv ) ;
static int fdtv_ca_ready(struct firedtv_tuner_status *stat )
{
  {
  return ((((unsigned int )*((unsigned char *)stat + 19UL) != 0U && (unsigned int )*((unsigned char *)stat + 19UL) == 0U) && (unsigned int )*((unsigned char *)stat + 19UL) != 0U) && (unsigned int )*((unsigned char *)stat + 19UL) != 0U);
}
}
static int fdtv_get_ca_flags(struct firedtv_tuner_status *stat )
{ int flags ;
  {
  flags = 0;
  if ((unsigned int )*((unsigned char *)stat + 19UL) != 0U) {
    flags = flags | 1;
  } else {
  }
  if (((unsigned int )*((unsigned char *)stat + 19UL) != 0U && (unsigned int )*((unsigned char *)stat + 19UL) == 0U) && (unsigned int )*((unsigned char *)stat + 19UL) != 0U) {
    flags = flags | 2;
  } else {
  }
  return (flags);
}
}
static int fdtv_ca_get_caps(void *arg )
{ struct ca_caps *cap ;
  {
  cap = (struct ca_caps *)arg;
  cap->slot_num = 1U;
  cap->slot_type = 1U;
  cap->descr_num = 1U;
  cap->descr_type = 1U;
  return (0);
}
}
static int fdtv_ca_get_slot_info(struct firedtv *fdtv , void *arg )
{ struct firedtv_tuner_status stat ;
  struct ca_slot_info *slot ;
  int err ;
  int tmp ;
  {
  slot = (struct ca_slot_info *)arg;
  err = avc_tuner_status(fdtv, & stat);
  if (err != 0) {
    return (err);
  } else {
  }
  if (slot->num != 0) {
    return (-13);
  } else {
  }
  slot->type = 1;
  tmp = fdtv_get_ca_flags(& stat);
  slot->flags = (unsigned int )tmp;
  return (0);
}
}
static int fdtv_ca_app_info(struct firedtv *fdtv , void *arg )
{ struct ca_msg *reply ;
  int tmp ;
  {
  reply = (struct ca_msg *)arg;
  tmp = avc_ca_app_info(fdtv, (char *)(& reply->msg), & reply->length);
  return (tmp);
}
}
static int fdtv_ca_info(struct firedtv *fdtv , void *arg )
{ struct ca_msg *reply ;
  int tmp ;
  {
  reply = (struct ca_msg *)arg;
  tmp = avc_ca_info(fdtv, (char *)(& reply->msg), & reply->length);
  return (tmp);
}
}
static int fdtv_ca_get_mmi(struct firedtv *fdtv , void *arg )
{ struct ca_msg *reply ;
  int tmp ;
  {
  reply = (struct ca_msg *)arg;
  tmp = avc_ca_get_mmi(fdtv, (char *)(& reply->msg), & reply->length);
  return (tmp);
}
}
static int fdtv_ca_get_msg(struct firedtv *fdtv , void *arg )
{ struct firedtv_tuner_status stat ;
  int err ;
  {
  switch (fdtv->ca_last_command) {
  case 10453024:
  err = fdtv_ca_app_info(fdtv, arg);
  goto ldv_40436;
  case 10453040:
  err = fdtv_ca_info(fdtv, arg);
  goto ldv_40436;
  default:
  err = avc_tuner_status(fdtv, & stat);
  if (err != 0) {
    goto ldv_40436;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& stat) + 19UL) != 0U) {
    err = fdtv_ca_get_mmi(fdtv, arg);
  } else {
    _dev_info((struct device const *)fdtv->device, "unhandled CA message 0x%08x\n",
              fdtv->ca_last_command);
    err = -13;
  }
  }
  ldv_40436:
  fdtv->ca_last_command = 0;
  return (err);
}
}
static int fdtv_ca_pmt(struct firedtv *fdtv , void *arg )
{ struct ca_msg *msg ;
  int data_pos ;
  int data_length ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  msg = (struct ca_msg *)arg;
  data_pos = 4;
  if ((int )((signed char )msg->msg[3]) < 0) {
    data_length = 0;
    i = 0;
    goto ldv_40448;
    ldv_40447:
    tmp = data_pos;
    data_pos = data_pos + 1;
    data_length = (data_length << 8) + (int )msg->msg[tmp];
    i = i + 1;
    ldv_40448: ;
    if (((int )msg->msg[3] & 127) > i) {
      goto ldv_40447;
    } else {
      goto ldv_40449;
    }
    ldv_40449: ;
  } else {
    data_length = (int )msg->msg[3];
  }
  tmp___0 = avc_ca_pmt(fdtv, (char *)(& msg->msg) + (unsigned long )data_pos, data_length);
  return (tmp___0);
}
}
static int fdtv_ca_send_msg(struct firedtv *fdtv , void *arg )
{ struct ca_msg *msg ;
  int err ;
  {
  msg = (struct ca_msg *)arg;
  fdtv->ca_last_command = (((int )msg->msg[0] << 16) + ((int )msg->msg[1] << 8)) + (int )msg->msg[2];
  switch (fdtv->ca_last_command) {
  case 10453042:
  err = fdtv_ca_pmt(fdtv, arg);
  goto ldv_40457;
  case 10453024:
  err = 0;
  goto ldv_40457;
  case 10453040:
  err = 0;
  goto ldv_40457;
  case 10453026:
  err = avc_ca_enter_menu(fdtv);
  goto ldv_40457;
  default:
  dev_err((struct device const *)fdtv->device, "unhandled CA message 0x%08x\n",
          fdtv->ca_last_command);
  err = -13;
  }
  ldv_40457: ;
  return (err);
}
}
static int fdtv_ca_ioctl(struct file *file , unsigned int cmd , void *arg )
{ struct dvb_device *dvbdev ;
  struct firedtv *fdtv ;
  struct firedtv_tuner_status stat ;
  int err ;
  {
  dvbdev = (struct dvb_device *)file->private_data;
  fdtv = (struct firedtv *)dvbdev->priv;
  switch (cmd) {
  case 28544:
  err = avc_ca_reset(fdtv);
  goto ldv_40472;
  case -2146406527:
  err = fdtv_ca_get_caps(arg);
  goto ldv_40472;
  case -2146668670:
  err = fdtv_ca_get_slot_info(fdtv, arg);
  goto ldv_40472;
  case -2129891452:
  err = fdtv_ca_get_msg(fdtv, arg);
  goto ldv_40472;
  case 1091334021:
  err = fdtv_ca_send_msg(fdtv, arg);
  goto ldv_40472;
  default:
  _dev_info((struct device const *)fdtv->device, "unhandled CA ioctl %u\n", cmd);
  err = -95;
  }
  ldv_40472:
  avc_tuner_status(fdtv, & stat);
  return (err);
}
}
static unsigned int fdtv_ca_io_poll(struct file *file , poll_table *wait )
{
  {
  return (1U);
}
}
static struct file_operations const fdtv_ca_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, & fdtv_ca_io_poll, & dvb_generic_ioctl,
    0, 0, & dvb_generic_open, 0, & dvb_generic_release, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0};
static struct dvb_device fdtv_ca =
     {{0, 0}, & fdtv_ca_fops, 0, 0, 0, 0U, 1, 1, 1, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                   {0, 0}}, & fdtv_ca_ioctl, 0};
int fdtv_ca_register(struct firedtv *fdtv )
{ struct firedtv_tuner_status stat ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = avc_tuner_status(fdtv, & stat);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  tmp___0 = fdtv_ca_ready(& stat);
  if (tmp___0 == 0) {
    return (-14);
  } else {
  }
  err = dvb_register_device(& fdtv->adapter, & fdtv->cadev, (struct dvb_device const *)(& fdtv_ca),
                            (void *)fdtv, 6);
  if ((unsigned int )*((unsigned char *)(& stat) + 19UL) == 0U) {
    dev_err((struct device const *)fdtv->device, "CaApplicationInfo is not set\n");
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& stat) + 19UL) != 0U) {
    avc_ca_get_time_date(fdtv, & fdtv->ca_time_interval);
  } else {
  }
  return (err);
}
}
void fdtv_ca_release(struct firedtv *fdtv )
{
  {
  if ((unsigned long )fdtv->cadev != (unsigned long )((struct dvb_device *)0)) {
    dvb_unregister_device(fdtv->cadev);
  } else {
  }
  return;
}
}
struct file *ldvarg7 ;
loff_t ldvarg3 ;
unsigned long ldvarg0 ;
struct file *fdtv_ca_fops_group2 ;
struct poll_table_struct *ldvarg5 ;
void *ldvarg8 ;
unsigned int ldvarg1 ;
struct inode *fdtv_ca_fops_group1 ;
int ldv_retval_0 ;
struct file *ldvarg4 ;
unsigned int ldvarg9 ;
int ldvarg2 ;
void ldv_main_exported_4(void)
{ int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    dvb_generic_release(fdtv_ca_fops_group1, fdtv_ca_fops_group2);
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_40508;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    fdtv_ca_io_poll(ldvarg4, ldvarg5);
    ldv_state_variable_4 = 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    fdtv_ca_io_poll(ldvarg4, ldvarg5);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_40508;
  case 2: ;
  if (ldv_state_variable_4 == 2) {
    noop_llseek(fdtv_ca_fops_group2, ldvarg3, ldvarg2);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_40508;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    ldv_retval_0 = dvb_generic_open(fdtv_ca_fops_group1, fdtv_ca_fops_group2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_40508;
  case 4: ;
  if (ldv_state_variable_4 == 2) {
    dvb_generic_ioctl(fdtv_ca_fops_group2, ldvarg1, ldvarg0);
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_40508;
  default: ;
  goto ldv_40508;
  }
  ldv_40508: ;
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
    fdtv_ca_ioctl(ldvarg7, ldvarg9, ldvarg8);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_40522;
  default: ;
  goto ldv_40522;
  }
  ldv_40522: ;
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_74(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void __clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int __test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ ("bts %2,%1\n\tsbb %0,%0": "=r" (oldbit), "+m" (*((long volatile *)addr)): "Ir" (nr));
  return (oldbit);
}
}
int ldv_mutex_trylock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_92(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_94(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_demux_mutex_of_firedtv(struct mutex *lock ) ;
void ldv_mutex_unlock_demux_mutex_of_firedtv(struct mutex *lock ) ;
extern int dvb_register_adapter(struct dvb_adapter * , char const * , struct module * ,
                                struct device * , short * ) ;
extern int dvb_unregister_adapter(struct dvb_adapter * ) ;
extern int dvb_dmxdev_init(struct dmxdev * , struct dvb_adapter * ) ;
extern void dvb_dmxdev_release(struct dmxdev * ) ;
extern int dvb_dmx_init(struct dvb_demux * ) ;
extern void dvb_dmx_release(struct dvb_demux * ) ;
extern int dvb_register_frontend(struct dvb_adapter * , struct dvb_frontend * ) ;
extern int dvb_unregister_frontend(struct dvb_frontend * ) ;
extern void dvb_net_release(struct dvb_net * ) ;
extern int dvb_net_init(struct dvb_adapter * , struct dvb_net * , struct dmx_demux * ) ;
int fdtv_start_feed(struct dvb_demux_feed *dvbdmxfeed ) ;
int fdtv_stop_feed(struct dvb_demux_feed *dvbdmxfeed ) ;
int fdtv_dvb_register(struct firedtv *fdtv , char const *name ) ;
void fdtv_dvb_unregister(struct firedtv *fdtv ) ;
void fdtv_frontend_init(struct firedtv *fdtv , char const *name ) ;
static int alloc_channel(struct firedtv *fdtv )
{ int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_40388;
  ldv_40387:
  tmp = __test_and_set_bit(i, (unsigned long volatile *)(& fdtv->channel_active));
  if (tmp == 0) {
    goto ldv_40386;
  } else {
  }
  i = i + 1;
  ldv_40388: ;
  if (i <= 15) {
    goto ldv_40387;
  } else {
    goto ldv_40386;
  }
  ldv_40386: ;
  return (i);
}
}
static void collect_channels(struct firedtv *fdtv , int *pidc , u16 *pid )
{ int i ;
  int n ;
  int tmp ;
  int tmp___0 ;
  {
  i = 0;
  n = 0;
  goto ldv_40397;
  ldv_40396:
  tmp___0 = variable_test_bit(i, (unsigned long const volatile *)(& fdtv->channel_active));
  if (tmp___0 != 0) {
    tmp = n;
    n = n + 1;
    *(pid + (unsigned long )tmp) = fdtv->channel_pid[i];
  } else {
  }
  i = i + 1;
  ldv_40397: ;
  if (i <= 15) {
    goto ldv_40396;
  } else {
    goto ldv_40398;
  }
  ldv_40398:
  *pidc = n;
  return;
}
}
__inline static void dealloc_channel(struct firedtv *fdtv , int i )
{
  {
  __clear_bit(i, (unsigned long volatile *)(& fdtv->channel_active));
  return;
}
}
int fdtv_start_feed(struct dvb_demux_feed *dvbdmxfeed )
{ struct firedtv *fdtv ;
  int pidc ;
  int c ;
  int ret ;
  u16 pids[16U] ;
  int tmp ;
  {
  fdtv = (struct firedtv *)(dvbdmxfeed->demux)->priv;
  switch (dvbdmxfeed->type) {
  case 0: ;
  case 1: ;
  goto ldv_40413;
  default:
  dev_err((struct device const *)fdtv->device, "can\'t start dmx feed: invalid type %u\n",
          dvbdmxfeed->type);
  return (-22);
  }
  ldv_40413:
  tmp = ldv_mutex_lock_interruptible_92(& fdtv->demux_mutex);
  if (tmp != 0) {
    return (-4);
  } else {
  }
  if (dvbdmxfeed->type == 0) {
    switch ((unsigned int )dvbdmxfeed->pes_type) {
    case 1: ;
    case 0: ;
    case 2: ;
    case 4: ;
    case 20:
    c = alloc_channel(fdtv);
    goto ldv_40420;
    default:
    dev_err((struct device const *)fdtv->device, "can\'t start dmx feed: invalid pes type %u\n",
            (unsigned int )dvbdmxfeed->pes_type);
    ret = -22;
    goto out;
    }
    ldv_40420: ;
  } else {
    c = alloc_channel(fdtv);
  }
  if (c > 15) {
    dev_err((struct device const *)fdtv->device, "can\'t start dmx feed: busy\n");
    ret = -16;
    goto out;
  } else {
  }
  dvbdmxfeed->priv = (void *)((unsigned long )c);
  fdtv->channel_pid[c] = dvbdmxfeed->pid;
  collect_channels(fdtv, & pidc, (u16 *)(& pids));
  if ((unsigned int )dvbdmxfeed->pid == 8192U) {
    ret = avc_tuner_get_ts(fdtv);
    if (ret != 0) {
      dealloc_channel(fdtv, c);
      dev_err((struct device const *)fdtv->device, "can\'t get TS\n");
      goto out;
    } else {
    }
  } else {
    ret = avc_tuner_set_pids(fdtv, (int )((unsigned char )pidc), (u16 *)(& pids));
    if (ret != 0) {
      dealloc_channel(fdtv, c);
      dev_err((struct device const *)fdtv->device, "can\'t set PIDs\n");
      goto out;
    } else {
    }
  }
  out:
  ldv_mutex_unlock_93(& fdtv->demux_mutex);
  return (ret);
}
}
int fdtv_stop_feed(struct dvb_demux_feed *dvbdmxfeed )
{ struct dvb_demux *demux ;
  struct firedtv *fdtv ;
  int pidc ;
  int c ;
  int ret ;
  u16 pids[16U] ;
  int tmp ;
  {
  demux = dvbdmxfeed->demux;
  fdtv = (struct firedtv *)demux->priv;
  if (dvbdmxfeed->type == 0 && ((dvbdmxfeed->ts_type & 1) == 0 || (unsigned int )(demux->dmx.frontend)->source == 0U)) {
    if ((dvbdmxfeed->ts_type & 4) != 0) {
      if ((unsigned int )dvbdmxfeed->pes_type > 19U || (unsigned long )demux->pesfilter[(unsigned int )dvbdmxfeed->pes_type] == (unsigned long )((struct dvb_demux_feed *)0)) {
        return (-22);
      } else {
      }
      demux->pids[(unsigned int )dvbdmxfeed->pes_type] = (u16 )((unsigned int )demux->pids[(unsigned int )dvbdmxfeed->pes_type] | 32768U);
      demux->pesfilter[(unsigned int )dvbdmxfeed->pes_type] = 0;
    } else {
    }
    if ((dvbdmxfeed->ts_type & 4) == 0 || (unsigned int )dvbdmxfeed->pes_type > 19U) {
      return (0);
    } else {
    }
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_94(& fdtv->demux_mutex);
  if (tmp != 0) {
    return (-4);
  } else {
  }
  c = (int )((long )dvbdmxfeed->priv);
  dealloc_channel(fdtv, c);
  collect_channels(fdtv, & pidc, (u16 *)(& pids));
  ret = avc_tuner_set_pids(fdtv, (int )((unsigned char )pidc), (u16 *)(& pids));
  ldv_mutex_unlock_95(& fdtv->demux_mutex);
  return (ret);
}
}
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
int fdtv_dvb_register(struct firedtv *fdtv , char const *name )
{ int err ;
  {
  err = dvb_register_adapter(& fdtv->adapter, name, & __this_module, fdtv->device,
                             (short *)(& adapter_nr));
  if (err < 0) {
    goto fail_log;
  } else {
  }
  fdtv->demux.dmx.capabilities = 0U;
  fdtv->demux.priv = (void *)fdtv;
  fdtv->demux.filternum = 16;
  fdtv->demux.feednum = 16;
  fdtv->demux.start_feed = & fdtv_start_feed;
  fdtv->demux.stop_feed = & fdtv_stop_feed;
  fdtv->demux.write_to_decoder = 0;
  err = dvb_dmx_init(& fdtv->demux);
  if (err != 0) {
    goto fail_unreg_adapter;
  } else {
  }
  fdtv->dmxdev.filternum = 16;
  fdtv->dmxdev.demux = & fdtv->demux.dmx;
  fdtv->dmxdev.capabilities = 0;
  err = dvb_dmxdev_init(& fdtv->dmxdev, & fdtv->adapter);
  if (err != 0) {
    goto fail_dmx_release;
  } else {
  }
  fdtv->frontend.source = 1;
  err = (*(fdtv->demux.dmx.add_frontend))(& fdtv->demux.dmx, & fdtv->frontend);
  if (err != 0) {
    goto fail_dmxdev_release;
  } else {
  }
  err = (*(fdtv->demux.dmx.connect_frontend))(& fdtv->demux.dmx, & fdtv->frontend);
  if (err != 0) {
    goto fail_rem_frontend;
  } else {
  }
  err = dvb_net_init(& fdtv->adapter, & fdtv->dvbnet, & fdtv->demux.dmx);
  if (err != 0) {
    goto fail_disconnect_frontend;
  } else {
  }
  fdtv_frontend_init(fdtv, name);
  err = dvb_register_frontend(& fdtv->adapter, & fdtv->fe);
  if (err != 0) {
    goto fail_net_release;
  } else {
  }
  err = fdtv_ca_register(fdtv);
  if (err != 0) {
    _dev_info((struct device const *)fdtv->device, "Conditional Access Module not enabled\n");
  } else {
  }
  return (0);
  fail_net_release:
  dvb_net_release(& fdtv->dvbnet);
  fail_disconnect_frontend:
  (*(fdtv->demux.dmx.close))(& fdtv->demux.dmx);
  fail_rem_frontend:
  (*(fdtv->demux.dmx.remove_frontend))(& fdtv->demux.dmx, & fdtv->frontend);
  fail_dmxdev_release:
  dvb_dmxdev_release(& fdtv->dmxdev);
  fail_dmx_release:
  dvb_dmx_release(& fdtv->demux);
  fail_unreg_adapter:
  dvb_unregister_adapter(& fdtv->adapter);
  fail_log:
  dev_err((struct device const *)fdtv->device, "DVB initialization failed\n");
  return (err);
}
}
void fdtv_dvb_unregister(struct firedtv *fdtv )
{
  {
  fdtv_ca_release(fdtv);
  dvb_unregister_frontend(& fdtv->fe);
  dvb_net_release(& fdtv->dvbnet);
  (*(fdtv->demux.dmx.close))(& fdtv->demux.dmx);
  (*(fdtv->demux.dmx.remove_frontend))(& fdtv->demux.dmx, & fdtv->frontend);
  dvb_dmxdev_release(& fdtv->dmxdev);
  dvb_dmx_release(& fdtv->demux);
  dvb_unregister_adapter(& fdtv->adapter);
  return;
}
}
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_88(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_92(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_demux_mutex_of_firedtv(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_demux_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_94(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_demux_mutex_of_firedtv(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_demux_mutex_of_firedtv(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern char *strcpy(char * , char const * ) ;
int ldv_mutex_trylock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
int fdtv_start_iso(struct firedtv *fdtv ) ;
void fdtv_stop_iso(struct firedtv *fdtv ) ;
static int fdtv_dvb_init(struct dvb_frontend *fe )
{ struct firedtv *fdtv ;
  int err ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  fdtv->isochannel = (char )fdtv->adapter.num;
  err = cmp_establish_pp_connection(fdtv, (int )fdtv->subunit, (int )fdtv->isochannel);
  if (err != 0) {
    dev_err((struct device const *)fdtv->device, "could not establish point to point connection\n");
    return (err);
  } else {
  }
  tmp = fdtv_start_iso(fdtv);
  return (tmp);
}
}
static int fdtv_sleep(struct dvb_frontend *fe )
{ struct firedtv *fdtv ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  fdtv_stop_iso(fdtv);
  cmp_break_pp_connection(fdtv, (int )fdtv->subunit, (int )fdtv->isochannel);
  fdtv->isochannel = -1;
  return (0);
}
}
static int fdtv_diseqc_send_master_cmd(struct dvb_frontend *fe , struct dvb_diseqc_master_cmd *cmd )
{ struct firedtv *fdtv ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_lnb_control(fdtv, -1, -1, -1, 1, cmd);
  return (tmp);
}
}
static int fdtv_diseqc_send_burst(struct dvb_frontend *fe , fe_sec_mini_cmd_t minicmd )
{
  {
  return (0);
}
}
static int fdtv_set_tone(struct dvb_frontend *fe , fe_sec_tone_mode_t tone )
{ struct firedtv *fdtv ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  fdtv->tone = tone;
  return (0);
}
}
static int fdtv_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{ struct firedtv *fdtv ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  fdtv->voltage = voltage;
  return (0);
}
}
static int fdtv_read_status(struct dvb_frontend *fe , fe_status_t *status )
{ struct firedtv *fdtv ;
  struct firedtv_tuner_status stat ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_tuner_status(fdtv, & stat);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& stat) + 1UL) != 0U) {
    *status = 0;
  } else {
    *status = 31;
  }
  return (0);
}
}
static int fdtv_read_ber(struct dvb_frontend *fe , u32 *ber )
{ struct firedtv *fdtv ;
  struct firedtv_tuner_status stat ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_tuner_status(fdtv, & stat);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  *ber = stat.ber;
  return (0);
}
}
static int fdtv_read_signal_strength(struct dvb_frontend *fe , u16 *strength )
{ struct firedtv *fdtv ;
  struct firedtv_tuner_status stat ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_tuner_status(fdtv, & stat);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  *strength = (int )((u16 )stat.signal_strength) << 8U;
  return (0);
}
}
static int fdtv_read_snr(struct dvb_frontend *fe , u16 *snr )
{ struct firedtv *fdtv ;
  struct firedtv_tuner_status stat ;
  int tmp ;
  {
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_tuner_status(fdtv, & stat);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  *snr = (unsigned int )stat.carrier_noise_ratio * 257U;
  return (0);
}
}
static int fdtv_read_uncorrected_blocks(struct dvb_frontend *fe , u32 *ucblocks )
{
  {
  return (-95);
}
}
static int fdtv_set_frontend(struct dvb_frontend *fe )
{ struct dtv_frontend_properties *p ;
  struct firedtv *fdtv ;
  int tmp ;
  {
  p = & fe->dtv_property_cache;
  fdtv = (struct firedtv *)fe->sec_priv;
  tmp = avc_tuner_dsd(fdtv, p);
  return (tmp);
}
}
void fdtv_frontend_init(struct firedtv *fdtv , char const *name )
{ struct dvb_frontend_ops *ops ;
  struct dvb_frontend_info *fi ;
  {
  ops = & fdtv->fe.ops;
  fi = & ops->info;
  ops->init = & fdtv_dvb_init;
  ops->sleep = & fdtv_sleep;
  ops->set_frontend = & fdtv_set_frontend;
  ops->read_status = & fdtv_read_status;
  ops->read_ber = & fdtv_read_ber;
  ops->read_signal_strength = & fdtv_read_signal_strength;
  ops->read_snr = & fdtv_read_snr;
  ops->read_ucblocks = & fdtv_read_uncorrected_blocks;
  ops->diseqc_send_master_cmd = & fdtv_diseqc_send_master_cmd;
  ops->diseqc_send_burst = & fdtv_diseqc_send_burst;
  ops->set_tone = & fdtv_set_tone;
  ops->set_voltage = & fdtv_set_voltage;
  switch ((unsigned int )fdtv->type) {
  case 1:
  ops->delsys[0] = 5U;
  fi->frequency_min = 950000U;
  fi->frequency_max = 2150000U;
  fi->frequency_stepsize = 125U;
  fi->symbol_rate_min = 1000000U;
  fi->symbol_rate_max = 40000000U;
  fi->caps = 1711;
  goto ldv_40434;
  case 4:
  ops->delsys[0] = 5U;
  ops->delsys[1] = 6U;
  fi->frequency_min = 950000U;
  fi->frequency_max = 2150000U;
  fi->frequency_stepsize = 125U;
  fi->symbol_rate_min = 1000000U;
  fi->symbol_rate_max = 40000000U;
  fi->caps = 268437167;
  goto ldv_40434;
  case 2:
  ops->delsys[0] = 1U;
  fi->frequency_min = 47000000U;
  fi->frequency_max = 866000000U;
  fi->frequency_stepsize = 62500U;
  fi->symbol_rate_min = 870000U;
  fi->symbol_rate_max = 6900000U;
  fi->caps = 129025;
  goto ldv_40434;
  case 3:
  ops->delsys[0] = 3U;
  fi->frequency_min = 49000000U;
  fi->frequency_max = 861000000U;
  fi->frequency_stepsize = 62500U;
  fi->caps = 1703941;
  goto ldv_40434;
  default:
  dev_err((struct device const *)fdtv->device, "no frontend for model type %d\n",
          (unsigned int )fdtv->type);
  }
  ldv_40434:
  strcpy((char *)(& fi->name), name);
  fdtv->fe.dvb = & fdtv->adapter;
  fdtv->fe.sec_priv = (void *)fdtv;
  return;
}
}
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_110(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static __u32 __swab32p(__u32 const *p )
{ __u32 tmp ;
  {
  tmp = __fswab32(*p);
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
extern void list_del(struct list_head * ) ;
extern size_t strlen(char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_124(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_4 ;
int ref_cnt ;
int ldv_state_variable_0 ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
extern int fw_csr_string(u32 const * , int , char * , size_t ) ;
extern struct bus_type fw_bus_type ;
__inline static struct fw_device *fw_device(struct device *dev )
{ struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  return ((struct fw_device *)__mptr + 0xffffffffffffffd8UL);
}
}
__inline static struct fw_unit *fw_unit(struct device *dev )
{ struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  return ((struct fw_unit *)__mptr);
}
}
extern int fw_core_add_address_handler(struct fw_address_handler * , struct fw_address_region const * ) ;
extern void fw_core_remove_address_handler(struct fw_address_handler * ) ;
extern int fw_run_transaction(struct fw_card * , int , int , int , int , unsigned long long ,
                              void * , size_t ) ;
extern int fw_iso_buffer_init(struct fw_iso_buffer * , struct fw_card * , int , enum dma_data_direction ) ;
extern void fw_iso_buffer_destroy(struct fw_iso_buffer * , struct fw_card * ) ;
extern struct fw_iso_context *fw_iso_context_create(struct fw_card * , int , int ,
                                                    int , size_t , void (*)(struct fw_iso_context * ,
                                                                              u32 ,
                                                                              size_t ,
                                                                              void * ,
                                                                              void * ) ,
                                                    void * ) ;
extern int fw_iso_context_queue(struct fw_iso_context * , struct fw_iso_packet * ,
                                struct fw_iso_buffer * , unsigned long ) ;
extern void fw_iso_context_queue_flush(struct fw_iso_context * ) ;
extern int fw_iso_context_start(struct fw_iso_context * , int , int , int ) ;
extern int fw_iso_context_stop(struct fw_iso_context * ) ;
extern void fw_iso_context_destroy(struct fw_iso_context * ) ;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern void dvb_dmx_swfilter_packets(struct dvb_demux * , u8 const * , size_t ) ;
int fdtv_register_rc(struct firedtv *fdtv , struct device *dev ) ;
void fdtv_unregister_rc(struct firedtv *fdtv ) ;
static struct list_head node_list = {& node_list, & node_list};
static spinlock_t node_list_lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "node_list_lock",
                                                               0, 0UL}}}};
__inline static struct fw_device *device_of(struct firedtv *fdtv )
{ struct fw_device *tmp ;
  {
  tmp = fw_device((fdtv->device)->parent);
  return (tmp);
}
}
static int node_req(struct firedtv *fdtv , u64 addr , void *data , size_t len , int tcode )
{ struct fw_device *device ;
  struct fw_device *tmp ;
  int rcode ;
  int generation ;
  int tmp___0 ;
  {
  tmp = device_of(fdtv);
  device = tmp;
  generation = device->generation;
  __asm__ volatile ("": : : "memory");
  rcode = fw_run_transaction(device->card, tcode, device->node_id, generation, (int )device->max_speed,
                             addr, data, len);
  if (rcode != 0) {
    tmp___0 = -5;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
int fdtv_lock(struct firedtv *fdtv , u64 addr , void *data )
{ int tmp ;
  {
  tmp = node_req(fdtv, addr, data, 8UL, 18);
  return (tmp);
}
}
int fdtv_read(struct firedtv *fdtv , u64 addr , void *data )
{ int tmp ;
  {
  tmp = node_req(fdtv, addr, data, 4UL, 4);
  return (tmp);
}
}
int fdtv_write(struct firedtv *fdtv , u64 addr , void *data , size_t len )
{ int tmp ;
  {
  tmp = node_req(fdtv, addr, data, len, 1);
  return (tmp);
}
}
static int queue_iso(struct fdtv_ir_context *ctx , int index )
{ struct fw_iso_packet p ;
  int tmp ;
  {
  p.payload_length = 1024U;
  ctx->interrupt_packet = ctx->interrupt_packet + 1;
  p.interrupt = (ctx->interrupt_packet & 15) == 0;
  p.skip = 0U;
  p.header_length = 4U;
  tmp = fw_iso_context_queue(ctx->context, & p, & ctx->buffer, (unsigned long )(index * 1024));
  return (tmp);
}
}
static void handle_iso(struct fw_iso_context *context , u32 cycle , size_t header_length ,
                       void *header , void *data )
{ struct firedtv *fdtv ;
  struct fdtv_ir_context *ctx ;
  __be32 *h ;
  __be32 *h_end ;
  int length ;
  int err ;
  int i ;
  char *p ;
  char *p_end ;
  __u32 tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  fdtv = (struct firedtv *)data;
  ctx = fdtv->ir_context;
  i = ctx->current_packet;
  h = (__be32 *)header;
  h_end = h + header_length / 4UL;
  goto ldv_40748;
  ldv_40747:
  tmp = __be32_to_cpup((__be32 const *)h);
  length = (int )(tmp >> 16);
  tmp___0 = ldv__builtin_expect(length > 1024, 0L);
  if (tmp___0 != 0L) {
    dev_err((struct device const *)fdtv->device, "length = %d\n", length);
    length = 1024;
  } else {
  }
  p = ctx->pages[(unsigned long )i / 4UL] + ((unsigned long )i & 3UL) * 1024UL;
  p_end = p + (unsigned long )length;
  p = p + 12UL;
  goto ldv_40745;
  ldv_40744:
  dvb_dmx_swfilter_packets(& fdtv->demux, (u8 const *)p, 1UL);
  p = p + 192UL;
  ldv_40745: ;
  if ((unsigned long )p < (unsigned long )p_end) {
    goto ldv_40744;
  } else {
    goto ldv_40746;
  }
  ldv_40746:
  err = queue_iso(ctx, i);
  tmp___1 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___1 != 0L) {
    dev_err((struct device const *)fdtv->device, "requeue failed\n");
  } else {
  }
  i = (i + 1) & 63;
  h = h + 1;
  ldv_40748: ;
  if ((unsigned long )h < (unsigned long )h_end) {
    goto ldv_40747;
  } else {
    goto ldv_40749;
  }
  ldv_40749:
  fw_iso_context_queue_flush(ctx->context);
  ctx->current_packet = i;
  return;
}
}
int fdtv_start_iso(struct firedtv *fdtv )
{ struct fdtv_ir_context *ctx ;
  struct fw_device *device ;
  struct fw_device *tmp ;
  int i ;
  int err ;
  void *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  {
  tmp = device_of(fdtv);
  device = tmp;
  tmp___0 = kmalloc(168UL, 208U);
  ctx = (struct fdtv_ir_context *)tmp___0;
  if ((unsigned long )ctx == (unsigned long )((struct fdtv_ir_context *)0)) {
    return (-12);
  } else {
  }
  ctx->context = fw_iso_context_create(device->card, 1, (int )fdtv->isochannel, (int )device->max_speed,
                                       4UL, & handle_iso, (void *)fdtv);
  tmp___2 = IS_ERR((void const *)ctx->context);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)ctx->context);
    err = (int )tmp___1;
    goto fail_free;
  } else {
  }
  err = fw_iso_buffer_init(& ctx->buffer, device->card, 16, 2);
  if (err != 0) {
    goto fail_context_destroy;
  } else {
  }
  ctx->interrupt_packet = 0;
  ctx->current_packet = 0;
  i = 0;
  goto ldv_40760;
  ldv_40759:
  tmp___3 = lowmem_page_address((struct page const *)*(ctx->buffer.pages + (unsigned long )i));
  ctx->pages[i] = (char *)tmp___3;
  i = i + 1;
  ldv_40760: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_40759;
  } else {
    goto ldv_40761;
  }
  ldv_40761:
  i = 0;
  goto ldv_40764;
  ldv_40763:
  err = queue_iso(ctx, i);
  if (err != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_40764: ;
  if (i <= 63) {
    goto ldv_40763;
  } else {
    goto ldv_40765;
  }
  ldv_40765:
  err = fw_iso_context_start(ctx->context, -1, 0, 15);
  if (err != 0) {
    goto fail;
  } else {
  }
  fdtv->ir_context = ctx;
  return (0);
  fail:
  fw_iso_buffer_destroy(& ctx->buffer, device->card);
  fail_context_destroy:
  fw_iso_context_destroy(ctx->context);
  fail_free:
  kfree((void const *)ctx);
  return (err);
}
}
void fdtv_stop_iso(struct firedtv *fdtv )
{ struct fdtv_ir_context *ctx ;
  struct fw_device *tmp ;
  {
  ctx = fdtv->ir_context;
  fw_iso_context_stop(ctx->context);
  tmp = device_of(fdtv);
  fw_iso_buffer_destroy(& ctx->buffer, tmp->card);
  fw_iso_context_destroy(ctx->context);
  kfree((void const *)ctx);
  return;
}
}
static void handle_fcp(struct fw_card *card , struct fw_request *request , int tcode ,
                       int destination , int source , int generation , unsigned long long offset ,
                       void *payload , size_t length , void *callback_data )
{ struct firedtv *f ;
  struct firedtv *fdtv ;
  struct fw_device *device ;
  unsigned long flags ;
  int su ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fdtv = 0;
  if (length <= 1UL || ((int )*((u8 *)payload) & 240) != 0) {
    return;
  } else {
  }
  su = (int )*((u8 *)payload + 1UL) & 7;
  tmp = spinlock_check(& node_list_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)node_list.next;
  f = (struct firedtv *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_40797;
  ldv_40796:
  device = device_of(f);
  if (device->generation != generation) {
    goto ldv_40794;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  if (((unsigned long )device->card == (unsigned long )card && device->node_id == source) && ((int )f->subunit == su || ((int )((signed char )f->subunit) == 0 && su == 7))) {
    fdtv = f;
    goto ldv_40795;
  } else {
  }
  ldv_40794:
  __mptr___0 = (struct list_head const *)f->list.next;
  f = (struct firedtv *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_40797: ;
  if ((unsigned long )(& f->list) != (unsigned long )(& node_list)) {
    goto ldv_40796;
  } else {
    goto ldv_40795;
  }
  ldv_40795:
  spin_unlock_irqrestore(& node_list_lock, flags);
  if ((unsigned long )fdtv != (unsigned long )((struct firedtv *)0)) {
    avc_recv(fdtv, payload, length);
  } else {
  }
  return;
}
}
static struct fw_address_handler fcp_handler = {0ULL, 512ULL, & handle_fcp, 0, {0, 0}};
static struct fw_address_region const fcp_region = {281474708278528ULL, 281474708279040ULL};
static char const * const model_names[5U] = { "unknown type", "FireDTV S/CI", "FireDTV C/CI", "FireDTV T/CI",
        "FireDTV S2  "};
static int node_probe(struct device *dev )
{ struct firedtv *fdtv ;
  char name[13U] ;
  int name_len ;
  int i ;
  int err ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct fw_unit *tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  {
  tmp = kzalloc(4016UL, 208U);
  fdtv = (struct firedtv *)tmp;
  if ((unsigned long )fdtv == (unsigned long )((struct firedtv *)0)) {
    return (-12);
  } else {
  }
  dev_set_drvdata(dev, (void *)fdtv);
  fdtv->device = dev;
  fdtv->isochannel = -1;
  fdtv->voltage = 255;
  fdtv->tone = 255;
  __mutex_init(& fdtv->avc_mutex, "&fdtv->avc_mutex", & __key);
  __init_waitqueue_head(& fdtv->avc_wait, "&fdtv->avc_wait", & __key___0);
  __mutex_init(& fdtv->demux_mutex, "&fdtv->demux_mutex", & __key___1);
  __init_work(& fdtv->remote_ctrl_work, 0);
  __constr_expr_0.counter = 4195328L;
  fdtv->remote_ctrl_work.data = __constr_expr_0;
  lockdep_init_map(& fdtv->remote_ctrl_work.lockdep_map, "(&fdtv->remote_ctrl_work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& fdtv->remote_ctrl_work.entry);
  fdtv->remote_ctrl_work.func = & avc_remote_ctrl_work;
  tmp___0 = fw_unit(dev);
  name_len = fw_csr_string(tmp___0->directory, 23, (char *)(& name), 13UL);
  i = 5;
  goto ldv_40818;
  ldv_40817:
  tmp___1 = strlen(model_names[i]);
  if (tmp___1 <= (size_t )name_len) {
    tmp___2 = strncmp((char const *)(& name), model_names[i], (__kernel_size_t )name_len);
    if (tmp___2 == 0) {
      goto ldv_40816;
    } else {
    }
  } else {
  }
  ldv_40818:
  i = i - 1;
  if (i != 0) {
    goto ldv_40817;
  } else {
    goto ldv_40816;
  }
  ldv_40816:
  fdtv->type = (enum model_type )i;
  err = fdtv_register_rc(fdtv, dev);
  if (err != 0) {
    goto fail_free;
  } else {
  }
  spin_lock_irq(& node_list_lock);
  list_add_tail(& fdtv->list, & node_list);
  spin_unlock_irq(& node_list_lock);
  err = avc_identify_subunit(fdtv);
  if (err != 0) {
    goto fail;
  } else {
  }
  err = fdtv_dvb_register(fdtv, model_names[(unsigned int )fdtv->type]);
  if (err != 0) {
    goto fail;
  } else {
  }
  avc_register_remote_control(fdtv);
  return (0);
  fail:
  spin_lock_irq(& node_list_lock);
  list_del(& fdtv->list);
  spin_unlock_irq(& node_list_lock);
  fdtv_unregister_rc(fdtv);
  fail_free:
  kfree((void const *)fdtv);
  return (err);
}
}
static int node_remove(struct device *dev )
{ struct firedtv *fdtv ;
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  fdtv = (struct firedtv *)tmp;
  fdtv_dvb_unregister(fdtv);
  spin_lock_irq(& node_list_lock);
  list_del(& fdtv->list);
  spin_unlock_irq(& node_list_lock);
  fdtv_unregister_rc(fdtv);
  kfree((void const *)fdtv);
  return (0);
}
}
static void node_update(struct fw_unit *unit )
{ struct firedtv *fdtv ;
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& unit->device));
  fdtv = (struct firedtv *)tmp;
  if ((int )((signed char )fdtv->isochannel) >= 0) {
    cmp_establish_pp_connection(fdtv, (int )fdtv->subunit, (int )fdtv->isochannel);
  } else {
  }
  return;
}
}
static struct ieee1394_device_id const fdtv_id_table[7U] = { {15U, 4743U, 36U, 41005U, 65537U, 0UL},
        {15U, 4743U, 37U, 41005U, 65537U, 0UL},
        {15U, 4743U, 38U, 41005U, 65537U, 0UL},
        {15U, 4743U, 52U, 41005U, 65537U, 0UL},
        {15U, 4743U, 53U, 41005U, 65537U, 0UL},
        {15U, 4743U, 54U, 41005U, 65537U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0UL}};
struct ieee1394_device_id const __mod_ieee1394_device_table ;
static struct fw_driver fdtv_driver = {{"firedtv", & fw_bus_type, & __this_module, 0, (_Bool)0, 0, 0, & node_probe, & node_remove,
     0, 0, 0, 0, 0, 0}, & node_update, (struct ieee1394_device_id const *)(& fdtv_id_table)};
static int fdtv_init(void)
{ int ret ;
  {
  ret = fw_core_add_address_handler(& fcp_handler, & fcp_region);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = driver_register(& fdtv_driver.driver);
  if (ret < 0) {
    fw_core_remove_address_handler(& fcp_handler);
  } else {
  }
  return (ret);
}
}
static void fdtv_exit(void)
{
  {
  driver_unregister(& fdtv_driver.driver);
  fw_core_remove_address_handler(& fcp_handler);
  return;
}
}
void *ldvarg18 ;
int ldvarg11 ;
unsigned long long ldvarg12 ;
int ldv_retval_2 ;
struct fw_card *ldvarg16 ;
void *ldvarg15 ;
struct fw_unit *ldvarg6 ;
struct device *fdtv_driver_group0 ;
int ldvarg17 ;
struct fw_request *ldvarg14 ;
void ldv_initialize(void) ;
int ldv_retval_1 ;
size_t ldvarg13 ;
void ldv_check_final_state(void) ;
int ldvarg10 ;
int ldvarg19 ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_initialize();
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_40904:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_40885;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      node_update(ldvarg6);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      node_update(ldvarg6);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_40888;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_1 = node_probe(fdtv_driver_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_40888;
    case 2: ;
    if (ldv_state_variable_1 == 2) {
      node_remove(fdtv_driver_group0);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40888;
    default: ;
    goto ldv_40888;
    }
    ldv_40888: ;
  } else {
  }
  goto ldv_40885;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      fdtv_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_40895;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = fdtv_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_2 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
      } else {
      }
    } else {
    }
    goto ldv_40895;
    default: ;
    goto ldv_40895;
    }
    ldv_40895: ;
  } else {
  }
  goto ldv_40885;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_40885;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      handle_fcp(ldvarg16, ldvarg14, ldvarg11, ldvarg17, ldvarg19, ldvarg10, ldvarg12,
                 ldvarg15, ldvarg13, ldvarg18);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_40901;
    default: ;
    goto ldv_40901;
    }
    ldv_40901: ;
  } else {
  }
  goto ldv_40885;
  default: ;
  goto ldv_40885;
  }
  ldv_40885: ;
  goto ldv_40904;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_124(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
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
extern void *kmemdup(void const * , size_t , gfp_t ) ;
int ldv_mutex_trylock_138(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_135(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_137(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
struct input_dev *input_allocate_device(void) {
       return kzalloc(sizeof(struct input_dev), 0x10u | 0x40u | 0x80u);
}
extern void input_free_device(struct input_dev * ) ;
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  input_event(dev, 1U, code, value != 0);
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
static u16 const oldtable[34U] =
  { 1U, 67U, 2U, 3U,
        4U, 5U, 6U, 7U,
        8U, 9U, 10U, 23U,
        11U, 28U, 398U, 103U,
        399U, 68U, 57U, 87U,
        400U, 108U, 401U, 44U,
        25U, 109U, 105U, 17U,
        106U, 25U, 50U, 19U,
        47U, 46U};
static u16 const keytable[53U] =
  { 116U, 142U, 128U, 352U,
        106U, 2U, 3U, 4U,
        105U, 5U, 6U, 7U,
        103U, 8U, 9U, 10U,
        108U, 369U, 11U, 190U,
        375U, 113U, 370U, 167U,
        388U, 392U, 398U, 412U,
        168U, 164U, 407U, 115U,
        402U, 191U, 377U, 389U,
        379U, 390U, 399U, 400U,
        401U, 363U, 360U, 114U,
        403U, 405U, 358U, 159U,
        395U, 364U, 139U, 365U,
        174U};
int fdtv_register_rc(struct firedtv *fdtv , struct device *dev )
{ struct input_dev *idev ;
  int i ;
  int err ;
  {
  idev = input_allocate_device();
  if ((unsigned long )idev == (unsigned long )((struct input_dev *)0)) {
    return (-12);
  } else {
  }
  fdtv->remote_ctrl_dev = idev;
  idev->name = "FireDTV remote control";
  idev->dev.parent = dev;
  idev->evbit[0] = 2UL;
  idev->keycode = kmemdup((void const *)(& keytable), 106UL, 208U);
  if ((unsigned long )idev->keycode == (unsigned long )((void *)0)) {
    err = -12;
    goto fail;
  } else {
  }
  idev->keycodesize = 2U;
  idev->keycodemax = 53U;
  i = 0;
  goto ldv_40790;
  ldv_40789:
  set_bit((unsigned int )keytable[i], (unsigned long volatile *)(& idev->keybit));
  i = i + 1;
  ldv_40790: ;
  if ((unsigned int )i <= 52U) {
    goto ldv_40789;
  } else {
    goto ldv_40791;
  }
  ldv_40791:
  err = input_register_device(idev);
  if (err != 0) {
    goto fail_free_keymap;
  } else {
  }
  return (0);
  fail_free_keymap:
  kfree((void const *)idev->keycode);
  fail:
  input_free_device(idev);
  return (err);
}
}
void fdtv_unregister_rc(struct firedtv *fdtv )
{
  {
  cancel_work_sync(& fdtv->remote_ctrl_work);
  kfree((void const *)(fdtv->remote_ctrl_dev)->keycode);
  input_unregister_device(fdtv->remote_ctrl_dev);
  return;
}
}
void fdtv_handle_rc(struct firedtv *fdtv , unsigned int code )
{ struct input_dev *idev ;
  u16 *keycode ;
  {
  idev = fdtv->remote_ctrl_dev;
  keycode = (u16 *)idev->keycode;
  if (code > 767U && code <= 799U) {
    code = (unsigned int )*(keycode + (unsigned long )(code - 768U));
  } else
  if (code > 831U && code <= 852U) {
    code = (unsigned int )*(keycode + (unsigned long )(code - 800U));
  } else
  if (code > 17664U && code <= 17695U) {
    code = (unsigned int )oldtable[code - 17665U];
  } else
  if (code > 17727U && code <= 17730U) {
    code = (unsigned int )oldtable[code - 17697U];
  } else {
    printk("\017firedtv: invalid key code 0x%04x from remote control\n", code);
    return;
  }
  input_report_key(idev, code, 1);
  input_sync(idev);
  input_report_key(idev, code, 0);
  input_sync(idev);
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
void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
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
static int ldv_mutex_avc_mutex_of_firedtv ;
int ldv_mutex_lock_interruptible_avc_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_avc_mutex_of_firedtv = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_avc_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_avc_mutex_of_firedtv = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_avc_mutex_of_firedtv(struct mutex *lock )
{
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_avc_mutex_of_firedtv = 2;
  return;
}
}
int ldv_mutex_trylock_avc_mutex_of_firedtv(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_avc_mutex_of_firedtv = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_avc_mutex_of_firedtv(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_avc_mutex_of_firedtv = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_avc_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
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
void ldv_mutex_unlock_avc_mutex_of_firedtv(struct mutex *lock )
{
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_avc_mutex_of_firedtv = 1;
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
static int ldv_mutex_demux_mutex_of_firedtv ;
int ldv_mutex_lock_interruptible_demux_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_demux_mutex_of_firedtv = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_demux_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_demux_mutex_of_firedtv = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_demux_mutex_of_firedtv(struct mutex *lock )
{
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_demux_mutex_of_firedtv = 2;
  return;
}
}
int ldv_mutex_trylock_demux_mutex_of_firedtv(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_demux_mutex_of_firedtv = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_demux_mutex_of_firedtv(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_demux_mutex_of_firedtv = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_demux_mutex_of_firedtv(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
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
void ldv_mutex_unlock_demux_mutex_of_firedtv(struct mutex *lock )
{
  {
  if (ldv_mutex_demux_mutex_of_firedtv == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_demux_mutex_of_firedtv = 1;
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
void ldv_initialize(void)
{
  {
  ldv_mutex_avc_mutex_of_firedtv = 1;
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_demux_mutex_of_firedtv = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_avc_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_demux_mutex_of_firedtv == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  return;
}
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
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_be(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
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
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_dmx_init(struct dvb_demux *arg0) {
  return __VERIFIER_nondet_int();
}
void dvb_dmx_release(struct dvb_demux *arg0) {
  return;
}
void dvb_dmx_swfilter_packets(struct dvb_demux *arg0, const u8 *arg1, size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_dmxdev_init(struct dmxdev *arg0, struct dvb_adapter *arg1) {
  return __VERIFIER_nondet_int();
}
void dvb_dmxdev_release(struct dmxdev *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int dvb_generic_ioctl(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int dvb_generic_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_generic_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_net_init(struct dvb_adapter *arg0, struct dvb_net *arg1, struct dmx_demux *arg2) {
  return __VERIFIER_nondet_int();
}
void dvb_net_release(struct dvb_net *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_register_adapter(struct dvb_adapter *arg0, const char *arg1, struct module *arg2, struct device *arg3, short *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_register_device(struct dvb_adapter *arg0, struct dvb_device **arg1, const struct dvb_device *arg2, void *arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_register_frontend(struct dvb_adapter *arg0, struct dvb_frontend *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_adapter(struct dvb_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void dvb_unregister_device(struct dvb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int fw_core_add_address_handler(struct fw_address_handler *arg0, const struct fw_address_region *arg1) {
  return __VERIFIER_nondet_int();
}
void fw_core_remove_address_handler(struct fw_address_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int fw_csr_string(const u32 *arg0, int arg1, char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void fw_iso_buffer_destroy(struct fw_iso_buffer *arg0, struct fw_card *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int fw_iso_buffer_init(struct fw_iso_buffer *arg0, struct fw_card *arg1, int arg2, enum dma_data_direction arg3) {
  return __VERIFIER_nondet_int();
}
struct fw_iso_context *fw_iso_context_create(struct fw_card *arg0, int arg1, int arg2, int arg3, size_t arg4, void (*arg5)(struct fw_iso_context *, u32 , size_t , void *, void *), void *arg6) {
  return ldv_malloc(sizeof(struct fw_iso_context));
}
void fw_iso_context_destroy(struct fw_iso_context *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int fw_iso_context_queue(struct fw_iso_context *arg0, struct fw_iso_packet *arg1, struct fw_iso_buffer *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_int();
}
void fw_iso_context_queue_flush(struct fw_iso_context *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int fw_iso_context_start(struct fw_iso_context *arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fw_iso_context_stop(struct fw_iso_context *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fw_run_transaction(struct fw_card *arg0, int arg1, int arg2, int arg3, int arg4, unsigned long long arg5, void *arg6, size_t arg7) {
  return __VERIFIER_nondet_int();
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_free_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_unregister_device(struct input_dev *arg0) {
  return;
}
void *kmemdup(const void *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
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
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
