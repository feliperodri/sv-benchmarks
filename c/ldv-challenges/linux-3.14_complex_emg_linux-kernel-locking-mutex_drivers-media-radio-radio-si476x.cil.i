struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
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
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
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
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
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
struct pdev_archdata {
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
typedef unsigned long kernel_ulong_t;
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
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_137 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_136 {
   struct __anonstruct____missing_field_name_137 __annonCompField33 ;
};
struct lockref {
   union __anonunion____missing_field_name_136 __annonCompField34 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_139 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_138 __annonCompField36 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_140 {
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
   union __anonunion_d_u_140 d_u ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
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
struct __anonstruct_kprojid_t_142 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_142 kprojid_t;
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
union __anonunion____missing_field_name_143 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_143 __annonCompField37 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_145 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_144 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_145 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_144 read_descriptor_t;
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
union __anonunion____missing_field_name_146 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_147 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_148 {
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
   union __anonunion____missing_field_name_146 __annonCompField38 ;
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
   union __anonunion____missing_field_name_147 __annonCompField39 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_148 __annonCompField40 ;
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
union __anonunion_f_u_149 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_149 f_u ;
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
struct __anonstruct_afs_151 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_150 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_151 afs ;
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
   union __anonunion_fl_u_150 fl_u ;
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
struct __anonstruct____missing_field_name_154 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_155 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField42 ;
   struct __anonstruct____missing_field_name_155 __annonCompField43 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_153 __annonCompField44 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_156 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_158 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_162 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_161 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_162 __annonCompField47 ;
   int units ;
};
struct __anonstruct____missing_field_name_160 {
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_159 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_160 __annonCompField49 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   union __anonunion____missing_field_name_159 __annonCompField50 ;
};
struct __anonstruct____missing_field_name_164 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_163 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_164 __annonCompField52 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_165 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_156 __annonCompField45 ;
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
   union __anonunion____missing_field_name_163 __annonCompField53 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_167 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_166 {
   struct __anonstruct_linear_167 linear ;
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
   union __anonunion_shared_166 shared ;
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
struct user_struct;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
struct nsproxy;
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
union __anonunion____missing_field_name_176 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_176 __annonCompField58 ;
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
struct __anonstruct____missing_field_name_178 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_179 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_177 {
   struct __anonstruct____missing_field_name_178 __annonCompField59 ;
   struct __anonstruct____missing_field_name_179 __annonCompField60 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_177 __annonCompField61 ;
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
union __anonunion____missing_field_name_180 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_180 __annonCompField62 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_181 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_181 __annonCompField63 ;
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
union __anonunion_m_182 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_182 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_183 {
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
   union __anonunion_m_183 m ;
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
union __anonunion____missing_field_name_184 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_184 __annonCompField64 ;
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
union __anonunion____missing_field_name_185 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_185 __annonCompField65 ;
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
union __anonunion____missing_field_name_186 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_186 __annonCompField66 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
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
union __anonunion____missing_field_name_187 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_187 __annonCompField67 ;
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
struct v4l2_rds_data {
   __u8 lsb ;
   __u8 msb ;
   __u8 block ;
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
struct __anonstruct_raw_189 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_188 {
   struct __anonstruct_raw_189 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_188 __annonCompField68 ;
};
struct __anonstruct_stop_191 {
   __u64 pts ;
};
struct __anonstruct_start_192 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_193 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_190 {
   struct __anonstruct_stop_191 stop ;
   struct __anonstruct_start_192 start ;
   struct __anonstruct_raw_193 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_190 __annonCompField69 ;
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
union __anonunion_fmt_195 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_195 fmt ;
};
union __anonunion_parm_196 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_196 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_199 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_199 __annonCompField72 ;
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
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
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
struct __anonstruct_v4l_206 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_207 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_208 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_205 {
   struct __anonstruct_v4l_206 v4l ;
   struct __anonstruct_fb_207 fb ;
   struct __anonstruct_alsa_208 alsa ;
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
   union __anonunion_info_205 info ;
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
struct i2c_adapter;
struct i2c_client;
struct v4l2_subdev;
struct v4l2_subdev_ops;
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
struct __anonstruct_sigset_t_210 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_210 sigset_t;
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
struct __anonstruct__kill_212 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_213 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_214 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_215 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_216 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_217 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_218 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_211 {
   int _pad[28U] ;
   struct __anonstruct__kill_212 _kill ;
   struct __anonstruct__timer_213 _timer ;
   struct __anonstruct__rt_214 _rt ;
   struct __anonstruct__sigchld_215 _sigchld ;
   struct __anonstruct__sigfault_216 _sigfault ;
   struct __anonstruct__sigpoll_217 _sigpoll ;
   struct __anonstruct__sigsys_218 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_211 _sifields ;
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
union __anonunion____missing_field_name_221 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_222 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_224 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_223 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_224 __annonCompField76 ;
};
union __anonunion_type_data_225 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_227 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_226 {
   union __anonunion_payload_227 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_221 __annonCompField74 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_222 __annonCompField75 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_223 __annonCompField77 ;
   union __anonunion_type_data_225 type_data ;
   union __anonunion____missing_field_name_226 __annonCompField78 ;
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
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_229 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_230 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_231 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_232 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_229 __annonCompField80 ;
   union __anonunion____missing_field_name_230 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_231 cur ;
   union __anonunion____missing_field_name_232 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct v4l2_ctrl_config {
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 min ;
   s32 max ;
   u32 step ;
   s32 def ;
   u32 flags ;
   u32 menu_skip_mask ;
   char const * const *qmenu ;
   s64 const *qmenu_int ;
   unsigned int is_private : 1 ;
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
struct __anonstruct_of_234 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_235 {
   char const *name ;
};
struct __anonstruct_i2c_236 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_237 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_233 {
   struct __anonstruct_of_234 of ;
   struct __anonstruct_device_name_235 device_name ;
   struct __anonstruct_i2c_236 i2c ;
   struct __anonstruct_custom_237 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_233 match ;
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
struct tuner_setup;
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
struct __anonstruct_pad_238 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_238 *pad ;
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
struct si476x_rsq_status_report {
   __u8 multhint ;
   __u8 multlint ;
   __u8 snrhint ;
   __u8 snrlint ;
   __u8 rssihint ;
   __u8 rssilint ;
   __u8 bltf ;
   __u8 snr_ready ;
   __u8 rssiready ;
   __u8 injside ;
   __u8 afcrl ;
   __u8 valid ;
   __u16 readfreq ;
   __s8 freqoff ;
   __s8 rssi ;
   __s8 snr ;
   __s8 issi ;
   __s8 lassi ;
   __s8 hassi ;
   __s8 mult ;
   __u8 dev ;
   __u16 readantcap ;
   __s8 assi ;
   __s8 usn ;
   __u8 pilotdev ;
   __u8 rdsdev ;
   __u8 assidev ;
   __u8 strongdev ;
   __u16 rdspi ;
};
struct si476x_acf_status_report {
   __u8 blend_int ;
   __u8 hblend_int ;
   __u8 hicut_int ;
   __u8 chbw_int ;
   __u8 softmute_int ;
   __u8 smute ;
   __u8 smattn ;
   __u8 chbw ;
   __u8 hicut ;
   __u8 hiblend ;
   __u8 pilot ;
   __u8 stblend ;
};
struct si476x_agc_status_report {
   __u8 mxhi ;
   __u8 mxlo ;
   __u8 lnahi ;
   __u8 lnalo ;
   __u8 fmagc1 ;
   __u8 fmagc2 ;
   __u8 pgagain ;
   __u8 fmwblang ;
};
struct si476x_rds_blockcount_report {
   __u16 expected ;
   __u16 received ;
   __u16 uncorrectable ;
};
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_239 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   unsigned char const *const_type ;
   char (*rectype)[0U] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_239 __annonCompField83 ;
   unsigned char buf[0U] ;
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
struct regmap;
struct mfd_cell {
   char const *name ;
   int id ;
   atomic_t *usage_count ;
   int (*enable)(struct platform_device * ) ;
   int (*disable)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * ) ;
   int (*resume)(struct platform_device * ) ;
   void *platform_data ;
   size_t pdata_size ;
   char const *of_compatible ;
   int num_resources ;
   struct resource const *resources ;
   bool ignore_resource_conflicts ;
   bool pm_runtime_no_callbacks ;
   char const **parent_supplies ;
   int num_parent_supplies ;
};
struct regulator;
struct regulator_bulk_data {
   char const *supply ;
   struct regulator *consumer ;
   int ret ;
};
enum si476x_iqclk_config {
    SI476X_IQCLK_NOOP = 0,
    SI476X_IQCLK_TRISTATE = 1,
    SI476X_IQCLK_IQ = 21
} ;
enum si476x_iqfs_config {
    SI476X_IQFS_NOOP = 0,
    SI476X_IQFS_TRISTATE = 1,
    SI476X_IQFS_IQ = 21
} ;
enum si476x_iout_config {
    SI476X_IOUT_NOOP = 0,
    SI476X_IOUT_TRISTATE = 1,
    SI476X_IOUT_OUTPUT = 22
} ;
enum si476x_qout_config {
    SI476X_QOUT_NOOP = 0,
    SI476X_QOUT_TRISTATE = 1,
    SI476X_QOUT_OUTPUT = 22
} ;
enum si476x_dclk_config {
    SI476X_DCLK_NOOP = 0,
    SI476X_DCLK_TRISTATE = 1,
    SI476X_DCLK_DAUDIO = 10
} ;
enum si476x_dfs_config {
    SI476X_DFS_NOOP = 0,
    SI476X_DFS_TRISTATE = 1,
    SI476X_DFS_DAUDIO = 10
} ;
enum si476x_dout_config {
    SI476X_DOUT_NOOP = 0,
    SI476X_DOUT_TRISTATE = 1,
    SI476X_DOUT_I2S_OUTPUT = 12,
    SI476X_DOUT_I2S_INPUT = 13
} ;
enum si476x_xout_config {
    SI476X_XOUT_NOOP = 0,
    SI476X_XOUT_TRISTATE = 1,
    SI476X_XOUT_I2S_INPUT = 13,
    SI476X_XOUT_MODE_SELECT = 23
} ;
enum si476x_icin_config {
    SI476X_ICIN_NOOP = 0,
    SI476X_ICIN_TRISTATE = 1,
    SI476X_ICIN_GPO1_HIGH = 2,
    SI476X_ICIN_GPO1_LOW = 3,
    SI476X_ICIN_IC_LINK = 30
} ;
enum si476x_icip_config {
    SI476X_ICIP_NOOP = 0,
    SI476X_ICIP_TRISTATE = 1,
    SI476X_ICIP_GPO2_HIGH = 2,
    SI476X_ICIP_GPO2_LOW = 3,
    SI476X_ICIP_IC_LINK = 30
} ;
enum si476x_icon_config {
    SI476X_ICON_NOOP = 0,
    SI476X_ICON_TRISTATE = 1,
    SI476X_ICON_I2S = 10,
    SI476X_ICON_IC_LINK = 30
} ;
enum si476x_icop_config {
    SI476X_ICOP_NOOP = 0,
    SI476X_ICOP_TRISTATE = 1,
    SI476X_ICOP_I2S = 10,
    SI476X_ICOP_IC_LINK = 30
} ;
enum si476x_lrout_config {
    SI476X_LROUT_NOOP = 0,
    SI476X_LROUT_TRISTATE = 1,
    SI476X_LROUT_AUDIO = 2,
    SI476X_LROUT_MPX = 3
} ;
enum si476x_intb_config {
    SI476X_INTB_NOOP = 0,
    SI476X_INTB_TRISTATE = 1,
    SI476X_INTB_DAUDIO = 10,
    SI476X_INTB_IRQ = 40
} ;
enum si476x_a1_config {
    SI476X_A1_NOOP = 0,
    SI476X_A1_TRISTATE = 1,
    SI476X_A1_IRQ = 40
} ;
struct si476x_pinmux {
   enum si476x_dclk_config dclk ;
   enum si476x_dfs_config dfs ;
   enum si476x_dout_config dout ;
   enum si476x_xout_config xout ;
   enum si476x_iqclk_config iqclk ;
   enum si476x_iqfs_config iqfs ;
   enum si476x_iout_config iout ;
   enum si476x_qout_config qout ;
   enum si476x_icin_config icin ;
   enum si476x_icip_config icip ;
   enum si476x_icon_config icon ;
   enum si476x_icop_config icop ;
   enum si476x_lrout_config lrout ;
   enum si476x_intb_config intb ;
   enum si476x_a1_config a1 ;
};
enum si476x_ibias6x {
    SI476X_IBIAS6X_OTHER = 0,
    SI476X_IBIAS6X_RCVR1_NON_4MHZ_CLK = 1
} ;
enum si476x_xstart {
    SI476X_XSTART_MULTIPLE_TUNER = 17,
    SI476X_XSTART_NORMAL = 119
} ;
enum si476x_freq {
    SI476X_FREQ_4_MHZ = 0,
    SI476X_FREQ_37P209375_MHZ = 1,
    SI476X_FREQ_36P4_MHZ = 2,
    SI476X_FREQ_37P8_MHZ = 3
} ;
enum si476x_xmode {
    SI476X_XMODE_CRYSTAL_RCVR1 = 1,
    SI476X_XMODE_EXT_CLOCK = 2,
    SI476X_XMODE_CRYSTAL_RCVR2_3 = 3
} ;
enum si476x_xbiashc {
    SI476X_XBIASHC_SINGLE_RECEIVER = 0,
    SI476X_XBIASHC_MULTIPLE_RECEIVER = 1
} ;
enum si476x_xbias {
    SI476X_XBIAS_RCVR2_3 = 0,
    SI476X_XBIAS_4MHZ_RCVR1 = 3,
    SI476X_XBIAS_RCVR1 = 7
} ;
enum si476x_func {
    SI476X_FUNC_BOOTLOADER = 0,
    SI476X_FUNC_FM_RECEIVER = 1,
    SI476X_FUNC_AM_RECEIVER = 2,
    SI476X_FUNC_WB_RECEIVER = 3
} ;
struct si476x_power_up_args {
   enum si476x_ibias6x ibias6x ;
   enum si476x_xstart xstart ;
   u8 xcload ;
   bool fastboot ;
   enum si476x_xbiashc xbiashc ;
   enum si476x_xbias xbias ;
   enum si476x_func func ;
   enum si476x_freq freq ;
   enum si476x_xmode xmode ;
};
enum si476x_phase_diversity_mode {
    SI476X_PHDIV_DISABLED = 0,
    SI476X_PHDIV_PRIMARY_COMBINING = 1,
    SI476X_PHDIV_PRIMARY_ANTENNA = 2,
    SI476X_PHDIV_SECONDARY_ANTENNA = 3,
    SI476X_PHDIV_SECONDARY_COMBINING = 5
} ;
enum si476x_power_state {
    SI476X_POWER_DOWN = 0,
    SI476X_POWER_UP_FULL = 1,
    SI476X_POWER_INCONSISTENT = 2
} ;
struct si476x_core {
   struct i2c_client *client ;
   struct regmap *regmap ;
   int chip_id ;
   struct mfd_cell cells[2U] ;
   struct mutex cmd_lock ;
   atomic_t users ;
   wait_queue_head_t rds_read_queue ;
   struct kfifo rds_fifo ;
   struct work_struct rds_fifo_drainer ;
   bool rds_drainer_is_working ;
   struct mutex rds_drainer_status_lock ;
   wait_queue_head_t command ;
   atomic_t cts ;
   wait_queue_head_t tuning ;
   atomic_t stc ;
   struct si476x_power_up_args power_up_parameters ;
   enum si476x_power_state power_state ;
   struct regulator_bulk_data supplies[4U] ;
   int gpio_reset ;
   struct si476x_pinmux pinmux ;
   enum si476x_phase_diversity_mode diversity_mode ;
   atomic_t is_alive ;
   struct delayed_work status_monitor ;
   int revision ;
   int rds_fifo_depth ;
};
enum si476x_tunemode {
    SI476X_TM_VALIDATED_NORMAL_TUNE = 0,
    SI476X_TM_INVALIDATED_FAST_TUNE = 1,
    SI476X_TM_VALIDATED_AF_TUNE = 2,
    SI476X_TM_VALIDATED_AF_CHECK = 3
} ;
enum si476x_smoothmetrics {
    SI476X_SM_INITIALIZE_AUDIO = 0,
    SI476X_SM_TRANSITION_AUDIO = 1
} ;
struct si476x_rds_status_report {
   bool rdstpptyint ;
   bool rdspiint ;
   bool rdssyncint ;
   bool rdsfifoint ;
   bool tpptyvalid ;
   bool pivalid ;
   bool rdssync ;
   bool rdsfifolost ;
   bool tp ;
   u8 pty ;
   u16 pi ;
   u8 rdsfifoused ;
   u8 ble[4U] ;
   struct v4l2_rds_data rds[4U] ;
};
struct si476x_rsq_status_args {
   bool primary ;
   bool rsqack ;
   bool attune ;
   bool cancel ;
   bool stcack ;
};
enum si476x_injside {
    SI476X_INJSIDE_AUTO = 0,
    SI476X_INJSIDE_LOW = 1,
    SI476X_INJSIDE_HIGH = 2
} ;
struct si476x_tune_freq_args {
   bool zifsr ;
   bool hd ;
   enum si476x_injside injside ;
   int freq ;
   enum si476x_tunemode tunemode ;
   enum si476x_smoothmetrics smoothmetrics ;
   int antcap ;
};
enum phase_diversity_modes_idx {
    SI476X_IDX_PHDIV_DISABLED = 0,
    SI476X_IDX_PHDIV_PRIMARY_COMBINING = 1,
    SI476X_IDX_PHDIV_PRIMARY_ANTENNA = 2,
    SI476X_IDX_PHDIV_SECONDARY_ANTENNA = 3,
    SI476X_IDX_PHDIV_SECONDARY_COMBINING = 4
} ;
enum si476x_ctrl_idx {
    SI476X_IDX_RSSI_THRESHOLD = 0,
    SI476X_IDX_SNR_THRESHOLD = 1,
    SI476X_IDX_MAX_TUNE_ERROR = 2,
    SI476X_IDX_HARMONICS_COUNT = 3,
    SI476X_IDX_DIVERSITY_MODE = 4,
    SI476X_IDX_INTERCHIP_LINK = 5
} ;
struct si476x_radio;
struct si476x_radio_ops {
   int (*tune_freq)(struct si476x_core * , struct si476x_tune_freq_args * ) ;
   int (*seek_start)(struct si476x_core * , bool , bool ) ;
   int (*rsq_status)(struct si476x_core * , struct si476x_rsq_status_args * , struct si476x_rsq_status_report * ) ;
   int (*rds_blckcnt)(struct si476x_core * , bool , struct si476x_rds_blockcount_report * ) ;
   int (*phase_diversity)(struct si476x_core * , enum si476x_phase_diversity_mode ) ;
   int (*phase_div_status)(struct si476x_core * ) ;
   int (*acf_status)(struct si476x_core * , struct si476x_acf_status_report * ) ;
   int (*agc_status)(struct si476x_core * , struct si476x_agc_status_report * ) ;
};
struct si476x_radio {
   struct v4l2_device v4l2dev ;
   struct video_device videodev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct si476x_core *core ;
   struct si476x_radio_ops const *ops ;
   struct dentry *debugfs ;
   u32 audmode ;
};
typedef int ldv_func_ret_type;
struct device_private {
   void *driver_data ;
};
typedef u64 dma_addr_t;
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
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
static void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cmd_lock_of_si476x_core(struct mutex *lock ) ;
void ldv_mutex_unlock_cmd_lock_of_si476x_core(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
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
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  }
  return (tmp);
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
static void *ldv_dev_get_drvdata_10(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_15(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_23(struct device const *dev ) ;
static int ldv_dev_set_drvdata_11(struct device *dev , void *data ) ;
static int ldv_dev_set_drvdata_16(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_29(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_30(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_10(& pdev->dev);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_11(& pdev->dev, data);
  }
  return;
}
}
extern loff_t default_llseek(struct file * , loff_t , int ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
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
extern void video_device_release_empty(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_15((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_16(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  }
  return (tmp___0);
}
}
extern void schedule(void) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler * , struct v4l2_ctrl_config const * ,
                                              void * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                                u32 , s32 , s32 , s32 ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern int v4l2_fh_open(struct file * ) ;
extern int v4l2_fh_release(struct file * ) ;
extern int v4l2_fh_is_singular(struct v4l2_fh * ) ;
__inline static int v4l2_fh_is_singular_file(struct file *filp )
{
  int tmp ;
  {
  {
  tmp = v4l2_fh_is_singular((struct v4l2_fh *)filp->private_data);
  }
  return (tmp);
}
}
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern int v4l2_device_set_name(struct v4l2_device * , char const * , atomic_t * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
__inline static unsigned int __kfifo_uint_must_check_helper(unsigned int val )
{
  {
  return (val);
}
}
extern int __kfifo_to_user(struct __kfifo * , void * , unsigned long , unsigned int * ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_23(& dev->dev);
  }
  return (tmp);
}
}
extern int regmap_write(struct regmap * , unsigned int , unsigned int ) ;
extern int regmap_read(struct regmap * , unsigned int , unsigned int * ) ;
extern int regmap_update_bits(struct regmap * , unsigned int , unsigned int , unsigned int ) ;
extern int regcache_sync_region(struct regmap * , unsigned int , unsigned int ) ;
extern void regcache_cache_only(struct regmap * , bool ) ;
__inline static struct si476x_core *i2c_mfd_cell_to_core(struct device *dev )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  void *tmp ;
  {
  {
  __mptr = (struct device const *)dev->parent;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  }
  return ((struct si476x_core *)tmp);
}
}
__inline static void si476x_core_lock(struct si476x_core *core )
{
  {
  {
  ldv_mutex_lock_27(& core->cmd_lock);
  }
  return;
}
}
__inline static void si476x_core_unlock(struct si476x_core *core )
{
  {
  {
  ldv_mutex_unlock_28(& core->cmd_lock);
  }
  return;
}
}
__inline static u16 hz_to_si476x(struct si476x_core *core , int freq )
{
  u16 result ;
  {
  {
  if ((unsigned int )core->power_up_parameters.func == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )core->power_up_parameters.func == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_1:
  result = (u16 )(freq / 10000);
  goto ldv_34200;
  case_2:
  result = (u16 )(freq / 1000);
  goto ldv_34200;
  switch_break: ;
  }
  ldv_34200: ;
  return (result);
}
}
__inline static int si476x_to_hz(struct si476x_core *core , u16 freq )
{
  int result ;
  {
  {
  if ((unsigned int )core->power_up_parameters.func == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )core->power_up_parameters.func == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_1:
  result = (int )freq * 10000;
  goto ldv_34209;
  case_2:
  result = (int )freq * 1000;
  goto ldv_34209;
  switch_break: ;
  }
  ldv_34209: ;
  return (result);
}
}
__inline static int hz_to_v4l2(int freq )
{
  {
  return ((freq * 10) / 625);
}
}
__inline static int v4l2_to_hz(int freq )
{
  {
  return ((freq * 625) / 10);
}
}
__inline static u16 v4l2_to_si476x(struct si476x_core *core , int freq )
{
  int tmp ;
  u16 tmp___0 ;
  {
  {
  tmp = v4l2_to_hz(freq);
  tmp___0 = hz_to_si476x(core, tmp);
  }
  return (tmp___0);
}
}
__inline static int si476x_to_v4l2(struct si476x_core *core , u16 freq )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = si476x_to_hz(core, (int )freq);
  tmp___0 = hz_to_v4l2(tmp);
  }
  return (tmp___0);
}
}
extern int si476x_core_stop(struct si476x_core * , bool ) ;
extern int si476x_core_start(struct si476x_core * , bool ) ;
extern int si476x_core_set_power_state(struct si476x_core * , enum si476x_power_state ) ;
extern bool si476x_core_has_am(struct si476x_core * ) ;
extern bool si476x_core_has_diversity(struct si476x_core * ) ;
extern bool si476x_core_is_a_secondary_tuner(struct si476x_core * ) ;
extern bool si476x_core_is_a_primary_tuner(struct si476x_core * ) ;
extern bool si476x_core_is_in_am_receiver_mode(struct si476x_core * ) ;
extern int si476x_core_cmd_fm_seek_start(struct si476x_core * , bool , bool ) ;
extern int si476x_core_cmd_am_seek_start(struct si476x_core * , bool , bool ) ;
extern int si476x_core_cmd_fm_rds_status(struct si476x_core * , bool , bool , bool ,
                                         struct si476x_rds_status_report * ) ;
extern int si476x_core_cmd_fm_rds_blockcount(struct si476x_core * , bool , struct si476x_rds_blockcount_report * ) ;
extern int si476x_core_cmd_fm_tune_freq(struct si476x_core * , struct si476x_tune_freq_args * ) ;
extern int si476x_core_cmd_am_tune_freq(struct si476x_core * , struct si476x_tune_freq_args * ) ;
extern int si476x_core_cmd_am_rsq_status(struct si476x_core * , struct si476x_rsq_status_args * ,
                                         struct si476x_rsq_status_report * ) ;
extern int si476x_core_cmd_fm_rsq_status(struct si476x_core * , struct si476x_rsq_status_args * ,
                                         struct si476x_rsq_status_report * ) ;
extern int si476x_core_cmd_fm_phase_div_status(struct si476x_core * ) ;
extern int si476x_core_cmd_fm_phase_diversity(struct si476x_core * , enum si476x_phase_diversity_mode ) ;
extern int si476x_core_cmd_fm_acf_status(struct si476x_core * , struct si476x_acf_status_report * ) ;
extern int si476x_core_cmd_am_acf_status(struct si476x_core * , struct si476x_acf_status_report * ) ;
extern int si476x_core_cmd_agc_status(struct si476x_core * , struct si476x_agc_status_report * ) ;
static struct v4l2_frequency_band const si476x_bands[2U] = { {0U, 1U, 0U, 1425U, 1024000U, 1728000U, 4U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                                                  0U}},
        {0U, 1U, 1U, 1025U, 8320U, 480000U, 8U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
__inline static bool si476x_radio_freq_is_inside_of_the_band(u32 freq , int band )
{
  {
  return ((bool )(freq >= (u32 )si476x_bands[band].rangelow && freq <= (u32 )si476x_bands[band].rangehigh));
}
}
__inline static bool si476x_radio_range_is_inside_of_the_band(u32 low , u32 high ,
                                                              int band )
{
  {
  return ((bool )(low >= (u32 )si476x_bands[band].rangelow && high <= (u32 )si476x_bands[band].rangehigh));
}
}
static int si476x_radio_s_ctrl(struct v4l2_ctrl *ctrl ) ;
static int si476x_radio_g_volatile_ctrl(struct v4l2_ctrl *ctrl ) ;
static char const * const phase_diversity_modes[5U] = { "Disabled", "Primary with Secondary", "Primary Antenna", "Secondary Antenna",
        "Secondary with Primary"};
__inline static enum phase_diversity_modes_idx si476x_phase_diversity_mode_to_idx(enum si476x_phase_diversity_mode mode )
{
  {
  {
  if ((unsigned int )mode == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )mode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )mode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )mode == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )mode == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0: ;
  return (0);
  case_1: ;
  return (1);
  case_2: ;
  return (2);
  case_3: ;
  return (3);
  case_5: ;
  return (4);
  switch_break: ;
  }
}
}
__inline static enum si476x_phase_diversity_mode si476x_phase_diversity_idx_to_mode(enum phase_diversity_modes_idx idx )
{
  int idx_to_value[5U] ;
  {
  idx_to_value[0] = 0;
  idx_to_value[1] = 1;
  idx_to_value[2] = 2;
  idx_to_value[3] = 3;
  idx_to_value[4] = 5;
  return ((enum si476x_phase_diversity_mode )idx_to_value[(unsigned int )idx]);
}
}
static struct v4l2_ctrl_ops const si476x_ctrl_ops = {& si476x_radio_g_volatile_ctrl, 0, & si476x_radio_s_ctrl};
static struct v4l2_ctrl_config si476x_ctrls[6U] = { {& si476x_ctrl_ops, 9967937U, "Valid RSSI Threshold", 1, -128, 127, 1U, 0, 0U,
      0U, 0, 0, 0U},
        {& si476x_ctrl_ops, 9967938U, "Valid SNR Threshold", 1, -128, 127, 1U, 0, 0U,
      0U, 0, 0, 0U},
        {& si476x_ctrl_ops, 9967939U, "Max Tune Errors", 1, 0, 252, 2U, 0, 0U, 0U, 0,
      0, 0U},
        {& si476x_ctrl_ops, 9967940U, "Count of Harmonics to Reject", 1, 0, 20, 1U, 0,
      0U, 0U, 0, 0, 0U},
        {& si476x_ctrl_ops, 9967941U, "Phase Diversity Mode", 3, 0, 4, 0U, 0, 0U, 0U,
      (char const * const *)(& phase_diversity_modes), 0, 0U},
        {& si476x_ctrl_ops, 9967942U, "Inter-Chip Link", 2, 0, 1, 1U, 0, 132U, 0U, 0,
      0, 0U}};
__inline static struct si476x_radio *v4l2_ctrl_handler_to_radio(struct v4l2_ctrl_handler *d )
{
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)d;
  return ((struct si476x_radio *)__mptr + 0xfffffffffffff788UL);
}
}
static int si476x_radio_querycap(struct file *file , void *priv , struct v4l2_capability *capability )
{
  struct si476x_radio *radio ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  strlcpy((char *)(& capability->driver), (char const *)(& radio->v4l2dev.name),
          16UL);
  strlcpy((char *)(& capability->card), "SI476x AM/FM Receiver", 32UL);
  snprintf((char *)(& capability->bus_info), 32UL, "platform:%s", (char *)(& radio->v4l2dev.name));
  capability->device_caps = 328704U;
  si476x_core_lock(radio->core);
  tmp___0 = si476x_core_is_a_secondary_tuner(radio->core);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    capability->device_caps = capability->device_caps | 16777472U;
  } else {
  }
  {
  si476x_core_unlock(radio->core);
  capability->capabilities = capability->device_caps | 2147483648U;
  }
  return (0);
}
}
static int si476x_radio_enum_freq_bands(struct file *file , void *priv , struct v4l2_frequency_band *band )
{
  int err ;
  struct si476x_radio *radio ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  }
  if (band->tuner != 0U) {
    return (-22);
  } else {
  }
  {
  if ((radio->core)->chip_id == 1) {
    goto case_1;
  } else {
  }
  if ((radio->core)->chip_id == 2) {
    goto case_2;
  } else {
  }
  if ((radio->core)->chip_id == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2: ;
  if (band->index <= 1U) {
    *band = si476x_bands[band->index];
    err = 0;
  } else {
    err = -22;
  }
  goto ldv_34558;
  case_3: ;
  if (band->index == 0U) {
    *band = si476x_bands[band->index];
    err = 0;
  } else {
    err = -22;
  }
  goto ldv_34558;
  switch_default:
  err = -22;
  switch_break: ;
  }
  ldv_34558: ;
  return (err);
}
}
static int si476x_radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *tuner )
{
  int err ;
  struct si476x_rsq_status_report report ;
  struct si476x_radio *radio ;
  void *tmp ;
  struct si476x_rsq_status_args args ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  args.primary = 0;
  args.rsqack = 0;
  args.attune = 0;
  args.cancel = 0;
  args.stcack = 0;
  }
  if (tuner->index != 0U) {
    return (-22);
  } else {
  }
  {
  tuner->type = 1U;
  tuner->capability = 2077U;
  si476x_core_lock(radio->core);
  tmp___2 = si476x_core_is_a_secondary_tuner(radio->core);
  }
  if ((int )tmp___2) {
    {
    strlcpy((char *)(& tuner->name), "FM (secondary)", 32UL);
    tuner->rxsubchans = 0U;
    tuner->rangelow = si476x_bands[0].rangelow;
    }
  } else {
    {
    tmp___1 = si476x_core_has_am(radio->core);
    }
    if ((int )tmp___1) {
      {
      tmp___0 = si476x_core_is_a_primary_tuner(radio->core);
      }
      if ((int )tmp___0) {
        {
        strlcpy((char *)(& tuner->name), "AM/FM (primary)", 32UL);
        }
      } else {
        {
        strlcpy((char *)(& tuner->name), "AM/FM", 32UL);
        }
      }
      tuner->rxsubchans = 19U;
      tuner->capability = tuner->capability | 1408U;
      tuner->rangelow = si476x_bands[1].rangelow;
    } else {
      {
      strlcpy((char *)(& tuner->name), "FM", 32UL);
      tuner->rxsubchans = 16U;
      tuner->capability = tuner->capability | 1408U;
      tuner->rangelow = si476x_bands[0].rangelow;
      }
    }
  }
  {
  tuner->audmode = radio->audmode;
  tuner->afc = 1;
  tuner->rangehigh = si476x_bands[0].rangehigh;
  err = (*((radio->ops)->rsq_status))(radio->core, & args, & report);
  }
  if (err < 0) {
    tuner->signal = 0;
  } else {
    tuner->signal = (int )report.rssi * 257 + 32896;
  }
  {
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *tuner )
{
  struct si476x_radio *radio ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  }
  if ((unsigned int )tuner->index != 0U) {
    return (-22);
  } else {
  }
  if (tuner->audmode <= 1U) {
    radio->audmode = tuner->audmode;
  } else {
    radio->audmode = 1U;
  }
  return (0);
}
}
static int si476x_radio_init_vtable(struct si476x_radio *radio , enum si476x_func func )
{
  struct si476x_radio_ops fm_ops ;
  struct si476x_radio_ops am_ops ;
  int __ret_warn_on ;
  long tmp ;
  {
  fm_ops.tune_freq = & si476x_core_cmd_fm_tune_freq;
  fm_ops.seek_start = & si476x_core_cmd_fm_seek_start;
  fm_ops.rsq_status = & si476x_core_cmd_fm_rsq_status;
  fm_ops.rds_blckcnt = & si476x_core_cmd_fm_rds_blockcount;
  fm_ops.phase_diversity = & si476x_core_cmd_fm_phase_diversity;
  fm_ops.phase_div_status = & si476x_core_cmd_fm_phase_div_status;
  fm_ops.acf_status = & si476x_core_cmd_fm_acf_status;
  fm_ops.agc_status = & si476x_core_cmd_agc_status;
  am_ops.tune_freq = & si476x_core_cmd_am_tune_freq;
  am_ops.seek_start = & si476x_core_cmd_am_seek_start;
  am_ops.rsq_status = & si476x_core_cmd_am_rsq_status;
  am_ops.rds_blckcnt = (int (*)(struct si476x_core * , bool , struct si476x_rds_blockcount_report * ))0;
  am_ops.phase_diversity = (int (*)(struct si476x_core * , enum si476x_phase_diversity_mode ))0;
  am_ops.phase_div_status = (int (*)(struct si476x_core * ))0;
  am_ops.acf_status = & si476x_core_cmd_am_acf_status;
  am_ops.agc_status = (int (*)(struct si476x_core * , struct si476x_agc_status_report * ))0;
  {
  if ((unsigned int )func == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )func == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  radio->ops = & fm_ops;
  return (0);
  case_2:
  radio->ops = & am_ops;
  return (0);
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("drivers/media/radio/radio-si476x.c", 525, "Unexpected tuner function value\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (-22);
  switch_break: ;
  }
}
}
static int si476x_radio_pretune(struct si476x_radio *radio , enum si476x_func func )
{
  int retval ;
  struct si476x_tune_freq_args args ;
  u16 tmp ;
  u16 tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  args.zifsr = 0;
  args.hd = 0;
  args.injside = 0;
  args.freq = 0;
  args.tunemode = 0;
  args.smoothmetrics = 0;
  args.antcap = 0;
  {
  if ((unsigned int )func == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )func == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = v4l2_to_si476x(radio->core, 1472000);
  args.freq = (int )tmp;
  retval = (*((radio->ops)->tune_freq))(radio->core, & args);
  }
  goto ldv_34594;
  case_2:
  {
  tmp___0 = v4l2_to_si476x(radio->core, 9600);
  args.freq = (int )tmp___0;
  retval = (*((radio->ops)->tune_freq))(radio->core, & args);
  }
  goto ldv_34594;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_fmt("drivers/media/radio/radio-si476x.c", 556, "Unexpected tuner function value\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  retval = -22;
  }
  switch_break: ;
  }
  ldv_34594: ;
  return (retval);
}
}
static int si476x_radio_do_post_powerup_init(struct si476x_radio *radio , enum si476x_func func )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  err = regcache_sync_region((radio->core)->regmap, 512U, 515U);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = regcache_sync_region((radio->core)->regmap, 770U, 771U);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = regcache_sync_region((radio->core)->regmap, 0U, 0U);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = regcache_sync_region((radio->core)->regmap, 8192U, 8192U);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = regcache_sync_region((radio->core)->regmap, 8195U, 8196U);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned int )func == 1U) {
    {
    tmp = si476x_core_has_diversity(radio->core);
    }
    if ((int )tmp) {
      {
      err = si476x_core_cmd_fm_phase_diversity(radio->core, (radio->core)->diversity_mode);
      }
      if (err < 0) {
        return (err);
      } else {
      }
    } else {
    }
    {
    err = regcache_sync_region((radio->core)->regmap, 16384U, 16386U);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  tmp___0 = si476x_radio_init_vtable(radio, func);
  }
  return (tmp___0);
}
}
static int si476x_radio_change_func(struct si476x_radio *radio , enum si476x_func func )
{
  int err ;
  bool soft ;
  int tmp ;
  {
  if ((unsigned int )func == (unsigned int )(radio->core)->power_up_parameters.func) {
    return (0);
  } else {
  }
  {
  soft = 1;
  err = si476x_core_stop(radio->core, (int )soft);
  }
  if (err < 0) {
    {
    soft = 0;
    err = si476x_core_stop(radio->core, (int )soft);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  (radio->core)->power_up_parameters.func = func;
  err = si476x_core_start(radio->core, (int )soft);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned int )func - 1U > 1U) {
    return (err);
  } else {
  }
  {
  tmp = si476x_radio_do_post_powerup_init(radio, func);
  }
  return (tmp);
}
}
static int si476x_radio_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  int err ;
  struct si476x_radio *radio ;
  void *tmp ;
  struct si476x_rsq_status_report report ;
  struct si476x_rsq_status_args args ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  }
  if (f->tuner != 0U || f->type != 1U) {
    return (-22);
  } else {
  }
  {
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->rsq_status != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                        struct si476x_rsq_status_args * ,
                                                                                        struct si476x_rsq_status_report * ))0)) {
    {
    args.primary = 0;
    args.rsqack = 0;
    args.attune = 1;
    args.cancel = 0;
    args.stcack = 0;
    err = (*((radio->ops)->rsq_status))(radio->core, & args, & report);
    }
    if (err == 0) {
      {
      tmp___0 = si476x_to_v4l2(radio->core, (int )report.readfreq);
      f->frequency = (__u32 )tmp___0;
      }
    } else {
    }
  } else {
    err = -22;
  }
  {
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  int err ;
  u32 freq ;
  struct si476x_tune_freq_args args ;
  struct si476x_radio *radio ;
  void *tmp ;
  u32 midrange ;
  int band ;
  enum si476x_func func ;
  u32 __val ;
  unsigned int __min ;
  unsigned int __max ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  u16 tmp___4 ;
  {
  {
  freq = f->frequency;
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  midrange = ((unsigned int )si476x_bands[1].rangehigh + (unsigned int )si476x_bands[0].rangelow) / 2U;
  band = freq <= midrange;
  func = band == 1 ? 2 : 1;
  }
  if ((unsigned int )f->tuner != 0U || (unsigned int )f->type != 1U) {
    return (-22);
  } else {
  }
  {
  si476x_core_lock(radio->core);
  __val = freq;
  __min = si476x_bands[band].rangelow;
  __max = si476x_bands[band].rangehigh;
  __val = __min > (unsigned int )((unsigned int const )__val) ? __min : (unsigned int const )__val;
  freq = __max < (unsigned int )((unsigned int const )__val) ? __max : (unsigned int const )__val;
  tmp___0 = si476x_radio_freq_is_inside_of_the_band(freq, 1);
  }
  if ((int )tmp___0) {
    {
    tmp___1 = si476x_core_has_am(radio->core);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      err = -22;
      goto unlock;
    } else {
      {
      tmp___3 = si476x_core_is_a_secondary_tuner(radio->core);
      }
      if ((int )tmp___3) {
        err = -22;
        goto unlock;
      } else {
      }
    }
  } else {
  }
  {
  err = si476x_radio_change_func(radio, func);
  }
  if (err < 0) {
    goto unlock;
  } else {
  }
  {
  args.zifsr = 0;
  args.hd = 0;
  args.injside = 0;
  tmp___4 = v4l2_to_si476x(radio->core, (int )freq);
  args.freq = (int )tmp___4;
  args.tunemode = 0;
  args.smoothmetrics = 0;
  args.antcap = 0;
  err = (*((radio->ops)->tune_freq))(radio->core, & args);
  }
  unlock:
  {
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_s_hw_freq_seek(struct file *file , void *priv , struct v4l2_hw_freq_seek const *seek )
{
  int err ;
  enum si476x_func func ;
  u32 rangelow ;
  u32 rangehigh ;
  struct si476x_radio *radio ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  }
  if ((file->f_flags & 2048U) != 0U) {
    return (-11);
  } else {
  }
  if ((unsigned int )seek->tuner != 0U || (unsigned int )seek->type != 1U) {
    return (-22);
  } else {
  }
  {
  si476x_core_lock(radio->core);
  }
  if ((unsigned int )seek->rangelow == 0U) {
    {
    err = regmap_read((radio->core)->regmap, 4352U, & rangelow);
    }
    if (err == 0) {
      {
      tmp___0 = si476x_to_v4l2(radio->core, (int )((u16 )rangelow));
      rangelow = (u32 )tmp___0;
      }
    } else {
      goto unlock;
    }
  } else {
  }
  if ((unsigned int )seek->rangehigh == 0U) {
    {
    err = regmap_read((radio->core)->regmap, 4353U, & rangehigh);
    }
    if (err == 0) {
      {
      tmp___1 = si476x_to_v4l2(radio->core, (int )((u16 )rangehigh));
      rangehigh = (u32 )tmp___1;
      }
    } else {
      goto unlock;
    }
  } else {
  }
  if (rangelow > rangehigh) {
    err = -22;
    goto unlock;
  } else {
  }
  {
  tmp___4 = si476x_radio_range_is_inside_of_the_band(rangelow, rangehigh, 0);
  }
  if ((int )tmp___4) {
    func = 1;
  } else {
    {
    tmp___2 = si476x_core_has_am(radio->core);
    }
    if ((int )tmp___2) {
      {
      tmp___3 = si476x_radio_range_is_inside_of_the_band(rangelow, rangehigh, 1);
      }
      if ((int )tmp___3) {
        func = 2;
      } else {
        err = -22;
        goto unlock;
      }
    } else {
      err = -22;
      goto unlock;
    }
  }
  {
  err = si476x_radio_change_func(radio, func);
  }
  if (err < 0) {
    goto unlock;
  } else {
  }
  if ((unsigned int )seek->rangehigh != 0U) {
    {
    tmp___5 = v4l2_to_si476x(radio->core, (int )seek->rangehigh);
    err = regmap_write((radio->core)->regmap, 4353U, (unsigned int )tmp___5);
    }
    if (err != 0) {
      goto unlock;
    } else {
    }
  } else {
  }
  if ((unsigned int )seek->rangelow != 0U) {
    {
    tmp___6 = v4l2_to_si476x(radio->core, (int )seek->rangelow);
    err = regmap_write((radio->core)->regmap, 4352U, (unsigned int )tmp___6);
    }
    if (err != 0) {
      goto unlock;
    } else {
    }
  } else {
  }
  if ((unsigned int )seek->spacing != 0U) {
    {
    tmp___7 = v4l2_to_si476x(radio->core, (int )seek->spacing);
    err = regmap_write((radio->core)->regmap, 4354U, (unsigned int )tmp___7);
    }
    if (err != 0) {
      goto unlock;
    } else {
    }
  } else {
  }
  {
  err = (*((radio->ops)->seek_start))(radio->core, (unsigned int )seek->seek_upward != 0U,
                                      (unsigned int )seek->wrap_around != 0U);
  }
  unlock:
  {
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_g_volatile_ctrl(struct v4l2_ctrl *ctrl )
{
  int retval ;
  struct si476x_radio *radio ;
  struct si476x_radio *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = v4l2_ctrl_handler_to_radio(ctrl->handler);
  radio = tmp;
  si476x_core_lock(radio->core);
  }
  {
  if (ctrl->id == 9967942U) {
    goto case_9967942;
  } else {
  }
  goto switch_default;
  case_9967942:
  {
  tmp___0 = si476x_core_has_diversity(radio->core);
  }
  if ((int )tmp___0) {
    if ((unsigned long )(radio->ops)->phase_diversity != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                               enum si476x_phase_diversity_mode ))0)) {
      {
      retval = (*((radio->ops)->phase_div_status))(radio->core);
      }
      if (retval < 0) {
        goto ldv_34653;
      } else {
      }
      ctrl->__annonCompField82.val = (retval & 128) != 0;
      retval = 0;
      goto ldv_34653;
    } else {
      retval = -25;
      goto ldv_34653;
    }
  } else {
  }
  retval = -22;
  goto ldv_34653;
  switch_default:
  retval = -22;
  goto ldv_34653;
  switch_break: ;
  }
  ldv_34653:
  {
  si476x_core_unlock(radio->core);
  }
  return (retval);
}
}
static int si476x_radio_s_ctrl(struct v4l2_ctrl *ctrl )
{
  int retval ;
  enum si476x_phase_diversity_mode mode ;
  struct si476x_radio *radio ;
  struct si476x_radio *tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = v4l2_ctrl_handler_to_radio(ctrl->handler);
  radio = tmp;
  si476x_core_lock(radio->core);
  }
  {
  if (ctrl->id == 9967940U) {
    goto case_9967940;
  } else {
  }
  if (ctrl->id == 9963800U) {
    goto case_9963800;
  } else {
  }
  if (ctrl->id == 9967937U) {
    goto case_9967937;
  } else {
  }
  if (ctrl->id == 9967938U) {
    goto case_9967938;
  } else {
  }
  if (ctrl->id == 9967939U) {
    goto case_9967939;
  } else {
  }
  if (ctrl->id == 10553602U) {
    goto case_10553602;
  } else {
  }
  if (ctrl->id == 10553601U) {
    goto case_10553601;
  } else {
  }
  if (ctrl->id == 9967941U) {
    goto case_9967941;
  } else {
  }
  goto switch_default___0;
  case_9967940:
  {
  retval = regmap_update_bits((radio->core)->regmap, 771U, 31U, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_34662;
  case_9963800: ;
  {
  if (ctrl->__annonCompField82.val == 0) {
    goto case_0;
  } else {
  }
  if (ctrl->__annonCompField82.val == 1) {
    goto case_1;
  } else {
  }
  if (ctrl->__annonCompField82.val == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  retval = regmap_update_bits((radio->core)->regmap, 771U, 512U, 0U);
  }
  goto ldv_34665;
  case_1:
  {
  retval = regmap_update_bits((radio->core)->regmap, 771U, 256U, 0U);
  }
  goto ldv_34665;
  case_2:
  {
  retval = regmap_update_bits((radio->core)->regmap, 771U, 256U, 256U);
  }
  goto ldv_34665;
  switch_default:
  retval = -22;
  goto ldv_34665;
  switch_break___0: ;
  }
  ldv_34665: ;
  goto ldv_34662;
  case_9967937:
  {
  retval = regmap_write((radio->core)->regmap, 8196U, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_34662;
  case_9967938:
  {
  retval = regmap_write((radio->core)->regmap, 8195U, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_34662;
  case_9967939:
  {
  retval = regmap_write((radio->core)->regmap, 8192U, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_34662;
  case_10553602:
  {
  tmp___0 = si476x_core_is_in_am_receiver_mode(radio->core);
  }
  if ((int )tmp___0) {
    {
    regcache_cache_only((radio->core)->regmap, 1);
    }
  } else {
  }
  if (ctrl->__annonCompField82.val != 0) {
    {
    retval = regmap_write((radio->core)->regmap, 16385U, (unsigned int )(radio->core)->rds_fifo_depth);
    }
    if (retval < 0) {
      goto ldv_34662;
    } else {
    }
    if (((radio->core)->client)->irq != 0) {
      {
      retval = regmap_write((radio->core)->regmap, 16384U, 1U);
      }
      if (retval < 0) {
        goto ldv_34662;
      } else {
      }
    } else {
    }
    {
    retval = si476x_core_cmd_fm_rds_status(radio->core, 0, 1, 1, (struct si476x_rds_status_report *)0);
    }
    if (retval < 0) {
      goto ldv_34662;
    } else {
    }
    {
    retval = regmap_update_bits((radio->core)->regmap, 16386U, 1U, 1U);
    }
  } else {
    {
    retval = regmap_update_bits((radio->core)->regmap, 16386U, 1U, 0U);
    }
  }
  {
  tmp___1 = si476x_core_is_in_am_receiver_mode(radio->core);
  }
  if ((int )tmp___1) {
    {
    regcache_cache_only((radio->core)->regmap, 0);
    }
  } else {
  }
  goto ldv_34662;
  case_10553601:
  {
  retval = regmap_write((radio->core)->regmap, 770U, (unsigned int )ctrl->__annonCompField82.val);
  }
  goto ldv_34662;
  case_9967941:
  {
  mode = si476x_phase_diversity_idx_to_mode((enum phase_diversity_modes_idx )ctrl->__annonCompField82.val);
  }
  if ((unsigned int )mode == (unsigned int )(radio->core)->diversity_mode) {
    retval = 0;
    goto ldv_34662;
  } else {
  }
  {
  tmp___2 = si476x_core_is_in_am_receiver_mode(radio->core);
  }
  if ((int )tmp___2) {
    (radio->core)->diversity_mode = mode;
    retval = 0;
  } else {
    {
    retval = (*((radio->ops)->phase_diversity))(radio->core, mode);
    }
    if (retval == 0) {
      (radio->core)->diversity_mode = mode;
    } else {
    }
  }
  goto ldv_34662;
  switch_default___0:
  retval = -22;
  goto ldv_34662;
  switch_break: ;
  }
  ldv_34662:
  {
  si476x_core_unlock(radio->core);
  }
  return (retval);
}
}
static int si476x_radio_g_register(struct file *file , void *fh , struct v4l2_dbg_register *reg )
{
  int err ;
  unsigned int value ;
  struct si476x_radio *radio ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  si476x_core_lock(radio->core);
  reg->size = 2U;
  err = regmap_read((radio->core)->regmap, (unsigned int )reg->reg, & value);
  reg->val = (__u64 )value;
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_s_register(struct file *file , void *fh , struct v4l2_dbg_register const *reg )
{
  int err ;
  struct si476x_radio *radio ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  si476x_core_lock(radio->core);
  err = regmap_write((radio->core)->regmap, (unsigned int )reg->reg, (unsigned int )reg->val);
  si476x_core_unlock(radio->core);
  }
  return (err);
}
}
static int si476x_radio_fops_open(struct file *file )
{
  struct si476x_radio *radio ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  err = v4l2_fh_open(file);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  tmp___0 = v4l2_fh_is_singular_file(file);
  }
  if (tmp___0 != 0) {
    {
    si476x_core_lock(radio->core);
    err = si476x_core_set_power_state(radio->core, 1);
    }
    if (err < 0) {
      goto done;
    } else {
    }
    {
    err = si476x_radio_do_post_powerup_init(radio, (radio->core)->power_up_parameters.func);
    }
    if (err < 0) {
      goto power_down;
    } else {
    }
    {
    err = si476x_radio_pretune(radio, (radio->core)->power_up_parameters.func);
    }
    if (err < 0) {
      goto power_down;
    } else {
    }
    {
    si476x_core_unlock(radio->core);
    v4l2_ctrl_handler_setup(& radio->ctrl_handler);
    }
  } else {
  }
  return (err);
  power_down:
  {
  si476x_core_set_power_state(radio->core, 0);
  }
  done:
  {
  si476x_core_unlock(radio->core);
  v4l2_fh_release(file);
  }
  return (err);
}
}
static int si476x_radio_fops_release(struct file *file )
{
  int err ;
  struct si476x_radio *radio ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  tmp___0 = v4l2_fh_is_singular_file(file);
  }
  if (tmp___0 != 0) {
    {
    tmp___1 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
    }
    if (tmp___1 != 0) {
      {
      si476x_core_set_power_state(radio->core, 0);
      }
    } else {
    }
  } else {
  }
  {
  err = v4l2_fh_release(file);
  }
  return (err);
}
}
static ssize_t si476x_radio_fops_read(struct file *file , char *buf , size_t count ,
                                      loff_t *ppos )
{
  ssize_t rval ;
  size_t fifo_len ;
  unsigned int copied ;
  struct si476x_radio *radio ;
  void *tmp ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  struct kfifo *__tmpq ;
  int tmp___1 ;
  struct kfifo *__tmpq___0 ;
  int tmp___2 ;
  int tmp___3 ;
  struct kfifo *__tmpq___1 ;
  struct kfifo *__tmpl ;
  struct kfifo *__tmp ;
  void *__to ;
  unsigned int __len ;
  size_t _min1 ;
  size_t _min2 ;
  unsigned int *__copied ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  __tmpq___1 = & (radio->core)->rds_fifo;
  }
  if ((__tmpq___1->__annonCompField83.kfifo.in == __tmpq___1->__annonCompField83.kfifo.out) != 0) {
    if ((file->f_flags & 2048U) != 0U) {
      return (-11L);
    } else {
    }
    __ret = 0;
    __tmpq___0 = & (radio->core)->rds_fifo;
    if ((__tmpq___0->__annonCompField83.kfifo.in == __tmpq___0->__annonCompField83.kfifo.out) != 0) {
      {
      tmp___2 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
      }
      if (tmp___2 != 0) {
        {
        __ret___0 = 0L;
        INIT_LIST_HEAD(& __wait.task_list);
        __wait.flags = 0U;
        }
        ldv_34725:
        {
        tmp___0 = prepare_to_wait_event(& (radio->core)->rds_read_queue, & __wait,
                                        1);
        __int = tmp___0;
        __tmpq = & (radio->core)->rds_fifo;
        }
        if ((__tmpq->__annonCompField83.kfifo.in == __tmpq->__annonCompField83.kfifo.out) == 0) {
          goto ldv_34724;
        } else {
          {
          tmp___1 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
          }
          if (tmp___1 == 0) {
            goto ldv_34724;
          } else {
          }
        }
        if (__int != 0L) {
          __ret___0 = __int;
          goto ldv_34724;
        } else {
        }
        {
        schedule();
        }
        goto ldv_34725;
        ldv_34724:
        {
        finish_wait(& (radio->core)->rds_read_queue, & __wait);
        }
        __ret = (int )__ret___0;
      } else {
      }
    } else {
    }
    rval = (ssize_t )__ret;
    if (rval < 0L) {
      return (-4L);
    } else {
    }
    {
    tmp___3 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
    }
    if (tmp___3 == 0) {
      return (-19L);
    } else {
    }
  } else {
  }
  {
  __tmpl = & (radio->core)->rds_fifo;
  fifo_len = (size_t )(__tmpl->__annonCompField83.kfifo.in - __tmpl->__annonCompField83.kfifo.out);
  __tmp = & (radio->core)->rds_fifo;
  __to = (void *)buf;
  _min1 = fifo_len;
  _min2 = count;
  __len = (unsigned int )(_min1 < _min2 ? _min1 : _min2);
  __copied = & copied;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField83.kfifo;
  tmp___4 = __kfifo_to_user(__kfifo, __to, (unsigned long )__len, __copied);
  tmp___5 = __kfifo_uint_must_check_helper((unsigned int )tmp___4);
  }
  if (tmp___5 != 0U) {
    {
    dev_warn((struct device const *)(& radio->videodev.dev), "Error during FIFO to userspace copy\n");
    rval = -5L;
    }
  } else {
    rval = (long )copied;
  }
  return (rval);
}
}
static unsigned int si476x_radio_fops_poll(struct file *file , struct poll_table_struct *pts )
{
  struct si476x_radio *radio ;
  void *tmp ;
  unsigned long req_events ;
  unsigned long tmp___0 ;
  unsigned int err ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct kfifo *__tmpq ;
  {
  {
  tmp = video_drvdata(file);
  radio = (struct si476x_radio *)tmp;
  tmp___0 = poll_requested_events((poll_table const *)pts);
  req_events = tmp___0;
  tmp___1 = v4l2_ctrl_poll(file, pts);
  err = tmp___1;
  }
  if ((req_events & 65UL) != 0UL) {
    {
    tmp___2 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
    }
    if (tmp___2 != 0) {
      {
      poll_wait(file, & (radio->core)->rds_read_queue, pts);
      }
    } else {
    }
    {
    tmp___3 = atomic_read((atomic_t const *)(& (radio->core)->is_alive));
    }
    if (tmp___3 == 0) {
      err = 16U;
    } else {
    }
    __tmpq = & (radio->core)->rds_fifo;
    if ((__tmpq->__annonCompField83.kfifo.in == __tmpq->__annonCompField83.kfifo.out) == 0) {
      err = 65U;
    } else {
    }
  } else {
  }
  return (err);
}
}
static struct v4l2_file_operations const si476x_fops =
     {& __this_module, & si476x_radio_fops_read, 0, & si476x_radio_fops_poll, 0, & video_ioctl2,
    0, 0, 0, & si476x_radio_fops_open, & si476x_radio_fops_release};
