struct device;
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
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
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
struct mutex;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_17 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_16 {
   s64 lock ;
   struct __anonstruct____missing_field_name_17 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_16 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct lockdep_map;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
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
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
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
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned char fpu_counter ;
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
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
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
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
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
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
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
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
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
};
struct kref {
   atomic_t refcount ;
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
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
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
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
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
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
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
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
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
   unsigned int memalloc_noio : 1 ;
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
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_108 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_108 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
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
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct dev_pin_info *pins ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
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
union __anonunion____missing_field_name_136 {
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
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_136 __annonCompField33 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
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
   struct msi_chip *msi ;
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
   unsigned int is_added : 1 ;
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
struct __anonstruct____missing_field_name_139 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_140 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   struct __anonstruct____missing_field_name_140 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_141 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_143 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_147 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_146 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_145 {
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_144 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_145 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField39 ;
   union __anonunion____missing_field_name_144 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_149 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_148 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_149 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_150 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_141 __annonCompField38 ;
   struct __anonstruct____missing_field_name_142 __annonCompField44 ;
   union __anonunion____missing_field_name_148 __annonCompField46 ;
   union __anonunion____missing_field_name_150 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_152 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_151 {
   struct __anonstruct_linear_152 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
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
   union __anonunion_shared_151 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
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
struct __anonstruct____missing_field_name_154 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_155 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField48 ;
   struct __anonstruct____missing_field_name_155 __annonCompField49 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_153 __annonCompField50 ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_157 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_156 {
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
};
struct lockref {
   union __anonunion____missing_field_name_156 __annonCompField52 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_159 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_158 {
   struct __anonstruct____missing_field_name_159 __annonCompField53 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_158 __annonCompField54 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_160 {
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_160 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_162 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_162 kprojid_t;
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
union __anonunion____missing_field_name_163 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_163 __annonCompField55 ;
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
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
union __anonunion_arg_165 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_164 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_165 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_164 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
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
union __anonunion____missing_field_name_166 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_167 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_168 {
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
   union __anonunion____missing_field_name_166 __annonCompField56 ;
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
   union __anonunion____missing_field_name_167 __annonCompField57 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_168 __annonCompField58 ;
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
union __anonunion_f_u_169 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_169 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
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
struct __anonstruct_afs_171 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_170 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_171 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_170 fl_u ;
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
   struct list_head s_mounts ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
struct __anonstruct____missing_field_name_175 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_174 {
   struct __anonstruct____missing_field_name_175 __annonCompField60 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_174 __annonCompField61 ;
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
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_180 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_180 __annonCompField62 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_181 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_181 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_184 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_186 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_187 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_182 {
   int _pad[28U] ;
   struct __anonstruct__kill_183 _kill ;
   struct __anonstruct__timer_184 _timer ;
   struct __anonstruct__rt_185 _rt ;
   struct __anonstruct__sigchld_186 _sigchld ;
   struct __anonstruct__sigfault_187 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_182 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
   struct hrtimer_clock_base clock_base[4U] ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_192 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_193 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_195 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_194 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_195 __annonCompField65 ;
};
union __anonunion_type_data_196 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_198 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_197 {
   union __anonunion_payload_198 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_192 __annonCompField63 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_193 __annonCompField64 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_194 __annonCompField66 ;
   union __anonunion_type_data_196 type_data ;
   union __anonunion____missing_field_name_197 __annonCompField67 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
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
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
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
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   int posix_timer_id ;
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
   unsigned int audit_tty_log_passwd ;
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
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
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
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
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
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_200 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_200 __annonCompField69 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_201 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_201 __annonCompField70 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_202 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_202 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_203 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_203 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_204 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_204 __annonCompField71 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_205 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_205 __annonCompField72 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_206 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_206 __annonCompField73 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_207 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_207 __annonCompField74 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_209 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_208 {
   struct __anonstruct_raw_209 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_208 __annonCompField75 ;
};
struct __anonstruct_stop_211 {
   __u64 pts ;
};
struct __anonstruct_start_212 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_213 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_210 {
   struct __anonstruct_stop_211 stop ;
   struct __anonstruct_start_212 start ;
   struct __anonstruct_raw_213 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_210 __annonCompField76 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_215 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_215 fmt ;
};
union __anonunion_parm_216 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_216 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_219 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_219 __annonCompField79 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct sk_buff;
typedef s32 dma_cookie_t;
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
struct __anonstruct____missing_field_name_224 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_223 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_224 __annonCompField81 ;
};
union __anonunion____missing_field_name_225 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_226 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
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
   union __anonunion____missing_field_name_223 __annonCompField82 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_225 __annonCompField83 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_226 __annonCompField84 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
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
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
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
enum ldv_26490 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_26490 dmx_output_t;
typedef int dmx_input_t;
enum dmx_ts_pes {
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
typedef enum dmx_ts_pes dmx_pes_type_t;
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
typedef int dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
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
union __anonunion_filter_228 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_229 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_230 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_228 filter ;
   union __anonunion_feed_229 feed ;
   union __anonunion_params_230 params ;
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
   unsigned int exit : 1 ;
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
union __anonunion_feed_231 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_232 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_231 feed ;
   union __anonunion_cb_232 cb ;
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
union __anonunion_data_233 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_233 data ;
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
struct __anonstruct_sync_serial_settings_234 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_234 sync_serial_settings;
struct __anonstruct_te1_settings_235 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_235 te1_settings;
struct __anonstruct_raw_hdlc_proto_236 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_236 raw_hdlc_proto;
struct __anonstruct_fr_proto_237 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_237 fr_proto;
struct __anonstruct_fr_proto_pvc_238 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_238 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_239 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_239 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_240 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_240 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_241 {
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
   union __anonunion_ifs_ifsu_241 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_242 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_243 {
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
   union __anonunion_ifr_ifrn_242 ifr_ifrn ;
   union __anonunion_ifr_ifru_243 ifr_ifru ;
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
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
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
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
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
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
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
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
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
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
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
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
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
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
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
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
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
   unsigned int dev_unreg_count ;
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
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
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
   struct pid_namespace *pid_ns_for_children ;
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
   __u32 linkstate ;
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
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
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
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
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
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_30983 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_30984 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_270 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_271 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_272 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_270 adj_list ;
   struct __anonstruct_all_adj_list_271 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
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
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_30983 reg_state : 8 ;
   bool dismantle ;
   enum ldv_30984 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_272 __annonCompField87 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
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
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
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
   struct ip_mc_list **mc_hash ;
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
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned int exit : 1 ;
   struct dmx_demux *demux ;
   struct mutex ioctl_mutex ;
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
    FE_CAN_MUTE_TS = 2147483648U
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
union __anonunion____missing_field_name_276 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_276 __annonCompField88 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_278 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_277 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_278 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_277 u ;
   int result ;
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
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
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
struct __anonstruct_layer_279 {
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
   struct __anonstruct_layer_279 layer[3U] ;
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
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
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
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_285 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_286 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_287 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_284 {
   struct __anonstruct_v4l_285 v4l ;
   struct __anonstruct_fb_286 fb ;
   struct __anonstruct_alsa_287 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_284 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_fh;
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_290 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_291 {
   char const *name ;
};
struct __anonstruct_i2c_292 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_293 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_289 {
   struct __anonstruct_of_290 of ;
   struct __anonstruct_device_name_291 device_name ;
   struct __anonstruct_i2c_292 i2c ;
   struct __anonstruct_custom_293 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_289 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_294 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_294 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct tmComResHWDescr {
   u8 bLength ;
   u8 bDescriptorType ;
   u8 bDescriptorSubtype ;
   u16 bcdSpecVersion ;
   u32 dwClockFrequency ;
   u32 dwClockUpdateRes ;
   u8 bCapabilities ;
   u32 dwDeviceRegistersLocation ;
   u32 dwHostMemoryRegion ;
   u32 dwHostMemoryRegionSize ;
   u32 dwHostHibernatMemRegion ;
   u32 dwHostHibernatMemRegionSize ;
};
struct tmComResInterfaceDescr {
   u8 bLength ;
   u8 bDescriptorType ;
   u8 bDescriptorSubtype ;
   u8 bFlags ;
   u8 bInterfaceType ;
   u8 bInterfaceId ;
   u8 bBaseInterface ;
   u8 bInterruptId ;
   u8 bDebugInterruptId ;
   u8 BARLocation ;
   u8 Reserved[3U] ;
};
struct tmComResBusDescr {
   u64 CommandRing ;
   u64 ResponseRing ;
   u32 CommandWrite ;
   u32 CommandRead ;
   u32 ResponseWrite ;
   u32 ResponseRead ;
};
enum tmBusType {
    NONE = 0,
    TYPE_BUS_PCI = 1,
    TYPE_BUS_PCIe = 2,
    TYPE_BUS_USB = 3,
    TYPE_BUS_I2C = 4
} ;
struct tmComResBusInfo {
   enum tmBusType Type ;
   u16 m_wMaxReqSize ;
   u8 *m_pdwSetRing ;
   u32 m_dwSizeSetRing ;
   u8 *m_pdwGetRing ;
   u32 m_dwSizeGetRing ;
   u32 m_dwSetWritePos ;
   u32 m_dwSetReadPos ;
   u32 m_dwGetWritePos ;
   u32 m_dwGetReadPos ;
   struct mutex lock ;
};
struct cmd {
   u8 seqno ;
   u32 inuse ;
   u32 timeout ;
   u32 signalled ;
   struct mutex lock ;
   wait_queue_head_t wait ;
};
struct tmComResExtDevDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u32 devicetype ;
   u16 deviceid ;
   u32 numgpiopins ;
   u8 numgpiogroups ;
   u8 controlsize ;
};
struct tmComResTunerDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u8 sourceid ;
   u8 iunit ;
   u32 tuningstandards ;
   u8 controlsize ;
   u32 controls ;
};
struct tmHWStreamParameters {
   u32 bitspersample ;
   u32 samplesperline ;
   u32 numberoflines ;
   u32 pitch ;
   u32 linethreshold ;
   u64 **pagetablelistvirt ;
   u64 *pagetablelistphys ;
   u32 numpagetables ;
   u32 numpagetableentries ;
};
struct tmComResDMATermDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtyle ;
   u8 unitid ;
   u16 terminaltype ;
   u8 assocterminal ;
   u8 sourceid ;
   u8 iterminal ;
   u32 BARLocation ;
   u8 flags ;
   u8 interruptid ;
   u8 buffercount ;
   u8 metadatasize ;
   u8 numformats ;
   u8 controlsize ;
};
struct tmComResProcDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u8 sourceid ;
   u16 wreserved ;
   u8 controlsize ;
};
struct tmComResEncoderDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u8 vsourceid ;
   u8 asourceid ;
   u8 iunit ;
   u32 dwmControlCap ;
   u32 dwmProfileCap ;
   u32 dwmVidFormatCap ;
   u8 bmVidBitrateCap ;
   u16 wmVidResolutionsCap ;
   u16 wmVidFrmRateCap ;
   u32 dwmAudFormatCap ;
   u8 bmAudBitrateCap ;
};
struct tmComResAFeatureDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u8 sourceid ;
   u8 controlsize ;
};
struct tmComResVBIFormatDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 bFormatIndex ;
   u32 VideoStandard ;
   u8 StartLine ;
   u8 EndLine ;
   u8 FieldRate ;
   u8 bNumLines ;
};
enum port_t {
    SAA7164_MPEG_UNDEFINED = 0,
    SAA7164_MPEG_DVB = 1,
    SAA7164_MPEG_ENCODER = 2,
    SAA7164_MPEG_VBI = 3
} ;
enum saa7164_i2c_bus_nr {
    SAA7164_I2C_BUS_0 = 0,
    SAA7164_I2C_BUS_1 = 1,
    SAA7164_I2C_BUS_2 = 2
} ;
enum saa7164_buffer_flags {
    SAA7164_BUFFER_UNDEFINED = 0,
    SAA7164_BUFFER_FREE = 1,
    SAA7164_BUFFER_BUSY = 2,
    SAA7164_BUFFER_FULL = 3
} ;
enum saa7164_unit_type {
    SAA7164_UNIT_UNDEFINED = 0,
    SAA7164_UNIT_DIGITAL_DEMODULATOR = 1,
    SAA7164_UNIT_ANALOG_DEMODULATOR = 2,
    SAA7164_UNIT_TUNER = 3,
    SAA7164_UNIT_EEPROM = 4,
    SAA7164_UNIT_ZILOG_IRBLASTER = 5,
    SAA7164_UNIT_ENCODER = 6
} ;
struct saa7164_unit {
   enum saa7164_unit_type type ;
   u8 id ;
   char *name ;
   enum saa7164_i2c_bus_nr i2c_bus_nr ;
   u8 i2c_bus_addr ;
   u8 i2c_reg_len ;
};
enum ldv_33926 {
    SAA7164_CHIP_UNDEFINED = 0,
    SAA7164_CHIP_REV2 = 1,
    SAA7164_CHIP_REV3 = 2
} ;
struct saa7164_board {
   char *name ;
   enum port_t porta ;
   enum port_t portb ;
   enum port_t portc ;
   enum port_t portd ;
   enum port_t porte ;
   enum port_t portf ;
   enum ldv_33926 chiprev ;
   struct saa7164_unit unit[8U] ;
};
struct saa7164_subid {
   u16 subvendor ;
   u16 subdevice ;
   u32 card ;
};
struct saa7164_port;
struct saa7164_histogram_bucket {
   u32 val ;
   u32 count ;
   u64 update_time ;
};
struct saa7164_histogram {
   char name[32U] ;
   struct saa7164_histogram_bucket counter1[64U] ;
};
struct saa7164_fw_status {
   u32 status ;
   u32 mode ;
   u32 spec ;
   u32 inst ;
   u32 cpuload ;
   u32 remainheap ;
   u32 version ;
   u32 major ;
   u32 sub ;
   u32 rel ;
   u32 buildnr ;
};
struct saa7164_dvb {
   struct mutex lock ;
   struct dvb_adapter adapter ;
   struct dvb_frontend *frontend ;
   struct dvb_demux demux ;
   struct dmxdev dmxdev ;
   struct dmx_frontend fe_hw ;
   struct dmx_frontend fe_mem ;
   struct dvb_net net ;
   int feeding ;
};
struct saa7164_dev;
struct saa7164_i2c {
   struct saa7164_dev *dev ;
   enum saa7164_i2c_bus_nr nr ;
   struct i2c_adapter i2c_adap ;
   struct i2c_client i2c_client ;
   u32 i2c_rc ;
};
struct saa7164_tvnorm {
   char *name ;
   v4l2_std_id id ;
};
struct saa7164_encoder_params {
   struct saa7164_tvnorm encodernorm ;
   u32 height ;
   u32 width ;
   u32 is_50hz ;
   u32 bitrate ;
   u32 bitrate_peak ;
   u32 bitrate_mode ;
   u32 stream_type ;
   u32 audio_sampling_freq ;
   u32 ctl_mute ;
   u32 ctl_aspect ;
   u32 refdist ;
   u32 gop_size ;
};
struct saa7164_vbi_params {
   struct saa7164_tvnorm encodernorm ;
   u32 height ;
   u32 width ;
   u32 is_50hz ;
   u32 bitrate ;
   u32 bitrate_peak ;
   u32 bitrate_mode ;
   u32 stream_type ;
   u32 audio_sampling_freq ;
   u32 ctl_mute ;
   u32 ctl_aspect ;
   u32 refdist ;
   u32 gop_size ;
};
struct saa7164_buffer {
   struct list_head list ;
   int idx ;
   struct saa7164_port *port ;
   enum saa7164_buffer_flags flags ;
   u32 pci_size ;
   u64 *cpu ;
   dma_addr_t dma ;
   u32 crc ;
   u32 pt_size ;
   u64 *pt_cpu ;
   dma_addr_t pt_dma ;
   u32 pos ;
   u32 actual_size ;
};
struct saa7164_port {
   struct saa7164_dev *dev ;
   enum port_t type ;
   int nr ;
   struct tmHWStreamParameters hw_streamingparams ;
   struct tmComResDMATermDescrHeader hwcfg ;
   u32 bufcounter ;
   u32 pitch ;
   u32 bufsize ;
   u32 bufoffset ;
   u32 bufptr32l ;
   u32 bufptr32h ;
   u64 bufptr64 ;
   u32 numpte ;
   struct mutex dmaqueue_lock ;
   struct saa7164_buffer dmaqueue ;
   u64 last_irq_msecs ;
   u64 last_svc_msecs ;
   u64 last_irq_msecs_diff ;
   u64 last_svc_msecs_diff ;
   u32 last_svc_wp ;
   u32 last_svc_rp ;
   u64 last_irq_svc_msecs_diff ;
   u64 last_read_msecs ;
   u64 last_read_msecs_diff ;
   u64 last_poll_msecs ;
   u64 last_poll_msecs_diff ;
   struct saa7164_histogram irq_interval ;
   struct saa7164_histogram svc_interval ;
   struct saa7164_histogram irq_svc_interval ;
   struct saa7164_histogram read_interval ;
   struct saa7164_histogram poll_interval ;
   struct saa7164_dvb dvb ;
   struct saa7164_tvnorm encodernorm ;
   v4l2_std_id std ;
   u32 height ;
   u32 width ;
   u32 freq ;
   u32 ts_packet_size ;
   u32 ts_packet_count ;
   u8 mux_input ;
   u8 encoder_profile ;
   u8 video_format ;
   u8 audio_format ;
   u8 video_resolution ;
   u16 ctl_brightness ;
   u16 ctl_contrast ;
   u16 ctl_hue ;
   u16 ctl_saturation ;
   u16 ctl_sharpness ;
   s8 ctl_volume ;
   struct tmComResAFeatureDescrHeader audfeat ;
   struct tmComResEncoderDescrHeader encunit ;
   struct tmComResProcDescrHeader vidproc ;
   struct tmComResExtDevDescrHeader ifunit ;
   struct tmComResTunerDescrHeader tunerunit ;
   struct work_struct workenc ;
   struct saa7164_encoder_params encoder_params ;
   struct video_device *v4l_device ;
   atomic_t v4l_reader_count ;
   struct saa7164_buffer list_buf_used ;
   struct saa7164_buffer list_buf_free ;
   wait_queue_head_t wait_read ;
   struct tmComResVBIFormatDescrHeader vbi_fmt_ntsc ;
   struct saa7164_vbi_params vbi_params ;
   u32 sync_errors ;
   u32 v_cc_errors ;
   u32 a_cc_errors ;
   u8 last_v_cc ;
   u8 last_a_cc ;
   u32 done_first_interrupt ;
};
struct saa7164_dev {
   struct list_head devlist ;
   atomic_t refcount ;
   struct v4l2_device v4l2_dev ;
   struct pci_dev *pci ;
   unsigned char pci_rev ;
   unsigned char pci_lat ;
   int pci_bus ;
   int pci_slot ;
   u32 *lmmio ;
   u8 *bmmio ;
   u32 *lmmio2 ;
   u8 *bmmio2 ;
   int pci_irqmask ;
   int nr ;
   int hwrevision ;
   u32 board ;
   char name[16U] ;
   struct saa7164_fw_status fw_status ;
   u32 firmwareloaded ;
   struct tmComResHWDescr hwdesc ;
   struct tmComResInterfaceDescr intfdesc ;
   struct tmComResBusDescr busdesc ;
   struct tmComResBusInfo bus ;
   u32 int_status ;
   u32 int_ack ;
   struct cmd cmds[256U] ;
   struct mutex lock ;
   struct saa7164_i2c i2c_bus[3U] ;
   struct saa7164_port ports[6U] ;
   struct work_struct workcmd ;
   struct task_struct *kthread ;
};
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct tmFwInfoStruct {
   u32 status ;
   u32 mode ;
   u32 devicespec ;
   u32 deviceinst ;
   u32 CPULoad ;
   u32 RemainHeap ;
   u32 CPUClock ;
   u32 RAMSpeed ;
};
struct saa7164_user_buffer {
   struct list_head list ;
   u8 *data ;
   u32 pos ;
   u32 actual_size ;
   u32 crc ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
enum hrtimer_restart;
struct tda10048_config {
   u8 demod_address ;
   u8 output_mode ;
   u8 fwbulkwritelen ;
   u8 inversion ;
   u16 dtv6_if_freq_khz ;
   u16 dtv7_if_freq_khz ;
   u16 dtv8_if_freq_khz ;
   u16 clk_freq_khz ;
   u8 disable_gate_access ;
   bool no_firmware ;
   bool set_pll ;
   u8 pll_m ;
   u8 pll_p ;
   u8 pll_n ;
};
struct tda18271_std_map_item {
   u16 if_freq ;
   unsigned int agc_mode : 2 ;
   unsigned int std : 3 ;
   unsigned int fm_rfn : 1 ;
   unsigned int if_lvl : 3 ;
   unsigned int rfagc_top : 7 ;
};
struct tda18271_std_map {
   struct tda18271_std_map_item fm_radio ;
   struct tda18271_std_map_item atv_b ;
   struct tda18271_std_map_item atv_dk ;
   struct tda18271_std_map_item atv_gh ;
   struct tda18271_std_map_item atv_i ;
   struct tda18271_std_map_item atv_l ;
   struct tda18271_std_map_item atv_lc ;
   struct tda18271_std_map_item atv_mn ;
   struct tda18271_std_map_item atsc_6 ;
   struct tda18271_std_map_item dvbt_6 ;
   struct tda18271_std_map_item dvbt_7 ;
   struct tda18271_std_map_item dvbt_8 ;
   struct tda18271_std_map_item qam_6 ;
   struct tda18271_std_map_item qam_7 ;
   struct tda18271_std_map_item qam_8 ;
};
enum tda18271_role {
    TDA18271_MASTER = 0,
    TDA18271_SLAVE = 1
} ;
enum tda18271_i2c_gate {
    TDA18271_GATE_AUTO = 0,
    TDA18271_GATE_ANALOG = 1,
    TDA18271_GATE_DIGITAL = 2
} ;
enum tda18271_output_options {
    TDA18271_OUTPUT_LT_XT_ON = 0,
    TDA18271_OUTPUT_LT_OFF = 1,
    TDA18271_OUTPUT_XT_OFF = 2
} ;
enum tda18271_small_i2c {
    TDA18271_39_BYTE_CHUNK_INIT = 0,
    TDA18271_16_BYTE_CHUNK_INIT = 16,
    TDA18271_08_BYTE_CHUNK_INIT = 8,
    TDA18271_03_BYTE_CHUNK_INIT = 3
} ;
struct tda18271_config {
   struct tda18271_std_map *std_map ;
   enum tda18271_role role ;
   enum tda18271_i2c_gate gate ;
   enum tda18271_output_options output_opt ;
   enum tda18271_small_i2c small_i2c ;
   unsigned int rf_cal_on_startup : 1 ;
   unsigned int delay_cal : 1 ;
   unsigned int config ;
};
struct s5h1411_config {
   u8 output_mode ;
   u8 gpio ;
   u16 mpeg_timing ;
   u16 qam_if ;
   u16 vsb_if ;
   u8 inversion ;
   u8 status_mode ;
};
enum hrtimer_restart;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct fw_header {
   u32 firmwaresize ;
   u32 bslsize ;
   u32 reserved ;
   u32 version ;
};
enum hrtimer_restart;
struct tmComResInfo {
   u8 id ;
   u8 flags ;
   u16 size ;
   u32 command ;
   u16 controlselector ;
   u8 seqno ;
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
enum tmComResCmd {
    SET_CUR = 1,
    GET_CUR = 129,
    GET_MIN = 130,
    GET_MAX = 131,
    GET_RES = 132,
    GET_LEN = 133,
    GET_INFO = 134,
    GET_DEF = 135
} ;
enum hrtimer_restart;
struct tmComResDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
};
struct tmComResGPIO {
   u32 pin ;
   u8 state ;
};
struct tmComResPathDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 pathid ;
};
struct tmComResAntTermDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 terminalid ;
   u16 terminaltype ;
   u8 assocterminal ;
   u8 iterminal ;
   u8 controlsize ;
};
struct tmComResTSFormatDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 bFormatIndex ;
   u8 bDataOffset ;
   u8 bPacketLength ;
   u8 bStrideLength ;
   u8 guidStrideFormat[16U] ;
};
struct tmComResSelDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 unitid ;
   u8 nrinpins ;
   u8 sourceid ;
};
struct tmComResEncVideoBitRate {
   u8 ucVideoBitRateMode ;
   u32 dwVideoBitRate ;
   u32 dwVideoBitRatePeak ;
};
struct tmComResEncVideoInputAspectRatio {
   u8 width ;
   u8 height ;
};
struct tmComResEncVideoGopStructure {
   u8 ucGOPSize ;
   u8 ucRefFrameDist ;
};
struct tmComResAudioDefaults {
   u8 ucDecoderLevel ;
   u8 ucDecoderFM_Level ;
   u8 ucMonoLevel ;
   u8 ucNICAM_Level ;
   u8 ucSAP_Level ;
   u8 ucADC_Level ;
};
struct tmComResEncAudioBitRate {
   u8 ucAudioBitRateMode ;
   u32 dwAudioBitRate ;
   u32 dwAudioBitRatePeak ;
};
struct tmComResTunerStandard {
   u8 std ;
   u32 country ;
};
struct tmComResTunerStandardAuto {
   u8 mode ;
};
struct tmComResPSFormatDescrHeader {
   u8 len ;
   u8 type ;
   u8 subtype ;
   u8 bFormatIndex ;
   u16 wPacketLength ;
   u16 wPackLength ;
   u8 bPackDataType ;
};
struct tmComResProbeCommit {
   u16 bmHint ;
   u8 bFormatIndex ;
   u8 bFrameIndex ;
};
struct tmComResDebugSetLevel {
   u32 dwDebugLevel ;
};
struct tmComResDebugGetData {
   u32 dwResult ;
   u8 ucDebugData[256U] ;
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
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
struct saa7164_encoder_fh {
   struct saa7164_port *port ;
   atomic_t v4l_reading ;
};
enum hrtimer_restart;
struct saa7164_vbi_fh {
   struct saa7164_port *port ;
   atomic_t v4l_reading ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
extern int printk(char const * , ...) ;
extern void msleep(unsigned int ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
int saa7164_api_read_eeprom(struct saa7164_dev *dev , u8 *buf , int buflen ) ;
int saa7164_api_set_gpiobit(struct saa7164_dev *dev , u8 unitid , u8 pin ) ;
int saa7164_api_clear_gpiobit(struct saa7164_dev *dev , u8 unitid , u8 pin ) ;
struct saa7164_board saa7164_boards[11U] ;
unsigned int const saa7164_bcount ;
struct saa7164_subid saa7164_subids[10U] ;
unsigned int const saa7164_idcount ;
void saa7164_card_list(struct saa7164_dev *dev ) ;
void saa7164_gpio_setup(struct saa7164_dev *dev ) ;
void saa7164_card_setup(struct saa7164_dev *dev ) ;
int saa7164_i2caddr_to_reglen(struct saa7164_i2c *bus , int addr ) ;
int saa7164_i2caddr_to_unitid(struct saa7164_i2c *bus , int addr ) ;
char *saa7164_unitid_name(struct saa7164_dev *dev , u8 unitid ) ;
struct saa7164_board saa7164_boards[11U] =
  { {(char *)"Unknown", 0, 0, 0, 0, 0, 0, 0, {{0, (unsigned char)0, 0, 0, (unsigned char)0,
                                                (unsigned char)0}, {0, (unsigned char)0,
                                                                    0, 0, (unsigned char)0,
                                                                    (unsigned char)0},
                                               {0, (unsigned char)0, 0, 0, (unsigned char)0,
                                                (unsigned char)0}, {0, (unsigned char)0,
                                                                    0, 0, (unsigned char)0,
                                                                    (unsigned char)0},
                                               {0, (unsigned char)0, 0, 0, (unsigned char)0,
                                                (unsigned char)0}, {0, (unsigned char)0,
                                                                    0, 0, (unsigned char)0,
                                                                    (unsigned char)0},
                                               {0, (unsigned char)0, 0, 0, (unsigned char)0,
                                                (unsigned char)0}, {0, (unsigned char)0,
                                                                    0, 0, (unsigned char)0,
                                                                    (unsigned char)0}}},
        {(char *)"Generic Rev2",
      0, 0, 0, 0, 0, 0, 1, {{0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0}}},
        {(char *)"Generic Rev3",
      0, 0, 0, 0, 0, 0, 2, {{0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0},
                            {0, (unsigned char)0, 0, 0, (unsigned char)0, (unsigned char)0}}},
        {(char *)"Hauppauge WinTV-HVR2250",
      1, 1, 2, 2, 3, 3, 2, {{4, 34U, (char *)"4K EEPROM", 0, 80U, 1U}, {3, 4U, (char *)"TDA18271-1",
                                                                        1, 96U, 1U},
                            {1, 7U, (char *)"CX24228/S5H1411-1 (TOP)", 1, 25U, 1U},
                            {1, 8U, (char *)"CX24228/S5H1411-1 (QAM)", 1, 26U, 1U},
                            {3, 30U, (char *)"TDA18271-2", 2, 96U, 1U}, {1, 32U, (char *)"CX24228/S5H1411-2 (TOP)",
                                                                         2, 25U, 1U},
                            {1, 35U, (char *)"CX24228/S5H1411-2 (QAM)", 2, 26U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2200",
      1, 1, 2, 2, 3, 3, 2, {{4, 29U, (char *)"4K EEPROM", 0, 80U, 1U}, {3, 4U, (char *)"TDA18271-1",
                                                                        1, 96U, 1U},
                            {3, 27U, (char *)"TDA18271-2", 2, 96U, 1U}, {1, 30U, (char *)"TDA10048-1",
                                                                         1, 8U, 1U},
                            {1, 31U, (char *)"TDA10048-2", 2, 9U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2200", 1, 1, 2, 2, 3, 3, 1, {{4, 6U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {1, 5U, (char *)"TDA10048-1",
                                                                1, 8U, 1U}, {3, 30U,
                                                                             (char *)"TDA18271-2",
                                                                             2, 96U,
                                                                             1U},
                                                               {1, 31U, (char *)"TDA10048-2",
                                                                2, 9U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2200", 1, 1, 2, 2, 3, 3, 1, {{4, 29U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {2, 5U, (char *)"TDA8290-1",
                                                                1, 66U, 1U}, {3, 27U,
                                                                              (char *)"TDA18271-2",
                                                                              2, 96U,
                                                                              1U},
                                                               {2, 28U, (char *)"TDA8290-2",
                                                                2, 66U, 1U}, {1, 30U,
                                                                              (char *)"TDA10048-1",
                                                                              1, 8U,
                                                                              1U},
                                                               {1, 31U, (char *)"TDA10048-2",
                                                                2, 9U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2250", 1, 1, 2, 2, 3, 3, 2, {{4, 40U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {1, 7U, (char *)"CX24228/S5H1411-1 (TOP)",
                                                                1, 25U, 1U}, {1, 8U,
                                                                              (char *)"CX24228/S5H1411-1 (QAM)",
                                                                              1, 26U,
                                                                              1U},
                                                               {3, 36U, (char *)"TDA18271-2",
                                                                2, 96U, 1U}, {1, 38U,
                                                                              (char *)"CX24228/S5H1411-2 (TOP)",
                                                                              2, 25U,
                                                                              1U},
                                                               {1, 41U, (char *)"CX24228/S5H1411-2 (QAM)",
                                                                2, 26U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2250", 1, 1, 2, 2, 3, 3, 2, {{4, 38U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {1, 7U, (char *)"CX24228/S5H1411-1 (TOP)",
                                                                1, 25U, 1U}, {1, 8U,
                                                                              (char *)"CX24228/S5H1411-1 (QAM)",
                                                                              1, 26U,
                                                                              1U},
                                                               {3, 34U, (char *)"TDA18271-2",
                                                                2, 96U, 1U}, {1, 36U,
                                                                              (char *)"CX24228/S5H1411-2 (TOP)",
                                                                              2, 25U,
                                                                              1U},
                                                               {1, 39U, (char *)"CX24228/S5H1411-2 (QAM)",
                                                                2, 26U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2200", 1, 1, 2, 2, 3, 3, 2, {{4, 29U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {2, 5U, (char *)"TDA8290-1",
                                                                1, 66U, 1U}, {3, 27U,
                                                                              (char *)"TDA18271-2",
                                                                              2, 96U,
                                                                              1U},
                                                               {2, 28U, (char *)"TDA8290-2",
                                                                2, 66U, 1U}, {1, 30U,
                                                                              (char *)"TDA10048-1",
                                                                              1, 8U,
                                                                              1U},
                                                               {1, 31U, (char *)"TDA10048-2",
                                                                2, 9U, 1U}}},
        {(char *)"Hauppauge WinTV-HVR2200", 1, 1, 0, 0, 0, 0, 2, {{4, 35U, (char *)"4K EEPROM",
                                                                0, 80U, 1U}, {3, 4U,
                                                                              (char *)"TDA18271-1",
                                                                              1, 96U,
                                                                              1U},
                                                               {2, 5U, (char *)"TDA8290-1",
                                                                1, 66U, 1U}, {3, 33U,
                                                                              (char *)"TDA18271-2",
                                                                              2, 96U,
                                                                              1U},
                                                               {2, 34U, (char *)"TDA8290-2",
                                                                2, 66U, 1U}, {1, 36U,
                                                                              (char *)"TDA10048-1",
                                                                              1, 8U,
                                                                              1U},
                                                               {1, 37U, (char *)"TDA10048-2",
                                                                2, 9U, 1U}}}};
unsigned int const saa7164_bcount = 11U;
struct saa7164_subid saa7164_subids[10U] =
  { {112U, 34944U, 3U},
        {112U, 34832U, 3U},
        {112U, 35200U, 4U},
        {112U, 35072U, 5U},
        {112U, 35073U, 6U},
        {112U, 34977U, 8U},
        {112U, 34961U, 7U},
        {112U, 34897U, 7U},
        {112U, 35136U, 9U},
        {112U, 35155U, 10U}};
unsigned int const saa7164_idcount = 10U;
void saa7164_card_list(struct saa7164_dev *dev )
{
  int i ;
  {
  if (*((unsigned int *)dev->pci + 16UL) == 0U) {
    {
    printk("\v%s: Board has no valid PCIe Subsystem ID and can\'t\n%s: be autodetected. Pass card=<n> insmod option to\n%s: workaround that. Send complaints to the vendor\n%s: of the TV card. Best regards,\n%s:         -- tux\n",
           (char *)(& dev->name), (char *)(& dev->name), (char *)(& dev->name), (char *)(& dev->name),
           (char *)(& dev->name));
    }
  } else {
    {
    printk("\v%s: Your board isn\'t known (yet) to the driver.\n%s: Try to pick one of the existing card configs via\n%s: card=<n> insmod option.  Updating to the latest\n%s: version might help as well.\n",
           (char *)(& dev->name), (char *)(& dev->name), (char *)(& dev->name), (char *)(& dev->name));
    }
  }
  {
  printk("\v%s: Here are valid choices for the card=<n> insmod option:\n", (char *)(& dev->name));
  i = 0;
  }
  goto ldv_49293;
  ldv_49292:
  {
  printk("\v%s:    card=%d -> %s\n", (char *)(& dev->name), i, saa7164_boards[i].name);
  i = i + 1;
  }
  ldv_49293: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_49292;
  } else {
  }
  return;
}
}
void saa7164_gpio_setup(struct saa7164_dev *dev )
{
  {
  {
  if (dev->board == 4U) {
    goto case_4;
  } else {
  }
  if (dev->board == 5U) {
    goto case_5;
  } else {
  }
  if (dev->board == 6U) {
    goto case_6;
  } else {
  }
  if (dev->board == 9U) {
    goto case_9;
  } else {
  }
  if (dev->board == 10U) {
    goto case_10;
  } else {
  }
  if (dev->board == 3U) {
    goto case_3;
  } else {
  }
  if (dev->board == 7U) {
    goto case_7;
  } else {
  }
  if (dev->board == 8U) {
    goto case_8;
  } else {
  }
  goto switch_break;
  case_4: ;
  case_5: ;
  case_6: ;
  case_9: ;
  case_10: ;
  case_3: ;
  case_7: ;
  case_8:
  {
  saa7164_api_clear_gpiobit(dev, 2, 2);
  saa7164_api_clear_gpiobit(dev, 2, 3);
  msleep(20U);
  saa7164_api_set_gpiobit(dev, 2, 2);
  saa7164_api_set_gpiobit(dev, 2, 3);
  }
  goto ldv_49306;
  switch_break: ;
  }
  ldv_49306: ;
  return;
}
}
static void hauppauge_eeprom(struct saa7164_dev *dev , u8 *eeprom_data )
{
  struct tveeprom tv ;
  {
  {
  tveeprom_hauppauge_analog(& dev->i2c_bus[0].i2c_client, & tv, eeprom_data);
  }
  {
  if (tv.model == 88001U) {
    goto case_88001;
  } else {
  }
  if (tv.model == 88021U) {
    goto case_88021;
  } else {
  }
  if (tv.model == 88041U) {
    goto case_88041;
  } else {
  }
  if (tv.model == 88061U) {
    goto case_88061;
  } else {
  }
  if (tv.model == 89519U) {
    goto case_89519;
  } else {
  }
  if (tv.model == 89609U) {
    goto case_89609;
  } else {
  }
  if (tv.model == 89619U) {
    goto case_89619;
  } else {
  }
  goto switch_default;
  case_88001: ;
  case_88021: ;
  goto ldv_49314;
  case_88041: ;
  goto ldv_49314;
  case_88061: ;
  goto ldv_49314;
  case_89519: ;
  case_89609: ;
  goto ldv_49314;
  case_89619: ;
  goto ldv_49314;
  switch_default:
  {
  printk("\v%s: Warning: Unknown Hauppauge model #%d\n", (char *)(& dev->name), tv.model);
  }
  goto ldv_49314;
  switch_break: ;
  }
  ldv_49314:
  {
  printk("\016%s: Hauppauge eeprom: model=%d\n", (char *)(& dev->name), tv.model);
  }
  return;
}
}
void saa7164_card_setup(struct saa7164_dev *dev )
{
  u8 eeprom[256U] ;
  int tmp ;
  {
  if (dev->i2c_bus[0].i2c_rc == 0U) {
    {
    tmp = saa7164_api_read_eeprom(dev, (u8 *)(& eeprom), 256);
    }
    if (tmp < 0) {
      return;
    } else {
    }
  } else {
  }
  {
  if (dev->board == 4U) {
    goto case_4;
  } else {
  }
  if (dev->board == 5U) {
    goto case_5;
  } else {
  }
  if (dev->board == 6U) {
    goto case_6;
  } else {
  }
  if (dev->board == 9U) {
    goto case_9;
  } else {
  }
  if (dev->board == 10U) {
    goto case_10;
  } else {
  }
  if (dev->board == 3U) {
    goto case_3;
  } else {
  }
  if (dev->board == 7U) {
    goto case_7;
  } else {
  }
  if (dev->board == 8U) {
    goto case_8;
  } else {
  }
  goto switch_break;
  case_4: ;
  case_5: ;
  case_6: ;
  case_9: ;
  case_10: ;
  case_3: ;
  case_7: ;
  case_8:
  {
  hauppauge_eeprom(dev, (u8 *)(& eeprom));
  }
  goto ldv_49333;
  switch_break: ;
  }
  ldv_49333: ;
  return;
}
}
int saa7164_i2caddr_to_unitid(struct saa7164_i2c *bus , int addr )
{
  struct saa7164_dev *dev ;
  struct saa7164_unit *unit ;
  int i ;
  {
  dev = bus->dev;
  i = 0;
  goto ldv_49343;
  ldv_49342:
  unit = (struct saa7164_unit *)(& saa7164_boards[dev->board].unit) + (unsigned long )i;
  if ((unsigned int )unit->type == 0U) {
    goto ldv_49341;
  } else {
  }
  if ((unsigned int )bus->nr == (unsigned int )unit->i2c_bus_nr && addr == (int )unit->i2c_bus_addr) {
    return ((int )unit->id);
  } else {
  }
  ldv_49341:
  i = i + 1;
  ldv_49343: ;
  if (i <= 7) {
    goto ldv_49342;
  } else {
  }
  return (-1);
}
}
int saa7164_i2caddr_to_reglen(struct saa7164_i2c *bus , int addr )
{
  struct saa7164_dev *dev ;
  struct saa7164_unit *unit ;
  int i ;
  {
  dev = bus->dev;
  i = 0;
  goto ldv_49354;
  ldv_49353:
  unit = (struct saa7164_unit *)(& saa7164_boards[dev->board].unit) + (unsigned long )i;
  if ((unsigned int )unit->type == 0U) {
    goto ldv_49352;
  } else {
  }
  if ((unsigned int )bus->nr == (unsigned int )unit->i2c_bus_nr && addr == (int )unit->i2c_bus_addr) {
    return ((int )unit->i2c_reg_len);
  } else {
  }
  ldv_49352:
  i = i + 1;
  ldv_49354: ;
  if (i <= 7) {
    goto ldv_49353;
  } else {
  }
  return (-1);
}
}
char *saa7164_unitid_name(struct saa7164_dev *dev , u8 unitid )
{
  char *undefed ;
  char *bridge ;
  struct saa7164_unit *unit ;
  int i ;
  {
  undefed = (char *)"UNDEFINED";
  bridge = (char *)"BRIDGE";
  if ((unsigned int )unitid == 0U) {
    return (bridge);
  } else {
  }
  i = 0;
  goto ldv_49366;
  ldv_49365:
  unit = (struct saa7164_unit *)(& saa7164_boards[dev->board].unit) + (unsigned long )i;
  if ((unsigned int )unit->type == 0U) {
    goto ldv_49364;
  } else {
  }
  if ((int )unitid == (int )unit->id) {
    return (unit->name);
  } else {
  }
  ldv_49364:
  i = i + 1;
  ldv_49366: ;
  if (i <= 7) {
    goto ldv_49365;
  } else {
  }
  return (undefed);
}
}
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_devlist(struct mutex *lock ) ;
void ldv_mutex_unlock_devlist(struct mutex *lock ) ;
void ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(struct mutex *lock ) ;
void ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_tmComResBusInfo(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_tmComResBusInfo(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
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
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern struct module __this_module ;
extern void __might_sleep(char const * , int , int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static long IS_ERR(void const *ptr ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3091;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3091;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3091;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3091;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3091: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void debug_check_no_locks_held(void) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work(system_wq, work);
  }
  return (tmp);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void memset_io(void volatile *addr , unsigned char val , size_t count )
{
  {
  {
  memset((void *)addr, (int )val, count);
  }
  return;
}
}
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  {
  memcpy(dst, (void const *)src, count);
  }
  return;
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_11(struct device const *dev ) ;
static int ldv_dev_set_drvdata_12(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_37(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_38(struct pci_driver *ldv_func_arg1 ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int dma_supported(struct device * , u64 ) ;
__inline static int pci_dma_supported(struct pci_dev *hwdev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                      mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_11((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_12(& pdev->dev, data);
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_33(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_34(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  }
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern int wake_up_process(struct task_struct * ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct * ) ;
__inline static bool freezing(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& system_freezing_cnt));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  }
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  {
  tmp___1 = freezing_slow_path(p);
  }
  return (tmp___1);
}
}
extern bool __refrigerator(bool ) ;
__inline static bool try_to_freeze_unsafe(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  {
  __might_sleep("include/linux/freezer.h", 56, 0);
  tmp = get_current();
  tmp___0 = freezing(tmp);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  {
  tmp___3 = __refrigerator(0);
  }
  return (tmp___3);
}
}
__inline static bool try_to_freeze(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = get_current();
  }
  if ((tmp->flags & 32768U) == 0U) {
    {
    debug_check_no_locks_held();
    }
  } else {
  }
  {
  tmp___0 = try_to_freeze_unsafe();
  }
  return (tmp___0);
}
}
extern bool set_freezable(void) ;
extern void dvb_dmx_swfilter_packets(struct dvb_demux * , u8 const * , size_t ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
struct list_head saa7164_devlist ;
unsigned int waitsecs ;
unsigned int encoder_buffers ;
unsigned int vbi_buffers ;
void saa7164_dumpregs(struct saa7164_dev *dev , u32 addr ) ;
void saa7164_getfirmwarestatus(struct saa7164_dev *dev ) ;
u32 saa7164_getcurrentfirmwareversion(struct saa7164_dev *dev ) ;
void saa7164_histogram_update(struct saa7164_histogram *hg , u32 val ) ;
int saa7164_downloadfirmware(struct saa7164_dev *dev ) ;
int saa7164_i2c_register(struct saa7164_i2c *bus ) ;
int saa7164_i2c_unregister(struct saa7164_i2c *bus ) ;
int saa7164_bus_setup(struct saa7164_dev *dev ) ;
void saa7164_bus_dump(struct saa7164_dev *dev ) ;
int saa7164_irq_dequeue(struct saa7164_dev *dev ) ;
int saa7164_api_get_fw_version(struct saa7164_dev *dev , u32 *version ) ;
int saa7164_api_enum_subdevs(struct saa7164_dev *dev ) ;
int saa7164_api_set_debug(struct saa7164_dev *dev , u8 level ) ;
int saa7164_api_collect_debug(struct saa7164_dev *dev ) ;
int saa7164_api_get_load_info(struct saa7164_dev *dev , struct tmFwInfoStruct *i ) ;
int saa7164_dvb_register(struct saa7164_port *port ) ;
int saa7164_dvb_unregister(struct saa7164_port *port ) ;
int saa7164_buffer_zero_offsets(struct saa7164_port *port , int i ) ;
int saa7164_encoder_register(struct saa7164_port *port ) ;
void saa7164_encoder_unregister(struct saa7164_port *port ) ;
int saa7164_vbi_register(struct saa7164_port *port ) ;
void saa7164_vbi_unregister(struct saa7164_port *port ) ;
unsigned int crc_checking ;
unsigned int saa_debug ;
unsigned int fw_debug ;
unsigned int encoder_buffers = 64U;
unsigned int vbi_buffers = 64U;
unsigned int waitsecs = 10U;
static unsigned int card[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
unsigned int print_histogram = 64U;
unsigned int crc_checking = 1U;
unsigned int guard_checking = 1U;
static unsigned int saa7164_devcount ;
static struct mutex devlist = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "devlist.wait_lock",
                                                           0, 0UL}}}}, {& devlist.wait_list,
                                                                        & devlist.wait_list},
    0, 0, (void *)(& devlist), {0, {0, 0}, "devlist", 0, 0UL}};
struct list_head saa7164_devlist = {& saa7164_devlist, & saa7164_devlist};
static void saa7164_pack_verifier(struct saa7164_buffer *buf )
{
  u8 *p ;
  int i ;
  {
  p = (u8 *)buf->cpu;
  i = 0;
  goto ldv_49820;
  ldv_49819: ;
  if ((((unsigned int )*(p + (unsigned long )i) != 0U || (unsigned int )*(p + ((unsigned long )i + 1UL)) != 0U) || (unsigned int )*(p + ((unsigned long )i + 2UL)) != 1U) || (unsigned int )*(p + ((unsigned long )i + 3UL)) != 186U) {
    {
    printk("\vNo pack at 0x%x\n", i);
    }
  } else {
  }
  i = i + 2048;
  ldv_49820: ;
  if ((u32 )i < buf->actual_size) {
    goto ldv_49819;
  } else {
  }
  return;
}
}
static void saa7164_ts_verifier(struct saa7164_buffer *buf )
{
  struct saa7164_port *port ;
  u32 i ;
  u8 cc ;
  u8 a ;
  u16 pid ;
  u8 *bufcpu ;
  {
  port = buf->port;
  bufcpu = (u8 *)buf->cpu;
  port->sync_errors = 0U;
  port->v_cc_errors = 0U;
  port->a_cc_errors = 0U;
  i = 0U;
  goto ldv_49832;
  ldv_49831: ;
  if ((unsigned int )*(bufcpu + (unsigned long )i) != 71U) {
    port->sync_errors = port->sync_errors + 1U;
  } else {
  }
  pid = (u16 )((int )((short )(((int )*(bufcpu + ((unsigned long )i + 1UL)) & 31) << 8)) | (int )((short )*(bufcpu + ((unsigned long )i + 2UL))));
  cc = (unsigned int )*(bufcpu + ((unsigned long )i + 3UL)) & 15U;
  if ((unsigned int )pid == 241U) {
    a = (unsigned int )((u8 )((unsigned int )port->last_v_cc + 1U)) & 15U;
    if ((int )a != (int )cc) {
      {
      printk("\vvideo cc last = %x current = %x i = %d\n", (int )port->last_v_cc,
             (int )cc, i);
      port->v_cc_errors = port->v_cc_errors + 1U;
      }
    } else {
    }
    port->last_v_cc = cc;
  } else
  if ((unsigned int )pid == 242U) {
    a = (unsigned int )((u8 )((unsigned int )port->last_a_cc + 1U)) & 15U;
    if ((int )a != (int )cc) {
      {
      printk("\vaudio cc last = %x current = %x i = %d\n", (int )port->last_a_cc,
             (int )cc, i);
      port->a_cc_errors = port->a_cc_errors + 1U;
      }
    } else {
    }
    port->last_a_cc = cc;
  } else {
  }
  i = i + 188U;
  ldv_49832: ;
  if (i < buf->actual_size) {
    goto ldv_49831;
  } else {
  }
  if (port->v_cc_errors != 0U && port->done_first_interrupt > 1U) {
    {
    printk("\vvideo pid cc, %d errors\n", port->v_cc_errors);
    }
  } else {
  }
  if (port->a_cc_errors != 0U && port->done_first_interrupt > 1U) {
    {
    printk("\vaudio pid cc, %d errors\n", port->a_cc_errors);
    }
  } else {
  }
  if (port->sync_errors != 0U && port->done_first_interrupt > 1U) {
    {
    printk("\vsync_errors = %d\n", port->sync_errors);
    }
  } else {
  }
  if (port->done_first_interrupt == 1U) {
    port->done_first_interrupt = port->done_first_interrupt + 1U;
  } else {
  }
  return;
}
}
static void saa7164_histogram_reset(struct saa7164_histogram *hg , char *name )
{
  int i ;
  {
  {
  memset((void *)hg, 0, 1056UL);
  strcpy((char *)(& hg->name), (char const *)name);
  i = 0;
  }
  goto ldv_49840;
  ldv_49839:
  hg->counter1[i].val = (u32 )i;
  i = i + 1;
  ldv_49840: ;
  if (i <= 29) {
    goto ldv_49839;
  } else {
  }
  i = 0;
  goto ldv_49843;
  ldv_49842:
  hg->counter1[i + 30].val = (u32 )(i * 10 + 30);
  i = i + 1;
  ldv_49843: ;
  if (i <= 17) {
    goto ldv_49842;
  } else {
  }
  i = 0;
  goto ldv_49846;
  ldv_49845:
  hg->counter1[i + 48].val = (u32 )((i + 1) * 200);
  i = i + 1;
  ldv_49846: ;
  if (i <= 14) {
    goto ldv_49845;
  } else {
  }
  hg->counter1[55].val = 2000U;
  hg->counter1[56].val = 4000U;
  hg->counter1[57].val = 8000U;
  hg->counter1[58].val = 15000U;
  hg->counter1[59].val = 30000U;
  hg->counter1[60].val = 60000U;
  hg->counter1[61].val = 300000U;
  hg->counter1[62].val = 900000U;
  hg->counter1[63].val = 3600000U;
  return;
}
}
void saa7164_histogram_update(struct saa7164_histogram *hg , u32 val )
{
  int i ;
  {
  i = 0;
  goto ldv_49855;
  ldv_49854: ;
  if (val <= hg->counter1[i].val) {
    hg->counter1[i].count = hg->counter1[i].count + 1U;
    hg->counter1[i].update_time = (u64 )jiffies;
    goto ldv_49853;
  } else {
  }
  i = i + 1;
  ldv_49855: ;
  if (i <= 63) {
    goto ldv_49854;
  } else {
  }
  ldv_49853: ;
  return;
}
}
static void saa7164_histogram_print(struct saa7164_port *port , struct saa7164_histogram *hg )
{
  u32 entries ;
  int i ;
  {
  {
  entries = 0U;
  printk("\vHistogram named %s (ms, count, last_update_jiffy)\n", (char *)(& hg->name));
  i = 0;
  }
  goto ldv_49864;
  ldv_49863: ;
  if (hg->counter1[i].count == 0U) {
    goto ldv_49862;
  } else {
  }
  {
  printk("\v %4d %12d %Ld\n", hg->counter1[i].val, hg->counter1[i].count, hg->counter1[i].update_time);
  entries = entries + 1U;
  }
  ldv_49862:
  i = i + 1;
  ldv_49864: ;
  if (i <= 63) {
    goto ldv_49863;
  } else {
  }
  {
  printk("\vTotal: %d\n", entries);
  }
  return;
}
}
static void saa7164_work_enchandler_helper(struct saa7164_port *port , int bufnr )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct list_head *c ;
  struct list_head *n ;
  int i ;
  u8 *p ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  {
  dev = port->dev;
  buf = (struct saa7164_buffer *)0;
  ubuf = (struct saa7164_user_buffer *)0;
  i = 0;
  ldv_mutex_lock_27(& port->dmaqueue_lock);
  c = port->dmaqueue.list.next;
  n = c->next;
  }
  goto ldv_49884;
  ldv_49883:
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  tmp = i;
  i = i + 1;
  if (tmp > (int )port->hwcfg.buffercount) {
    {
    printk("\v%s() illegal i count %d\n", "saa7164_work_enchandler_helper", i);
    }
    goto ldv_49880;
  } else {
  }
  if (buf->idx == bufnr) {
    if ((saa_debug & 256U) != 0U) {
      {
      printk("\017%s: %s() bufnr: %d\n", (char *)(& dev->name), "saa7164_work_enchandler_helper",
             bufnr);
      }
    } else {
    }
    if (crc_checking != 0U) {
      {
      buf->crc = crc32_le(0U, (unsigned char const *)buf->cpu, (size_t )buf->actual_size);
      }
    } else {
    }
    if (guard_checking != 0U) {
      p = (u8 *)buf->cpu;
      if ((((((((unsigned int )*(p + (unsigned long )buf->actual_size) != 255U || (unsigned int )*(p + ((unsigned long )buf->actual_size + 1UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 2UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 3UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 16UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 17UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 18UL)) != 255U) || (unsigned int )*(p + ((unsigned long )buf->actual_size + 19UL)) != 255U) {
        {
        printk("\v%s() buf %p guard buffer breach\n", "saa7164_work_enchandler_helper",
               buf);
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )port->nr - 4U > 1U) {
      if (port->encoder_params.stream_type == 1U) {
        {
        saa7164_ts_verifier(buf);
        }
      } else
      if (port->encoder_params.stream_type == 0U) {
        {
        saa7164_pack_verifier(buf);
        }
      } else {
      }
    } else {
    }
    {
    tmp___0 = list_empty((struct list_head const *)(& port->list_buf_free.list));
    }
    if (tmp___0 == 0) {
      __mptr___0 = (struct list_head const *)port->list_buf_free.list.next;
      ubuf = (struct saa7164_user_buffer *)__mptr___0;
      if (buf->actual_size <= ubuf->actual_size) {
        {
        memcpy_fromio((void *)ubuf->data, (void const volatile *)buf->cpu, (size_t )ubuf->actual_size);
        }
        if (crc_checking != 0U) {
          {
          ubuf->crc = crc32_le(0U, (unsigned char const *)ubuf->data, (size_t )ubuf->actual_size);
          }
        } else {
        }
        {
        ubuf->pos = 0U;
        list_move_tail(& ubuf->list, & port->list_buf_used.list);
        __wake_up(& port->wait_read, 1U, 1, (void *)0);
        }
      } else {
        {
        printk("\vbuf %p bufsize fails match\n", buf);
        }
      }
    } else {
      {
      printk("\vencirq no free buffers, increase param encoder_buffers\n");
      }
    }
    {
    saa7164_buffer_zero_offsets(port, bufnr);
    memset_io((void volatile *)buf->cpu, 255, (size_t )buf->pci_size);
    }
    if (crc_checking != 0U) {
      {
      buf->crc = crc32_le(0U, (unsigned char const *)buf->cpu, (size_t )buf->actual_size);
      }
    } else {
    }
    goto ldv_49880;
  } else {
  }
  c = n;
  n = c->next;
  ldv_49884: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49883;
  } else {
  }
  ldv_49880:
  {
  ldv_mutex_unlock_28(& port->dmaqueue_lock);
  }
  return;
}
}
static void saa7164_work_enchandler(struct work_struct *w )
{
  struct saa7164_port *port ;
  struct work_struct const *__mptr ;
  struct saa7164_dev *dev ;
  u32 wp ;
  u32 mcb ;
  u32 rp ;
  u32 cnt ;
  unsigned int tmp ;
  {
  {
  __mptr = (struct work_struct const *)w;
  port = (struct saa7164_port *)__mptr + 0xffffffffffffe038UL;
  dev = port->dev;
  cnt = 0U;
  port->last_svc_msecs_diff = port->last_svc_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_svc_msecs = (u64 )tmp;
  port->last_svc_msecs_diff = port->last_svc_msecs - port->last_svc_msecs_diff;
  saa7164_histogram_update(& port->svc_interval, (u32 )port->last_svc_msecs_diff);
  port->last_irq_svc_msecs_diff = port->last_svc_msecs - port->last_irq_msecs;
  saa7164_histogram_update(& port->irq_svc_interval, (u32 )port->last_irq_svc_msecs_diff);
  }
  if ((saa_debug & 256U) != 0U) {
    {
    printk("\017%s: %s() %Ldms elapsed irq->deferred %Ldms wp: %d rp: %d\n", (char *)(& dev->name),
           "saa7164_work_enchandler", port->last_svc_msecs_diff, port->last_irq_svc_msecs_diff,
           port->last_svc_wp, port->last_svc_rp);
    }
  } else {
  }
  {
  wp = readl((void const volatile *)dev->lmmio + (unsigned long )(port->bufcounter >> 2));
  }
  if (wp > (u32 )((int )port->hwcfg.buffercount + -1)) {
    {
    printk("\v%s() illegal buf count %d\n", "saa7164_work_enchandler", wp);
    }
    return;
  } else {
  }
  if (wp == 0U) {
    mcb = (u32 )((int )port->hwcfg.buffercount + -1);
  } else {
    mcb = wp - 1U;
  }
  ldv_49898: ;
  if (port->done_first_interrupt == 0U) {
    port->done_first_interrupt = port->done_first_interrupt + 1U;
    rp = mcb;
  } else {
    rp = (port->last_svc_rp + 1U) & 7U;
  }
  if (rp > (u32 )((int )port->hwcfg.buffercount + -1)) {
    {
    printk("\v%s() illegal rp count %d\n", "saa7164_work_enchandler", rp);
    }
    goto ldv_49897;
  } else {
  }
  {
  saa7164_work_enchandler_helper(port, (int )rp);
  port->last_svc_rp = rp;
  cnt = cnt + 1U;
  }
  if (rp == mcb) {
    goto ldv_49897;
  } else {
  }
  goto ldv_49898;
  ldv_49897: ;
  if (print_histogram == (unsigned int )port->nr) {
    {
    saa7164_histogram_print(port, & port->irq_interval);
    saa7164_histogram_print(port, & port->svc_interval);
    saa7164_histogram_print(port, & port->irq_svc_interval);
    saa7164_histogram_print(port, & port->read_interval);
    saa7164_histogram_print(port, & port->poll_interval);
    print_histogram = (unsigned int )(port->nr + 64);
    }
  } else {
  }
  return;
}
}
static void saa7164_work_vbihandler(struct work_struct *w )
{
  struct saa7164_port *port ;
  struct work_struct const *__mptr ;
  struct saa7164_dev *dev ;
  u32 wp ;
  u32 mcb ;
  u32 rp ;
  u32 cnt ;
  unsigned int tmp ;
  {
  {
  __mptr = (struct work_struct const *)w;
  port = (struct saa7164_port *)__mptr + 0xffffffffffffe038UL;
  dev = port->dev;
  cnt = 0U;
  port->last_svc_msecs_diff = port->last_svc_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_svc_msecs = (u64 )tmp;
  port->last_svc_msecs_diff = port->last_svc_msecs - port->last_svc_msecs_diff;
  saa7164_histogram_update(& port->svc_interval, (u32 )port->last_svc_msecs_diff);
  port->last_irq_svc_msecs_diff = port->last_svc_msecs - port->last_irq_msecs;
  saa7164_histogram_update(& port->irq_svc_interval, (u32 )port->last_irq_svc_msecs_diff);
  }
  if ((saa_debug & 256U) != 0U) {
    {
    printk("\017%s: %s() %Ldms elapsed irq->deferred %Ldms wp: %d rp: %d\n", (char *)(& dev->name),
           "saa7164_work_vbihandler", port->last_svc_msecs_diff, port->last_irq_svc_msecs_diff,
           port->last_svc_wp, port->last_svc_rp);
    }
  } else {
  }
  {
  wp = readl((void const volatile *)dev->lmmio + (unsigned long )(port->bufcounter >> 2));
  }
  if (wp > (u32 )((int )port->hwcfg.buffercount + -1)) {
    {
    printk("\v%s() illegal buf count %d\n", "saa7164_work_vbihandler", wp);
    }
    return;
  } else {
  }
  if (wp == 0U) {
    mcb = (u32 )((int )port->hwcfg.buffercount + -1);
  } else {
    mcb = wp - 1U;
  }
  ldv_49912: ;
  if (port->done_first_interrupt == 0U) {
    port->done_first_interrupt = port->done_first_interrupt + 1U;
    rp = mcb;
  } else {
    rp = (port->last_svc_rp + 1U) & 7U;
  }
  if (rp > (u32 )((int )port->hwcfg.buffercount + -1)) {
    {
    printk("\v%s() illegal rp count %d\n", "saa7164_work_vbihandler", rp);
    }
    goto ldv_49911;
  } else {
  }
  {
  saa7164_work_enchandler_helper(port, (int )rp);
  port->last_svc_rp = rp;
  cnt = cnt + 1U;
  }
  if (rp == mcb) {
    goto ldv_49911;
  } else {
  }
  goto ldv_49912;
  ldv_49911: ;
  if (print_histogram == (unsigned int )port->nr) {
    {
    saa7164_histogram_print(port, & port->irq_interval);
    saa7164_histogram_print(port, & port->svc_interval);
    saa7164_histogram_print(port, & port->irq_svc_interval);
    saa7164_histogram_print(port, & port->read_interval);
    saa7164_histogram_print(port, & port->poll_interval);
    print_histogram = (unsigned int )(port->nr + 64);
    }
  } else {
  }
  return;
}
}
static void saa7164_work_cmdhandler(struct work_struct *w )
{
  struct saa7164_dev *dev ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)w;
  dev = (struct saa7164_dev *)__mptr + 0xfffffffffffdf990UL;
  saa7164_irq_dequeue(dev);
  }
  return;
}
}
static void saa7164_buffer_deliver(struct saa7164_buffer *buf )
{
  struct saa7164_port *port ;
  {
  {
  port = buf->port;
  dvb_dmx_swfilter_packets(& port->dvb.demux, (u8 const *)buf->cpu, 312UL);
  }
  return;
}
}
static irqreturn_t saa7164_irq_vbi(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  unsigned int tmp ;
  {
  {
  dev = port->dev;
  port->last_irq_msecs_diff = port->last_irq_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_irq_msecs = (u64 )tmp;
  port->last_irq_msecs_diff = port->last_irq_msecs - port->last_irq_msecs_diff;
  saa7164_histogram_update(& port->irq_interval, (u32 )port->last_irq_msecs_diff);
  }
  if ((saa_debug & 256U) != 0U) {
    {
    printk("\017%s: %s() %Ldms elapsed\n", (char *)(& dev->name), "saa7164_irq_vbi",
           port->last_irq_msecs_diff);
    }
  } else {
  }
  {
  schedule_work(& port->workenc);
  }
  return (0);
}
}
static irqreturn_t saa7164_irq_encoder(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  unsigned int tmp ;
  {
  {
  dev = port->dev;
  port->last_irq_msecs_diff = port->last_irq_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_irq_msecs = (u64 )tmp;
  port->last_irq_msecs_diff = port->last_irq_msecs - port->last_irq_msecs_diff;
  saa7164_histogram_update(& port->irq_interval, (u32 )port->last_irq_msecs_diff);
  }
  if ((saa_debug & 256U) != 0U) {
    {
    printk("\017%s: %s() %Ldms elapsed\n", (char *)(& dev->name), "saa7164_irq_encoder",
           port->last_irq_msecs_diff);
    }
  } else {
  }
  {
  schedule_work(& port->workenc);
  }
  return (0);
}
}
static irqreturn_t saa7164_irq_ts(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct list_head *c ;
  struct list_head *n ;
  int wp ;
  int i ;
  int rp ;
  unsigned int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  {
  dev = port->dev;
  i = 0;
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(port->bufcounter >> 2));
  wp = (int )tmp;
  }
  if (wp > (int )port->hwcfg.buffercount + -1) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-core.c"),
                         "i" (591), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (wp == 0) {
    rp = (int )port->hwcfg.buffercount + -1;
  } else {
    rp = wp + -1;
  }
  c = port->dmaqueue.list.next;
  n = c->next;
  goto ldv_49948;
  ldv_49947:
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  tmp___0 = i;
  i = i + 1;
  if (tmp___0 > (int )port->hwcfg.buffercount) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-core.c"),
                         "i" (604), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (buf->idx == rp) {
    if ((saa_debug & 256U) != 0U) {
      {
      printk("\017%s: %s() wp: %d processing: %d\n", (char *)(& dev->name), "saa7164_irq_ts",
             wp, rp);
      }
    } else {
    }
    {
    saa7164_buffer_deliver(buf);
    }
    goto ldv_49946;
  } else {
  }
  c = n;
  n = c->next;
  ldv_49948: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49947;
  } else {
  }
  ldv_49946: ;
  return (0);
}
}
static irqreturn_t saa7164_irq(int irq , void *dev_id )
{
  struct saa7164_dev *dev ;
  struct saa7164_port *porta ;
  struct saa7164_port *portb ;
  struct saa7164_port *portc ;
  struct saa7164_port *portd ;
  struct saa7164_port *porte ;
  struct saa7164_port *portf ;
  u32 intid ;
  u32 intstat[4U] ;
  int i ;
  int handled ;
  int bit ;
  {
  dev = (struct saa7164_dev *)dev_id;
  porta = (struct saa7164_port *)(& dev->ports);
  portb = (struct saa7164_port *)(& dev->ports) + 1UL;
  portc = (struct saa7164_port *)(& dev->ports) + 2UL;
  portd = (struct saa7164_port *)(& dev->ports) + 3UL;
  porte = (struct saa7164_port *)(& dev->ports) + 4UL;
  portf = (struct saa7164_port *)(& dev->ports) + 5UL;
  handled = 0;
  if ((unsigned long )dev == (unsigned long )((struct saa7164_dev *)0)) {
    {
    printk("\v%s() No device specified\n", "saa7164_irq");
    handled = 0;
    }
    goto out;
  } else {
  }
  i = 0;
  goto ldv_49968;
  ldv_49967:
  {
  intstat[i] = readl((void const volatile *)dev->lmmio + (unsigned long )((dev->int_status + (u32 )(i * 4)) >> 2));
  }
  if (intstat[i] != 0U) {
    handled = 1;
  } else {
  }
  i = i + 1;
  ldv_49968: ;
  if (i <= 3) {
    goto ldv_49967;
  } else {
  }
  if (handled == 0) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_49975;
  ldv_49974: ;
  if (intstat[i] != 0U) {
    bit = 0;
    goto ldv_49972;
    ldv_49971: ;
    if (((intstat[i] >> bit) & 1U) == 0U) {
      goto ldv_49970;
    } else {
    }
    intid = (u32 )(i * 32 + bit);
    if (intid == (u32 )dev->intfdesc.bInterruptId) {
      {
      schedule_work(& dev->workcmd);
      }
    } else
    if (intid == (u32 )porta->hwcfg.interruptid) {
      {
      saa7164_irq_ts(porta);
      }
    } else
    if (intid == (u32 )portb->hwcfg.interruptid) {
      {
      saa7164_irq_ts(portb);
      }
    } else
    if (intid == (u32 )portc->hwcfg.interruptid) {
      {
      saa7164_irq_encoder(portc);
      }
    } else
    if (intid == (u32 )portd->hwcfg.interruptid) {
      {
      saa7164_irq_encoder(portd);
      }
    } else
    if (intid == (u32 )porte->hwcfg.interruptid) {
      {
      saa7164_irq_vbi(porte);
      }
    } else
    if (intid == (u32 )portf->hwcfg.interruptid) {
      {
      saa7164_irq_vbi(portf);
      }
    } else
    if ((saa_debug & 256U) != 0U) {
      {
      printk("\017%s: %s() unhandled interrupt reg 0x%x bit 0x%x intid = 0x%x\n",
             (char *)(& dev->name), "saa7164_irq", i, bit, intid);
      }
    } else {
    }
    ldv_49970:
    bit = bit + 1;
    ldv_49972: ;
    if (bit <= 31) {
      goto ldv_49971;
    } else {
    }
    {
    writel(intstat[i], (void volatile *)dev->lmmio + (unsigned long )((dev->int_ack + (u32 )(i * 4)) >> 2));
    }
  } else {
  }
  i = i + 1;
  ldv_49975: ;
  if (i <= 3) {
    goto ldv_49974;
  } else {
  }
  out: ;
  return (handled != 0);
}
}
void saa7164_getfirmwarestatus(struct saa7164_dev *dev )
{
  struct saa7164_fw_status *s ;
  {
  {
  s = & dev->fw_status;
  dev->fw_status.status = readl((void const volatile *)dev->lmmio + 28U);
  dev->fw_status.mode = readl((void const volatile *)dev->lmmio + 29U);
  dev->fw_status.spec = readl((void const volatile *)dev->lmmio + 30U);
  dev->fw_status.inst = readl((void const volatile *)dev->lmmio + 31U);
  dev->fw_status.cpuload = readl((void const volatile *)dev->lmmio + 32U);
  dev->fw_status.remainheap = readl((void const volatile *)dev->lmmio + 33U);
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: Firmware status:\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .status     = 0x%08x\n", (char *)(& dev->name), s->status);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .mode       = 0x%08x\n", (char *)(& dev->name), s->mode);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .spec       = 0x%08x\n", (char *)(& dev->name), s->spec);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .inst       = 0x%08x\n", (char *)(& dev->name), s->inst);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .cpuload    = 0x%08x\n", (char *)(& dev->name), s->cpuload);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .remainheap = 0x%08x\n", (char *)(& dev->name), s->remainheap);
    }
  } else {
  }
  return;
}
}
u32 saa7164_getcurrentfirmwareversion(struct saa7164_dev *dev )
{
  u32 reg ;
  {
  {
  reg = readl((void const volatile *)dev->lmmio + 12U);
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: Device running firmware version %d.%d.%d.%d (0x%x)\n", (char *)(& dev->name),
           (reg & 64512U) >> 10, (reg & 992U) >> 5, reg & 31U, reg >> 16, reg);
    }
  } else {
  }
  return (reg);
}
}
void saa7164_dumpregs(struct saa7164_dev *dev , u32 addr )
{
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: --------------------> 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\n",
           (char *)(& dev->name));
    }
  } else {
  }
  i = 0;
  goto ldv_49991;
  ldv_49990: ;
  if ((int )saa_debug & 1) {
    {
    tmp = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 15U));
    tmp___0 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 14U));
    tmp___1 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 13U));
    tmp___2 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 12U));
    tmp___3 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 11U));
    tmp___4 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 10U));
    tmp___5 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 9U));
    tmp___6 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 8U));
    tmp___7 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 7U));
    tmp___8 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 6U));
    tmp___9 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 5U));
    tmp___10 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 4U));
    tmp___11 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 3U));
    tmp___12 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 2U));
    tmp___13 = readl((void const volatile *)dev->bmmio + (unsigned long )((addr + (u32 )i) + 1U));
    tmp___14 = readl((void const volatile *)dev->bmmio + (unsigned long )(addr + (u32 )i));
    printk("\017%s: region0[0x%08x] = %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n",
           (char *)(& dev->name), i, (int )((unsigned char )tmp___14), (int )((unsigned char )tmp___13),
           (int )((unsigned char )tmp___12), (int )((unsigned char )tmp___11), (int )((unsigned char )tmp___10),
           (int )((unsigned char )tmp___9), (int )((unsigned char )tmp___8), (int )((unsigned char )tmp___7),
           (int )((unsigned char )tmp___6), (int )((unsigned char )tmp___5), (int )((unsigned char )tmp___4),
           (int )((unsigned char )tmp___3), (int )((unsigned char )tmp___2), (int )((unsigned char )tmp___1),
           (int )((unsigned char )tmp___0), (int )((unsigned char )tmp));
    }
  } else {
  }
  i = i + 16;
  ldv_49991: ;
  if (i <= 255) {
    goto ldv_49990;
  } else {
  }
  return;
}
}
static void saa7164_dump_hwdesc(struct saa7164_dev *dev )
{
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: @0x%p hwdesc sizeof(struct tmComResHWDescr) = %d bytes\n", (char *)(& dev->name),
           & dev->hwdesc, 34U);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bLength = 0x%x\n", (char *)(& dev->name), (int )dev->hwdesc.bLength);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bDescriptorType = 0x%x\n", (char *)(& dev->name), (int )dev->hwdesc.bDescriptorType);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bDescriptorSubtype = 0x%x\n", (char *)(& dev->name), (int )dev->hwdesc.bDescriptorSubtype);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bcdSpecVersion = 0x%x\n", (char *)(& dev->name), (int )dev->hwdesc.bcdSpecVersion);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwClockFrequency = 0x%x\n", (char *)(& dev->name), dev->hwdesc.dwClockFrequency);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwClockUpdateRes = 0x%x\n", (char *)(& dev->name), dev->hwdesc.dwClockUpdateRes);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bCapabilities = 0x%x\n", (char *)(& dev->name), (int )dev->hwdesc.bCapabilities);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwDeviceRegistersLocation = 0x%x\n", (char *)(& dev->name),
           dev->hwdesc.dwDeviceRegistersLocation);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwHostMemoryRegion = 0x%x\n", (char *)(& dev->name), dev->hwdesc.dwHostMemoryRegion);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwHostMemoryRegionSize = 0x%x\n", (char *)(& dev->name), dev->hwdesc.dwHostMemoryRegionSize);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwHostHibernatMemRegion = 0x%x\n", (char *)(& dev->name), dev->hwdesc.dwHostHibernatMemRegion);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .dwHostHibernatMemRegionSize = 0x%x\n", (char *)(& dev->name),
           dev->hwdesc.dwHostHibernatMemRegionSize);
    }
  } else {
  }
  return;
}
}
static void saa7164_dump_intfdesc(struct saa7164_dev *dev )
{
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: @0x%p intfdesc sizeof(struct tmComResInterfaceDescr) = %d bytes\n",
           (char *)(& dev->name), & dev->intfdesc, 13U);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bLength = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bLength);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bDescriptorType = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bDescriptorType);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bDescriptorSubtype = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bDescriptorSubtype);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bFlags = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bFlags);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bInterfaceType = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bInterfaceType);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bInterfaceId = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bInterfaceId);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bBaseInterface = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bBaseInterface);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bInterruptId = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bInterruptId);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .bDebugInterruptId = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.bDebugInterruptId);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .BARLocation = 0x%x\n", (char *)(& dev->name), (int )dev->intfdesc.BARLocation);
    }
  } else {
  }
  return;
}
}
static void saa7164_dump_busdesc(struct saa7164_dev *dev )
{
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: @0x%p busdesc sizeof(struct tmComResBusDescr) = %d bytes\n", (char *)(& dev->name),
           & dev->busdesc, 32U);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .CommandRing   = 0x%016Lx\n", (char *)(& dev->name), dev->busdesc.CommandRing);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .ResponseRing  = 0x%016Lx\n", (char *)(& dev->name), dev->busdesc.ResponseRing);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .CommandWrite  = 0x%x\n", (char *)(& dev->name), dev->busdesc.CommandWrite);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .CommandRead   = 0x%x\n", (char *)(& dev->name), dev->busdesc.CommandRead);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .ResponseWrite = 0x%x\n", (char *)(& dev->name), dev->busdesc.ResponseWrite);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s:  .ResponseRead  = 0x%x\n", (char *)(& dev->name), dev->busdesc.ResponseRead);
    }
  } else {
  }
  return;
}
}
static void saa7164_get_descriptors(struct saa7164_dev *dev )
{
  {
  {
  memcpy_fromio((void *)(& dev->hwdesc), (void const volatile *)dev->bmmio, 34UL);
  memcpy_fromio((void *)(& dev->intfdesc), (void const volatile *)dev->bmmio + 34U,
                13UL);
  memcpy_fromio((void *)(& dev->busdesc), (void const volatile *)dev->bmmio + (unsigned long )dev->intfdesc.BARLocation,
                32UL);
  }
  if ((unsigned int )dev->hwdesc.bLength != 34U) {
    {
    printk("\vStructure struct tmComResHWDescr is mangled\n");
    printk("\vNeed %x got %d\n", (int )dev->hwdesc.bLength, 34U);
    }
  } else {
    {
    saa7164_dump_hwdesc(dev);
    }
  }
  if ((unsigned int )dev->intfdesc.bLength != 13U) {
    {
    printk("\vstruct struct tmComResInterfaceDescr is mangled\n");
    printk("\vNeed %x got %d\n", (int )dev->intfdesc.bLength, 13U);
    }
  } else {
    {
    saa7164_dump_intfdesc(dev);
    }
  }
  {
  saa7164_dump_busdesc(dev);
  }
  return;
}
}
static int saa7164_pci_quirks(struct saa7164_dev *dev )
{
  {
  return (0);
}
}
static int get_resources(struct saa7164_dev *dev )
{
  struct resource *tmp ;
  struct resource *tmp___0 ;
  {
  {
  tmp___0 = __request_region(& iomem_resource, (dev->pci)->resource[0].start, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? ((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL : 0ULL,
                             (char const *)(& dev->name), 0);
  }
  if ((unsigned long )tmp___0 != (unsigned long )((struct resource *)0)) {
    {
    tmp = __request_region(& iomem_resource, (dev->pci)->resource[2].start, (dev->pci)->resource[2].start != 0ULL || (dev->pci)->resource[2].end != (dev->pci)->resource[2].start ? ((dev->pci)->resource[2].end - (dev->pci)->resource[2].start) + 1ULL : 0ULL,
                           (char const *)(& dev->name), 0);
    }
    if ((unsigned long )tmp != (unsigned long )((struct resource *)0)) {
      return (0);
    } else {
    }
  } else {
  }
  {
  printk("\v%s: can\'t get MMIO memory @ 0x%llx or 0x%llx\n", (char *)(& dev->name),
         (dev->pci)->resource[0].start, (dev->pci)->resource[2].start);
  }
  return (-16);
}
}
static int saa7164_port_init(struct saa7164_dev *dev , int portnr )
{
  struct saa7164_port *port ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  {
  port = (struct saa7164_port *)0;
  if ((unsigned int )portnr > 5U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-core.c"),
                         "i" (913), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  port = (struct saa7164_port *)(& dev->ports) + (unsigned long )portnr;
  port->dev = dev;
  port->nr = portnr;
  if ((unsigned int )portnr <= 1U) {
    port->type = 1;
  } else
  if ((unsigned int )portnr - 2U <= 1U) {
    {
    port->type = 2;
    __init_work(& port->workenc, 0);
    __constr_expr_0.counter = 137438953408L;
    port->workenc.data = __constr_expr_0;
    lockdep_init_map(& port->workenc.lockdep_map, "(&port->workenc)", & __key, 0);
    INIT_LIST_HEAD(& port->workenc.entry);
    port->workenc.func = & saa7164_work_enchandler;
    }
  } else
  if ((unsigned int )portnr - 4U <= 1U) {
    {
    port->type = 3;
    __init_work(& port->workenc, 0);
    __constr_expr_1.counter = 137438953408L;
    port->workenc.data = __constr_expr_1;
    lockdep_init_map(& port->workenc.lockdep_map, "(&port->workenc)", & __key___0,
                     0);
    INIT_LIST_HEAD(& port->workenc.entry);
    port->workenc.func = & saa7164_work_vbihandler;
    }
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-core.c"),
                         "i" (934), "i" (12UL));
    __builtin_unreachable();
    }
  }
  {
  __mutex_init(& port->dvb.lock, "&port->dvb.lock", & __key___1);
  INIT_LIST_HEAD(& port->dmaqueue.list);
  __mutex_init(& port->dmaqueue_lock, "&port->dmaqueue_lock", & __key___2);
  INIT_LIST_HEAD(& port->list_buf_used.list);
  INIT_LIST_HEAD(& port->list_buf_free.list);
  __init_waitqueue_head(& port->wait_read, "&port->wait_read", & __key___3);
  saa7164_histogram_reset(& port->irq_interval, (char *)"irq intervals");
  saa7164_histogram_reset(& port->svc_interval, (char *)"deferred intervals");
  saa7164_histogram_reset(& port->irq_svc_interval, (char *)"irq to deferred intervals");
  saa7164_histogram_reset(& port->read_interval, (char *)"encoder/vbi read() intervals");
  saa7164_histogram_reset(& port->poll_interval, (char *)"encoder/vbi poll() intervals");
  }
  return (0);
}
}
static int saa7164_dev_setup(struct saa7164_dev *dev )
{
  int i ;
  struct lock_class_key __key ;
  unsigned int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  atomic_inc(& dev->refcount);
  tmp = saa7164_devcount;
  saa7164_devcount = saa7164_devcount + 1U;
  dev->nr = (int )tmp;
  snprintf((char *)(& dev->name), 16UL, "saa7164[%d]", dev->nr);
  ldv_mutex_lock_29(& devlist);
  list_add_tail(& dev->devlist, & saa7164_devlist);
  ldv_mutex_unlock_30(& devlist);
  dev->board = 4294967295U;
  }
  if (card[dev->nr] < (unsigned int )saa7164_bcount) {
    dev->board = card[dev->nr];
  } else {
  }
  i = 0;
  goto ldv_50029;
  ldv_50028: ;
  if ((int )(dev->pci)->subsystem_vendor == (int )saa7164_subids[i].subvendor && (int )(dev->pci)->subsystem_device == (int )saa7164_subids[i].subdevice) {
    dev->board = saa7164_subids[i].card;
  } else {
  }
  i = i + 1;
  ldv_50029: ;
  if (dev->board == 4294967295U && (unsigned int )i < (unsigned int )saa7164_idcount) {
    goto ldv_50028;
  } else {
  }
  if (dev->board == 4294967295U) {
    {
    dev->board = 0U;
    saa7164_card_list(dev);
    }
  } else {
  }
  {
  dev->pci_bus = (int )((dev->pci)->bus)->number;
  dev->pci_slot = (int )((dev->pci)->devfn >> 3) & 31;
  dev->i2c_bus[0].dev = dev;
  dev->i2c_bus[0].nr = 0;
  dev->i2c_bus[1].dev = dev;
  dev->i2c_bus[1].nr = 1;
  dev->i2c_bus[2].dev = dev;
  dev->i2c_bus[2].nr = 2;
  saa7164_port_init(dev, 0);
  saa7164_port_init(dev, 1);
  saa7164_port_init(dev, 2);
  saa7164_port_init(dev, 3);
  saa7164_port_init(dev, 4);
  saa7164_port_init(dev, 5);
  tmp___0 = get_resources(dev);
  }
  if (tmp___0 < 0) {
    {
    printk("\vCORE %s No more PCIe resources for subsystem: %04x:%04x\n", (char *)(& dev->name),
           (int )(dev->pci)->subsystem_vendor, (int )(dev->pci)->subsystem_device);
    saa7164_devcount = saa7164_devcount - 1U;
    }
    return (-19);
  } else {
  }
  {
  tmp___1 = ioremap((dev->pci)->resource[0].start, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? (unsigned long )(((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL) : 0UL);
  dev->lmmio = (u32 *)tmp___1;
  tmp___2 = ioremap((dev->pci)->resource[2].start, (dev->pci)->resource[2].start != 0ULL || (dev->pci)->resource[2].end != (dev->pci)->resource[2].start ? (unsigned long )(((dev->pci)->resource[2].end - (dev->pci)->resource[2].start) + 1ULL) : 0UL);
  dev->lmmio2 = (u32 *)tmp___2;
  dev->bmmio = (u8 *)dev->lmmio;
  dev->bmmio2 = (u8 *)dev->lmmio2;
  dev->int_status = 1589120U;
  dev->int_ack = 1589136U;
  printk("\016CORE %s: subsystem: %04x:%04x, board: %s [card=%d,%s]\n", (char *)(& dev->name),
         (int )(dev->pci)->subsystem_vendor, (int )(dev->pci)->subsystem_device, saa7164_boards[dev->board].name,
         dev->board, card[dev->nr] == dev->board ? (char *)"insmod option" : (char *)"autodetected");
  saa7164_pci_quirks(dev);
  }
  return (0);
}
}
static void saa7164_dev_unregister(struct saa7164_dev *dev )
{
  int tmp ;
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_dev_unregister");
    }
  } else {
  }
  {
  __release_region(& iomem_resource, (dev->pci)->resource[0].start, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? ((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL : 0ULL);
  __release_region(& iomem_resource, (dev->pci)->resource[2].start, (dev->pci)->resource[2].start != 0ULL || (dev->pci)->resource[2].end != (dev->pci)->resource[2].start ? ((dev->pci)->resource[2].end - (dev->pci)->resource[2].start) + 1ULL : 0ULL);
  tmp = atomic_dec_and_test(& dev->refcount);
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  iounmap((void volatile *)dev->lmmio);
  iounmap((void volatile *)dev->lmmio2);
  }
  return;
}
}
static int saa7164_proc_show(struct seq_file *m , void *v )
{
  struct saa7164_dev *dev ;
  struct tmComResBusInfo *b ;
  struct list_head *list ;
  int i ;
  int c ;
  struct list_head const *__mptr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  if (saa7164_devcount == 0U) {
    return (0);
  } else {
  }
  list = saa7164_devlist.next;
  goto ldv_50053;
  ldv_50052:
  {
  __mptr = (struct list_head const *)list;
  dev = (struct saa7164_dev *)__mptr;
  seq_printf(m, "%s = %p\n", (char *)(& dev->name), dev);
  b = & dev->bus;
  ldv_mutex_lock_31(& b->lock);
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetReadPos >> 2));
  seq_printf(m, " .m_pdwSetWritePos = 0x%x (0x%08x)\n", b->m_dwSetReadPos, tmp);
  tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetWritePos >> 2));
  seq_printf(m, " .m_pdwSetReadPos  = 0x%x (0x%08x)\n", b->m_dwSetWritePos, tmp___0);
  tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetReadPos >> 2));
  seq_printf(m, " .m_pdwGetWritePos = 0x%x (0x%08x)\n", b->m_dwGetReadPos, tmp___1);
  tmp___2 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetWritePos >> 2));
  seq_printf(m, " .m_pdwGetReadPos  = 0x%x (0x%08x)\n", b->m_dwGetWritePos, tmp___2);
  c = 0;
  seq_printf(m, "\n  Set Ring:\n");
  seq_printf(m, "\n addr  00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\n");
  i = 0;
  }
  goto ldv_50047;
  ldv_50046: ;
  if (c == 0) {
    {
    seq_printf(m, " %04x:", i);
    }
  } else {
  }
  {
  seq_printf(m, " %02x", (int )*(b->m_pdwSetRing + (unsigned long )i));
  c = c + 1;
  }
  if (c == 16) {
    {
    seq_printf(m, "\n");
    c = 0;
    }
  } else {
  }
  i = i + 1;
  ldv_50047: ;
  if ((u32 )i < b->m_dwSizeSetRing) {
    goto ldv_50046;
  } else {
  }
  {
  c = 0;
  seq_printf(m, "\n  Get Ring:\n");
  seq_printf(m, "\n addr  00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\n");
  i = 0;
  }
  goto ldv_50050;
  ldv_50049: ;
  if (c == 0) {
    {
    seq_printf(m, " %04x:", i);
    }
  } else {
  }
  {
  seq_printf(m, " %02x", (int )*(b->m_pdwGetRing + (unsigned long )i));
  c = c + 1;
  }
  if (c == 16) {
    {
    seq_printf(m, "\n");
    c = 0;
    }
  } else {
  }
  i = i + 1;
  ldv_50050: ;
  if ((u32 )i < b->m_dwSizeGetRing) {
    goto ldv_50049;
  } else {
  }
  {
  ldv_mutex_unlock_32(& b->lock);
  list = list->next;
  }
  ldv_50053: ;
  if ((unsigned long )list != (unsigned long )(& saa7164_devlist)) {
    goto ldv_50052;
  } else {
  }
  return (0);
}
}
static int saa7164_proc_open(struct inode *inode , struct file *filp )
{
  int tmp ;
  {
  {
  tmp = single_open(filp, & saa7164_proc_show, (void *)0);
  }
  return (tmp);
}
}
static struct file_operations const saa7164_proc_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & saa7164_proc_open, 0, & single_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int saa7164_proc_create(void)
{
  struct proc_dir_entry *pe ;
  {
  {
  pe = proc_create("saa7164", 292, (struct proc_dir_entry *)0, & saa7164_proc_fops);
  }
  if ((unsigned long )pe == (unsigned long )((struct proc_dir_entry *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int saa7164_thread_function(void *data )
{
  struct saa7164_dev *dev ;
  struct tmFwInfoStruct fwinfo ;
  u64 last_poll_time ;
  bool tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  dev = (struct saa7164_dev *)data;
  last_poll_time = 0ULL;
  if ((saa_debug & 4096U) != 0U) {
    {
    printk("\017%s: thread started\n", (char *)(& dev->name));
    }
  } else {
  }
  {
  set_freezable();
  }
  ldv_50071:
  {
  msleep_interruptible(100U);
  tmp = kthread_should_stop();
  }
  if ((int )tmp) {
    goto ldv_50070;
  } else {
  }
  {
  try_to_freeze();
  }
  if ((saa_debug & 4096U) != 0U) {
    {
    printk("\017%s: thread running\n", (char *)(& dev->name));
    }
  } else {
  }
  {
  saa7164_api_collect_debug(dev);
  tmp___1 = jiffies_to_msecs(jiffies);
  }
  if (last_poll_time + 1000ULL < (u64 )tmp___1) {
    {
    saa7164_api_get_load_info(dev, & fwinfo);
    tmp___0 = jiffies_to_msecs(jiffies);
    last_poll_time = (u64 )tmp___0;
    }
  } else {
  }
  goto ldv_50071;
  ldv_50070: ;
  if ((saa_debug & 4096U) != 0U) {
    {
    printk("\017%s: thread exiting\n", (char *)(& dev->name));
    }
  } else {
  }
  return (0);
}
}
static int saa7164_initdev(struct pci_dev *pci_dev , struct pci_device_id const *pci_id )
{
  struct saa7164_dev *dev ;
  int err ;
  int i ;
  u32 version ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  struct task_struct *__k ;
  struct task_struct *tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  {
  {
  tmp = kzalloc(132808UL, 208U);
  dev = (struct saa7164_dev *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct saa7164_dev *)0)) {
    return (-12);
  } else {
  }
  {
  err = v4l2_device_register(& pci_dev->dev, & dev->v4l2_dev);
  }
  if (err < 0) {
    {
    dev_err((struct device const *)(& pci_dev->dev), "v4l2_device_register failed\n");
    }
    goto fail_free;
  } else {
  }
  {
  dev->pci = pci_dev;
  tmp___0 = pci_enable_device(pci_dev);
  }
  if (tmp___0 != 0) {
    err = -5;
    goto fail_free;
  } else {
  }
  {
  tmp___1 = saa7164_dev_setup(dev);
  }
  if (tmp___1 < 0) {
    err = -22;
    goto fail_free;
  } else {
  }
  {
  dev->pci_rev = pci_dev->revision;
  pci_read_config_byte((struct pci_dev const *)pci_dev, 13, & dev->pci_lat);
  tmp___2 = pci_name((struct pci_dev const *)pci_dev);
  printk("\016%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n", (char *)(& dev->name),
         tmp___2, (int )dev->pci_rev, pci_dev->irq, (int )dev->pci_lat, pci_dev->resource[0].start);
  pci_set_master(pci_dev);
  tmp___3 = pci_dma_supported(pci_dev, 4294967295ULL);
  }
  if (tmp___3 == 0) {
    {
    printk("%s/0: Oops: no 32bit PCI DMA ???\n", (char *)(& dev->name));
    err = -5;
    }
    goto fail_irq;
  } else {
  }
  {
  err = ldv_request_irq_33(pci_dev->irq, & saa7164_irq, 128UL, (char const *)(& dev->name),
                           (void *)dev);
  }
  if (err < 0) {
    {
    printk("\v%s: can\'t get IRQ %d\n", (char *)(& dev->name), pci_dev->irq);
    err = -5;
    }
    goto fail_irq;
  } else {
  }
  {
  pci_set_drvdata(pci_dev, (void *)dev);
  i = 0;
  }
  goto ldv_50085;
  ldv_50084:
  {
  dev->cmds[i].seqno = (u8 )i;
  dev->cmds[i].inuse = 0U;
  __mutex_init(& dev->cmds[i].lock, "&dev->cmds[i].lock", & __key);
  __init_waitqueue_head(& dev->cmds[i].wait, "&dev->cmds[i].wait", & __key___0);
  i = i + 1;
  }
  ldv_50085: ;
  if (i <= 255) {
    goto ldv_50084;
  } else {
  }
  {
  __init_work(& dev->workcmd, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->workcmd.data = __constr_expr_0;
  lockdep_init_map(& dev->workcmd.lockdep_map, "(&dev->workcmd)", & __key___1, 0);
  INIT_LIST_HEAD(& dev->workcmd.entry);
  dev->workcmd.func = & saa7164_work_cmdhandler;
  }
  if (dev->board != 0U) {
    {
    err = saa7164_downloadfirmware(dev);
    }
    if (err < 0) {
      {
      printk("\vFailed to boot firmware, no features registered\n");
      }
      goto fail_fw;
    } else {
    }
    {
    saa7164_get_descriptors(dev);
    saa7164_dumpregs(dev, 0U);
    saa7164_getcurrentfirmwareversion(dev);
    saa7164_getfirmwarestatus(dev);
    err = saa7164_bus_setup(dev);
    }
    if (err < 0) {
      {
      printk("\vFailed to setup the bus, will continue\n");
      }
    } else {
    }
    {
    saa7164_bus_dump(dev);
    version = 0U;
    tmp___4 = saa7164_api_get_fw_version(dev, & version);
    }
    if (tmp___4 == 0) {
      if ((int )saa_debug & 1) {
        {
        printk("\017%s: Bus is operating correctly using version %d.%d.%d.%d (0x%x)\n",
               (char *)(& dev->name), (version & 64512U) >> 10, (version & 992U) >> 5,
               version & 31U, version >> 16, version);
        }
      } else {
      }
    } else {
      {
      printk("\vFailed to communicate with the firmware\n");
      }
    }
    {
    saa7164_i2c_register((struct saa7164_i2c *)(& dev->i2c_bus));
    saa7164_i2c_register((struct saa7164_i2c *)(& dev->i2c_bus) + 1UL);
    saa7164_i2c_register((struct saa7164_i2c *)(& dev->i2c_bus) + 2UL);
    saa7164_gpio_setup(dev);
    saa7164_card_setup(dev);
    saa7164_api_enum_subdevs(dev);
    }
    if ((unsigned int )saa7164_boards[dev->board].porta == 1U) {
      {
      tmp___5 = saa7164_dvb_register((struct saa7164_port *)(& dev->ports));
      }
      if (tmp___5 < 0) {
        {
        printk("\v%s() Failed to register dvb adapters on porta\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )saa7164_boards[dev->board].portb == 1U) {
      {
      tmp___6 = saa7164_dvb_register((struct saa7164_port *)(& dev->ports) + 1UL);
      }
      if (tmp___6 < 0) {
        {
        printk("\v%s() Failed to register dvb adapters on portb\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )saa7164_boards[dev->board].portc == 2U) {
      {
      tmp___7 = saa7164_encoder_register((struct saa7164_port *)(& dev->ports) + 2UL);
      }
      if (tmp___7 < 0) {
        {
        printk("\v%s() Failed to register mpeg encoder\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )saa7164_boards[dev->board].portd == 2U) {
      {
      tmp___8 = saa7164_encoder_register((struct saa7164_port *)(& dev->ports) + 3UL);
      }
      if (tmp___8 < 0) {
        {
        printk("\v%s() Failed to register mpeg encoder\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )saa7164_boards[dev->board].porte == 3U) {
      {
      tmp___9 = saa7164_vbi_register((struct saa7164_port *)(& dev->ports) + 4UL);
      }
      if (tmp___9 < 0) {
        {
        printk("\v%s() Failed to register vbi device\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )saa7164_boards[dev->board].portf == 3U) {
      {
      tmp___10 = saa7164_vbi_register((struct saa7164_port *)(& dev->ports) + 5UL);
      }
      if (tmp___10 < 0) {
        {
        printk("\v%s() Failed to register vbi device\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
    {
    saa7164_api_set_debug(dev, (int )((u8 )fw_debug));
    }
    if (fw_debug != 0U) {
      {
      tmp___11 = kthread_create_on_node(& saa7164_thread_function, (void *)dev, -1,
                                        "saa7164 debug");
      __k = tmp___11;
      tmp___12 = IS_ERR((void const *)__k);
      }
      if (tmp___12 == 0L) {
        {
        wake_up_process(__k);
        }
      } else {
      }
      {
      dev->kthread = __k;
      tmp___13 = IS_ERR((void const *)dev->kthread);
      }
      if (tmp___13 != 0L) {
        {
        dev->kthread = (struct task_struct *)0;
        printk("\v%s() Failed to create debug kernel thread\n", "saa7164_initdev");
        }
      } else {
      }
    } else {
    }
  } else {
    {
    printk("\v%s() Unsupported board detected, registering without firmware\n", "saa7164_initdev");
    }
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: %s() parameter debug = %d\n", (char *)(& dev->name), "saa7164_initdev",
           saa_debug);
    }
  } else {
  }
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: %s() parameter waitsecs = %d\n", (char *)(& dev->name), "saa7164_initdev",
           waitsecs);
    }
  } else {
  }
  fail_fw: ;
  return (0);
  fail_irq:
  {
  saa7164_dev_unregister(dev);
  }
  fail_free:
  {
  v4l2_device_unregister(& dev->v4l2_dev);
  kfree((void const *)dev);
  }
  return (err);
}
}
static void saa7164_shutdown(struct saa7164_dev *dev )
{
  {
  if ((int )saa_debug & 1) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_shutdown");
    }
  } else {
  }
  return;
}
}
static void saa7164_finidev(struct pci_dev *pci_dev )
{
  struct saa7164_dev *dev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pci_dev);
  dev = (struct saa7164_dev *)tmp;
  }
  if (dev->board != 0U) {
    if (fw_debug != 0U && (unsigned long )dev->kthread != (unsigned long )((struct task_struct *)0)) {
      {
      kthread_stop(dev->kthread);
      dev->kthread = (struct task_struct *)0;
      }
    } else {
    }
    if (dev->firmwareloaded != 0U) {
      {
      saa7164_api_set_debug(dev, 0);
      }
    } else {
    }
  } else {
  }
  {
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 2UL, & dev->ports[2].irq_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 2UL, & dev->ports[2].svc_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 2UL, & dev->ports[2].irq_svc_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 2UL, & dev->ports[2].read_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 2UL, & dev->ports[2].poll_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 4UL, & dev->ports[4].read_interval);
  saa7164_histogram_print((struct saa7164_port *)(& dev->ports) + 5UL, & dev->ports[5].poll_interval);
  saa7164_shutdown(dev);
  }
  if ((unsigned int )saa7164_boards[dev->board].porta == 1U) {
    {
    saa7164_dvb_unregister((struct saa7164_port *)(& dev->ports));
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].portb == 1U) {
    {
    saa7164_dvb_unregister((struct saa7164_port *)(& dev->ports) + 1UL);
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].portc == 2U) {
    {
    saa7164_encoder_unregister((struct saa7164_port *)(& dev->ports) + 2UL);
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].portd == 2U) {
    {
    saa7164_encoder_unregister((struct saa7164_port *)(& dev->ports) + 3UL);
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].porte == 3U) {
    {
    saa7164_vbi_unregister((struct saa7164_port *)(& dev->ports) + 4UL);
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].portf == 3U) {
    {
    saa7164_vbi_unregister((struct saa7164_port *)(& dev->ports) + 5UL);
    }
  } else {
  }
  {
  saa7164_i2c_unregister((struct saa7164_i2c *)(& dev->i2c_bus));
  saa7164_i2c_unregister((struct saa7164_i2c *)(& dev->i2c_bus) + 1UL);
  saa7164_i2c_unregister((struct saa7164_i2c *)(& dev->i2c_bus) + 2UL);
  pci_disable_device(pci_dev);
  ldv_free_irq_34(pci_dev->irq, (void *)dev);
  ldv_mutex_lock_35(& devlist);
  list_del(& dev->devlist);
  ldv_mutex_unlock_36(& devlist);
  saa7164_dev_unregister(dev);
  v4l2_device_unregister(& dev->v4l2_dev);
  kfree((void const *)dev);
  }
  return;
}
}
static struct pci_device_id saa7164_pci_tbl[2U] = { {4401U, 29028U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver saa7164_pci_driver =
     {{0, 0}, "saa7164", (struct pci_device_id const *)(& saa7164_pci_tbl), & saa7164_initdev,
    & saa7164_finidev, (int (*)(struct pci_dev * , pm_message_t ))0, 0, 0, (int (*)(struct pci_dev * ))0,
    0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                    {0, 0}}};
static int saa7164_init(void)
{
  int tmp ;
  {
  {
  printk("\016saa7164 driver loaded\n");
  saa7164_proc_create();
  tmp = ldv___pci_register_driver_37(& saa7164_pci_driver, & __this_module, "saa7164");
  }
  return (tmp);
}
}
static void saa7164_fini(void)
{
  {
  {
  remove_proc_entry("saa7164", (struct proc_dir_entry *)0);
  ldv_pci_unregister_driver_38(& saa7164_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_saa7164_fini_8_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_saa7164_init_8_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_6_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_file_operations_instance_3_8_4(void) ;
void ldv_dispatch_deregister_io_instance_8_8_5(void) ;
void ldv_dispatch_irq_deregister_4_1(int arg0 ) ;
void ldv_dispatch_irq_register_5_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_7_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_file_operations_instance_3_8_6(void) ;
void ldv_dispatch_register_io_instance_8_8_7(void) ;
void ldv_entry_EMGentry_8(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_io_instance_callback_3_21(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_6(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_14(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_v4l2_file_operations_io_instance_3(void *arg0 ) ;
long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_0_container_file_operations ;
char *ldv_0_ldv_param_22_1_default ;
long long *ldv_0_ldv_param_22_3_default ;
char *ldv_0_ldv_param_4_1_default ;
long long *ldv_0_ldv_param_4_3_default ;
long long ldv_0_ldv_param_5_1_default ;
int ldv_0_ldv_param_5_2_default ;
struct file *ldv_0_resource_file ;
struct inode *ldv_0_resource_inode ;
int ldv_0_ret_default ;
unsigned long ldv_0_size_cnt_write_size ;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
void *ldv_1_data_data ;
int ldv_1_line_line ;
enum irqreturn ldv_1_ret_val_default ;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
int ldv_3_ldv_param_17_2_default ;
char *ldv_3_ldv_param_21_1_default ;
unsigned long ldv_3_ldv_param_21_2_default ;
long long *ldv_3_ldv_param_21_3_default ;
unsigned int ldv_3_ldv_param_24_1_default ;
unsigned long ldv_3_ldv_param_24_2_default ;
unsigned int *ldv_3_ldv_param_34_2_default ;
unsigned long long *ldv_3_ldv_param_37_2_default ;
unsigned int ldv_3_ldv_param_48_2_default ;
unsigned long long ldv_3_ldv_param_51_2_default ;
struct file *ldv_3_resource_file ;
struct i2c_msg *ldv_3_resource_struct_i2c_msg_ptr ;
struct poll_table_struct *ldv_3_resource_struct_poll_table_struct_ptr ;
struct v4l2_capability *ldv_3_resource_struct_v4l2_capability_ptr ;
struct v4l2_control *ldv_3_resource_struct_v4l2_control_ptr ;
struct v4l2_ext_controls *ldv_3_resource_struct_v4l2_ext_controls_ptr ;
struct v4l2_fmtdesc *ldv_3_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_3_resource_struct_v4l2_format_ptr ;
struct v4l2_frequency *ldv_3_resource_struct_v4l2_frequency_ptr ;
struct v4l2_input *ldv_3_resource_struct_v4l2_input_ptr ;
struct v4l2_queryctrl *ldv_3_resource_struct_v4l2_queryctrl_ptr ;
struct v4l2_tuner *ldv_3_resource_struct_v4l2_tuner_ptr ;
int ldv_3_ret_default ;
void (*ldv_8_exit_saa7164_fini_default)(void) ;
int (*ldv_8_init_saa7164_init_default)(void) ;
int ldv_8_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_8 ;
long long (*ldv_0_callback_llseek)(struct file * , long long , int ) = & seq_lseek;
long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) = & seq_read;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) = & saa7164_irq;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) = & seq_read;
void (*ldv_8_exit_saa7164_fini_default)(void) = & saa7164_fini;
int (*ldv_8_init_saa7164_init_default)(void) = & saa7164_init;
void ldv_EMGentry_exit_saa7164_fini_8_2(void (*arg0)(void) )
{
  {
  {
  saa7164_fini();
  }
  return;
}
}
int ldv_EMGentry_init_saa7164_init_8_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = saa7164_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_7_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_7_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_7_2(ldv_7_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void *ldv_malloc(size_t size ) ;
void ldv_allocate_external_0(void)
{
  {
  {
  ldv_0_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_0_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_0_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_0_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_0_resource_file = ldv_malloc(sizeof(struct file));
  ldv_0_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_1_data_data = ldv_malloc(0UL);
  ldv_1_thread_thread = (enum irqreturn (*)(int , void * ))0;
  ldv_2_resource_dev = ldv_malloc(sizeof(struct pci_dev));
  ldv_3_ldv_param_21_1_default = ldv_malloc(sizeof(char));
  ldv_3_ldv_param_21_3_default = ldv_malloc(sizeof(long long));
  ldv_3_ldv_param_34_2_default = ldv_malloc(sizeof(unsigned int));
  ldv_3_ldv_param_37_2_default = ldv_malloc(sizeof(unsigned long long));
  ldv_3_resource_file = ldv_malloc(sizeof(struct file));
  ldv_3_resource_struct_i2c_msg_ptr = ldv_malloc(sizeof(struct i2c_msg));
  ldv_3_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_3_resource_struct_v4l2_capability_ptr = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_3_resource_struct_v4l2_control_ptr = ldv_malloc(sizeof(struct v4l2_control));
  ldv_3_resource_struct_v4l2_ext_controls_ptr = ldv_malloc(sizeof(struct v4l2_ext_controls));
  ldv_3_resource_struct_v4l2_fmtdesc_ptr = ldv_malloc(sizeof(struct v4l2_fmtdesc));
  ldv_3_resource_struct_v4l2_format_ptr = ldv_malloc(sizeof(struct v4l2_format));
  ldv_3_resource_struct_v4l2_frequency_ptr = ldv_malloc(sizeof(struct v4l2_frequency));
  ldv_3_resource_struct_v4l2_input_ptr = ldv_malloc(sizeof(struct v4l2_input));
  ldv_3_resource_struct_v4l2_queryctrl_ptr = ldv_malloc(sizeof(struct v4l2_queryctrl));
  ldv_3_resource_struct_v4l2_tuner_ptr = ldv_malloc(sizeof(struct v4l2_tuner));
  }
  return;
}
}
void ldv_dispatch_deregister_6_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_3_8_4(void)
{
  {
  {
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_8_8_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_4_1(int arg0 )
{
  {
  {
  ldv_1_line_line = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_5_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_1_line_line = arg0;
  ldv_1_callback_handler = arg1;
  ldv_1_thread_thread = arg2;
  ldv_1_data_data = arg3;
  ldv_switch_automaton_state_1_6();
  }
  return;
}
}
void ldv_dispatch_register_7_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_8_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_8_8_7(void)
{
  {
  {
  ldv_switch_automaton_state_3_14();
  }
  return;
}
}
void ldv_entry_EMGentry_8(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_8 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_8 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_8 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_8 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_8 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_8 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_8 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_8 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_8 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_saa7164_fini_8_2(ldv_8_exit_saa7164_fini_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_8 = 11;
  }
  goto ldv_50560;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_saa7164_fini_8_2(ldv_8_exit_saa7164_fini_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_8 = 11;
  }
  goto ldv_50560;
  case_4:
  {
  ldv_assume(ldv_statevar_0 == 7);
  ldv_dispatch_deregister_file_operations_instance_3_8_4();
  ldv_statevar_8 = 2;
  }
  goto ldv_50560;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 6);
  ldv_dispatch_deregister_io_instance_8_8_5();
  ldv_statevar_8 = 4;
  }
  goto ldv_50560;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 15);
  ldv_dispatch_register_file_operations_instance_3_8_6();
  ldv_statevar_8 = 5;
  }
  goto ldv_50560;
  case_7:
  {
  ldv_assume(ldv_statevar_3 == 14);
  ldv_dispatch_register_io_instance_8_8_7();
  ldv_statevar_8 = 6;
  }
  goto ldv_50560;
  case_8:
  {
  ldv_assume(ldv_8_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_8 = 3;
  } else {
    ldv_statevar_8 = 7;
  }
  goto ldv_50560;
  case_10:
  {
  ldv_assume(ldv_8_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_8 = 11;
  }
  goto ldv_50560;
  case_11:
  {
  ldv_assume(ldv_statevar_2 == 20);
  ldv_8_ret_default = ldv_EMGentry_init_saa7164_init_8_11(ldv_8_init_saa7164_init_default);
  ldv_8_ret_default = ldv_post_init(ldv_8_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_8 = 8;
  } else {
    ldv_statevar_8 = 10;
  }
  goto ldv_50560;
  switch_default: ;
  switch_break: ;
  }
  ldv_50560: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_8 = 11;
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  ldv_statevar_1 = 6;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  ldv_50579:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_8((void *)0);
  }
  goto ldv_50573;
  case_1:
  {
  ldv_file_operations_file_operations_instance_0((void *)0);
  }
  goto ldv_50573;
  case_2:
  {
  ldv_interrupt_interrupt_instance_1((void *)0);
  }
  goto ldv_50573;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_50573;
  case_4:
  {
  ldv_v4l2_file_operations_io_instance_3((void *)0);
  }
  goto ldv_50573;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_50573: ;
  goto ldv_50579;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_0 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_0 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_0 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_0 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_0 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_0 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_0 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_50584;
  case_2:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  ldv_statevar_0 = 1;
  }
  goto ldv_50584;
  case_3:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_50584;
  case_5:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_50584;
  case_7:
  {
  ldv_free((void *)ldv_0_resource_file);
  ldv_free((void *)ldv_0_resource_inode);
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  }
  goto ldv_50584;
  case_9:
  {
  ldv_assume(ldv_0_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_50584;
  case_11:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_50584;
  case_12:
  {
  ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                              ldv_0_resource_inode,
                                                              ldv_0_resource_file);
  ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_0 = 9;
  } else {
    ldv_statevar_0 = 11;
  }
  goto ldv_50584;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_0_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_0_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_50584;
  case_15: ;
  goto ldv_50584;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_50584;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_0 = 5;
  } else {
    ldv_statevar_0 = 23;
  }
  goto ldv_50584;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_0_22(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_22_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_22_3_default);
  ldv_free((void *)ldv_0_ldv_param_22_1_default);
  ldv_free((void *)ldv_0_ldv_param_22_3_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_50584;
  switch_default: ;
  switch_break: ;
  }
  ldv_50584: ;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = saa7164_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_4_line_line ;
  {
  {
  ldv_4_line_line = arg1;
  ldv_assume(ldv_statevar_1 == 2);
  ldv_dispatch_irq_deregister_4_1(ldv_4_line_line);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = saa7164_irq(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_1(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
  ldv_statevar_1 = 6;
  }
  goto ldv_50669;
  case_4:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_1_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
    }
  } else {
  }
  ldv_statevar_1 = 6;
  goto ldv_50669;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                             ldv_1_line_line, ldv_1_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 2;
  } else {
    ldv_statevar_1 = 4;
  }
  goto ldv_50669;
  case_6: ;
  goto ldv_50669;
  switch_default: ;
  switch_break: ;
  }
  ldv_50669: ;
  return;
}
}
void ldv_io_instance_callback_3_21(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = saa7164_initdev(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  saa7164_finidev(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_2 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_50730;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 2);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_50730;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 2;
  goto ldv_50730;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50730;
  case_5: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 4;
  goto ldv_50730;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_50730;
  case_7: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 6;
  }
  goto ldv_50730;
  case_8: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                     ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  ldv_statevar_2 = 7;
  }
  goto ldv_50730;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50730;
  case_10:
  ldv_statevar_2 = 9;
  goto ldv_50730;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_50730;
  case_14:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_50730;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_50730;
  case_17:
  {
  ldv_assume(ldv_statevar_1 == 6);
  ldv_pre_probe();
  ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                  ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 14;
  } else {
    ldv_statevar_2 = 16;
  }
  goto ldv_50730;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_2 = 12;
  } else {
    ldv_statevar_2 = 17;
  }
  goto ldv_50730;
  case_20: ;
  goto ldv_50730;
  switch_default: ;
  switch_break: ;
  }
  ldv_50730: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_6_pci_driver_pci_driver ;
  {
  {
  ldv_6_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_6_1(ldv_6_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_5_callback_handler)(int , void * ) ;
  void *ldv_5_data_data ;
  int ldv_5_line_line ;
  enum irqreturn (*ldv_5_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_5_line_line = (int )arg1;
    ldv_5_callback_handler = arg2;
    ldv_5_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_5_data_data = arg5;
    ldv_assume(ldv_statevar_1 == 6);
    ldv_dispatch_irq_register_5_2(ldv_5_line_line, ldv_5_callback_handler, ldv_5_thread_thread,
                                  ldv_5_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (18);
  case_2: ;
  return (20);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (18);
  case_3: ;
  return (20);
  case_4: ;
  return (22);
  case_5: ;
  return (25);
  case_6: ;
  return (27);
  case_7: ;
  return (28);
  case_8: ;
  return (29);
  case_9: ;
  return (30);
  case_10: ;
  return (31);
  case_11: ;
  return (32);
  case_12: ;
  return (33);
  case_13: ;
  return (35);
  case_14: ;
  return (38);
  case_15: ;
  return (40);
  case_16: ;
  return (41);
  case_17: ;
  return (42);
  case_18: ;
  return (43);
  case_19: ;
  return (44);
  case_20: ;
  return (45);
  case_21: ;
  return (46);
  case_22: ;
  return (47);
  case_23: ;
  return (49);
  case_24: ;
  return (52);
  case_25: ;
  return (54);
  case_26: ;
  return (55);
  case_27: ;
  return (56);
  case_28: ;
  return (57);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_15(void)
{
  {
  ldv_statevar_0 = 14;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 6;
  return;
}
}
void ldv_switch_automaton_state_1_6(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_11(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  return;
}
}
void ldv_switch_automaton_state_2_20(void)
{
  {
  ldv_statevar_2 = 19;
  return;
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_11(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_12(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_devlist(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_devlist(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_33(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_34(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_devlist(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_devlist(ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_37(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_38(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
static int ldv_dev_set_drvdata_18(struct device *dev , void *data ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_18(& dev->dev, data);
  }
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
int saa7164_api_i2c_read(struct saa7164_i2c *bus , u8 addr , u32 reglen , u8 *reg ,
                         u32 datalen , u8 *data ) ;
int saa7164_api_i2c_write(struct saa7164_i2c *bus , u8 addr , u32 datalen , u8 *data ) ;
static int i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct saa7164_i2c *bus ;
  struct saa7164_dev *dev ;
  int i ;
  int retval ;
  {
  bus = (struct saa7164_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  retval = 0;
  if ((saa_debug & 16U) != 0U) {
    {
    printk("\017%s: %s(num = %d)\n", (char *)(& dev->name), "i2c_xfer", num);
    }
  } else {
  }
  i = 0;
  goto ldv_49293;
  ldv_49292: ;
  if ((saa_debug & 16U) != 0U) {
    {
    printk("\017%s: %s(num = %d) addr = 0x%02x  len = 0x%x\n", (char *)(& dev->name),
           "i2c_xfer", num, (int )(msgs + (unsigned long )i)->addr, (int )(msgs + (unsigned long )i)->len);
    }
  } else {
  }
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    {
    printk("\v%s() Unsupported - Yet\n", "i2c_xfer");
    }
    goto ldv_49290;
  } else
  if ((i + 1 < num && (int )(msgs + ((unsigned long )i + 1UL))->flags & 1) && (int )(msgs + (unsigned long )i)->addr == (int )(msgs + ((unsigned long )i + 1UL))->addr) {
    {
    retval = saa7164_api_i2c_read(bus, (int )((u8 )(msgs + (unsigned long )i)->addr),
                                  (u32 )(msgs + (unsigned long )i)->len, (msgs + (unsigned long )i)->buf,
                                  (u32 )(msgs + ((unsigned long )i + 1UL))->len, (msgs + ((unsigned long )i + 1UL))->buf);
    i = i + 1;
    }
    if (retval < 0) {
      goto err;
    } else {
    }
  } else {
    {
    retval = saa7164_api_i2c_write(bus, (int )((u8 )(msgs + (unsigned long )i)->addr),
                                   (u32 )(msgs + (unsigned long )i)->len, (msgs + (unsigned long )i)->buf);
    }
  }
  if (retval < 0) {
    goto err;
  } else {
  }
  ldv_49290:
  i = i + 1;
  ldv_49293: ;
  if (i < num) {
    goto ldv_49292;
  } else {
  }
  return (num);
  err: ;
  return (retval);
}
}
static u32 saa7164_functionality(struct i2c_adapter *adap )
{
  {
  return (1U);
}
}
static struct i2c_algorithm saa7164_i2c_algo_template = {& i2c_xfer, 0, & saa7164_functionality};
static struct i2c_adapter saa7164_i2c_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& saa7164_i2c_algo_template),
    0, {{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {0}, 0, 0, 0, 0, 0, 0, 0}, 0,
    0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0,
                                                                 0UL}}, {{0, 0}, 0UL,
                                                                         0, 0, 0UL,
                                                                         0, 0, 0,
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
                                                                          (char)0},
                                                                         {0, {0, 0},
                                                                          0, 0, 0UL}},
                                              0, 0}, 0U, 0U, 0U, 0U, 0U}, 0, 0, {{0},
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
        0, 0, 0, {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                          0U, 0U,
                                                                          0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
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
                                                                            (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {0},
                  {0}, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL,
                  0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0,
        {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
        0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'s', 'a', 'a', '7', '1', '6', '4', '\000'},
    {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                      {0, 0}, 0, 0,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}},
    {0, 0}, 0};
static struct i2c_client saa7164_i2c_client_template = {(unsigned short)0, (unsigned short)0, {'s', 'a', 'a', '7', '1', '6', '4', ' ',
                                           'i', 'n', 't', 'e', 'r', 'n', 'a', 'l',
                                           '\000'}, 0, {0, 0, {0, {0, 0}, 0, 0, 0,
                                                               0, {{0}}, {{{0L}, {0,
                                                                                  0},
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}},
                                                                          {{0, 0},
                                                                           0UL, 0,
                                                                           0, 0UL,
                                                                           0, 0, 0,
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
                                                                            (char)0},
                                                                           {0, {0,
                                                                                0},
                                                                            0, 0,
                                                                            0UL}},
                                                                          0, 0}, 0U,
                                                               0U, 0U, 0U, 0U}, 0,
                                                        0, {{0}, {{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                            {0, 0}, 0, 0, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}},
                                                        0, 0, 0, {{0}, 0U, 0U, (_Bool)0,
                                                                  (_Bool)0, (_Bool)0,
                                                                  (_Bool)0, {{{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                  {0, 0}, {0U, {{{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0}}},
                                                                  0, (_Bool)0, (_Bool)0,
                                                                  {{0, 0}, 0UL, 0,
                                                                   0, 0UL, 0, 0, 0,
                                                                   {(char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0},
                                                                   {0, {0, 0}, 0,
                                                                    0, 0UL}}, 0UL,
                                                                  {{0L}, {0, 0}, 0,
                                                                   {0, {0, 0}, 0,
                                                                    0, 0UL}}, {{{{{{0U}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}},
                                                                  {0}, {0}, 0U, 0U,
                                                                  0U, 0U, 0U, 0U,
                                                                  0U, 0U, 0U, 0U,
                                                                  0U, 0, 0, 0, 0,
                                                                  0UL, 0UL, 0UL, 0UL,
                                                                  0, 0}, 0, 0, 0,
                                                        0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                0},
                                                        0, {0}, 0U, 0U, {{{{{0U}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                        {0, 0}, {0, {0, 0}, {{0}}},
                                                        0, 0, 0, 0, (_Bool)0, (_Bool)0},
    0, {0, 0}};
int saa7164_i2c_register(struct saa7164_i2c *bus )
{
  struct saa7164_dev *dev ;
  {
  dev = bus->dev;
  if ((saa_debug & 16U) != 0U) {
    {
    printk("\017%s: %s(bus = %d)\n", (char *)(& dev->name), "saa7164_i2c_register",
           (unsigned int )bus->nr);
    }
  } else {
  }
  {
  bus->i2c_adap = saa7164_i2c_adap_template;
  bus->i2c_client = saa7164_i2c_client_template;
  bus->i2c_adap.dev.parent = & (dev->pci)->dev;
  strlcpy((char *)(& bus->i2c_adap.name), (char const *)(& (bus->dev)->name), 48UL);
  bus->i2c_adap.algo_data = (void *)bus;
  i2c_set_adapdata(& bus->i2c_adap, (void *)bus);
  i2c_add_adapter(& bus->i2c_adap);
  bus->i2c_client.adapter = & bus->i2c_adap;
  }
  if (bus->i2c_rc != 0U) {
    {
    printk("\v%s: i2c bus %d register FAILED\n", (char *)(& dev->name), (unsigned int )bus->nr);
    }
  } else {
  }
  return ((int )bus->i2c_rc);
}
}
int saa7164_i2c_unregister(struct saa7164_i2c *bus )
{
  {
  {
  i2c_del_adapter(& bus->i2c_adap);
  }
  return (0);
}
}
void ldv_io_instance_callback_3_17(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_io_instance_callback_3_4(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 ) ;
unsigned int (*ldv_3_callback_functionality)(struct i2c_adapter * ) ;
int (*ldv_3_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
struct i2c_adapter *ldv_3_resource_struct_i2c_adapter ;
unsigned int (*ldv_3_callback_functionality)(struct i2c_adapter * ) = & saa7164_functionality;
int (*ldv_3_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) = & i2c_xfer;
void ldv_io_instance_callback_3_17(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_4(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 )
{
  {
  {
  saa7164_functionality(arg1);
  }
  return;
}
}
static int ldv_dev_set_drvdata_18(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35___0(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_saa7164_dvb(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_saa7164_dvb(struct mutex *lock ) ;
static void ldv_mutex_unlock_28___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36___0(struct mutex *ldv_func_arg1 ) ;
extern int dvb_register_adapter(struct dvb_adapter * , char const * , struct module * ,
                                struct device * , short * ) ;
extern int dvb_unregister_adapter(struct dvb_adapter * ) ;
extern int dvb_dmxdev_init(struct dmxdev * , struct dvb_adapter * ) ;
extern void dvb_dmxdev_release(struct dmxdev * ) ;
extern int dvb_dmx_init(struct dvb_demux * ) ;
extern void dvb_dmx_release(struct dvb_demux * ) ;
extern int __request_module(bool , char const * , ...) ;
extern void *__symbol_get(char const * ) ;
extern void __symbol_put(char const * ) ;
extern void dvb_net_release(struct dvb_net * ) ;
extern int dvb_net_init(struct dvb_adapter * , struct dvb_net * , struct dmx_demux * ) ;
extern int dvb_register_frontend(struct dvb_adapter * , struct dvb_frontend * ) ;
extern int dvb_unregister_frontend(struct dvb_frontend * ) ;
extern void dvb_frontend_detach(struct dvb_frontend * ) ;
int saa7164_api_transition_port(struct saa7164_port *port , u8 mode ) ;
struct saa7164_buffer *saa7164_buffer_alloc(struct saa7164_port *port , u32 len ) ;
int saa7164_buffer_dealloc(struct saa7164_buffer *buf ) ;
int saa7164_buffer_cfg_port(struct saa7164_port *port ) ;
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static struct tda10048_config hauppauge_hvr2200_1_config =
     {8U, 1U, 200U, 1U, 3300U, 3500U, 4000U, 16000U, (unsigned char)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct tda10048_config hauppauge_hvr2200_2_config =
     {9U, 1U, 200U, 1U, 3300U, 3500U, 4000U, 16000U, (unsigned char)0, (_Bool)0, (_Bool)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct tda18271_std_map hauppauge_tda18271_std_map =
     {{(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U},
    {(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U},
    {(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U},
    {(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U},
    {3250U, 3U, 3U, 0U, 6U, 55U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U}, {(unsigned short)0,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U},
    {4000U, 3U, 0U, 0U, 6U, 55U}, {(unsigned short)0, 0U, 0U, 0U, 0U, 0U}, {(unsigned short)0,
                                                                            0U, 0U,
                                                                            0U, 0U,
                                                                            0U}};
static struct tda18271_config hauppauge_hvr22x0_tuner_config =
     {& hauppauge_tda18271_std_map, 0, 1, 0, 0, 0U, 0U, 0U};
static struct tda18271_config hauppauge_hvr22x0s_tuner_config =
     {& hauppauge_tda18271_std_map, 1, 1, 1, 0, 1U, 0U, 0U};
static struct s5h1411_config hauppauge_s5h1411_config = {1U, 1U, 1U, 4000U, 3250U, 1U, 1U};
static int saa7164_dvb_stop_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 0);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() stop transition failed, ret = 0x%x\n", "saa7164_dvb_stop_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 8U) != 0U) {
      {
      printk("\017%s: %s()    Stopped\n", (char *)(& dev->name), "saa7164_dvb_stop_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_dvb_acquire_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 1);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() acquire transition failed, ret = 0x%x\n", "saa7164_dvb_acquire_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 8U) != 0U) {
      {
      printk("\017%s: %s() Acquired\n", (char *)(& dev->name), "saa7164_dvb_acquire_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_dvb_pause_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 2);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() pause transition failed, ret = 0x%x\n", "saa7164_dvb_pause_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 8U) != 0U) {
      {
      printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_dvb_pause_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_dvb_stop_streaming(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct list_head *p ;
  struct list_head *q ;
  int ret ;
  struct list_head const *__mptr ;
  {
  dev = port->dev;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_dvb_stop_streaming",
           port->nr);
    }
  } else {
  }
  {
  ret = saa7164_dvb_pause_port(port);
  ret = saa7164_dvb_acquire_port(port);
  ret = saa7164_dvb_stop_port(port);
  ldv_mutex_lock_27___0(& port->dmaqueue_lock);
  p = port->dmaqueue.list.next;
  q = p->next;
  }
  goto ldv_49486;
  ldv_49485:
  __mptr = (struct list_head const *)p;
  buf = (struct saa7164_buffer *)__mptr;
  buf->flags = 1;
  p = q;
  q = p->next;
  ldv_49486: ;
  if ((unsigned long )p != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49485;
  } else {
  }
  {
  ldv_mutex_unlock_28___0(& port->dmaqueue_lock);
  }
  return (ret);
}
}
static int saa7164_dvb_start_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  int result ;
  {
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_dvb_start_port",
           port->nr);
    }
  } else {
  }
  {
  saa7164_buffer_cfg_port(port);
  result = saa7164_api_transition_port(port, 1);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() acquire transition failed, res = 0x%x\n", "saa7164_dvb_start_port",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() acquire/forced stop transition failed, res = 0x%x\n", "saa7164_dvb_start_port",
             result);
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s()   Acquired\n", (char *)(& dev->name), "saa7164_dvb_start_port");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 2);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() pause transition failed, res = 0x%x\n", "saa7164_dvb_start_port",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() pause/forced stop transition failed, res = 0x%x\n", "saa7164_dvb_start_port",
             result);
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_dvb_start_port");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 3);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() run transition failed, result = 0x%x\n", "saa7164_dvb_start_port",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() run/forced stop transition failed, res = 0x%x\n", "saa7164_dvb_start_port",
             result);
      }
    } else {
    }
    ret = -5;
  } else
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s()   Running\n", (char *)(& dev->name), "saa7164_dvb_start_port");
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int saa7164_dvb_start_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct saa7164_port *port ;
  struct saa7164_dvb *dvb ;
  struct saa7164_dev *dev ;
  int ret ;
  int tmp ;
  {
  demux = feed->demux;
  port = (struct saa7164_port *)demux->priv;
  dvb = & port->dvb;
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_dvb_start_feed",
           port->nr);
    }
  } else {
  }
  if ((unsigned long )demux->dmx.frontend == (unsigned long )((struct dmx_frontend *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )dvb != (unsigned long )((struct saa7164_dvb *)0)) {
    {
    ldv_mutex_lock_29___0(& dvb->lock);
    tmp = dvb->feeding;
    dvb->feeding = dvb->feeding + 1;
    }
    if (tmp == 0) {
      {
      ret = saa7164_dvb_start_port(port);
      }
    } else {
    }
    {
    ldv_mutex_unlock_30___0(& dvb->lock);
    }
    if ((saa_debug & 8U) != 0U) {
      {
      printk("\017%s: %s(port=%d) now feeding = %d\n", (char *)(& dev->name), "saa7164_dvb_start_feed",
             port->nr, dvb->feeding);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int saa7164_dvb_stop_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct saa7164_port *port ;
  struct saa7164_dvb *dvb ;
  struct saa7164_dev *dev ;
  int ret ;
  {
  demux = feed->demux;
  port = (struct saa7164_port *)demux->priv;
  dvb = & port->dvb;
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_dvb_stop_feed",
           port->nr);
    }
  } else {
  }
  if ((unsigned long )dvb != (unsigned long )((struct saa7164_dvb *)0)) {
    {
    ldv_mutex_lock_31___0(& dvb->lock);
    dvb->feeding = dvb->feeding - 1;
    }
    if (dvb->feeding == 0) {
      {
      ret = saa7164_dvb_stop_streaming(port);
      }
    } else {
    }
    {
    ldv_mutex_unlock_32___0(& dvb->lock);
    }
    if ((saa_debug & 8U) != 0U) {
      {
      printk("\017%s: %s(port=%d) now feeding = %d\n", (char *)(& dev->name), "saa7164_dvb_stop_feed",
             port->nr, dvb->feeding);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int dvb_register(struct saa7164_port *port )
{
  struct saa7164_dvb *dvb ;
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  int result ;
  int i ;
  {
  dvb = & port->dvb;
  dev = port->dev;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "dvb_register", port->nr);
    }
  } else {
  }
  if ((unsigned int )port->type != 1U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-dvb.c"),
                         "i" (293), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (port->hwcfg.BARLocation == 0U) {
    {
    result = -12;
    printk("\v%s: dvb_register_adapter failed (errno = %d), NO PCI configuration\n",
           (char *)"saa7164", result);
    }
    goto fail_adapter;
  } else {
  }
  port->hw_streamingparams.bitspersample = 8U;
  port->hw_streamingparams.samplesperline = 188U;
  port->hw_streamingparams.numberoflines = 312U;
  port->hw_streamingparams.pitch = 188U;
  port->hw_streamingparams.linethreshold = 0U;
  port->hw_streamingparams.pagetablelistvirt = (u64 **)0ULL;
  port->hw_streamingparams.pagetablelistphys = (u64 *)0ULL;
  port->hw_streamingparams.numpagetables = 16U;
  port->hw_streamingparams.numpagetableentries = (u32 )port->hwcfg.buffercount;
  i = 0;
  goto ldv_49525;
  ldv_49524:
  {
  buf = saa7164_buffer_alloc(port, port->hw_streamingparams.numberoflines * port->hw_streamingparams.pitch);
  }
  if ((unsigned long )buf == (unsigned long )((struct saa7164_buffer *)0)) {
    {
    result = -12;
    printk("\v%s: dvb_register_adapter failed (errno = %d), unable to allocate buffers\n",
           (char *)"saa7164", result);
    }
    goto fail_adapter;
  } else {
  }
  {
  ldv_mutex_lock_33(& port->dmaqueue_lock);
  list_add_tail(& buf->list, & port->dmaqueue.list);
  ldv_mutex_unlock_34(& port->dmaqueue_lock);
  i = i + 1;
  }
  ldv_49525: ;
  if (i < (int )port->hwcfg.buffercount) {
    goto ldv_49524;
  } else {
  }
  {
  result = dvb_register_adapter(& dvb->adapter, "saa7164", & __this_module, & (dev->pci)->dev,
                                (short *)(& adapter_nr));
  }
  if (result < 0) {
    {
    printk("\v%s: dvb_register_adapter failed (errno = %d)\n", (char *)"saa7164",
           result);
    }
    goto fail_adapter;
  } else {
  }
  {
  dvb->adapter.priv = (void *)port;
  result = dvb_register_frontend(& dvb->adapter, dvb->frontend);
  }
  if (result < 0) {
    {
    printk("\v%s: dvb_register_frontend failed (errno = %d)\n", (char *)"saa7164",
           result);
    }
    goto fail_frontend;
  } else {
  }
  {
  dvb->demux.dmx.capabilities = 13U;
  dvb->demux.priv = (void *)port;
  dvb->demux.filternum = 256;
  dvb->demux.feednum = 256;
  dvb->demux.start_feed = & saa7164_dvb_start_feed;
  dvb->demux.stop_feed = & saa7164_dvb_stop_feed;
  result = dvb_dmx_init(& dvb->demux);
  }
  if (result < 0) {
    {
    printk("\v%s: dvb_dmx_init failed (errno = %d)\n", (char *)"saa7164", result);
    }
    goto fail_dmx;
  } else {
  }
  {
  dvb->dmxdev.filternum = 256;
  dvb->dmxdev.demux = & dvb->demux.dmx;
  dvb->dmxdev.capabilities = 0;
  result = dvb_dmxdev_init(& dvb->dmxdev, & dvb->adapter);
  }
  if (result < 0) {
    {
    printk("\v%s: dvb_dmxdev_init failed (errno = %d)\n", (char *)"saa7164", result);
    }
    goto fail_dmxdev;
  } else {
  }
  {
  dvb->fe_hw.source = 1;
  result = (*(dvb->demux.dmx.add_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  }
  if (result < 0) {
    {
    printk("\v%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\n", (char *)"saa7164",
           result);
    }
    goto fail_fe_hw;
  } else {
  }
  {
  dvb->fe_mem.source = 0;
  result = (*(dvb->demux.dmx.add_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  }
  if (result < 0) {
    {
    printk("\v%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\n", (char *)"saa7164",
           result);
    }
    goto fail_fe_mem;
  } else {
  }
  {
  result = (*(dvb->demux.dmx.connect_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  }
  if (result < 0) {
    {
    printk("\v%s: connect_frontend failed (errno = %d)\n", (char *)"saa7164", result);
    }
    goto fail_fe_conn;
  } else {
  }
  {
  dvb_net_init(& dvb->adapter, & dvb->net, & dvb->demux.dmx);
  }
  return (0);
  fail_fe_conn:
  {
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  }
  fail_fe_mem:
  {
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  }
  fail_fe_hw:
  {
  dvb_dmxdev_release(& dvb->dmxdev);
  }
  fail_dmxdev:
  {
  dvb_dmx_release(& dvb->demux);
  }
  fail_dmx:
  {
  dvb_unregister_frontend(dvb->frontend);
  }
  fail_frontend:
  {
  dvb_frontend_detach(dvb->frontend);
  dvb_unregister_adapter(& dvb->adapter);
  }
  fail_adapter: ;
  return (result);
}
}
int saa7164_dvb_unregister(struct saa7164_port *port )
{
  struct saa7164_dvb *dvb ;
  struct saa7164_dev *dev ;
  struct saa7164_buffer *b ;
  struct list_head *c ;
  struct list_head *n ;
  struct list_head const *__mptr ;
  {
  dvb = & port->dvb;
  dev = port->dev;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_dvb_unregister");
    }
  } else {
  }
  if ((unsigned int )port->type != 1U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-dvb.c"),
                         "i" (436), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ldv_mutex_lock_35___0(& port->dmaqueue_lock);
  c = port->dmaqueue.list.next;
  n = c->next;
  }
  goto ldv_49545;
  ldv_49544:
  {
  __mptr = (struct list_head const *)c;
  b = (struct saa7164_buffer *)__mptr;
  list_del(c);
  saa7164_buffer_dealloc(b);
  c = n;
  n = c->next;
  }
  ldv_49545: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49544;
  } else {
  }
  {
  ldv_mutex_unlock_36___0(& port->dmaqueue_lock);
  }
  if ((unsigned long )dvb->frontend == (unsigned long )((struct dvb_frontend *)0)) {
    return (0);
  } else {
  }
  {
  dvb_net_release(& dvb->net);
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  dvb_dmxdev_release(& dvb->dmxdev);
  dvb_dmx_release(& dvb->demux);
  dvb_unregister_frontend(dvb->frontend);
  dvb_frontend_detach(dvb->frontend);
  dvb_unregister_adapter(& dvb->adapter);
  }
  return (0);
}
}
int saa7164_dvb_register(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_dvb *dvb ;
  struct saa7164_i2c *i2c_bus ;
  int ret ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct tda10048_config const * , struct i2c_adapter * ) ;
  void *tmp___0 ;
  struct dvb_frontend *(*tmp___1)(struct tda10048_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *tmp___3 ;
  void *__r___0 ;
  struct dvb_frontend *(*__a___0)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___5 ;
  struct dvb_frontend *(*tmp___6)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___7 ;
  struct dvb_frontend *tmp___8 ;
  void *__r___1 ;
  struct dvb_frontend *(*__a___1)(struct tda10048_config const * , struct i2c_adapter * ) ;
  void *tmp___10 ;
  struct dvb_frontend *(*tmp___11)(struct tda10048_config const * , struct i2c_adapter * ) ;
  void *tmp___12 ;
  struct dvb_frontend *tmp___13 ;
  void *__r___2 ;
  struct dvb_frontend *(*__a___2)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___15 ;
  struct dvb_frontend *(*tmp___16)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___17 ;
  struct dvb_frontend *tmp___18 ;
  void *__r___3 ;
  struct dvb_frontend *(*__a___3)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___20 ;
  struct dvb_frontend *(*tmp___21)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___22 ;
  struct dvb_frontend *tmp___23 ;
  void *__r___4 ;
  struct dvb_frontend *(*__a___4)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___25 ;
  struct dvb_frontend *(*tmp___26)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___27 ;
  struct dvb_frontend *tmp___28 ;
  void *__r___5 ;
  struct dvb_frontend *(*__a___5)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                  struct tda18271_config * ) ;
  void *tmp___30 ;
  struct dvb_frontend *(*tmp___31)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___32 ;
  struct dvb_frontend *tmp___33 ;
  {
  dev = port->dev;
  dvb = & port->dvb;
  i2c_bus = (struct saa7164_i2c *)0;
  if ((saa_debug & 8U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_dvb_register");
    }
  } else {
  }
  {
  if (dev->board == 4U) {
    goto case_4;
  } else {
  }
  if (dev->board == 5U) {
    goto case_5;
  } else {
  }
  if (dev->board == 6U) {
    goto case_6;
  } else {
  }
  if (dev->board == 9U) {
    goto case_9;
  } else {
  }
  if (dev->board == 10U) {
    goto case_10;
  } else {
  }
  if (dev->board == 3U) {
    goto case_3;
  } else {
  }
  if (dev->board == 7U) {
    goto case_7;
  } else {
  }
  if (dev->board == 8U) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_4: ;
  case_5: ;
  case_6: ;
  case_9: ;
  case_10:
  i2c_bus = (struct saa7164_i2c *)(& dev->i2c_bus) + ((unsigned long )port->nr + 1UL);
  {
  if (port->nr == 0) {
    goto case_0;
  } else {
  }
  if (port->nr == 1) {
    goto case_1;
  } else {
  }
  goto switch_break___0;
  case_0:
  {
  __r = (void *)0;
  tmp___2 = __symbol_get("tda10048_attach");
  tmp___1 = (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                       struct i2c_adapter * ))tmp___2) != (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  }
  if (tmp___1) {
  } else {
    {
    __request_module(1, "symbol:tda10048_attach");
    tmp___0 = __symbol_get("tda10048_attach");
    tmp___1 = (struct dvb_frontend *(*)(struct tda10048_config const * , struct i2c_adapter * ))tmp___0;
    }
  }
  __a = tmp___1;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    {
    tmp___3 = (*__a)((struct tda10048_config const *)(& hauppauge_hvr2200_1_config),
                     & i2c_bus->i2c_adap);
    __r = (void *)tmp___3;
    }
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      {
      __symbol_put("tda10048_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol tda10048_attach()\n");
    }
  }
  port->dvb.frontend = (struct dvb_frontend *)__r;
  if ((unsigned long )port->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    {
    __r___0 = (void *)0;
    tmp___7 = __symbol_get("tda18271_attach");
    tmp___6 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , u8 ,
                                                         struct i2c_adapter * , struct tda18271_config * ))tmp___7) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                  u8 ,
                                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                                  struct tda18271_config * ))0);
    }
    if (tmp___6) {
    } else {
      {
      __request_module(1, "symbol:tda18271_attach");
      tmp___5 = __symbol_get("tda18271_attach");
      tmp___6 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                          struct tda18271_config * ))tmp___5;
      }
    }
    __a___0 = tmp___6;
    if ((unsigned long )__a___0 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              u8 ,
                                                                              struct i2c_adapter * ,
                                                                              struct tda18271_config * ))0)) {
      {
      tmp___8 = (*__a___0)(port->dvb.frontend, 96, & i2c_bus->i2c_adap, & hauppauge_hvr22x0_tuner_config);
      __r___0 = (void *)tmp___8;
      }
      if ((unsigned long )__r___0 == (unsigned long )((void *)0)) {
        {
        __symbol_put("tda18271_attach");
        }
      } else {
      }
    } else {
      {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
      }
    }
  } else {
  }
  goto ldv_49567;
  case_1:
  {
  __r___1 = (void *)0;
  tmp___12 = __symbol_get("tda10048_attach");
  tmp___11 = (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                        struct i2c_adapter * ))tmp___12) != (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  }
  if (tmp___11) {
  } else {
    {
    __request_module(1, "symbol:tda10048_attach");
    tmp___10 = __symbol_get("tda10048_attach");
    tmp___11 = (struct dvb_frontend *(*)(struct tda10048_config const * , struct i2c_adapter * ))tmp___10;
    }
  }
  __a___1 = tmp___11;
  if ((unsigned long )__a___1 != (unsigned long )((struct dvb_frontend *(*)(struct tda10048_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    {
    tmp___13 = (*__a___1)((struct tda10048_config const *)(& hauppauge_hvr2200_2_config),
                          & i2c_bus->i2c_adap);
    __r___1 = (void *)tmp___13;
    }
    if ((unsigned long )__r___1 == (unsigned long )((void *)0)) {
      {
      __symbol_put("tda10048_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol tda10048_attach()\n");
    }
  }
  port->dvb.frontend = (struct dvb_frontend *)__r___1;
  if ((unsigned long )port->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    {
    __r___2 = (void *)0;
    tmp___17 = __symbol_get("tda18271_attach");
    tmp___16 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          u8 , struct i2c_adapter * ,
                                                          struct tda18271_config * ))tmp___17) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                             u8 ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             struct tda18271_config * ))0);
    }
    if (tmp___16) {
    } else {
      {
      __request_module(1, "symbol:tda18271_attach");
      tmp___15 = __symbol_get("tda18271_attach");
      tmp___16 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                           struct tda18271_config * ))tmp___15;
      }
    }
    __a___2 = tmp___16;
    if ((unsigned long )__a___2 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              u8 ,
                                                                              struct i2c_adapter * ,
                                                                              struct tda18271_config * ))0)) {
      {
      tmp___18 = (*__a___2)(port->dvb.frontend, 96, & i2c_bus->i2c_adap, & hauppauge_hvr22x0s_tuner_config);
      __r___2 = (void *)tmp___18;
      }
      if ((unsigned long )__r___2 == (unsigned long )((void *)0)) {
        {
        __symbol_put("tda18271_attach");
        }
      } else {
      }
    } else {
      {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
      }
    }
  } else {
  }
  goto ldv_49567;
  switch_break___0: ;
  }
  ldv_49567: ;
  goto ldv_49575;
  case_3: ;
  case_7: ;
  case_8:
  {
  i2c_bus = (struct saa7164_i2c *)(& dev->i2c_bus) + ((unsigned long )port->nr + 1UL);
  __r___3 = (void *)0;
  tmp___22 = __symbol_get("s5h1411_attach");
  tmp___21 = (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                        struct i2c_adapter * ))tmp___22) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  }
  if (tmp___21) {
  } else {
    {
    __request_module(1, "symbol:s5h1411_attach");
    tmp___20 = __symbol_get("s5h1411_attach");
    tmp___21 = (struct dvb_frontend *(*)(struct s5h1411_config const * , struct i2c_adapter * ))tmp___20;
    }
  }
  __a___3 = tmp___21;
  if ((unsigned long )__a___3 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    {
    tmp___23 = (*__a___3)((struct s5h1411_config const *)(& hauppauge_s5h1411_config),
                          & i2c_bus->i2c_adap);
    __r___3 = (void *)tmp___23;
    }
    if ((unsigned long )__r___3 == (unsigned long )((void *)0)) {
      {
      __symbol_put("s5h1411_attach");
      }
    } else {
    }
  } else {
    {
    printk("\vDVB: Unable to find symbol s5h1411_attach()\n");
    }
  }
  port->dvb.frontend = (struct dvb_frontend *)__r___3;
  if ((unsigned long )port->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    if (port->nr == 0) {
      {
      __r___4 = (void *)0;
      tmp___27 = __symbol_get("tda18271_attach");
      tmp___26 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                            u8 , struct i2c_adapter * ,
                                                            struct tda18271_config * ))tmp___27) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
      }
      if (tmp___26) {
      } else {
        {
        __request_module(1, "symbol:tda18271_attach");
        tmp___25 = __symbol_get("tda18271_attach");
        tmp___26 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                             struct tda18271_config * ))tmp___25;
        }
      }
      __a___4 = tmp___26;
      if ((unsigned long )__a___4 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                u8 ,
                                                                                struct i2c_adapter * ,
                                                                                struct tda18271_config * ))0)) {
        {
        tmp___28 = (*__a___4)(port->dvb.frontend, 96, & i2c_bus->i2c_adap, & hauppauge_hvr22x0_tuner_config);
        __r___4 = (void *)tmp___28;
        }
        if ((unsigned long )__r___4 == (unsigned long )((void *)0)) {
          {
          __symbol_put("tda18271_attach");
          }
        } else {
        }
      } else {
        {
        printk("\vDVB: Unable to find symbol tda18271_attach()\n");
        }
      }
    } else {
      {
      __r___5 = (void *)0;
      tmp___32 = __symbol_get("tda18271_attach");
      tmp___31 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                            u8 , struct i2c_adapter * ,
                                                            struct tda18271_config * ))tmp___32) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
      }
      if (tmp___31) {
      } else {
        {
        __request_module(1, "symbol:tda18271_attach");
        tmp___30 = __symbol_get("tda18271_attach");
        tmp___31 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                             struct tda18271_config * ))tmp___30;
        }
      }
      __a___5 = tmp___31;
      if ((unsigned long )__a___5 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                u8 ,
                                                                                struct i2c_adapter * ,
                                                                                struct tda18271_config * ))0)) {
        {
        tmp___33 = (*__a___5)(port->dvb.frontend, 96, & i2c_bus->i2c_adap, & hauppauge_hvr22x0s_tuner_config);
        __r___5 = (void *)tmp___33;
        }
        if ((unsigned long )__r___5 == (unsigned long )((void *)0)) {
          {
          __symbol_put("tda18271_attach");
          }
        } else {
        }
      } else {
        {
        printk("\vDVB: Unable to find symbol tda18271_attach()\n");
        }
      }
    }
  } else {
  }
  goto ldv_49575;
  switch_default:
  {
  printk("\v%s: The frontend isn\'t supported\n", (char *)(& dev->name));
  }
  goto ldv_49575;
  switch_break: ;
  }
  ldv_49575: ;
  if ((unsigned long )dvb->frontend == (unsigned long )((struct dvb_frontend *)0)) {
    {
    printk("\v%s() Frontend initialization failed\n", "saa7164_dvb_register");
    }
    return (-1);
  } else {
  }
  {
  ret = dvb_register(port);
  }
  if (ret < 0) {
    if ((unsigned long )(dvb->frontend)->ops.release != (unsigned long )((void (*)(struct dvb_frontend * ))0)) {
      {
      (*((dvb->frontend)->ops.release))(dvb->frontend);
      }
    } else {
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static void ldv_mutex_lock_27___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dvb(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dvb(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_31___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dvb(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dvb(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_35___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
static int saa7164_dl_wait_ack(struct saa7164_dev *dev , u32 reg )
{
  u32 timeout ;
  unsigned int tmp ;
  {
  timeout = 5000U;
  goto ldv_49321;
  ldv_49320:
  timeout = timeout - 10U;
  if (timeout == 0U) {
    {
    printk("\v%s() timeout (no d/l ack)\n", "saa7164_dl_wait_ack");
    }
    return (-16);
  } else {
  }
  {
  msleep(100U);
  }
  ldv_49321:
  {
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(reg >> 2));
  }
  if ((tmp & 1U) == 0U) {
    goto ldv_49320;
  } else {
  }
  return (0);
}
}
static int saa7164_dl_wait_clr(struct saa7164_dev *dev , u32 reg )
{
  u32 timeout ;
  unsigned int tmp ;
  {
  timeout = 5000U;
  goto ldv_49330;
  ldv_49329:
  timeout = timeout - 10U;
  if (timeout == 0U) {
    {
    printk("\v%s() timeout (no d/l clr)\n", "saa7164_dl_wait_clr");
    }
    return (-16);
  } else {
  }
  {
  msleep(100U);
  }
  ldv_49330:
  {
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(reg >> 2));
  }
  if ((int )tmp & 1) {
    goto ldv_49329;
  } else {
  }
  return (0);
}
}
static int saa7164_downloadimage(struct saa7164_dev *dev , u8 *src , u32 srcsize ,
                                 u32 dlflags , u8 *dst , u32 dstsize )
{
  u32 reg ;
  u32 timeout ;
  u32 offset ;
  u8 *srcbuf ;
  int ret ;
  u32 dlflag ;
  u32 dlflag_ack ;
  u32 drflag ;
  u32 drflag_ack ;
  u32 bleflag ;
  void *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  u32 tmp___2 ;
  unsigned int tmp___3 ;
  {
  srcbuf = (u8 *)0U;
  dlflag = dlflags;
  dlflag_ack = dlflag + 4U;
  drflag = dlflag_ack + 4U;
  drflag_ack = drflag + 4U;
  bleflag = drflag_ack + 4U;
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s(image=%p, size=%d, flags=0x%x, dst=%p, dstsize=0x%x)\n", (char *)(& dev->name),
           "saa7164_downloadimage", src, srcsize, dlflags, dst, dstsize);
    }
  } else {
  }
  if ((unsigned long )src == (unsigned long )((u8 *)0U) || (unsigned long )dst == (unsigned long )((u8 *)0U)) {
    ret = -5;
    goto out;
  } else {
  }
  {
  tmp = kzalloc(4194304UL, 208U);
  srcbuf = (u8 *)tmp;
  }
  if ((unsigned long )srcbuf == (unsigned long )((u8 *)0U)) {
    ret = -12;
    goto out;
  } else {
  }
  if (srcsize > 4194304U) {
    ret = -12;
    goto out;
  } else {
  }
  {
  memcpy((void *)srcbuf, (void const *)src, (size_t )srcsize);
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() dlflag = 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           dlflag);
    }
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() dlflag_ack = 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           dlflag_ack);
    }
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() drflag = 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           drflag);
    }
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() drflag_ack = 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           drflag_ack);
    }
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() bleflag = 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           bleflag);
    }
  } else {
  }
  {
  reg = readl((void const volatile *)dev->lmmio + (unsigned long )(dlflag >> 2));
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() dlflag (0x%x)= 0x%x\n", (char *)(& dev->name), "saa7164_downloadimage",
           dlflag, reg);
    }
  } else {
  }
  if (reg == 1U) {
    if ((saa_debug & 4U) != 0U) {
      {
      printk("\017%s: %s() Download flag already set, please reboot\n", (char *)(& dev->name),
             "saa7164_downloadimage");
      }
    } else {
    }
  } else {
  }
  {
  writel(1U, (void volatile *)dev->lmmio + (unsigned long )(dlflag >> 2));
  ret = saa7164_dl_wait_ack(dev, dlflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(dlflag >> 2));
  ret = saa7164_dl_wait_clr(dev, dlflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  offset = 0U;
  goto ldv_49353;
  ldv_49352: ;
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() memcpy %d\n", (char *)(& dev->name), "saa7164_downloadimage",
           dstsize);
    }
  } else {
  }
  {
  memcpy((void *)dst, (void const *)srcbuf + (unsigned long )offset, (size_t )dstsize);
  writel(1U, (void volatile *)dev->lmmio + (unsigned long )(drflag >> 2));
  ret = saa7164_dl_wait_ack(dev, drflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(drflag >> 2));
  ret = saa7164_dl_wait_clr(dev, drflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  srcsize = srcsize - dstsize;
  offset = offset + dstsize;
  ldv_49353: ;
  if (srcsize > dstsize) {
    goto ldv_49352;
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s() memcpy(l) %d\n", (char *)(& dev->name), "saa7164_downloadimage",
           dstsize);
    }
  } else {
  }
  {
  memcpy((void *)dst, (void const *)srcbuf + (unsigned long )offset, (size_t )srcsize);
  writel(1U, (void volatile *)dev->lmmio + (unsigned long )(drflag >> 2));
  ret = saa7164_dl_wait_ack(dev, drflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(drflag >> 2));
  timeout = 0U;
  }
  goto ldv_49357;
  ldv_49356:
  {
  tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(bleflag >> 2));
  }
  if ((tmp___0 & 4U) != 0U) {
    {
    printk("\v%s() image corrupt\n", "saa7164_downloadimage");
    ret = -16;
    }
    goto out;
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(bleflag >> 2));
  }
  if ((tmp___1 & 8U) != 0U) {
    {
    printk("\v%s() device memory corrupt\n", "saa7164_downloadimage");
    ret = -16;
    }
    goto out;
  } else {
  }
  {
  msleep(10U);
  tmp___2 = timeout;
  timeout = timeout + 1U;
  }
  if (tmp___2 > 60U) {
    goto ldv_49355;
  } else {
  }
  ldv_49357:
  {
  tmp___3 = readl((void const volatile *)dev->lmmio + (unsigned long )(bleflag >> 2));
  }
  if (tmp___3 != 3U) {
    goto ldv_49356;
  } else {
  }
  ldv_49355:
  {
  printk("\016%s() Image downloaded, booting...\n", "saa7164_downloadimage");
  ret = saa7164_dl_wait_clr(dev, drflag_ack);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  printk("\016%s() Image booted successfully.\n", "saa7164_downloadimage");
  ret = 0;
  }
  out:
  {
  kfree((void const *)srcbuf);
  }
  return (ret);
}
}
int saa7164_downloadfirmware(struct saa7164_dev *dev )
{
  u32 tmp ;
  u32 filesize ;
  u32 version ;
  u32 err_flags ;
  u32 first_timeout ;
  u32 fwlength ;
  u32 second_timeout ;
  u32 updatebootloader ;
  u32 bootloadersize ;
  struct firmware const *fw ;
  struct fw_header *hdr ;
  struct fw_header *boothdr ;
  struct fw_header *fwhdr ;
  u32 bootloaderversion ;
  u32 fwloadersize ;
  u8 *bootloaderoffset ;
  u8 *fwloaderoffset ;
  char *fwname ;
  int ret ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  {
  updatebootloader = 1U;
  bootloadersize = 0U;
  fw = (struct firmware const *)0;
  boothdr = (struct fw_header *)0;
  bootloaderversion = 0U;
  bootloaderoffset = (u8 *)0U;
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_downloadfirmware");
    }
  } else {
  }
  if ((unsigned int )saa7164_boards[dev->board].chiprev == 1U) {
    fwname = (char *)"NXP7164-2010-03-10.1.fw";
    fwlength = 4019072U;
  } else {
    fwname = (char *)"NXP7164-2010-03-10.1.fw";
    fwlength = 4019072U;
  }
  {
  version = saa7164_getcurrentfirmwareversion(dev);
  }
  if (version == 0U) {
    {
    second_timeout = 100U;
    first_timeout = 100U;
    err_flags = readl((void const volatile *)dev->lmmio + 17U);
    }
    if ((saa_debug & 4U) != 0U) {
      {
      printk("\017%s: %s() err_flags = %x\n", (char *)(& dev->name), "saa7164_downloadfirmware",
             err_flags);
      }
    } else {
    }
    goto ldv_49383;
    ldv_49382: ;
    if ((saa_debug & 4U) != 0U) {
      {
      printk("\017%s: %s() err_flags = %x\n", (char *)(& dev->name), "saa7164_downloadfirmware",
             err_flags);
      }
    } else {
    }
    {
    msleep(10U);
    }
    if ((err_flags & 4U) != 0U) {
      {
      printk("\v%s() firmware corrupt\n", "saa7164_downloadfirmware");
      }
      goto ldv_49381;
    } else {
    }
    if ((err_flags & 8U) != 0U) {
      {
      printk("\v%s() device memory corrupt\n", "saa7164_downloadfirmware");
      }
      goto ldv_49381;
    } else {
    }
    if ((err_flags & 16U) != 0U) {
      {
      printk("\v%s() no first image\n", "saa7164_downloadfirmware");
      }
      goto ldv_49381;
    } else {
    }
    if ((int )err_flags & 1) {
      first_timeout = first_timeout - 10U;
      if (first_timeout == 0U) {
        {
        printk("\v%s() no first image\n", "saa7164_downloadfirmware");
        }
        goto ldv_49381;
      } else {
      }
    } else
    if ((err_flags & 2U) != 0U) {
      second_timeout = second_timeout - 10U;
      if (second_timeout == 0U) {
        {
        printk("\v%s() FW load time exceeded\n", "saa7164_downloadfirmware");
        }
        goto ldv_49381;
      } else {
      }
    } else {
      second_timeout = second_timeout - 10U;
      if (second_timeout == 0U) {
        {
        printk("\v%s() Unknown bootloader flags 0x%x\n", "saa7164_downloadfirmware",
               err_flags);
        }
        goto ldv_49381;
      } else {
      }
    }
    {
    err_flags = readl((void const volatile *)dev->lmmio + 17U);
    }
    ldv_49383: ;
    if (err_flags != 3U) {
      goto ldv_49382;
    } else {
    }
    ldv_49381: ;
    if (err_flags == 3U) {
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: %s() Loader 1 has loaded.\n", (char *)(& dev->name), "saa7164_downloadfirmware");
        }
      } else {
      }
      {
      first_timeout = 5000U;
      second_timeout = 300000U;
      second_timeout = 100U;
      err_flags = readl((void const volatile *)dev->lmmio + 25U);
      }
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: %s() err_flags2 = %x\n", (char *)(& dev->name), "saa7164_downloadfirmware",
               err_flags);
        }
      } else {
      }
      goto ldv_49386;
      ldv_49385: ;
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: %s() err_flags2 = %x\n", (char *)(& dev->name), "saa7164_downloadfirmware",
               err_flags);
        }
      } else {
      }
      {
      msleep(10U);
      }
      if ((err_flags & 4U) != 0U) {
        {
        printk("\v%s() firmware corrupt\n", "saa7164_downloadfirmware");
        }
        goto ldv_49384;
      } else {
      }
      if ((err_flags & 8U) != 0U) {
        {
        printk("\v%s() device memory corrupt\n", "saa7164_downloadfirmware");
        }
        goto ldv_49384;
      } else {
      }
      if ((err_flags & 16U) != 0U) {
        {
        printk("\v%s() no first image\n", "saa7164_downloadfirmware");
        }
        goto ldv_49384;
      } else {
      }
      if ((int )err_flags & 1) {
        first_timeout = first_timeout - 10U;
        if (first_timeout == 0U) {
          {
          printk("\v%s() no second image\n", "saa7164_downloadfirmware");
          }
          goto ldv_49384;
        } else {
        }
      } else
      if ((err_flags & 2U) != 0U) {
        second_timeout = second_timeout - 10U;
        if (second_timeout == 0U) {
          {
          printk("\v%s() FW load time exceeded\n", "saa7164_downloadfirmware");
          }
          goto ldv_49384;
        } else {
        }
      } else {
        second_timeout = second_timeout - 10U;
        if (second_timeout == 0U) {
          {
          printk("\v%s() Unknown bootloader flags 0x%x\n", "saa7164_downloadfirmware",
                 err_flags);
          }
          goto ldv_49384;
        } else {
        }
      }
      {
      err_flags = readl((void const volatile *)dev->lmmio + 25U);
      }
      ldv_49386: ;
      if (err_flags != 3U) {
        goto ldv_49385;
      } else {
      }
      ldv_49384: ;
      if ((saa_debug & 4U) != 0U) {
        {
        tmp___0 = readl((void const volatile *)dev->lmmio + 25U);
        tmp___1 = readl((void const volatile *)dev->lmmio + 17U);
        printk("\017%s: %s() Loader flags 1:0x%x 2:0x%x.\n", (char *)(& dev->name),
               "saa7164_downloadfirmware", tmp___1, tmp___0);
        }
      } else {
      }
    } else {
    }
    {
    tmp___2 = readl((void const volatile *)dev->lmmio + 17U);
    }
    if (tmp___2 == 3U) {
      {
      tmp___3 = readl((void const volatile *)dev->lmmio + 25U);
      }
      if (tmp___3 == 3U) {
        if ((saa_debug & 4U) != 0U) {
          {
          printk("\017%s: %s() Loader 2 has loaded.\n", (char *)(& dev->name), "saa7164_downloadfirmware");
          }
        } else {
        }
        first_timeout = 5000U;
        goto ldv_49389;
        ldv_49388:
        {
        msleep(10U);
        version = saa7164_getcurrentfirmwareversion(dev);
        }
        if (version != 0U) {
          if ((saa_debug & 4U) != 0U) {
            {
            printk("\017%s: %s() All f/w loaded successfully\n", (char *)(& dev->name),
                   "saa7164_downloadfirmware");
            }
          } else {
          }
          goto ldv_49387;
        } else {
          first_timeout = first_timeout - 10U;
          if (first_timeout == 0U) {
            {
            printk("\v%s() FW did not boot\n", "saa7164_downloadfirmware");
            }
            goto ldv_49387;
          } else {
          }
        }
        ldv_49389: ;
        if (first_timeout != 0U) {
          goto ldv_49388;
        } else {
        }
        ldv_49387: ;
      } else {
      }
    } else {
    }
    {
    version = saa7164_getcurrentfirmwareversion(dev);
    }
  } else {
  }
  {
  tmp___4 = readl((void const volatile *)dev->lmmio + 17U);
  }
  if (tmp___4 == 3U) {
    {
    tmp___5 = readl((void const volatile *)dev->lmmio + 25U);
    }
    if (tmp___5 == 3U) {
      if (version == 0U) {
        {
        printk("\v%s() The firmware hung, probably bad firmware\n", "saa7164_downloadfirmware");
        writel(3735936685U, (void volatile *)dev->lmmio + 27U);
        saa7164_getfirmwarestatus(dev);
        }
        return (-12);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((saa_debug & 4U) != 0U) {
    {
    printk("\017%s: Device has Firmware Version %d.%d.%d.%d\n", (char *)(& dev->name),
           (version & 64512U) >> 10, (version & 992U) >> 5, version & 31U, version >> 16);
    }
  } else {
  }
  if (version == 0U) {
    {
    printk("\016%s() Waiting for firmware upload (%s)\n", "saa7164_downloadfirmware",
           fwname);
    ret = request_firmware(& fw, (char const *)fwname, & (dev->pci)->dev);
    }
    if (ret != 0) {
      {
      printk("\v%s() Upload failed. (file not found?)\n", "saa7164_downloadfirmware");
      }
      return (-12);
    } else {
    }
    {
    printk("\016%s() firmware read %Zu bytes.\n", "saa7164_downloadfirmware", fw->size);
    }
    if ((unsigned long )fw->size != (unsigned long )fwlength) {
      {
      printk("\vxc5000: firmware incorrect size\n");
      ret = -12;
      }
      goto out;
    } else {
    }
    {
    printk("\016%s() firmware loaded.\n", "saa7164_downloadfirmware");
    hdr = (struct fw_header *)fw->data;
    printk("\016Firmware file header part 1:\n");
    printk("\016 .FirmwareSize = 0x%x\n", hdr->firmwaresize);
    printk("\016 .BSLSize = 0x%x\n", hdr->bslsize);
    printk("\016 .Reserved = 0x%x\n", hdr->reserved);
    printk("\016 .Version = 0x%x\n", hdr->version);
    }
    if (hdr->firmwaresize == 0U && hdr->bslsize == 0U) {
      filesize = hdr->reserved * 16U;
    } else {
      filesize = ((hdr->firmwaresize + hdr->bslsize) + 1U) * 16U;
    }
    {
    printk("\016%s() SecBootLoader.FileSize = %d\n", "saa7164_downloadfirmware", filesize);
    }
    if (hdr->firmwaresize == 0U && hdr->bslsize == 0U) {
      {
      boothdr = (struct fw_header *)fw->data + 16U;
      bootloaderversion = readl((void const volatile *)dev->lmmio + 20U);
      }
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: Onboard BootLoader:\n", (char *)(& dev->name));
        }
      } else {
      }
      if ((saa_debug & 4U) != 0U) {
        {
        tmp___6 = readl((void const volatile *)dev->lmmio + 17U);
        printk("\017%s: ->Flag 0x%x\n", (char *)(& dev->name), tmp___6);
        }
      } else {
      }
      if ((saa_debug & 4U) != 0U) {
        {
        tmp___7 = readl((void const volatile *)dev->lmmio + 16U);
        printk("\017%s: ->Ack 0x%x\n", (char *)(& dev->name), tmp___7);
        }
      } else {
      }
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: ->FW Version 0x%x\n", (char *)(& dev->name), version);
        }
      } else {
      }
      if ((saa_debug & 4U) != 0U) {
        {
        printk("\017%s: ->Loader Version 0x%x\n", (char *)(& dev->name), bootloaderversion);
        }
      } else {
      }
      {
      tmp___8 = readl((void const volatile *)dev->lmmio + 17U);
      }
      if (tmp___8 == 3U) {
        {
        tmp___9 = readl((void const volatile *)dev->lmmio + 16U);
        }
        if (tmp___9 == 0U) {
          if (version == 0U) {
            if ((saa_debug & 4U) != 0U) {
              {
              printk("\017%s: BootLoader version in  rom %d.%d.%d.%d\n", (char *)(& dev->name),
                     (bootloaderversion & 64512U) >> 10, (bootloaderversion & 992U) >> 5,
                     bootloaderversion & 31U, bootloaderversion >> 16);
              }
            } else {
            }
            if ((saa_debug & 4U) != 0U) {
              {
              printk("\017%s: BootLoader version in file %d.%d.%d.%d\n", (char *)(& dev->name),
                     (boothdr->version & 64512U) >> 10, (boothdr->version & 992U) >> 5,
                     boothdr->version & 31U, boothdr->version >> 16);
              }
            } else {
            }
            if (bootloaderversion == boothdr->version) {
              updatebootloader = 0U;
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
      tmp = ((boothdr->firmwaresize + boothdr->bslsize) + 2U) * 16U;
      fwhdr = (struct fw_header *)fw->data + (unsigned long )tmp;
    } else {
      fwhdr = hdr;
    }
    if ((saa_debug & 4U) != 0U) {
      {
      printk("\017%s: Firmware version in file %d.%d.%d.%d\n", (char *)(& dev->name),
             (fwhdr->version & 64512U) >> 10, (fwhdr->version & 992U) >> 5, fwhdr->version & 31U,
             fwhdr->version >> 16);
      }
    } else {
    }
    if (version == fwhdr->version) {
      ret = 0;
      goto out;
    } else {
    }
    if (hdr->firmwaresize == 0U && hdr->bslsize == 0U) {
      if (updatebootloader != 0U) {
        bootloadersize = ((boothdr->firmwaresize + boothdr->bslsize) + 1U) * 16U;
        bootloaderoffset = (u8 *)fw->data + 16U;
        if ((saa_debug & 4U) != 0U) {
          {
          printk("\017%s: bootloader d/l starts.\n", (char *)(& dev->name));
          }
        } else {
        }
        {
        printk("\016%s() FirmwareSize = 0x%x\n", "saa7164_downloadfirmware", boothdr->firmwaresize);
        printk("\016%s() BSLSize = 0x%x\n", "saa7164_downloadfirmware", boothdr->bslsize);
        printk("\016%s() Reserved = 0x%x\n", "saa7164_downloadfirmware", boothdr->reserved);
        printk("\016%s() Version = 0x%x\n", "saa7164_downloadfirmware", boothdr->version);
        ret = saa7164_downloadimage(dev, bootloaderoffset, bootloadersize, 52U, dev->bmmio + 4096UL,
                                    4096U);
        }
        if (ret < 0) {
          {
          printk("\vbootloader d/l has failed\n");
          }
          goto out;
        } else {
        }
        if ((saa_debug & 4U) != 0U) {
          {
          printk("\017%s: bootloader download complete.\n", (char *)(& dev->name));
          }
        } else {
        }
      } else {
      }
      {
      printk("\vstarting firmware download(2)\n");
      bootloadersize = ((boothdr->firmwaresize + boothdr->bslsize) + 1U) * 16U;
      bootloaderoffset = (u8 *)fw->data + 16U;
      fwloaderoffset = bootloaderoffset + (unsigned long )bootloadersize;
      fwloadersize = ((fwhdr->firmwaresize + fwhdr->bslsize) + 1U) * 16U;
      ret = saa7164_downloadimage(dev, fwloaderoffset, fwloadersize, 84U, dev->bmmio + 2097152UL,
                                  1048576U);
      }
      if (ret < 0) {
        {
        printk("\vfirmware download failed\n");
        }
        goto out;
      } else {
      }
      {
      printk("\vfirmware download complete.\n");
      }
    } else {
      {
      printk("\vstarting firmware download(3)\n");
      ret = saa7164_downloadimage(dev, (u8 *)fw->data, (u32 )fw->size, 52U, dev->bmmio + 4096UL,
                                  4096U);
      }
      if (ret < 0) {
        {
        printk("\vfirmware download failed\n");
        }
        goto out;
      } else {
      }
      {
      printk("\vfirmware download complete.\n");
      }
    }
  } else {
  }
  dev->firmwareloaded = 1U;
  ret = 0;
  out:
  {
  release_firmware(fw);
  }
  return (ret);
}
}
static void ldv_mutex_lock_27___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_28___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30___1(struct mutex *ldv_func_arg1 ) ;
extern void __const_udelay(unsigned long ) ;
int saa7164_bus_set(struct saa7164_dev *dev , struct tmComResInfo *msg , void *buf ) ;
int saa7164_bus_get(struct saa7164_dev *dev , struct tmComResInfo *msg , void *buf ,
                    int peekonly ) ;
int saa7164_bus_setup(struct saa7164_dev *dev )
{
  struct tmComResBusInfo *b ;
  struct lock_class_key __key ;
  {
  {
  b = & dev->bus;
  __mutex_init(& b->lock, "&b->lock", & __key);
  b->Type = 2;
  b->m_wMaxReqSize = 256U;
  b->m_pdwSetRing = dev->bmmio + (unsigned long )((unsigned int )dev->busdesc.CommandRing);
  b->m_dwSizeSetRing = 4096U;
  b->m_pdwGetRing = dev->bmmio + (unsigned long )((unsigned int )dev->busdesc.ResponseRing);
  b->m_dwSizeGetRing = 4096U;
  b->m_dwSetWritePos = (u32 )dev->intfdesc.BARLocation + 16U;
  b->m_dwSetReadPos = b->m_dwSetWritePos + 4U;
  b->m_dwGetWritePos = b->m_dwSetWritePos + 8U;
  b->m_dwGetReadPos = b->m_dwSetWritePos + 12U;
  }
  return (0);
}
}
void saa7164_bus_dump(struct saa7164_dev *dev )
{
  struct tmComResBusInfo *b ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  b = & dev->bus;
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: Dumping the bus structure:\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .type             = %d\n", (char *)(& dev->name), (unsigned int )b->Type);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .dev->bmmio       = 0x%p\n", (char *)(& dev->name), dev->bmmio);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .m_wMaxReqSize    = 0x%x\n", (char *)(& dev->name), (int )b->m_wMaxReqSize);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .m_pdwSetRing     = 0x%p\n", (char *)(& dev->name), b->m_pdwSetRing);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .m_dwSizeSetRing  = 0x%x\n", (char *)(& dev->name), b->m_dwSizeSetRing);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .m_pdwGetRing     = 0x%p\n", (char *)(& dev->name), b->m_pdwGetRing);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .m_dwSizeGetRing  = 0x%x\n", (char *)(& dev->name), b->m_dwSizeGetRing);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetReadPos >> 2));
    printk("\017%s:  .m_dwSetReadPos   = 0x%x (0x%08x)\n", (char *)(& dev->name),
           b->m_dwSetReadPos, tmp);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetWritePos >> 2));
    printk("\017%s:  .m_dwSetWritePos  = 0x%x (0x%08x)\n", (char *)(& dev->name),
           b->m_dwSetWritePos, tmp___0);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetReadPos >> 2));
    printk("\017%s:  .m_dwGetReadPos   = 0x%x (0x%08x)\n", (char *)(& dev->name),
           b->m_dwGetReadPos, tmp___1);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    tmp___2 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetWritePos >> 2));
    printk("\017%s:  .m_dwGetWritePos  = 0x%x (0x%08x)\n", (char *)(& dev->name),
           b->m_dwGetWritePos, tmp___2);
    }
  } else {
  }
  return;
}
}
static void saa7164_bus_verify(struct saa7164_dev *dev )
{
  struct tmComResBusInfo *b ;
  int bug ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  b = & dev->bus;
  bug = 0;
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetReadPos >> 2));
  }
  if (tmp > b->m_dwSizeSetRing) {
    bug = bug + 1;
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwSetWritePos >> 2));
  }
  if (tmp___0 > b->m_dwSizeSetRing) {
    bug = bug + 1;
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetReadPos >> 2));
  }
  if (tmp___1 > b->m_dwSizeGetRing) {
    bug = bug + 1;
  } else {
  }
  {
  tmp___2 = readl((void const volatile *)dev->lmmio + (unsigned long )(b->m_dwGetWritePos >> 2));
  }
  if (tmp___2 > b->m_dwSizeGetRing) {
    bug = bug + 1;
  } else {
  }
  if (bug != 0) {
    {
    saa_debug = 65535U;
    saa7164_bus_dump(dev);
    saa_debug = 1024U;
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-bus.c"),
                         "i" (105), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return;
}
}
static void saa7164_bus_dumpmsg(struct saa7164_dev *dev , struct tmComResInfo *m ,
                                void *buf )
{
  {
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: Dumping msg structure:\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .id               = %d\n", (char *)(& dev->name), (int )m->id);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .flags            = 0x%x\n", (char *)(& dev->name), (int )m->flags);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .size             = 0x%x\n", (char *)(& dev->name), (int )m->size);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .command          = 0x%x\n", (char *)(& dev->name), m->command);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .controlselector  = 0x%x\n", (char *)(& dev->name), (int )m->controlselector);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s:  .seqno            = %d\n", (char *)(& dev->name), (int )m->seqno);
    }
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((void *)0)) {
    if ((saa_debug & 128U) != 0U) {
      {
      printk("\017%s:  .buffer (ignored)\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  return;
}
}
int saa7164_bus_set(struct saa7164_dev *dev , struct tmComResInfo *msg , void *buf )
{
  struct tmComResBusInfo *bus ;
  u32 bytes_to_write ;
  u32 free_write_space ;
  u32 timeout ;
  u32 curr_srp ;
  u32 curr_swp ;
  u32 new_swp ;
  u32 space_rem ;
  int ret ;
  u32 tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  bus = & dev->bus;
  ret = 9;
  if ((unsigned long )msg == (unsigned long )((struct tmComResInfo *)0)) {
    {
    printk("\v%s() !msg\n", "saa7164_bus_set");
    }
    return (9);
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_bus_set");
    }
  } else {
  }
  {
  saa7164_bus_verify(dev);
  msg->size = msg->size;
  msg->command = msg->command;
  msg->controlselector = msg->controlselector;
  }
  if ((int )msg->size > (int )dev->bus.m_wMaxReqSize) {
    {
    printk("\v%s() Exceeded dev->bus.m_wMaxReqSize\n", "saa7164_bus_set");
    }
    return (9);
  } else {
  }
  if ((unsigned int )msg->size != 0U && (unsigned long )buf == (unsigned long )((void *)0)) {
    {
    printk("\v%s() Missing message buffer\n", "saa7164_bus_set");
    }
    return (9);
  } else {
  }
  {
  ldv_mutex_lock_27___1(& bus->lock);
  bytes_to_write = (u32 )msg->size + 11U;
  free_write_space = 0U;
  timeout = 50U;
  curr_srp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->m_dwSetReadPos >> 2));
  curr_swp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->m_dwSetWritePos >> 2));
  }
  if (curr_srp > curr_swp) {
    free_write_space = curr_srp - curr_swp;
  } else {
    free_write_space = (curr_srp + bus->m_dwSizeSetRing) - curr_swp;
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() bytes_to_write = %d\n", (char *)(& dev->name), "saa7164_bus_set",
           bytes_to_write);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() free_write_space = %d\n", (char *)(& dev->name), "saa7164_bus_set",
           free_write_space);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() curr_srp = %x\n", (char *)(& dev->name), "saa7164_bus_set",
           curr_srp);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() curr_swp = %x\n", (char *)(& dev->name), "saa7164_bus_set",
           curr_swp);
    }
  } else {
  }
  goto ldv_49336;
  ldv_49335:
  tmp = timeout;
  timeout = timeout - 1U;
  if (tmp == 0U) {
    {
    printk("\v%s() bus timeout\n", "saa7164_bus_set");
    ret = 12;
    }
    goto out;
  } else {
  }
  if (1) {
    {
    __const_udelay(4295000UL);
    }
  } else {
    __ms = 1UL;
    goto ldv_49333;
    ldv_49332:
    {
    __const_udelay(4295000UL);
    }
    ldv_49333:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_49332;
    } else {
    }
  }
  {
  curr_srp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->m_dwSetReadPos >> 2));
  }
  if (curr_srp > curr_swp) {
    free_write_space = curr_srp - curr_swp;
  } else {
    free_write_space = (curr_srp + bus->m_dwSizeSetRing) - curr_swp;
  }
  ldv_49336: ;
  if (bytes_to_write >= free_write_space) {
    goto ldv_49335;
  } else {
  }
  new_swp = curr_swp + bytes_to_write;
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() new_swp = %x\n", (char *)(& dev->name), "saa7164_bus_set",
           new_swp);
    }
  } else {
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() bus->m_dwSizeSetRing = %x\n", (char *)(& dev->name), "saa7164_bus_set",
           bus->m_dwSizeSetRing);
    }
  } else {
  }
  if (new_swp > bus->m_dwSizeSetRing) {
    new_swp = new_swp - bus->m_dwSizeSetRing;
    space_rem = bus->m_dwSizeSetRing - curr_swp;
    if ((saa_debug & 128U) != 0U) {
      {
      printk("\017%s: %s() space_rem = %x\n", (char *)(& dev->name), "saa7164_bus_set",
             space_rem);
      }
    } else {
    }
    if ((saa_debug & 128U) != 0U) {
      {
      printk("\017%s: %s() sizeof(*msg) = %d\n", (char *)(& dev->name), "saa7164_bus_set",
             11U);
      }
    } else {
    }
    if (space_rem <= 10U) {
      if ((saa_debug & 128U) != 0U) {
        {
        printk("\017%s: %s() tr4\n", (char *)(& dev->name), "saa7164_bus_set");
        }
      } else {
      }
      {
      memcpy((void *)bus->m_pdwSetRing + (unsigned long )curr_swp, (void const *)msg,
             (size_t )space_rem);
      memcpy((void *)bus->m_pdwSetRing, (void const *)msg + (unsigned long )space_rem,
             11UL - (unsigned long )space_rem);
      memcpy((void *)(bus->m_pdwSetRing + (11UL - (unsigned long )space_rem)), (void const *)buf,
             (size_t )msg->size);
      }
    } else
    if (space_rem == 11U) {
      if ((saa_debug & 128U) != 0U) {
        {
        printk("\017%s: %s() tr5\n", (char *)(& dev->name), "saa7164_bus_set");
        }
      } else {
      }
      {
      memcpy((void *)bus->m_pdwSetRing + (unsigned long )curr_swp, (void const *)msg,
             11UL);
      memcpy((void *)bus->m_pdwSetRing, (void const *)buf, (size_t )msg->size);
      }
    } else {
      {
      memcpy((void *)bus->m_pdwSetRing + (unsigned long )curr_swp, (void const *)msg,
             11UL);
      }
      if ((unsigned int )msg->size != 0U) {
        {
        memcpy((void *)(bus->m_pdwSetRing + ((unsigned long )curr_swp + 11UL)), (void const *)buf,
               (unsigned long )space_rem - 11UL);
        memcpy((void *)bus->m_pdwSetRing, (void const *)buf + ((unsigned long )space_rem + 0xfffffffffffffff5UL),
               (size_t )(bytes_to_write - space_rem));
        }
      } else {
      }
    }
  } else {
    if ((saa_debug & 128U) != 0U) {
      {
      printk("\017%s: %s() tr6\n", (char *)(& dev->name), "saa7164_bus_set");
      }
    } else {
    }
    {
    memcpy((void *)bus->m_pdwSetRing + (unsigned long )curr_swp, (void const *)msg,
           11UL);
    memcpy((void *)(bus->m_pdwSetRing + ((unsigned long )curr_swp + 11UL)), (void const *)buf,
           (size_t )msg->size);
    }
  }
  if ((saa_debug & 128U) != 0U) {
    {
    printk("\017%s: %s() new_swp = %x\n", (char *)(& dev->name), "saa7164_bus_set",
           new_swp);
    }
  } else {
  }
  {
  writel(new_swp, (void volatile *)dev->lmmio + (unsigned long )(bus->m_dwSetWritePos >> 2));
  ret = 0;
  }
  out:
  {
  saa7164_bus_dump(dev);
  ldv_mutex_unlock_28___1(& bus->lock);
  saa7164_bus_verify(dev);
  }
  return (ret);
}
}
int saa7164_bus_get(struct saa7164_dev *dev , struct tmComResInfo *msg , void *buf ,
                    int peekonly )
{
  struct tmComResBusInfo *bus ;
  u32 bytes_to_read ;
  u32 write_distance ;
  u32 curr_grp ;
  u32 curr_gwp ;
  u32 new_grp ;
  u32 buf_size ;
  u32 space_rem ;
  struct tmComResInfo msg_tmp ;
  int ret ;
  {
  {
  bus = & dev->bus;
  ret = 9;
  saa7164_bus_verify(dev);
  }
  if ((unsigned long )msg == (unsigned long )((struct tmComResInfo *)0)) {
    return (ret);
  } else {
  }
  if ((int )msg->size > (int )dev->bus.m_wMaxReqSize) {
    {
    printk("\v%s() Exceeded dev->bus.m_wMaxReqSize\n", "saa7164_bus_get");
    }
    return (ret);
  } else {
  }
  if (peekonly == 0 && ((unsigned int )msg->size != 0U && (unsigned long )buf == (unsigned long )((void *)0))) {
    {
    printk("\v%s() Missing msg buf, size should be %d bytes\n", "saa7164_bus_get",
           (int )msg->size);
    }
    return (ret);
  } else {
  }
  {
  ldv_mutex_lock_29___1(& bus->lock);
  curr_gwp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->m_dwGetWritePos >> 2));
  curr_grp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->m_dwGetReadPos >> 2));
  }
  if (curr_gwp == curr_grp) {
    ret = 34;
    goto out;
  } else {
  }
  bytes_to_read = 11U;
  write_distance = 0U;
  if (curr_gwp >= curr_grp) {
    write_distance = curr_gwp - curr_grp;
  } else {
    write_distance = (curr_gwp + bus->m_dwSizeGetRing) - curr_grp;
  }
  if (bytes_to_read > write_distance) {
    {
    printk("\v%s() No message/response found\n", "saa7164_bus_get");
    ret = 62;
    }
    goto out;
  } else {
  }
  new_grp = curr_grp + bytes_to_read;
  if (new_grp > bus->m_dwSizeGetRing) {
    {
    new_grp = new_grp - bus->m_dwSizeGetRing;
    space_rem = bus->m_dwSizeGetRing - curr_grp;
    memcpy((void *)(& msg_tmp), (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
           (size_t )space_rem);
    memcpy((void *)(& msg_tmp) + (unsigned long )space_rem, (void const *)bus->m_pdwGetRing,
           (size_t )(bytes_to_read - space_rem));
    }
  } else {
    {
    memcpy((void *)(& msg_tmp), (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
           (size_t )bytes_to_read);
    }
  }
  if (peekonly != 0) {
    {
    memcpy((void *)msg, (void const *)(& msg_tmp), 11UL);
    }
    goto peekout;
  } else {
  }
  if (((((int )msg_tmp.id != (int )msg->id || msg_tmp.command != msg->command) || (int )msg_tmp.controlselector != (int )msg->controlselector) || (int )msg_tmp.seqno != (int )msg->seqno) || (int )msg_tmp.size != (int )msg->size) {
    {
    printk("\v%s() Unexpected msg miss-match\n", "saa7164_bus_get");
    saa7164_bus_dumpmsg(dev, msg, buf);
    saa7164_bus_dumpmsg(dev, & msg_tmp, (void *)0);
    ret = 62;
    }
    goto out;
  } else {
  }
  buf_size = (u32 )msg->size;
  bytes_to_read = (u32 )msg->size + 11U;
  write_distance = 0U;
  if (curr_gwp >= curr_grp) {
    write_distance = curr_gwp - curr_grp;
  } else {
    write_distance = (curr_gwp + bus->m_dwSizeGetRing) - curr_grp;
  }
  if (bytes_to_read > write_distance) {
    {
    printk("\v%s() Invalid bus state, missing msg or mangled ring, faulty H/W / bad code?\n",
           "saa7164_bus_get");
    ret = 62;
    }
    goto out;
  } else {
  }
  new_grp = curr_grp + bytes_to_read;
  if (new_grp > bus->m_dwSizeGetRing) {
    new_grp = new_grp - bus->m_dwSizeGetRing;
    space_rem = bus->m_dwSizeGetRing - curr_grp;
    if (space_rem <= 10U) {
      {
      memcpy((void *)msg, (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
             (size_t )space_rem);
      memcpy((void *)msg + (unsigned long )space_rem, (void const *)bus->m_pdwGetRing,
             11UL - (unsigned long )space_rem);
      }
      if ((unsigned long )buf != (unsigned long )((void *)0)) {
        {
        memcpy(buf, (void const *)(bus->m_pdwGetRing + (11UL - (unsigned long )space_rem)),
               (size_t )buf_size);
        }
      } else {
      }
    } else
    if (space_rem == 11U) {
      {
      memcpy((void *)msg, (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
             11UL);
      }
      if ((unsigned long )buf != (unsigned long )((void *)0)) {
        {
        memcpy(buf, (void const *)bus->m_pdwGetRing, (size_t )buf_size);
        }
      } else {
      }
    } else {
      {
      memcpy((void *)msg, (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
             11UL);
      }
      if ((unsigned long )buf != (unsigned long )((void *)0)) {
        {
        memcpy(buf, (void const *)(bus->m_pdwGetRing + ((unsigned long )curr_grp + 11UL)),
               (unsigned long )space_rem - 11UL);
        memcpy(buf + ((unsigned long )space_rem + 0xfffffffffffffff5UL), (void const *)bus->m_pdwGetRing,
               (size_t )(bytes_to_read - space_rem));
        }
      } else {
      }
    }
  } else {
    {
    memcpy((void *)msg, (void const *)bus->m_pdwGetRing + (unsigned long )curr_grp,
           11UL);
    }
    if ((unsigned long )buf != (unsigned long )((void *)0)) {
      {
      memcpy(buf, (void const *)(bus->m_pdwGetRing + ((unsigned long )curr_grp + 11UL)),
             (size_t )buf_size);
      }
    } else {
    }
  }
  {
  writel(new_grp, (void volatile *)dev->lmmio + (unsigned long )(bus->m_dwGetReadPos >> 2));
  }
  peekout:
  msg->size = msg->size;
  msg->command = msg->command;
  msg->controlselector = msg->controlselector;
  ret = 0;
  out:
  {
  ldv_mutex_unlock_30___1(& bus->lock);
  saa7164_bus_verify(dev);
  }
  return (ret);
}
}
static void ldv_mutex_lock_27___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_tmComResBusInfo(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_27___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_33___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_cmd(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_cmd(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_saa7164_dev(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_saa7164_dev(struct mutex *lock ) ;
static void ldv_mutex_unlock_28___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern long schedule_timeout(long ) ;
int saa7164_cmd_send(struct saa7164_dev *dev , u8 id , enum tmComResCmd command ,
                     u16 controlselector , u16 size , void *buf ) ;
void saa7164_cmd_signal(struct saa7164_dev *dev , u8 seqno ) ;
static int saa7164_cmd_alloc_seqno(struct saa7164_dev *dev )
{
  int i ;
  int ret ;
  {
  {
  ret = -1;
  ldv_mutex_lock_27___2(& dev->lock);
  i = 0;
  }
  goto ldv_49343;
  ldv_49342: ;
  if (dev->cmds[i].inuse == 0U) {
    dev->cmds[i].inuse = 1U;
    dev->cmds[i].signalled = 0U;
    dev->cmds[i].timeout = 0U;
    ret = (int )dev->cmds[i].seqno;
    goto ldv_49341;
  } else {
  }
  i = i + 1;
  ldv_49343: ;
  if (i <= 255) {
    goto ldv_49342;
  } else {
  }
  ldv_49341:
  {
  ldv_mutex_unlock_28___2(& dev->lock);
  }
  return (ret);
}
}
static void saa7164_cmd_free_seqno(struct saa7164_dev *dev , u8 seqno )
{
  {
  {
  ldv_mutex_lock_29___2(& dev->lock);
  }
  if (dev->cmds[(int )seqno].inuse == 1U && (int )dev->cmds[(int )seqno].seqno == (int )seqno) {
    dev->cmds[(int )seqno].inuse = 0U;
    dev->cmds[(int )seqno].signalled = 0U;
    dev->cmds[(int )seqno].timeout = 0U;
  } else {
  }
  {
  ldv_mutex_unlock_30___2(& dev->lock);
  }
  return;
}
}
static void saa7164_cmd_timeout_seqno(struct saa7164_dev *dev , u8 seqno )
{
  {
  {
  ldv_mutex_lock_31___1(& dev->lock);
  }
  if (dev->cmds[(int )seqno].inuse == 1U && (int )dev->cmds[(int )seqno].seqno == (int )seqno) {
    dev->cmds[(int )seqno].timeout = 1U;
  } else {
  }
  {
  ldv_mutex_unlock_32___1(& dev->lock);
  }
  return;
}
}
static u32 saa7164_cmd_timeout_get(struct saa7164_dev *dev , u8 seqno )
{
  int ret ;
  {
  {
  ret = 0;
  ldv_mutex_lock_33___0(& dev->lock);
  }
  if (dev->cmds[(int )seqno].inuse == 1U && (int )dev->cmds[(int )seqno].seqno == (int )seqno) {
    ret = (int )dev->cmds[(int )seqno].timeout;
  } else {
  }
  {
  ldv_mutex_unlock_34___0(& dev->lock);
  }
  return ((u32 )ret);
}
}
int saa7164_irq_dequeue(struct saa7164_dev *dev )
{
  int ret ;
  int i ;
  u32 timeout ;
  wait_queue_head_t *q ;
  u8 tmp[512U] ;
  struct tmComResInfo tRsp ;
  int tmp___0 ;
  {
  ret = 0;
  i = 0;
  q = (wait_queue_head_t *)0;
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_irq_dequeue");
    }
  } else {
  }
  ldv_49368:
  {
  tRsp.id = 0U;
  tRsp.flags = 0U;
  tRsp.size = 0U;
  tRsp.command = 0U;
  tRsp.controlselector = 0U;
  tRsp.seqno = 0U;
  ret = saa7164_bus_get(dev, & tRsp, (void *)0, 1);
  }
  if (ret != 0) {
    goto ldv_49367;
  } else {
  }
  {
  q = & dev->cmds[(int )tRsp.seqno].wait;
  timeout = saa7164_cmd_timeout_get(dev, (int )tRsp.seqno);
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() timeout = %d\n", (char *)(& dev->name), "saa7164_irq_dequeue",
           timeout);
    }
  } else {
  }
  if (timeout == 0U) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() signalled seqno(%d) (for dequeue)\n", (char *)(& dev->name),
             "saa7164_irq_dequeue", (int )tRsp.seqno);
      }
    } else {
    }
    {
    dev->cmds[(int )tRsp.seqno].signalled = 1U;
    __wake_up(q, 3U, 1, (void *)0);
    }
  } else {
    {
    printk("\v%s() found timed out command on the bus\n", "saa7164_irq_dequeue");
    ret = saa7164_bus_get(dev, & tRsp, (void *)(& tmp), 0);
    printk("\v%s() ret = %x\n", "saa7164_irq_dequeue", ret);
    }
    if (ret == 34) {
      return (0);
    } else {
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  }
  tmp___0 = i;
  i = i + 1;
  if (tmp___0 <= 31) {
    goto ldv_49368;
  } else {
  }
  ldv_49367: ;
  return (ret);
}
}
static int saa7164_cmd_dequeue(struct saa7164_dev *dev )
{
  int loop ;
  int ret ;
  u32 timeout ;
  wait_queue_head_t *q ;
  u8 tmp[512U] ;
  struct tmComResInfo tRsp ;
  {
  loop = 1;
  q = (wait_queue_head_t *)0;
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_cmd_dequeue");
    }
  } else {
  }
  goto ldv_49379;
  ldv_49380:
  {
  tRsp.id = 0U;
  tRsp.flags = 0U;
  tRsp.size = 0U;
  tRsp.command = 0U;
  tRsp.controlselector = 0U;
  tRsp.seqno = 0U;
  ret = saa7164_bus_get(dev, & tRsp, (void *)0, 1);
  }
  if (ret == 34) {
    return (0);
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  q = & dev->cmds[(int )tRsp.seqno].wait;
  timeout = saa7164_cmd_timeout_get(dev, (int )tRsp.seqno);
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() timeout = %d\n", (char *)(& dev->name), "saa7164_cmd_dequeue",
           timeout);
    }
  } else {
  }
  if (timeout != 0U) {
    {
    printk("\vfound timed out command on the bus\n");
    ret = saa7164_bus_get(dev, & tRsp, (void *)(& tmp), 0);
    printk("\vret = %x\n", ret);
    }
    if (ret == 34) {
      return (0);
    } else {
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
    if (((int )tRsp.flags & 16) != 0) {
      {
      printk("\vsplit response\n");
      }
    } else {
      {
      saa7164_cmd_free_seqno(dev, (int )tRsp.seqno);
      }
    }
    {
    printk("\v timeout continue\n");
    }
    goto ldv_49379;
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() signalled seqno(%d) (for dequeue)\n", (char *)(& dev->name),
           "saa7164_cmd_dequeue", (int )tRsp.seqno);
    }
  } else {
  }
  {
  dev->cmds[(int )tRsp.seqno].signalled = 1U;
  __wake_up(q, 3U, 1, (void *)0);
  }
  return (0);
  ldv_49379: ;
  if (loop != 0) {
    goto ldv_49380;
  } else {
  }
  return (0);
}
}
static int saa7164_cmd_set(struct saa7164_dev *dev , struct tmComResInfo *msg , void *buf )
{
  struct tmComResBusInfo *bus ;
  u8 cmd_sent ;
  u16 size ;
  u16 idx ;
  u32 cmds ;
  void *tmp ;
  int ret ;
  {
  bus = & dev->bus;
  ret = -1;
  if ((unsigned long )msg == (unsigned long )((struct tmComResInfo *)0)) {
    {
    printk("\v%s() !msg\n", "saa7164_cmd_set");
    }
    return (9);
  } else {
  }
  {
  ldv_mutex_lock_35___1(& dev->cmds[(int )msg->id].lock);
  size = msg->size;
  idx = 0U;
  cmds = (u32 )((int )size / (int )bus->m_wMaxReqSize);
  }
  if ((unsigned int )((int )size % (int )bus->m_wMaxReqSize) == 0U) {
    cmds = cmds - 1U;
  } else {
  }
  cmd_sent = 0U;
  idx = 0U;
  goto ldv_49397;
  ldv_49396:
  {
  msg->flags = (u8 )((unsigned int )msg->flags | 16U);
  msg->size = bus->m_wMaxReqSize;
  tmp = buf + (unsigned long )((int )idx * (int )bus->m_wMaxReqSize);
  ret = saa7164_bus_set(dev, msg, tmp);
  }
  if (ret != 0) {
    {
    printk("\v%s() set failed %d\n", "saa7164_cmd_set", ret);
    }
    if ((unsigned int )cmd_sent != 0U) {
      ret = 21;
      goto out;
    } else {
    }
    ret = 32;
    goto out;
  } else {
  }
  cmd_sent = 1U;
  idx = (u16 )((int )idx + 1);
  ldv_49397: ;
  if ((u32 )idx < cmds) {
    goto ldv_49396;
  } else {
  }
  if ((unsigned int )idx != 0U) {
    msg->flags = (unsigned int )msg->flags & 239U;
  } else {
  }
  {
  msg->size = (int )size - (int )idx * (int )bus->m_wMaxReqSize;
  ret = saa7164_bus_set(dev, msg, buf + (unsigned long )((int )idx * (int )bus->m_wMaxReqSize));
  }
  if (ret != 0) {
    {
    printk("\v%s() set last failed %d\n", "saa7164_cmd_set", ret);
    }
    if ((unsigned int )cmd_sent != 0U) {
      ret = 21;
      goto out;
    } else {
    }
    ret = 32;
    goto out;
  } else {
  }
  ret = 0;
  out:
  {
  ldv_mutex_unlock_36___1(& dev->cmds[(int )msg->id].lock);
  }
  return (ret);
}
}
static int saa7164_cmd_wait(struct saa7164_dev *dev , u8 seqno )
{
  wait_queue_head_t *q ;
  int ret ;
  unsigned long stamp ;
  int r ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  {
  q = (wait_queue_head_t *)0;
  ret = 50;
  if (saa_debug > 3U) {
    {
    saa7164_bus_dump(dev);
    }
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s(seqno=%d)\n", (char *)(& dev->name), "saa7164_cmd_wait", (int )seqno);
    }
  } else {
  }
  {
  ldv_mutex_lock_37(& dev->lock);
  }
  if (dev->cmds[(int )seqno].inuse == 1U && (int )dev->cmds[(int )seqno].seqno == (int )seqno) {
    q = & dev->cmds[(int )seqno].wait;
  } else {
  }
  {
  ldv_mutex_unlock_38(& dev->lock);
  }
  if ((unsigned long )q != (unsigned long )((wait_queue_head_t *)0)) {
    if (dev->cmds[(int )seqno].signalled == 0U) {
      stamp = jiffies;
      if ((saa_debug & 64U) != 0U) {
        {
        printk("\017%s: %s(seqno=%d) Waiting (signalled=%d)\n", (char *)(& dev->name),
               "saa7164_cmd_wait", (int )seqno, dev->cmds[(int )seqno].signalled);
        }
      } else {
      }
      __ret = (long )(waitsecs * 250U);
      __cond___0 = dev->cmds[(int )seqno].signalled != 0U;
      if ((int )__cond___0 && __ret == 0L) {
        __ret = 1L;
      } else {
      }
      if (((int )__cond___0 || __ret == 0L) == 0) {
        {
        __ret___0 = (long )(waitsecs * 250U);
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        }
        ldv_49418:
        {
        tmp = prepare_to_wait_event(q, & __wait, 2);
        __int = tmp;
        __cond = dev->cmds[(int )seqno].signalled != 0U;
        }
        if ((int )__cond && __ret___0 == 0L) {
          __ret___0 = 1L;
        } else {
        }
        if (((int )__cond || __ret___0 == 0L) != 0) {
          goto ldv_49417;
        } else {
        }
        {
        __ret___0 = schedule_timeout(__ret___0);
        }
        goto ldv_49418;
        ldv_49417:
        {
        finish_wait(q, & __wait);
        }
        __ret = __ret___0;
      } else {
      }
      r = (long )((unsigned long )jiffies - (stamp + (unsigned long )(waitsecs * 250U))) < 0L;
      if (r != 0) {
        ret = 0;
      } else {
        {
        saa7164_cmd_timeout_seqno(dev, (int )seqno);
        }
      }
      if ((saa_debug & 64U) != 0U) {
        {
        printk("\017%s: %s(seqno=%d) Waiting res = %d (signalled=%d)\n", (char *)(& dev->name),
               "saa7164_cmd_wait", (int )seqno, r, dev->cmds[(int )seqno].signalled);
        }
      } else {
      }
    } else {
      ret = 0;
    }
  } else {
    {
    printk("\v%s(seqno=%d) seqno is invalid\n", "saa7164_cmd_wait", (int )seqno);
    }
  }
  return (ret);
}
}
void saa7164_cmd_signal(struct saa7164_dev *dev , u8 seqno )
{
  int i ;
  {
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_cmd_signal");
    }
  } else {
  }
  {
  ldv_mutex_lock_39(& dev->lock);
  i = 0;
  }
  goto ldv_49434;
  ldv_49433: ;
  if (dev->cmds[i].inuse == 1U) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: seqno %d inuse, sig = %d, t/out = %d\n", (char *)(& dev->name),
             (int )dev->cmds[i].seqno, dev->cmds[i].signalled, dev->cmds[i].timeout);
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_49434: ;
  if (i <= 255) {
    goto ldv_49433;
  } else {
  }
  i = 0;
  goto ldv_49437;
  ldv_49436: ;
  if (dev->cmds[i].inuse == 1U && ((i == 0 || dev->cmds[i].signalled != 0U) || dev->cmds[i].timeout != 0U)) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s(seqno=%d) calling wake_up\n", (char *)(& dev->name), "saa7164_cmd_signal",
             i);
      }
    } else {
    }
    {
    dev->cmds[i].signalled = 1U;
    __wake_up(& dev->cmds[i].wait, 3U, 1, (void *)0);
    }
  } else {
  }
  i = i + 1;
  ldv_49437: ;
  if (i <= 255) {
    goto ldv_49436;
  } else {
  }
  {
  ldv_mutex_unlock_40(& dev->lock);
  }
  return;
}
}
int saa7164_cmd_send(struct saa7164_dev *dev , u8 id , enum tmComResCmd command ,
                     u16 controlselector , u16 size , void *buf )
{
  struct tmComResInfo command_t ;
  struct tmComResInfo *pcommand_t ;
  struct tmComResInfo response_t ;
  struct tmComResInfo *presponse_t ;
  u8 errdata[256U] ;
  u16 resp_dsize ;
  u16 data_recd ;
  u32 loop ;
  int ret ;
  int safety ;
  char *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  safety = 0;
  if ((saa_debug & 64U) != 0U) {
    {
    tmp = saa7164_unitid_name(dev, (int )id);
    printk("\017%s: %s(unitid = %s (%d) , command = 0x%x, sel = 0x%x)\n", (char *)(& dev->name),
           "saa7164_cmd_send", tmp, (int )id, (unsigned int )command, (int )controlselector);
    }
  } else {
  }
  if ((unsigned int )size == 0U || (unsigned long )buf == (unsigned long )((void *)0)) {
    {
    printk("\v%s() Invalid param\n", "saa7164_cmd_send");
    }
    return (9);
  } else {
  }
  {
  memset((void *)(& command_t), 0, 11UL);
  memset((void *)(& response_t), 0, 11UL);
  pcommand_t = & command_t;
  presponse_t = & response_t;
  command_t.id = id;
  command_t.command = (u32 )command;
  command_t.controlselector = controlselector;
  command_t.size = size;
  ret = saa7164_cmd_alloc_seqno(dev);
  }
  if (ret < 0) {
    {
    printk("\v%s() No free sequences\n", "saa7164_cmd_send");
    ret = 12;
    }
    goto out;
  } else {
  }
  command_t.seqno = (unsigned char )ret;
  resp_dsize = size;
  pcommand_t->size = size;
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() pcommand_t.seqno = %d\n", (char *)(& dev->name), "saa7164_cmd_send",
           (int )pcommand_t->seqno);
    }
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() pcommand_t.size = %d\n", (char *)(& dev->name), "saa7164_cmd_send",
           (int )pcommand_t->size);
    }
  } else {
  }
  {
  ret = saa7164_cmd_set(dev, pcommand_t, buf);
  }
  if (ret != 0) {
    {
    printk("\v%s() set command failed %d\n", "saa7164_cmd_send", ret);
    }
    if (ret != 21) {
      {
      saa7164_cmd_free_seqno(dev, (int )pcommand_t->seqno);
      }
    } else {
      {
      saa7164_cmd_timeout_seqno(dev, (int )pcommand_t->seqno);
      }
    }
    goto out;
  } else {
  }
  data_recd = 0U;
  loop = 1U;
  goto ldv_49459;
  ldv_49469: ;
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() loop\n", (char *)(& dev->name), "saa7164_cmd_send");
    }
  } else {
  }
  {
  ret = saa7164_cmd_wait(dev, (int )pcommand_t->seqno);
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() loop ret = %d\n", (char *)(& dev->name), "saa7164_cmd_send",
           ret);
    }
  } else {
  }
  if (ret == 50) {
    {
    printk("\vEvent timed out\n");
    saa7164_cmd_timeout_seqno(dev, (int )pcommand_t->seqno);
    }
    return (ret);
  } else {
  }
  if (ret != 0) {
    {
    printk("\vspurious error\n");
    }
    return (ret);
  } else {
  }
  {
  ret = saa7164_bus_get(dev, presponse_t, (void *)0, 1);
  }
  if (ret == 34) {
    if ((saa_debug & 4U) != 0U) {
      {
      printk("\017%s: %s() SAA_ERR_EMPTY\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    goto ldv_49459;
  } else {
  }
  if (ret != 0) {
    {
    printk("\vpeek failed\n");
    }
    return (ret);
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() presponse_t->seqno = %d\n", (char *)(& dev->name), "saa7164_cmd_send",
           (int )presponse_t->seqno);
    }
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() presponse_t->flags = 0x%x\n", (char *)(& dev->name), "saa7164_cmd_send",
           (int )presponse_t->flags);
    }
  } else {
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() presponse_t->size = %d\n", (char *)(& dev->name), "saa7164_cmd_send",
           (int )presponse_t->size);
    }
  } else {
  }
  if ((int )presponse_t->seqno != (int )pcommand_t->seqno) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: wrong event: seqno = %d, expected seqno = %d, will dequeue regardless\n",
             (char *)(& dev->name), (int )presponse_t->seqno, (int )pcommand_t->seqno);
      }
    } else {
    }
    {
    ret = saa7164_cmd_dequeue(dev);
    }
    if (ret != 0) {
      {
      printk("\vdequeue failed, ret = %d\n", ret);
      tmp___0 = safety;
      safety = safety + 1;
      }
      if (tmp___0 > 16) {
        {
        printk("\vdequeue exceeded, safety exit\n");
        }
        return (21);
      } else {
      }
    } else {
    }
    goto ldv_49459;
  } else {
  }
  if ((int )presponse_t->flags & 1) {
    {
    memset((void *)(& errdata), 0, 256UL);
    ret = saa7164_bus_get(dev, presponse_t, (void *)(& errdata), 0);
    }
    if (ret != 0) {
      {
      printk("\vget error(2)\n");
      }
      return (ret);
    } else {
    }
    {
    saa7164_cmd_free_seqno(dev, (int )pcommand_t->seqno);
    }
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() errdata %02x%02x%02x%02x\n", (char *)(& dev->name), "saa7164_cmd_send",
             (int )errdata[0], (int )errdata[1], (int )errdata[2], (int )errdata[3]);
      }
    } else {
    }
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() cmd, error code  = 0x%x\n", (char *)(& dev->name), "saa7164_cmd_send",
             (int )errdata[0]);
      }
    } else {
    }
    {
    if ((int )errdata[0] == 1) {
      goto case_1;
    } else {
    }
    if ((int )errdata[0] == 3) {
      goto case_3;
    } else {
    }
    if ((int )errdata[0] == 4) {
      goto case_4;
    } else {
    }
    if ((int )errdata[0] == 5) {
      goto case_5;
    } else {
    }
    if ((int )errdata[0] == 0) {
      goto case_0;
    } else {
    }
    if ((int )errdata[0] == 2) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_1: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() INVALID_COMMAND\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    ret = 62;
    goto ldv_49461;
    case_3: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() INVALID_DATA\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    ret = 9;
    goto ldv_49461;
    case_4: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() TIMEOUT\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    ret = 31;
    goto ldv_49461;
    case_5: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() NAK\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    ret = 89;
    goto ldv_49461;
    case_0: ;
    case_2: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() UNKNOWN OR INVALID CONTROL\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    switch_default: ;
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() UNKNOWN\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    ret = 19;
    switch_break: ;
    }
    ldv_49461:
    {
    tmp___1 = saa7164_cmd_dequeue(dev);
    }
    if (tmp___1 != 0) {
      {
      printk("\vdequeue(2) failed\n");
      }
    } else {
    }
    return (ret);
  } else {
  }
  if (((((int )presponse_t->id != (int )pcommand_t->id || presponse_t->command != pcommand_t->command) || (int )presponse_t->controlselector != (int )pcommand_t->controlselector) || ((int )resp_dsize - (int )data_recd != (int )presponse_t->size && ((int )presponse_t->flags & 16) == 0)) || (int )resp_dsize - (int )data_recd < (int )presponse_t->size) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() Invalid\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    {
    ret = saa7164_bus_get(dev, presponse_t, (void *)0, 0);
    }
    if (ret != 0) {
      {
      printk("\vget failed\n");
      }
      return (ret);
    } else {
    }
    {
    tmp___2 = saa7164_cmd_dequeue(dev);
    }
    if (tmp___2 != 0) {
      {
      printk("\vdequeue(3) failed\n");
      }
    } else {
    }
    goto ldv_49459;
  } else {
  }
  {
  ret = saa7164_bus_get(dev, presponse_t, buf + (unsigned long )data_recd, 0);
  }
  if (ret != 0) {
    {
    printk("\vget failed\n");
    }
    return (ret);
  } else {
  }
  data_recd = (int )presponse_t->size + (int )data_recd;
  if ((int )resp_dsize == (int )data_recd) {
    if ((saa_debug & 64U) != 0U) {
      {
      printk("\017%s: %s() Resp recd\n", (char *)(& dev->name), "saa7164_cmd_send");
      }
    } else {
    }
    goto ldv_49468;
  } else {
  }
  {
  tmp___3 = saa7164_cmd_dequeue(dev);
  }
  if (tmp___3 != 0) {
    {
    printk("\vdequeue(3) failed\n");
    }
  } else {
  }
  goto ldv_49459;
  ldv_49459: ;
  if (loop != 0U) {
    goto ldv_49469;
  } else {
  }
  ldv_49468:
  {
  saa7164_cmd_free_seqno(dev, (int )pcommand_t->seqno);
  }
  if ((saa_debug & 64U) != 0U) {
    {
    printk("\017%s: %s() Calling dequeue then exit\n", (char *)(& dev->name), "saa7164_cmd_send");
    }
  } else {
  }
  {
  tmp___4 = saa7164_cmd_dequeue(dev);
  }
  if (tmp___4 != 0) {
    {
    printk("\vdequeue(4) failed\n");
    }
  } else {
  }
  ret = 0;
  out: ;
  return (ret);
}
}
static void ldv_mutex_lock_27___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_31___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_33___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_35___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cmd(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cmd(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_saa7164_dev(ldv_func_arg1);
  }
  return;
}
}
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int saa7164_api_initialize_dif(struct saa7164_port *port ) ;
int saa7164_api_configure_dif(struct saa7164_port *port , u32 std ) ;
int saa7164_api_set_encoder(struct saa7164_port *port ) ;
int saa7164_api_get_encoder(struct saa7164_port *port ) ;
int saa7164_api_set_aspect_ratio(struct saa7164_port *port ) ;
int saa7164_api_set_usercontrol(struct saa7164_port *port , u8 ctl ) ;
int saa7164_api_get_usercontrol(struct saa7164_port *port , u8 ctl ) ;
int saa7164_api_set_videomux(struct saa7164_port *port ) ;
int saa7164_api_audio_mute(struct saa7164_port *port , int mute ) ;
int saa7164_api_set_audio_volume(struct saa7164_port *port , s8 level ) ;
int saa7164_api_set_audio_std(struct saa7164_port *port ) ;
int saa7164_api_set_audio_detection(struct saa7164_port *port , int autodetect ) ;
int saa7164_api_get_videomux(struct saa7164_port *port ) ;
int saa7164_api_set_vbi_format(struct saa7164_port *port ) ;
int saa7164_api_get_load_info(struct saa7164_dev *dev , struct tmFwInfoStruct *i )
{
  int ret ;
  {
  if ((saa_debug & 8192U) == 0U) {
    return (0);
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_get_load_info");
    }
  } else {
  }
  {
  i->deviceinst = 0U;
  i->devicespec = 0U;
  i->mode = 0U;
  i->status = 0U;
  ret = saa7164_cmd_send(dev, 0, 129, 8, 32, (void *)i);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_load_info", ret);
    }
  } else {
  }
  {
  printk("\016saa7164[%d]-CPU: %d percent", dev->nr, i->CPULoad);
  }
  return (ret);
}
}
int saa7164_api_collect_debug(struct saa7164_dev *dev )
{
  struct tmComResDebugGetData d ;
  u8 more ;
  int ret ;
  u8 tmp ;
  {
  more = 255U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_collect_debug");
    }
  } else {
  }
  goto ldv_49295;
  ldv_49294:
  {
  memset((void *)(& d), 0, 260UL);
  ret = saa7164_cmd_send(dev, 0, 129, 12, 260, (void *)(& d));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_collect_debug", ret);
    }
  } else {
  }
  if (d.dwResult != 0U) {
    goto ldv_49293;
  } else {
  }
  {
  printk("\016saa7164[%d]-FWMSG: %s", dev->nr, (u8 *)(& d.ucDebugData));
  }
  ldv_49295:
  tmp = more;
  more = (u8 )((int )more - 1);
  if ((unsigned int )tmp != 0U) {
    goto ldv_49294;
  } else {
  }
  ldv_49293: ;
  return (0);
}
}
int saa7164_api_set_debug(struct saa7164_dev *dev , u8 level )
{
  struct tmComResDebugSetLevel lvl ;
  int ret ;
  {
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(level=%d)\n", (char *)(& dev->name), "saa7164_api_set_debug",
           (int )level);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(dev, 0, 129, 11, 4, (void *)(& lvl));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_debug", ret);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s() Was %d\n", (char *)(& dev->name), "saa7164_api_set_debug",
           lvl.dwDebugLevel);
    }
  } else {
  }
  {
  lvl.dwDebugLevel = (u32 )level;
  ret = saa7164_cmd_send(dev, 0, 1, 11, 4, (void *)(& lvl));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_debug", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_vbi_format(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResProbeCommit fmt ;
  struct tmComResProbeCommit rsp ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  dev = port->dev;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(nr=%d, unitid=0x%x)\n", (char *)(& dev->name), "saa7164_api_set_vbi_format",
           port->nr, (int )port->hwcfg.unitid);
    }
  } else {
  }
  {
  fmt.bmHint = 0U;
  fmt.bFormatIndex = 1U;
  fmt.bFrameIndex = 1U;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.unitid, 1, 1, 4, (void *)(& fmt));
  }
  if (ret != 0) {
    {
    printk("\v%s() set error, ret = 0x%x\n", "saa7164_api_set_vbi_format", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.unitid, 129, 1, 4, (void *)(& rsp));
  }
  if (ret != 0) {
    {
    printk("\v%s() get error, ret = 0x%x\n", "saa7164_api_set_vbi_format", ret);
    }
  } else {
    {
    tmp___0 = memcmp((void const *)(& fmt), (void const *)(& rsp), 4UL);
    }
    if (tmp___0 == 0) {
      if ((saa_debug & 32U) != 0U) {
        {
        printk("\017%s: SET/PROBE Verified\n", (char *)(& dev->name));
        }
      } else {
      }
      {
      ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.unitid, 1, 2, 4, (void *)(& fmt));
      }
      if (ret != 0) {
        {
        printk("\v%s() commit error, ret = 0x%x\n", "saa7164_api_set_vbi_format",
               ret);
        }
      } else {
      }
      {
      ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.unitid, 129, 2, 4, (void *)(& rsp));
      }
      if (ret != 0) {
        {
        printk("\v%s() GET commit error, ret = 0x%x\n", "saa7164_api_set_vbi_format",
               ret);
        }
      } else {
      }
      {
      tmp = memcmp((void const *)(& fmt), (void const *)(& rsp), 4UL);
      }
      if (tmp != 0) {
        {
        printk("\v%s() memcmp error, ret = 0x%x\n", "saa7164_api_set_vbi_format",
               ret);
        }
      } else
      if ((saa_debug & 32U) != 0U) {
        {
        printk("\017%s: SET/COMMIT Verified\n", (char *)(& dev->name));
        }
      } else {
      }
      if ((saa_debug & 32U) != 0U) {
        {
        printk("\017%s: rsp.bmHint = 0x%x\n", (char *)(& dev->name), (int )rsp.bmHint);
        }
      } else {
      }
      if ((saa_debug & 32U) != 0U) {
        {
        printk("\017%s: rsp.bFormatIndex = 0x%x\n", (char *)(& dev->name), (int )rsp.bFormatIndex);
        }
      } else {
      }
      if ((saa_debug & 32U) != 0U) {
        {
        printk("\017%s: rsp.bFrameIndex = 0x%x\n", (char *)(& dev->name), (int )rsp.bFrameIndex);
        }
      } else {
      }
    } else {
      {
      printk("\v%s() compare failed\n", "saa7164_api_set_vbi_format");
      }
    }
  }
  if (ret == 0) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s: %s(nr=%d) Success\n", (char *)(& dev->name), "saa7164_api_set_vbi_format",
             port->nr);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int saa7164_api_set_gop_size(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResEncVideoGopStructure gs ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_set_gop_size");
    }
  } else {
  }
  {
  gs.ucRefFrameDist = (u8 )port->encoder_params.refdist;
  gs.ucGOPSize = (u8 )port->encoder_params.gop_size;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 4, 2, (void *)(& gs));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_gop_size", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_encoder(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResEncVideoBitRate vb ;
  struct tmComResEncAudioBitRate ab ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() unitid=0x%x\n", (char *)(& dev->name), "saa7164_api_set_encoder",
           (int )port->hwcfg.sourceid);
    }
  } else {
  }
  if (port->encoder_params.stream_type == 0U) {
    port->encoder_profile = 6U;
  } else {
    port->encoder_profile = 9U;
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 0, 1, (void *)(& port->encoder_profile));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 0, 1, (void *)(& port->encoder_profile));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_encoder", ret);
    }
  } else {
  }
  if (port->encoder_params.bitrate_mode == 1U) {
    vb.ucVideoBitRateMode = 0U;
  } else {
    vb.ucVideoBitRateMode = 2U;
  }
  {
  vb.dwVideoBitRate = port->encoder_params.bitrate;
  vb.dwVideoBitRatePeak = port->encoder_params.bitrate_peak;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 2, 9, (void *)(& vb));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_encoder", ret);
    }
  } else {
  }
  {
  ab.ucAudioBitRateMode = 0U;
  ab.dwAudioBitRate = 384000U;
  ab.dwAudioBitRatePeak = ab.dwAudioBitRate;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 13, 9, (void *)(& ab));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_encoder", ret);
    }
  } else {
  }
  {
  saa7164_api_set_aspect_ratio(port);
  saa7164_api_set_gop_size(port);
  }
  return (ret);
}
}
int saa7164_api_get_encoder(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResEncVideoBitRate v ;
  struct tmComResEncAudioBitRate a ;
  struct tmComResEncVideoInputAspectRatio ar ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() unitid=0x%x\n", (char *)(& dev->name), "saa7164_api_get_encoder",
           (int )port->hwcfg.sourceid);
    }
  } else {
  }
  {
  port->encoder_profile = 0U;
  port->video_format = 0U;
  port->video_resolution = 0U;
  port->audio_format = 0U;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 0, 1, (void *)(& port->encoder_profile));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 3, 1, (void *)(& port->video_resolution));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 1, 1, (void *)(& port->video_format));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 2, 9, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 12, 1, (void *)(& port->audio_format));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 13, 9, (void *)(& a));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  {
  ar.width = 0U;
  ar.height = 0U;
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 129, 10, 2, (void *)(& ar));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_encoder", ret);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: encoder_profile = %d\n", (char *)(& dev->name), (int )port->encoder_profile);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: video_format    = %d\n", (char *)(& dev->name), (int )port->video_format);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: audio_format    = %d\n", (char *)(& dev->name), (int )port->audio_format);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: video_resolution= %d\n", (char *)(& dev->name), (int )port->video_resolution);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: v.ucVideoBitRateMode = %d\n", (char *)(& dev->name), (int )v.ucVideoBitRateMode);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: v.dwVideoBitRate     = %d\n", (char *)(& dev->name), v.dwVideoBitRate);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: v.dwVideoBitRatePeak = %d\n", (char *)(& dev->name), v.dwVideoBitRatePeak);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: a.ucVideoBitRateMode = %d\n", (char *)(& dev->name), (int )a.ucAudioBitRateMode);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: a.dwVideoBitRate     = %d\n", (char *)(& dev->name), a.dwAudioBitRate);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: a.dwVideoBitRatePeak = %d\n", (char *)(& dev->name), a.dwAudioBitRatePeak);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: aspect.width / height = %d:%d\n", (char *)(& dev->name), (int )ar.width,
           (int )ar.height);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_aspect_ratio(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResEncVideoInputAspectRatio ar ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(%d)\n", (char *)(& dev->name), "saa7164_api_set_aspect_ratio",
           port->encoder_params.ctl_aspect);
    }
  } else {
  }
  {
  if (port->encoder_params.ctl_aspect == 0U) {
    goto case_0;
  } else {
  }
  if (port->encoder_params.ctl_aspect == 1U) {
    goto case_1;
  } else {
  }
  if (port->encoder_params.ctl_aspect == 2U) {
    goto case_2;
  } else {
  }
  if (port->encoder_params.ctl_aspect == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  ar.width = 1U;
  ar.height = 1U;
  goto ldv_49343;
  case_1:
  ar.width = 4U;
  ar.height = 3U;
  goto ldv_49343;
  case_2:
  ar.width = 16U;
  ar.height = 9U;
  goto ldv_49343;
  case_3:
  ar.width = 221U;
  ar.height = 100U;
  goto ldv_49343;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-api.c"),
                       "i" (351), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_49343: ;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(%d) now %d:%d\n", (char *)(& dev->name), "saa7164_api_set_aspect_ratio",
           port->encoder_params.ctl_aspect, (int )ar.width, (int )ar.height);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.sourceid, 1, 10, 2, (void *)(& ar));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_aspect_ratio", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_usercontrol(struct saa7164_port *port , u8 ctl )
{
  struct saa7164_dev *dev ;
  int ret ;
  u16 val ;
  {
  dev = port->dev;
  if ((unsigned int )ctl == 2U) {
    val = port->ctl_brightness;
  } else
  if ((unsigned int )ctl == 3U) {
    val = port->ctl_contrast;
  } else
  if ((unsigned int )ctl == 6U) {
    val = port->ctl_hue;
  } else
  if ((unsigned int )ctl == 7U) {
    val = port->ctl_saturation;
  } else
  if ((unsigned int )ctl == 8U) {
    val = port->ctl_sharpness;
  } else {
    return (-22);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() unitid=0x%x ctl=%d, val=%d\n", (char *)(& dev->name), "saa7164_api_set_usercontrol",
           (int )port->encunit.vsourceid, (int )ctl, (int )val);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->encunit.vsourceid, 1, (int )ctl, 2,
                         (void *)(& val));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_usercontrol", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_get_usercontrol(struct saa7164_port *port , u8 ctl )
{
  struct saa7164_dev *dev ;
  int ret ;
  u16 val ;
  {
  {
  dev = port->dev;
  ret = saa7164_cmd_send(port->dev, (int )port->encunit.vsourceid, 129, (int )ctl,
                         2, (void *)(& val));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_usercontrol", ret);
    }
    return (ret);
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() ctl=%d, val=%d\n", (char *)(& dev->name), "saa7164_api_get_usercontrol",
           (int )ctl, (int )val);
    }
  } else {
  }
  if ((unsigned int )ctl == 2U) {
    port->ctl_brightness = val;
  } else
  if ((unsigned int )ctl == 3U) {
    port->ctl_contrast = val;
  } else
  if ((unsigned int )ctl == 6U) {
    port->ctl_hue = val;
  } else
  if ((unsigned int )ctl == 7U) {
    port->ctl_saturation = val;
  } else
  if ((unsigned int )ctl == 8U) {
    port->ctl_sharpness = val;
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_videomux(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  u8 inputs[7U] ;
  int ret ;
  {
  dev = port->dev;
  inputs[0] = 1U;
  inputs[1] = 2U;
  inputs[2] = 2U;
  inputs[3] = 2U;
  inputs[4] = 5U;
  inputs[5] = 5U;
  inputs[6] = 5U;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() v_mux=%d a_mux=%d\n", (char *)(& dev->name), "saa7164_api_set_videomux",
           (int )port->mux_input, (int )inputs[(int )port->mux_input + -1]);
    }
  } else {
  }
  {
  ret = saa7164_api_audio_mute(port, 1);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_videomux", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->vidproc.sourceid, 1, 1, 1, (void *)(& port->mux_input));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_videomux", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.sourceid, 1, 1, 1, (void *)(& inputs) + ((unsigned long )port->mux_input + 0xffffffffffffffffUL));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_videomux", ret);
    }
  } else {
  }
  {
  ret = saa7164_api_audio_mute(port, 0);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_videomux", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_audio_mute(struct saa7164_port *port , int mute )
{
  struct saa7164_dev *dev ;
  u8 v ;
  int ret ;
  {
  dev = port->dev;
  v = (u8 )mute;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(%d)\n", (char *)(& dev->name), "saa7164_api_audio_mute", mute);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 1, 1, 1, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_audio_mute", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_audio_volume(struct saa7164_port *port , s8 level )
{
  struct saa7164_dev *dev ;
  s16 v ;
  s16 min ;
  s16 max ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(%d)\n", (char *)(& dev->name), "saa7164_api_set_audio_volume",
           (int )level);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 130, 2, 2, (void *)(& min));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 131, 2, 2, (void *)(& max));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 129, 258, 2, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(%d) min=%d max=%d cur=%d\n", (char *)(& dev->name), "saa7164_api_set_audio_volume",
           (int )level, (int )min, (int )max, (int )v);
    }
  } else {
  }
  v = (s16 )level;
  if ((int )v < (int )min) {
    v = min;
  } else {
  }
  if ((int )v > (int )max) {
    v = max;
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 1, 258, 2, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 1, 514, 2, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 129, 258, 2, (void *)(& v));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_volume", ret);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(%d) min=%d max=%d cur=%d\n", (char *)(& dev->name), "saa7164_api_set_audio_volume",
           (int )level, (int )min, (int )max, (int )v);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_audio_std(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct tmComResAudioDefaults lvl ;
  struct tmComResTunerStandard tvaudio ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_set_audio_std");
    }
  } else {
  }
  {
  lvl.ucDecoderLevel = 0U;
  lvl.ucDecoderFM_Level = 0U;
  lvl.ucMonoLevel = 0U;
  lvl.ucNICAM_Level = 0U;
  lvl.ucSAP_Level = 0U;
  lvl.ucADC_Level = 0U;
  ret = saa7164_cmd_send(port->dev, (int )port->audfeat.unitid, 1, 13, 6, (void *)(& lvl));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_set_audio_std", ret);
    }
  } else {
  }
  if ((port->encodernorm.id & 45056ULL) != 0ULL) {
    tvaudio.std = 1U;
    tvaudio.country = 1U;
  } else {
    tvaudio.std = 8U;
    tvaudio.country = 44U;
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->tunerunit.unitid, 1, 0, 5, (void *)(& tvaudio));
  }
  if (ret != 0) {
    {
    printk("\v%s() TU_STANDARD_CONTROL error, ret = 0x%x\n", "saa7164_api_set_audio_std",
           ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_audio_detection(struct saa7164_port *port , int autodetect )
{
  struct saa7164_dev *dev ;
  struct tmComResTunerStandardAuto p ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(%d)\n", (char *)(& dev->name), "saa7164_api_set_audio_detection",
           autodetect);
    }
  } else {
  }
  if (autodetect != 0) {
    p.mode = 1U;
  } else {
    p.mode = 0U;
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->tunerunit.unitid, 1, 1, 1, (void *)(& p));
  }
  if (ret != 0) {
    {
    printk("\v%s() TU_STANDARD_AUTO_CONTROL error, ret = 0x%x\n", "saa7164_api_set_audio_detection",
           ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_get_videomux(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_cmd_send(port->dev, (int )port->vidproc.sourceid, 129, 1, 1, (void *)(& port->mux_input));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_videomux", ret);
    }
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() v_mux=%d\n", (char *)(& dev->name), "saa7164_api_get_videomux",
           (int )port->mux_input);
    }
  } else {
  }
  return (ret);
}
}
static int saa7164_api_set_dif(struct saa7164_port *port , u8 reg , u8 val )
{
  struct saa7164_dev *dev ;
  u16 len ;
  u8 buf[256U] ;
  int ret ;
  u8 mas ;
  {
  dev = port->dev;
  len = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(nr=%d type=%d val=%x)\n", (char *)(& dev->name), "saa7164_api_set_dif",
           port->nr, (unsigned int )port->type, (int )val);
    }
  } else {
  }
  if (port->nr == 0) {
    mas = 208U;
  } else {
    mas = 224U;
  }
  {
  memset((void *)(& buf), 0, 256UL);
  buf[0] = 4U;
  buf[1] = 0U;
  buf[2] = 0U;
  buf[3] = 0U;
  buf[4] = 4U;
  buf[5] = 0U;
  buf[6] = 0U;
  buf[7] = 0U;
  buf[8] = reg;
  buf[9] = 38U;
  buf[10] = mas;
  buf[11] = 176U;
  buf[12] = val;
  buf[13] = 0U;
  buf[14] = 0U;
  buf[15] = 0U;
  ret = saa7164_cmd_send(dev, (int )port->ifunit.unitid, 133, 0, 2, (void *)(& len));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(1) = 0x%x\n", "saa7164_api_set_dif", ret);
    }
    return (-5);
  } else {
  }
  {
  ret = saa7164_cmd_send(dev, (int )port->ifunit.unitid, 1, 0, (int )len, (void *)(& buf));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(2) = 0x%x\n", "saa7164_api_set_dif", ret);
    }
  } else {
  }
  return (ret == 0 ? 0 : -5);
}
}
int saa7164_api_configure_dif(struct saa7164_port *port , u32 std )
{
  struct saa7164_dev *dev ;
  int ret ;
  u8 agc_disable ;
  {
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(nr=%d, 0x%x)\n", (char *)(& dev->name), "saa7164_api_configure_dif",
           port->nr, std);
    }
  } else {
  }
  if (((unsigned long long )std & 45056ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  NTSC\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 1);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 16ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-I\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 8);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 256ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-M\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 1);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 512ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-N\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 1);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 1024ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-Nc\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 1);
    agc_disable = 0U;
    }
  } else
  if ((int )std & 1) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-B\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 2);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 224ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  PAL-DK\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 16);
    agc_disable = 0U;
    }
  } else
  if (((unsigned long long )std & 4194304ULL) != 0ULL) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  SECAM-L\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 32);
    agc_disable = 0U;
    }
  } else {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:  Unknown (assuming DTV)\n", (char *)(& dev->name));
      }
    } else {
    }
    {
    saa7164_api_set_dif(port, 0, 128);
    agc_disable = 1U;
    }
  }
  {
  saa7164_api_set_dif(port, 72, 160);
  saa7164_api_set_dif(port, 192, (int )agc_disable);
  saa7164_api_set_dif(port, 124, 4);
  saa7164_api_set_dif(port, 4, 1);
  msleep(100U);
  saa7164_api_set_dif(port, 4, 0);
  msleep(100U);
  }
  return (ret);
}
}
int saa7164_api_initialize_dif(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_port *p ;
  int ret ;
  u32 std ;
  {
  dev = port->dev;
  p = (struct saa7164_port *)0;
  ret = -22;
  std = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(nr=%d type=%d)\n", (char *)(& dev->name), "saa7164_api_initialize_dif",
           port->nr, (unsigned int )port->type);
    }
  } else {
  }
  if ((unsigned int )port->type == 2U) {
    std = 45056U;
  } else
  if ((unsigned int )port->type == 1U) {
    if (port->nr == 0) {
      p = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      p = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
  } else
  if ((unsigned int )port->type == 3U) {
    std = 45056U;
    if (port->nr == 4) {
      p = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      p = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-api.c"),
                         "i" (774), "i" (12UL));
    __builtin_unreachable();
    }
  }
  if ((unsigned long )p != (unsigned long )((struct saa7164_port *)0)) {
    {
    ret = saa7164_api_configure_dif(p, std);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_transition_port(struct saa7164_port *port , u8 mode )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  dev = port->dev;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(nr=%d unitid=0x%x,%d)\n", (char *)(& dev->name), "saa7164_api_transition_port",
           port->nr, (int )port->hwcfg.unitid, (int )mode);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(port->dev, (int )port->hwcfg.unitid, 1, 3, 1, (void *)(& mode));
  }
  if (ret != 0) {
    {
    printk("\v%s(portnr %d unitid 0x%x) error, ret = 0x%x\n", "saa7164_api_transition_port",
           port->nr, (int )port->hwcfg.unitid, ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_get_fw_version(struct saa7164_dev *dev , u32 *version )
{
  int ret ;
  {
  {
  ret = saa7164_cmd_send(dev, 0, 129, 9, 4, (void *)version);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_get_fw_version", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_read_eeprom(struct saa7164_dev *dev , u8 *buf , int buflen )
{
  u8 reg[2U] ;
  int tmp ;
  {
  reg[0] = 15U;
  reg[1] = 0U;
  if (buflen <= 127) {
    return (-12);
  } else {
  }
  {
  tmp = saa7164_api_i2c_read((struct saa7164_i2c *)(& dev->i2c_bus), 80, 2U, (u8 *)(& reg),
                             128U, buf);
  }
  return (tmp);
}
}
static int saa7164_api_configure_port_vbi(struct saa7164_dev *dev , struct saa7164_port *port )
{
  struct tmComResVBIFormatDescrHeader *fmt ;
  {
  fmt = & port->vbi_fmt_ntsc;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bFormatIndex  = 0x%x\n", (char *)(& dev->name), (int )fmt->bFormatIndex);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     VideoStandard = 0x%x\n", (char *)(& dev->name), fmt->VideoStandard);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     StartLine     = %d\n", (char *)(& dev->name), (int )fmt->StartLine);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     EndLine       = %d\n", (char *)(& dev->name), (int )fmt->EndLine);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     FieldRate     = %d\n", (char *)(& dev->name), (int )fmt->FieldRate);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bNumLines     = %d\n", (char *)(& dev->name), (int )fmt->bNumLines);
    }
  } else {
  }
  port->bufcounter = port->hwcfg.BARLocation;
  port->pitch = port->hwcfg.BARLocation + 8U;
  port->bufsize = port->hwcfg.BARLocation + 12U;
  port->bufoffset = port->hwcfg.BARLocation + 16U;
  port->bufptr32l = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 20U;
  port->bufptr32h = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 16U;
  port->bufptr64 = (u64 )(((unsigned long )port->hwcfg.BARLocation + (unsigned long )port->hwcfg.buffercount * 4UL) + 16UL);
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = port->hwcfg.BARLocation = 0x%x\n", (char *)(& dev->name),
           port->hwcfg.BARLocation);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_VBI (becomes dev->en[%d])\n", (char *)(& dev->name),
           port->nr);
    }
  } else {
  }
  return (0);
}
}
static int saa7164_api_configure_port_mpeg2ts(struct saa7164_dev *dev , struct saa7164_port *port ,
                                              struct tmComResTSFormatDescrHeader *tsfmt )
{
  {
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bFormatIndex = 0x%x\n", (char *)(& dev->name), (int )tsfmt->bFormatIndex);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bDataOffset  = 0x%x\n", (char *)(& dev->name), (int )tsfmt->bDataOffset);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bPacketLength= 0x%x\n", (char *)(& dev->name), (int )tsfmt->bPacketLength);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bStrideLength= 0x%x\n", (char *)(& dev->name), (int )tsfmt->bStrideLength);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bguid        = (....)\n", (char *)(& dev->name));
    }
  } else {
  }
  port->bufcounter = port->hwcfg.BARLocation;
  port->pitch = port->hwcfg.BARLocation + 8U;
  port->bufsize = port->hwcfg.BARLocation + 12U;
  port->bufoffset = port->hwcfg.BARLocation + 16U;
  port->bufptr32l = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 20U;
  port->bufptr32h = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 16U;
  port->bufptr64 = (u64 )(((unsigned long )port->hwcfg.BARLocation + (unsigned long )port->hwcfg.buffercount * 4UL) + 16UL);
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = port->hwcfg.BARLocation = 0x%x\n", (char *)(& dev->name),
           port->hwcfg.BARLocation);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_MPEGTS (becomes dev->ts[%d])\n", (char *)(& dev->name),
           port->nr);
    }
  } else {
  }
  return (0);
}
}
static int saa7164_api_configure_port_mpeg2ps(struct saa7164_dev *dev , struct saa7164_port *port ,
                                              struct tmComResPSFormatDescrHeader *fmt )
{
  {
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bFormatIndex = 0x%x\n", (char *)(& dev->name), (int )fmt->bFormatIndex);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     wPacketLength= 0x%x\n", (char *)(& dev->name), (int )fmt->wPacketLength);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     wPackLength=   0x%x\n", (char *)(& dev->name), (int )fmt->wPackLength);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:     bPackDataType= 0x%x\n", (char *)(& dev->name), (int )fmt->bPackDataType);
    }
  } else {
  }
  port->bufcounter = port->hwcfg.BARLocation;
  port->pitch = port->hwcfg.BARLocation + 8U;
  port->bufsize = port->hwcfg.BARLocation + 12U;
  port->bufoffset = port->hwcfg.BARLocation + 16U;
  port->bufptr32l = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 20U;
  port->bufptr32h = (port->hwcfg.BARLocation + (u32 )port->hwcfg.buffercount * 4U) + 16U;
  port->bufptr64 = (u64 )(((unsigned long )port->hwcfg.BARLocation + (unsigned long )port->hwcfg.buffercount * 4UL) + 16UL);
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = port->hwcfg.BARLocation = 0x%x\n", (char *)(& dev->name),
           port->hwcfg.BARLocation);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_MPEGPS (becomes dev->enc[%d])\n", (char *)(& dev->name),
           port->nr);
    }
  } else {
  }
  return (0);
}
}
static int saa7164_api_dump_subdevs(struct saa7164_dev *dev , u8 *buf , int len )
{
  struct saa7164_port *tsport ;
  struct saa7164_port *encport ;
  struct saa7164_port *vbiport ;
  u32 idx ;
  u32 next_offset ;
  int i ;
  struct tmComResDescrHeader *hdr ;
  struct tmComResDescrHeader *t ;
  struct tmComResExtDevDescrHeader *exthdr ;
  struct tmComResPathDescrHeader *pathhdr ;
  struct tmComResAntTermDescrHeader *anttermhdr ;
  struct tmComResTunerDescrHeader *tunerunithdr ;
  struct tmComResDMATermDescrHeader *vcoutputtermhdr ;
  struct tmComResTSFormatDescrHeader *tsfmt ;
  struct tmComResPSFormatDescrHeader *psfmt ;
  struct tmComResSelDescrHeader *psel ;
  struct tmComResProcDescrHeader *pdh ;
  struct tmComResAFeatureDescrHeader *afd ;
  struct tmComResEncoderDescrHeader *edh ;
  struct tmComResVBIFormatDescrHeader *vbifmt ;
  u32 currpath ;
  {
  tsport = (struct saa7164_port *)0;
  encport = (struct saa7164_port *)0;
  vbiport = (struct saa7164_port *)0;
  currpath = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(?,?,%d) sizeof(struct tmComResDescrHeader) = %d bytes\n", (char *)(& dev->name),
           "saa7164_api_dump_subdevs", len, 4U);
    }
  } else {
  }
  idx = 0U;
  goto ldv_49543;
  ldv_49542:
  hdr = (struct tmComResDescrHeader *)buf + (unsigned long )idx;
  if ((unsigned int )hdr->type != 36U) {
    return (19);
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: @ 0x%x =\n", (char *)(& dev->name), idx);
    }
  } else {
  }
  {
  if ((int )hdr->subtype == 245) {
    goto case_245;
  } else {
  }
  if ((int )hdr->subtype == 240) {
    goto case_240;
  } else {
  }
  if ((int )hdr->subtype == 2) {
    goto case_2;
  } else {
  }
  if ((int )hdr->subtype == 3) {
    goto case_3;
  } else {
  }
  if ((int )hdr->subtype == 9) {
    goto case_9___0;
  } else {
  }
  if ((int )hdr->subtype == 4) {
    goto case_4___0;
  } else {
  }
  if ((int )hdr->subtype == 5) {
    goto case_5;
  } else {
  }
  if ((int )hdr->subtype == 6) {
    goto case_6;
  } else {
  }
  if ((int )hdr->subtype == 10) {
    goto case_10___0;
  } else {
  }
  if ((int )hdr->subtype == 11) {
    goto case_11;
  } else {
  }
  if ((int )hdr->subtype == 243) {
    goto case_243;
  } else {
  }
  if ((int )hdr->subtype == 244) {
    goto case_244;
  } else {
  }
  goto switch_default___2;
  case_245: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  GENERAL_REQUEST\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49500;
  case_240: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  VC_TUNER_PATH\n", (char *)(& dev->name));
    }
  } else {
  }
  pathhdr = (struct tmComResPathDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   pathid = 0x%x\n", (char *)(& dev->name), (int )pathhdr->pathid);
    }
  } else {
  }
  currpath = (u32 )pathhdr->pathid;
  goto ldv_49500;
  case_2: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  VC_INPUT_TERMINAL\n", (char *)(& dev->name));
    }
  } else {
  }
  anttermhdr = (struct tmComResAntTermDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   terminalid   = 0x%x\n", (char *)(& dev->name), (int )anttermhdr->terminalid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   terminaltype = 0x%x\n", (char *)(& dev->name), (int )anttermhdr->terminaltype);
    }
  } else {
  }
  {
  if ((int )anttermhdr->terminaltype == 515) {
    goto case_515;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 1539) {
    goto case_1539;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 1541) {
    goto case_1541;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 1025) {
    goto case_1025;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 1026) {
    goto case_1026;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 1027) {
    goto case_1027;
  } else {
  }
  if ((int )anttermhdr->terminaltype == 61697) {
    goto case_61697;
  } else {
  }
  goto switch_default;
  case_515: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = ITT_ANTENNA\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_1539: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = LINE_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_1541: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = SPDIF_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_1025: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = COMPOSITE_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_1026: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = SVIDEO_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_1027: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = COMPONENT_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  case_61697: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = STANDARD_DMA\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49504;
  switch_default: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = undefined (0x%x)\n", (char *)(& dev->name), (int )anttermhdr->terminaltype);
    }
  } else {
  }
  switch_break___0: ;
  }
  ldv_49504: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   assocterminal= 0x%x\n", (char *)(& dev->name), (int )anttermhdr->assocterminal);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   iterminal    = 0x%x\n", (char *)(& dev->name), (int )anttermhdr->iterminal);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize  = 0x%x\n", (char *)(& dev->name), (int )anttermhdr->controlsize);
    }
  } else {
  }
  goto ldv_49500;
  case_3: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  VC_OUTPUT_TERMINAL\n", (char *)(& dev->name));
    }
  } else {
  }
  vcoutputtermhdr = (struct tmComResDMATermDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   terminaltype = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->terminaltype);
    }
  } else {
  }
  {
  if ((int )vcoutputtermhdr->terminaltype == 515) {
    goto case_515___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 1539) {
    goto case_1539___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 1541) {
    goto case_1541___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 1025) {
    goto case_1025___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 1026) {
    goto case_1026___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 1027) {
    goto case_1027___0;
  } else {
  }
  if ((int )vcoutputtermhdr->terminaltype == 61697) {
    goto case_61697___0;
  } else {
  }
  goto switch_default___0;
  case_515___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = ITT_ANTENNA\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_1539___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = LINE_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_1541___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = SPDIF_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_1025___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = COMPOSITE_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_1026___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = SVIDEO_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_1027___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = COMPONENT_CONNECTOR\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  case_61697___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = STANDARD_DMA\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49514;
  switch_default___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = undefined (0x%x)\n", (char *)(& dev->name), (int )vcoutputtermhdr->terminaltype);
    }
  } else {
  }
  switch_break___1: ;
  }
  ldv_49514: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   assocterminal= 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->assocterminal);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   sourceid     = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->sourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   iterminal    = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->iterminal);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   BARLocation  = 0x%x\n", (char *)(& dev->name), vcoutputtermhdr->BARLocation);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   flags        = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->flags);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   interruptid  = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->interruptid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   buffercount  = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->buffercount);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   metadatasize = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->metadatasize);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize  = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->controlsize);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   numformats   = 0x%x\n", (char *)(& dev->name), (int )vcoutputtermhdr->numformats);
    }
  } else {
  }
  t = (struct tmComResDescrHeader *)buf + (unsigned long )idx;
  next_offset = idx + (u32 )vcoutputtermhdr->len;
  i = 0;
  goto ldv_49531;
  ldv_49530:
  t = (struct tmComResDescrHeader *)buf + (unsigned long )next_offset;
  {
  if ((int )t->subtype == 10) {
    goto case_10;
  } else {
  }
  if ((int )t->subtype == 9) {
    goto case_9;
  } else {
  }
  if ((int )t->subtype == 14) {
    goto case_14;
  } else {
  }
  if ((int )t->subtype == 15) {
    goto case_15;
  } else {
  }
  if ((int )t->subtype == 4) {
    goto case_4;
  } else {
  }
  if ((int )t->subtype == 2) {
    goto case_2___0;
  } else {
  }
  goto switch_default___1;
  case_10:
  tsfmt = (struct tmComResTSFormatDescrHeader *)t;
  if (currpath == 1U) {
    tsport = (struct saa7164_port *)(& dev->ports);
  } else {
    tsport = (struct saa7164_port *)(& dev->ports) + 1UL;
  }
  {
  memcpy((void *)(& tsport->hwcfg), (void const *)vcoutputtermhdr, 19UL);
  saa7164_api_configure_port_mpeg2ts(dev, tsport, tsfmt);
  }
  goto ldv_49523;
  case_9:
  psfmt = (struct tmComResPSFormatDescrHeader *)t;
  if (currpath == 1U) {
    encport = (struct saa7164_port *)(& dev->ports) + 2UL;
  } else {
    encport = (struct saa7164_port *)(& dev->ports) + 3UL;
  }
  {
  memcpy((void *)(& encport->hwcfg), (void const *)vcoutputtermhdr, 19UL);
  saa7164_api_configure_port_mpeg2ps(dev, encport, psfmt);
  }
  goto ldv_49523;
  case_14:
  vbifmt = (struct tmComResVBIFormatDescrHeader *)t;
  if (currpath == 1U) {
    vbiport = (struct saa7164_port *)(& dev->ports) + 4UL;
  } else {
    vbiport = (struct saa7164_port *)(& dev->ports) + 5UL;
  }
  {
  memcpy((void *)(& vbiport->hwcfg), (void const *)vcoutputtermhdr, 19UL);
  memcpy((void *)(& vbiport->vbi_fmt_ntsc), (void const *)vbifmt, 12UL);
  saa7164_api_configure_port_vbi(dev, vbiport);
  }
  goto ldv_49523;
  case_15: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_RDS\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49523;
  case_4: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_UNCOMPRESSED\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49523;
  case_2___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = VS_FORMAT_TYPE\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49523;
  switch_default___1: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:    = undefined (0x%x)\n", (char *)(& dev->name), (int )t->subtype);
    }
  } else {
  }
  switch_break___2: ;
  }
  ldv_49523:
  next_offset = next_offset + (u32 )t->len;
  i = i + 1;
  ldv_49531: ;
  if (i < (int )vcoutputtermhdr->numformats) {
    goto ldv_49530;
  } else {
  }
  goto ldv_49500;
  case_9___0: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  TUNER_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  tunerunithdr = (struct tmComResTunerDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )tunerunithdr->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   sourceid = 0x%x\n", (char *)(& dev->name), (int )tunerunithdr->sourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   iunit = 0x%x\n", (char *)(& dev->name), (int )tunerunithdr->iunit);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   tuningstandards = 0x%x\n", (char *)(& dev->name), tunerunithdr->tuningstandards);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize = 0x%x\n", (char *)(& dev->name), (int )tunerunithdr->controlsize);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controls = 0x%x\n", (char *)(& dev->name), tunerunithdr->controls);
    }
  } else {
  }
  if ((int )tunerunithdr->unitid == (int )tunerunithdr->iunit) {
    if (currpath == 1U) {
      encport = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      encport = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
    {
    memcpy((void *)(& encport->tunerunit), (void const *)tunerunithdr, 15UL);
    }
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:   (becomes dev->enc[%d] tuner)\n", (char *)(& dev->name), encport->nr);
      }
    } else {
    }
  } else {
  }
  goto ldv_49500;
  case_4___0:
  psel = (struct tmComResSelDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  VC_SELECTOR_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )psel->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   nrinpins = 0x%x\n", (char *)(& dev->name), (int )psel->nrinpins);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   sourceid = 0x%x\n", (char *)(& dev->name), (int )psel->sourceid);
    }
  } else {
  }
  goto ldv_49500;
  case_5:
  pdh = (struct tmComResProcDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  VC_PROCESSING_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )pdh->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   sourceid = 0x%x\n", (char *)(& dev->name), (int )pdh->sourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize = 0x%x\n", (char *)(& dev->name), (int )pdh->controlsize);
    }
  } else {
  }
  if ((unsigned int )pdh->controlsize == 4U) {
    if (currpath == 1U) {
      encport = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      encport = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
    {
    memcpy((void *)(& encport->vidproc), (void const *)pdh, 8UL);
    }
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:   (becomes dev->enc[%d])\n", (char *)(& dev->name), encport->nr);
      }
    } else {
    }
  } else {
  }
  goto ldv_49500;
  case_6:
  afd = (struct tmComResAFeatureDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  FEATURE_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )afd->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   sourceid = 0x%x\n", (char *)(& dev->name), (int )afd->sourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize = 0x%x\n", (char *)(& dev->name), (int )afd->controlsize);
    }
  } else {
  }
  if (currpath == 1U) {
    encport = (struct saa7164_port *)(& dev->ports) + 2UL;
  } else {
    encport = (struct saa7164_port *)(& dev->ports) + 3UL;
  }
  {
  memcpy((void *)(& encport->audfeat), (void const *)afd, 6UL);
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   (becomes dev->enc[%d])\n", (char *)(& dev->name), encport->nr);
    }
  } else {
  }
  goto ldv_49500;
  case_10___0:
  edh = (struct tmComResEncoderDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  ENCODER_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   subtype = 0x%x\n", (char *)(& dev->name), (int )edh->subtype);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )edh->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   vsourceid = 0x%x\n", (char *)(& dev->name), (int )edh->vsourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   asourceid = 0x%x\n", (char *)(& dev->name), (int )edh->asourceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   iunit = 0x%x\n", (char *)(& dev->name), (int )edh->iunit);
    }
  } else {
  }
  if ((int )edh->iunit == (int )edh->unitid) {
    if (currpath == 1U) {
      encport = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      encport = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
    {
    memcpy((void *)(& encport->encunit), (void const *)edh, 29UL);
    }
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:   (becomes dev->enc[%d])\n", (char *)(& dev->name), encport->nr);
      }
    } else {
    }
  } else {
  }
  goto ldv_49500;
  case_11: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  EXTENSION_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  exthdr = (struct tmComResExtDevDescrHeader *)buf + (unsigned long )idx;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   unitid = 0x%x\n", (char *)(& dev->name), (int )exthdr->unitid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   deviceid = 0x%x\n", (char *)(& dev->name), (int )exthdr->deviceid);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   devicetype = 0x%x\n", (char *)(& dev->name), exthdr->devicetype);
    }
  } else {
  }
  if ((int )exthdr->devicetype & 1) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Decoder Device\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 2U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = GPIO Source\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 4U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Video Decoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 8U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Audio Decoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 32U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Crossbar\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 64U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Tuner\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 128U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = IF PLL\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 256U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Demodulator\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 512U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = RDS Decoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 1024U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Encoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 2048U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = IR Decoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 4096U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = EEPROM\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 8192U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = VBI Decoder\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 65536U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Streaming Device\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 131072U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = DRM Device\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((exthdr->devicetype & 1073741824U) != 0U) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Generic Device\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((int )exthdr->devicetype < 0) {
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:    = Config Space Device\n", (char *)(& dev->name));
      }
    } else {
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   numgpiopins = 0x%x\n", (char *)(& dev->name), exthdr->numgpiopins);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   numgpiogroups = 0x%x\n", (char *)(& dev->name), (int )exthdr->numgpiogroups);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:   controlsize = 0x%x\n", (char *)(& dev->name), (int )exthdr->controlsize);
    }
  } else {
  }
  if ((exthdr->devicetype & 128U) != 0U) {
    if (currpath == 1U) {
      encport = (struct saa7164_port *)(& dev->ports) + 2UL;
    } else {
      encport = (struct saa7164_port *)(& dev->ports) + 3UL;
    }
    {
    memcpy((void *)(& encport->ifunit), (void const *)exthdr, 16UL);
    }
    if ((saa_debug & 32U) != 0U) {
      {
      printk("\017%s:   (becomes dev->enc[%d])\n", (char *)(& dev->name), encport->nr);
      }
    } else {
    }
  } else {
  }
  goto ldv_49500;
  case_243: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  PVC_INFRARED_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49500;
  case_244: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  DRM_UNIT\n", (char *)(& dev->name));
    }
  } else {
  }
  goto ldv_49500;
  switch_default___2: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: default %d\n", (char *)(& dev->name), (int )hdr->subtype);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_49500: ;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  1.%x\n", (char *)(& dev->name), (int )hdr->len);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  2.%x\n", (char *)(& dev->name), (int )hdr->type);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  3.%x\n", (char *)(& dev->name), (int )hdr->subtype);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s:  4.%x\n", (char *)(& dev->name), (int )hdr->unitid);
    }
  } else {
  }
  idx = idx + (u32 )hdr->len;
  ldv_49543: ;
  if ((unsigned long )idx < (unsigned long )len - 4UL) {
    goto ldv_49542;
  } else {
  }
  return (0);
}
}
int saa7164_api_enum_subdevs(struct saa7164_dev *dev )
{
  int ret ;
  u32 buflen ;
  u8 *buf ;
  void *tmp ;
  {
  buflen = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_enum_subdevs");
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(dev, 0, 133, 1, 4, (void *)(& buflen));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_enum_subdevs", ret);
    }
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s() total descriptor size = %d bytes.\n", (char *)(& dev->name),
           "saa7164_api_enum_subdevs", buflen);
    }
  } else {
  }
  {
  tmp = kzalloc((size_t )buflen, 208U);
  buf = (u8 *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return (12);
  } else {
  }
  {
  ret = saa7164_cmd_send(dev, 0, 129, 1, (int )((u16 )buflen), (void *)buf);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_enum_subdevs", ret);
    }
    goto out;
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    print_hex_dump("\016", "", 2, 16, 1, (void const *)buf, (size_t )buflen & 4294967280UL,
                   0);
    }
  } else {
  }
  {
  saa7164_api_dump_subdevs(dev, buf, (int )buflen);
  }
  out:
  {
  kfree((void const *)buf);
  }
  return (ret);
}
}
int saa7164_api_i2c_read(struct saa7164_i2c *bus , u8 addr , u32 reglen , u8 *reg ,
                         u32 datalen , u8 *data )
{
  struct saa7164_dev *dev ;
  u16 len ;
  int unitid ;
  u8 buf[256U] ;
  int ret ;
  {
  dev = bus->dev;
  len = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_i2c_read");
    }
  } else {
  }
  if (reglen > 4U) {
    return (-5);
  } else {
  }
  {
  memset((void *)(& buf), 0, 256UL);
  memcpy((void *)(& buf) + 8U, (void const *)reg, (size_t )reglen);
  *((u32 *)(& buf)) = reglen;
  *((u32 *)(& buf) + 4U) = datalen;
  unitid = saa7164_i2caddr_to_unitid(bus, (int )addr);
  }
  if (unitid < 0) {
    {
    printk("\v%s() error, cannot translate regaddr 0x%x to unitid\n", "saa7164_api_i2c_read",
           (int )addr);
    }
    return (-5);
  } else {
  }
  {
  ret = saa7164_cmd_send(bus->dev, (int )((u8 )unitid), 133, 0, 2, (void *)(& len));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(1) = 0x%x\n", "saa7164_api_i2c_read", ret);
    }
    return (-5);
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s() len = %d bytes\n", (char *)(& dev->name), "saa7164_api_i2c_read",
           (int )len);
    }
  } else {
  }
  if ((saa_debug & 16U) != 0U) {
    {
    print_hex_dump("\016", "", 2, 16, 1, (void const *)(& buf), 32UL, 0);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(bus->dev, (int )((u8 )unitid), 129, 0, (int )len, (void *)(& buf));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(2) = 0x%x\n", "saa7164_api_i2c_read", ret);
    }
  } else {
    if ((saa_debug & 16U) != 0U) {
      {
      print_hex_dump("\016", "", 2, 16, 1, (void const *)(& buf), 256UL, 0);
      }
    } else {
    }
    {
    memcpy((void *)data, (void const *)(& buf) + ((unsigned long )reglen + 8UL),
           (size_t )datalen);
    }
  }
  return (ret == 0 ? 0 : -5);
}
}
int saa7164_api_i2c_write(struct saa7164_i2c *bus , u8 addr , u32 datalen , u8 *data )
{
  struct saa7164_dev *dev ;
  u16 len ;
  int unitid ;
  int reglen ;
  u8 buf[256U] ;
  int ret ;
  {
  dev = bus->dev;
  len = 0U;
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_api_i2c_write");
    }
  } else {
  }
  if (datalen - 1U > 231U) {
    return (-5);
  } else {
  }
  {
  memset((void *)(& buf), 0, 256UL);
  unitid = saa7164_i2caddr_to_unitid(bus, (int )addr);
  }
  if (unitid < 0) {
    {
    printk("\v%s() error, cannot translate regaddr 0x%x to unitid\n", "saa7164_api_i2c_write",
           (int )addr);
    }
    return (-5);
  } else {
  }
  {
  reglen = saa7164_i2caddr_to_reglen(bus, (int )addr);
  }
  if (reglen < 0) {
    {
    printk("\v%s() error, cannot translate regaddr to reglen\n", "saa7164_api_i2c_write");
    }
    return (-5);
  } else {
  }
  {
  ret = saa7164_cmd_send(bus->dev, (int )((u8 )unitid), 133, 0, 2, (void *)(& len));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(1) = 0x%x\n", "saa7164_api_i2c_write", ret);
    }
    return (-5);
  } else {
  }
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s() len = %d bytes\n", (char *)(& dev->name), "saa7164_api_i2c_write",
           (int )len);
    }
  } else {
  }
  {
  *((u32 *)(& buf)) = (u32 )reglen;
  *((u32 *)(& buf) + 4U) = datalen - (u32 )reglen;
  memcpy((void *)(& buf) + 8U, (void const *)data, (size_t )datalen);
  }
  if ((saa_debug & 16U) != 0U) {
    {
    print_hex_dump("\016", "", 2, 16, 1, (void const *)(& buf), 256UL, 0);
    }
  } else {
  }
  {
  ret = saa7164_cmd_send(bus->dev, (int )((u8 )unitid), 1, 0, (int )len, (void *)(& buf));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret(2) = 0x%x\n", "saa7164_api_i2c_write", ret);
    }
  } else {
  }
  return (ret == 0 ? 0 : -5);
}
}
static int saa7164_api_modify_gpio(struct saa7164_dev *dev , u8 unitid , u8 pin ,
                                   u8 state )
{
  int ret ;
  struct tmComResGPIO t ;
  {
  if ((saa_debug & 32U) != 0U) {
    {
    printk("\017%s: %s(0x%x, %d, %d)\n", (char *)(& dev->name), "saa7164_api_modify_gpio",
           (int )unitid, (int )pin, (int )state);
    }
  } else {
  }
  if ((unsigned int )pin > 7U || (unsigned int )state > 2U) {
    return (9);
  } else {
  }
  {
  t.pin = (u32 )pin;
  t.state = state;
  ret = saa7164_cmd_send(dev, (int )unitid, 1, 1, 5, (void *)(& t));
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_api_modify_gpio", ret);
    }
  } else {
  }
  return (ret);
}
}
int saa7164_api_set_gpiobit(struct saa7164_dev *dev , u8 unitid , u8 pin )
{
  int tmp ;
  {
  {
  tmp = saa7164_api_modify_gpio(dev, (int )unitid, (int )pin, 1);
  }
  return (tmp);
}
}
int saa7164_api_clear_gpiobit(struct saa7164_dev *dev , u8 unitid , u8 pin )
{
  int tmp ;
  {
  {
  tmp = saa7164_api_modify_gpio(dev, (int )unitid, (int )pin, 0);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27___3(struct mutex *ldv_func_arg1 ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/d4e00c1/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
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
static void ldv_mutex_unlock_28___3(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
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
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/d4e00c1/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
void saa7164_buffer_display(struct saa7164_buffer *buf ) ;
int saa7164_buffer_activate(struct saa7164_buffer *buf , int i ) ;
struct saa7164_user_buffer *saa7164_buffer_alloc_user(struct saa7164_dev *dev , u32 len ) ;
void saa7164_buffer_dealloc_user(struct saa7164_user_buffer *buf ) ;
void saa7164_buffer_display(struct saa7164_buffer *buf )
{
  struct saa7164_dev *dev ;
  int i ;
  {
  dev = (buf->port)->dev;
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s()   buffer @ 0x%p nr=%d\n", (char *)(& dev->name), "saa7164_buffer_display",
           buf, buf->idx);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:   pci_cpu @ 0x%p    dma @ 0x%08llx len = 0x%x\n", (char *)(& dev->name),
           buf->cpu, (long long )buf->dma, buf->pci_size);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    pt_cpu @ 0x%p pt_dma @ 0x%08llx len = 0x%x\n", (char *)(& dev->name),
           buf->pt_cpu, (long long )buf->pt_dma, buf->pt_size);
    }
  } else {
  }
  i = 0;
  goto ldv_49295;
  ldv_49294: ;
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:     pt[%02d] = 0x%p -> 0x%llx\n", (char *)(& dev->name), i, buf->pt_cpu,
           *(buf->pt_cpu));
    }
  } else {
  }
  i = i + 1;
  ldv_49295: ;
  if (i <= 15) {
    goto ldv_49294;
  } else {
  }
  return;
}
}
struct saa7164_buffer *saa7164_buffer_alloc(struct saa7164_port *port , u32 len )
{
  struct tmHWStreamParameters *params ;
  struct saa7164_buffer *buf ;
  struct saa7164_dev *dev ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  params = & port->hw_streamingparams;
  buf = (struct saa7164_buffer *)0;
  dev = port->dev;
  if (len - 1U > 65534U || (len & 7U) != 0U) {
    {
    printk("\f%s: %s() SAA_ERR_BAD_PARAMETER\n", (char *)(& dev->name), "saa7164_buffer_alloc");
    }
    goto ret;
  } else {
  }
  {
  tmp = kzalloc(88UL, 208U);
  buf = (struct saa7164_buffer *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((struct saa7164_buffer *)0)) {
    {
    printk("\f%s: %s() SAA_ERR_NO_RESOURCES\n", (char *)(& dev->name), "saa7164_buffer_alloc");
    }
    goto ret;
  } else {
  }
  {
  buf->idx = -1;
  buf->port = port;
  buf->flags = 1;
  buf->pos = 0U;
  buf->actual_size = params->pitch * params->numberoflines;
  buf->crc = 0U;
  buf->pci_size = 65536U;
  buf->pt_size = 4224U;
  tmp___0 = pci_alloc_consistent((port->dev)->pci, (size_t )buf->pci_size, & buf->dma);
  buf->cpu = (u64 *)tmp___0;
  }
  if ((unsigned long )buf->cpu == (unsigned long )((u64 *)0ULL)) {
    goto fail1;
  } else {
  }
  {
  tmp___1 = pci_alloc_consistent((port->dev)->pci, (size_t )buf->pt_size, & buf->pt_dma);
  buf->pt_cpu = (u64 *)tmp___1;
  }
  if ((unsigned long )buf->pt_cpu == (unsigned long )((u64 *)0ULL)) {
    goto fail2;
  } else {
  }
  {
  memset_io((void volatile *)buf->cpu, 255, (size_t )buf->pci_size);
  buf->crc = crc32_le(0U, (unsigned char const *)buf->cpu, (size_t )buf->actual_size);
  memset_io((void volatile *)buf->pt_cpu, 255, (size_t )buf->pt_size);
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s()   allocated buffer @ 0x%p (%d pageptrs)\n", (char *)(& dev->name),
           "saa7164_buffer_alloc", buf, params->numpagetables);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:   pci_cpu @ 0x%p    dma @ 0x%08lx len = 0x%x\n", (char *)(& dev->name),
           buf->cpu, (long )buf->dma, buf->pci_size);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    pt_cpu @ 0x%p pt_dma @ 0x%08lx len = 0x%x\n", (char *)(& dev->name),
           buf->pt_cpu, (long )buf->pt_dma, buf->pt_size);
    }
  } else {
  }
  i = 0;
  goto ldv_49310;
  ldv_49309:
  *(buf->pt_cpu + (unsigned long )i) = buf->dma + (dma_addr_t )(i * 4096);
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:     pt[%02d] = 0x%p -> 0x%llx\n", (char *)(& dev->name), i, buf->pt_cpu,
           *(buf->pt_cpu));
    }
  } else {
  }
  i = i + 1;
  ldv_49310: ;
  if ((u32 )i < params->numpagetables) {
    goto ldv_49309;
  } else {
  }
  goto ret;
  fail2:
  {
  pci_free_consistent((port->dev)->pci, (size_t )buf->pci_size, (void *)buf->cpu,
                      buf->dma);
  }
  fail1:
  {
  kfree((void const *)buf);
  buf = (struct saa7164_buffer *)0;
  }
  ret: ;
  return (buf);
}
}
int saa7164_buffer_dealloc(struct saa7164_buffer *buf )
{
  struct saa7164_dev *dev ;
  {
  if ((unsigned long )buf == (unsigned long )((struct saa7164_buffer *)0) || (unsigned long )buf->port == (unsigned long )((struct saa7164_port *)0)) {
    return (9);
  } else {
  }
  dev = (buf->port)->dev;
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s() deallocating buffer @ 0x%p\n", (char *)(& dev->name), "saa7164_buffer_dealloc",
           buf);
    }
  } else {
  }
  if ((unsigned int )buf->flags != 1U) {
    {
    printk("\f%s:  freeing a non-free buffer\n", (char *)(& dev->name));
    }
  } else {
  }
  {
  pci_free_consistent(dev->pci, (size_t )buf->pci_size, (void *)buf->cpu, buf->dma);
  pci_free_consistent(dev->pci, (size_t )buf->pt_size, (void *)buf->pt_cpu, buf->pt_dma);
  kfree((void const *)buf);
  }
  return (0);
}
}
int saa7164_buffer_zero_offsets(struct saa7164_port *port , int i )
{
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if (i < 0 || i >= (int )port->hwcfg.buffercount) {
    return (-22);
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s(idx = %d)\n", (char *)(& dev->name), "saa7164_buffer_zero_offsets",
           i);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)(dev->lmmio + (((unsigned long )port->bufoffset + (unsigned long )i * 4UL) >> 2)));
  }
  return (0);
}
}
int saa7164_buffer_activate(struct saa7164_buffer *buf , int i )
{
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  port = buf->port;
  dev = port->dev;
  if (i < 0 || i >= (int )port->hwcfg.buffercount) {
    return (-22);
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s(idx = %d)\n", (char *)(& dev->name), "saa7164_buffer_activate",
           i);
    }
  } else {
  }
  {
  buf->idx = i;
  buf->flags = 2;
  buf->pos = 0U;
  writel(0U, (void volatile *)(dev->lmmio + (((unsigned long )port->bufoffset + (unsigned long )i * 4UL) >> 2)));
  writel((unsigned int )buf->pt_dma, (void volatile *)(dev->lmmio + (((unsigned long )port->bufptr32h + (unsigned long )i * 8UL) >> 2)));
  writel(0U, (void volatile *)(dev->lmmio + (((unsigned long )port->bufptr32l + (unsigned long )i * 8UL) >> 2)));
  }
  if ((saa_debug & 512U) != 0U) {
    {
    tmp = readl((void const volatile *)(dev->lmmio + (((unsigned long )port->bufptr32l + (unsigned long )i * 8UL) >> 2)));
    tmp___0 = readl((void const volatile *)(dev->lmmio + (((unsigned long )port->bufptr32h + (unsigned long )i * 8UL) >> 2)));
    tmp___1 = readl((void const volatile *)(dev->lmmio + (((unsigned long )port->bufoffset + (unsigned long )i * 4UL) >> 2)));
    printk("\017%s:    buf[%d] offset 0x%llx (0x%x) buf 0x%llx/%llx (0x%x/%x) nr=%d\n",
           (char *)(& dev->name), buf->idx, (unsigned long long )port->bufoffset + (unsigned long long )((unsigned long )i * 4UL),
           tmp___1, (unsigned long long )port->bufptr32h + (unsigned long long )((unsigned long )i * 8UL),
           (unsigned long long )port->bufptr32l + (unsigned long long )((unsigned long )i * 8UL),
           tmp___0, tmp, buf->idx);
    }
  } else {
  }
  return (0);
}
}
int saa7164_buffer_cfg_port(struct saa7164_port *port )
{
  struct tmHWStreamParameters *params ;
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct list_head *c ;
  struct list_head *n ;
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  params = & port->hw_streamingparams;
  dev = port->dev;
  i = 0;
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_buffer_cfg_port",
           port->nr);
    }
  } else {
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(port->bufcounter >> 2));
  writel(params->pitch, (void volatile *)dev->lmmio + (unsigned long )(port->pitch >> 2));
  writel(params->pitch * params->numberoflines, (void volatile *)dev->lmmio + (unsigned long )(port->bufsize >> 2));
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:  configured:\n", (char *)(& dev->name));
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    lmmio       0x%p\n", (char *)(& dev->name), dev->lmmio);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(port->bufcounter >> 2));
    printk("\017%s:    bufcounter  0x%x = 0x%x\n", (char *)(& dev->name), port->bufcounter,
           tmp);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(port->pitch >> 2));
    printk("\017%s:    pitch       0x%x = %d\n", (char *)(& dev->name), port->pitch,
           tmp___0);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(port->bufsize >> 2));
    printk("\017%s:    bufsize     0x%x = %d\n", (char *)(& dev->name), port->bufsize,
           tmp___1);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    buffercount = %d\n", (char *)(& dev->name), (int )port->hwcfg.buffercount);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    bufoffset = 0x%x\n", (char *)(& dev->name), port->bufoffset);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    bufptr32h = 0x%x\n", (char *)(& dev->name), port->bufptr32h);
    }
  } else {
  }
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s:    bufptr32l = 0x%x\n", (char *)(& dev->name), port->bufptr32l);
    }
  } else {
  }
  {
  ldv_mutex_lock_27___3(& port->dmaqueue_lock);
  c = port->dmaqueue.list.next;
  n = c->next;
  }
  goto ldv_49343;
  ldv_49342:
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  if ((unsigned int )buf->flags != 1U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-buffer.c"),
                         "i" (271), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  saa7164_buffer_activate(buf, i);
  tmp___2 = i;
  i = i + 1;
  }
  if (tmp___2 > (int )port->hwcfg.buffercount) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-buffer.c"),
                         "i" (278), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  c = n;
  n = c->next;
  ldv_49343: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49342;
  } else {
  }
  {
  ldv_mutex_unlock_28___3(& port->dmaqueue_lock);
  }
  return (0);
}
}
struct saa7164_user_buffer *saa7164_buffer_alloc_user(struct saa7164_dev *dev , u32 len )
{
  struct saa7164_user_buffer *buf ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = kzalloc(40UL, 208U);
  buf = (struct saa7164_user_buffer *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((struct saa7164_user_buffer *)0)) {
    return ((struct saa7164_user_buffer *)0);
  } else {
  }
  {
  tmp___0 = kzalloc((size_t )len, 208U);
  buf->data = (u8 *)tmp___0;
  }
  if ((unsigned long )buf->data == (unsigned long )((u8 *)0U)) {
    {
    kfree((void const *)buf);
    }
    return ((struct saa7164_user_buffer *)0);
  } else {
  }
  buf->actual_size = len;
  buf->pos = 0U;
  buf->crc = 0U;
  if ((saa_debug & 512U) != 0U) {
    {
    printk("\017%s: %s()   allocated user buffer @ 0x%p\n", (char *)(& dev->name),
           "saa7164_buffer_alloc_user", buf);
    }
  } else {
  }
  return (buf);
}
}
void saa7164_buffer_dealloc_user(struct saa7164_user_buffer *buf )
{
  {
  if ((unsigned long )buf == (unsigned long )((struct saa7164_user_buffer *)0)) {
    return;
  } else {
  }
  {
  kfree((void const *)buf->data);
  buf->data = (u8 *)0U;
  kfree((void const *)buf);
  }
  return;
}
}
static void ldv_mutex_lock_27___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_27___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_33___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_37___0(struct mutex *ldv_func_arg1 ) ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern void __cmpxchg_wrong_size(void) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5766;
  case_2:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5766;
  case_4:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5766;
  case_8:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5766;
  switch_default:
  {
  __xadd_wrong_size();
  }
  switch_break: ;
  }
  ldv_5766: ;
  return (i + __ret);
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = atomic_add_return(- i, v);
  }
  return (tmp);
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5786;
  case_2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5786;
  case_4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5786;
  case_8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5786;
  switch_default:
  {
  __cmpxchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_5786: ;
  return (__ret);
}
}
static void ldv_mutex_unlock_28___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_38___0(struct mutex *ldv_func_arg1 ) ;
static void *ldv_dev_get_drvdata_21(struct device const *dev ) ;
static int ldv_dev_set_drvdata_22(struct device *dev , void *data ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
extern void schedule(void) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_21((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_22(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  }
  return (tmp);
}
}
extern int v4l2_ctrl_query_fill(struct v4l2_queryctrl * , s32 , s32 , s32 , s32 ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
static struct saa7164_tvnorm saa7164_tvnorms[2U] = { {(char *)"NTSC-M", 4096ULL},
        {(char *)"NTSC-JP", 8192ULL}};
static u32 const saa7164_v4l2_ctrls[15U] =
  { 9963776U, 9963777U, 9963778U, 9963779U,
        9963781U, 9963803U, 10029312U, 10029513U,
        10029514U, 10029515U, 10029421U, 10029518U,
        10029519U, 10029520U, 0U};
static void saa7164_encoder_configure(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_encoder_configure");
    }
  } else {
  }
  {
  port->encoder_params.width = port->width;
  port->encoder_params.height = port->height;
  port->encoder_params.is_50hz = (port->encodernorm.id & 16713471ULL) != 0ULL;
  saa7164_api_initialize_dif(port);
  saa7164_api_configure_dif(port, (u32 )port->encodernorm.id);
  saa7164_api_set_audio_std(port);
  }
  return;
}
}
static int saa7164_encoder_buffers_dealloc(struct saa7164_port *port )
{
  struct list_head *c ;
  struct list_head *n ;
  struct list_head *p ;
  struct list_head *q ;
  struct list_head *l ;
  struct list_head *v ;
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  dev = port->dev;
  ldv_mutex_lock_27___4(& port->dmaqueue_lock);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) dmaqueue\n", (char *)(& dev->name), "saa7164_encoder_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  c = port->dmaqueue.list.next;
  n = c->next;
  goto ldv_49351;
  ldv_49350:
  {
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  list_del(c);
  saa7164_buffer_dealloc(buf);
  c = n;
  n = c->next;
  }
  ldv_49351: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49350;
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) used\n", (char *)(& dev->name), "saa7164_encoder_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  p = port->list_buf_used.list.next;
  q = p->next;
  goto ldv_49356;
  ldv_49355:
  {
  __mptr___0 = (struct list_head const *)p;
  ubuf = (struct saa7164_user_buffer *)__mptr___0;
  list_del(p);
  saa7164_buffer_dealloc_user(ubuf);
  p = q;
  q = p->next;
  }
  ldv_49356: ;
  if ((unsigned long )p != (unsigned long )(& port->list_buf_used.list)) {
    goto ldv_49355;
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) free\n", (char *)(& dev->name), "saa7164_encoder_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  l = port->list_buf_free.list.next;
  v = l->next;
  goto ldv_49361;
  ldv_49360:
  {
  __mptr___1 = (struct list_head const *)l;
  ubuf = (struct saa7164_user_buffer *)__mptr___1;
  list_del(l);
  saa7164_buffer_dealloc_user(ubuf);
  l = v;
  v = l->next;
  }
  ldv_49361: ;
  if ((unsigned long )l != (unsigned long )(& port->list_buf_free.list)) {
    goto ldv_49360;
  } else {
  }
  {
  ldv_mutex_unlock_28___4(& port->dmaqueue_lock);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) done\n", (char *)(& dev->name), "saa7164_encoder_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  return (0);
}
}
static int saa7164_encoder_buffers_alloc(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct tmHWStreamParameters *params ;
  int result ;
  int i ;
  int len ;
  {
  dev = port->dev;
  params = & port->hw_streamingparams;
  result = -19;
  len = 0;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_encoder_buffers_alloc");
    }
  } else {
  }
  if (port->encoder_params.stream_type == 0U) {
    if ((saa_debug & 1024U) != 0U) {
      {
      printk("\017%s: %s() type=V4L2_MPEG_STREAM_TYPE_MPEG2_PS\n", (char *)(& dev->name),
             "saa7164_encoder_buffers_alloc");
      }
    } else {
    }
    params->samplesperline = 128U;
    params->numberoflines = 256U;
    params->pitch = 128U;
    params->numpagetables = 10U;
  } else
  if (port->encoder_params.stream_type == 1U) {
    if ((saa_debug & 1024U) != 0U) {
      {
      printk("\017%s: %s() type=V4L2_MPEG_STREAM_TYPE_MPEG2_TS\n", (char *)(& dev->name),
             "saa7164_encoder_buffers_alloc");
      }
    } else {
    }
    params->samplesperline = 188U;
    params->numberoflines = 312U;
    params->pitch = 188U;
    params->numpagetables = 16U;
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-encoder.c"),
                         "i" (150), "i" (12UL));
    __builtin_unreachable();
    }
  }
  params->bitspersample = 8U;
  params->linethreshold = 0U;
  params->pagetablelistvirt = (u64 **)0ULL;
  params->pagetablelistphys = (u64 *)0ULL;
  params->numpagetableentries = (u32 )port->hwcfg.buffercount;
  i = 0;
  goto ldv_49376;
  ldv_49375:
  {
  buf = saa7164_buffer_alloc(port, params->numberoflines * params->pitch);
  }
  if ((unsigned long )buf == (unsigned long )((struct saa7164_buffer *)0)) {
    {
    printk("\v%s() failed (errno = %d), unable to allocate buffer\n", "saa7164_encoder_buffers_alloc",
           result);
    result = -12;
    }
    goto failed;
  } else {
    {
    ldv_mutex_lock_29___3(& port->dmaqueue_lock);
    list_add_tail(& buf->list, & port->dmaqueue.list);
    ldv_mutex_unlock_30___3(& port->dmaqueue_lock);
    }
  }
  i = i + 1;
  ldv_49376: ;
  if (i < (int )port->hwcfg.buffercount) {
    goto ldv_49375;
  } else {
  }
  len = (int )(params->numberoflines * params->pitch);
  if (encoder_buffers <= 15U) {
    encoder_buffers = 16U;
  } else {
  }
  if (encoder_buffers > 512U) {
    encoder_buffers = 512U;
  } else {
  }
  i = 0;
  goto ldv_49379;
  ldv_49378:
  {
  ubuf = saa7164_buffer_alloc_user(dev, (u32 )len);
  }
  if ((unsigned long )ubuf != (unsigned long )((struct saa7164_user_buffer *)0)) {
    {
    ldv_mutex_lock_31___2(& port->dmaqueue_lock);
    list_add_tail(& ubuf->list, & port->list_buf_free.list);
    ldv_mutex_unlock_32___2(& port->dmaqueue_lock);
    }
  } else {
  }
  i = i + 1;
  ldv_49379: ;
  if ((unsigned int )i < encoder_buffers) {
    goto ldv_49378;
  } else {
  }
  result = 0;
  failed: ;
  return (result);
}
}
static int saa7164_encoder_initialize(struct saa7164_port *port )
{
  {
  {
  saa7164_encoder_configure(port);
  }
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id id )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  unsigned int i ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(id=0x%x)\n", (char *)(& dev->name), "vidioc_s_std", (unsigned int )id);
    }
  } else {
  }
  i = 0U;
  goto ldv_49398;
  ldv_49397: ;
  if ((id & saa7164_tvnorms[i].id) != 0ULL) {
    goto ldv_49396;
  } else {
  }
  i = i + 1U;
  ldv_49398: ;
  if (i <= 1U) {
    goto ldv_49397;
  } else {
  }
  ldv_49396: ;
  if (i == 2U) {
    return (-22);
  } else {
  }
  {
  port->encodernorm = saa7164_tvnorms[i];
  port->std = id;
  saa7164_api_set_audio_std(port);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(id=0x%x) OK\n", (char *)(& dev->name), "vidioc_s_std", (unsigned int )id);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *id )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  *id = port->std;
  return (0);
}
}
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  int n ;
  char *inputs[7U] ;
  {
  inputs[0] = (char *)"tuner";
  inputs[1] = (char *)"composite";
  inputs[2] = (char *)"svideo";
  inputs[3] = (char *)"aux";
  inputs[4] = (char *)"composite 2";
  inputs[5] = (char *)"svideo 2";
  inputs[6] = (char *)"aux 2";
  if (i->index > 6U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& i->name), (char const *)inputs[i->index]);
  }
  if (i->index == 0U) {
    i->type = 1U;
  } else {
    i->type = 2U;
  }
  n = 0;
  goto ldv_49418;
  ldv_49417:
  i->std = i->std | saa7164_tvnorms[n].id;
  n = n + 1;
  ldv_49418: ;
  if ((unsigned int )n <= 1U) {
    goto ldv_49417;
  } else {
  }
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  {
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  tmp = saa7164_api_get_videomux(port);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  *i = (unsigned int )((int )port->mux_input + -1);
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() input=%d\n", (char *)(& dev->name), "vidioc_g_input", *i);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() input=%d\n", (char *)(& dev->name), "vidioc_s_input", i);
    }
  } else {
  }
  if (i > 6U) {
    return (-22);
  } else {
  }
  {
  port->mux_input = (unsigned int )((u8 )i) + 1U;
  tmp = saa7164_api_set_videomux(port);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& t->name), "tuner");
  t->type = 2U;
  t->capability = 18U;
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: VIDIOC_G_TUNER: tuner type %d\n", (char *)(& dev->name), t->type);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  {
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  f->type = 2U;
  f->frequency = port->freq;
  return (0);
}
}
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  struct saa7164_port *tsport ;
  struct dvb_frontend *fe ;
  struct analog_parameters params ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  params.frequency = f->frequency;
  params.mode = 2U;
  params.audmode = 1U;
  params.std = port->encodernorm.id;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() frequency=%d tuner=%d\n", (char *)(& dev->name), "vidioc_s_frequency",
           f->frequency, f->tuner);
    }
  } else {
  }
  if ((unsigned int )f->tuner != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )f->type != 2U) {
    return (-22);
  } else {
  }
  port->freq = f->frequency;
  if (port->nr == 2) {
    tsport = (struct saa7164_port *)(& dev->ports);
  } else
  if (port->nr == 3) {
    tsport = (struct saa7164_port *)(& dev->ports) + 1UL;
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-encoder.c"),
                         "i" (385), "i" (12UL));
    __builtin_unreachable();
    }
  }
  fe = tsport->dvb.frontend;
  if ((unsigned long )fe != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe->ops.tuner_ops.set_analog_params != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                           struct analog_parameters * ))0)) {
    {
    (*(fe->ops.tuner_ops.set_analog_params))(fe, & params);
    }
  } else {
    {
    printk("\v%s() No analog tuner, aborting\n", "vidioc_s_frequency");
    }
  }
  {
  saa7164_encoder_initialize(port);
  }
  return (0);
}
}
static int vidioc_g_ctrl(struct file *file , void *priv , struct v4l2_control *ctl )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(id=%d, value=%d)\n", (char *)(& dev->name), "vidioc_g_ctrl",
           ctl->id, ctl->value);
    }
  } else {
  }
  {
  if (ctl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  goto switch_default;
  case_9963776:
  ctl->value = (__s32 )port->ctl_brightness;
  goto ldv_49480;
  case_9963777:
  ctl->value = (__s32 )port->ctl_contrast;
  goto ldv_49480;
  case_9963778:
  ctl->value = (__s32 )port->ctl_saturation;
  goto ldv_49480;
  case_9963779:
  ctl->value = (__s32 )port->ctl_hue;
  goto ldv_49480;
  case_9963803:
  ctl->value = (__s32 )port->ctl_sharpness;
  goto ldv_49480;
  case_9963781:
  ctl->value = (__s32 )port->ctl_volume;
  goto ldv_49480;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49480: ;
  return (0);
}
}
static int vidioc_s_ctrl(struct file *file , void *priv , struct v4l2_control *ctl )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int ret ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(id=%d, value=%d)\n", (char *)(& dev->name), "vidioc_s_ctrl",
           ctl->id, ctl->value);
    }
  } else {
  }
  {
  if (ctl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  goto switch_default;
  case_9963776: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_brightness = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 2);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963777: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_contrast = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 3);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963778: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_saturation = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 7);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963779: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_hue = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 6);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963803: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_sharpness = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 8);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963781: ;
  if ((unsigned int )ctl->value - 4294967213U <= 107U) {
    {
    port->ctl_volume = (s8 )ctl->value;
    saa7164_api_set_audio_volume(port, (int )port->ctl_volume);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  switch_default:
  ret = -22;
  switch_break: ;
  }
  ldv_49498: ;
  return (ret);
}
}
static int saa7164_get_ctrl(struct saa7164_port *port , struct v4l2_ext_control *ctrl )
{
  struct saa7164_encoder_params *params ;
  {
  params = & port->encoder_params;
  {
  if (ctrl->id == 10029519U) {
    goto case_10029519;
  } else {
  }
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (ctrl->id == 10029520U) {
    goto case_10029520;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  goto switch_default;
  case_10029519:
  ctrl->__annonCompField73.value = (__s32 )params->bitrate;
  goto ldv_49511;
  case_10029312:
  ctrl->__annonCompField73.value = (__s32 )params->stream_type;
  goto ldv_49511;
  case_10029421:
  ctrl->__annonCompField73.value = (__s32 )params->ctl_mute;
  goto ldv_49511;
  case_10029513:
  ctrl->__annonCompField73.value = (__s32 )params->ctl_aspect;
  goto ldv_49511;
  case_10029518:
  ctrl->__annonCompField73.value = (__s32 )params->bitrate_mode;
  goto ldv_49511;
  case_10029514:
  ctrl->__annonCompField73.value = (__s32 )params->refdist;
  goto ldv_49511;
  case_10029520:
  ctrl->__annonCompField73.value = (__s32 )params->bitrate_peak;
  goto ldv_49511;
  case_10029515:
  ctrl->__annonCompField73.value = (__s32 )params->gop_size;
  goto ldv_49511;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49511: ;
  return (0);
}
}
static int vidioc_g_ext_ctrls(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49532;
    ldv_49531:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_get_ctrl(port, ctrl);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49530;
    } else {
    }
    i = i + 1;
    ldv_49532: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49531;
    } else {
    }
    ldv_49530: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int saa7164_try_ctrl(struct v4l2_ext_control *ctrl , int ac3 )
{
  int ret ;
  {
  ret = -22;
  {
  if (ctrl->id == 10029519U) {
    goto case_10029519;
  } else {
  }
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  if (ctrl->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (ctrl->id == 10029520U) {
    goto case_10029520;
  } else {
  }
  goto switch_default;
  case_10029519: ;
  if ((unsigned int )ctrl->__annonCompField73.value - 1000000U <= 5500000U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029312: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 1U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029421: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 1U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029513: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 3U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029515: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 255U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029518: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 1U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029514: ;
  if ((unsigned int )ctrl->__annonCompField73.value - 1U <= 2U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  case_10029520: ;
  if ((unsigned int )ctrl->__annonCompField73.value - 1000000U <= 5500000U) {
    ret = 0;
  } else {
  }
  goto ldv_49539;
  switch_default:
  ret = -22;
  switch_break: ;
  }
  ldv_49539: ;
  return (ret);
}
}
static int vidioc_try_ext_ctrls(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49558;
    ldv_49557:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_try_ctrl(ctrl, 0);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49556;
    } else {
    }
    i = i + 1;
    ldv_49558: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49557;
    } else {
    }
    ldv_49556: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int saa7164_set_ctrl(struct saa7164_port *port , struct v4l2_ext_control *ctrl )
{
  struct saa7164_encoder_params *params ;
  int ret ;
  {
  params = & port->encoder_params;
  ret = 0;
  {
  if (ctrl->id == 10029519U) {
    goto case_10029519;
  } else {
  }
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (ctrl->id == 10029520U) {
    goto case_10029520;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  goto switch_default;
  case_10029519:
  params->bitrate = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  case_10029312:
  params->stream_type = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  case_10029421:
  {
  params->ctl_mute = (u32 )ctrl->__annonCompField73.value;
  ret = saa7164_api_audio_mute(port, (int )params->ctl_mute);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_set_ctrl", ret);
    ret = -5;
    }
  } else {
  }
  goto ldv_49566;
  case_10029513:
  {
  params->ctl_aspect = (u32 )ctrl->__annonCompField73.value;
  ret = saa7164_api_set_aspect_ratio(port);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_set_ctrl", ret);
    ret = -5;
    }
  } else {
  }
  goto ldv_49566;
  case_10029518:
  params->bitrate_mode = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  case_10029514:
  params->refdist = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  case_10029520:
  params->bitrate_peak = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  case_10029515:
  params->gop_size = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49566;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49566: ;
  return (ret);
}
}
static int vidioc_s_ext_ctrls(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49588;
    ldv_49587:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_try_ctrl(ctrl, 0);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49586;
    } else {
    }
    {
    err = saa7164_set_ctrl(port, ctrl);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49586;
    } else {
    }
    i = i + 1;
    ldv_49588: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49587;
    } else {
    }
    ldv_49586: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  char const *tmp ;
  {
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  strcpy((char *)(& cap->driver), (char const *)(& dev->name));
  strlcpy((char *)(& cap->card), (char const *)saa7164_boards[dev->board].name,
          32UL);
  tmp = pci_name((struct pci_dev const *)dev->pci);
  sprintf((char *)(& cap->bus_info), "PCI:%s", tmp);
  cap->capabilities = 16777217U;
  cap->capabilities = cap->capabilities | 65536U;
  cap->version = 0U;
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  {
  if (f->index != 0U) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), "MPEG", 32UL);
  f->pixelformat = 1195724877U;
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  f->fmt.pix.width = port->width;
  f->fmt.pix.height = port->height;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: VIDIOC_G_FMT: w: %d, h: %d\n", (char *)(& dev->name), port->width,
           port->height);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: VIDIOC_TRY_FMT: w: %d, h: %d\n", (char *)(& dev->name), port->width,
           port->height);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: VIDIOC_S_FMT: w: %d, h: %d, f: %d\n", (char *)(& dev->name), f->fmt.pix.width,
           f->fmt.pix.height, f->fmt.pix.field);
    }
  } else {
  }
  return (0);
}
}
static int fill_queryctrl(struct saa7164_encoder_params *params , struct v4l2_queryctrl *c )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  {
  if (c->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (c->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (c->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (c->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (c->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (c->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (c->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  if (c->id == 10029519U) {
    goto case_10029519;
  } else {
  }
  if (c->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (c->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (c->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  if (c->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  if (c->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (c->id == 10029520U) {
    goto case_10029520;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  tmp = v4l2_ctrl_query_fill(c, 0, 255, 1, 127);
  }
  return (tmp);
  case_9963777:
  {
  tmp___0 = v4l2_ctrl_query_fill(c, 0, 255, 1, 66);
  }
  return (tmp___0);
  case_9963778:
  {
  tmp___1 = v4l2_ctrl_query_fill(c, 0, 255, 1, 62);
  }
  return (tmp___1);
  case_9963779:
  {
  tmp___2 = v4l2_ctrl_query_fill(c, 0, 255, 1, 128);
  }
  return (tmp___2);
  case_9963803:
  {
  tmp___3 = v4l2_ctrl_query_fill(c, 0, 15, 1, 8);
  }
  return (tmp___3);
  case_10029421:
  {
  tmp___4 = v4l2_ctrl_query_fill(c, 0, 1, 1, 0);
  }
  return (tmp___4);
  case_9963781:
  {
  tmp___5 = v4l2_ctrl_query_fill(c, -83, 24, 1, 20);
  }
  return (tmp___5);
  case_10029519:
  {
  tmp___6 = v4l2_ctrl_query_fill(c, 1000000, 6500000, 100000, 5000000);
  }
  return (tmp___6);
  case_10029312:
  {
  tmp___7 = v4l2_ctrl_query_fill(c, 0, 1, 1, 0);
  }
  return (tmp___7);
  case_10029513:
  {
  tmp___8 = v4l2_ctrl_query_fill(c, 0, 3, 1, 1);
  }
  return (tmp___8);
  case_10029515:
  {
  tmp___9 = v4l2_ctrl_query_fill(c, 1, 255, 1, 15);
  }
  return (tmp___9);
  case_10029518:
  {
  tmp___10 = v4l2_ctrl_query_fill(c, 0, 1, 1, 0);
  }
  return (tmp___10);
  case_10029514:
  {
  tmp___11 = v4l2_ctrl_query_fill(c, 1, 3, 1, 1);
  }
  return (tmp___11);
  case_10029520:
  {
  tmp___12 = v4l2_ctrl_query_fill(c, 1000000, 6500000, 100000, 5000000);
  }
  return (tmp___12);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static int vidioc_queryctrl(struct file *file , void *priv , struct v4l2_queryctrl *c )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int next ;
  u32 id ;
  int tmp ;
  {
  {
  fh = (struct saa7164_encoder_fh *)priv;
  port = fh->port;
  id = c->id;
  memset((void *)c, 0, 68UL);
  next = (int )id < 0;
  c->id = id & 2147483647U;
  i = 0;
  }
  goto ldv_49660;
  ldv_49659: ;
  if (next != 0) {
    if (c->id < (__u32 )saa7164_v4l2_ctrls[i]) {
      c->id = saa7164_v4l2_ctrls[i];
    } else {
      goto ldv_49657;
    }
  } else {
  }
  if (c->id == (__u32 )saa7164_v4l2_ctrls[i]) {
    {
    tmp = fill_queryctrl(& port->encoder_params, c);
    }
    return (tmp);
  } else {
  }
  if (c->id < (__u32 )saa7164_v4l2_ctrls[i]) {
    goto ldv_49658;
  } else {
  }
  ldv_49657:
  i = i + 1;
  ldv_49660: ;
  if ((unsigned int )i <= 14U) {
    goto ldv_49659;
  } else {
  }
  ldv_49658: ;
  return (-22);
}
}
static int saa7164_encoder_stop_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 0);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() stop transition failed, ret = 0x%x\n", "saa7164_encoder_stop_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 1024U) != 0U) {
      {
      printk("\017%s: %s()    Stopped\n", (char *)(& dev->name), "saa7164_encoder_stop_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_encoder_acquire_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 1);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() acquire transition failed, ret = 0x%x\n", "saa7164_encoder_acquire_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 1024U) != 0U) {
      {
      printk("\017%s: %s() Acquired\n", (char *)(& dev->name), "saa7164_encoder_acquire_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_encoder_pause_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 2);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() pause transition failed, ret = 0x%x\n", "saa7164_encoder_pause_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 1024U) != 0U) {
      {
      printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_encoder_pause_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_encoder_stop_streaming(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct list_head *c ;
  struct list_head *n ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_encoder_stop_streaming",
           port->nr);
    }
  } else {
  }
  {
  ret = saa7164_encoder_pause_port(port);
  ret = saa7164_encoder_acquire_port(port);
  ret = saa7164_encoder_stop_port(port);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) Hardware stopped\n", (char *)(& dev->name), "saa7164_encoder_stop_streaming",
           port->nr);
    }
  } else {
  }
  {
  ldv_mutex_lock_33___1(& port->dmaqueue_lock);
  c = port->dmaqueue.list.next;
  n = c->next;
  }
  goto ldv_49692;
  ldv_49691:
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  buf->flags = 1;
  buf->pos = 0U;
  c = n;
  n = c->next;
  ldv_49692: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49691;
  } else {
  }
  c = port->list_buf_used.list.next;
  n = c->next;
  goto ldv_49697;
  ldv_49696:
  {
  __mptr___0 = (struct list_head const *)c;
  ubuf = (struct saa7164_user_buffer *)__mptr___0;
  ubuf->pos = 0U;
  list_move_tail(& ubuf->list, & port->list_buf_free.list);
  c = n;
  n = c->next;
  }
  ldv_49697: ;
  if ((unsigned long )c != (unsigned long )(& port->list_buf_used.list)) {
    goto ldv_49696;
  } else {
  }
  {
  ldv_mutex_unlock_34___1(& port->dmaqueue_lock);
  saa7164_encoder_buffers_dealloc(port);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) Released\n", (char *)(& dev->name), "saa7164_encoder_stop_streaming",
           port->nr);
    }
  } else {
  }
  return (ret);
}
}
static int saa7164_encoder_start_streaming(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int result ;
  int ret ;
  {
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_encoder_start_streaming",
           port->nr);
    }
  } else {
  }
  {
  port->done_first_interrupt = 0U;
  saa7164_encoder_buffers_alloc(port);
  saa7164_api_set_encoder(port);
  saa7164_api_get_encoder(port);
  saa7164_buffer_cfg_port(port);
  result = saa7164_api_transition_port(port, 1);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() acquire transition failed, res = 0x%x\n", "saa7164_encoder_start_streaming",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() acquire/forced stop transition failed, res = 0x%x\n", "saa7164_encoder_start_streaming",
             result);
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()   Acquired\n", (char *)(& dev->name), "saa7164_encoder_start_streaming");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 2);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() pause transition failed, res = 0x%x\n", "saa7164_encoder_start_streaming",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() pause/forced stop transition failed, res = 0x%x\n", "saa7164_encoder_start_streaming",
             result);
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_encoder_start_streaming");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 3);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() run transition failed, result = 0x%x\n", "saa7164_encoder_start_streaming",
           result);
    result = saa7164_api_transition_port(port, 0);
    }
    if (result != 0 && result != 38) {
      {
      printk("\v%s() run/forced stop transition failed, res = 0x%x\n", "saa7164_encoder_start_streaming",
             result);
      }
    } else {
    }
    ret = -5;
  } else
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()   Running\n", (char *)(& dev->name), "saa7164_encoder_start_streaming");
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int fops_open(struct file *file )
{
  struct saa7164_dev *dev ;
  struct saa7164_port *port ;
  struct saa7164_encoder_fh *fh ;
  struct video_device *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  port = (struct saa7164_port *)tmp___0;
  }
  if ((unsigned long )port == (unsigned long )((struct saa7164_port *)0)) {
    return (-19);
  } else {
  }
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "fops_open");
    }
  } else {
  }
  {
  tmp___1 = kzalloc(16UL, 208U);
  fh = (struct saa7164_encoder_fh *)tmp___1;
  }
  if ((unsigned long )fh == (unsigned long )((struct saa7164_encoder_fh *)0)) {
    return (-12);
  } else {
  }
  file->private_data = (void *)fh;
  fh->port = port;
  return (0);
}
}
static int fops_release(struct file *file )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "fops_release");
    }
  } else {
  }
  {
  tmp___0 = atomic_cmpxchg(& fh->v4l_reading, 1, 0);
  }
  if (tmp___0 == 1) {
    {
    tmp = atomic_sub_return(1, & port->v4l_reader_count);
    }
    if (tmp == 0) {
      {
      saa7164_encoder_stop_streaming(port);
      }
    } else {
    }
  } else {
  }
  {
  file->private_data = (void *)0;
  kfree((void const *)fh);
  }
  return (0);
}
}
static struct saa7164_user_buffer *saa7164_enc_next_buf(struct saa7164_port *port )
{
  struct saa7164_user_buffer *ubuf ;
  struct saa7164_dev *dev ;
  u32 crc ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  ubuf = (struct saa7164_user_buffer *)0;
  dev = port->dev;
  ldv_mutex_lock_35___2(& port->dmaqueue_lock);
  tmp = list_empty((struct list_head const *)(& port->list_buf_used.list));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)port->list_buf_used.list.next;
    ubuf = (struct saa7164_user_buffer *)__mptr;
    if (crc_checking != 0U) {
      {
      crc = crc32_le(0U, (unsigned char const *)ubuf->data, (size_t )ubuf->actual_size);
      }
      if (crc != ubuf->crc) {
        {
        printk("\v%s() ubuf %p crc became invalid, was 0x%x became 0x%x\n", "saa7164_enc_next_buf",
               ubuf, ubuf->crc, crc);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_36___2(& port->dmaqueue_lock);
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() returns %p\n", (char *)(& dev->name), "saa7164_enc_next_buf",
           ubuf);
    }
  } else {
  }
  return (ubuf);
}
}
static ssize_t fops_read(struct file *file , char *buffer , size_t count , loff_t *pos )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_user_buffer *ubuf ;
  struct saa7164_dev *dev ;
  int ret ;
  int rem ;
  int cnt ;
  u8 *p ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  struct saa7164_user_buffer *tmp___4 ;
  struct saa7164_user_buffer *tmp___5 ;
  unsigned long tmp___6 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___7 ;
  struct saa7164_user_buffer *tmp___8 ;
  struct saa7164_user_buffer *tmp___9 ;
  {
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  ubuf = (struct saa7164_user_buffer *)0;
  dev = port->dev;
  ret = 0;
  port->last_read_msecs_diff = port->last_read_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_read_msecs = (u64 )tmp;
  port->last_read_msecs_diff = port->last_read_msecs - port->last_read_msecs_diff;
  saa7164_histogram_update(& port->read_interval, (u32 )port->last_read_msecs_diff);
  }
  if (*pos != 0LL) {
    {
    printk("\v%s() ESPIPE\n", "fops_read");
    }
    return (-29L);
  } else {
  }
  {
  tmp___2 = atomic_cmpxchg(& fh->v4l_reading, 0, 1);
  }
  if (tmp___2 == 0) {
    {
    tmp___1 = atomic_add_return(1, & port->v4l_reader_count);
    }
    if (tmp___1 == 1) {
      {
      tmp___0 = saa7164_encoder_initialize(port);
      }
      if (tmp___0 < 0) {
        {
        printk("\v%s() EINVAL\n", "fops_read");
        }
        return (-22L);
      } else {
      }
      {
      saa7164_encoder_start_streaming(port);
      msleep(200U);
      }
    } else {
    }
  } else {
  }
  if ((file->f_flags & 2048U) == 0U) {
    {
    __ret = 0;
    tmp___5 = saa7164_enc_next_buf(port);
    }
    if ((unsigned long )tmp___5 == (unsigned long )((struct saa7164_user_buffer *)0)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_49751:
      {
      tmp___3 = prepare_to_wait_event(& port->wait_read, & __wait, 1);
      __int = tmp___3;
      tmp___4 = saa7164_enc_next_buf(port);
      }
      if ((unsigned long )tmp___4 != (unsigned long )((struct saa7164_user_buffer *)0)) {
        goto ldv_49750;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_49750;
      } else {
      }
      {
      schedule();
      }
      goto ldv_49751;
      ldv_49750:
      {
      finish_wait(& port->wait_read, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      {
      printk("\v%s() ERESTARTSYS\n", "fops_read");
      }
      return (-512L);
    } else {
    }
  } else {
  }
  {
  ubuf = saa7164_enc_next_buf(port);
  }
  goto ldv_49766;
  ldv_49765:
  rem = (int )(ubuf->actual_size - ubuf->pos);
  cnt = (int )(count < (size_t )rem ? count : (size_t )rem);
  p = ubuf->data + (unsigned long )ubuf->pos;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s() count=%d cnt=%d rem=%d buf=%p buf->pos=%d\n", (char *)(& dev->name),
           "fops_read", (int )count, cnt, rem, ubuf, ubuf->pos);
    }
  } else {
  }
  {
  tmp___6 = copy_to_user((void *)buffer, (void const *)p, (unsigned long )cnt);
  }
  if (tmp___6 != 0UL) {
    {
    printk("\v%s() copy_to_user failed\n", "fops_read");
    }
    if (ret == 0) {
      {
      printk("\v%s() EFAULT\n", "fops_read");
      ret = -14;
      }
    } else {
    }
    goto err;
  } else {
  }
  ubuf->pos = ubuf->pos + (u32 )cnt;
  count = count - (size_t )cnt;
  buffer = buffer + (unsigned long )cnt;
  ret = ret + cnt;
  if (ubuf->pos > ubuf->actual_size) {
    {
    printk("\vread() pos > actual, huh?\n");
    }
  } else {
  }
  if (ubuf->pos == ubuf->actual_size) {
    {
    ubuf->pos = 0U;
    ldv_mutex_lock_37___0(& port->dmaqueue_lock);
    list_move_tail(& ubuf->list, & port->list_buf_free.list);
    ldv_mutex_unlock_38___0(& port->dmaqueue_lock);
    }
    if ((file->f_flags & 2048U) == 0U) {
      {
      __ret___1 = 0;
      tmp___9 = saa7164_enc_next_buf(port);
      }
      if ((unsigned long )tmp___9 == (unsigned long )((struct saa7164_user_buffer *)0)) {
        {
        __ret___2 = 0L;
        INIT_LIST_HEAD(& __wait___0.task_list);
        __wait___0.flags = 0U;
        }
        ldv_49761:
        {
        tmp___7 = prepare_to_wait_event(& port->wait_read, & __wait___0, 1);
        __int___0 = tmp___7;
        tmp___8 = saa7164_enc_next_buf(port);
        }
        if ((unsigned long )tmp___8 != (unsigned long )((struct saa7164_user_buffer *)0)) {
          goto ldv_49760;
        } else {
        }
        if (__int___0 != 0L) {
          __ret___2 = __int___0;
          goto ldv_49760;
        } else {
        }
        {
        schedule();
        }
        goto ldv_49761;
        ldv_49760:
        {
        finish_wait(& port->wait_read, & __wait___0);
        }
        __ret___1 = (int )__ret___2;
      } else {
      }
      if (__ret___1 != 0) {
        goto ldv_49764;
      } else {
      }
    } else {
    }
    {
    ubuf = saa7164_enc_next_buf(port);
    }
  } else {
  }
  ldv_49766: ;
  if (count != 0UL && (unsigned long )ubuf != (unsigned long )((struct saa7164_user_buffer *)0)) {
    goto ldv_49765;
  } else {
  }
  ldv_49764: ;
  err: ;
  if (ret == 0 && (unsigned long )ubuf == (unsigned long )((struct saa7164_user_buffer *)0)) {
    ret = -11;
  } else {
  }
  return ((ssize_t )ret);
}
}
static unsigned int fops_poll(struct file *file , poll_table *wait )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  unsigned int mask ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___4 ;
  struct saa7164_user_buffer *tmp___5 ;
  struct saa7164_user_buffer *tmp___6 ;
  int tmp___7 ;
  {
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  mask = 0U;
  port->last_poll_msecs_diff = port->last_poll_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_poll_msecs = (u64 )tmp;
  port->last_poll_msecs_diff = port->last_poll_msecs - port->last_poll_msecs_diff;
  saa7164_histogram_update(& port->poll_interval, (u32 )port->last_poll_msecs_diff);
  tmp___0 = video_is_registered(port->v4l_device);
  }
  if (tmp___0 == 0) {
    return (4294967291U);
  } else {
  }
  {
  tmp___3 = atomic_cmpxchg(& fh->v4l_reading, 0, 1);
  }
  if (tmp___3 == 0) {
    {
    tmp___2 = atomic_add_return(1, & port->v4l_reader_count);
    }
    if (tmp___2 == 1) {
      {
      tmp___1 = saa7164_encoder_initialize(port);
      }
      if (tmp___1 < 0) {
        return (4294967274U);
      } else {
      }
      {
      saa7164_encoder_start_streaming(port);
      msleep(200U);
      }
    } else {
    }
  } else {
  }
  if ((file->f_flags & 2048U) == 0U) {
    {
    __ret = 0;
    tmp___6 = saa7164_enc_next_buf(port);
    }
    if ((unsigned long )tmp___6 == (unsigned long )((struct saa7164_user_buffer *)0)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_49780:
      {
      tmp___4 = prepare_to_wait_event(& port->wait_read, & __wait, 1);
      __int = tmp___4;
      tmp___5 = saa7164_enc_next_buf(port);
      }
      if ((unsigned long )tmp___5 != (unsigned long )((struct saa7164_user_buffer *)0)) {
        goto ldv_49779;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_49779;
      } else {
      }
      {
      schedule();
      }
      goto ldv_49780;
      ldv_49779:
      {
      finish_wait(& port->wait_read, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      return (4294966784U);
    } else {
    }
  } else {
  }
  {
  tmp___7 = list_empty((struct list_head const *)(& port->list_buf_used.list));
  }
  if (tmp___7 == 0) {
    mask = mask | 65U;
  } else {
  }
  return (mask);
}
}
static struct v4l2_file_operations const mpeg_fops =
     {& __this_module, & fops_read, 0, & fops_poll, 0, & video_ioctl2, 0, 0, 0, & fops_open,
    & fops_release};
static struct v4l2_ioctl_ops const mpeg_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & vidioc_g_std, & vidioc_s_std, 0, & vidioc_enum_input, & vidioc_g_input,
    & vidioc_s_input, 0, 0, 0, & vidioc_queryctrl, & vidioc_g_ctrl, & vidioc_s_ctrl,
    & vidioc_g_ext_ctrls, & vidioc_s_ext_ctrls, & vidioc_try_ext_ctrls, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_tuner, & vidioc_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0};
static struct video_device saa7164_mpeg_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & mpeg_fops, {0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0}},
                                                                                  {{{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
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
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0,
                                                                                   0},
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U},
                                                                                 0,
                                                                                 0,
                                                                                 {{0},
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {{0},
                                                                                  0U,
                                                                                  0U,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0U,
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}}},
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0,
                                                                                  {{0,
                                                                                    0},
                                                                                   0UL,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0,
                                                                                   0,
                                                                                   0,
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
                                                                                    (char)0},
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0UL,
                                                                                  {{0L},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  {{{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0}},
                                                                                  {0},
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0UL,
                                                                                  0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0ULL,
                                                                                 0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 {0},
                                                                                 0U,
                                                                                 0U,
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  {{0}}},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0},
    0, 0, 0, 0, 0, 0, {'s', 'a', 'a', '7', '1', '6', '4', '\000'}, 0, 0, -1, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 28672ULL,
    0, & mpeg_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct video_device *saa7164_encoder_alloc(struct saa7164_port *port , struct pci_dev *pci ,
                                                  struct video_device *template ,
                                                  char *type )
{
  struct video_device *vfd ;
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_encoder_alloc");
    }
  } else {
  }
  {
  vfd = video_device_alloc();
  }
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return ((struct video_device *)0);
  } else {
  }
  {
  *vfd = *template;
  snprintf((char *)(& vfd->name), 32UL, "%s %s (%s)", (char *)(& dev->name), type,
           saa7164_boards[dev->board].name);
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->release = & video_device_release;
  }
  return (vfd);
}
}
int saa7164_encoder_register(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int result ;
  {
  dev = port->dev;
  result = -19;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_encoder_register");
    }
  } else {
  }
  if ((unsigned int )port->type != 2U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-encoder.c"),
                         "i" (1364), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (port->hwcfg.BARLocation == 0U) {
    {
    printk("\v%s() failed (errno = %d), NO PCI configuration\n", "saa7164_encoder_register",
           result);
    result = -12;
    }
    goto failed;
  } else {
  }
  port->encodernorm = saa7164_tvnorms[0];
  port->width = 720U;
  port->mux_input = 1U;
  port->video_format = 2U;
  port->audio_format = 0U;
  port->video_resolution = 0U;
  port->ctl_brightness = 127U;
  port->ctl_contrast = 66U;
  port->ctl_hue = 128U;
  port->ctl_saturation = 62U;
  port->ctl_sharpness = 8U;
  port->encoder_params.bitrate = 5000000U;
  port->encoder_params.bitrate_peak = 5000000U;
  port->encoder_params.bitrate_mode = 1U;
  port->encoder_params.stream_type = 0U;
  port->encoder_params.ctl_mute = 0U;
  port->encoder_params.ctl_aspect = 1U;
  port->encoder_params.refdist = 1U;
  port->encoder_params.gop_size = 15U;
  port->std = 4096ULL;
  if ((port->encodernorm.id & 63744ULL) != 0ULL) {
    port->height = 480U;
  } else {
    port->height = 576U;
  }
  {
  port->v4l_device = saa7164_encoder_alloc(port, dev->pci, & saa7164_mpeg_template,
                                           (char *)"mpeg");
  }
  if ((unsigned long )port->v4l_device == (unsigned long )((struct video_device *)0)) {
    {
    printk("\016%s: can\'t allocate mpeg device\n", (char *)(& dev->name));
    result = -12;
    }
    goto failed;
  } else {
  }
  {
  video_set_drvdata(port->v4l_device, (void *)port);
  result = video_register_device(port->v4l_device, 0, -1);
  }
  if (result < 0) {
    {
    printk("\016%s: can\'t register mpeg device\n", (char *)(& dev->name));
    }
    goto failed;
  } else {
  }
  {
  printk("\016%s: registered device video%d [mpeg]\n", (char *)(& dev->name), (int )(port->v4l_device)->num);
  saa7164_api_set_videomux(port);
  saa7164_api_set_usercontrol(port, 2);
  saa7164_api_set_usercontrol(port, 3);
  saa7164_api_set_usercontrol(port, 6);
  saa7164_api_set_usercontrol(port, 7);
  saa7164_api_set_usercontrol(port, 8);
  saa7164_api_audio_mute(port, 0);
  saa7164_api_set_audio_volume(port, 20);
  saa7164_api_set_aspect_ratio(port);
  saa7164_api_set_audio_detection(port, 0);
  saa7164_api_set_encoder(port);
  saa7164_api_get_encoder(port);
  result = 0;
  }
  failed: ;
  return (result);
}
}
void saa7164_encoder_unregister(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_encoder_unregister",
           port->nr);
    }
  } else {
  }
  if ((unsigned int )port->type != 2U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-encoder.c"),
                         "i" (1458), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )port->v4l_device != (unsigned long )((struct video_device *)0)) {
    if ((port->v4l_device)->minor != -1) {
      {
      video_unregister_device(port->v4l_device);
      }
    } else {
      {
      video_device_release(port->v4l_device);
      }
    }
    port->v4l_device = (struct video_device *)0;
  } else {
  }
  if ((saa_debug & 1024U) != 0U) {
    {
    printk("\017%s: %s(port=%d) done\n", (char *)(& dev->name), "saa7164_encoder_unregister",
           port->nr);
    }
  } else {
  }
  return;
}
}
void ldv_io_instance_callback_3_20(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_3_24(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_3_27(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_3_28(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_3_29(int (*arg0)(struct file * , void * , struct v4l2_control * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_control *arg3 ) ;
void ldv_io_instance_callback_3_30(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 ) ;
void ldv_io_instance_callback_3_31(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_32(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_33(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_3_34(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_3_37(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_3_40(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_3_41(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_3_42(int (*arg0)(struct file * , void * , struct v4l2_queryctrl * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_queryctrl *arg3 ) ;
void ldv_io_instance_callback_3_43(int (*arg0)(struct file * , void * , struct v4l2_control * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_control *arg3 ) ;
void ldv_io_instance_callback_3_44(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 ) ;
void ldv_io_instance_callback_3_45(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_46(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_47(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_3_48(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_3_51(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_3_54(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_3_55(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 ) ;
void ldv_io_instance_callback_3_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
int ldv_io_instance_probe_3_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_3_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_3_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_3_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_3_callback_vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
int (*ldv_3_callback_vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
int (*ldv_3_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_3_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_3_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_3_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_3_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_3_callback_vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
int (*ldv_3_callback_vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
int (*ldv_3_callback_vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
int (*ldv_3_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_3_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_3_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_3_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_3_callback_vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
int (*ldv_3_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
struct v4l2_file_operations *ldv_3_container_v4l2_file_operations ;
int ldv_statevar_3 ;
void ldv_switch_automaton_state_3_14(void)
{
  {
  ldv_statevar_3 = 13;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  int tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_3 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_3 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_3 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_3 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_3 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_3 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_3 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_3 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_3 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_3 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_3 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_3 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_3 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_3 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_3 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_3 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_3 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_3 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_3 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_3 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_3 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_3 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_3 == 54) {
    goto case_54;
  } else {
  }
  if (ldv_statevar_3 == 55) {
    goto case_55;
  } else {
  }
  if (ldv_statevar_3 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_3 == 57) {
    goto case_57;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_50191;
  case_2:
  {
  ldv_io_instance_release_3_2(ldv_3_container_v4l2_file_operations->release, ldv_3_resource_file);
  ldv_statevar_3 = 1;
  }
  goto ldv_50191;
  case_3:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_50191;
  case_4:
  {
  ldv_io_instance_callback_3_4(ldv_3_callback_functionality, ldv_3_resource_struct_i2c_adapter);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_6:
  {
  ldv_free((void *)ldv_3_resource_file);
  ldv_free((void *)ldv_3_resource_struct_i2c_adapter);
  ldv_free((void *)ldv_3_resource_struct_i2c_msg_ptr);
  ldv_free((void *)ldv_3_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_control_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_ext_controls_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_frequency_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_queryctrl_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_tuner_ptr);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  goto ldv_50191;
  case_8:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_50191;
  case_10:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_50191;
  case_11:
  {
  ldv_3_ret_default = ldv_io_instance_probe_3_11(ldv_3_container_v4l2_file_operations->open,
                                                 ldv_3_resource_file);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 8;
  } else {
    ldv_statevar_3 = 10;
  }
  goto ldv_50191;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1904UL);
  ldv_3_resource_struct_i2c_adapter = (struct i2c_adapter *)tmp___3;
  tmp___4 = ldv_xmalloc(16UL);
  ldv_3_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___4;
  tmp___5 = ldv_xmalloc(16UL);
  ldv_3_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___5;
  tmp___6 = ldv_xmalloc(104UL);
  ldv_3_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_3_resource_struct_v4l2_control_ptr = (struct v4l2_control *)tmp___7;
  tmp___8 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_v4l2_ext_controls_ptr = (struct v4l2_ext_controls *)tmp___8;
  tmp___9 = ldv_xmalloc(64UL);
  ldv_3_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___9;
  tmp___10 = ldv_xmalloc(208UL);
  ldv_3_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___10;
  tmp___11 = ldv_xmalloc(44UL);
  ldv_3_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___11;
  tmp___12 = ldv_xmalloc(80UL);
  ldv_3_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___12;
  tmp___13 = ldv_xmalloc(68UL);
  ldv_3_resource_struct_v4l2_queryctrl_ptr = (struct v4l2_queryctrl *)tmp___13;
  tmp___14 = ldv_xmalloc(84UL);
  ldv_3_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___14;
  tmp___15 = ldv_undef_int();
  }
  if (tmp___15 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_50191;
  case_14: ;
  goto ldv_50191;
  case_18:
  {
  ldv_io_instance_callback_3_17(ldv_3_callback_master_xfer, ldv_3_resource_struct_i2c_adapter,
                                ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_17_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_20:
  {
  ldv_io_instance_callback_3_20(ldv_3_callback_poll, ldv_3_resource_file, ldv_3_resource_struct_poll_table_struct_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_22:
  {
  tmp___16 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_21_1_default = (char *)tmp___16;
  tmp___17 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_21_3_default = (long long *)tmp___17;
  ldv_io_instance_callback_3_21(ldv_3_callback_read, ldv_3_resource_file, ldv_3_ldv_param_21_1_default,
                                ldv_3_ldv_param_21_2_default, ldv_3_ldv_param_21_3_default);
  ldv_free((void *)ldv_3_ldv_param_21_1_default);
  ldv_free((void *)ldv_3_ldv_param_21_3_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_25:
  {
  ldv_io_instance_callback_3_24(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                ldv_3_ldv_param_24_1_default, ldv_3_ldv_param_24_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_27:
  {
  ldv_io_instance_callback_3_27(ldv_3_callback_vidioc_enum_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_28:
  {
  ldv_io_instance_callback_3_28(ldv_3_callback_vidioc_enum_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_input_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_29:
  {
  ldv_io_instance_callback_3_29(ldv_3_callback_vidioc_g_ctrl, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_control_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_30:
  {
  ldv_io_instance_callback_3_30(ldv_3_callback_vidioc_g_ext_ctrls, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_ext_controls_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_31:
  {
  ldv_io_instance_callback_3_31(ldv_3_callback_vidioc_g_fmt_vbi_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_32:
  {
  ldv_io_instance_callback_3_32(ldv_3_callback_vidioc_g_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_33:
  {
  ldv_io_instance_callback_3_33(ldv_3_callback_vidioc_g_frequency, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_35:
  {
  tmp___18 = ldv_xmalloc(4UL);
  ldv_3_ldv_param_34_2_default = (unsigned int *)tmp___18;
  ldv_io_instance_callback_3_34(ldv_3_callback_vidioc_g_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_34_2_default);
  ldv_free((void *)ldv_3_ldv_param_34_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_38:
  {
  tmp___19 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_37_2_default = (unsigned long long *)tmp___19;
  ldv_io_instance_callback_3_37(ldv_3_callback_vidioc_g_std, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_37_2_default);
  ldv_free((void *)ldv_3_ldv_param_37_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_40:
  {
  ldv_io_instance_callback_3_40(ldv_3_callback_vidioc_g_tuner, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_41:
  {
  ldv_io_instance_callback_3_41(ldv_3_callback_vidioc_querycap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_capability_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_42:
  {
  ldv_io_instance_callback_3_42(ldv_3_callback_vidioc_queryctrl, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_queryctrl_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_43:
  {
  ldv_io_instance_callback_3_43(ldv_3_callback_vidioc_s_ctrl, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_control_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_44:
  {
  ldv_io_instance_callback_3_44(ldv_3_callback_vidioc_s_ext_ctrls, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_ext_controls_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_45:
  {
  ldv_io_instance_callback_3_45(ldv_3_callback_vidioc_s_fmt_vbi_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_46:
  {
  ldv_io_instance_callback_3_46(ldv_3_callback_vidioc_s_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_47:
  {
  ldv_io_instance_callback_3_47(ldv_3_callback_vidioc_s_frequency, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_49:
  {
  ldv_io_instance_callback_3_48(ldv_3_callback_vidioc_s_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_48_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_52:
  {
  ldv_io_instance_callback_3_51(ldv_3_callback_vidioc_s_std, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_51_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_54:
  {
  ldv_io_instance_callback_3_54(ldv_3_callback_vidioc_s_tuner, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_55:
  {
  ldv_io_instance_callback_3_55(ldv_3_callback_vidioc_try_ext_ctrls, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_ext_controls_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_56:
  {
  ldv_io_instance_callback_3_56(ldv_3_callback_vidioc_try_fmt_vbi_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  case_57:
  {
  ldv_io_instance_callback_3_57(ldv_3_callback_vidioc_try_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_50191;
  switch_default: ;
  switch_break: ;
  }
  ldv_50191: ;
  return;
}
}
static void *ldv_dev_get_drvdata_21(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_22(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_31___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_33___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_35___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_37___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_38___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_27___5(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_29___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_33___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_37___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_28___5(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_30___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_38___1(struct mutex *ldv_func_arg1 ) ;
static void *ldv_dev_get_drvdata_21___0(struct device const *dev ) ;
static int ldv_dev_set_drvdata_22___0(struct device *dev , void *data ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *video_get_drvdata___0(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_21___0((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata___0(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_22___0(& vdev->dev, data);
  }
  return;
}
}
static struct saa7164_tvnorm saa7164_tvnorms___0[2U] = { {(char *)"NTSC-M", 4096ULL},
        {(char *)"NTSC-JP", 8192ULL}};
static u32 const saa7164_v4l2_ctrls___0[1U] = { 0U};
static void saa7164_vbi_configure(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_vbi_configure");
    }
  } else {
  }
  {
  port->vbi_params.width = port->width;
  port->vbi_params.height = port->height;
  port->vbi_params.is_50hz = (port->encodernorm.id & 16713471ULL) != 0ULL;
  saa7164_api_initialize_dif(port);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() ends\n", (char *)(& dev->name), "saa7164_vbi_configure");
    }
  } else {
  }
  return;
}
}
static int saa7164_vbi_buffers_dealloc(struct saa7164_port *port )
{
  struct list_head *c ;
  struct list_head *n ;
  struct list_head *p ;
  struct list_head *q ;
  struct list_head *l ;
  struct list_head *v ;
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  dev = port->dev;
  ldv_mutex_lock_27___5(& port->dmaqueue_lock);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) dmaqueue\n", (char *)(& dev->name), "saa7164_vbi_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  c = port->dmaqueue.list.next;
  n = c->next;
  goto ldv_49351;
  ldv_49350:
  {
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  list_del(c);
  saa7164_buffer_dealloc(buf);
  c = n;
  n = c->next;
  }
  ldv_49351: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49350;
  } else {
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) used\n", (char *)(& dev->name), "saa7164_vbi_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  p = port->list_buf_used.list.next;
  q = p->next;
  goto ldv_49356;
  ldv_49355:
  {
  __mptr___0 = (struct list_head const *)p;
  ubuf = (struct saa7164_user_buffer *)__mptr___0;
  list_del(p);
  saa7164_buffer_dealloc_user(ubuf);
  p = q;
  q = p->next;
  }
  ldv_49356: ;
  if ((unsigned long )p != (unsigned long )(& port->list_buf_used.list)) {
    goto ldv_49355;
  } else {
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) free\n", (char *)(& dev->name), "saa7164_vbi_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  l = port->list_buf_free.list.next;
  v = l->next;
  goto ldv_49361;
  ldv_49360:
  {
  __mptr___1 = (struct list_head const *)l;
  ubuf = (struct saa7164_user_buffer *)__mptr___1;
  list_del(l);
  saa7164_buffer_dealloc_user(ubuf);
  l = v;
  v = l->next;
  }
  ldv_49361: ;
  if ((unsigned long )l != (unsigned long )(& port->list_buf_free.list)) {
    goto ldv_49360;
  } else {
  }
  {
  ldv_mutex_unlock_28___5(& port->dmaqueue_lock);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) done\n", (char *)(& dev->name), "saa7164_vbi_buffers_dealloc",
           port->nr);
    }
  } else {
  }
  return (0);
}
}
static int saa7164_vbi_buffers_alloc(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct tmHWStreamParameters *params ;
  int result ;
  int i ;
  int len ;
  {
  dev = port->dev;
  params = & port->hw_streamingparams;
  result = -19;
  len = 0;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_vbi_buffers_alloc");
    }
  } else {
  }
  params->samplesperline = 1440U;
  params->numberoflines = 12U;
  params->numberoflines = 18U;
  params->pitch = 1600U;
  params->pitch = 1440U;
  params->numpagetables = (params->numberoflines * params->pitch) / 4096U + 2U;
  params->bitspersample = 8U;
  params->linethreshold = 0U;
  params->pagetablelistvirt = (u64 **)0ULL;
  params->pagetablelistphys = (u64 *)0ULL;
  params->numpagetableentries = (u32 )port->hwcfg.buffercount;
  i = 0;
  goto ldv_49376;
  ldv_49375:
  {
  buf = saa7164_buffer_alloc(port, params->numberoflines * params->pitch);
  }
  if ((unsigned long )buf == (unsigned long )((struct saa7164_buffer *)0)) {
    {
    printk("\v%s() failed (errno = %d), unable to allocate buffer\n", "saa7164_vbi_buffers_alloc",
           result);
    result = -12;
    }
    goto failed;
  } else {
    {
    ldv_mutex_lock_29___4(& port->dmaqueue_lock);
    list_add_tail(& buf->list, & port->dmaqueue.list);
    ldv_mutex_unlock_30___4(& port->dmaqueue_lock);
    }
  }
  i = i + 1;
  ldv_49376: ;
  if (i < (int )port->hwcfg.buffercount) {
    goto ldv_49375;
  } else {
  }
  len = (int )(params->numberoflines * params->pitch);
  if (vbi_buffers <= 15U) {
    vbi_buffers = 16U;
  } else {
  }
  if (vbi_buffers > 512U) {
    vbi_buffers = 512U;
  } else {
  }
  i = 0;
  goto ldv_49379;
  ldv_49378:
  {
  ubuf = saa7164_buffer_alloc_user(dev, (u32 )len);
  }
  if ((unsigned long )ubuf != (unsigned long )((struct saa7164_user_buffer *)0)) {
    {
    ldv_mutex_lock_31___3(& port->dmaqueue_lock);
    list_add_tail(& ubuf->list, & port->list_buf_free.list);
    ldv_mutex_unlock_32___3(& port->dmaqueue_lock);
    }
  } else {
  }
  i = i + 1;
  ldv_49379: ;
  if ((unsigned int )i < vbi_buffers) {
    goto ldv_49378;
  } else {
  }
  result = 0;
  failed: ;
  return (result);
}
}
static int saa7164_vbi_initialize(struct saa7164_port *port )
{
  {
  {
  saa7164_vbi_configure(port);
  }
  return (0);
}
}
static int vidioc_s_std___0(struct file *file , void *priv , v4l2_std_id id )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  unsigned int i ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(id=0x%x)\n", (char *)(& dev->name), "vidioc_s_std", (unsigned int )id);
    }
  } else {
  }
  i = 0U;
  goto ldv_49398;
  ldv_49397: ;
  if ((id & saa7164_tvnorms___0[i].id) != 0ULL) {
    goto ldv_49396;
  } else {
  }
  i = i + 1U;
  ldv_49398: ;
  if (i <= 1U) {
    goto ldv_49397;
  } else {
  }
  ldv_49396: ;
  if (i == 2U) {
    return (-22);
  } else {
  }
  {
  port->encodernorm = saa7164_tvnorms___0[i];
  port->std = id;
  saa7164_api_set_audio_std(port);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(id=0x%x) OK\n", (char *)(& dev->name), "vidioc_s_std", (unsigned int )id);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_g_std___0(struct file *file , void *priv , v4l2_std_id *id )
{
  struct saa7164_encoder_fh *fh ;
  struct saa7164_port *port ;
  {
  fh = (struct saa7164_encoder_fh *)file->private_data;
  port = fh->port;
  *id = port->std;
  return (0);
}
}
static int vidioc_enum_input___0(struct file *file , void *priv , struct v4l2_input *i )
{
  int n ;
  char *inputs[7U] ;
  {
  inputs[0] = (char *)"tuner";
  inputs[1] = (char *)"composite";
  inputs[2] = (char *)"svideo";
  inputs[3] = (char *)"aux";
  inputs[4] = (char *)"composite 2";
  inputs[5] = (char *)"svideo 2";
  inputs[6] = (char *)"aux 2";
  if (i->index > 6U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& i->name), (char const *)inputs[i->index]);
  }
  if (i->index == 0U) {
    i->type = 1U;
  } else {
    i->type = 2U;
  }
  n = 0;
  goto ldv_49418;
  ldv_49417:
  i->std = i->std | saa7164_tvnorms___0[n].id;
  n = n + 1;
  ldv_49418: ;
  if ((unsigned int )n <= 1U) {
    goto ldv_49417;
  } else {
  }
  return (0);
}
}
static int vidioc_g_input___0(struct file *file , void *priv , unsigned int *i )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  {
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  tmp = saa7164_api_get_videomux(port);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  *i = (unsigned int )((int )port->mux_input + -1);
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() input=%d\n", (char *)(& dev->name), "vidioc_g_input", *i);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_input___0(struct file *file , void *priv , unsigned int i )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() input=%d\n", (char *)(& dev->name), "vidioc_s_input", i);
    }
  } else {
  }
  if (i > 6U) {
    return (-22);
  } else {
  }
  {
  port->mux_input = (unsigned int )((u8 )i) + 1U;
  tmp = saa7164_api_set_videomux(port);
  }
  if (tmp != 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int vidioc_g_tuner___0(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& t->name), "tuner");
  t->type = 2U;
  t->capability = 18U;
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: VIDIOC_G_TUNER: tuner type %d\n", (char *)(& dev->name), t->type);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_tuner___0(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  {
  return (0);
}
}
static int vidioc_g_frequency___0(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  f->type = 2U;
  f->frequency = port->freq;
  return (0);
}
}
static int vidioc_s_frequency___0(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  struct saa7164_port *tsport ;
  struct dvb_frontend *fe ;
  struct analog_parameters params ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  params.frequency = f->frequency;
  params.mode = 2U;
  params.audmode = 1U;
  params.std = port->encodernorm.id;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() frequency=%d tuner=%d\n", (char *)(& dev->name), "vidioc_s_frequency",
           f->frequency, f->tuner);
    }
  } else {
  }
  if ((unsigned int )f->tuner != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )f->type != 2U) {
    return (-22);
  } else {
  }
  port->freq = f->frequency;
  if (port->nr == 4) {
    tsport = (struct saa7164_port *)(& dev->ports);
  } else
  if (port->nr == 5) {
    tsport = (struct saa7164_port *)(& dev->ports) + 1UL;
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-vbi.c"),
                         "i" (357), "i" (12UL));
    __builtin_unreachable();
    }
  }
  fe = tsport->dvb.frontend;
  if ((unsigned long )fe != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe->ops.tuner_ops.set_analog_params != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                           struct analog_parameters * ))0)) {
    {
    (*(fe->ops.tuner_ops.set_analog_params))(fe, & params);
    }
  } else {
    {
    printk("\v%s() No analog tuner, aborting\n", "vidioc_s_frequency");
    }
  }
  {
  saa7164_vbi_initialize(port);
  }
  return (0);
}
}
static int vidioc_g_ctrl___0(struct file *file , void *priv , struct v4l2_control *ctl )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(id=%d, value=%d)\n", (char *)(& dev->name), "vidioc_g_ctrl",
           ctl->id, ctl->value);
    }
  } else {
  }
  {
  if (ctl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  goto switch_default;
  case_9963776:
  ctl->value = (__s32 )port->ctl_brightness;
  goto ldv_49480;
  case_9963777:
  ctl->value = (__s32 )port->ctl_contrast;
  goto ldv_49480;
  case_9963778:
  ctl->value = (__s32 )port->ctl_saturation;
  goto ldv_49480;
  case_9963779:
  ctl->value = (__s32 )port->ctl_hue;
  goto ldv_49480;
  case_9963803:
  ctl->value = (__s32 )port->ctl_sharpness;
  goto ldv_49480;
  case_9963781:
  ctl->value = (__s32 )port->ctl_volume;
  goto ldv_49480;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49480: ;
  return (0);
}
}
static int vidioc_s_ctrl___0(struct file *file , void *priv , struct v4l2_control *ctl )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int ret ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(id=%d, value=%d)\n", (char *)(& dev->name), "vidioc_s_ctrl",
           ctl->id, ctl->value);
    }
  } else {
  }
  {
  if (ctl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctl->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  goto switch_default;
  case_9963776: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_brightness = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 2);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963777: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_contrast = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 3);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963778: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_saturation = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 7);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963779: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_hue = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 6);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963803: ;
  if ((unsigned int )ctl->value <= 255U) {
    {
    port->ctl_sharpness = (u16 )ctl->value;
    saa7164_api_set_usercontrol(port, 8);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  case_9963781: ;
  if ((unsigned int )ctl->value - 4294967213U <= 107U) {
    {
    port->ctl_volume = (s8 )ctl->value;
    saa7164_api_set_audio_volume(port, (int )port->ctl_volume);
    }
  } else {
    ret = -22;
  }
  goto ldv_49498;
  switch_default:
  ret = -22;
  switch_break: ;
  }
  ldv_49498: ;
  return (ret);
}
}
static int saa7164_get_ctrl___0(struct saa7164_port *port , struct v4l2_ext_control *ctrl )
{
  struct saa7164_vbi_params *params ;
  {
  params = & port->vbi_params;
  {
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  goto switch_default;
  case_10029312:
  ctrl->__annonCompField73.value = (__s32 )params->stream_type;
  goto ldv_49511;
  case_10029421:
  ctrl->__annonCompField73.value = (__s32 )params->ctl_mute;
  goto ldv_49511;
  case_10029513:
  ctrl->__annonCompField73.value = (__s32 )params->ctl_aspect;
  goto ldv_49511;
  case_10029514:
  ctrl->__annonCompField73.value = (__s32 )params->refdist;
  goto ldv_49511;
  case_10029515:
  ctrl->__annonCompField73.value = (__s32 )params->gop_size;
  goto ldv_49511;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49511: ;
  return (0);
}
}
static int vidioc_g_ext_ctrls___0(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49529;
    ldv_49528:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_get_ctrl___0(port, ctrl);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49527;
    } else {
    }
    i = i + 1;
    ldv_49529: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49528;
    } else {
    }
    ldv_49527: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int saa7164_try_ctrl___0(struct v4l2_ext_control *ctrl , int ac3 )
{
  int ret ;
  {
  ret = -22;
  {
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  goto switch_default;
  case_10029312: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 1U) {
    ret = 0;
  } else {
  }
  goto ldv_49536;
  case_10029421: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 1U) {
    ret = 0;
  } else {
  }
  goto ldv_49536;
  case_10029513: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 3U) {
    ret = 0;
  } else {
  }
  goto ldv_49536;
  case_10029515: ;
  if ((unsigned int )ctrl->__annonCompField73.value <= 255U) {
    ret = 0;
  } else {
  }
  goto ldv_49536;
  case_10029514: ;
  if ((unsigned int )ctrl->__annonCompField73.value - 1U <= 2U) {
    ret = 0;
  } else {
  }
  goto ldv_49536;
  switch_default:
  ret = -22;
  switch_break: ;
  }
  ldv_49536: ;
  return (ret);
}
}
static int vidioc_try_ext_ctrls___0(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49552;
    ldv_49551:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_try_ctrl___0(ctrl, 0);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49550;
    } else {
    }
    i = i + 1;
    ldv_49552: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49551;
    } else {
    }
    ldv_49550: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int saa7164_set_ctrl___0(struct saa7164_port *port , struct v4l2_ext_control *ctrl )
{
  struct saa7164_vbi_params *params ;
  int ret ;
  {
  params = & port->vbi_params;
  ret = 0;
  {
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (ctrl->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (ctrl->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (ctrl->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  if (ctrl->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  goto switch_default;
  case_10029312:
  params->stream_type = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49560;
  case_10029421:
  {
  params->ctl_mute = (u32 )ctrl->__annonCompField73.value;
  ret = saa7164_api_audio_mute(port, (int )params->ctl_mute);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_set_ctrl", ret);
    ret = -5;
    }
  } else {
  }
  goto ldv_49560;
  case_10029513:
  {
  params->ctl_aspect = (u32 )ctrl->__annonCompField73.value;
  ret = saa7164_api_set_aspect_ratio(port);
  }
  if (ret != 0) {
    {
    printk("\v%s() error, ret = 0x%x\n", "saa7164_set_ctrl", ret);
    ret = -5;
    }
  } else {
  }
  goto ldv_49560;
  case_10029514:
  params->refdist = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49560;
  case_10029515:
  params->gop_size = (u32 )ctrl->__annonCompField73.value;
  goto ldv_49560;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_49560: ;
  return (ret);
}
}
static int vidioc_s_ext_ctrls___0(struct file *file , void *priv , struct v4l2_ext_controls *ctrls )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int err ;
  struct v4l2_ext_control *ctrl ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  err = 0;
  if (ctrls->ctrl_class == 10027008U) {
    i = 0;
    goto ldv_49579;
    ldv_49578:
    {
    ctrl = ctrls->controls + (unsigned long )i;
    err = saa7164_try_ctrl___0(ctrl, 0);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49577;
    } else {
    }
    {
    err = saa7164_set_ctrl___0(port, ctrl);
    }
    if (err != 0) {
      ctrls->error_idx = (__u32 )i;
      goto ldv_49577;
    } else {
    }
    i = i + 1;
    ldv_49579: ;
    if ((__u32 )i < ctrls->count) {
      goto ldv_49578;
    } else {
    }
    ldv_49577: ;
    return (err);
  } else {
  }
  return (-22);
}
}
static int vidioc_querycap___0(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  char const *tmp ;
  {
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  strcpy((char *)(& cap->driver), (char const *)(& dev->name));
  strlcpy((char *)(& cap->card), (char const *)saa7164_boards[dev->board].name,
          32UL);
  tmp = pci_name((struct pci_dev const *)dev->pci);
  sprintf((char *)(& cap->bus_info), "PCI:%s", tmp);
  cap->capabilities = 16777232U;
  cap->capabilities = cap->capabilities | 65536U;
  cap->version = 0U;
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  {
  if (f->index != 0U) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), "VBI", 32UL);
  f->pixelformat = 1195724877U;
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  f->fmt.pix.width = port->width;
  f->fmt.pix.height = port->height;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: VIDIOC_G_FMT: w: %d, h: %d\n", (char *)(& dev->name), port->width,
           port->height);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: VIDIOC_TRY_FMT: w: %d, h: %d\n", (char *)(& dev->name), port->width,
           port->height);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap___0(struct file *file , void *priv , struct v4l2_format *f )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.sizeimage = port->ts_packet_size * port->ts_packet_count;
  f->fmt.pix.colorspace = 0U;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: VIDIOC_S_FMT: w: %d, h: %d, f: %d\n", (char *)(& dev->name), f->fmt.pix.width,
           f->fmt.pix.height, f->fmt.pix.field);
    }
  } else {
  }
  return (0);
}
}
static int fill_queryctrl___0(struct saa7164_vbi_params *params , struct v4l2_queryctrl *c )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  if (c->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (c->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (c->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (c->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (c->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (c->id == 10029421U) {
    goto case_10029421;
  } else {
  }
  if (c->id == 9963781U) {
    goto case_9963781;
  } else {
  }
  if (c->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  if (c->id == 10029513U) {
    goto case_10029513;
  } else {
  }
  if (c->id == 10029515U) {
    goto case_10029515;
  } else {
  }
  if (c->id == 10029514U) {
    goto case_10029514;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  tmp = v4l2_ctrl_query_fill(c, 0, 255, 1, 127);
  }
  return (tmp);
  case_9963777:
  {
  tmp___0 = v4l2_ctrl_query_fill(c, 0, 255, 1, 66);
  }
  return (tmp___0);
  case_9963778:
  {
  tmp___1 = v4l2_ctrl_query_fill(c, 0, 255, 1, 62);
  }
  return (tmp___1);
  case_9963779:
  {
  tmp___2 = v4l2_ctrl_query_fill(c, 0, 255, 1, 128);
  }
  return (tmp___2);
  case_9963803:
  {
  tmp___3 = v4l2_ctrl_query_fill(c, 0, 15, 1, 8);
  }
  return (tmp___3);
  case_10029421:
  {
  tmp___4 = v4l2_ctrl_query_fill(c, 0, 1, 1, 0);
  }
  return (tmp___4);
  case_9963781:
  {
  tmp___5 = v4l2_ctrl_query_fill(c, -83, 24, 1, 20);
  }
  return (tmp___5);
  case_10029312:
  {
  tmp___6 = v4l2_ctrl_query_fill(c, 0, 1, 1, 0);
  }
  return (tmp___6);
  case_10029513:
  {
  tmp___7 = v4l2_ctrl_query_fill(c, 0, 3, 1, 1);
  }
  return (tmp___7);
  case_10029515:
  {
  tmp___8 = v4l2_ctrl_query_fill(c, 1, 255, 1, 15);
  }
  return (tmp___8);
  case_10029514:
  {
  tmp___9 = v4l2_ctrl_query_fill(c, 1, 3, 1, 1);
  }
  return (tmp___9);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static int vidioc_queryctrl___0(struct file *file , void *priv , struct v4l2_queryctrl *c )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  int i ;
  int next ;
  u32 id ;
  int tmp ;
  {
  {
  fh = (struct saa7164_vbi_fh *)priv;
  port = fh->port;
  id = c->id;
  memset((void *)c, 0, 68UL);
  next = (int )id < 0;
  c->id = id & 2147483647U;
  i = 0;
  }
  goto ldv_49648;
  ldv_49647: ;
  if (next != 0) {
    if (c->id < (__u32 )saa7164_v4l2_ctrls___0[i]) {
      c->id = saa7164_v4l2_ctrls___0[i];
    } else {
      goto ldv_49645;
    }
  } else {
  }
  if (c->id == (__u32 )saa7164_v4l2_ctrls___0[i]) {
    {
    tmp = fill_queryctrl___0(& port->vbi_params, c);
    }
    return (tmp);
  } else {
  }
  if (c->id < (__u32 )saa7164_v4l2_ctrls___0[i]) {
    goto ldv_49646;
  } else {
  }
  ldv_49645:
  i = i + 1;
  ldv_49648: ;
  if (i == 0) {
    goto ldv_49647;
  } else {
  }
  ldv_49646: ;
  return (-22);
}
}
static int saa7164_vbi_stop_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 0);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() stop transition failed, ret = 0x%x\n", "saa7164_vbi_stop_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 2048U) != 0U) {
      {
      printk("\017%s: %s()    Stopped\n", (char *)(& dev->name), "saa7164_vbi_stop_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_vbi_acquire_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 1);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() acquire transition failed, ret = 0x%x\n", "saa7164_vbi_acquire_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 2048U) != 0U) {
      {
      printk("\017%s: %s() Acquired\n", (char *)(& dev->name), "saa7164_vbi_acquire_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_vbi_pause_port(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int ret ;
  {
  {
  dev = port->dev;
  ret = saa7164_api_transition_port(port, 2);
  }
  if (ret != 0 && ret != 38) {
    {
    printk("\v%s() pause transition failed, ret = 0x%x\n", "saa7164_vbi_pause_port",
           ret);
    ret = -5;
    }
  } else {
    if ((saa_debug & 2048U) != 0U) {
      {
      printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_vbi_pause_port");
      }
    } else {
    }
    ret = 0;
  }
  return (ret);
}
}
static int saa7164_vbi_stop_streaming(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  struct saa7164_buffer *buf ;
  struct saa7164_user_buffer *ubuf ;
  struct list_head *c ;
  struct list_head *n ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_vbi_stop_streaming",
           port->nr);
    }
  } else {
  }
  {
  ret = saa7164_vbi_pause_port(port);
  ret = saa7164_vbi_acquire_port(port);
  ret = saa7164_vbi_stop_port(port);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) Hardware stopped\n", (char *)(& dev->name), "saa7164_vbi_stop_streaming",
           port->nr);
    }
  } else {
  }
  {
  ldv_mutex_lock_33___2(& port->dmaqueue_lock);
  c = port->dmaqueue.list.next;
  n = c->next;
  }
  goto ldv_49680;
  ldv_49679:
  __mptr = (struct list_head const *)c;
  buf = (struct saa7164_buffer *)__mptr;
  buf->flags = 1;
  buf->pos = 0U;
  c = n;
  n = c->next;
  ldv_49680: ;
  if ((unsigned long )c != (unsigned long )(& port->dmaqueue.list)) {
    goto ldv_49679;
  } else {
  }
  c = port->list_buf_used.list.next;
  n = c->next;
  goto ldv_49685;
  ldv_49684:
  {
  __mptr___0 = (struct list_head const *)c;
  ubuf = (struct saa7164_user_buffer *)__mptr___0;
  ubuf->pos = 0U;
  list_move_tail(& ubuf->list, & port->list_buf_free.list);
  c = n;
  n = c->next;
  }
  ldv_49685: ;
  if ((unsigned long )c != (unsigned long )(& port->list_buf_used.list)) {
    goto ldv_49684;
  } else {
  }
  {
  ldv_mutex_unlock_34___2(& port->dmaqueue_lock);
  saa7164_vbi_buffers_dealloc(port);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d) Released\n", (char *)(& dev->name), "saa7164_vbi_stop_streaming",
           port->nr);
    }
  } else {
  }
  return (ret);
}
}
static int saa7164_vbi_start_streaming(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int result ;
  int ret ;
  int tmp ;
  {
  dev = port->dev;
  ret = 0;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_vbi_start_streaming",
           port->nr);
    }
  } else {
  }
  {
  port->done_first_interrupt = 0U;
  saa7164_vbi_buffers_alloc(port);
  saa7164_buffer_cfg_port(port);
  tmp = saa7164_api_set_vbi_format(port);
  }
  if (tmp != 0) {
    {
    printk("\v%s() No supported VBI format\n", "saa7164_vbi_start_streaming");
    ret = -5;
    }
    goto out;
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 1);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() acquire transition failed, res = 0x%x\n", "saa7164_vbi_start_streaming",
           result);
    ret = -5;
    }
    goto out;
  } else
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()   Acquired\n", (char *)(& dev->name), "saa7164_vbi_start_streaming");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 2);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() pause transition failed, res = 0x%x\n", "saa7164_vbi_start_streaming",
           result);
    result = saa7164_vbi_stop_port(port);
    }
    if (result != 0) {
      {
      printk("\v%s() pause/forced stop transition failed, res = 0x%x\n", "saa7164_vbi_start_streaming",
             result);
      }
    } else {
    }
    ret = -5;
    goto out;
  } else
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()   Paused\n", (char *)(& dev->name), "saa7164_vbi_start_streaming");
    }
  } else {
  }
  {
  result = saa7164_api_transition_port(port, 3);
  }
  if (result != 0 && result != 38) {
    {
    printk("\v%s() run transition failed, result = 0x%x\n", "saa7164_vbi_start_streaming",
           result);
    result = saa7164_vbi_acquire_port(port);
    result = saa7164_vbi_stop_port(port);
    }
    if (result != 0) {
      {
      printk("\v%s() run/forced stop transition failed, res = 0x%x\n", "saa7164_vbi_start_streaming",
             result);
      }
    } else {
    }
    ret = -5;
  } else
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()   Running\n", (char *)(& dev->name), "saa7164_vbi_start_streaming");
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static int saa7164_vbi_fmt(struct file *file , void *priv , struct v4l2_format *f )
{
  {
  f->fmt.vbi.samples_per_line = 1600U;
  f->fmt.vbi.samples_per_line = 1440U;
  f->fmt.vbi.sampling_rate = 27000000U;
  f->fmt.vbi.sample_format = 1497715271U;
  f->fmt.vbi.offset = 0U;
  f->fmt.vbi.flags = 0U;
  f->fmt.vbi.start[0] = 10;
  f->fmt.vbi.count[0] = 18U;
  f->fmt.vbi.start[1] = 274;
  f->fmt.vbi.count[1] = 18U;
  return (0);
}
}
static int fops_open___0(struct file *file )
{
  struct saa7164_dev *dev ;
  struct saa7164_port *port ;
  struct saa7164_vbi_fh *fh ;
  struct video_device *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata___0(tmp);
  port = (struct saa7164_port *)tmp___0;
  }
  if ((unsigned long )port == (unsigned long )((struct saa7164_port *)0)) {
    return (-19);
  } else {
  }
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "fops_open");
    }
  } else {
  }
  {
  tmp___1 = kzalloc(16UL, 208U);
  fh = (struct saa7164_vbi_fh *)tmp___1;
  }
  if ((unsigned long )fh == (unsigned long )((struct saa7164_vbi_fh *)0)) {
    return (-12);
  } else {
  }
  file->private_data = (void *)fh;
  fh->port = port;
  return (0);
}
}
static int fops_release___0(struct file *file )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_dev *dev ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "fops_release");
    }
  } else {
  }
  {
  tmp___0 = atomic_cmpxchg(& fh->v4l_reading, 1, 0);
  }
  if (tmp___0 == 1) {
    {
    tmp = atomic_sub_return(1, & port->v4l_reader_count);
    }
    if (tmp == 0) {
      {
      saa7164_vbi_stop_streaming(port);
      }
    } else {
    }
  } else {
  }
  {
  file->private_data = (void *)0;
  kfree((void const *)fh);
  }
  return (0);
}
}
static struct saa7164_user_buffer *saa7164_vbi_next_buf(struct saa7164_port *port )
{
  struct saa7164_user_buffer *ubuf ;
  struct saa7164_dev *dev ;
  u32 crc ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  ubuf = (struct saa7164_user_buffer *)0;
  dev = port->dev;
  ldv_mutex_lock_35___3(& port->dmaqueue_lock);
  tmp = list_empty((struct list_head const *)(& port->list_buf_used.list));
  }
  if (tmp == 0) {
    __mptr = (struct list_head const *)port->list_buf_used.list.next;
    ubuf = (struct saa7164_user_buffer *)__mptr;
    if (crc_checking != 0U) {
      {
      crc = crc32_le(0U, (unsigned char const *)ubuf->data, (size_t )ubuf->actual_size);
      }
      if (crc != ubuf->crc) {
        {
        printk("\v%s() ubuf %p crc became invalid, was 0x%x became 0x%x\n", "saa7164_vbi_next_buf",
               ubuf, ubuf->crc, crc);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_36___3(& port->dmaqueue_lock);
  }
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() returns %p\n", (char *)(& dev->name), "saa7164_vbi_next_buf",
           ubuf);
    }
  } else {
  }
  return (ubuf);
}
}
static ssize_t fops_read___0(struct file *file , char *buffer , size_t count , loff_t *pos )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  struct saa7164_user_buffer *ubuf ;
  struct saa7164_dev *dev ;
  int ret ;
  int rem ;
  int cnt ;
  u8 *p ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  struct saa7164_user_buffer *tmp___4 ;
  struct saa7164_user_buffer *tmp___5 ;
  unsigned long tmp___6 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___7 ;
  struct saa7164_user_buffer *tmp___8 ;
  struct saa7164_user_buffer *tmp___9 ;
  {
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  ubuf = (struct saa7164_user_buffer *)0;
  dev = port->dev;
  ret = 0;
  port->last_read_msecs_diff = port->last_read_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_read_msecs = (u64 )tmp;
  port->last_read_msecs_diff = port->last_read_msecs - port->last_read_msecs_diff;
  saa7164_histogram_update(& port->read_interval, (u32 )port->last_read_msecs_diff);
  }
  if (*pos != 0LL) {
    {
    printk("\v%s() ESPIPE\n", "fops_read");
    }
    return (-29L);
  } else {
  }
  {
  tmp___2 = atomic_cmpxchg(& fh->v4l_reading, 0, 1);
  }
  if (tmp___2 == 0) {
    {
    tmp___1 = atomic_add_return(1, & port->v4l_reader_count);
    }
    if (tmp___1 == 1) {
      {
      tmp___0 = saa7164_vbi_initialize(port);
      }
      if (tmp___0 < 0) {
        {
        printk("\v%s() EINVAL\n", "fops_read");
        }
        return (-22L);
      } else {
      }
      {
      saa7164_vbi_start_streaming(port);
      msleep(200U);
      }
    } else {
    }
  } else {
  }
  if ((file->f_flags & 2048U) == 0U) {
    {
    __ret = 0;
    tmp___5 = saa7164_vbi_next_buf(port);
    }
    if ((unsigned long )tmp___5 == (unsigned long )((struct saa7164_user_buffer *)0)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_49744:
      {
      tmp___3 = prepare_to_wait_event(& port->wait_read, & __wait, 1);
      __int = tmp___3;
      tmp___4 = saa7164_vbi_next_buf(port);
      }
      if ((unsigned long )tmp___4 != (unsigned long )((struct saa7164_user_buffer *)0)) {
        goto ldv_49743;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_49743;
      } else {
      }
      {
      schedule();
      }
      goto ldv_49744;
      ldv_49743:
      {
      finish_wait(& port->wait_read, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      {
      printk("\v%s() ERESTARTSYS\n", "fops_read");
      }
      return (-512L);
    } else {
    }
  } else {
  }
  {
  ubuf = saa7164_vbi_next_buf(port);
  }
  goto ldv_49759;
  ldv_49758:
  rem = (int )(ubuf->actual_size - ubuf->pos);
  cnt = (int )(count < (size_t )rem ? count : (size_t )rem);
  p = ubuf->data + (unsigned long )ubuf->pos;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s() count=%d cnt=%d rem=%d buf=%p buf->pos=%d\n", (char *)(& dev->name),
           "fops_read", (int )count, cnt, rem, ubuf, ubuf->pos);
    }
  } else {
  }
  {
  tmp___6 = copy_to_user((void *)buffer, (void const *)p, (unsigned long )cnt);
  }
  if (tmp___6 != 0UL) {
    {
    printk("\v%s() copy_to_user failed\n", "fops_read");
    }
    if (ret == 0) {
      {
      printk("\v%s() EFAULT\n", "fops_read");
      ret = -14;
      }
    } else {
    }
    goto err;
  } else {
  }
  ubuf->pos = ubuf->pos + (u32 )cnt;
  count = count - (size_t )cnt;
  buffer = buffer + (unsigned long )cnt;
  ret = ret + cnt;
  if (ubuf->pos > ubuf->actual_size) {
    {
    printk("\vread() pos > actual, huh?\n");
    }
  } else {
  }
  if (ubuf->pos == ubuf->actual_size) {
    {
    ubuf->pos = 0U;
    ldv_mutex_lock_37___1(& port->dmaqueue_lock);
    list_move_tail(& ubuf->list, & port->list_buf_free.list);
    ldv_mutex_unlock_38___1(& port->dmaqueue_lock);
    }
    if ((file->f_flags & 2048U) == 0U) {
      {
      __ret___1 = 0;
      tmp___9 = saa7164_vbi_next_buf(port);
      }
      if ((unsigned long )tmp___9 == (unsigned long )((struct saa7164_user_buffer *)0)) {
        {
        __ret___2 = 0L;
        INIT_LIST_HEAD(& __wait___0.task_list);
        __wait___0.flags = 0U;
        }
        ldv_49754:
        {
        tmp___7 = prepare_to_wait_event(& port->wait_read, & __wait___0, 1);
        __int___0 = tmp___7;
        tmp___8 = saa7164_vbi_next_buf(port);
        }
        if ((unsigned long )tmp___8 != (unsigned long )((struct saa7164_user_buffer *)0)) {
          goto ldv_49753;
        } else {
        }
        if (__int___0 != 0L) {
          __ret___2 = __int___0;
          goto ldv_49753;
        } else {
        }
        {
        schedule();
        }
        goto ldv_49754;
        ldv_49753:
        {
        finish_wait(& port->wait_read, & __wait___0);
        }
        __ret___1 = (int )__ret___2;
      } else {
      }
      if (__ret___1 != 0) {
        goto ldv_49757;
      } else {
      }
    } else {
    }
    {
    ubuf = saa7164_vbi_next_buf(port);
    }
  } else {
  }
  ldv_49759: ;
  if (count != 0UL && (unsigned long )ubuf != (unsigned long )((struct saa7164_user_buffer *)0)) {
    goto ldv_49758;
  } else {
  }
  ldv_49757: ;
  err: ;
  if (ret == 0 && (unsigned long )ubuf == (unsigned long )((struct saa7164_user_buffer *)0)) {
    {
    printk("\v%s() EAGAIN\n", "fops_read");
    ret = -11;
    }
  } else {
  }
  return ((ssize_t )ret);
}
}
static unsigned int fops_poll___0(struct file *file , poll_table *wait )
{
  struct saa7164_vbi_fh *fh ;
  struct saa7164_port *port ;
  unsigned int mask ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___4 ;
  struct saa7164_user_buffer *tmp___5 ;
  struct saa7164_user_buffer *tmp___6 ;
  int tmp___7 ;
  {
  {
  fh = (struct saa7164_vbi_fh *)file->private_data;
  port = fh->port;
  mask = 0U;
  port->last_poll_msecs_diff = port->last_poll_msecs;
  tmp = jiffies_to_msecs(jiffies);
  port->last_poll_msecs = (u64 )tmp;
  port->last_poll_msecs_diff = port->last_poll_msecs - port->last_poll_msecs_diff;
  saa7164_histogram_update(& port->poll_interval, (u32 )port->last_poll_msecs_diff);
  tmp___0 = video_is_registered(port->v4l_device);
  }
  if (tmp___0 == 0) {
    return (4294967291U);
  } else {
  }
  {
  tmp___3 = atomic_cmpxchg(& fh->v4l_reading, 0, 1);
  }
  if (tmp___3 == 0) {
    {
    tmp___2 = atomic_add_return(1, & port->v4l_reader_count);
    }
    if (tmp___2 == 1) {
      {
      tmp___1 = saa7164_vbi_initialize(port);
      }
      if (tmp___1 < 0) {
        return (4294967274U);
      } else {
      }
      {
      saa7164_vbi_start_streaming(port);
      msleep(200U);
      }
    } else {
    }
  } else {
  }
  if ((file->f_flags & 2048U) == 0U) {
    {
    __ret = 0;
    tmp___6 = saa7164_vbi_next_buf(port);
    }
    if ((unsigned long )tmp___6 == (unsigned long )((struct saa7164_user_buffer *)0)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_49773:
      {
      tmp___4 = prepare_to_wait_event(& port->wait_read, & __wait, 1);
      __int = tmp___4;
      tmp___5 = saa7164_vbi_next_buf(port);
      }
      if ((unsigned long )tmp___5 != (unsigned long )((struct saa7164_user_buffer *)0)) {
        goto ldv_49772;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_49772;
      } else {
      }
      {
      schedule();
      }
      goto ldv_49773;
      ldv_49772:
      {
      finish_wait(& port->wait_read, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      return (4294966784U);
    } else {
    }
  } else {
  }
  {
  tmp___7 = list_empty((struct list_head const *)(& port->list_buf_used.list));
  }
  if (tmp___7 == 0) {
    mask = mask | 65U;
  } else {
  }
  return (mask);
}
}
static struct v4l2_file_operations const vbi_fops =
     {& __this_module, & fops_read___0, 0, & fops_poll___0, 0, & video_ioctl2, 0, 0,
    0, & fops_open___0, & fops_release___0};
static struct v4l2_ioctl_ops const vbi_ioctl_ops =
     {& vidioc_querycap___0, 0, 0, & vidioc_enum_fmt_vid_cap___0, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap___0,
    0, 0, 0, & saa7164_vbi_fmt, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap___0, 0, 0, 0,
    & saa7164_vbi_fmt, 0, 0, 0, 0, 0, & vidioc_try_fmt_vid_cap___0, 0, 0, 0, & saa7164_vbi_fmt,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_std___0, & vidioc_s_std___0,
    0, & vidioc_enum_input___0, & vidioc_g_input___0, & vidioc_s_input___0, 0, 0,
    0, & vidioc_queryctrl___0, & vidioc_g_ctrl___0, & vidioc_s_ctrl___0, & vidioc_g_ext_ctrls___0,
    & vidioc_s_ext_ctrls___0, & vidioc_try_ext_ctrls___0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_tuner___0, & vidioc_s_tuner___0,
    & vidioc_g_frequency___0, & vidioc_s_frequency___0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct video_device saa7164_vbi_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & vbi_fops, {0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {{0}},
                                                                                 {{{0L},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  {{0,
                                                                                    0},
                                                                                   0UL,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0,
                                                                                   0,
                                                                                   0,
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
                                                                                    (char)0},
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0},
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U},
                                                                                0,
                                                                                0,
                                                                                {{0},
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {{0},
                                                                                 0U,
                                                                                 0U,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0,
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 {0U,
                                                                                  {{{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0}}},
                                                                                 0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0,
                                                                                 {{0,
                                                                                   0},
                                                                                  0UL,
                                                                                  0,
                                                                                  0,
                                                                                  0UL,
                                                                                  0,
                                                                                  0,
                                                                                  0,
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
                                                                                   (char)0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}},
                                                                                 0UL,
                                                                                 {{0L},
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}},
                                                                                 {{{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0}},
                                                                                 {0},
                                                                                 {0},
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0UL,
                                                                                 0UL,
                                                                                 0UL,
                                                                                 0UL,
                                                                                 0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0ULL,
                                                                                0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                {0},
                                                                                0U,
                                                                                0U,
                                                                                {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0},
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 {{0}}},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                (_Bool)0,
                                                                                (_Bool)0},
    0, 0, 0, 0, 0, 0, {'s', 'a', 'a', '7', '1', '6', '4', '\000'}, 0, 0, -1, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 28672ULL,
    0, & vbi_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct video_device *saa7164_vbi_alloc(struct saa7164_port *port , struct pci_dev *pci ,
                                              struct video_device *template , char *type )
{
  struct video_device *vfd ;
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_vbi_alloc");
    }
  } else {
  }
  {
  vfd = video_device_alloc();
  }
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return ((struct video_device *)0);
  } else {
  }
  {
  *vfd = *template;
  snprintf((char *)(& vfd->name), 32UL, "%s %s (%s)", (char *)(& dev->name), type,
           saa7164_boards[dev->board].name);
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->release = & video_device_release;
  }
  return (vfd);
}
}
int saa7164_vbi_register(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  int result ;
  {
  dev = port->dev;
  result = -19;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s()\n", (char *)(& dev->name), "saa7164_vbi_register");
    }
  } else {
  }
  if ((unsigned int )port->type != 3U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-vbi.c"),
                         "i" (1313), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (port->hwcfg.BARLocation == 0U) {
    {
    printk("\v%s() failed (errno = %d), NO PCI configuration\n", "saa7164_vbi_register",
           result);
    result = -12;
    }
    goto failed;
  } else {
  }
  {
  port->v4l_device = saa7164_vbi_alloc(port, dev->pci, & saa7164_vbi_template, (char *)"vbi");
  }
  if ((unsigned long )port->v4l_device == (unsigned long )((struct video_device *)0)) {
    {
    printk("\016%s: can\'t allocate vbi device\n", (char *)(& dev->name));
    result = -12;
    }
    goto failed;
  } else {
  }
  {
  port->std = 4096ULL;
  video_set_drvdata___0(port->v4l_device, (void *)port);
  result = video_register_device(port->v4l_device, 1, -1);
  }
  if (result < 0) {
    {
    printk("\016%s: can\'t register vbi device\n", (char *)(& dev->name));
    }
    goto failed;
  } else {
  }
  {
  printk("\016%s: registered device vbi%d [vbi]\n", (char *)(& dev->name), (int )(port->v4l_device)->num);
  result = 0;
  }
  failed: ;
  return (result);
}
}
void saa7164_vbi_unregister(struct saa7164_port *port )
{
  struct saa7164_dev *dev ;
  {
  dev = port->dev;
  if ((saa_debug & 2048U) != 0U) {
    {
    printk("\017%s: %s(port=%d)\n", (char *)(& dev->name), "saa7164_vbi_unregister",
           port->nr);
    }
  } else {
  }
  if ((unsigned int )port->type != 3U) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/saa7164/saa7164-vbi.c"),
                         "i" (1367), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )port->v4l_device != (unsigned long )((struct video_device *)0)) {
    if ((port->v4l_device)->minor != -1) {
      {
      video_unregister_device(port->v4l_device);
      }
    } else {
      {
      video_device_release(port->v4l_device);
      }
    }
    port->v4l_device = (struct video_device *)0;
  } else {
  }
  return;
}
}
unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) = & fops_poll___0;
long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_3_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap___0;
int (*ldv_3_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & vidioc_enum_input___0;
int (*ldv_3_callback_vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) = & vidioc_g_ctrl___0;
int (*ldv_3_callback_vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) = & vidioc_g_ext_ctrls___0;
int (*ldv_3_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & saa7164_vbi_fmt;
int (*ldv_3_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap___0;
int (*ldv_3_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) = & vidioc_g_frequency___0;
int (*ldv_3_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & vidioc_g_input___0;
int (*ldv_3_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & vidioc_g_std___0;
int (*ldv_3_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) = & vidioc_g_tuner___0;
int (*ldv_3_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap___0;
int (*ldv_3_callback_vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) = & vidioc_queryctrl___0;
int (*ldv_3_callback_vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) = & vidioc_s_ctrl___0;
int (*ldv_3_callback_vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) = & vidioc_s_ext_ctrls___0;
int (*ldv_3_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & saa7164_vbi_fmt;
int (*ldv_3_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap___0;
int (*ldv_3_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) = (int (*)(struct file * ,
            void * , struct v4l2_frequency * ))(& vidioc_s_frequency___0);
int (*ldv_3_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & vidioc_s_input___0;
int (*ldv_3_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & vidioc_s_std___0;
int (*ldv_3_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) = (int (*)(struct file * ,
            void * , struct v4l2_tuner * ))(& vidioc_s_tuner___0);
int (*ldv_3_callback_vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) = & vidioc_try_ext_ctrls___0;
int (*ldv_3_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & saa7164_vbi_fmt;
int (*ldv_3_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_cap___0;
void ldv_io_instance_callback_3_20(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  fops_poll___0(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_24(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_27(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_28(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_29(int (*arg0)(struct file * , void * , struct v4l2_control * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_control *arg3 )
{
  {
  {
  vidioc_g_ctrl___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_30(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 )
{
  {
  {
  vidioc_g_ext_ctrls___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_31(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  saa7164_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_32(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_33(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_g_frequency___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_34(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_37(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_40(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_g_tuner___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_41(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_42(int (*arg0)(struct file * , void * , struct v4l2_queryctrl * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_queryctrl *arg3 )
{
  {
  {
  vidioc_queryctrl___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_43(int (*arg0)(struct file * , void * , struct v4l2_control * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_control *arg3 )
{
  {
  {
  vidioc_s_ctrl___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_44(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 )
{
  {
  {
  vidioc_s_ext_ctrls___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_45(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  saa7164_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_46(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_47(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_s_frequency___0(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_48(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_51(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_54(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_s_tuner___0(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_55(int (*arg0)(struct file * , void * , struct v4l2_ext_controls * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_ext_controls *arg3 )
{
  {
  {
  vidioc_try_ext_ctrls___0(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  saa7164_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap___0(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_io_instance_probe_3_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = fops_open___0(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_3_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  fops_release___0(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_21___0(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_22___0(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27___5(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28___5(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_29___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_30___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_31___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_33___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_35___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_37___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_38___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(ldv_func_arg1);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_MUTEXES_devlist ;
void ldv_mutex_lock_devlist(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_devlist);
  LDV_MUTEXES_devlist = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_devlist(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_devlist);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_devlist = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_devlist(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_devlist) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_devlist(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_devlist);
  tmp = ldv_mutex_is_locked_devlist(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_devlist = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_devlist(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_devlist(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_devlist(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_devlist);
  LDV_MUTEXES_devlist = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_dmaqueue_lock_of_saa7164_port ;
void ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_dmaqueue_lock_of_saa7164_port);
  LDV_MUTEXES_dmaqueue_lock_of_saa7164_port = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_dmaqueue_lock_of_saa7164_port(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_dmaqueue_lock_of_saa7164_port);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_dmaqueue_lock_of_saa7164_port = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_dmaqueue_lock_of_saa7164_port(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_dmaqueue_lock_of_saa7164_port) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_dmaqueue_lock_of_saa7164_port(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_dmaqueue_lock_of_saa7164_port);
  tmp = ldv_mutex_is_locked_dmaqueue_lock_of_saa7164_port(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_dmaqueue_lock_of_saa7164_port = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_dmaqueue_lock_of_saa7164_port(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_dmaqueue_lock_of_saa7164_port(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_dmaqueue_lock_of_saa7164_port(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_dmaqueue_lock_of_saa7164_port);
  LDV_MUTEXES_dmaqueue_lock_of_saa7164_port = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_cmd ;
void ldv_mutex_lock_lock_of_cmd(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_cmd);
  LDV_MUTEXES_lock_of_cmd = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_cmd(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_cmd);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_cmd = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_cmd(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_cmd) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_cmd(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_cmd);
  tmp = ldv_mutex_is_locked_lock_of_cmd(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_cmd = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_cmd(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_cmd(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_cmd(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_cmd);
  LDV_MUTEXES_lock_of_cmd = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_saa7164_dev ;
void ldv_mutex_lock_lock_of_saa7164_dev(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_saa7164_dev);
  LDV_MUTEXES_lock_of_saa7164_dev = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_saa7164_dev(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_saa7164_dev);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_saa7164_dev = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_saa7164_dev(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_saa7164_dev) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_saa7164_dev(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_saa7164_dev);
  tmp = ldv_mutex_is_locked_lock_of_saa7164_dev(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_saa7164_dev = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_saa7164_dev(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_saa7164_dev(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_saa7164_dev(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_saa7164_dev);
  LDV_MUTEXES_lock_of_saa7164_dev = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_saa7164_dvb ;
void ldv_mutex_lock_lock_of_saa7164_dvb(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_saa7164_dvb);
  LDV_MUTEXES_lock_of_saa7164_dvb = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_saa7164_dvb(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_saa7164_dvb);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_saa7164_dvb = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_saa7164_dvb(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_saa7164_dvb) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_saa7164_dvb(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_saa7164_dvb);
  tmp = ldv_mutex_is_locked_lock_of_saa7164_dvb(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_saa7164_dvb = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_saa7164_dvb(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_saa7164_dvb(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_saa7164_dvb(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_saa7164_dvb);
  LDV_MUTEXES_lock_of_saa7164_dvb = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_tmComResBusInfo ;
void ldv_mutex_lock_lock_of_tmComResBusInfo(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_tmComResBusInfo);
  LDV_MUTEXES_lock_of_tmComResBusInfo = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_tmComResBusInfo(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_tmComResBusInfo);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_tmComResBusInfo = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_tmComResBusInfo(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_tmComResBusInfo) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_tmComResBusInfo(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_tmComResBusInfo);
  tmp = ldv_mutex_is_locked_lock_of_tmComResBusInfo(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_tmComResBusInfo = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_tmComResBusInfo(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_tmComResBusInfo(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_tmComResBusInfo(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_tmComResBusInfo);
  LDV_MUTEXES_lock_of_tmComResBusInfo = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_vb_lock_of_videobuf_queue ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_vb_lock_of_videobuf_queue) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_mutex_is_locked_vb_lock_of_videobuf_queue(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_vb_lock_of_videobuf_queue(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_devlist = 0;
  LDV_MUTEXES_dmaqueue_lock_of_saa7164_port = 0;
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_cmd = 0;
  LDV_MUTEXES_lock_of_saa7164_dev = 0;
  LDV_MUTEXES_lock_of_saa7164_dvb = 0;
  LDV_MUTEXES_lock_of_tmComResBusInfo = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_devlist);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_dmaqueue_lock_of_saa7164_port);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_cmd);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_saa7164_dev);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_saa7164_dvb);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_tmComResBusInfo);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_to_user_overflow() {
  return;
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void *__symbol_get(const char *arg0) {
  return ldv_malloc(0UL);
}
void __symbol_put(const char *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_check_no_locks_held() {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
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
void dvb_frontend_detach(struct dvb_frontend *arg0) {
  return;
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
int dvb_register_frontend(struct dvb_adapter *arg0, struct dvb_frontend *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_adapter(struct dvb_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
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
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_query_fill(struct v4l2_queryctrl *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