static struct v4l2_ioctl_ops const si4761_ioctl_ops =
     {& si476x_radio_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & si476x_radio_g_tuner, & si476x_radio_s_tuner,
    & si476x_radio_g_frequency, & si476x_radio_s_frequency, & si476x_radio_enum_freq_bands,
    0, 0, & si476x_radio_s_hw_freq_seek, & si476x_radio_g_register, & si476x_radio_s_register,
    0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
static struct video_device const si476x_viddev_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & si476x_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
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
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, 0U, 0U,
            0U, 0U, 0U}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                {0, 0}, 0, 0, 0, {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0,
     {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
      {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, 0U, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0,
     0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
     {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0,
    {'s', 'i', '4', '7', '6', 'x', '-', 'r', 'a', 'd', 'i', 'o', '\000'}, 0, 0, 0,
    (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                 0},
    0, 0ULL, & video_device_release_empty, 0, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static ssize_t si476x_radio_read_acf_blob(struct file *file , char *user_buf , size_t count ,
                                          loff_t *ppos )
{
  int err ;
  struct si476x_radio *radio ;
  struct si476x_acf_status_report report ;
  ssize_t tmp ;
  {
  {
  radio = (struct si476x_radio *)file->private_data;
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->acf_status != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                        struct si476x_acf_status_report * ))0)) {
    {
    err = (*((radio->ops)->acf_status))(radio->core, & report);
    }
  } else {
    err = -2;
  }
  {
  si476x_core_unlock(radio->core);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& report),
                                12UL);
  }
  return (tmp);
}
}
static struct file_operations const radio_acf_fops =
     {0, & default_llseek, & si476x_radio_read_acf_blob, 0, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t si476x_radio_read_rds_blckcnt_blob(struct file *file , char *user_buf ,
                                                  size_t count , loff_t *ppos )
{
  int err ;
  struct si476x_radio *radio ;
  struct si476x_rds_blockcount_report report ;
  ssize_t tmp ;
  {
  {
  radio = (struct si476x_radio *)file->private_data;
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->rds_blckcnt != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                         bool ,
                                                                                         struct si476x_rds_blockcount_report * ))0)) {
    {
    err = (*((radio->ops)->rds_blckcnt))(radio->core, 1, & report);
    }
  } else {
    err = -2;
  }
  {
  si476x_core_unlock(radio->core);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& report),
                                6UL);
  }
  return (tmp);
}
}
static struct file_operations const radio_rds_blckcnt_fops =
     {0, & default_llseek, & si476x_radio_read_rds_blckcnt_blob, 0, 0, 0, 0, 0, 0, 0,
    0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t si476x_radio_read_agc_blob(struct file *file , char *user_buf , size_t count ,
                                          loff_t *ppos )
{
  int err ;
  struct si476x_radio *radio ;
  struct si476x_agc_status_report report ;
  ssize_t tmp ;
  {
  {
  radio = (struct si476x_radio *)file->private_data;
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->rds_blckcnt != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                         bool ,
                                                                                         struct si476x_rds_blockcount_report * ))0)) {
    {
    err = (*((radio->ops)->agc_status))(radio->core, & report);
    }
  } else {
    err = -2;
  }
  {
  si476x_core_unlock(radio->core);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& report),
                                8UL);
  }
  return (tmp);
}
}
static struct file_operations const radio_agc_fops =
     {0, & default_llseek, & si476x_radio_read_agc_blob, 0, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t si476x_radio_read_rsq_blob(struct file *file , char *user_buf , size_t count ,
                                          loff_t *ppos )
{
  int err ;
  struct si476x_radio *radio ;
  struct si476x_rsq_status_report report ;
  struct si476x_rsq_status_args args ;
  ssize_t tmp ;
  {
  {
  radio = (struct si476x_radio *)file->private_data;
  args.primary = 0;
  args.rsqack = 0;
  args.attune = 0;
  args.cancel = 0;
  args.stcack = 0;
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->rds_blckcnt != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                         bool ,
                                                                                         struct si476x_rds_blockcount_report * ))0)) {
    {
    err = (*((radio->ops)->rsq_status))(radio->core, & args, & report);
    }
  } else {
    err = -2;
  }
  {
  si476x_core_unlock(radio->core);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& report),
                                32UL);
  }
  return (tmp);
}
}
static struct file_operations const radio_rsq_fops =
     {0, & default_llseek, & si476x_radio_read_rsq_blob, 0, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t si476x_radio_read_rsq_primary_blob(struct file *file , char *user_buf ,
                                                  size_t count , loff_t *ppos )
{
  int err ;
  struct si476x_radio *radio ;
  struct si476x_rsq_status_report report ;
  struct si476x_rsq_status_args args ;
  ssize_t tmp ;
  {
  {
  radio = (struct si476x_radio *)file->private_data;
  args.primary = 1;
  args.rsqack = 0;
  args.attune = 0;
  args.cancel = 0;
  args.stcack = 0;
  si476x_core_lock(radio->core);
  }
  if ((unsigned long )(radio->ops)->rds_blckcnt != (unsigned long )((int (* )(struct si476x_core * ,
                                                                                         bool ,
                                                                                         struct si476x_rds_blockcount_report * ))0)) {
    {
    err = (*((radio->ops)->rsq_status))(radio->core, & args, & report);
    }
  } else {
    err = -2;
  }
  {
  si476x_core_unlock(radio->core);
  }
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  {
  tmp = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& report),
                                32UL);
  }
  return (tmp);
}
}
static struct file_operations const radio_rsq_primary_fops =
     {0, & default_llseek, & si476x_radio_read_rsq_primary_blob, 0, 0, 0, 0, 0, 0, 0,
    0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int si476x_radio_init_debugfs(struct si476x_radio *radio )
{
  struct dentry *dentry ;
  int ret ;
  char const *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  {
  {
  tmp = dev_name((struct device const *)radio->v4l2dev.dev);
  dentry = debugfs_create_dir(tmp, (struct dentry *)0);
  tmp___1 = IS_ERR((void const *)dentry);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___0;
    }
    goto exit;
  } else {
  }
  {
  radio->debugfs = dentry;
  dentry = debugfs_create_file("acf", 292, radio->debugfs, (void *)radio, & radio_acf_fops);
  tmp___3 = IS_ERR((void const *)dentry);
  }
  if (tmp___3 != 0L) {
    {
    tmp___2 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___2;
    }
    goto cleanup;
  } else {
  }
  {
  dentry = debugfs_create_file("rds_blckcnt", 292, radio->debugfs, (void *)radio,
                               & radio_rds_blckcnt_fops);
  tmp___5 = IS_ERR((void const *)dentry);
  }
  if (tmp___5 != 0L) {
    {
    tmp___4 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___4;
    }
    goto cleanup;
  } else {
  }
  {
  dentry = debugfs_create_file("agc", 292, radio->debugfs, (void *)radio, & radio_agc_fops);
  tmp___7 = IS_ERR((void const *)dentry);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___6;
    }
    goto cleanup;
  } else {
  }
  {
  dentry = debugfs_create_file("rsq", 292, radio->debugfs, (void *)radio, & radio_rsq_fops);
  tmp___9 = IS_ERR((void const *)dentry);
  }
  if (tmp___9 != 0L) {
    {
    tmp___8 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___8;
    }
    goto cleanup;
  } else {
  }
  {
  dentry = debugfs_create_file("rsq_primary", 292, radio->debugfs, (void *)radio,
                               & radio_rsq_primary_fops);
  tmp___11 = IS_ERR((void const *)dentry);
  }
  if (tmp___11 != 0L) {
    {
    tmp___10 = PTR_ERR((void const *)dentry);
    ret = (int )tmp___10;
    }
    goto cleanup;
  } else {
  }
  return (0);
  cleanup:
  {
  debugfs_remove_recursive(radio->debugfs);
  }
  exit: ;
  return (ret);
}
}
static int si476x_radio_add_new_custom(struct si476x_radio *radio , enum si476x_ctrl_idx idx )
{
  int rval ;
  struct v4l2_ctrl *ctrl ;
  {
  {
  ctrl = v4l2_ctrl_new_custom(& radio->ctrl_handler, (struct v4l2_ctrl_config const *)(& si476x_ctrls) + (unsigned long )idx,
                              (void *)0);
  rval = radio->ctrl_handler.error;
  }
  if ((unsigned long )ctrl == (unsigned long )((struct v4l2_ctrl *)0) && rval != 0) {
    {
    dev_err((struct device const *)radio->v4l2dev.dev, "Could not initialize \'%s\' control %d\n",
            si476x_ctrls[(unsigned int )idx].name, rval);
    }
  } else {
  }
  return (rval);
}
}
static int si476x_radio_probe(struct platform_device *pdev )
{
  int rval ;
  struct si476x_radio *radio ;
  struct v4l2_ctrl *ctrl ;
  atomic_t instance ;
  void *tmp ;
  struct lock_class_key _key ;
  bool tmp___0 ;
  enum phase_diversity_modes_idx tmp___1 ;
  bool tmp___2 ;
  {
  {
  instance.counter = 0;
  tmp = devm_kzalloc(& pdev->dev, 2448UL, 208U);
  radio = (struct si476x_radio *)tmp;
  }
  if ((unsigned long )radio == (unsigned long )((struct si476x_radio *)0)) {
    return (-12);
  } else {
  }
  {
  radio->core = i2c_mfd_cell_to_core(& pdev->dev);
  v4l2_device_set_name(& radio->v4l2dev, "si476x-radio", & instance);
  rval = v4l2_device_register(& pdev->dev, & radio->v4l2dev);
  }
  if (rval != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot register v4l2_device.\n");
    }
    return (rval);
  } else {
  }
  {
  memcpy((void *)(& radio->videodev), (void const *)(& si476x_viddev_template),
         1808UL);
  radio->videodev.v4l2_dev = & radio->v4l2dev;
  radio->videodev.ioctl_ops = & si4761_ioctl_ops;
  video_set_drvdata(& radio->videodev, (void *)radio);
  platform_set_drvdata(pdev, (void *)radio);
  set_bit(2L, (unsigned long volatile *)(& radio->videodev.flags));
  radio->v4l2dev.ctrl_handler = & radio->ctrl_handler;
  v4l2_ctrl_handler_init_class(& radio->ctrl_handler, 7U, & _key, "radio_si476x:1477:(&radio->ctrl_handler)->_lock");
  tmp___0 = si476x_core_has_am(radio->core);
  }
  if ((int )tmp___0) {
    {
    ctrl = v4l2_ctrl_new_std_menu(& radio->ctrl_handler, & si476x_ctrl_ops, 9963800U,
                                  2, 0, 0);
    rval = radio->ctrl_handler.error;
    }
    if ((unsigned long )ctrl == (unsigned long )((struct v4l2_ctrl *)0) && rval != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "Could not initialize V4L2_CID_POWER_LINE_FREQUENCY control %d\n",
              rval);
      }
      goto exit;
    } else {
    }
    {
    rval = si476x_radio_add_new_custom(radio, 3);
    }
    if (rval < 0) {
      goto exit;
    } else {
    }
  } else {
  }
  {
  rval = si476x_radio_add_new_custom(radio, 0);
  }
  if (rval < 0) {
    goto exit;
  } else {
  }
  {
  rval = si476x_radio_add_new_custom(radio, 1);
  }
  if (rval < 0) {
    goto exit;
  } else {
  }
  {
  rval = si476x_radio_add_new_custom(radio, 2);
  }
  if (rval < 0) {
    goto exit;
  } else {
  }
  {
  ctrl = v4l2_ctrl_new_std_menu(& radio->ctrl_handler, & si476x_ctrl_ops, 10553601U,
                                2, 0, 0);
  rval = radio->ctrl_handler.error;
  }
  if ((unsigned long )ctrl == (unsigned long )((struct v4l2_ctrl *)0) && rval != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Could not initialize V4L2_CID_TUNE_DEEMPHASIS control %d\n",
            rval);
    }
    goto exit;
  } else {
  }
  {
  ctrl = v4l2_ctrl_new_std(& radio->ctrl_handler, & si476x_ctrl_ops, 10553602U, 0,
                           1, 1U, 1);
  rval = radio->ctrl_handler.error;
  }
  if ((unsigned long )ctrl == (unsigned long )((struct v4l2_ctrl *)0) && rval != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Could not initialize V4L2_CID_RDS_RECEPTION control %d\n",
            rval);
    }
    goto exit;
  } else {
  }
  {
  tmp___2 = si476x_core_has_diversity(radio->core);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = si476x_phase_diversity_mode_to_idx((radio->core)->diversity_mode);
    si476x_ctrls[4].def = (s32 )tmp___1;
    si476x_radio_add_new_custom(radio, 4);
    }
    if (rval < 0) {
      goto exit;
    } else {
    }
    {
    si476x_radio_add_new_custom(radio, 5);
    }
    if (rval < 0) {
      goto exit;
    } else {
    }
  } else {
  }
  {
  rval = video_register_device(& radio->videodev, 2, -1);
  }
  if (rval < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Could not register video device\n");
    }
    goto exit;
  } else {
  }
  {
  rval = si476x_radio_init_debugfs(radio);
  }
  if (rval < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Could not creat debugfs interface\n");
    }
    goto exit;
  } else {
  }
  return (0);
  exit:
  {
  v4l2_ctrl_handler_free(radio->videodev.ctrl_handler);
  }
  return (rval);
}
}
static int si476x_radio_remove(struct platform_device *pdev )
{
  struct si476x_radio *radio ;
  void *tmp ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  radio = (struct si476x_radio *)tmp;
  v4l2_ctrl_handler_free(radio->videodev.ctrl_handler);
  video_unregister_device(& radio->videodev);
  v4l2_device_unregister(& radio->v4l2dev);
  debugfs_remove_recursive(radio->debugfs);
  }
  return (0);
}
}
static struct platform_driver si476x_radio_driver =
     {& si476x_radio_probe, & si476x_radio_remove, 0, 0, 0, {"si476x-radio", 0, & __this_module,
                                                           0, (_Bool)0, 0, 0, 0, 0,
                                                           0, 0, 0, 0, 0, 0}, 0, (_Bool)0};
static int si476x_radio_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___platform_driver_register_29(& si476x_radio_driver, & __this_module);
  }
  return (tmp);
}
}
static void si476x_radio_driver_exit(void)
{
  {
  {
  ldv_platform_driver_unregister_30(& si476x_radio_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_si476x_radio_driver_exit_17_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_si476x_radio_driver_init_17_15(int (*arg0)(void) ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_16_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_6_17_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_7_17_5(void) ;
void ldv_dispatch_deregister_file_operations_instance_3_17_6(void) ;
void ldv_dispatch_deregister_io_instance_8_17_7(void) ;
void ldv_dispatch_pm_deregister_6_5(void) ;
void ldv_dispatch_pm_register_6_6(void) ;
void ldv_dispatch_register_15_2(struct platform_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_6_17_8(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_7_17_9(void) ;
void ldv_dispatch_register_file_operations_instance_3_17_10(void) ;
void ldv_dispatch_register_io_instance_8_17_11(void) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_8_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_9_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frequency * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frequency *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_hw_freq_seek * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_hw_freq_seek *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_dbg_register * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_dbg_register *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_16(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_tuner * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_tuner *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_17(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_18(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_frequency_band * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_frequency_band *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_frequency * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_frequency *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_dbg_register * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_dbg_register *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_tuner * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_tuner *arg3 ) ;
void ldv_entry_EMGentry_17(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_3(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_4(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_5(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_2_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_3_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_3_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_4_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_4_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_5_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_5_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_4_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_5_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_4_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_5_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_initialize_external_data(void) ;
void ldv_io_instance_callback_10_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_10_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_10_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_10_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_11_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_11_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_11_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_11_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_12_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_12_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_12_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_12_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_13_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_13_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_13_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_13_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_14_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_14_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_14_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_14_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
int ldv_io_instance_probe_10_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_11_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_12_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_13_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_14_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_10_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_11_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_12_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_13_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_14_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_6_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_6_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_6(void *arg0 ) ;
void ldv_platform_pm_ops_instance_7(void *arg0 ) ;
void ldv_pm_ops_instance_complete_7_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_7_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_7_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_7_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_7_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_7_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_7_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_7_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_7_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_7_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_7_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_7_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_7_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_7_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_7_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_7_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_7_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_7_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_7_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_7_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_7_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_7_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_7_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_9(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
int ldv_switch_5(void) ;
int ldv_switch_6(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_10_14(void) ;
void ldv_switch_automaton_state_10_5(void) ;
void ldv_switch_automaton_state_11_14(void) ;
void ldv_switch_automaton_state_11_5(void) ;
void ldv_switch_automaton_state_12_14(void) ;
void ldv_switch_automaton_state_12_5(void) ;
void ldv_switch_automaton_state_13_14(void) ;
void ldv_switch_automaton_state_13_5(void) ;
void ldv_switch_automaton_state_14_14(void) ;
void ldv_switch_automaton_state_14_5(void) ;
void ldv_switch_automaton_state_1_15(void) ;
void ldv_switch_automaton_state_1_6(void) ;
void ldv_switch_automaton_state_2_15(void) ;
void ldv_switch_automaton_state_2_6(void) ;
void ldv_switch_automaton_state_3_15(void) ;
void ldv_switch_automaton_state_3_6(void) ;
void ldv_switch_automaton_state_4_15(void) ;
void ldv_switch_automaton_state_4_6(void) ;
void ldv_switch_automaton_state_5_15(void) ;
void ldv_switch_automaton_state_5_6(void) ;
void ldv_switch_automaton_state_6_17(void) ;
void ldv_switch_automaton_state_6_8(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_29(void) ;
void ldv_switch_automaton_state_8_1(void) ;
void ldv_switch_automaton_state_8_5(void) ;
void ldv_switch_automaton_state_9_1(void) ;
void ldv_switch_automaton_state_9_5(void) ;
void ldv_v4l2_file_operations_io_instance_10(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_11(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_12(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_13(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_14(void *arg0 ) ;
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
void (*ldv_10_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_10_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_10_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_10_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_10_container_v4l2_file_operations ;
char *ldv_10_ldv_param_18_1_default ;
unsigned long ldv_10_ldv_param_18_2_default ;
long long *ldv_10_ldv_param_18_3_default ;
unsigned int ldv_10_ldv_param_21_1_default ;
unsigned long ldv_10_ldv_param_21_2_default ;
struct file *ldv_10_resource_file ;
struct poll_table_struct *ldv_10_resource_struct_poll_table_struct_ptr ;
struct video_device *ldv_10_resource_struct_video_device ;
int ldv_10_ret_default ;
void (*ldv_11_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_11_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_11_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_11_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_11_container_v4l2_file_operations ;
char *ldv_11_ldv_param_18_1_default ;
unsigned long ldv_11_ldv_param_18_2_default ;
long long *ldv_11_ldv_param_18_3_default ;
unsigned int ldv_11_ldv_param_21_1_default ;
unsigned long ldv_11_ldv_param_21_2_default ;
struct file *ldv_11_resource_file ;
struct poll_table_struct *ldv_11_resource_struct_poll_table_struct_ptr ;
struct video_device *ldv_11_resource_struct_video_device ;
int ldv_11_ret_default ;
void (*ldv_12_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_12_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_12_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_12_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_12_container_v4l2_file_operations ;
char *ldv_12_ldv_param_18_1_default ;
unsigned long ldv_12_ldv_param_18_2_default ;
long long *ldv_12_ldv_param_18_3_default ;
unsigned int ldv_12_ldv_param_21_1_default ;
unsigned long ldv_12_ldv_param_21_2_default ;
struct file *ldv_12_resource_file ;
struct poll_table_struct *ldv_12_resource_struct_poll_table_struct_ptr ;
struct video_device *ldv_12_resource_struct_video_device ;
int ldv_12_ret_default ;
void (*ldv_13_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_13_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_13_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_13_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_13_container_v4l2_file_operations ;
char *ldv_13_ldv_param_18_1_default ;
unsigned long ldv_13_ldv_param_18_2_default ;
long long *ldv_13_ldv_param_18_3_default ;
unsigned int ldv_13_ldv_param_21_1_default ;
unsigned long ldv_13_ldv_param_21_2_default ;
struct file *ldv_13_resource_file ;
struct poll_table_struct *ldv_13_resource_struct_poll_table_struct_ptr ;
struct video_device *ldv_13_resource_struct_video_device ;
int ldv_13_ret_default ;
void (*ldv_14_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_14_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_14_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_14_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_14_container_v4l2_file_operations ;
char *ldv_14_ldv_param_18_1_default ;
unsigned long ldv_14_ldv_param_18_2_default ;
long long *ldv_14_ldv_param_18_3_default ;
unsigned int ldv_14_ldv_param_21_1_default ;
unsigned long ldv_14_ldv_param_21_2_default ;
struct file *ldv_14_resource_file ;
struct poll_table_struct *ldv_14_resource_struct_poll_table_struct_ptr ;
struct video_device *ldv_14_resource_struct_video_device ;
int ldv_14_ret_default ;
void (*ldv_17_exit_si476x_radio_driver_exit_default)(void) ;
int (*ldv_17_init_si476x_radio_driver_init_default)(void) ;
int ldv_17_ret_default ;
long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_1_container_file_operations ;
char *ldv_1_ldv_param_22_1_default ;
long long *ldv_1_ldv_param_22_3_default ;
char *ldv_1_ldv_param_4_1_default ;
long long *ldv_1_ldv_param_4_3_default ;
long long ldv_1_ldv_param_5_1_default ;
int ldv_1_ldv_param_5_2_default ;
struct file *ldv_1_resource_file ;
struct inode *ldv_1_resource_inode ;
int ldv_1_ret_default ;
unsigned long ldv_1_size_cnt_write_size ;
long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_2_container_file_operations ;
char *ldv_2_ldv_param_22_1_default ;
long long *ldv_2_ldv_param_22_3_default ;
char *ldv_2_ldv_param_4_1_default ;
long long *ldv_2_ldv_param_4_3_default ;
long long ldv_2_ldv_param_5_1_default ;
int ldv_2_ldv_param_5_2_default ;
struct file *ldv_2_resource_file ;
struct inode *ldv_2_resource_inode ;
int ldv_2_ret_default ;
unsigned long ldv_2_size_cnt_write_size ;
long long (*ldv_3_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_3_container_file_operations ;
char *ldv_3_ldv_param_22_1_default ;
long long *ldv_3_ldv_param_22_3_default ;
char *ldv_3_ldv_param_4_1_default ;
long long *ldv_3_ldv_param_4_3_default ;
long long ldv_3_ldv_param_5_1_default ;
int ldv_3_ldv_param_5_2_default ;
struct file *ldv_3_resource_file ;
struct inode *ldv_3_resource_inode ;
int ldv_3_ret_default ;
unsigned long ldv_3_size_cnt_write_size ;
long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_4_container_file_operations ;
char *ldv_4_ldv_param_22_1_default ;
long long *ldv_4_ldv_param_22_3_default ;
char *ldv_4_ldv_param_4_1_default ;
long long *ldv_4_ldv_param_4_3_default ;
long long ldv_4_ldv_param_5_1_default ;
int ldv_4_ldv_param_5_2_default ;
struct file *ldv_4_resource_file ;
struct inode *ldv_4_resource_inode ;
int ldv_4_ret_default ;
unsigned long ldv_4_size_cnt_write_size ;
long long (*ldv_5_callback_llseek)(struct file * , long long , int ) ;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
struct file_operations *ldv_5_container_file_operations ;
char *ldv_5_ldv_param_22_1_default ;
long long *ldv_5_ldv_param_22_3_default ;
char *ldv_5_ldv_param_4_1_default ;
long long *ldv_5_ldv_param_4_3_default ;
long long ldv_5_ldv_param_5_1_default ;
int ldv_5_ldv_param_5_2_default ;
struct file *ldv_5_resource_file ;
struct inode *ldv_5_resource_inode ;
int ldv_5_ret_default ;
unsigned long ldv_5_size_cnt_write_size ;
struct platform_driver *ldv_6_container_platform_driver ;
int ldv_6_probed_default ;
struct platform_device *ldv_6_resource_platform_device ;
struct device *ldv_7_device_device ;
struct dev_pm_ops *ldv_7_pm_ops_dev_pm_ops ;
int (*ldv_8_callback_g_volatile_ctrl)(struct v4l2_ctrl * ) ;
int (*ldv_8_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_8_container_struct_v4l2_ctrl_ptr ;
int (*ldv_9_callback_vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
int (*ldv_9_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_9_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_9_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_9_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_9_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_9_callback_vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek * ) ;
int (*ldv_9_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_9_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_9_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_9_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct file *ldv_9_container_struct_file_ptr ;
struct v4l2_capability *ldv_9_container_struct_v4l2_capability_ptr ;
struct v4l2_dbg_register *ldv_9_container_struct_v4l2_dbg_register_ptr ;
struct v4l2_event_subscription *ldv_9_container_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_9_container_struct_v4l2_fh_ptr ;
struct v4l2_frequency_band *ldv_9_container_struct_v4l2_frequency_band_ptr ;
struct v4l2_frequency *ldv_9_container_struct_v4l2_frequency_ptr ;
struct v4l2_hw_freq_seek *ldv_9_container_struct_v4l2_hw_freq_seek_ptr ;
struct v4l2_tuner *ldv_9_container_struct_v4l2_tuner_ptr ;
struct v4l2_capability *ldv_9_ldv_param_10_2_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_10 ;
int ldv_statevar_11 ;
int ldv_statevar_12 ;
int ldv_statevar_13 ;
int ldv_statevar_14 ;
int ldv_statevar_17 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
int ldv_statevar_9 ;
long long (*ldv_0_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_fops_read;
void (*ldv_10_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
unsigned int (*ldv_10_callback_poll)(struct file * , struct poll_table_struct * ) = & si476x_radio_fops_poll;
long (*ldv_10_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_acf_blob;
long (*ldv_10_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
void (*ldv_11_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
unsigned int (*ldv_11_callback_poll)(struct file * , struct poll_table_struct * ) = & si476x_radio_fops_poll;
long (*ldv_11_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_agc_blob;
long (*ldv_11_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
void (*ldv_12_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
unsigned int (*ldv_12_callback_poll)(struct file * , struct poll_table_struct * ) = & si476x_radio_fops_poll;
long (*ldv_12_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rds_blckcnt_blob;
long (*ldv_12_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
void (*ldv_13_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
unsigned int (*ldv_13_callback_poll)(struct file * , struct poll_table_struct * ) = & si476x_radio_fops_poll;
long (*ldv_13_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rsq_blob;
long (*ldv_13_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
void (*ldv_14_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
unsigned int (*ldv_14_callback_poll)(struct file * , struct poll_table_struct * ) = & si476x_radio_fops_poll;
long (*ldv_14_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rsq_primary_blob;
long (*ldv_14_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
void (*ldv_17_exit_si476x_radio_driver_exit_default)(void) = & si476x_radio_driver_exit;
int (*ldv_17_init_si476x_radio_driver_init_default)(void) = & si476x_radio_driver_init;
long long (*ldv_1_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_agc_blob;
long long (*ldv_2_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rds_blckcnt_blob;
long long (*ldv_3_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rsq_blob;
long long (*ldv_4_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_rsq_primary_blob;
long long (*ldv_5_callback_llseek)(struct file * , long long , int ) = & default_llseek;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) = & si476x_radio_read_acf_blob;
int (*ldv_8_callback_g_volatile_ctrl)(struct v4l2_ctrl * ) = & si476x_radio_g_volatile_ctrl;
int (*ldv_8_callback_s_ctrl)(struct v4l2_ctrl * ) = & si476x_radio_s_ctrl;
int (*ldv_9_callback_vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) = & si476x_radio_enum_freq_bands;
int (*ldv_9_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) = & si476x_radio_g_frequency;
int (*ldv_9_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) = & si476x_radio_g_register;
int (*ldv_9_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) = & si476x_radio_g_tuner;
int (*ldv_9_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & si476x_radio_querycap;
int (*ldv_9_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) = (int (*)(struct file * ,
            void * , struct v4l2_frequency * ))(& si476x_radio_s_frequency);
int (*ldv_9_callback_vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek * ) = (int (*)(struct file * ,
            void * , struct v4l2_hw_freq_seek * ))(& si476x_radio_s_hw_freq_seek);
int (*ldv_9_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) = (int (*)(struct file * ,
            void * , struct v4l2_dbg_register * ))(& si476x_radio_s_register);
int (*ldv_9_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) = (int (*)(struct file * ,
            void * , struct v4l2_tuner * ))(& si476x_radio_s_tuner);
int (*ldv_9_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_9_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
void ldv_EMGentry_exit_si476x_radio_driver_exit_17_2(void (*arg0)(void) )
{
  {
  {
  si476x_radio_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_si476x_radio_driver_init_17_15(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_driver_init();
  }
  return (tmp);
}
}
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_15_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_platform_driver_platform_driver = arg1;
    ldv_assume(ldv_statevar_6 == 17);
    ldv_dispatch_register_15_2(ldv_15_platform_driver_platform_driver);
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
  ldv_1_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_1_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_1_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_1_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_1_resource_file = ldv_malloc(sizeof(struct file));
  ldv_1_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_2_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_2_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_2_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_2_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_2_resource_file = ldv_malloc(sizeof(struct file));
  ldv_2_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_3_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_3_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_3_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_3_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_3_resource_file = ldv_malloc(sizeof(struct file));
  ldv_3_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_4_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_4_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_4_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_4_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_4_resource_file = ldv_malloc(sizeof(struct file));
  ldv_4_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_5_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_5_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_5_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_5_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_5_resource_file = ldv_malloc(sizeof(struct file));
  ldv_5_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_6_resource_platform_device = ldv_malloc(sizeof(struct platform_device));
  ldv_7_device_device = ldv_malloc(sizeof(struct device));
  ldv_7_pm_ops_dev_pm_ops = ldv_malloc(sizeof(struct dev_pm_ops));
  ldv_8_container_struct_v4l2_ctrl_ptr = ldv_malloc(sizeof(struct v4l2_ctrl));
  ldv_9_container_struct_file_ptr = ldv_malloc(sizeof(struct file));
  ldv_9_container_struct_v4l2_capability_ptr = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_9_container_struct_v4l2_dbg_register_ptr = ldv_malloc(sizeof(struct v4l2_dbg_register));
  ldv_9_container_struct_v4l2_event_subscription_ptr = ldv_malloc(sizeof(struct v4l2_event_subscription));
  ldv_9_container_struct_v4l2_fh_ptr = ldv_malloc(sizeof(struct v4l2_fh));
  ldv_9_container_struct_v4l2_frequency_band_ptr = ldv_malloc(sizeof(struct v4l2_frequency_band));
  ldv_9_container_struct_v4l2_frequency_ptr = ldv_malloc(sizeof(struct v4l2_frequency));
  ldv_9_container_struct_v4l2_hw_freq_seek_ptr = ldv_malloc(sizeof(struct v4l2_hw_freq_seek));
  ldv_9_container_struct_v4l2_tuner_ptr = ldv_malloc(sizeof(struct v4l2_tuner));
  ldv_9_ldv_param_10_2_default = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_10_ldv_param_18_1_default = ldv_malloc(sizeof(char));
  ldv_10_ldv_param_18_3_default = ldv_malloc(sizeof(long long));
  ldv_10_resource_file = ldv_malloc(sizeof(struct file));
  ldv_10_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_11_ldv_param_18_1_default = ldv_malloc(sizeof(char));
  ldv_11_ldv_param_18_3_default = ldv_malloc(sizeof(long long));
  ldv_11_resource_file = ldv_malloc(sizeof(struct file));
  ldv_11_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_12_ldv_param_18_1_default = ldv_malloc(sizeof(char));
  ldv_12_ldv_param_18_3_default = ldv_malloc(sizeof(long long));
  ldv_12_resource_file = ldv_malloc(sizeof(struct file));
  ldv_12_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_13_ldv_param_18_1_default = ldv_malloc(sizeof(char));
  ldv_13_ldv_param_18_3_default = ldv_malloc(sizeof(long long));
  ldv_13_resource_file = ldv_malloc(sizeof(struct file));
  ldv_13_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_14_ldv_param_18_1_default = ldv_malloc(sizeof(char));
  ldv_14_ldv_param_18_3_default = ldv_malloc(sizeof(long long));
  ldv_14_resource_file = ldv_malloc(sizeof(struct file));
  ldv_14_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  }
  return;
}
}
void ldv_dispatch_deregister_16_1(struct platform_driver *arg0 )
{
  {
  {
  ldv_6_container_platform_driver = arg0;
  ldv_switch_automaton_state_6_8();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_6_17_4(void)
{
  {
  {
  ldv_switch_automaton_state_8_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_7_17_5(void)
{
  {
  {
  ldv_switch_automaton_state_9_1();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_3_17_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_6();
  ldv_switch_automaton_state_1_6();
  ldv_switch_automaton_state_2_6();
  ldv_switch_automaton_state_3_6();
  ldv_switch_automaton_state_4_6();
  ldv_switch_automaton_state_5_6();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_8_17_7(void)
{
  {
  {
  ldv_switch_automaton_state_10_5();
  ldv_switch_automaton_state_11_5();
  ldv_switch_automaton_state_12_5();
  ldv_switch_automaton_state_13_5();
  ldv_switch_automaton_state_14_5();
  }
  return;
}
}
void ldv_dispatch_pm_deregister_6_5(void)
{
  {
  {
  ldv_switch_automaton_state_7_1();
  }
  return;
}
}
void ldv_dispatch_pm_register_6_6(void)
{
  {
  {
  ldv_switch_automaton_state_7_29();
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct platform_driver *arg0 )
{
  {
  {
  ldv_6_container_platform_driver = arg0;
  ldv_switch_automaton_state_6_17();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_6_17_8(void)
{
  {
  {
  ldv_switch_automaton_state_8_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_7_17_9(void)
{
  {
  {
  ldv_switch_automaton_state_9_5();
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_17_10(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  ldv_switch_automaton_state_1_15();
  ldv_switch_automaton_state_2_15();
  ldv_switch_automaton_state_3_15();
  ldv_switch_automaton_state_4_15();
  ldv_switch_automaton_state_5_15();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_8_17_11(void)
{
  {
  {
  ldv_switch_automaton_state_10_14();
  ldv_switch_automaton_state_11_14();
  ldv_switch_automaton_state_12_14();
  ldv_switch_automaton_state_13_14();
  ldv_switch_automaton_state_14_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  si476x_radio_g_volatile_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  si476x_radio_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 )
{
  {
  {
  si476x_radio_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_frequency * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_frequency *arg3 )
{
  {
  {
  si476x_radio_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_hw_freq_seek * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_hw_freq_seek *arg3 )
{
  {
  {
  si476x_radio_s_hw_freq_seek(arg1, arg2, (struct v4l2_hw_freq_seek const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_dbg_register * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_dbg_register *arg3 )
{
  {
  {
  si476x_radio_s_register(arg1, arg2, (struct v4l2_dbg_register const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_16(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_tuner * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_tuner *arg3 )
{
  {
  {
  si476x_radio_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_17(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_18(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_frequency_band * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_frequency_band *arg3 )
{
  {
  {
  si476x_radio_enum_freq_bands(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_frequency * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_frequency *arg3 )
{
  {
  {
  si476x_radio_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_dbg_register * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_dbg_register *arg3 )
{
  {
  {
  si476x_radio_g_register(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_tuner * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_tuner *arg3 )
{
  {
  {
  si476x_radio_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_17(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_17 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_17 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_17 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_17 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_17 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_17 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_17 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_17 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_17 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_17 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_17 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_17 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_17 == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_6 == 9);
  ldv_EMGentry_exit_si476x_radio_driver_exit_17_2(ldv_17_exit_si476x_radio_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_17 = 15;
  }
  goto ldv_36239;
  case_3:
  {
  ldv_assume(ldv_statevar_6 == 9);
  ldv_EMGentry_exit_si476x_radio_driver_exit_17_2(ldv_17_exit_si476x_radio_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_17 = 15;
  }
  goto ldv_36239;
  case_4:
  {
  ldv_assume(ldv_statevar_8 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_6_17_4();
  ldv_statevar_17 = 2;
  }
  goto ldv_36239;
  case_5:
  {
  ldv_assume(ldv_statevar_9 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_7_17_5();
  ldv_statevar_17 = 4;
  }
  goto ldv_36239;
  case_6:
  {
  ldv_assume(((((ldv_statevar_0 == 7 || ldv_statevar_1 == 7) || ldv_statevar_2 == 7) || ldv_statevar_3 == 7) || ldv_statevar_4 == 7) || ldv_statevar_5 == 7);
  ldv_dispatch_deregister_file_operations_instance_3_17_6();
  ldv_statevar_17 = 5;
  }
  goto ldv_36239;
  case_7:
  {
  ldv_assume((((ldv_statevar_10 == 6 || ldv_statevar_11 == 6) || ldv_statevar_12 == 6) || ldv_statevar_13 == 6) || ldv_statevar_14 == 6);
  ldv_dispatch_deregister_io_instance_8_17_7();
  ldv_statevar_17 = 6;
  }
  goto ldv_36239;
  case_8:
  {
  ldv_assume(ldv_statevar_8 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_6_17_8();
  ldv_statevar_17 = 7;
  }
  goto ldv_36239;
  case_9:
  {
  ldv_assume(ldv_statevar_9 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_7_17_9();
  ldv_statevar_17 = 8;
  }
  goto ldv_36239;
  case_10:
  {
  ldv_assume(((((ldv_statevar_0 == 15 || ldv_statevar_1 == 15) || ldv_statevar_2 == 15) || ldv_statevar_3 == 15) || ldv_statevar_4 == 15) || ldv_statevar_5 == 15);
  ldv_dispatch_register_file_operations_instance_3_17_10();
  ldv_statevar_17 = 9;
  }
  goto ldv_36239;
  case_11:
  {
  ldv_assume((((ldv_statevar_10 == 14 || ldv_statevar_11 == 14) || ldv_statevar_12 == 14) || ldv_statevar_13 == 14) || ldv_statevar_14 == 14);
  ldv_dispatch_register_io_instance_8_17_11();
  ldv_statevar_17 = 10;
  }
  goto ldv_36239;
  case_12:
  {
  ldv_assume(ldv_17_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_17 = 3;
  } else {
    ldv_statevar_17 = 11;
  }
  goto ldv_36239;
  case_14:
  {
  ldv_assume(ldv_17_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_17 = 15;
  }
  goto ldv_36239;
  case_15:
  {
  ldv_assume(ldv_statevar_6 == 17);
  ldv_17_ret_default = ldv_EMGentry_init_si476x_radio_driver_init_17_15(ldv_17_init_si476x_radio_driver_init_default);
  ldv_17_ret_default = ldv_post_init(ldv_17_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_17 = 12;
  } else {
    ldv_statevar_17 = 14;
  }
  goto ldv_36239;
  switch_default: ;
  switch_break: ;
  }
  ldv_36239: ;
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
  ldv_statevar_17 = 15;
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 15;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 15;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 15;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 15;
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 15;
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  ldv_statevar_7 = 29;
  ldv_statevar_8 = 5;
  ldv_statevar_9 = 5;
  ldv_10_ret_default = 1;
  ldv_statevar_10 = 14;
  ldv_11_ret_default = 1;
  ldv_statevar_11 = 14;
  ldv_12_ret_default = 1;
  ldv_statevar_12 = 14;
  ldv_13_ret_default = 1;
  ldv_statevar_13 = 14;
  ldv_14_ret_default = 1;
  ldv_statevar_14 = 14;
  }
  ldv_36273:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_17((void *)0);
  }
  goto ldv_36256;
  case_1:
  {
  ldv_file_operations_file_operations_instance_0((void *)0);
  }
  goto ldv_36256;
  case_2:
  {
  ldv_file_operations_file_operations_instance_1((void *)0);
  }
  goto ldv_36256;
  case_3:
  {
  ldv_file_operations_file_operations_instance_2((void *)0);
  }
  goto ldv_36256;
  case_4:
  {
  ldv_file_operations_file_operations_instance_3((void *)0);
  }
  goto ldv_36256;
  case_5:
  {
  ldv_file_operations_file_operations_instance_4((void *)0);
  }
  goto ldv_36256;
  case_6:
  {
  ldv_file_operations_file_operations_instance_5((void *)0);
  }
  goto ldv_36256;
  case_7:
  {
  ldv_platform_platform_instance_6((void *)0);
  }
  goto ldv_36256;
  case_8:
  {
  ldv_platform_pm_ops_instance_7((void *)0);
  }
  goto ldv_36256;
  case_9:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_8((void *)0);
  }
  goto ldv_36256;
  case_10:
  {
  ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_9((void *)0);
  }
  goto ldv_36256;
  case_11:
  {
  ldv_v4l2_file_operations_io_instance_10((void *)0);
  }
  goto ldv_36256;
  case_12:
  {
  ldv_v4l2_file_operations_io_instance_11((void *)0);
  }
  goto ldv_36256;
  case_13:
  {
  ldv_v4l2_file_operations_io_instance_12((void *)0);
  }
  goto ldv_36256;
  case_14:
  {
  ldv_v4l2_file_operations_io_instance_13((void *)0);
  }
  goto ldv_36256;
  case_15:
  {
  ldv_v4l2_file_operations_io_instance_14((void *)0);
  }
  goto ldv_36256;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_36256: ;
  goto ldv_36273;
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
  goto ldv_36278;
  case_2:
  ldv_statevar_0 = 1;
  goto ldv_36278;
  case_3:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_36278;
  case_5:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_36278;
  case_7:
  {
  ldv_free((void *)ldv_0_resource_file);
  ldv_free((void *)ldv_0_resource_inode);
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  }
  goto ldv_36278;
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
  goto ldv_36278;
  case_11:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_36278;
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
  goto ldv_36278;
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
  goto ldv_36278;
  case_15: ;
  goto ldv_36278;
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
  goto ldv_36278;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_0 = 5;
  } else {
    ldv_statevar_0 = 23;
  }
  goto ldv_36278;
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
  goto ldv_36278;
  switch_default: ;
  switch_break: ;
  }
  ldv_36278: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
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
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_1 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_1 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 7;
  } else {
    ldv_statevar_1 = 12;
  }
  goto ldv_36296;
  case_2:
  ldv_statevar_1 = 1;
  goto ldv_36296;
  case_3:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_36296;
  case_5:
  {
  ldv_file_operations_instance_callback_1_5(ldv_1_callback_llseek, ldv_1_resource_file,
                                            ldv_1_ldv_param_5_1_default, ldv_1_ldv_param_5_2_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_36296;
  case_7:
  {
  ldv_free((void *)ldv_1_resource_file);
  ldv_free((void *)ldv_1_resource_inode);
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 15;
  }
  goto ldv_36296;
  case_9:
  {
  ldv_assume(ldv_1_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 7;
  } else {
    ldv_statevar_1 = 12;
  }
  goto ldv_36296;
  case_11:
  {
  ldv_assume(ldv_1_ret_default == 0);
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_36296;
  case_12:
  {
  ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                              ldv_1_resource_inode,
                                                              ldv_1_resource_file);
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_1 = 9;
  } else {
    ldv_statevar_1 = 11;
  }
  goto ldv_36296;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_1_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_1_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_1_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_1 = 7;
  } else {
    ldv_statevar_1 = 12;
  }
  goto ldv_36296;
  case_15: ;
  goto ldv_36296;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_1_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_36296;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_1 = 5;
  } else {
    ldv_statevar_1 = 23;
  }
  goto ldv_36296;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_1_22(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_22_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_22_3_default);
  ldv_free((void *)ldv_1_ldv_param_22_1_default);
  ldv_free((void *)ldv_1_ldv_param_22_3_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_36296;
  switch_default: ;
  switch_break: ;
  }
  ldv_36296: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
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
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 11) {
    goto case_11;
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
  if (ldv_statevar_2 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_2 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 7;
  } else {
    ldv_statevar_2 = 12;
  }
  goto ldv_36314;
  case_2:
  ldv_statevar_2 = 1;
  goto ldv_36314;
  case_3:
  {
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_36314;
  case_5:
  {
  ldv_file_operations_instance_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                            ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_36314;
  case_7:
  {
  ldv_free((void *)ldv_2_resource_file);
  ldv_free((void *)ldv_2_resource_inode);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 15;
  }
  goto ldv_36314;
  case_9:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 7;
  } else {
    ldv_statevar_2 = 12;
  }
  goto ldv_36314;
  case_11:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_36314;
  case_12:
  {
  ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                              ldv_2_resource_inode,
                                                              ldv_2_resource_file);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_36314;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_2_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_2_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_2 = 7;
  } else {
    ldv_statevar_2 = 12;
  }
  goto ldv_36314;
  case_15: ;
  goto ldv_36314;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_2_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_2_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_2_container_file_operations->write,
                                           ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                           ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_36314;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_2 = 5;
  } else {
    ldv_statevar_2 = 23;
  }
  goto ldv_36314;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_2_22(ldv_2_callback_read, ldv_2_resource_file,
                                             ldv_2_ldv_param_22_1_default, ldv_2_size_cnt_write_size,
                                             ldv_2_ldv_param_22_3_default);
  ldv_free((void *)ldv_2_ldv_param_22_1_default);
  ldv_free((void *)ldv_2_ldv_param_22_3_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_36314;
  switch_default: ;
  switch_break: ;
  }
  ldv_36314: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_3(void *arg0 )
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
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_3 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 15) {
    goto case_15;
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
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 7;
  } else {
    ldv_statevar_3 = 12;
  }
  goto ldv_36332;
  case_2:
  ldv_statevar_3 = 1;
  goto ldv_36332;
  case_3:
  {
  ldv_statevar_3 = ldv_switch_0();
  }
  goto ldv_36332;
  case_5:
  {
  ldv_file_operations_instance_callback_3_5(ldv_3_callback_llseek, ldv_3_resource_file,
                                            ldv_3_ldv_param_5_1_default, ldv_3_ldv_param_5_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_36332;
  case_7:
  {
  ldv_free((void *)ldv_3_resource_file);
  ldv_free((void *)ldv_3_resource_inode);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 15;
  }
  goto ldv_36332;
  case_9:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 7;
  } else {
    ldv_statevar_3 = 12;
  }
  goto ldv_36332;
  case_11:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_0();
  }
  goto ldv_36332;
  case_12:
  {
  ldv_3_ret_default = ldv_file_operations_instance_probe_3_12(ldv_3_container_file_operations->open,
                                                              ldv_3_resource_inode,
                                                              ldv_3_resource_file);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 9;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_36332;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_3_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_3 = 7;
  } else {
    ldv_statevar_3 = 12;
  }
  goto ldv_36332;
  case_15: ;
  goto ldv_36332;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_3_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_3_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_3_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_3_container_file_operations->write,
                                           ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                           ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_4_1_default);
  ldv_free((void *)ldv_3_ldv_param_4_3_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_36332;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_3 = 5;
  } else {
    ldv_statevar_3 = 23;
  }
  goto ldv_36332;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_3_22(ldv_3_callback_read, ldv_3_resource_file,
                                             ldv_3_ldv_param_22_1_default, ldv_3_size_cnt_write_size,
                                             ldv_3_ldv_param_22_3_default);
  ldv_free((void *)ldv_3_ldv_param_22_1_default);
  ldv_free((void *)ldv_3_ldv_param_22_3_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_36332;
  switch_default: ;
  switch_break: ;
  }
  ldv_36332: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_4(void *arg0 )
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
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_4 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_4 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_4 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_4 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_4 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 7;
  } else {
    ldv_statevar_4 = 12;
  }
  goto ldv_36350;
  case_2:
  ldv_statevar_4 = 1;
  goto ldv_36350;
  case_3:
  {
  ldv_statevar_4 = ldv_switch_0();
  }
  goto ldv_36350;
  case_5:
  {
  ldv_file_operations_instance_callback_4_5(ldv_4_callback_llseek, ldv_4_resource_file,
                                            ldv_4_ldv_param_5_1_default, ldv_4_ldv_param_5_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36350;
  case_7:
  {
  ldv_free((void *)ldv_4_resource_file);
  ldv_free((void *)ldv_4_resource_inode);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 15;
  }
  goto ldv_36350;
  case_9:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 7;
  } else {
    ldv_statevar_4 = 12;
  }
  goto ldv_36350;
  case_11:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_0();
  }
  goto ldv_36350;
  case_12:
  {
  ldv_4_ret_default = ldv_file_operations_instance_probe_4_12(ldv_4_container_file_operations->open,
                                                              ldv_4_resource_inode,
                                                              ldv_4_resource_file);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 9;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_36350;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_4_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_4_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_4_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_4 = 7;
  } else {
    ldv_statevar_4 = 12;
  }
  goto ldv_36350;
  case_15: ;
  goto ldv_36350;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_4_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_4_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_4_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_4_container_file_operations->write,
                                           ldv_4_resource_file, ldv_4_ldv_param_4_1_default,
                                           ldv_4_size_cnt_write_size, ldv_4_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_4_ldv_param_4_1_default);
  ldv_free((void *)ldv_4_ldv_param_4_3_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36350;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_4 = 5;
  } else {
    ldv_statevar_4 = 23;
  }
  goto ldv_36350;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_4_22(ldv_4_callback_read, ldv_4_resource_file,
                                             ldv_4_ldv_param_22_1_default, ldv_4_size_cnt_write_size,
                                             ldv_4_ldv_param_22_3_default);
  ldv_free((void *)ldv_4_ldv_param_22_1_default);
  ldv_free((void *)ldv_4_ldv_param_22_3_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36350;
  switch_default: ;
  switch_break: ;
  }
  ldv_36350: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_5(void *arg0 )
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
  if (ldv_statevar_5 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_5 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_5 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_5 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_5 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_5 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_5 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_5 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_5 == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 7;
  } else {
    ldv_statevar_5 = 12;
  }
  goto ldv_36368;
  case_2:
  ldv_statevar_5 = 1;
  goto ldv_36368;
  case_3:
  {
  ldv_statevar_5 = ldv_switch_0();
  }
  goto ldv_36368;
  case_5:
  {
  ldv_file_operations_instance_callback_5_5(ldv_5_callback_llseek, ldv_5_resource_file,
                                            ldv_5_ldv_param_5_1_default, ldv_5_ldv_param_5_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_36368;
  case_7:
  {
  ldv_free((void *)ldv_5_resource_file);
  ldv_free((void *)ldv_5_resource_inode);
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 15;
  }
  goto ldv_36368;
  case_9:
  {
  ldv_assume(ldv_5_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 7;
  } else {
    ldv_statevar_5 = 12;
  }
  goto ldv_36368;
  case_11:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_statevar_5 = ldv_switch_0();
  }
  goto ldv_36368;
  case_12:
  {
  ldv_5_ret_default = ldv_file_operations_instance_probe_5_12(ldv_5_container_file_operations->open,
                                                              ldv_5_resource_inode,
                                                              ldv_5_resource_file);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_5 = 9;
  } else {
    ldv_statevar_5 = 11;
  }
  goto ldv_36368;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_5_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_5_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_5_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_5 = 7;
  } else {
    ldv_statevar_5 = 12;
  }
  goto ldv_36368;
  case_15: ;
  goto ldv_36368;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_5_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_5_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_5_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_5_container_file_operations->write,
                                           ldv_5_resource_file, ldv_5_ldv_param_4_1_default,
                                           ldv_5_size_cnt_write_size, ldv_5_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_5_ldv_param_4_1_default);
  ldv_free((void *)ldv_5_ldv_param_4_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_36368;
  case_20:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    ldv_statevar_5 = 5;
  } else {
    ldv_statevar_5 = 23;
  }
  goto ldv_36368;
  case_23:
  {
  tmp___9 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_22_1_default = (char *)tmp___9;
  tmp___10 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_22_3_default = (long long *)tmp___10;
  ldv_file_operations_instance_callback_5_22(ldv_5_callback_read, ldv_5_resource_file,
                                             ldv_5_ldv_param_22_1_default, ldv_5_size_cnt_write_size,
                                             ldv_5_ldv_param_22_3_default);
  ldv_free((void *)ldv_5_ldv_param_22_1_default);
  ldv_free((void *)ldv_5_ldv_param_22_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_36368;
  switch_default: ;
  switch_break: ;
  }
  ldv_36368: ;
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
  si476x_radio_fops_read(arg1, arg2, arg3, arg4);
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
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  si476x_radio_read_agc_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  si476x_radio_read_rds_blckcnt_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  si476x_radio_read_rsq_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  si476x_radio_read_rsq_primary_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  si476x_radio_read_acf_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
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
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_4_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_5_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
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
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_4_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_5_4(long (*arg0)(struct file * , char * ,
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
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
void ldv_io_instance_callback_10_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  si476x_radio_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_10_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  si476x_radio_read_acf_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_10_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_10_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_11_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  si476x_radio_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_11_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  si476x_radio_read_agc_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_11_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_11_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_12_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  si476x_radio_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_12_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  si476x_radio_read_rds_blckcnt_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_12_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_12_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_13_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  si476x_radio_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_13_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  si476x_radio_read_rsq_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_13_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_13_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_14_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  si476x_radio_fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_14_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                 long long * ) , struct file *arg1 ,
                                    char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  si476x_radio_read_rsq_primary_blob(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_14_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_14_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
int ldv_io_instance_probe_10_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_fops_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_11_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_fops_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_12_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_fops_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_13_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_fops_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_14_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_fops_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_10_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  si476x_radio_fops_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_11_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  si476x_radio_fops_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_12_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  si476x_radio_fops_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_13_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  si476x_radio_fops_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_14_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  si476x_radio_fops_release(arg1);
  }
  return;
}
}
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_16_platform_driver_platform_driver ;
  {
  {
  ldv_16_platform_driver_platform_driver = arg1;
  ldv_assume(ldv_statevar_6 == 9);
  ldv_dispatch_deregister_16_1(ldv_16_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_6_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = si476x_radio_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_6_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  si476x_radio_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  if (ldv_statevar_6 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_6 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_6 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_6 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_6 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_6 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_6 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_6 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_6 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_6 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_6 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_6 == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 14;
  }
  goto ldv_36841;
  case_3:
  {
  ldv_platform_instance_release_6_3(ldv_6_container_platform_driver->remove, ldv_6_resource_platform_device);
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 1;
  }
  goto ldv_36841;
  case_4:
  {
  ldv_statevar_6 = ldv_switch_1();
  }
  goto ldv_36841;
  case_5:
  {
  ldv_assume(ldv_statevar_7 == 1);
  ldv_dispatch_pm_deregister_6_5();
  ldv_statevar_6 = 4;
  }
  goto ldv_36841;
  case_6:
  {
  ldv_assume(ldv_statevar_7 == 29);
  ldv_dispatch_pm_register_6_6();
  ldv_statevar_6 = 5;
  }
  goto ldv_36841;
  case_7:
  ldv_statevar_6 = 4;
  goto ldv_36841;
  case_9:
  {
  ldv_free((void *)ldv_6_resource_platform_device);
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  }
  goto ldv_36841;
  case_11:
  {
  ldv_assume(ldv_6_probed_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 14;
  }
  goto ldv_36841;
  case_13:
  {
  ldv_assume(ldv_6_probed_default == 0);
  ldv_statevar_6 = ldv_switch_1();
  }
  goto ldv_36841;
  case_14:
  {
  ldv_pre_probe();
  ldv_6_probed_default = ldv_platform_instance_probe_6_14(ldv_6_container_platform_driver->probe,
                                                          ldv_6_resource_platform_device);
  ldv_6_probed_default = ldv_post_probe(ldv_6_probed_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_6 = 11;
  } else {
    ldv_statevar_6 = 13;
  }
  goto ldv_36841;
  case_16:
  {
  tmp___2 = ldv_xmalloc(1432UL);
  ldv_6_resource_platform_device = (struct platform_device *)tmp___2;
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    ldv_statevar_6 = 9;
  } else {
    ldv_statevar_6 = 14;
  }
  goto ldv_36841;
  case_17: ;
  goto ldv_36841;
  switch_default: ;
  switch_break: ;
  }
  ldv_36841: ;
  return;
}
}
void ldv_platform_pm_ops_instance_7(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  if (ldv_statevar_7 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_7 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_7 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_7 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_7 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_7 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_7 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_7 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_7 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_7 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_7 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_7 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_7 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_7 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_7 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_7 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_7 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_7 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_7 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_7 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_7 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_7 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_7 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_7 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_7 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_7 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_7 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_7 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_7 == 29) {
    goto case_29;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36858;
  case_2:
  {
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_36858;
  case_3: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_7_3(ldv_7_pm_ops_dev_pm_ops->complete, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 2;
  goto ldv_36858;
  case_4: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->restore != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_7_4(ldv_7_pm_ops_dev_pm_ops->restore, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 3;
  goto ldv_36858;
  case_5: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_noirq_7_5(ldv_7_pm_ops_dev_pm_ops->restore_noirq,
                                          ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 4;
  goto ldv_36858;
  case_6: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_noirq_7_6(ldv_7_pm_ops_dev_pm_ops->poweroff_noirq,
                                           ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 5;
  goto ldv_36858;
  case_7: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_early_7_7(ldv_7_pm_ops_dev_pm_ops->restore_early,
                                          ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 4;
  goto ldv_36858;
  case_8: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_late_7_8(ldv_7_pm_ops_dev_pm_ops->poweroff_late,
                                          ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 7;
  goto ldv_36858;
  case_9: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->poweroff != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_7_9(ldv_7_pm_ops_dev_pm_ops->poweroff, ldv_7_device_device);
    }
  } else {
  }
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 8;
  }
  goto ldv_36858;
  case_10: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->thaw != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_7_10(ldv_7_pm_ops_dev_pm_ops->thaw, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 3;
  goto ldv_36858;
  case_11: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_noirq_7_11(ldv_7_pm_ops_dev_pm_ops->thaw_noirq, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 10;
  goto ldv_36858;
  case_12: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_noirq_7_12(ldv_7_pm_ops_dev_pm_ops->freeze_noirq, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 11;
  goto ldv_36858;
  case_13: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_early_7_13(ldv_7_pm_ops_dev_pm_ops->thaw_early, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 10;
  goto ldv_36858;
  case_14: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_late_7_14(ldv_7_pm_ops_dev_pm_ops->freeze_late, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 13;
  goto ldv_36858;
  case_15: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->freeze != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_7_15(ldv_7_pm_ops_dev_pm_ops->freeze, ldv_7_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_7 = 12;
  } else {
    ldv_statevar_7 = 14;
  }
  goto ldv_36858;
  case_16: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_7_16(ldv_7_pm_ops_dev_pm_ops->resume, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 3;
  goto ldv_36858;
  case_17: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_early_7_17(ldv_7_pm_ops_dev_pm_ops->resume_early, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 16;
  goto ldv_36858;
  case_18: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_late_7_18(ldv_7_pm_ops_dev_pm_ops->suspend_late, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 17;
  goto ldv_36858;
  case_19: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_noirq_7_19(ldv_7_pm_ops_dev_pm_ops->resume_noirq, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 16;
  goto ldv_36858;
  case_20: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_noirq_7_20(ldv_7_pm_ops_dev_pm_ops->suspend_noirq,
                                           ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 19;
  goto ldv_36858;
  case_21: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_7_21(ldv_7_pm_ops_dev_pm_ops->suspend, ldv_7_device_device);
    }
  } else {
  }
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_7 = 18;
  } else {
    ldv_statevar_7 = 20;
  }
  goto ldv_36858;
  case_22: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_7_22(ldv_7_pm_ops_dev_pm_ops->prepare, ldv_7_device_device);
    }
  } else {
  }
  {
  ldv_statevar_7 = ldv_switch_3();
  }
  goto ldv_36858;
  case_23:
  {
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_36858;
  case_24: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_7_24(ldv_7_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 23;
  goto ldv_36858;
  case_25: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_7_25(ldv_7_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 24;
  goto ldv_36858;
  case_26:
  {
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_36858;
  case_27: ;
  if ((unsigned long )ldv_7_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_7_27(ldv_7_pm_ops_dev_pm_ops->runtime_idle, ldv_7_device_device);
    }
  } else {
  }
  ldv_statevar_7 = 26;
  goto ldv_36858;
  case_28:
  {
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_36858;
  case_29: ;
  goto ldv_36858;
  switch_default: ;
  switch_break: ;
  }
  ldv_36858: ;
  return;
}
}
void ldv_pm_ops_instance_complete_7_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_7_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_7_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_7_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_7_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_7_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_7_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_7_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_7_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_7_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_7_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_7_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_7_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_7_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_7_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_7_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_7_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_7_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_7_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_7_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_7_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_7_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_7_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_8(void *arg0 )
{
  {
  {
  if (ldv_statevar_8 == 1) {
    goto case_1;
  } else {
  }
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
  if (ldv_statevar_8 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_37007;
  case_2:
  {
  ldv_statevar_8 = ldv_switch_4();
  }
  goto ldv_37007;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_g_volatile_ctrl, ldv_8_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_8 = 2;
  }
  goto ldv_37007;
  case_4:
  {
  ldv_statevar_8 = ldv_switch_4();
  }
  goto ldv_37007;
  case_5: ;
  goto ldv_37007;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_8_7(ldv_8_callback_s_ctrl, ldv_8_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_8 = 2;
  }
  goto ldv_37007;
  switch_default: ;
  switch_break: ;
  }
  ldv_37007: ;
  return;
}
}
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_9(void *arg0 )
{
  void *tmp ;
  {
  {
  if (ldv_statevar_9 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_9 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_9 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_9 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_9 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_9 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_9 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_9 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_9 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_9 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_9 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_9 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_9 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_9 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_9 == 18) {
    goto case_18;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_37018;
  case_2:
  {
  ldv_statevar_9 = ldv_switch_5();
  }
  goto ldv_37018;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_vidioc_enum_freq_bands,
                                               ldv_9_container_struct_file_ptr, (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                               ldv_9_container_struct_v4l2_frequency_band_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_4:
  {
  ldv_statevar_9 = ldv_switch_5();
  }
  goto ldv_37018;
  case_5: ;
  goto ldv_37018;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_9_7(ldv_9_callback_vidioc_g_frequency,
                                               ldv_9_container_struct_file_ptr, (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                               ldv_9_container_struct_v4l2_frequency_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_9_8(ldv_9_callback_vidioc_g_register, ldv_9_container_struct_file_ptr,
                                               (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                               ldv_9_container_struct_v4l2_dbg_register_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_9_9(ldv_9_callback_vidioc_g_tuner, ldv_9_container_struct_file_ptr,
                                               (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                               ldv_9_container_struct_v4l2_tuner_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_11:
  {
  tmp = ldv_xmalloc(104UL);
  ldv_9_ldv_param_10_2_default = (struct v4l2_capability *)tmp;
  ldv_dummy_resourceless_instance_callback_9_10(ldv_9_callback_vidioc_querycap, ldv_9_container_struct_file_ptr,
                                                (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                                ldv_9_ldv_param_10_2_default);
  ldv_free((void *)ldv_9_ldv_param_10_2_default);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_9_13(ldv_9_callback_vidioc_s_frequency,
                                                ldv_9_container_struct_file_ptr, (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                                ldv_9_container_struct_v4l2_frequency_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_9_14(ldv_9_callback_vidioc_s_hw_freq_seek,
                                                ldv_9_container_struct_file_ptr, (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                                ldv_9_container_struct_v4l2_hw_freq_seek_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_9_15(ldv_9_callback_vidioc_s_register,
                                                ldv_9_container_struct_file_ptr, (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                                ldv_9_container_struct_v4l2_dbg_register_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_9_16(ldv_9_callback_vidioc_s_tuner, ldv_9_container_struct_file_ptr,
                                                (void *)ldv_9_container_struct_v4l2_capability_ptr,
                                                ldv_9_container_struct_v4l2_tuner_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_9_17(ldv_9_callback_vidioc_subscribe_event,
                                                ldv_9_container_struct_v4l2_fh_ptr,
                                                ldv_9_container_struct_v4l2_event_subscription_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_9_18(ldv_9_callback_vidioc_unsubscribe_event,
                                                ldv_9_container_struct_v4l2_fh_ptr,
                                                ldv_9_container_struct_v4l2_event_subscription_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_37018;
  switch_default: ;
  switch_break: ;
  }
  ldv_37018: ;
  return;
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
  return (6);
  case_2: ;
  return (7);
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
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (22);
  case_2: ;
  return (25);
  case_3: ;
  return (27);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_3(void)
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
  return (9);
  case_1: ;
  return (15);
  case_2: ;
  return (21);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_4(void)
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
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_5(void)
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
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  case_3: ;
  return (8);
  case_4: ;
  return (9);
  case_5: ;
  return (11);
  case_6: ;
  return (13);
  case_7: ;
  return (14);
  case_8: ;
  return (15);
  case_9: ;
  return (16);
  case_10: ;
  return (17);
  case_11: ;
  return (18);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_6(void)
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
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  case_4: ;
  return (22);
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
void ldv_switch_automaton_state_10_14(void)
{
  {
  ldv_statevar_10 = 13;
  return;
}
}
void ldv_switch_automaton_state_10_5(void)
{
  {
  ldv_10_ret_default = 1;
  ldv_statevar_10 = 14;
  return;
}
}
void ldv_switch_automaton_state_11_14(void)
{
  {
  ldv_statevar_11 = 13;
  return;
}
}
void ldv_switch_automaton_state_11_5(void)
{
  {
  ldv_11_ret_default = 1;
  ldv_statevar_11 = 14;
  return;
}
}
void ldv_switch_automaton_state_12_14(void)
{
  {
  ldv_statevar_12 = 13;
  return;
}
}
void ldv_switch_automaton_state_12_5(void)
{
  {
  ldv_12_ret_default = 1;
  ldv_statevar_12 = 14;
  return;
}
}
void ldv_switch_automaton_state_13_14(void)
{
  {
  ldv_statevar_13 = 13;
  return;
}
}
void ldv_switch_automaton_state_13_5(void)
{
  {
  ldv_13_ret_default = 1;
  ldv_statevar_13 = 14;
  return;
}
}
void ldv_switch_automaton_state_14_14(void)
{
  {
  ldv_statevar_14 = 13;
  return;
}
}
void ldv_switch_automaton_state_14_5(void)
{
  {
  ldv_14_ret_default = 1;
  ldv_statevar_14 = 14;
  return;
}
}
void ldv_switch_automaton_state_1_15(void)
{
  {
  ldv_statevar_1 = 14;
  return;
}
}
void ldv_switch_automaton_state_1_6(void)
{
  {
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 15;
  return;
}
}
void ldv_switch_automaton_state_2_15(void)
{
  {
  ldv_statevar_2 = 14;
  return;
}
}
void ldv_switch_automaton_state_2_6(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 15;
  return;
}
}
void ldv_switch_automaton_state_3_15(void)
{
  {
  ldv_statevar_3 = 14;
  return;
}
}
void ldv_switch_automaton_state_3_6(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 15;
  return;
}
}
void ldv_switch_automaton_state_4_15(void)
{
  {
  ldv_statevar_4 = 14;
  return;
}
}
void ldv_switch_automaton_state_4_6(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 15;
  return;
}
}
void ldv_switch_automaton_state_5_15(void)
{
  {
  ldv_statevar_5 = 14;
  return;
}
}
void ldv_switch_automaton_state_5_6(void)
{
  {
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 15;
  return;
}
}
void ldv_switch_automaton_state_6_17(void)
{
  {
  ldv_statevar_6 = 16;
  return;
}
}
void ldv_switch_automaton_state_6_8(void)
{
  {
  ldv_6_probed_default = 1;
  ldv_statevar_6 = 17;
  return;
}
}
void ldv_switch_automaton_state_7_1(void)
{
  {
  ldv_statevar_7 = 29;
  return;
}
}
void ldv_switch_automaton_state_7_29(void)
{
  {
  ldv_statevar_7 = 28;
  return;
}
}
void ldv_switch_automaton_state_8_1(void)
{
  {
  ldv_statevar_8 = 5;
  return;
}
}
void ldv_switch_automaton_state_8_5(void)
{
  {
  ldv_statevar_8 = 4;
  return;
}
}
void ldv_switch_automaton_state_9_1(void)
{
  {
  ldv_statevar_9 = 5;
  return;
}
}
void ldv_switch_automaton_state_9_5(void)
{
  {
  ldv_statevar_9 = 4;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_10(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_10 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_10 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_10 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_10 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_10 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_10 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_10 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_10 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_10 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_10 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_10 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_10 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_10 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_10 = 6;
  } else {
    ldv_statevar_10 = 11;
  }
  goto ldv_37152;
  case_2:
  {
  ldv_io_instance_release_10_2(ldv_10_container_v4l2_file_operations->release, ldv_10_resource_file);
  ldv_statevar_10 = 1;
  }
  goto ldv_37152;
  case_3:
  {
  ldv_statevar_10 = ldv_switch_6();
  }
  goto ldv_37152;
  case_4:
  {
  ldv_io_instance_callback_10_4(ldv_10_callback_func_1_ptr, ldv_10_resource_struct_video_device);
  ldv_statevar_10 = 3;
  }
  goto ldv_37152;
  case_6:
  {
  ldv_free((void *)ldv_10_resource_file);
  ldv_free((void *)ldv_10_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_10_resource_struct_video_device);
  ldv_10_ret_default = 1;
  ldv_statevar_10 = 14;
  }
  goto ldv_37152;
  case_8:
  {
  ldv_assume(ldv_10_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_10 = 6;
  } else {
    ldv_statevar_10 = 11;
  }
  goto ldv_37152;
  case_10:
  {
  ldv_assume(ldv_10_ret_default == 0);
  ldv_statevar_10 = ldv_switch_6();
  }
  goto ldv_37152;
  case_11:
  {
  ldv_10_ret_default = ldv_io_instance_probe_10_11(ldv_10_container_v4l2_file_operations->open,
                                                   ldv_10_resource_file);
  ldv_10_ret_default = ldv_filter_err_code(ldv_10_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_10 = 8;
  } else {
    ldv_statevar_10 = 10;
  }
  goto ldv_37152;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_10_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_10_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(1808UL);
  ldv_10_resource_struct_video_device = (struct video_device *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_10 = 6;
  } else {
    ldv_statevar_10 = 11;
  }
  goto ldv_37152;
  case_14: ;
  goto ldv_37152;
  case_17:
  {
  ldv_io_instance_callback_10_17(ldv_10_callback_poll, ldv_10_resource_file, ldv_10_resource_struct_poll_table_struct_ptr);
  ldv_statevar_10 = 3;
  }
  goto ldv_37152;
  case_19:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_10_ldv_param_18_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_10_ldv_param_18_3_default = (long long *)tmp___7;
  ldv_io_instance_callback_10_18(ldv_10_callback_read, ldv_10_resource_file, ldv_10_ldv_param_18_1_default,
                                 ldv_10_ldv_param_18_2_default, ldv_10_ldv_param_18_3_default);
  ldv_free((void *)ldv_10_ldv_param_18_1_default);
  ldv_free((void *)ldv_10_ldv_param_18_3_default);
  ldv_statevar_10 = 3;
  }
  goto ldv_37152;
  case_22:
  {
  ldv_io_instance_callback_10_21(ldv_10_callback_unlocked_ioctl, ldv_10_resource_file,
                                 ldv_10_ldv_param_21_1_default, ldv_10_ldv_param_21_2_default);
  ldv_statevar_10 = 3;
  }
  goto ldv_37152;
  switch_default: ;
  switch_break: ;
  }
  ldv_37152: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_11(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_11 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_11 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_11 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_11 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_11 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_11 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_11 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_11 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_11 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_11 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_11 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_11 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_11 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_11 = 6;
  } else {
    ldv_statevar_11 = 11;
  }
  goto ldv_37170;
  case_2:
  {
  ldv_io_instance_release_11_2(ldv_11_container_v4l2_file_operations->release, ldv_11_resource_file);
  ldv_statevar_11 = 1;
  }
  goto ldv_37170;
  case_3:
  {
  ldv_statevar_11 = ldv_switch_6();
  }
  goto ldv_37170;
  case_4:
  {
  ldv_io_instance_callback_11_4(ldv_11_callback_func_1_ptr, ldv_11_resource_struct_video_device);
  ldv_statevar_11 = 3;
  }
  goto ldv_37170;
  case_6:
  {
  ldv_free((void *)ldv_11_resource_file);
  ldv_free((void *)ldv_11_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_11_resource_struct_video_device);
  ldv_11_ret_default = 1;
  ldv_statevar_11 = 14;
  }
  goto ldv_37170;
  case_8:
  {
  ldv_assume(ldv_11_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_11 = 6;
  } else {
    ldv_statevar_11 = 11;
  }
  goto ldv_37170;
  case_10:
  {
  ldv_assume(ldv_11_ret_default == 0);
  ldv_statevar_11 = ldv_switch_6();
  }
  goto ldv_37170;
  case_11:
  {
  ldv_11_ret_default = ldv_io_instance_probe_11_11(ldv_11_container_v4l2_file_operations->open,
                                                   ldv_11_resource_file);
  ldv_11_ret_default = ldv_filter_err_code(ldv_11_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_11 = 8;
  } else {
    ldv_statevar_11 = 10;
  }
  goto ldv_37170;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_11_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_11_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(1808UL);
  ldv_11_resource_struct_video_device = (struct video_device *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_11 = 6;
  } else {
    ldv_statevar_11 = 11;
  }
  goto ldv_37170;
  case_14: ;
  goto ldv_37170;
  case_17:
  {
  ldv_io_instance_callback_11_17(ldv_11_callback_poll, ldv_11_resource_file, ldv_11_resource_struct_poll_table_struct_ptr);
  ldv_statevar_11 = 3;
  }
  goto ldv_37170;
  case_19:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_11_ldv_param_18_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_11_ldv_param_18_3_default = (long long *)tmp___7;
  ldv_io_instance_callback_11_18(ldv_11_callback_read, ldv_11_resource_file, ldv_11_ldv_param_18_1_default,
                                 ldv_11_ldv_param_18_2_default, ldv_11_ldv_param_18_3_default);
  ldv_free((void *)ldv_11_ldv_param_18_1_default);
  ldv_free((void *)ldv_11_ldv_param_18_3_default);
  ldv_statevar_11 = 3;
  }
  goto ldv_37170;
  case_22:
  {
  ldv_io_instance_callback_11_21(ldv_11_callback_unlocked_ioctl, ldv_11_resource_file,
                                 ldv_11_ldv_param_21_1_default, ldv_11_ldv_param_21_2_default);
  ldv_statevar_11 = 3;
  }
  goto ldv_37170;
  switch_default: ;
  switch_break: ;
  }
  ldv_37170: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_12(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_12 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_12 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_12 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_12 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_12 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_12 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_12 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_12 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_12 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_12 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_12 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_12 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_12 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_12 = 6;
  } else {
    ldv_statevar_12 = 11;
  }
  goto ldv_37188;
  case_2:
  {
  ldv_io_instance_release_12_2(ldv_12_container_v4l2_file_operations->release, ldv_12_resource_file);
  ldv_statevar_12 = 1;
  }
  goto ldv_37188;
  case_3:
  {
  ldv_statevar_12 = ldv_switch_6();
  }
  goto ldv_37188;
  case_4:
  {
  ldv_io_instance_callback_12_4(ldv_12_callback_func_1_ptr, ldv_12_resource_struct_video_device);
  ldv_statevar_12 = 3;
  }
  goto ldv_37188;
  case_6:
  {
  ldv_free((void *)ldv_12_resource_file);
  ldv_free((void *)ldv_12_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_12_resource_struct_video_device);
  ldv_12_ret_default = 1;
  ldv_statevar_12 = 14;
  }
  goto ldv_37188;
  case_8:
  {
  ldv_assume(ldv_12_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_12 = 6;
  } else {
    ldv_statevar_12 = 11;
  }
  goto ldv_37188;
  case_10:
  {
  ldv_assume(ldv_12_ret_default == 0);
  ldv_statevar_12 = ldv_switch_6();
  }
  goto ldv_37188;
  case_11:
  {
  ldv_12_ret_default = ldv_io_instance_probe_12_11(ldv_12_container_v4l2_file_operations->open,
                                                   ldv_12_resource_file);
  ldv_12_ret_default = ldv_filter_err_code(ldv_12_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_12 = 8;
  } else {
    ldv_statevar_12 = 10;
  }
  goto ldv_37188;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_12_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_12_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(1808UL);
  ldv_12_resource_struct_video_device = (struct video_device *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_12 = 6;
  } else {
    ldv_statevar_12 = 11;
  }
  goto ldv_37188;
  case_14: ;
  goto ldv_37188;
  case_17:
  {
  ldv_io_instance_callback_12_17(ldv_12_callback_poll, ldv_12_resource_file, ldv_12_resource_struct_poll_table_struct_ptr);
  ldv_statevar_12 = 3;
  }
  goto ldv_37188;
  case_19:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_12_ldv_param_18_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_12_ldv_param_18_3_default = (long long *)tmp___7;
  ldv_io_instance_callback_12_18(ldv_12_callback_read, ldv_12_resource_file, ldv_12_ldv_param_18_1_default,
                                 ldv_12_ldv_param_18_2_default, ldv_12_ldv_param_18_3_default);
  ldv_free((void *)ldv_12_ldv_param_18_1_default);
  ldv_free((void *)ldv_12_ldv_param_18_3_default);
  ldv_statevar_12 = 3;
  }
  goto ldv_37188;
  case_22:
  {
  ldv_io_instance_callback_12_21(ldv_12_callback_unlocked_ioctl, ldv_12_resource_file,
                                 ldv_12_ldv_param_21_1_default, ldv_12_ldv_param_21_2_default);
  ldv_statevar_12 = 3;
  }
  goto ldv_37188;
  switch_default: ;
  switch_break: ;
  }
  ldv_37188: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_13(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_13 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_13 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_13 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_13 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_13 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_13 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_13 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_13 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_13 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_13 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_13 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_13 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_13 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_13 = 6;
  } else {
    ldv_statevar_13 = 11;
  }
  goto ldv_37206;
  case_2:
  {
  ldv_io_instance_release_13_2(ldv_13_container_v4l2_file_operations->release, ldv_13_resource_file);
  ldv_statevar_13 = 1;
  }
  goto ldv_37206;
  case_3:
  {
  ldv_statevar_13 = ldv_switch_6();
  }
  goto ldv_37206;
  case_4:
  {
  ldv_io_instance_callback_13_4(ldv_13_callback_func_1_ptr, ldv_13_resource_struct_video_device);
  ldv_statevar_13 = 3;
  }
  goto ldv_37206;
  case_6:
  {
  ldv_free((void *)ldv_13_resource_file);
  ldv_free((void *)ldv_13_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_13_resource_struct_video_device);
  ldv_13_ret_default = 1;
  ldv_statevar_13 = 14;
  }
  goto ldv_37206;
  case_8:
  {
  ldv_assume(ldv_13_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_13 = 6;
  } else {
    ldv_statevar_13 = 11;
  }
  goto ldv_37206;
  case_10:
  {
  ldv_assume(ldv_13_ret_default == 0);
  ldv_statevar_13 = ldv_switch_6();
  }
  goto ldv_37206;
  case_11:
  {
  ldv_13_ret_default = ldv_io_instance_probe_13_11(ldv_13_container_v4l2_file_operations->open,
                                                   ldv_13_resource_file);
  ldv_13_ret_default = ldv_filter_err_code(ldv_13_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_13 = 8;
  } else {
    ldv_statevar_13 = 10;
  }
  goto ldv_37206;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_13_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_13_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(1808UL);
  ldv_13_resource_struct_video_device = (struct video_device *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_13 = 6;
  } else {
    ldv_statevar_13 = 11;
  }
  goto ldv_37206;
  case_14: ;
  goto ldv_37206;
  case_17:
  {
  ldv_io_instance_callback_13_17(ldv_13_callback_poll, ldv_13_resource_file, ldv_13_resource_struct_poll_table_struct_ptr);
  ldv_statevar_13 = 3;
  }
  goto ldv_37206;
  case_19:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_13_ldv_param_18_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_13_ldv_param_18_3_default = (long long *)tmp___7;
  ldv_io_instance_callback_13_18(ldv_13_callback_read, ldv_13_resource_file, ldv_13_ldv_param_18_1_default,
                                 ldv_13_ldv_param_18_2_default, ldv_13_ldv_param_18_3_default);
  ldv_free((void *)ldv_13_ldv_param_18_1_default);
  ldv_free((void *)ldv_13_ldv_param_18_3_default);
  ldv_statevar_13 = 3;
  }
  goto ldv_37206;
  case_22:
  {
  ldv_io_instance_callback_13_21(ldv_13_callback_unlocked_ioctl, ldv_13_resource_file,
                                 ldv_13_ldv_param_21_1_default, ldv_13_ldv_param_21_2_default);
  ldv_statevar_13 = 3;
  }
  goto ldv_37206;
  switch_default: ;
  switch_break: ;
  }
  ldv_37206: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_14(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  {
  {
  if (ldv_statevar_14 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_14 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_14 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_14 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_14 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_14 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_14 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_14 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_14 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_14 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_14 == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_14 = 6;
  } else {
    ldv_statevar_14 = 11;
  }
  goto ldv_37224;
  case_2:
  {
  ldv_io_instance_release_14_2(ldv_14_container_v4l2_file_operations->release, ldv_14_resource_file);
  ldv_statevar_14 = 1;
  }
  goto ldv_37224;
  case_3:
  {
  ldv_statevar_14 = ldv_switch_6();
  }
  goto ldv_37224;
  case_4:
  {
  ldv_io_instance_callback_14_4(ldv_14_callback_func_1_ptr, ldv_14_resource_struct_video_device);
  ldv_statevar_14 = 3;
  }
  goto ldv_37224;
  case_6:
  {
  ldv_free((void *)ldv_14_resource_file);
  ldv_free((void *)ldv_14_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_14_resource_struct_video_device);
  ldv_14_ret_default = 1;
  ldv_statevar_14 = 14;
  }
  goto ldv_37224;
  case_8:
  {
  ldv_assume(ldv_14_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_14 = 6;
  } else {
    ldv_statevar_14 = 11;
  }
  goto ldv_37224;
  case_10:
  {
  ldv_assume(ldv_14_ret_default == 0);
  ldv_statevar_14 = ldv_switch_6();
  }
  goto ldv_37224;
  case_11:
  {
  ldv_14_ret_default = ldv_io_instance_probe_14_11(ldv_14_container_v4l2_file_operations->open,
                                                   ldv_14_resource_file);
  ldv_14_ret_default = ldv_filter_err_code(ldv_14_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_14 = 8;
  } else {
    ldv_statevar_14 = 10;
  }
  goto ldv_37224;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_14_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_14_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(1808UL);
  ldv_14_resource_struct_video_device = (struct video_device *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_14 = 6;
  } else {
    ldv_statevar_14 = 11;
  }
  goto ldv_37224;
  case_14: ;
  goto ldv_37224;
  case_17:
  {
  ldv_io_instance_callback_14_17(ldv_14_callback_poll, ldv_14_resource_file, ldv_14_resource_struct_poll_table_struct_ptr);
  ldv_statevar_14 = 3;
  }
  goto ldv_37224;
  case_19:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_14_ldv_param_18_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_14_ldv_param_18_3_default = (long long *)tmp___7;
  ldv_io_instance_callback_14_18(ldv_14_callback_read, ldv_14_resource_file, ldv_14_ldv_param_18_1_default,
                                 ldv_14_ldv_param_18_2_default, ldv_14_ldv_param_18_3_default);
  ldv_free((void *)ldv_14_ldv_param_18_1_default);
  ldv_free((void *)ldv_14_ldv_param_18_3_default);
  ldv_statevar_14 = 3;
  }
  goto ldv_37224;
  case_22:
  {
  ldv_io_instance_callback_14_21(ldv_14_callback_unlocked_ioctl, ldv_14_resource_file,
                                 ldv_14_ldv_param_21_1_default, ldv_14_ldv_param_21_2_default);
  ldv_statevar_14 = 3;
  }
  goto ldv_37224;
  switch_default: ;
  switch_break: ;
  }
  ldv_37224: ;
  return;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
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
static void *ldv_dev_get_drvdata_10(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_11(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_15(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_16(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_23(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_cmd_lock_of_si476x_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_cmd_lock_of_si476x_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv___platform_driver_register_29(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___platform_driver_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_platform_driver_unregister_30(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
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
extern void *memset(void * , int , size_t ) ;
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
ldv_set LDV_MUTEXES_cmd_lock_of_si476x_core ;
void ldv_mutex_lock_cmd_lock_of_si476x_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_cmd_lock_of_si476x_core);
  LDV_MUTEXES_cmd_lock_of_si476x_core = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_cmd_lock_of_si476x_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_cmd_lock_of_si476x_core);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_cmd_lock_of_si476x_core = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_cmd_lock_of_si476x_core(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_cmd_lock_of_si476x_core) {
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
int ldv_mutex_trylock_cmd_lock_of_si476x_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_cmd_lock_of_si476x_core);
  tmp = ldv_mutex_is_locked_cmd_lock_of_si476x_core(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_cmd_lock_of_si476x_core = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cmd_lock_of_si476x_core(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_cmd_lock_of_si476x_core(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_cmd_lock_of_si476x_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_cmd_lock_of_si476x_core);
  LDV_MUTEXES_cmd_lock_of_si476x_core = 0;
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
ldv_set LDV_MUTEXES_lock_of_v4l2_ctrl_handler ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler) {
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
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_v4l2_ctrl_handler(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
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
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_cmd_lock_of_si476x_core = 0;
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_cmd_lock_of_si476x_core);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
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
int __VERIFIER_nondet_int(void);
int __kfifo_to_user(struct __kfifo *arg0, void *arg1, unsigned long arg2, unsigned int *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t default_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
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
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void regcache_cache_only(struct regmap *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int regcache_sync_region(struct regmap *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_read(struct regmap *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_update_bits(struct regmap *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_write(struct regmap *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int si476x_core_cmd_fm_phase_diversity(struct si476x_core *arg0, enum si476x_phase_diversity_mode arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int si476x_core_cmd_fm_rds_status(struct si476x_core *arg0, bool arg1, bool arg2, bool arg3, struct si476x_rds_status_report *arg4) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool si476x_core_has_am(struct si476x_core *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool si476x_core_has_diversity(struct si476x_core *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool si476x_core_is_a_primary_tuner(struct si476x_core *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool si476x_core_is_a_secondary_tuner(struct si476x_core *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool si476x_core_is_in_am_receiver_mode(struct si476x_core *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int si476x_core_set_power_state(struct si476x_core *arg0, enum si476x_power_state arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int si476x_core_start(struct si476x_core *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int si476x_core_stop(struct si476x_core *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_config *arg1, void *arg2) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_set_name(struct v4l2_device *arg0, const char *arg1, atomic_t *arg2) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_is_singular(struct v4l2_fh *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_open(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release_empty(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
