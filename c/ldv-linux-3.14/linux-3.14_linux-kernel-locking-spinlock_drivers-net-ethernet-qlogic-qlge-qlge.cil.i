struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
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
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
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
struct mm_struct;
struct cpumask;
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
typedef void (*ctor_fn_t)(void);
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
struct ldv_thread;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct inode;
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
struct ctl_table;
struct pci_dev;
struct pci_bus;
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
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
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
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
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
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
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
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
struct kiocb;
struct pipe_inode_info;
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
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
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
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
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
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
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
struct backing_dev_info;
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
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_174 {
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
   union __anonunion____missing_field_name_172 __annonCompField52 ;
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
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
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
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
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
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
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
   union __anonunion_fl_u_176 fl_u ;
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
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
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
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
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
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
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
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
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
struct mem_cgroup;
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
enum ldv_22018 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22018 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
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
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_217 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_217 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
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
   union __anonunion____missing_field_name_218 __annonCompField68 ;
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
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
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
struct rtable;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
struct proc_dir_entry;
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
union __anonunion_in6_u_224 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_224 in6_u ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
enum ldv_28376 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28377 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
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
union __anonunion____missing_field_name_237 {
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
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
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
   enum ldv_28376 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28377 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
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
struct pci_driver;
union __anonunion____missing_field_name_241 {
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
   union __anonunion____missing_field_name_241 __annonCompField75 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
union __anonunion____missing_field_name_246 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_246 __annonCompField76 ;
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
struct iphdr {
   __u8 ihl : 4 ;
   __u8 version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6hdr {
   __u8 priority : 4 ;
   __u8 version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_248 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_248 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
union __anonunion____missing_field_name_249 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_249 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_254 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_254 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_255 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_255 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_257 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_256 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_257 __annonCompField79 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_260 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_259 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_260 __annonCompField82 ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_262 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_256 __annonCompField80 ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   union __anonunion____missing_field_name_259 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_261 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_262 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_263 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_263 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned int sk_shutdown : 2 ;
   unsigned int sk_no_check : 2 ;
   unsigned int sk_userlocks : 4 ;
   unsigned int sk_protocol : 8 ;
   unsigned int sk_type : 16 ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_264 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_264 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   u8 cookie_ts : 1 ;
   u8 num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   __u16 res1 : 4 ;
   __u16 doff : 4 ;
   __u16 fin : 1 ;
   __u16 syn : 1 ;
   __u16 rst : 1 ;
   __u16 psh : 1 ;
   __u16 ack : 1 ;
   __u16 urg : 1 ;
   __u16 ece : 1 ;
   __u16 cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct udphdr {
   __be16 source ;
   __be16 dest ;
   __be16 len ;
   __sum16 check ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_276 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_276 __annonCompField86 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_277 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_279 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion____missing_field_name_278 {
   struct __anonstruct____missing_field_name_279 __annonCompField88 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_277 __annonCompField87 ;
   union __anonunion____missing_field_name_278 __annonCompField89 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
struct mbox_params {
   u32 mbox_in[16U] ;
   u32 mbox_out[16U] ;
   int in_count ;
   int out_count ;
};
struct flash_params_8012 {
   u8 dev_id_str[4U] ;
   __le16 size ;
   __le16 csum ;
   __le16 ver ;
   __le16 sub_dev_id ;
   u8 mac_addr[6U] ;
   __le16 res ;
};
struct flash_params_8000 {
   u8 dev_id_str[4U] ;
   __le16 ver ;
   __le16 size ;
   __le16 csum ;
   __le16 reserved0 ;
   __le16 total_size ;
   __le16 entry_count ;
   u8 data_type0 ;
   u8 data_size0 ;
   u8 mac_addr[6U] ;
   u8 data_type1 ;
   u8 data_size1 ;
   u8 mac_addr1[6U] ;
   u8 data_type2 ;
   u8 data_size2 ;
   __le16 vlan_id ;
   u8 data_type3 ;
   u8 data_size3 ;
   __le16 last ;
   u8 reserved1[464U] ;
   __le16 subsys_ven_id ;
   __le16 subsys_dev_id ;
   u8 reserved2[4U] ;
};
union flash_params {
   struct flash_params_8012 flash_params_8012 ;
   struct flash_params_8000 flash_params_8000 ;
};
struct tx_buf_desc {
   __le64 addr ;
   __le32 len ;
};
struct ob_mac_iocb_req {
   u8 opcode ;
   u8 flags1 ;
   u8 flags2 ;
   u8 flags3 ;
   __le32 reserved1[2U] ;
   __le16 frame_len ;
   __le16 reserved2 ;
   u32 tid ;
   u32 txq_idx ;
   __le32 reserved3 ;
   __le16 vlan_tci ;
   __le16 reserved4 ;
   struct tx_buf_desc tbd[8U] ;
};
struct ob_mac_iocb_rsp {
   u8 opcode ;
   u8 flags1 ;
   u8 flags2 ;
   u8 flags3 ;
   u32 tid ;
   u32 txq_idx ;
   __le32 reserved[13U] ;
};
struct ob_mac_tso_iocb_req {
   u8 opcode ;
   u8 flags1 ;
   u8 flags2 ;
   u8 flags3 ;
   __le32 reserved1[2U] ;
   __le32 frame_len ;
   u32 tid ;
   u32 txq_idx ;
   __le16 total_hdrs_len ;
   __le16 net_trans_offset ;
   __le16 vlan_tci ;
   __le16 mss ;
   struct tx_buf_desc tbd[8U] ;
};
struct ib_mac_iocb_rsp {
   u8 opcode ;
   u8 flags1 ;
   u8 flags2 ;
   u8 flags3 ;
   __le32 data_len ;
   __le64 data_addr ;
   __le32 rss ;
   __le16 vlan_id ;
   __le16 reserved1 ;
   __le32 reserved2[6U] ;
   u8 reserved3[3U] ;
   u8 flags4 ;
   __le32 hdr_len ;
   __le64 hdr_addr ;
};
struct ib_ae_iocb_rsp {
   u8 opcode ;
   u8 flags1 ;
   u8 event ;
   u8 q_id ;
   __le32 reserved[15U] ;
};
struct ql_net_rsp_iocb {
   u8 opcode ;
   u8 flags0 ;
   __le16 length ;
   __le32 tid ;
   __le32 reserved[14U] ;
};
struct wqicb {
   __le16 len ;
   __le16 flags ;
   __le16 cq_id_rss ;
   __le16 rid ;
   __le64 addr ;
   __le64 cnsmr_idx_addr ;
};
struct cqicb {
   u8 msix_vect ;
   u8 reserved1 ;
   u8 reserved2 ;
   u8 flags ;
   __le16 len ;
   __le16 rid ;
   __le64 addr ;
   __le64 prod_idx_addr ;
   __le16 pkt_delay ;
   __le16 irq_delay ;
   __le64 lbq_addr ;
   __le16 lbq_buf_size ;
   __le16 lbq_len ;
   __le64 sbq_addr ;
   __le16 sbq_buf_size ;
   __le16 sbq_len ;
};
struct ricb {
   u8 base_cq ;
   u8 flags ;
   __le16 mask ;
   u8 hash_cq_id[1024U] ;
   __le32 ipv6_hash_key[10U] ;
   __le32 ipv4_hash_key[4U] ;
};
struct oal {
   struct tx_buf_desc oal[11U] ;
};
struct map_list {
   dma_addr_t mapaddr ;
   __u32 maplen ;
};
struct tx_ring_desc {
   struct sk_buff *skb ;
   struct ob_mac_iocb_req *queue_entry ;
   u32 index ;
   struct oal oal ;
   struct map_list map[19U] ;
   int map_cnt ;
   struct tx_ring_desc *next ;
};
struct page_chunk {
   struct page *page ;
   char *va ;
   u64 map ;
   unsigned int offset ;
   unsigned int last_flag ;
};
union __anonunion_p_281 {
   struct page_chunk pg_chunk ;
   struct sk_buff *skb ;
};
struct bq_desc {
   union __anonunion_p_281 p ;
   __le64 *addr ;
   u32 index ;
   dma_addr_t mapaddr ;
   __u32 maplen ;
};
struct ql_adapter;
struct tx_ring {
   struct wqicb wqicb ;
   void *wq_base ;
   dma_addr_t wq_base_dma ;
   __le32 *cnsmr_idx_sh_reg ;
   dma_addr_t cnsmr_idx_sh_reg_dma ;
   u32 wq_size ;
   u32 wq_len ;
   void *prod_idx_db_reg ;
   void *valid_db_reg ;
   u16 prod_idx ;
   u16 cq_id ;
   u8 wq_id ;
   u8 reserved1[3U] ;
   struct tx_ring_desc *q ;
   spinlock_t lock ;
   atomic_t tx_count ;
   struct delayed_work tx_work ;
   struct ql_adapter *qdev ;
   u64 tx_packets ;
   u64 tx_bytes ;
   u64 tx_errors ;
};
struct rx_ring {
   struct cqicb cqicb ;
   void *cq_base ;
   dma_addr_t cq_base_dma ;
   u32 cq_size ;
   u32 cq_len ;
   u16 cq_id ;
   __le32 *prod_idx_sh_reg ;
   dma_addr_t prod_idx_sh_reg_dma ;
   void *cnsmr_idx_db_reg ;
   u32 cnsmr_idx ;
   struct ql_net_rsp_iocb *curr_entry ;
   void *valid_db_reg ;
   u32 lbq_len ;
   u32 lbq_size ;
   u32 lbq_buf_size ;
   void *lbq_base ;
   dma_addr_t lbq_base_dma ;
   void *lbq_base_indirect ;
   dma_addr_t lbq_base_indirect_dma ;
   struct page_chunk pg_chunk ;
   struct bq_desc *lbq ;
   void *lbq_prod_idx_db_reg ;
   u32 lbq_prod_idx ;
   u32 lbq_curr_idx ;
   u32 lbq_clean_idx ;
   u32 lbq_free_cnt ;
   u32 sbq_len ;
   u32 sbq_size ;
   u32 sbq_buf_size ;
   void *sbq_base ;
   dma_addr_t sbq_base_dma ;
   void *sbq_base_indirect ;
   dma_addr_t sbq_base_indirect_dma ;
   struct bq_desc *sbq ;
   void *sbq_prod_idx_db_reg ;
   u32 sbq_prod_idx ;
   u32 sbq_curr_idx ;
   u32 sbq_clean_idx ;
   u32 sbq_free_cnt ;
   u32 type ;
   u32 irq ;
   u32 cpu ;
   char name[21U] ;
   struct napi_struct napi ;
   u8 reserved ;
   struct ql_adapter *qdev ;
   u64 rx_packets ;
   u64 rx_multicast ;
   u64 rx_bytes ;
   u64 rx_dropped ;
   u64 rx_errors ;
};
struct nic_stats {
   u64 tx_pkts ;
   u64 tx_bytes ;
   u64 tx_mcast_pkts ;
   u64 tx_bcast_pkts ;
   u64 tx_ucast_pkts ;
   u64 tx_ctl_pkts ;
   u64 tx_pause_pkts ;
   u64 tx_64_pkt ;
   u64 tx_65_to_127_pkt ;
   u64 tx_128_to_255_pkt ;
   u64 tx_256_511_pkt ;
   u64 tx_512_to_1023_pkt ;
   u64 tx_1024_to_1518_pkt ;
   u64 tx_1519_to_max_pkt ;
   u64 tx_undersize_pkt ;
   u64 tx_oversize_pkt ;
   u64 rx_bytes ;
   u64 rx_bytes_ok ;
   u64 rx_pkts ;
   u64 rx_pkts_ok ;
   u64 rx_bcast_pkts ;
   u64 rx_mcast_pkts ;
   u64 rx_ucast_pkts ;
   u64 rx_undersize_pkts ;
   u64 rx_oversize_pkts ;
   u64 rx_jabber_pkts ;
   u64 rx_undersize_fcerr_pkts ;
   u64 rx_drop_events ;
   u64 rx_fcerr_pkts ;
   u64 rx_align_err ;
   u64 rx_symbol_err ;
   u64 rx_mac_err ;
   u64 rx_ctl_pkts ;
   u64 rx_pause_pkts ;
   u64 rx_64_pkts ;
   u64 rx_65_to_127_pkts ;
   u64 rx_128_255_pkts ;
   u64 rx_256_511_pkts ;
   u64 rx_512_to_1023_pkts ;
   u64 rx_1024_to_1518_pkts ;
   u64 rx_1519_to_max_pkts ;
   u64 rx_len_err_pkts ;
   u64 rx_code_err ;
   u64 rx_oversize_err ;
   u64 rx_undersize_err ;
   u64 rx_preamble_err ;
   u64 rx_frame_len_err ;
   u64 rx_crc_err ;
   u64 rx_err_count ;
   u64 tx_cbfc_pause_frames0 ;
   u64 tx_cbfc_pause_frames1 ;
   u64 tx_cbfc_pause_frames2 ;
   u64 tx_cbfc_pause_frames3 ;
   u64 tx_cbfc_pause_frames4 ;
   u64 tx_cbfc_pause_frames5 ;
   u64 tx_cbfc_pause_frames6 ;
   u64 tx_cbfc_pause_frames7 ;
   u64 rx_cbfc_pause_frames0 ;
   u64 rx_cbfc_pause_frames1 ;
   u64 rx_cbfc_pause_frames2 ;
   u64 rx_cbfc_pause_frames3 ;
   u64 rx_cbfc_pause_frames4 ;
   u64 rx_cbfc_pause_frames5 ;
   u64 rx_cbfc_pause_frames6 ;
   u64 rx_cbfc_pause_frames7 ;
   u64 rx_nic_fifo_drop ;
};
struct mpi_coredump_global_header {
   u32 cookie ;
   u8 idString[16U] ;
   u32 timeLo ;
   u32 timeHi ;
   u32 imageSize ;
   u32 headerSize ;
   u8 info[220U] ;
};
struct mpi_coredump_segment_header {
   u32 cookie ;
   u32 segNum ;
   u32 segSize ;
   u32 extra ;
   u8 description[16U] ;
};
struct ql_nic_misc {
   u32 rx_ring_count ;
   u32 tx_ring_count ;
   u32 intr_count ;
   u32 function ;
};
struct ql_mpi_coredump {
   struct mpi_coredump_global_header mpi_global_header ;
   struct mpi_coredump_segment_header core_regs_seg_hdr ;
   u32 mpi_core_regs[127U] ;
   u32 mpi_core_sh_regs[16U] ;
   struct mpi_coredump_segment_header test_logic_regs_seg_hdr ;
   u32 test_logic_regs[23U] ;
   struct mpi_coredump_segment_header rmii_regs_seg_hdr ;
   u32 rmii_regs[64U] ;
   struct mpi_coredump_segment_header fcmac1_regs_seg_hdr ;
   u32 fcmac1_regs[64U] ;
   struct mpi_coredump_segment_header fcmac2_regs_seg_hdr ;
   u32 fcmac2_regs[64U] ;
   struct mpi_coredump_segment_header fc1_mbx_regs_seg_hdr ;
   u32 fc1_mbx_regs[64U] ;
   struct mpi_coredump_segment_header ide_regs_seg_hdr ;
   u32 ide_regs[64U] ;
   struct mpi_coredump_segment_header nic1_mbx_regs_seg_hdr ;
   u32 nic1_mbx_regs[64U] ;
   struct mpi_coredump_segment_header smbus_regs_seg_hdr ;
   u32 smbus_regs[64U] ;
   struct mpi_coredump_segment_header fc2_mbx_regs_seg_hdr ;
   u32 fc2_mbx_regs[64U] ;
   struct mpi_coredump_segment_header nic2_mbx_regs_seg_hdr ;
   u32 nic2_mbx_regs[64U] ;
   struct mpi_coredump_segment_header i2c_regs_seg_hdr ;
   u32 i2c_regs[64U] ;
   struct mpi_coredump_segment_header memc_regs_seg_hdr ;
   u32 memc_regs[256U] ;
   struct mpi_coredump_segment_header pbus_regs_seg_hdr ;
   u32 pbus_regs[256U] ;
   struct mpi_coredump_segment_header mde_regs_seg_hdr ;
   u32 mde_regs[6U] ;
   struct mpi_coredump_segment_header nic_regs_seg_hdr ;
   u32 nic_regs[64U] ;
   struct mpi_coredump_segment_header nic2_regs_seg_hdr ;
   u32 nic2_regs[64U] ;
   struct mpi_coredump_segment_header xgmac1_seg_hdr ;
   u32 xgmac1[464U] ;
   struct mpi_coredump_segment_header xgmac2_seg_hdr ;
   u32 xgmac2[464U] ;
   struct mpi_coredump_segment_header code_ram_seg_hdr ;
   u32 code_ram[8192U] ;
   struct mpi_coredump_segment_header memc_ram_seg_hdr ;
   u32 memc_ram[8192U] ;
   struct mpi_coredump_segment_header xaui_an_hdr ;
   u32 serdes_xaui_an[14U] ;
   struct mpi_coredump_segment_header xaui_hss_pcs_hdr ;
   u32 serdes_xaui_hss_pcs[33U] ;
   struct mpi_coredump_segment_header xfi_an_hdr ;
   u32 serdes_xfi_an[14U] ;
   struct mpi_coredump_segment_header xfi_train_hdr ;
   u32 serdes_xfi_train[12U] ;
   struct mpi_coredump_segment_header xfi_hss_pcs_hdr ;
   u32 serdes_xfi_hss_pcs[15U] ;
   struct mpi_coredump_segment_header xfi_hss_tx_hdr ;
   u32 serdes_xfi_hss_tx[32U] ;
   struct mpi_coredump_segment_header xfi_hss_rx_hdr ;
   u32 serdes_xfi_hss_rx[32U] ;
   struct mpi_coredump_segment_header xfi_hss_pll_hdr ;
   u32 serdes_xfi_hss_pll[32U] ;
   struct mpi_coredump_segment_header misc_nic_seg_hdr ;
   struct ql_nic_misc misc_nic_info ;
   struct mpi_coredump_segment_header intr_states_seg_hdr ;
   u32 intr_states[17U] ;
   struct mpi_coredump_segment_header cam_entries_seg_hdr ;
   u32 cam_entries[144U] ;
   struct mpi_coredump_segment_header nic_routing_words_seg_hdr ;
   u32 nic_routing_words[16U] ;
   struct mpi_coredump_segment_header ets_seg_hdr ;
   u32 ets[10U] ;
   struct mpi_coredump_segment_header probe_dump_seg_hdr ;
   u32 probe_dump[4386U] ;
   struct mpi_coredump_segment_header routing_reg_seg_hdr ;
   u32 routing_regs[192U] ;
   struct mpi_coredump_segment_header mac_prot_reg_seg_hdr ;
   u32 mac_prot_regs[19712U] ;
   struct mpi_coredump_segment_header xaui2_an_hdr ;
   u32 serdes2_xaui_an[14U] ;
   struct mpi_coredump_segment_header xaui2_hss_pcs_hdr ;
   u32 serdes2_xaui_hss_pcs[33U] ;
   struct mpi_coredump_segment_header xfi2_an_hdr ;
   u32 serdes2_xfi_an[14U] ;
   struct mpi_coredump_segment_header xfi2_train_hdr ;
   u32 serdes2_xfi_train[12U] ;
   struct mpi_coredump_segment_header xfi2_hss_pcs_hdr ;
   u32 serdes2_xfi_hss_pcs[15U] ;
   struct mpi_coredump_segment_header xfi2_hss_tx_hdr ;
   u32 serdes2_xfi_hss_tx[32U] ;
   struct mpi_coredump_segment_header xfi2_hss_rx_hdr ;
   u32 serdes2_xfi_hss_rx[32U] ;
   struct mpi_coredump_segment_header xfi2_hss_pll_hdr ;
   u32 serdes2_xfi_hss_pll[32U] ;
   struct mpi_coredump_segment_header sem_regs_seg_hdr ;
   u32 sem_regs[4U] ;
};
struct intr_context {
   struct ql_adapter *qdev ;
   u32 intr ;
   u32 irq_mask ;
   u32 hooked ;
   u32 intr_en_mask ;
   u32 intr_dis_mask ;
   u32 intr_read_mask ;
   char name[32U] ;
   atomic_t irq_cnt ;
   irqreturn_t (*handler)(int , void * ) ;
};
struct nic_operations {
   int (*get_flash)(struct ql_adapter * ) ;
   int (*port_initialize)(struct ql_adapter * ) ;
};
struct ql_adapter {
   struct ricb ricb ;
   unsigned long flags ;
   u32 wol ;
   struct nic_stats nic_stats ;
   unsigned long active_vlans[64U] ;
   struct pci_dev *pdev ;
   struct net_device *ndev ;
   u32 chip_rev_id ;
   u32 fw_rev_id ;
   u32 func ;
   u32 alt_func ;
   u32 port ;
   spinlock_t adapter_lock ;
   spinlock_t hw_lock ;
   spinlock_t stats_lock ;
   void *reg_base ;
   void *doorbell_area ;
   u32 doorbell_area_size ;
   u32 msg_enable ;
   void *rx_ring_shadow_reg_area ;
   dma_addr_t rx_ring_shadow_reg_dma ;
   void *tx_ring_shadow_reg_area ;
   dma_addr_t tx_ring_shadow_reg_dma ;
   u32 mailbox_in ;
   u32 mailbox_out ;
   struct mbox_params idc_mbc ;
   struct mutex mpi_mutex ;
   int tx_ring_size ;
   int rx_ring_size ;
   u32 intr_count ;
   struct msix_entry *msi_x_entry ;
   struct intr_context intr_context[17U] ;
   int tx_ring_count ;
   u32 rss_ring_count ;
   int rx_ring_count ;
   int ring_mem_size ;
   void *ring_mem ;
   struct rx_ring rx_ring[17U] ;
   struct tx_ring tx_ring[8U] ;
   unsigned int lbq_buf_order ;
   int rx_csum ;
   u32 default_rx_queue ;
   u16 rx_coalesce_usecs ;
   u16 rx_max_coalesced_frames ;
   u16 tx_coalesce_usecs ;
   u16 tx_max_coalesced_frames ;
   u32 xg_sem_mask ;
   u32 port_link_up ;
   u32 port_init ;
   u32 link_status ;
   struct ql_mpi_coredump *mpi_coredump ;
   u32 core_is_dumped ;
   u32 link_config ;
   u32 led_config ;
   u32 max_frame_size ;
   union flash_params flash ;
   struct workqueue_struct *workqueue ;
   struct delayed_work asic_reset_work ;
   struct delayed_work mpi_reset_work ;
   struct delayed_work mpi_work ;
   struct delayed_work mpi_port_cfg_work ;
   struct delayed_work mpi_idc_work ;
   struct delayed_work mpi_core_to_log ;
   struct completion ide_completion ;
   struct nic_operations const *nic_ops ;
   u16 device_id ;
   struct timer_list timer ;
   atomic_t lb_count ;
   char current_mac_addr[6U] ;
};
struct ldv_struct_EMGentry_16 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_1 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_8 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_0 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_2 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_5 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef struct net_device *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
enum hrtimer_restart;
struct ql_reg_dump {
   struct mpi_coredump_global_header mpi_global_header ;
   struct mpi_coredump_segment_header nic_regs_seg_hdr ;
   u32 nic_regs[64U] ;
   struct mpi_coredump_segment_header misc_nic_seg_hdr ;
   struct ql_nic_misc misc_nic_info ;
   struct mpi_coredump_segment_header intr_states_seg_hdr ;
   u32 intr_states[8U] ;
   struct mpi_coredump_segment_header cam_entries_seg_hdr ;
   u32 cam_entries[144U] ;
   struct mpi_coredump_segment_header nic_routing_words_seg_hdr ;
   u32 nic_routing_words[16U] ;
   struct mpi_coredump_segment_header ets_seg_hdr ;
   u32 ets[10U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct ql_stats {
   char stat_string[32U] ;
   int sizeof_stat ;
   int stat_offset ;
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
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  }
  return (order);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  {
  tmp___0 = __bitmap_weight(src, nbits);
  }
  return (tmp___0);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  }
  return ((unsigned int )tmp);
}
}
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/520b8de/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
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
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  {
  rep_nop();
  }
  return;
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
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
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_77(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_hw_lock_of_ql_adapter(void) ;
void ldv_spin_unlock_hw_lock_of_ql_adapter(void) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_79(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_79(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_80(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_80(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_80(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  }
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned long usecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_88(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_99(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_93(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_96(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_98(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
  }
  return (tmp);
}
}
extern void dump_page(struct page * , char * ) ;
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
extern void iounmap(void volatile * ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  {
  tmp = alloc_pages_current(gfp_mask, order);
  }
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
static void *ldv_dev_get_drvdata_58(struct device const *dev ) ;
static int ldv_dev_set_drvdata_59(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  {
  msleep(seconds * 1000U);
  }
  return;
}
}
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  }
  return (tmp);
}
}
__inline static struct page *compound_head(struct page *page )
{
  struct page *head ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    head = page->__annonCompField46.first_page;
    __asm__ volatile ("": : : "memory");
    tmp = PageTail((struct page const *)page);
    tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
    }
    if (tmp___0 != 0L) {
      return (head);
    } else {
    }
  } else {
  }
  return (page);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  {
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField43.__annonCompField42.__annonCompField41._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    dump_page(page, (char *)0);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (488), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  atomic_inc(& page->__annonCompField43.__annonCompField42.__annonCompField41._count);
  }
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && n > 0xffffffffffffffffUL / size) {
    return ((void *)0);
  } else {
  }
  {
  tmp = __kmalloc(n * size, flags);
  }
  return (tmp);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  }
  return (tmp);
}
}
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  }
  return (tmp___0);
}
}
extern __sum16 csum_ipv6_magic(struct in6_addr const * , struct in6_addr const * ,
                               __u32 , unsigned short , __wsum ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
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
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  }
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (115), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/520b8de/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
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
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
extern void consume_skb(struct sk_buff * ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
extern int skb_pad(struct sk_buff * , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  {
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  }
  return (dataref != 1);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void __skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                          int off , int size )
{
  skb_frag_t *frag ;
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )i;
  frag->page.p = page;
  frag->page_offset = (__u32 )off;
  skb_frag_size_set(frag, (unsigned int )size);
  page = compound_head(page);
  }
  if ((int )page->__annonCompField43.__annonCompField38.pfmemalloc && (unsigned long )page->__annonCompField37.mapping == (unsigned long )((struct address_space *)0)) {
    skb->pfmemalloc = 1U;
  } else {
  }
  return;
}
}
__inline static void skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                        int off , int size )
{
  unsigned char *tmp ;
  {
  {
  __skb_fill_page_desc(skb, i, page, off, size);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp)->nr_frags = (unsigned int )((unsigned char )i) + 1U;
  }
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
__inline static int skb_padto(struct sk_buff *skb , unsigned int len )
{
  unsigned int size ;
  long tmp ;
  int tmp___0 ;
  {
  {
  size = skb->len;
  tmp = ldv__builtin_expect(size >= len, 1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  tmp___0 = skb_pad(skb, (int )(len - size));
  }
  return (tmp___0);
}
}
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  {
  {
  memcpy((void *)skb->data, from, (size_t )len);
  }
  return;
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer(skb);
  }
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(n);
  }
  if ((int )tmp) {
    {
    __napi_schedule(n);
    }
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_38296;
  ldv_38295:
  {
  msleep(1U);
  }
  ldv_38296:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_38295;
  } else {
  }
  {
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (502), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int dev_close(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_90(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_92(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_95(struct net_device *ldv_func_arg1 ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_39195;
  ldv_39194:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  }
  ldv_39195: ;
  if (i < dev->num_tx_queues) {
    goto ldv_39194;
  } else {
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  }
  return (tmp != 0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
__inline static void netif_stop_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netpoll_trap();
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  netif_tx_stop_queue(txq);
  }
  return;
}
}
__inline static bool __netif_subqueue_stopped(struct net_device const *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue(dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
  }
  return (tmp___0);
}
}
__inline static void netif_wake_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netpoll_trap();
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& txq->state));
  }
  if (tmp___1 != 0) {
    {
    __netif_schedule(txq->qdisc);
    }
  } else {
  }
  return;
}
}
extern int netif_get_num_default_rss_queues(void) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_any(skb, 1);
  }
  return;
}
}
extern int netif_receive_skb(struct sk_buff * ) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
extern struct sk_buff *napi_get_frags(struct napi_struct * ) ;
extern gro_result_t napi_gro_frags(struct napi_struct * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if ((unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_91(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_94(struct net_device *ldv_func_arg1 ) ;
extern int netdev_printk(char const * , struct net_device const * , char const *
                         , ...) ;
extern int netdev_alert(struct net_device const * , char const * , ...) ;
extern int netdev_crit(struct net_device const * , char const * , ...) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
__inline static int pci_channel_offline(struct pci_dev *pdev )
{
  {
  return (pdev->error_state != 1U);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pcie_set_readrq(struct pci_dev * , int ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  }
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_100(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_101(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
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
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  {
  tmp = dma_map_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     page, offset, size, (enum dma_data_direction )direction);
  }
  return (tmp);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  }
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  }
  return (tmp);
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_58((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_59(& pdev->dev, data);
  }
  return;
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
__inline static int ldv_request_irq_86(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_87(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_84(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_85(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  {
  tmp = tcp_hdr(skb);
  }
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static struct udphdr *udp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct udphdr *)tmp);
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct ipv6hdr *)tmp);
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_89(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static u32 ql_read32(struct ql_adapter const *qdev , int reg )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)qdev->reg_base + (unsigned long )reg);
  }
  return (tmp);
}
}
__inline static void ql_write32(struct ql_adapter const *qdev , int reg , u32 val )
{
  {
  {
  writel(val, (void volatile *)qdev->reg_base + (unsigned long )reg);
  }
  return;
}
}
__inline static void ql_write_db_reg(u32 val , void *addr )
{
  {
  {
  writel(val, (void volatile *)addr);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static u32 ql_read_sh_reg(__le32 *addr )
{
  u32 reg ;
  {
  reg = *addr;
  __asm__ volatile ("lfence": : : "memory");
  return (reg);
}
}
char qlge_driver_name[5U] ;
char const qlge_driver_version[11U] ;
struct ethtool_ops const qlge_ethtool_ops ;
int ql_sem_spinlock(struct ql_adapter *qdev , u32 sem_mask ) ;
void ql_sem_unlock(struct ql_adapter *qdev , u32 sem_mask ) ;
int ql_read_xgmac_reg(struct ql_adapter *qdev , u32 reg , u32 *data ) ;
int ql_get_mac_addr_reg(struct ql_adapter *qdev , u32 type , u16 index , u32 *value ) ;
int ql_get_routing_reg(struct ql_adapter *qdev , u32 index , u32 *value ) ;
int ql_write_cfg(struct ql_adapter *qdev , void *ptr , int size , u32 bit , u16 q_id ) ;
void ql_queue_fw_error(struct ql_adapter *qdev ) ;
void ql_mpi_work(struct work_struct *work ) ;
void ql_mpi_reset_work(struct work_struct *work ) ;
void ql_mpi_core_to_log(struct work_struct *work ) ;
int ql_wait_reg_rdy(struct ql_adapter *qdev , u32 reg , u32 bit , u32 err_bit ) ;
void ql_queue_asic_error(struct ql_adapter *qdev ) ;
u32 ql_enable_completion_interrupt(struct ql_adapter *qdev , u32 intr ) ;
int ql_read_xgmac_reg64(struct ql_adapter *qdev , u32 reg , u64 *data ) ;
void ql_mpi_idc_work(struct work_struct *work ) ;
void ql_mpi_port_cfg_work(struct work_struct *work ) ;
int ql_mb_get_fw_state(struct ql_adapter *qdev ) ;
int ql_cam_route_initialize(struct ql_adapter *qdev ) ;
int ql_read_mpi_reg(struct ql_adapter *qdev , u32 reg , u32 *data ) ;
int ql_mb_about_fw(struct ql_adapter *qdev ) ;
int ql_mb_wol_set_magic(struct ql_adapter *qdev , u32 enable_wol ) ;
int ql_mb_wol_mode(struct ql_adapter *qdev , u32 wol ) ;
void ql_link_on(struct ql_adapter *qdev ) ;
void ql_link_off(struct ql_adapter *qdev ) ;
int ql_mb_set_mgmnt_traffic_ctl(struct ql_adapter *qdev , u32 control ) ;
int ql_wait_fifo_empty(struct ql_adapter *qdev ) ;
netdev_tx_t ql_lb_send(struct sk_buff *skb , struct net_device *ndev ) ;
void ql_check_lb_frame(struct ql_adapter *qdev , struct sk_buff *skb ) ;
int ql_clean_lb_rx_ring(struct rx_ring *rx_ring , int budget ) ;
char qlge_driver_name[5U] = { 'q', 'l', 'g', 'e',
        '\000'};
char const qlge_driver_version[11U] =
  { '1', '.', '0', '0',
        '.', '0', '0', '.',
        '3', '4', '\000'};
static unsigned int const default_msg = 24823U;
static int debug = -1;
static int qlge_irq_type = 0;
static int qlge_mpi_coredump ;
static int qlge_force_coredump ;
static struct pci_device_id const qlge_pci_tbl[3U] = { {4215U, 32786U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4215U, 32768U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int ql_wol(struct ql_adapter *qdev ) ;
static void qlge_set_multicast_list(struct net_device *ndev ) ;
static int ql_adapter_down(struct ql_adapter *qdev ) ;
static int ql_adapter_up(struct ql_adapter *qdev ) ;
static int ql_sem_trylock(struct ql_adapter *qdev , u32 sem_mask )
{
  u32 sem_bits ;
  u32 tmp ;
  {
  sem_bits = 0U;
  {
  if (sem_mask == 196608U) {
    goto case_196608;
  } else {
  }
  if (sem_mask == 786432U) {
    goto case_786432;
  } else {
  }
  if (sem_mask == 3145728U) {
    goto case_3145728;
  } else {
  }
  if (sem_mask == 12582912U) {
    goto case_12582912;
  } else {
  }
  if (sem_mask == 50331648U) {
    goto case_50331648;
  } else {
  }
  if (sem_mask == 201326592U) {
    goto case_201326592;
  } else {
  }
  if (sem_mask == 805306368U) {
    goto case_805306368;
  } else {
  }
  if (sem_mask == 3221225472U) {
    goto case_3221225472;
  } else {
  }
  goto switch_default;
  case_196608:
  sem_bits = 1U;
  goto ldv_52085;
  case_786432:
  sem_bits = 4U;
  goto ldv_52085;
  case_3145728:
  sem_bits = 16U;
  goto ldv_52085;
  case_12582912:
  sem_bits = 64U;
  goto ldv_52085;
  case_50331648:
  sem_bits = 256U;
  goto ldv_52085;
  case_201326592:
  sem_bits = 1024U;
  goto ldv_52085;
  case_805306368:
  sem_bits = 4096U;
  goto ldv_52085;
  case_3221225472:
  sem_bits = 16384U;
  goto ldv_52085;
  switch_default: ;
  if ((qdev->msg_enable & 2U) != 0U) {
    {
    netdev_alert((struct net_device const *)qdev->ndev, "bad Semaphore mask!.\n");
    }
  } else {
  }
  return (-22);
  switch_break: ;
  }
  ldv_52085:
  {
  ql_write32((struct ql_adapter const *)qdev, 100, sem_bits | sem_mask);
  tmp = ql_read32((struct ql_adapter const *)qdev, 100);
  }
  return ((tmp & sem_bits) == 0U);
}
}
int ql_sem_spinlock(struct ql_adapter *qdev , u32 sem_mask )
{
  unsigned int wait_count ;
  int tmp ;
  {
  wait_count = 30U;
  ldv_52099:
  {
  tmp = ql_sem_trylock(qdev, sem_mask);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  __const_udelay(429500UL);
  wait_count = wait_count - 1U;
  }
  if (wait_count != 0U) {
    goto ldv_52099;
  } else {
  }
  return (-110);
}
}
void ql_sem_unlock(struct ql_adapter *qdev , u32 sem_mask )
{
  {
  {
  ql_write32((struct ql_adapter const *)qdev, 100, sem_mask);
  ql_read32((struct ql_adapter const *)qdev, 100);
  }
  return;
}
}
int ql_wait_reg_rdy(struct ql_adapter *qdev , u32 reg , u32 bit , u32 err_bit )
{
  u32 temp ;
  int count ;
  {
  count = 3;
  goto ldv_52114;
  ldv_52113:
  {
  temp = ql_read32((struct ql_adapter const *)qdev, (int )reg);
  }
  if ((temp & err_bit) != 0U) {
    if ((qdev->msg_enable & 2U) != 0U) {
      {
      netdev_alert((struct net_device const *)qdev->ndev, "register 0x%.08x access error, value = 0x%.08x!.\n",
                   reg, temp);
      }
    } else {
    }
    return (-5);
  } else
  if ((temp & bit) != 0U) {
    return (0);
  } else {
  }
  {
  __const_udelay(429500UL);
  count = count - 1;
  }
  ldv_52114: ;
  if (count != 0) {
    goto ldv_52113;
  } else {
  }
  if ((qdev->msg_enable & 2U) != 0U) {
    {
    netdev_alert((struct net_device const *)qdev->ndev, "Timed out waiting for reg %x to come ready.\n",
                 reg);
    }
  } else {
  }
  return (-110);
}
}
static int ql_wait_cfg(struct ql_adapter *qdev , u32 bit )
{
  int count ;
  u32 temp ;
  {
  count = 3;
  goto ldv_52123;
  ldv_52122:
  {
  temp = ql_read32((struct ql_adapter const *)qdev, 40);
  }
  if ((temp & 32U) != 0U) {
    return (-5);
  } else {
  }
  if ((temp & bit) == 0U) {
    return (0);
  } else {
  }
  {
  __const_udelay(429500UL);
  count = count - 1;
  }
  ldv_52123: ;
  if (count != 0) {
    goto ldv_52122;
  } else {
  }
  return (-110);
}
}
int ql_write_cfg(struct ql_adapter *qdev , void *ptr , int size , u32 bit , u16 q_id )
{
  u64 map ;
  int status ;
  int direction ;
  u32 mask ;
  u32 value ;
  int tmp ;
  {
  {
  status = 0;
  direction = (bit & 69U) != 0U ? 1 : 2;
  map = pci_map_single(qdev->pdev, ptr, (size_t )size, direction);
  tmp = pci_dma_mapping_error(qdev->pdev, map);
  }
  if (tmp != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Couldn\'t map DMA area.\n");
      }
    } else {
    }
    return (-12);
  } else {
  }
  {
  status = ql_sem_spinlock(qdev, 3145728U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_wait_cfg(qdev, bit);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Timed out waiting for CFG to come ready.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 32, (unsigned int )map);
  ql_write32((struct ql_adapter const *)qdev, 36, (unsigned int )(map >> 32));
  mask = (bit << 16) | 2130706432U;
  value = bit | (u32 )((int )q_id << 8);
  ql_write32((struct ql_adapter const *)qdev, 40, mask | value);
  status = ql_wait_cfg(qdev, bit);
  }
  exit:
  {
  ql_sem_unlock(qdev, 3145728U);
  pci_unmap_single(qdev->pdev, map, (size_t )size, direction);
  }
  return (status);
}
}
int ql_get_mac_addr_reg(struct ql_adapter *qdev , u32 type , u16 index , u32 *value )
{
  u32 offset ;
  int status ;
  u32 tmp ;
  u32 *tmp___0 ;
  u32 tmp___1 ;
  u32 *tmp___2 ;
  u32 tmp___3 ;
  u32 *tmp___4 ;
  {
  offset = 0U;
  {
  if (type == 65536U) {
    goto case_65536;
  } else {
  }
  if (type == 0U) {
    goto case_0;
  } else {
  }
  if (type == 131072U) {
    goto case_131072;
  } else {
  }
  if (type == 196608U) {
    goto case_196608;
  } else {
  }
  goto switch_default;
  case_65536: ;
  case_0:
  {
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, ((tmp | (u32 )((int )index << 4)) | type) | 100663296U);
  status = ql_wait_reg_rdy(qdev, 168U, 1073741824U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___0 = value;
  value = value + 1;
  *tmp___0 = ql_read32((struct ql_adapter const *)qdev, 172);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___1 = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, ((tmp___1 | (u32 )((int )index << 4)) | type) | 100663296U);
  status = ql_wait_reg_rdy(qdev, 168U, 1073741824U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___2 = value;
  value = value + 1;
  *tmp___2 = ql_read32((struct ql_adapter const *)qdev, 172);
  }
  if (type == 0U) {
    {
    status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
    }
    if (status != 0) {
      goto exit;
    } else {
    }
    {
    tmp___3 = offset;
    offset = offset + 1U;
    ql_write32((struct ql_adapter const *)qdev, 168, ((tmp___3 | (u32 )((int )index << 4)) | type) | 100663296U);
    status = ql_wait_reg_rdy(qdev, 168U, 1073741824U, 0U);
    }
    if (status != 0) {
      goto exit;
    } else {
    }
    {
    tmp___4 = value;
    value = value + 1;
    *tmp___4 = ql_read32((struct ql_adapter const *)qdev, 172);
    }
  } else {
  }
  goto ldv_52149;
  case_131072: ;
  case_196608: ;
  switch_default: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_crit((struct net_device const *)qdev->ndev, "Address type %d not yet supported.\n",
                type);
    }
  } else {
  }
  status = -1;
  switch_break: ;
  }
  ldv_52149: ;
  exit: ;
  return (status);
}
}
static int ql_set_mac_addr_reg(struct ql_adapter *qdev , u8 *addr , u32 type , u16 index )
{
  u32 offset ;
  int status ;
  u32 upper ;
  u32 lower ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 cam_output ;
  u32 upper___0 ;
  u32 lower___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 enable_bit ;
  {
  offset = 0U;
  status = 0;
  {
  if (type == 65536U) {
    goto case_65536;
  } else {
  }
  if (type == 0U) {
    goto case_0;
  } else {
  }
  if (type == 131072U) {
    goto case_131072;
  } else {
  }
  if (type == 196608U) {
    goto case_196608;
  } else {
  }
  goto switch_default;
  case_65536:
  {
  upper = (u32 )(((int )*addr << 8) | (int )*(addr + 1UL));
  lower = (u32 )(((((int )*(addr + 2UL) << 24) | ((int )*(addr + 3UL) << 16)) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 5UL));
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, ((tmp | (u32 )((int )index << 4)) | type) | 134217728U);
  ql_write32((struct ql_adapter const *)qdev, 172, lower);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___0 = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, ((tmp___0 | (u32 )((int )index << 4)) | type) | 134217728U);
  ql_write32((struct ql_adapter const *)qdev, 172, upper);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  goto ldv_52165;
  case_0:
  {
  upper___0 = (u32 )(((int )*addr << 8) | (int )*(addr + 1UL));
  lower___0 = (u32 )(((((int )*(addr + 2UL) << 24) | ((int )*(addr + 3UL) << 16)) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 5UL));
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___1 = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, (tmp___1 | (u32 )((int )index << 4)) | type);
  ql_write32((struct ql_adapter const *)qdev, 172, lower___0);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  tmp___2 = offset;
  offset = offset + 1U;
  ql_write32((struct ql_adapter const *)qdev, 168, (tmp___2 | (u32 )((int )index << 4)) | type);
  ql_write32((struct ql_adapter const *)qdev, 172, upper___0);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 168, (offset | (u32 )((int )index << 4)) | type);
  cam_output = (qdev->func << 2) | 1U;
  }
  if (((qdev->ndev)->features & 256ULL) != 0ULL) {
    cam_output = cam_output | 16U;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 172, cam_output);
  }
  goto ldv_52165;
  case_131072:
  {
  enable_bit = *((u32 *)addr);
  status = ql_wait_reg_rdy(qdev, 168U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 168, ((offset | (u32 )((int )index << 4)) | type) | enable_bit);
  }
  goto ldv_52165;
  case_196608: ;
  switch_default: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_crit((struct net_device const *)qdev->ndev, "Address type %d not yet supported.\n",
                type);
    }
  } else {
  }
  status = -1;
  switch_break: ;
  }
  ldv_52165: ;
  exit: ;
  return (status);
}
}
static int ql_set_mac_addr(struct ql_adapter *qdev , int set )
{
  int status ;
  char zero_mac_addr[6U] ;
  char *addr ;
  {
  if (set != 0) {
    addr = (char *)(& qdev->current_mac_addr);
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Set Mac addr %pM\n",
                    addr);
      }
    } else {
    }
  } else {
    {
    memset((void *)(& zero_mac_addr), 0, 6UL);
    addr = (char *)(& zero_mac_addr);
    }
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Clearing MAC address\n");
      }
    } else {
    }
  }
  {
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_set_mac_addr_reg(qdev, (u8 *)addr, 0U, (int )((unsigned int )((u16 )qdev->func) * 128U));
  ql_sem_unlock(qdev, 12582912U);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init mac address.\n");
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
void ql_link_on(struct ql_adapter *qdev )
{
  {
  if ((qdev->msg_enable & 4U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Link is up.\n");
    }
  } else {
  }
  {
  netif_carrier_on(qdev->ndev);
  ql_set_mac_addr(qdev, 1);
  }
  return;
}
}
void ql_link_off(struct ql_adapter *qdev )
{
  {
  if ((qdev->msg_enable & 4U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Link is down.\n");
    }
  } else {
  }
  {
  netif_carrier_off(qdev->ndev);
  ql_set_mac_addr(qdev, 0);
  }
  return;
}
}
int ql_get_routing_reg(struct ql_adapter *qdev , u32 index , u32 *value )
{
  int status ;
  {
  {
  status = 0;
  status = ql_wait_reg_rdy(qdev, 228U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 228, (index << 8) | 67239936U);
  status = ql_wait_reg_rdy(qdev, 228U, 1073741824U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *value = ql_read32((struct ql_adapter const *)qdev, 232);
  }
  exit: ;
  return (status);
}
}
static int ql_set_routing_reg(struct ql_adapter *qdev , u32 index , u32 mask , int enable )
{
  int status ;
  u32 value ;
  {
  status = -22;
  value = 0U;
  {
  if (mask == 128U) {
    goto case_128;
  } else {
  }
  if (mask == 8388608U) {
    goto case_8388608;
  } else {
  }
  if (mask == 4194304U) {
    goto case_4194304;
  } else {
  }
  if (mask == 33554432U) {
    goto case_33554432;
  } else {
  }
  if (mask == 16777216U) {
    goto case_16777216;
  } else {
  }
  if (mask == 1U) {
    goto case_1;
  } else {
  }
  if (mask == 2U) {
    goto case_2;
  } else {
  }
  if (mask == 4U) {
    goto case_4;
  } else {
  }
  if (mask == 2147483648U) {
    goto case_2147483648;
  } else {
  }
  if (mask == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_128:
  value = 1182720U;
  goto ldv_52203;
  case_8388608:
  value = 3280640U;
  goto ldv_52203;
  case_4194304:
  value = 3276800U;
  goto ldv_52203;
  case_33554432:
  value = 3277056U;
  goto ldv_52203;
  case_16777216:
  value = 3277312U;
  goto ldv_52203;
  case_1:
  value = 3277568U;
  goto ldv_52203;
  case_2:
  value = 3278080U;
  goto ldv_52203;
  case_4:
  value = 3277824U;
  goto ldv_52203;
  case_2147483648:
  value = 133120U;
  goto ldv_52203;
  case_0:
  value = (index << 8) | 3276800U;
  goto ldv_52203;
  switch_default: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Mask type %d not yet supported.\n",
               mask);
    }
  } else {
  }
  status = -1;
  goto exit;
  switch_break: ;
  }
  ldv_52203: ;
  if (value != 0U) {
    {
    status = ql_wait_reg_rdy(qdev, 228U, 2147483648U, 0U);
    }
    if (status != 0) {
      goto exit;
    } else {
    }
    {
    value = value | (enable != 0 ? 134217728U : 0U);
    ql_write32((struct ql_adapter const *)qdev, 228, value);
    ql_write32((struct ql_adapter const *)qdev, 232, enable != 0 ? mask : 0U);
    }
  } else {
  }
  exit: ;
  return (status);
}
}
static void ql_enable_interrupts(struct ql_adapter *qdev )
{
  {
  {
  ql_write32((struct ql_adapter const *)qdev, 52, 1073758208U);
  }
  return;
}
}
static void ql_disable_interrupts(struct ql_adapter *qdev )
{
  {
  {
  ql_write32((struct ql_adapter const *)qdev, 52, 1073741824U);
  }
  return;
}
}
u32 ql_enable_completion_interrupt(struct ql_adapter *qdev , u32 intr )
{
  u32 var ;
  unsigned long hw_flags ;
  struct intr_context *ctx ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  var = 0U;
  hw_flags = 0UL;
  ctx = (struct intr_context *)(& qdev->intr_context) + (unsigned long )intr;
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    {
    tmp___1 = ldv__builtin_expect(intr != 0U, 1L);
    }
    if (tmp___1 != 0L) {
      {
      ql_write32((struct ql_adapter const *)qdev, 52, ctx->intr_en_mask);
      var = ql_read32((struct ql_adapter const *)qdev, 48);
      }
      return (var);
    } else {
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_77(& qdev->hw_lock);
  tmp___2 = atomic_dec_and_test(& ctx->irq_cnt);
  }
  if (tmp___2 != 0) {
    {
    ql_write32((struct ql_adapter const *)qdev, 52, ctx->intr_en_mask);
    var = ql_read32((struct ql_adapter const *)qdev, 48);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_78(& qdev->hw_lock, hw_flags);
  }
  return (var);
}
}
static u32 ql_disable_completion_interrupt(struct ql_adapter *qdev , u32 intr )
{
  u32 var ;
  struct intr_context *ctx ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  var = 0U;
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    {
    tmp___1 = ldv__builtin_expect(intr != 0U, 1L);
    }
    if (tmp___1 != 0L) {
      return (0U);
    } else {
    }
  } else {
  }
  {
  ctx = (struct intr_context *)(& qdev->intr_context) + (unsigned long )intr;
  ldv_spin_lock_79(& qdev->hw_lock);
  tmp___2 = atomic_read((atomic_t const *)(& ctx->irq_cnt));
  }
  if (tmp___2 == 0) {
    {
    ql_write32((struct ql_adapter const *)qdev, 52, ctx->intr_dis_mask);
    var = ql_read32((struct ql_adapter const *)qdev, 48);
    }
  } else {
  }
  {
  atomic_inc(& ctx->irq_cnt);
  ldv_spin_unlock_80(& qdev->hw_lock);
  }
  return (var);
}
}
static void ql_enable_all_completion_interrupts(struct ql_adapter *qdev )
{
  int i ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  i = 0;
  goto ldv_52239;
  ldv_52238:
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    atomic_set(& qdev->intr_context[i].irq_cnt, 1);
    }
  } else {
    {
    tmp___1 = ldv__builtin_expect(i == 0, 0L);
    }
    if (tmp___1 != 0L) {
      {
      atomic_set(& qdev->intr_context[i].irq_cnt, 1);
      }
    } else {
    }
  }
  {
  ql_enable_completion_interrupt(qdev, (u32 )i);
  i = i + 1;
  }
  ldv_52239: ;
  if ((u32 )i < qdev->intr_count) {
    goto ldv_52238;
  } else {
  }
  return;
}
}
static int ql_validate_flash(struct ql_adapter *qdev , u32 size , char const *str )
{
  int status ;
  int i ;
  u16 csum ;
  __le16 *flash ;
  __le16 *tmp ;
  {
  {
  csum = 0U;
  flash = (__le16 *)(& qdev->flash);
  status = strncmp((char const *)(& qdev->flash), str, 4UL);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Invalid flash signature.\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  i = 0;
  goto ldv_52251;
  ldv_52250:
  tmp = flash;
  flash = flash + 1;
  csum = (int )csum + (int )*tmp;
  i = i + 1;
  ldv_52251: ;
  if ((u32 )i < size) {
    goto ldv_52250;
  } else {
  }
  if ((unsigned int )csum != 0U) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Invalid flash checksum, csum = 0x%.04x.\n",
                 (int )csum);
      }
    } else {
    }
  } else {
  }
  return ((int )csum);
}
}
static int ql_read_flash_word(struct ql_adapter *qdev , int offset , __le32 *data )
{
  int status ;
  {
  {
  status = 0;
  status = ql_wait_reg_rdy(qdev, 136U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 136, (u32 )(offset | 1073741824));
  status = ql_wait_reg_rdy(qdev, 136U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read32((struct ql_adapter const *)qdev, 140);
  }
  exit: ;
  return (status);
}
}
static int ql_get_8000_flash_params(struct ql_adapter *qdev )
{
  u32 i ;
  u32 size ;
  int status ;
  __le32 *p ;
  u32 offset ;
  u8 mac_addr[6U] ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  p = (__le32 *)(& qdev->flash);
  if (qdev->port == 0U) {
    offset = 327808U;
  } else {
    offset = 328064U;
  }
  {
  tmp = ql_sem_spinlock(qdev, 50331648U);
  }
  if (tmp != 0) {
    return (-110);
  } else {
  }
  size = 128U;
  i = 0U;
  goto ldv_52271;
  ldv_52270:
  {
  status = ql_read_flash_word(qdev, (int )(i + offset), p);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading flash.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  i = i + 1U;
  p = p + 1;
  ldv_52271: ;
  if (i < size) {
    goto ldv_52270;
  } else {
  }
  {
  status = ql_validate_flash(qdev, 256U, "8000");
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Invalid flash.\n");
      }
    } else {
    }
    status = -22;
    goto exit;
  } else {
  }
  if ((unsigned int )qdev->flash.flash_params_8000.data_type1 == 2U) {
    {
    memcpy((void *)(& mac_addr), (void const *)(& qdev->flash.flash_params_8000.mac_addr1),
           (size_t )(qdev->ndev)->addr_len);
    }
  } else {
    {
    memcpy((void *)(& mac_addr), (void const *)(& qdev->flash.flash_params_8000.mac_addr),
           (size_t )(qdev->ndev)->addr_len);
    }
  }
  {
  tmp___0 = is_valid_ether_addr((u8 const *)(& mac_addr));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Invalid MAC address.\n");
      }
    } else {
    }
    status = -22;
    goto exit;
  } else {
  }
  {
  memcpy((void *)(qdev->ndev)->dev_addr, (void const *)(& mac_addr), (size_t )(qdev->ndev)->addr_len);
  }
  exit:
  {
  ql_sem_unlock(qdev, 50331648U);
  }
  return (status);
}
}
static int ql_get_8012_flash_params(struct ql_adapter *qdev )
{
  int i ;
  int status ;
  __le32 *p ;
  u32 offset ;
  u32 size ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  p = (__le32 *)(& qdev->flash);
  offset = 0U;
  size = 5U;
  if (qdev->port != 0U) {
    offset = size;
  } else {
  }
  {
  tmp = ql_sem_spinlock(qdev, 50331648U);
  }
  if (tmp != 0) {
    return (-110);
  } else {
  }
  i = 0;
  goto ldv_52283;
  ldv_52282:
  {
  status = ql_read_flash_word(qdev, (int )((u32 )i + offset), p);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading flash.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  i = i + 1;
  p = p + 1;
  ldv_52283: ;
  if ((u32 )i < size) {
    goto ldv_52282;
  } else {
  }
  {
  status = ql_validate_flash(qdev, 10U, "8012");
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Invalid flash.\n");
      }
    } else {
    }
    status = -22;
    goto exit;
  } else {
  }
  {
  tmp___0 = is_valid_ether_addr((u8 const *)(& qdev->flash.flash_params_8012.mac_addr));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    status = -22;
    goto exit;
  } else {
  }
  {
  memcpy((void *)(qdev->ndev)->dev_addr, (void const *)(& qdev->flash.flash_params_8012.mac_addr),
         (size_t )(qdev->ndev)->addr_len);
  }
  exit:
  {
  ql_sem_unlock(qdev, 50331648U);
  }
  return (status);
}
}
static int ql_write_xgmac_reg(struct ql_adapter *qdev , u32 reg , u32 data )
{
  int status ;
  {
  {
  status = ql_wait_reg_rdy(qdev, 120U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 124, data);
  ql_write32((struct ql_adapter const *)qdev, 120, reg);
  }
  return (status);
}
}
int ql_read_xgmac_reg(struct ql_adapter *qdev , u32 reg , u32 *data )
{
  int status ;
  {
  {
  status = 0;
  status = ql_wait_reg_rdy(qdev, 120U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 120, reg | 1073741824U);
  status = ql_wait_reg_rdy(qdev, 120U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read32((struct ql_adapter const *)qdev, 124);
  }
  exit: ;
  return (status);
}
}
int ql_read_xgmac_reg64(struct ql_adapter *qdev , u32 reg , u64 *data )
{
  int status ;
  u32 hi ;
  u32 lo ;
  {
  {
  status = 0;
  hi = 0U;
  lo = 0U;
  status = ql_read_xgmac_reg(qdev, reg, & lo);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  status = ql_read_xgmac_reg(qdev, reg + 4U, & hi);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  *data = (unsigned long long )lo | ((unsigned long long )hi << 32);
  exit: ;
  return (status);
}
}
static int ql_8000_port_initialize(struct ql_adapter *qdev )
{
  int status ;
  {
  {
  status = ql_mb_about_fw(qdev);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  status = ql_mb_get_fw_state(qdev);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  queue_delayed_work(qdev->workqueue, & qdev->mpi_port_cfg_work, 0UL);
  }
  exit: ;
  return (status);
}
}
static int ql_8012_port_initialize(struct ql_adapter *qdev )
{
  int status ;
  u32 data ;
  int tmp ;
  {
  {
  status = 0;
  tmp = ql_sem_trylock(qdev, qdev->xg_sem_mask);
  }
  if (tmp != 0) {
    if ((qdev->msg_enable & 4U) != 0U) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "Another function has the semaphore, so wait for the port init bit to come ready.\n");
      }
    } else {
    }
    {
    status = ql_wait_reg_rdy(qdev, 48U, qdev->port_init, 0U);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 4U) != 0U) {
        {
        netdev_crit((struct net_device const *)qdev->ndev, "Port initialize timed out.\n");
        }
      } else {
      }
    } else {
    }
    return (status);
  } else {
  }
  if ((qdev->msg_enable & 4U) != 0U) {
    {
    netdev_info((struct net_device const *)qdev->ndev, "Got xgmac semaphore!.\n");
    }
  } else {
  }
  {
  status = ql_read_xgmac_reg(qdev, 264U, & data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  data = data | 1U;
  status = ql_write_xgmac_reg(qdev, 264U, data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  data = data & 4294967294U;
  data = data | 64U;
  data = data | 1024U;
  data = data | 2048U;
  status = ql_write_xgmac_reg(qdev, 264U, data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  status = ql_read_xgmac_reg(qdev, 268U, & data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  data = data & 4294967294U;
  data = data | 2U;
  status = ql_write_xgmac_reg(qdev, 268U, data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  status = ql_read_xgmac_reg(qdev, 272U, & data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  data = data & 4294967294U;
  data = data | 2U;
  status = ql_write_xgmac_reg(qdev, 272U, data);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  status = ql_write_xgmac_reg(qdev, 308U, 2776629248U);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  status = ql_write_xgmac_reg(qdev, 312U, 9600U);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 48, (qdev->port_init << 16) | qdev->port_init);
  }
  end:
  {
  ql_sem_unlock(qdev, qdev->xg_sem_mask);
  }
  return (status);
}
}
__inline static unsigned int ql_lbq_block_size(struct ql_adapter *qdev )
{
  {
  return ((unsigned int )(4096UL << (int )qdev->lbq_buf_order));
}
}
static struct bq_desc *ql_get_curr_lbuf(struct rx_ring *rx_ring )
{
  struct bq_desc *lbq_desc ;
  {
  lbq_desc = rx_ring->lbq + (unsigned long )rx_ring->lbq_curr_idx;
  rx_ring->lbq_curr_idx = rx_ring->lbq_curr_idx + 1U;
  if (rx_ring->lbq_curr_idx == rx_ring->lbq_len) {
    rx_ring->lbq_curr_idx = 0U;
  } else {
  }
  rx_ring->lbq_free_cnt = rx_ring->lbq_free_cnt + 1U;
  return (lbq_desc);
}
}
static struct bq_desc *ql_get_curr_lchunk(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  struct bq_desc *lbq_desc ;
  struct bq_desc *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = ql_get_curr_lbuf(rx_ring);
  lbq_desc = tmp;
  pci_dma_sync_single_for_cpu(qdev->pdev, lbq_desc->mapaddr, (size_t )rx_ring->lbq_buf_size,
                              2);
  tmp___1 = ql_lbq_block_size(qdev);
  }
  if (lbq_desc->p.pg_chunk.offset + rx_ring->lbq_buf_size == tmp___1) {
    {
    tmp___0 = ql_lbq_block_size(qdev);
    pci_unmap_page(qdev->pdev, lbq_desc->p.pg_chunk.map, (size_t )tmp___0, 2);
    }
  } else {
  }
  return (lbq_desc);
}
}
static struct bq_desc *ql_get_curr_sbuf(struct rx_ring *rx_ring )
{
  struct bq_desc *sbq_desc ;
  {
  sbq_desc = rx_ring->sbq + (unsigned long )rx_ring->sbq_curr_idx;
  rx_ring->sbq_curr_idx = rx_ring->sbq_curr_idx + 1U;
  if (rx_ring->sbq_curr_idx == rx_ring->sbq_len) {
    rx_ring->sbq_curr_idx = 0U;
  } else {
  }
  rx_ring->sbq_free_cnt = rx_ring->sbq_free_cnt + 1U;
  return (sbq_desc);
}
}
static void ql_update_cq(struct rx_ring *rx_ring )
{
  long tmp ;
  {
  {
  rx_ring->cnsmr_idx = rx_ring->cnsmr_idx + 1U;
  rx_ring->curr_entry = rx_ring->curr_entry + 1;
  tmp = ldv__builtin_expect(rx_ring->cnsmr_idx == rx_ring->cq_len, 0L);
  }
  if (tmp != 0L) {
    rx_ring->cnsmr_idx = 0U;
    rx_ring->curr_entry = (struct ql_net_rsp_iocb *)rx_ring->cq_base;
  } else {
  }
  return;
}
}
static void ql_write_cq_idx(struct rx_ring *rx_ring )
{
  {
  {
  ql_write_db_reg(rx_ring->cnsmr_idx, rx_ring->cnsmr_idx_db_reg);
  }
  return;
}
}
static int ql_get_next_chunk(struct ql_adapter *qdev , struct rx_ring *rx_ring , struct bq_desc *lbq_desc )
{
  u64 map ;
  long tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  unsigned int tmp___3 ;
  {
  if ((unsigned long )rx_ring->pg_chunk.page == (unsigned long )((struct page *)0)) {
    {
    rx_ring->pg_chunk.page = alloc_pages(16672U, qdev->lbq_buf_order);
    tmp = ldv__builtin_expect((unsigned long )rx_ring->pg_chunk.page == (unsigned long )((struct page *)0),
                           0L);
    }
    if (tmp != 0L) {
      if ((int )qdev->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "page allocation failed.\n");
        }
      } else {
      }
      return (-12);
    } else {
    }
    {
    rx_ring->pg_chunk.offset = 0U;
    tmp___0 = ql_lbq_block_size(qdev);
    map = pci_map_page(qdev->pdev, rx_ring->pg_chunk.page, 0UL, (size_t )tmp___0,
                       2);
    tmp___1 = pci_dma_mapping_error(qdev->pdev, map);
    }
    if (tmp___1 != 0) {
      {
      __free_pages(rx_ring->pg_chunk.page, qdev->lbq_buf_order);
      rx_ring->pg_chunk.page = (struct page *)0;
      }
      if ((int )qdev->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "PCI mapping failed.\n");
        }
      } else {
      }
      return (-12);
    } else {
    }
    {
    rx_ring->pg_chunk.map = map;
    tmp___2 = lowmem_page_address((struct page const *)rx_ring->pg_chunk.page);
    rx_ring->pg_chunk.va = (char *)tmp___2;
    }
  } else {
  }
  {
  lbq_desc->p.pg_chunk = rx_ring->pg_chunk;
  rx_ring->pg_chunk.offset = rx_ring->pg_chunk.offset + rx_ring->lbq_buf_size;
  tmp___3 = ql_lbq_block_size(qdev);
  }
  if (rx_ring->pg_chunk.offset == tmp___3) {
    rx_ring->pg_chunk.page = (struct page *)0;
    lbq_desc->p.pg_chunk.last_flag = 1U;
  } else {
    {
    rx_ring->pg_chunk.va = rx_ring->pg_chunk.va + (unsigned long )rx_ring->lbq_buf_size;
    get_page(rx_ring->pg_chunk.page);
    lbq_desc->p.pg_chunk.last_flag = 0U;
    }
  }
  return (0);
}
}
static void ql_update_lbq(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  u32 clean_idx ;
  u32 start_idx ;
  struct bq_desc *lbq_desc ;
  u64 map ;
  int i ;
  int tmp ;
  {
  clean_idx = rx_ring->lbq_clean_idx;
  start_idx = clean_idx;
  goto ldv_52359;
  ldv_52358:
  i = (int )rx_ring->lbq_clean_idx & 15;
  goto ldv_52356;
  ldv_52355: ;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "lbq: try cleaning clean_idx = %d.\n",
                  clean_idx);
    }
  } else {
  }
  {
  lbq_desc = rx_ring->lbq + (unsigned long )clean_idx;
  tmp = ql_get_next_chunk(qdev, rx_ring, lbq_desc);
  }
  if (tmp != 0) {
    rx_ring->lbq_clean_idx = clean_idx;
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Could not get a page chunk, i=%d, clean_idx =%d .\n",
                 i, clean_idx);
      }
    } else {
    }
    return;
  } else {
  }
  {
  map = lbq_desc->p.pg_chunk.map + (u64 )lbq_desc->p.pg_chunk.offset;
  lbq_desc->mapaddr = map;
  lbq_desc->maplen = rx_ring->lbq_buf_size;
  *(lbq_desc->addr) = map;
  pci_dma_sync_single_for_device(qdev->pdev, map, (size_t )rx_ring->lbq_buf_size,
                                 2);
  clean_idx = clean_idx + 1U;
  }
  if (clean_idx == rx_ring->lbq_len) {
    clean_idx = 0U;
  } else {
  }
  i = i + 1;
  ldv_52356: ;
  if (i <= 15) {
    goto ldv_52355;
  } else {
  }
  rx_ring->lbq_clean_idx = clean_idx;
  rx_ring->lbq_prod_idx = rx_ring->lbq_prod_idx + 16U;
  if (rx_ring->lbq_prod_idx == rx_ring->lbq_len) {
    rx_ring->lbq_prod_idx = 0U;
  } else {
  }
  rx_ring->lbq_free_cnt = rx_ring->lbq_free_cnt - 16U;
  ldv_52359: ;
  if (rx_ring->lbq_free_cnt > 32U) {
    goto ldv_52358;
  } else {
  }
  if (start_idx != clean_idx) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "lbq: updating prod idx = %d.\n",
                    rx_ring->lbq_prod_idx);
      }
    } else {
    }
    {
    ql_write_db_reg(rx_ring->lbq_prod_idx, rx_ring->lbq_prod_idx_db_reg);
    }
  } else {
  }
  return;
}
}
static void ql_update_sbq(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  u32 clean_idx ;
  u32 start_idx ;
  struct bq_desc *sbq_desc ;
  u64 map ;
  int i ;
  int tmp ;
  {
  clean_idx = rx_ring->sbq_clean_idx;
  start_idx = clean_idx;
  goto ldv_52374;
  ldv_52373:
  i = (int )rx_ring->sbq_clean_idx & 15;
  goto ldv_52371;
  ldv_52370:
  sbq_desc = rx_ring->sbq + (unsigned long )clean_idx;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "sbq: try cleaning clean_idx = %d.\n",
                  clean_idx);
    }
  } else {
  }
  if ((unsigned long )sbq_desc->p.skb == (unsigned long )((struct sk_buff *)0)) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "sbq: getting new skb for index %d.\n",
                    sbq_desc->index);
      }
    } else {
    }
    {
    sbq_desc->p.skb = netdev_alloc_skb(qdev->ndev, 256U);
    }
    if ((unsigned long )sbq_desc->p.skb == (unsigned long )((struct sk_buff *)0)) {
      rx_ring->sbq_clean_idx = clean_idx;
      return;
    } else {
    }
    {
    skb_reserve(sbq_desc->p.skb, 0);
    map = pci_map_single(qdev->pdev, (void *)(sbq_desc->p.skb)->data, (size_t )rx_ring->sbq_buf_size,
                         2);
    tmp = pci_dma_mapping_error(qdev->pdev, map);
    }
    if (tmp != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "PCI mapping failed.\n");
        }
      } else {
      }
      {
      rx_ring->sbq_clean_idx = clean_idx;
      dev_kfree_skb_any(sbq_desc->p.skb);
      sbq_desc->p.skb = (struct sk_buff *)0;
      }
      return;
    } else {
    }
    sbq_desc->mapaddr = map;
    sbq_desc->maplen = rx_ring->sbq_buf_size;
    *(sbq_desc->addr) = map;
  } else {
  }
  clean_idx = clean_idx + 1U;
  if (clean_idx == rx_ring->sbq_len) {
    clean_idx = 0U;
  } else {
  }
  i = i + 1;
  ldv_52371: ;
  if (i <= 15) {
    goto ldv_52370;
  } else {
  }
  rx_ring->sbq_clean_idx = clean_idx;
  rx_ring->sbq_prod_idx = rx_ring->sbq_prod_idx + 16U;
  if (rx_ring->sbq_prod_idx == rx_ring->sbq_len) {
    rx_ring->sbq_prod_idx = 0U;
  } else {
  }
  rx_ring->sbq_free_cnt = rx_ring->sbq_free_cnt - 16U;
  ldv_52374: ;
  if (rx_ring->sbq_free_cnt > 16U) {
    goto ldv_52373;
  } else {
  }
  if (start_idx != clean_idx) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "sbq: updating prod idx = %d.\n",
                    rx_ring->sbq_prod_idx);
      }
    } else {
    }
    {
    ql_write_db_reg(rx_ring->sbq_prod_idx, rx_ring->sbq_prod_idx_db_reg);
    }
  } else {
  }
  return;
}
}
static void ql_update_buffer_queues(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  {
  {
  ql_update_sbq(qdev, rx_ring);
  ql_update_lbq(qdev, rx_ring);
  }
  return;
}
}
static void ql_unmap_send(struct ql_adapter *qdev , struct tx_ring_desc *tx_ring_desc ,
                          int mapped )
{
  int i ;
  {
  i = 0;
  goto ldv_52387;
  ldv_52386: ;
  if (i == 0 || (i == 7 && mapped > 7)) {
    if (i == 7) {
      if ((qdev->msg_enable & 1024U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "unmapping OAL area.\n");
        }
      } else {
      }
    } else {
    }
    {
    pci_unmap_single(qdev->pdev, ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )i)->mapaddr,
                     (size_t )((struct map_list *)(& tx_ring_desc->map) + (unsigned long )i)->maplen,
                     1);
    }
  } else {
    if ((qdev->msg_enable & 1024U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "unmapping frag %d.\n",
                    i);
      }
    } else {
    }
    {
    pci_unmap_page(qdev->pdev, ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )i)->mapaddr,
                   (size_t )((struct map_list *)(& tx_ring_desc->map) + (unsigned long )i)->maplen,
                   1);
    }
  }
  i = i + 1;
  ldv_52387: ;
  if (i < mapped) {
    goto ldv_52386;
  } else {
  }
  return;
}
}
static int ql_map_send(struct ql_adapter *qdev , struct ob_mac_iocb_req *mac_iocb_ptr ,
                       struct sk_buff *skb , struct tx_ring_desc *tx_ring_desc )
{
  int len ;
  unsigned int tmp ;
  dma_addr_t map ;
  int frag_idx ;
  int err ;
  int map_idx ;
  struct tx_buf_desc *tbd ;
  int frag_cnt ;
  unsigned char *tmp___0 ;
  skb_frag_t *frag ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  len = (int )tmp;
  map_idx = 0;
  tbd = (struct tx_buf_desc *)(& mac_iocb_ptr->tbd);
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  frag_cnt = (int )((struct skb_shared_info *)tmp___0)->nr_frags;
  }
  if (frag_cnt != 0) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "frag_cnt = %d.\n",
                    frag_cnt);
      }
    } else {
    }
  } else {
  }
  {
  map = pci_map_single(qdev->pdev, (void *)skb->data, (size_t )len, 1);
  err = pci_dma_mapping_error(qdev->pdev, map);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "PCI mapping failed with error: %d\n",
                 err);
      }
    } else {
    }
    return (16);
  } else {
  }
  tbd->len = (unsigned int )len;
  tbd->addr = map;
  ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->mapaddr = map;
  ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->maplen = (__u32 )len;
  map_idx = map_idx + 1;
  frag_idx = 0;
  goto ldv_52405;
  ldv_52404:
  {
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )frag_idx;
  tbd = tbd + 1;
  }
  if (frag_idx == 6 && frag_cnt > 7) {
    {
    map = pci_map_single(qdev->pdev, (void *)(& tx_ring_desc->oal), 132UL, 1);
    err = pci_dma_mapping_error(qdev->pdev, map);
    }
    if (err != 0) {
      if ((qdev->msg_enable & 256U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "PCI mapping outbound address list with error: %d\n",
                   err);
        }
      } else {
      }
      goto map_error;
    } else {
    }
    tbd->addr = map;
    tbd->len = (unsigned int )((unsigned long )(frag_cnt - frag_idx)) * 12U | 1073741824U;
    ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->mapaddr = map;
    ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->maplen = 132U;
    tbd = (struct tx_buf_desc *)(& tx_ring_desc->oal);
    map_idx = map_idx + 1;
  } else {
  }
  {
  tmp___2 = skb_frag_size((skb_frag_t const *)frag);
  map = skb_frag_dma_map(& (qdev->pdev)->dev, (skb_frag_t const *)frag, 0UL, (size_t )tmp___2,
                         1);
  err = dma_mapping_error(& (qdev->pdev)->dev, map);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "PCI mapping frags failed with error: %d.\n",
                 err);
      }
    } else {
    }
    goto map_error;
  } else {
  }
  {
  tbd->addr = map;
  tbd->len = skb_frag_size((skb_frag_t const *)frag);
  ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->mapaddr = map;
  ((struct map_list *)(& tx_ring_desc->map) + (unsigned long )map_idx)->maplen = skb_frag_size((skb_frag_t const *)frag);
  frag_idx = frag_idx + 1;
  map_idx = map_idx + 1;
  }
  ldv_52405: ;
  if (frag_idx < frag_cnt) {
    goto ldv_52404;
  } else {
  }
  tx_ring_desc->map_cnt = map_idx;
  tbd->len = tbd->len | 2147483648U;
  return (0);
  map_error:
  {
  ql_unmap_send(qdev, tx_ring_desc, map_idx);
  }
  return (16);
}
}
static void ql_categorize_rx_err(struct ql_adapter *qdev , u8 rx_err , struct rx_ring *rx_ring )
{
  struct nic_stats *stats ;
  {
  stats = & qdev->nic_stats;
  stats->rx_err_count = stats->rx_err_count + 1ULL;
  rx_ring->rx_errors = rx_ring->rx_errors + 1ULL;
  {
  if (((int )rx_err & 28) == 4) {
    goto case_4;
  } else {
  }
  if (((int )rx_err & 28) == 8) {
    goto case_8;
  } else {
  }
  if (((int )rx_err & 28) == 16) {
    goto case_16;
  } else {
  }
  if (((int )rx_err & 28) == 20) {
    goto case_20;
  } else {
  }
  if (((int )rx_err & 28) == 24) {
    goto case_24;
  } else {
  }
  if (((int )rx_err & 28) == 28) {
    goto case_28;
  } else {
  }
  goto switch_default;
  case_4:
  stats->rx_code_err = stats->rx_code_err + 1ULL;
  goto ldv_52414;
  case_8:
  stats->rx_oversize_err = stats->rx_oversize_err + 1ULL;
  goto ldv_52414;
  case_16:
  stats->rx_undersize_err = stats->rx_undersize_err + 1ULL;
  goto ldv_52414;
  case_20:
  stats->rx_preamble_err = stats->rx_preamble_err + 1ULL;
  goto ldv_52414;
  case_24:
  stats->rx_frame_len_err = stats->rx_frame_len_err + 1ULL;
  goto ldv_52414;
  case_28:
  stats->rx_crc_err = stats->rx_crc_err + 1ULL;
  switch_default: ;
  goto ldv_52414;
  switch_break: ;
  }
  ldv_52414: ;
  return;
}
}
static void ql_update_mac_hdr_len(struct ql_adapter *qdev , struct ib_mac_iocb_rsp *ib_mac_rsp ,
                                  void *page , size_t *len )
{
  u16 *tags ;
  {
  if (((qdev->ndev)->features & 256ULL) != 0ULL) {
    return;
  } else {
  }
  if (((int )ib_mac_rsp->flags2 & 2) != 0) {
    tags = (u16 *)page;
    if ((unsigned int )*(tags + 6UL) == 33024U && (unsigned int )*(tags + 8UL) == 33024U) {
      *len = *len + 8UL;
    } else {
      *len = *len + 4UL;
    }
  } else {
  }
  return;
}
}
static void ql_process_mac_rx_gro_page(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                       struct ib_mac_iocb_rsp *ib_mac_rsp , u32 length ,
                                       u16 vlan_id )
{
  struct sk_buff *skb ;
  struct bq_desc *lbq_desc ;
  struct bq_desc *tmp ;
  struct napi_struct *napi ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  {
  {
  tmp = ql_get_curr_lchunk(qdev, rx_ring);
  lbq_desc = tmp;
  napi = & rx_ring->napi;
  }
  if (((int )ib_mac_rsp->flags2 & 28) != 0) {
    {
    ql_categorize_rx_err(qdev, (int )ib_mac_rsp->flags2, rx_ring);
    put_page(lbq_desc->p.pg_chunk.page);
    }
    return;
  } else {
  }
  {
  napi->dev = qdev->ndev;
  skb = napi_get_frags(napi);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Couldn\'t get an skb, exiting.\n");
      }
    } else {
    }
    {
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    put_page(lbq_desc->p.pg_chunk.page);
    }
    return;
  } else {
  }
  {
  __builtin_prefetch((void const *)lbq_desc->p.pg_chunk.va);
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  __skb_fill_page_desc(skb, (int )((struct skb_shared_info *)tmp___0)->nr_frags, lbq_desc->p.pg_chunk.page,
                       (int )lbq_desc->p.pg_chunk.offset, (int )length);
  skb->len = skb->len + length;
  skb->data_len = skb->data_len + length;
  skb->truesize = skb->truesize + length;
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp___1)->nr_frags = (unsigned char )((int )((struct skb_shared_info *)tmp___1)->nr_frags + 1);
  rx_ring->rx_packets = rx_ring->rx_packets + 1ULL;
  rx_ring->rx_bytes = rx_ring->rx_bytes + (u64 )length;
  skb->ip_summed = 1U;
  skb_record_rx_queue(skb, (int )rx_ring->cq_id);
  }
  if ((unsigned int )vlan_id != 65535U) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )vlan_id);
    }
  } else {
  }
  {
  napi_gro_frags(napi);
  }
  return;
}
}
static void ql_process_mac_rx_page(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                   struct ib_mac_iocb_rsp *ib_mac_rsp , u32 length ,
                                   u16 vlan_id )
{
  struct net_device *ndev ;
  struct sk_buff *skb ;
  void *addr ;
  struct bq_desc *lbq_desc ;
  struct bq_desc *tmp ;
  struct napi_struct *napi ;
  size_t hlen ;
  unsigned char *tmp___0 ;
  struct iphdr *iph ;
  {
  {
  ndev = qdev->ndev;
  skb = (struct sk_buff *)0;
  tmp = ql_get_curr_lchunk(qdev, rx_ring);
  lbq_desc = tmp;
  napi = & rx_ring->napi;
  hlen = 14UL;
  skb = netdev_alloc_skb(ndev, length);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    put_page(lbq_desc->p.pg_chunk.page);
    }
    return;
  } else {
  }
  {
  addr = (void *)lbq_desc->p.pg_chunk.va;
  __builtin_prefetch((void const *)addr);
  }
  if (((int )ib_mac_rsp->flags2 & 28) != 0) {
    {
    ql_categorize_rx_err(qdev, (int )ib_mac_rsp->flags2, rx_ring);
    }
    goto err_out;
  } else {
  }
  {
  ql_update_mac_hdr_len(qdev, ib_mac_rsp, addr, & hlen);
  }
  if ((size_t )skb->len > (size_t )ndev->mtu + hlen) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Segment too small, dropping.\n");
      }
    } else {
    }
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    goto err_out;
  } else {
  }
  {
  tmp___0 = skb_put(skb, (unsigned int )hlen);
  memcpy((void *)tmp___0, (void const *)addr, hlen);
  }
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "%d bytes of headers and data in large. Chain page to new skb and pull tail.\n",
                  length);
    }
  } else {
  }
  {
  skb_fill_page_desc(skb, 0, lbq_desc->p.pg_chunk.page, (int )(lbq_desc->p.pg_chunk.offset + (unsigned int )hlen),
                     (int )(length - (unsigned int )hlen));
  skb->len = skb->len + (length - (unsigned int )hlen);
  skb->data_len = skb->data_len + (length - (unsigned int )hlen);
  skb->truesize = skb->truesize + (length - (unsigned int )hlen);
  rx_ring->rx_packets = rx_ring->rx_packets + 1ULL;
  rx_ring->rx_bytes = rx_ring->rx_bytes + (u64 )skb->len;
  skb->protocol = eth_type_trans(skb, ndev);
  skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  if ((ndev->features & 4294967296ULL) != 0ULL && ((int )ib_mac_rsp->flags1 & 28) == 0) {
    if (((int )ib_mac_rsp->flags2 & 64) != 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "TCP checksum done!\n");
        }
      } else {
      }
      skb->ip_summed = 1U;
    } else
    if (((int )ib_mac_rsp->flags2 & 32) != 0 && ((int )ib_mac_rsp->flags3 & 8) != 0) {
      iph = (struct iphdr *)addr + hlen;
      if (((int )iph->frag_off & 65343) == 0) {
        skb->ip_summed = 1U;
        if ((qdev->msg_enable & 2048U) != 0U) {
          {
          netdev_printk("\017", (struct net_device const *)qdev->ndev, "UDP checksum done!\n");
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  skb_record_rx_queue(skb, (int )rx_ring->cq_id);
  }
  if ((unsigned int )vlan_id != 65535U) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )vlan_id);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 4U) {
    {
    napi_gro_receive(napi, skb);
    }
  } else {
    {
    netif_receive_skb(skb);
    }
  }
  return;
  err_out:
  {
  dev_kfree_skb_any(skb);
  put_page(lbq_desc->p.pg_chunk.page);
  }
  return;
}
}
static void ql_process_mac_rx_skb(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                  struct ib_mac_iocb_rsp *ib_mac_rsp , u32 length ,
                                  u16 vlan_id )
{
  struct net_device *ndev ;
  struct sk_buff *skb ;
  struct sk_buff *new_skb ;
  struct bq_desc *sbq_desc ;
  struct bq_desc *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  struct iphdr *iph ;
  {
  {
  ndev = qdev->ndev;
  skb = (struct sk_buff *)0;
  new_skb = (struct sk_buff *)0;
  tmp = ql_get_curr_sbuf(rx_ring);
  sbq_desc = tmp;
  skb = sbq_desc->p.skb;
  new_skb = netdev_alloc_skb(qdev->ndev, length);
  }
  if ((unsigned long )new_skb == (unsigned long )((struct sk_buff *)0)) {
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    return;
  } else {
  }
  {
  skb_reserve(new_skb, 0);
  tmp___0 = skb_put(new_skb, length);
  memcpy((void *)tmp___0, (void const *)skb->data, (size_t )length);
  skb = new_skb;
  }
  if (((int )ib_mac_rsp->flags2 & 28) != 0) {
    {
    ql_categorize_rx_err(qdev, (int )ib_mac_rsp->flags2, rx_ring);
    dev_kfree_skb_any(skb);
    }
    return;
  } else {
  }
  {
  tmp___1 = constant_test_bit(9L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___1 != 0) {
    {
    ql_check_lb_frame(qdev, skb);
    dev_kfree_skb_any(skb);
    }
    return;
  } else {
  }
  if (skb->len > ndev->mtu + 14U) {
    {
    dev_kfree_skb_any(skb);
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    }
    return;
  } else {
  }
  {
  __builtin_prefetch((void const *)skb->data);
  }
  if (((int )ib_mac_rsp->flags1 & 96) != 0) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s Multicast.\n",
                    ((int )ib_mac_rsp->flags1 & 96) != 32 ? (((int )ib_mac_rsp->flags1 & 96) != 64 ? (((int )ib_mac_rsp->flags1 & 96) == 96 ? (char *)"Promiscuous" : (char *)"") : (char *)"Registered") : (char *)"Hash");
      }
    } else {
    }
  } else {
  }
  if ((int )ib_mac_rsp->flags2 & 1) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Promiscuous Packet.\n");
      }
    } else {
    }
  } else {
  }
  {
  rx_ring->rx_packets = rx_ring->rx_packets + 1ULL;
  rx_ring->rx_bytes = rx_ring->rx_bytes + (u64 )skb->len;
  skb->protocol = eth_type_trans(skb, ndev);
  skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  if ((ndev->features & 4294967296ULL) != 0ULL && ((int )ib_mac_rsp->flags1 & 28) == 0) {
    if (((int )ib_mac_rsp->flags2 & 64) != 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "TCP checksum done!\n");
        }
      } else {
      }
      skb->ip_summed = 1U;
    } else
    if (((int )ib_mac_rsp->flags2 & 32) != 0 && ((int )ib_mac_rsp->flags3 & 8) != 0) {
      iph = (struct iphdr *)skb->data;
      if (((int )iph->frag_off & 65343) == 0) {
        skb->ip_summed = 1U;
        if ((qdev->msg_enable & 2048U) != 0U) {
          {
          netdev_printk("\017", (struct net_device const *)qdev->ndev, "UDP checksum done!\n");
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  skb_record_rx_queue(skb, (int )rx_ring->cq_id);
  }
  if ((unsigned int )vlan_id != 65535U) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )vlan_id);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 4U) {
    {
    napi_gro_receive(& rx_ring->napi, skb);
    }
  } else {
    {
    netif_receive_skb(skb);
    }
  }
  return;
}
}
static void ql_realign_skb(struct sk_buff *skb , int len )
{
  void *temp_addr ;
  {
  {
  temp_addr = (void *)skb->data;
  skb->data = skb->data;
  skb->tail = skb->tail;
  skb_copy_to_linear_data(skb, (void const *)temp_addr, (unsigned int )len);
  }
  return;
}
}
static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                       struct ib_mac_iocb_rsp *ib_mac_rsp )
{
  struct bq_desc *lbq_desc ;
  struct bq_desc *sbq_desc ;
  struct sk_buff *skb ;
  u32 length ;
  u32 hdr_len ;
  size_t hlen ;
  long tmp ;
  unsigned char *tmp___0 ;
  int size ;
  int i ;
  {
  skb = (struct sk_buff *)0;
  length = ib_mac_rsp->data_len;
  hdr_len = ib_mac_rsp->hdr_len;
  hlen = 14UL;
  if (((unsigned int )ib_mac_rsp->flags4 & 96U) == 96U) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Header of %d bytes in small buffer.\n",
                    hdr_len);
      }
    } else {
    }
    {
    sbq_desc = ql_get_curr_sbuf(rx_ring);
    pci_unmap_single(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen, 2);
    skb = sbq_desc->p.skb;
    ql_realign_skb(skb, (int )hdr_len);
    skb_put(skb, hdr_len);
    sbq_desc->p.skb = (struct sk_buff *)0;
    }
  } else {
  }
  {
  tmp = ldv__builtin_expect(length == 0U, 0L);
  }
  if (tmp != 0L) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "No Data buffer in this packet.\n");
      }
    } else {
    }
    return (skb);
  } else {
  }
  if (((int )ib_mac_rsp->flags3 & 64) != 0) {
    if (((int )ib_mac_rsp->flags4 & 64) != 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "Headers in small, data of %d bytes in small, combine them.\n",
                      length);
        }
      } else {
      }
      {
      sbq_desc = ql_get_curr_sbuf(rx_ring);
      pci_dma_sync_single_for_cpu(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen,
                                  2);
      tmp___0 = skb_put(skb, length);
      memcpy((void *)tmp___0, (void const *)(sbq_desc->p.skb)->data, (size_t )length);
      pci_dma_sync_single_for_device(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen,
                                     2);
      }
    } else {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "%d bytes in a single small buffer.\n",
                      length);
        }
      } else {
      }
      {
      sbq_desc = ql_get_curr_sbuf(rx_ring);
      skb = sbq_desc->p.skb;
      ql_realign_skb(skb, (int )length);
      skb_put(skb, length);
      pci_unmap_single(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen, 2);
      sbq_desc->p.skb = (struct sk_buff *)0;
      }
    }
  } else
  if ((int )((signed char )ib_mac_rsp->flags3) < 0) {
    if (((int )ib_mac_rsp->flags4 & 64) != 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "Header in small, %d bytes in large. Chain large to small!\n",
                      length);
        }
      } else {
      }
      {
      lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
      }
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "Chaining page at offset = %d, for %d bytes  to skb.\n",
                      lbq_desc->p.pg_chunk.offset, length);
        }
      } else {
      }
      {
      skb_fill_page_desc(skb, 0, lbq_desc->p.pg_chunk.page, (int )lbq_desc->p.pg_chunk.offset,
                         (int )length);
      skb->len = skb->len + length;
      skb->data_len = skb->data_len + length;
      skb->truesize = skb->truesize + length;
      }
    } else {
      {
      lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
      skb = netdev_alloc_skb(qdev->ndev, length);
      }
      if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
        if ((qdev->msg_enable & 2U) != 0U) {
          {
          netdev_printk("\017", (struct net_device const *)qdev->ndev, "No skb available, drop the packet.\n");
          }
        } else {
        }
        return ((struct sk_buff *)0);
      } else {
      }
      {
      pci_unmap_page(qdev->pdev, lbq_desc->mapaddr, (size_t )lbq_desc->maplen, 2);
      skb_reserve(skb, 0);
      }
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "%d bytes of headers and data in large. Chain page to new skb and pull tail.\n",
                      length);
        }
      } else {
      }
      {
      skb_fill_page_desc(skb, 0, lbq_desc->p.pg_chunk.page, (int )lbq_desc->p.pg_chunk.offset,
                         (int )length);
      skb->len = skb->len + length;
      skb->data_len = skb->data_len + length;
      skb->truesize = skb->truesize + length;
      length = 0U;
      ql_update_mac_hdr_len(qdev, ib_mac_rsp, (void *)lbq_desc->p.pg_chunk.va, & hlen);
      __pskb_pull_tail(skb, (int )hlen);
      }
    }
  } else {
    {
    i = 0;
    sbq_desc = ql_get_curr_sbuf(rx_ring);
    pci_unmap_single(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen, 2);
    }
    if (((int )ib_mac_rsp->flags4 & 64) == 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "%d bytes of headers & data in chain of large.\n",
                      length);
        }
      } else {
      }
      {
      skb = sbq_desc->p.skb;
      sbq_desc->p.skb = (struct sk_buff *)0;
      skb_reserve(skb, 0);
      }
    } else {
    }
    goto ldv_52484;
    ldv_52483:
    {
    lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
    size = (int )(length < rx_ring->lbq_buf_size ? length : rx_ring->lbq_buf_size);
    }
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Adding page %d to skb for %d bytes.\n",
                    i, size);
      }
    } else {
    }
    {
    skb_fill_page_desc(skb, i, lbq_desc->p.pg_chunk.page, (int )lbq_desc->p.pg_chunk.offset,
                       size);
    skb->len = skb->len + (unsigned int )size;
    skb->data_len = skb->data_len + (unsigned int )size;
    skb->truesize = skb->truesize + (unsigned int )size;
    length = length - (u32 )size;
    i = i + 1;
    }
    ldv_52484: ;
    if (length != 0U) {
      goto ldv_52483;
    } else {
    }
    {
    ql_update_mac_hdr_len(qdev, ib_mac_rsp, (void *)lbq_desc->p.pg_chunk.va, & hlen);
    __pskb_pull_tail(skb, (int )hlen);
    }
  }
  return (skb);
}
}
static void ql_process_mac_split_rx_intr(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                         struct ib_mac_iocb_rsp *ib_mac_rsp , u16 vlan_id )
{
  struct net_device *ndev ;
  struct sk_buff *skb ;
  long tmp ;
  int tmp___0 ;
  struct iphdr *iph ;
  {
  {
  ndev = qdev->ndev;
  skb = (struct sk_buff *)0;
  skb = ql_build_rx_skb(qdev, rx_ring, ib_mac_rsp);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  }
  if (tmp != 0L) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "No skb available, drop packet.\n");
      }
    } else {
    }
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    return;
  } else {
  }
  if (((int )ib_mac_rsp->flags2 & 28) != 0) {
    {
    ql_categorize_rx_err(qdev, (int )ib_mac_rsp->flags2, rx_ring);
    dev_kfree_skb_any(skb);
    }
    return;
  } else {
  }
  if (skb->len > ndev->mtu + 14U) {
    {
    dev_kfree_skb_any(skb);
    rx_ring->rx_dropped = rx_ring->rx_dropped + 1ULL;
    }
    return;
  } else {
  }
  {
  tmp___0 = constant_test_bit(9L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 != 0) {
    {
    ql_check_lb_frame(qdev, skb);
    dev_kfree_skb_any(skb);
    }
    return;
  } else {
  }
  {
  __builtin_prefetch((void const *)skb->data);
  }
  if (((int )ib_mac_rsp->flags1 & 96) != 0) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s Multicast.\n",
                    ((int )ib_mac_rsp->flags1 & 96) != 32 ? (((int )ib_mac_rsp->flags1 & 96) != 64 ? (((int )ib_mac_rsp->flags1 & 96) == 96 ? (char *)"Promiscuous" : (char *)"") : (char *)"Registered") : (char *)"Hash");
      }
    } else {
    }
    rx_ring->rx_multicast = rx_ring->rx_multicast + 1ULL;
  } else {
  }
  if ((int )ib_mac_rsp->flags2 & 1) {
    if ((qdev->msg_enable & 2048U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Promiscuous Packet.\n");
      }
    } else {
    }
  } else {
  }
  {
  skb->protocol = eth_type_trans(skb, ndev);
  skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  if ((ndev->features & 4294967296ULL) != 0ULL && ((int )ib_mac_rsp->flags1 & 28) == 0) {
    if (((int )ib_mac_rsp->flags2 & 64) != 0) {
      if ((qdev->msg_enable & 2048U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "TCP checksum done!\n");
        }
      } else {
      }
      skb->ip_summed = 1U;
    } else
    if (((int )ib_mac_rsp->flags2 & 32) != 0 && ((int )ib_mac_rsp->flags3 & 8) != 0) {
      iph = (struct iphdr *)skb->data;
      if (((int )iph->frag_off & 65343) == 0) {
        skb->ip_summed = 1U;
        if ((qdev->msg_enable & 2048U) != 0U) {
          {
          netdev_printk("\017", (struct net_device const *)qdev->ndev, "TCP checksum done!\n");
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  rx_ring->rx_packets = rx_ring->rx_packets + 1ULL;
  rx_ring->rx_bytes = rx_ring->rx_bytes + (u64 )skb->len;
  skb_record_rx_queue(skb, (int )rx_ring->cq_id);
  }
  if ((unsigned int )vlan_id != 65535U) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )vlan_id);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 4U) {
    {
    napi_gro_receive(& rx_ring->napi, skb);
    }
  } else {
    {
    netif_receive_skb(skb);
    }
  }
  return;
}
}
static unsigned long ql_process_mac_rx_intr(struct ql_adapter *qdev , struct rx_ring *rx_ring ,
                                            struct ib_mac_iocb_rsp *ib_mac_rsp )
{
  u32 length ;
  u16 vlan_id ;
  {
  length = ib_mac_rsp->data_len;
  vlan_id = ((int )ib_mac_rsp->flags2 & 2) != 0 && ((qdev->ndev)->features & 256ULL) != 0ULL ? ib_mac_rsp->vlan_id : 65535U;
  if (((int )ib_mac_rsp->flags4 & 32) != 0) {
    {
    ql_process_mac_split_rx_intr(qdev, rx_ring, ib_mac_rsp, (int )vlan_id);
    }
  } else
  if (((int )ib_mac_rsp->flags3 & 64) != 0) {
    {
    ql_process_mac_rx_skb(qdev, rx_ring, ib_mac_rsp, length, (int )vlan_id);
    }
  } else
  if (((int )((signed char )ib_mac_rsp->flags3) < 0 && ((int )ib_mac_rsp->flags1 & 28) == 0) && ((int )ib_mac_rsp->flags2 & 64) != 0) {
    {
    ql_process_mac_rx_gro_page(qdev, rx_ring, ib_mac_rsp, length, (int )vlan_id);
    }
  } else
  if ((int )((signed char )ib_mac_rsp->flags3) < 0) {
    {
    ql_process_mac_rx_page(qdev, rx_ring, ib_mac_rsp, length, (int )vlan_id);
    }
  } else {
    {
    ql_process_mac_split_rx_intr(qdev, rx_ring, ib_mac_rsp, (int )vlan_id);
    }
  }
  return ((unsigned long )length);
}
}
static void ql_process_mac_tx_intr(struct ql_adapter *qdev , struct ob_mac_iocb_rsp *mac_rsp )
{
  struct tx_ring *tx_ring ;
  struct tx_ring_desc *tx_ring_desc ;
  long tmp ;
  {
  {
  tx_ring = (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )mac_rsp->txq_idx;
  tx_ring_desc = tx_ring->q + (unsigned long )mac_rsp->tid;
  ql_unmap_send(qdev, tx_ring_desc, tx_ring_desc->map_cnt);
  tx_ring->tx_bytes = tx_ring->tx_bytes + (u64 )(tx_ring_desc->skb)->len;
  tx_ring->tx_packets = tx_ring->tx_packets + 1ULL;
  consume_skb(tx_ring_desc->skb);
  tx_ring_desc->skb = (struct sk_buff *)0;
  tmp = ldv__builtin_expect(((int )mac_rsp->flags1 & 248) != 0, 0L);
  }
  if (tmp != 0L) {
    if (((int )mac_rsp->flags1 & 8) != 0) {
      if ((qdev->msg_enable & 1024U) != 0U) {
        {
        netdev_warn((struct net_device const *)qdev->ndev, "Total descriptor length did not match transfer length.\n");
        }
      } else {
      }
    } else {
    }
    if (((int )mac_rsp->flags1 & 16) != 0) {
      if ((qdev->msg_enable & 1024U) != 0U) {
        {
        netdev_warn((struct net_device const *)qdev->ndev, "Frame too short to be valid, not sent.\n");
        }
      } else {
      }
    } else {
    }
    if (((int )mac_rsp->flags1 & 32) != 0) {
      if ((qdev->msg_enable & 1024U) != 0U) {
        {
        netdev_warn((struct net_device const *)qdev->ndev, "Frame too long, but sent anyway.\n");
        }
      } else {
      }
    } else {
    }
    if ((int )((signed char )mac_rsp->flags1) < 0) {
      if ((qdev->msg_enable & 1024U) != 0U) {
        {
        netdev_warn((struct net_device const *)qdev->ndev, "PCI backplane error. Frame not sent.\n");
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  atomic_inc(& tx_ring->tx_count);
  }
  return;
}
}
void ql_queue_fw_error(struct ql_adapter *qdev )
{
  {
  {
  ql_link_off(qdev);
  queue_delayed_work(qdev->workqueue, & qdev->mpi_reset_work, 0UL);
  }
  return;
}
}
void ql_queue_asic_error(struct ql_adapter *qdev )
{
  {
  {
  ql_link_off(qdev);
  ql_disable_interrupts(qdev);
  clear_bit(0L, (unsigned long volatile *)(& qdev->flags));
  set_bit(14L, (unsigned long volatile *)(& qdev->flags));
  queue_delayed_work(qdev->workqueue, & qdev->asic_reset_work, 0UL);
  }
  return;
}
}
static void ql_process_chip_ae_intr(struct ql_adapter *qdev , struct ib_ae_iocb_rsp *ib_ae_rsp )
{
  {
  {
  if ((int )ib_ae_rsp->event == 8) {
    goto case_8;
  } else {
  }
  if ((int )ib_ae_rsp->event == 6) {
    goto case_6;
  } else {
  }
  if ((int )ib_ae_rsp->event == 7) {
    goto case_7;
  } else {
  }
  if ((int )ib_ae_rsp->event == 64) {
    goto case_64;
  } else {
  }
  goto switch_default;
  case_8: ;
  if ((qdev->msg_enable & 64U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Management Processor Fatal Error.\n");
    }
  } else {
  }
  {
  ql_queue_fw_error(qdev);
  }
  return;
  case_6:
  {
  netdev_err((struct net_device const *)qdev->ndev, "Multiple CAM hits lookup occurred.\n");
  netdev_err((struct net_device const *)qdev->ndev, "This event shouldn\'t occur.\n");
  ql_queue_asic_error(qdev);
  }
  return;
  case_7:
  {
  netdev_err((struct net_device const *)qdev->ndev, "Soft ECC error detected.\n");
  ql_queue_asic_error(qdev);
  }
  goto ldv_52521;
  case_64:
  {
  netdev_err((struct net_device const *)qdev->ndev, "PCI error occurred when reading anonymous buffers from rx_ring %d.\n",
             (int )ib_ae_rsp->q_id);
  ql_queue_asic_error(qdev);
  }
  goto ldv_52521;
  switch_default: ;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Unexpected event %d.\n",
               (int )ib_ae_rsp->event);
    }
  } else {
  }
  {
  ql_queue_asic_error(qdev);
  }
  goto ldv_52521;
  switch_break: ;
  }
  ldv_52521: ;
  return;
}
}
static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring )
{
  struct ql_adapter *qdev ;
  u32 prod ;
  u32 tmp ;
  struct ob_mac_iocb_rsp *net_rsp ;
  int count ;
  struct tx_ring *tx_ring ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  qdev = rx_ring->qdev;
  tmp = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  prod = tmp;
  net_rsp = (struct ob_mac_iocb_rsp *)0;
  count = 0;
  }
  goto ldv_52537;
  ldv_52536: ;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "cq_id = %d, prod = %d, cnsmr = %d.\n.",
                  (int )rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
    }
  } else {
  }
  net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
  __asm__ volatile ("lfence": : : "memory");
  {
  if ((int )net_rsp->opcode == 2) {
    goto case_2;
  } else {
  }
  if ((int )net_rsp->opcode == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_2: ;
  case_1:
  {
  ql_process_mac_tx_intr(qdev, net_rsp);
  }
  goto ldv_52534;
  switch_default: ;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Hit default case, not handled! dropping the packet, opcode = %x.\n",
                  (int )net_rsp->opcode);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_52534:
  {
  count = count + 1;
  ql_update_cq(rx_ring);
  prod = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  }
  ldv_52537: ;
  if (prod != rx_ring->cnsmr_idx) {
    goto ldv_52536;
  } else {
  }
  if ((unsigned long )net_rsp == (unsigned long )((struct ob_mac_iocb_rsp *)0)) {
    return (0);
  } else {
  }
  {
  ql_write_cq_idx(rx_ring);
  tx_ring = (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )net_rsp->txq_idx;
  tmp___1 = __netif_subqueue_stopped((struct net_device const *)qdev->ndev, (int )tx_ring->wq_id);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = atomic_read((atomic_t const *)(& tx_ring->tx_count));
    }
    if ((u32 )tmp___0 > tx_ring->wq_len / 4U) {
      {
      netif_wake_subqueue(qdev->ndev, (int )tx_ring->wq_id);
      }
    } else {
    }
  } else {
  }
  return (count);
}
}
static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring , int budget )
{
  struct ql_adapter *qdev ;
  u32 prod ;
  u32 tmp ;
  struct ql_net_rsp_iocb *net_rsp ;
  int count ;
  {
  {
  qdev = rx_ring->qdev;
  tmp = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  prod = tmp;
  count = 0;
  }
  goto ldv_52553;
  ldv_52552: ;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "cq_id = %d, prod = %d, cnsmr = %d.\n.",
                  (int )rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
    }
  } else {
  }
  net_rsp = rx_ring->curr_entry;
  __asm__ volatile ("lfence": : : "memory");
  {
  if ((int )net_rsp->opcode == 32) {
    goto case_32;
  } else {
  }
  if ((int )net_rsp->opcode == 63) {
    goto case_63;
  } else {
  }
  goto switch_default;
  case_32:
  {
  ql_process_mac_rx_intr(qdev, rx_ring, (struct ib_mac_iocb_rsp *)net_rsp);
  }
  goto ldv_52548;
  case_63:
  {
  ql_process_chip_ae_intr(qdev, (struct ib_ae_iocb_rsp *)net_rsp);
  }
  goto ldv_52548;
  switch_default: ;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Hit default case, not handled! dropping the packet, opcode = %x.\n",
                  (int )net_rsp->opcode);
    }
  } else {
  }
  goto ldv_52548;
  switch_break: ;
  }
  ldv_52548:
  {
  count = count + 1;
  ql_update_cq(rx_ring);
  prod = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  }
  if (count == budget) {
    goto ldv_52551;
  } else {
  }
  ldv_52553: ;
  if (prod != rx_ring->cnsmr_idx) {
    goto ldv_52552;
  } else {
  }
  ldv_52551:
  {
  ql_update_buffer_queues(qdev, rx_ring);
  ql_write_cq_idx(rx_ring);
  }
  return (count);
}
}
static int ql_napi_poll_msix(struct napi_struct *napi , int budget )
{
  struct rx_ring *rx_ring ;
  struct napi_struct const *__mptr ;
  struct ql_adapter *qdev ;
  struct rx_ring *trx_ring ;
  int i ;
  int work_done ;
  struct intr_context *ctx ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  __mptr = (struct napi_struct const *)napi;
  rx_ring = (struct rx_ring *)__mptr + 0xfffffffffffffe90UL;
  qdev = rx_ring->qdev;
  work_done = 0;
  ctx = (struct intr_context *)(& qdev->intr_context) + (unsigned long )rx_ring->cq_id;
  if ((qdev->msg_enable & 2048U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Enter, NAPI POLL cq_id = %d.\n",
                  (int )rx_ring->cq_id);
    }
  } else {
  }
  i = (int )qdev->rss_ring_count;
  goto ldv_52568;
  ldv_52567:
  trx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
  if ((ctx->irq_mask & (u32 )(1 << (int )trx_ring->cq_id)) != 0U) {
    {
    tmp = ql_read_sh_reg(trx_ring->prod_idx_sh_reg);
    }
    if (tmp != trx_ring->cnsmr_idx) {
      if ((qdev->msg_enable & 512U) != 0U) {
        {
        netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s: Servicing TX completion ring %d.\n",
                      "ql_napi_poll_msix", (int )trx_ring->cq_id);
        }
      } else {
      }
      {
      ql_clean_outbound_rx_ring(trx_ring);
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_52568: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52567;
  } else {
  }
  {
  tmp___0 = ql_read_sh_reg(rx_ring->prod_idx_sh_reg);
  }
  if (tmp___0 != rx_ring->cnsmr_idx) {
    if ((qdev->msg_enable & 512U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s: Servicing RX completion ring %d.\n",
                    "ql_napi_poll_msix", (int )rx_ring->cq_id);
      }
    } else {
    }
    {
    work_done = ql_clean_inbound_rx_ring(rx_ring, budget);
    }
  } else {
  }
  if (work_done < budget) {
    {
    napi_complete(napi);
    ql_enable_completion_interrupt(qdev, rx_ring->irq);
    }
  } else {
  }
  return (work_done);
}
}
static void qlge_vlan_mode(struct net_device *ndev , netdev_features_t features )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  if ((features & 256ULL) != 0ULL) {
    {
    ql_write32((struct ql_adapter const *)qdev, 212, 393220U);
    }
  } else {
    {
    ql_write32((struct ql_adapter const *)qdev, 212, 393216U);
    }
  }
  return;
}
}
static int qlge_update_hw_vlan_features(struct net_device *ndev , netdev_features_t features )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int status ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  status = 0;
  status = ql_adapter_down(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 4U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to bring down the adapter\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  {
  ndev->features = features;
  status = ql_adapter_up(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 4U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to bring up the adapter\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  return (status);
}
}
static netdev_features_t qlge_fix_features(struct net_device *ndev , netdev_features_t features )
{
  int err ;
  {
  {
  err = qlge_update_hw_vlan_features(ndev, features);
  }
  if (err != 0) {
    return ((netdev_features_t )err);
  } else {
  }
  return (features);
}
}
static int qlge_set_features(struct net_device *ndev , netdev_features_t features )
{
  netdev_features_t changed ;
  {
  changed = ndev->features ^ features;
  if ((changed & 256ULL) != 0ULL) {
    {
    qlge_vlan_mode(ndev, features);
    }
  } else {
  }
  return (0);
}
}
static int __qlge_vlan_rx_add_vid(struct ql_adapter *qdev , u16 vid )
{
  u32 enable_bit ;
  int err ;
  {
  {
  enable_bit = 134217728U;
  err = ql_set_mac_addr_reg(qdev, (u8 *)(& enable_bit), 131072U, (int )vid);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init vlan address.\n");
      }
    } else {
    }
  } else {
  }
  return (err);
}
}
static int qlge_vlan_rx_add_vid(struct net_device *ndev , __be16 proto , u16 vid )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int status ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  err = __qlge_vlan_rx_add_vid(qdev, (int )vid);
  set_bit((long )vid, (unsigned long volatile *)(& qdev->active_vlans));
  ql_sem_unlock(qdev, 12582912U);
  }
  return (err);
}
}
static int __qlge_vlan_rx_kill_vid(struct ql_adapter *qdev , u16 vid )
{
  u32 enable_bit ;
  int err ;
  {
  {
  enable_bit = 0U;
  err = ql_set_mac_addr_reg(qdev, (u8 *)(& enable_bit), 131072U, (int )vid);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to clear vlan address.\n");
      }
    } else {
    }
  } else {
  }
  return (err);
}
}
static int qlge_vlan_rx_kill_vid(struct net_device *ndev , __be16 proto , u16 vid )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int status ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  err = __qlge_vlan_rx_kill_vid(qdev, (int )vid);
  clear_bit((long )vid, (unsigned long volatile *)(& qdev->active_vlans));
  ql_sem_unlock(qdev, 12582912U);
  }
  return (err);
}
}
static void qlge_restore_vlan(struct ql_adapter *qdev )
{
  int status ;
  u16 vid ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return;
  } else {
  }
  {
  tmp = find_first_bit((unsigned long const *)(& qdev->active_vlans), 4096UL);
  vid = (u16 )tmp;
  }
  goto ldv_52625;
  ldv_52624:
  {
  __qlge_vlan_rx_add_vid(qdev, (int )vid);
  tmp___0 = find_next_bit((unsigned long const *)(& qdev->active_vlans), 4096UL,
                          (unsigned long )((int )vid + 1));
  vid = (u16 )tmp___0;
  }
  ldv_52625: ;
  if ((unsigned int )vid <= 4095U) {
    goto ldv_52624;
  } else {
  }
  {
  ql_sem_unlock(qdev, 12582912U);
  }
  return;
}
}
static irqreturn_t qlge_msix_rx_isr(int irq , void *dev_id )
{
  struct rx_ring *rx_ring ;
  {
  {
  rx_ring = (struct rx_ring *)dev_id;
  napi_schedule(& rx_ring->napi);
  }
  return (1);
}
}
static irqreturn_t qlge_isr(int irq , void *dev_id )
{
  struct rx_ring *rx_ring ;
  struct ql_adapter *qdev ;
  struct intr_context *intr_context ;
  u32 var ;
  int work_done ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  u32 tmp___0 ;
  {
  {
  rx_ring = (struct rx_ring *)dev_id;
  qdev = rx_ring->qdev;
  intr_context = (struct intr_context *)(& qdev->intr_context);
  work_done = 0;
  ldv_spin_lock_79(& qdev->hw_lock);
  tmp = atomic_read((atomic_t const *)(& qdev->intr_context[0].irq_cnt));
  }
  if (tmp != 0) {
    if ((qdev->msg_enable & 512U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Shared Interrupt, Not ours!\n");
      }
    } else {
    }
    {
    ldv_spin_unlock_80(& qdev->hw_lock);
    }
    return (0);
  } else {
  }
  {
  ldv_spin_unlock_80(& qdev->hw_lock);
  var = ql_disable_completion_interrupt(qdev, intr_context->intr);
  }
  if ((int )var & 1) {
    {
    ql_queue_asic_error(qdev);
    netdev_err((struct net_device const *)qdev->ndev, "Got fatal error, STS = %x.\n",
               var);
    var = ql_read32((struct ql_adapter const *)qdev, 84);
    netdev_err((struct net_device const *)qdev->ndev, "Resetting chip. Error Status Register = 0x%x\n",
               var);
    }
    return (1);
  } else {
  }
  if ((var & 2U) != 0U) {
    {
    tmp___0 = ql_read32((struct ql_adapter const *)qdev, 56);
    }
    if ((int )tmp___0 & 1) {
      if ((qdev->msg_enable & 512U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Got MPI processor interrupt.\n");
        }
      } else {
      }
      {
      ql_disable_completion_interrupt(qdev, intr_context->intr);
      ql_write32((struct ql_adapter const *)qdev, 56, 65536U);
      __vpp_verify = (void const *)0;
      }
      {
      if (4UL == 1UL) {
        goto case_1;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___0;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___1;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___2;
      } else {
      }
      goto switch_default___3;
      case_1: ;
      {
      if (4UL == 1UL) {
        goto case_1___0;
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
      case_1___0:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_52646;
      case_2:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_52646;
      case_4:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_52646;
      case_8:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_52646;
      switch_default:
      {
      __bad_percpu_size();
      }
      switch_break___0: ;
      }
      ldv_52646:
      pscr_ret__ = pfo_ret__;
      goto ldv_52652;
      case_2___0: ;
      {
      if (4UL == 1UL) {
        goto case_1___1;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___1;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___0;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___0;
      } else {
      }
      goto switch_default___0;
      case_1___1:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_52656;
      case_2___1:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_52656;
      case_4___0:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_52656;
      case_8___0:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_52656;
      switch_default___0:
      {
      __bad_percpu_size();
      }
      switch_break___1: ;
      }
      ldv_52656:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_52652;
      case_4___1: ;
      {
      if (4UL == 1UL) {
        goto case_1___2;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___2;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___2;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___1;
      } else {
      }
      goto switch_default___1;
      case_1___2:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_52665;
      case_2___2:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_52665;
      case_4___2:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_52665;
      case_8___1:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_52665;
      switch_default___1:
      {
      __bad_percpu_size();
      }
      switch_break___2: ;
      }
      ldv_52665:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_52652;
      case_8___2: ;
      {
      if (4UL == 1UL) {
        goto case_1___3;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___3;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___3;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___3;
      } else {
      }
      goto switch_default___2;
      case_1___3:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_52674;
      case_2___3:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_52674;
      case_4___3:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_52674;
      case_8___3:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_52674;
      switch_default___2:
      {
      __bad_percpu_size();
      }
      switch_break___3: ;
      }
      ldv_52674:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_52652;
      switch_default___3:
      {
      __bad_size_call_parameter();
      }
      goto ldv_52652;
      switch_break: ;
      }
      ldv_52652:
      {
      queue_delayed_work_on(pscr_ret__, qdev->workqueue, & qdev->mpi_work, 0UL);
      work_done = work_done + 1;
      }
    } else {
    }
  } else {
  }
  {
  var = ql_read32((struct ql_adapter const *)qdev, 60);
  }
  if ((var & intr_context->irq_mask) != 0U) {
    if ((qdev->msg_enable & 512U) != 0U) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "Waking handler for rx_ring[0].\n");
      }
    } else {
    }
    {
    ql_disable_completion_interrupt(qdev, intr_context->intr);
    napi_schedule(& rx_ring->napi);
    work_done = work_done + 1;
    }
  } else {
  }
  {
  ql_enable_completion_interrupt(qdev, intr_context->intr);
  }
  return (work_done != 0);
}
}
static int ql_tso(struct sk_buff *skb , struct ob_mac_tso_iocb_req *mac_iocb_ptr )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned char *tmp___4 ;
  struct iphdr *iph ;
  struct iphdr *tmp___5 ;
  struct tcphdr *tmp___6 ;
  __sum16 tmp___7 ;
  struct tcphdr *tmp___8 ;
  struct ipv6hdr *tmp___9 ;
  struct ipv6hdr *tmp___10 ;
  __sum16 tmp___11 ;
  long tmp___12 ;
  bool tmp___13 ;
  {
  {
  tmp___13 = skb_is_gso((struct sk_buff const *)skb);
  }
  if ((int )tmp___13) {
    {
    tmp = skb_header_cloned((struct sk_buff const *)skb);
    }
    if (tmp != 0) {
      {
      err = pskb_expand_head(skb, 0, 0, 32U);
      }
      if (err != 0) {
        return (err);
      } else {
      }
    } else {
    }
    {
    mac_iocb_ptr->opcode = 2U;
    mac_iocb_ptr->flags3 = (u8 )((unsigned int )mac_iocb_ptr->flags3 | 1U);
    mac_iocb_ptr->frame_len = skb->len;
    tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___1 = tcp_hdrlen((struct sk_buff const *)skb);
    mac_iocb_ptr->total_hdrs_len = (int )((unsigned short )tmp___0) + (int )((unsigned short )tmp___1);
    tmp___2 = skb_network_offset((struct sk_buff const *)skb);
    tmp___3 = skb_transport_offset((struct sk_buff const *)skb);
    mac_iocb_ptr->net_trans_offset = (unsigned short )((int )((short )tmp___2) | (int )((short )(tmp___3 << 6)));
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    mac_iocb_ptr->mss = ((struct skb_shared_info *)tmp___4)->gso_size;
    mac_iocb_ptr->flags2 = (u8 )((unsigned int )mac_iocb_ptr->flags2 | 32U);
    tmp___12 = ldv__builtin_expect((unsigned int )skb->protocol == 8U, 1L);
    }
    if (tmp___12 != 0L) {
      {
      tmp___5 = ip_hdr((struct sk_buff const *)skb);
      iph = tmp___5;
      iph->check = 0U;
      mac_iocb_ptr->flags1 = (u8 )((unsigned int )mac_iocb_ptr->flags1 | 64U);
      tmp___6 = tcp_hdr((struct sk_buff const *)skb);
      tmp___7 = csum_tcpudp_magic(iph->saddr, iph->daddr, 0, 6, 0U);
      tmp___6->check = ~ ((int )tmp___7);
      }
    } else
    if ((unsigned int )skb->protocol == 56710U) {
      {
      mac_iocb_ptr->flags1 = (u8 )((unsigned int )mac_iocb_ptr->flags1 | 128U);
      tmp___8 = tcp_hdr((struct sk_buff const *)skb);
      tmp___9 = ipv6_hdr((struct sk_buff const *)skb);
      tmp___10 = ipv6_hdr((struct sk_buff const *)skb);
      tmp___11 = csum_ipv6_magic((struct in6_addr const *)(& tmp___10->saddr), (struct in6_addr const *)(& tmp___9->daddr),
                                 0U, 6, 0U);
      tmp___8->check = ~ ((int )tmp___11);
      }
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static void ql_hw_csum_setup(struct sk_buff *skb , struct ob_mac_tso_iocb_req *mac_iocb_ptr )
{
  int len ;
  struct iphdr *iph ;
  struct iphdr *tmp ;
  __sum16 *check ;
  int tmp___0 ;
  int tmp___1 ;
  __u16 tmp___2 ;
  struct tcphdr *tmp___3 ;
  int tmp___4 ;
  struct tcphdr *tmp___5 ;
  struct udphdr *tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  __sum16 tmp___9 ;
  {
  {
  tmp = ip_hdr((struct sk_buff const *)skb);
  iph = tmp;
  mac_iocb_ptr->opcode = 2U;
  mac_iocb_ptr->frame_len = skb->len;
  tmp___0 = skb_network_offset((struct sk_buff const *)skb);
  tmp___1 = skb_transport_offset((struct sk_buff const *)skb);
  mac_iocb_ptr->net_trans_offset = (unsigned short )((int )((short )tmp___0) | (int )((short )(tmp___1 << 6)));
  mac_iocb_ptr->flags1 = (u8 )((unsigned int )mac_iocb_ptr->flags1 | 64U);
  tmp___2 = __fswab16((int )iph->tot_len);
  len = (int )tmp___2 - ((int )iph->ihl << 2);
  tmp___8 = ldv__builtin_expect((unsigned int )iph->protocol == 6U, 1L);
  }
  if (tmp___8 != 0L) {
    {
    tmp___3 = tcp_hdr((struct sk_buff const *)skb);
    check = & tmp___3->check;
    mac_iocb_ptr->flags2 = (u8 )((unsigned int )mac_iocb_ptr->flags2 | 128U);
    tmp___4 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___5 = tcp_hdr((struct sk_buff const *)skb);
    mac_iocb_ptr->total_hdrs_len = (int )((unsigned short )tmp___4) + ((int )tmp___5->doff << 2U);
    }
  } else {
    {
    tmp___6 = udp_hdr((struct sk_buff const *)skb);
    check = & tmp___6->check;
    mac_iocb_ptr->flags2 = (u8 )((unsigned int )mac_iocb_ptr->flags2 | 64U);
    tmp___7 = skb_transport_offset((struct sk_buff const *)skb);
    mac_iocb_ptr->total_hdrs_len = (unsigned int )((unsigned short )tmp___7) + 8U;
    }
  }
  {
  tmp___9 = csum_tcpudp_magic(iph->saddr, iph->daddr, (int )((unsigned short )len),
                              (int )iph->protocol, 0U);
  *check = ~ ((int )tmp___9);
  }
  return;
}
}
static netdev_tx_t qlge_send(struct sk_buff *skb , struct net_device *ndev )
{
  struct tx_ring_desc *tx_ring_desc ;
  struct ob_mac_iocb_req *mac_iocb_ptr ;
  struct ql_adapter *qdev ;
  void *tmp ;
  int tso ;
  struct tx_ring *tx_ring ;
  u32 tx_ring_idx ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  tx_ring_idx = (unsigned int )skb->queue_mapping;
  tx_ring = (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )tx_ring_idx;
  tmp___0 = skb_padto(skb, 60U);
  }
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  {
  tmp___1 = atomic_read((atomic_t const *)(& tx_ring->tx_count));
  tmp___2 = ldv__builtin_expect(tmp___1 <= 1, 0L);
  }
  if (tmp___2 != 0L) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "%s: BUG! shutting down tx queue %d due to lack of resources.\n",
                  "qlge_send", tx_ring_idx);
      }
    } else {
    }
    {
    netif_stop_subqueue(ndev, (int )tx_ring->wq_id);
    tx_ring->tx_errors = tx_ring->tx_errors + 1ULL;
    }
    return (16);
  } else {
  }
  {
  tx_ring_desc = tx_ring->q + (unsigned long )tx_ring->prod_idx;
  mac_iocb_ptr = tx_ring_desc->queue_entry;
  memset((void *)mac_iocb_ptr, 0, 128UL);
  mac_iocb_ptr->opcode = 1U;
  mac_iocb_ptr->tid = tx_ring_desc->index;
  mac_iocb_ptr->txq_idx = tx_ring_idx;
  tx_ring_desc->skb = skb;
  mac_iocb_ptr->frame_len = (unsigned short )skb->len;
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Adding a vlan tag %d.\n",
                    (int )skb->vlan_tci & -4097);
      }
    } else {
    }
    mac_iocb_ptr->flags3 = (u8 )((unsigned int )mac_iocb_ptr->flags3 | 4U);
    mac_iocb_ptr->vlan_tci = (unsigned int )skb->vlan_tci & 61439U;
  } else {
  }
  {
  tso = ql_tso(skb, (struct ob_mac_tso_iocb_req *)mac_iocb_ptr);
  }
  if (tso < 0) {
    {
    dev_kfree_skb_any(skb);
    }
    return (0);
  } else {
    {
    tmp___3 = ldv__builtin_expect(tso == 0, 0L);
    }
    if (tmp___3 != 0L && (unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
      {
      ql_hw_csum_setup(skb, (struct ob_mac_tso_iocb_req *)mac_iocb_ptr);
      }
    } else {
    }
  }
  {
  tmp___4 = ql_map_send(qdev, mac_iocb_ptr, skb, tx_ring_desc);
  }
  if (tmp___4 != 0) {
    if ((qdev->msg_enable & 256U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Could not map the segments.\n");
      }
    } else {
    }
    tx_ring->tx_errors = tx_ring->tx_errors + 1ULL;
    return (16);
  } else {
  }
  tx_ring->prod_idx = (u16 )((int )tx_ring->prod_idx + 1);
  if ((u32 )tx_ring->prod_idx == tx_ring->wq_len) {
    tx_ring->prod_idx = 0U;
  } else {
  }
  {
  __asm__ volatile ("sfence": : : "memory");
  ql_write_db_reg((u32 )tx_ring->prod_idx, tx_ring->prod_idx_db_reg);
  }
  if ((qdev->msg_enable & 256U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "tx queued, slot %d, len %d\n",
                  (int )tx_ring->prod_idx, skb->len);
    }
  } else {
  }
  {
  atomic_dec(& tx_ring->tx_count);
  tmp___6 = atomic_read((atomic_t const *)(& tx_ring->tx_count));
  tmp___7 = ldv__builtin_expect(tmp___6 <= 1, 0L);
  }
  if (tmp___7 != 0L) {
    {
    netif_stop_subqueue(ndev, (int )tx_ring->wq_id);
    tmp___5 = atomic_read((atomic_t const *)(& tx_ring->tx_count));
    }
    if ((u32 )tmp___5 > tx_ring->wq_len / 4U) {
      {
      netif_wake_subqueue(qdev->ndev, (int )tx_ring->wq_id);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void ql_free_shadow_space(struct ql_adapter *qdev )
{
  {
  if ((unsigned long )qdev->rx_ring_shadow_reg_area != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, 4096UL, qdev->rx_ring_shadow_reg_area, qdev->rx_ring_shadow_reg_dma);
    qdev->rx_ring_shadow_reg_area = (void *)0;
    }
  } else {
  }
  if ((unsigned long )qdev->tx_ring_shadow_reg_area != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, 4096UL, qdev->tx_ring_shadow_reg_area, qdev->tx_ring_shadow_reg_dma);
    qdev->tx_ring_shadow_reg_area = (void *)0;
    }
  } else {
  }
  return;
}
}
static int ql_alloc_shadow_space(struct ql_adapter *qdev )
{
  {
  {
  qdev->rx_ring_shadow_reg_area = pci_alloc_consistent(qdev->pdev, 4096UL, & qdev->rx_ring_shadow_reg_dma);
  }
  if ((unsigned long )qdev->rx_ring_shadow_reg_area == (unsigned long )((void *)0)) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Allocation of RX shadow space failed.\n");
      }
    } else {
    }
    return (-12);
  } else {
  }
  {
  memset(qdev->rx_ring_shadow_reg_area, 0, 4096UL);
  qdev->tx_ring_shadow_reg_area = pci_alloc_consistent(qdev->pdev, 4096UL, & qdev->tx_ring_shadow_reg_dma);
  }
  if ((unsigned long )qdev->tx_ring_shadow_reg_area == (unsigned long )((void *)0)) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Allocation of TX shadow space failed.\n");
      }
    } else {
    }
    goto err_wqp_sh_area;
  } else {
  }
  {
  memset(qdev->tx_ring_shadow_reg_area, 0, 4096UL);
  }
  return (0);
  err_wqp_sh_area:
  {
  pci_free_consistent(qdev->pdev, 4096UL, qdev->rx_ring_shadow_reg_area, qdev->rx_ring_shadow_reg_dma);
  }
  return (-12);
}
}
static void ql_init_tx_ring(struct ql_adapter *qdev , struct tx_ring *tx_ring )
{
  struct tx_ring_desc *tx_ring_desc ;
  int i ;
  struct ob_mac_iocb_req *mac_iocb_ptr ;
  {
  mac_iocb_ptr = (struct ob_mac_iocb_req *)tx_ring->wq_base;
  tx_ring_desc = tx_ring->q;
  i = 0;
  goto ldv_52721;
  ldv_52720:
  tx_ring_desc->index = (u32 )i;
  tx_ring_desc->skb = (struct sk_buff *)0;
  tx_ring_desc->queue_entry = mac_iocb_ptr;
  mac_iocb_ptr = mac_iocb_ptr + 1;
  tx_ring_desc = tx_ring_desc + 1;
  i = i + 1;
  ldv_52721: ;
  if ((u32 )i < tx_ring->wq_len) {
    goto ldv_52720;
  } else {
  }
  {
  atomic_set(& tx_ring->tx_count, (int )tx_ring->wq_len);
  }
  return;
}
}
static void ql_free_tx_resources(struct ql_adapter *qdev , struct tx_ring *tx_ring )
{
  {
  if ((unsigned long )tx_ring->wq_base != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, (size_t )tx_ring->wq_size, tx_ring->wq_base, tx_ring->wq_base_dma);
    tx_ring->wq_base = (void *)0;
    }
  } else {
  }
  {
  kfree((void const *)tx_ring->q);
  tx_ring->q = (struct tx_ring_desc *)0;
  }
  return;
}
}
static int ql_alloc_tx_resources(struct ql_adapter *qdev , struct tx_ring *tx_ring )
{
  void *tmp ;
  {
  {
  tx_ring->wq_base = pci_alloc_consistent(qdev->pdev, (size_t )tx_ring->wq_size, & tx_ring->wq_base_dma);
  }
  if ((unsigned long )tx_ring->wq_base == (unsigned long )((void *)0) || (tx_ring->wq_base_dma & 3ULL) != 0ULL) {
    goto pci_alloc_err;
  } else {
  }
  {
  tmp = kmalloc((unsigned long )tx_ring->wq_len * 472UL, 208U);
  tx_ring->q = (struct tx_ring_desc *)tmp;
  }
  if ((unsigned long )tx_ring->q == (unsigned long )((struct tx_ring_desc *)0)) {
    goto err;
  } else {
  }
  return (0);
  err:
  {
  pci_free_consistent(qdev->pdev, (size_t )tx_ring->wq_size, tx_ring->wq_base, tx_ring->wq_base_dma);
  tx_ring->wq_base = (void *)0;
  }
  pci_alloc_err: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "tx_ring alloc failed.\n");
    }
  } else {
  }
  return (-12);
}
}
static void ql_free_lbq_buffers(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  struct bq_desc *lbq_desc ;
  uint32_t curr_idx ;
  uint32_t clean_idx ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  curr_idx = rx_ring->lbq_curr_idx;
  clean_idx = rx_ring->lbq_clean_idx;
  goto ldv_52741;
  ldv_52740:
  lbq_desc = rx_ring->lbq + (unsigned long )curr_idx;
  if (lbq_desc->p.pg_chunk.last_flag != 0U) {
    {
    tmp = ql_lbq_block_size(qdev);
    pci_unmap_page(qdev->pdev, lbq_desc->p.pg_chunk.map, (size_t )tmp, 2);
    lbq_desc->p.pg_chunk.last_flag = 0U;
    }
  } else {
  }
  {
  put_page(lbq_desc->p.pg_chunk.page);
  lbq_desc->p.pg_chunk.page = (struct page *)0;
  curr_idx = curr_idx + 1U;
  }
  if (curr_idx == rx_ring->lbq_len) {
    curr_idx = 0U;
  } else {
  }
  ldv_52741: ;
  if (curr_idx != clean_idx) {
    goto ldv_52740;
  } else {
  }
  if ((unsigned long )rx_ring->pg_chunk.page != (unsigned long )((struct page *)0)) {
    {
    tmp___0 = ql_lbq_block_size(qdev);
    pci_unmap_page(qdev->pdev, rx_ring->pg_chunk.map, (size_t )tmp___0, 2);
    put_page(rx_ring->pg_chunk.page);
    rx_ring->pg_chunk.page = (struct page *)0;
    }
  } else {
  }
  return;
}
}
static void ql_free_sbq_buffers(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  int i ;
  struct bq_desc *sbq_desc ;
  {
  i = 0;
  goto ldv_52750;
  ldv_52749:
  sbq_desc = rx_ring->sbq + (unsigned long )i;
  if ((unsigned long )sbq_desc == (unsigned long )((struct bq_desc *)0)) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "sbq_desc %d is NULL.\n",
                 i);
      }
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )sbq_desc->p.skb != (unsigned long )((struct sk_buff *)0)) {
    {
    pci_unmap_single(qdev->pdev, sbq_desc->mapaddr, (size_t )sbq_desc->maplen, 2);
    consume_skb(sbq_desc->p.skb);
    sbq_desc->p.skb = (struct sk_buff *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_52750: ;
  if ((u32 )i < rx_ring->sbq_len) {
    goto ldv_52749;
  } else {
  }
  return;
}
}
static void ql_free_rx_buffers(struct ql_adapter *qdev )
{
  int i ;
  struct rx_ring *rx_ring ;
  {
  i = 0;
  goto ldv_52758;
  ldv_52757:
  rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
  if ((unsigned long )rx_ring->lbq != (unsigned long )((struct bq_desc *)0)) {
    {
    ql_free_lbq_buffers(qdev, rx_ring);
    }
  } else {
  }
  if ((unsigned long )rx_ring->sbq != (unsigned long )((struct bq_desc *)0)) {
    {
    ql_free_sbq_buffers(qdev, rx_ring);
    }
  } else {
  }
  i = i + 1;
  ldv_52758: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52757;
  } else {
  }
  return;
}
}
static void ql_alloc_rx_buffers(struct ql_adapter *qdev )
{
  struct rx_ring *rx_ring ;
  int i ;
  {
  i = 0;
  goto ldv_52766;
  ldv_52765:
  rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
  if (rx_ring->type != 3U) {
    {
    ql_update_buffer_queues(qdev, rx_ring);
    }
  } else {
  }
  i = i + 1;
  ldv_52766: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52765;
  } else {
  }
  return;
}
}
static void ql_init_lbq_ring(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  int i ;
  struct bq_desc *lbq_desc ;
  __le64 *bq ;
  {
  {
  bq = (__le64 *)rx_ring->lbq_base;
  memset((void *)rx_ring->lbq, 0, (unsigned long )rx_ring->lbq_len * 64UL);
  i = 0;
  }
  goto ldv_52776;
  ldv_52775:
  {
  lbq_desc = rx_ring->lbq + (unsigned long )i;
  memset((void *)lbq_desc, 0, 64UL);
  lbq_desc->index = (u32 )i;
  lbq_desc->addr = bq;
  bq = bq + 1;
  i = i + 1;
  }
  ldv_52776: ;
  if ((u32 )i < rx_ring->lbq_len) {
    goto ldv_52775;
  } else {
  }
  return;
}
}
static void ql_init_sbq_ring(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  int i ;
  struct bq_desc *sbq_desc ;
  __le64 *bq ;
  {
  {
  bq = (__le64 *)rx_ring->sbq_base;
  memset((void *)rx_ring->sbq, 0, (unsigned long )rx_ring->sbq_len * 64UL);
  i = 0;
  }
  goto ldv_52786;
  ldv_52785:
  {
  sbq_desc = rx_ring->sbq + (unsigned long )i;
  memset((void *)sbq_desc, 0, 64UL);
  sbq_desc->index = (u32 )i;
  sbq_desc->addr = bq;
  bq = bq + 1;
  i = i + 1;
  }
  ldv_52786: ;
  if ((u32 )i < rx_ring->sbq_len) {
    goto ldv_52785;
  } else {
  }
  return;
}
}
static void ql_free_rx_resources(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  {
  if ((unsigned long )rx_ring->sbq_base != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, (size_t )rx_ring->sbq_size, rx_ring->sbq_base,
                        rx_ring->sbq_base_dma);
    rx_ring->sbq_base = (void *)0;
    }
  } else {
  }
  {
  kfree((void const *)rx_ring->sbq);
  rx_ring->sbq = (struct bq_desc *)0;
  }
  if ((unsigned long )rx_ring->lbq_base != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, (size_t )rx_ring->lbq_size, rx_ring->lbq_base,
                        rx_ring->lbq_base_dma);
    rx_ring->lbq_base = (void *)0;
    }
  } else {
  }
  {
  kfree((void const *)rx_ring->lbq);
  rx_ring->lbq = (struct bq_desc *)0;
  }
  if ((unsigned long )rx_ring->cq_base != (unsigned long )((void *)0)) {
    {
    pci_free_consistent(qdev->pdev, (size_t )rx_ring->cq_size, rx_ring->cq_base, rx_ring->cq_base_dma);
    rx_ring->cq_base = (void *)0;
    }
  } else {
  }
  return;
}
}
static int ql_alloc_rx_resources(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  rx_ring->cq_base = pci_alloc_consistent(qdev->pdev, (size_t )rx_ring->cq_size, & rx_ring->cq_base_dma);
  }
  if ((unsigned long )rx_ring->cq_base == (unsigned long )((void *)0)) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "rx_ring alloc failed.\n");
      }
    } else {
    }
    return (-12);
  } else {
  }
  if (rx_ring->sbq_len != 0U) {
    {
    rx_ring->sbq_base = pci_alloc_consistent(qdev->pdev, (size_t )rx_ring->sbq_size,
                                             & rx_ring->sbq_base_dma);
    }
    if ((unsigned long )rx_ring->sbq_base == (unsigned long )((void *)0)) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Small buffer queue allocation failed.\n");
        }
      } else {
      }
      goto err_mem;
    } else {
    }
    {
    tmp = kmalloc_array((size_t )rx_ring->sbq_len, 64UL, 208U);
    rx_ring->sbq = (struct bq_desc *)tmp;
    }
    if ((unsigned long )rx_ring->sbq == (unsigned long )((struct bq_desc *)0)) {
      goto err_mem;
    } else {
    }
    {
    ql_init_sbq_ring(qdev, rx_ring);
    }
  } else {
  }
  if (rx_ring->lbq_len != 0U) {
    {
    rx_ring->lbq_base = pci_alloc_consistent(qdev->pdev, (size_t )rx_ring->lbq_size,
                                             & rx_ring->lbq_base_dma);
    }
    if ((unsigned long )rx_ring->lbq_base == (unsigned long )((void *)0)) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Large buffer queue allocation failed.\n");
        }
      } else {
      }
      goto err_mem;
    } else {
    }
    {
    tmp___0 = kmalloc_array((size_t )rx_ring->lbq_len, 64UL, 208U);
    rx_ring->lbq = (struct bq_desc *)tmp___0;
    }
    if ((unsigned long )rx_ring->lbq == (unsigned long )((struct bq_desc *)0)) {
      goto err_mem;
    } else {
    }
    {
    ql_init_lbq_ring(qdev, rx_ring);
    }
  } else {
  }
  return (0);
  err_mem:
  {
  ql_free_rx_resources(qdev, rx_ring);
  }
  return (-12);
}
}
static void ql_tx_ring_clean(struct ql_adapter *qdev )
{
  struct tx_ring *tx_ring ;
  struct tx_ring_desc *tx_ring_desc ;
  int i ;
  int j ;
  {
  j = 0;
  goto ldv_52808;
  ldv_52807:
  tx_ring = (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )j;
  i = 0;
  goto ldv_52805;
  ldv_52804:
  tx_ring_desc = tx_ring->q + (unsigned long )i;
  if ((unsigned long )tx_ring_desc != (unsigned long )((struct tx_ring_desc *)0) && (unsigned long )tx_ring_desc->skb != (unsigned long )((struct sk_buff *)0)) {
    if ((qdev->msg_enable & 16U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Freeing lost SKB %p, from queue %d, index %d.\n",
                 tx_ring_desc->skb, j, tx_ring_desc->index);
      }
    } else {
    }
    {
    ql_unmap_send(qdev, tx_ring_desc, tx_ring_desc->map_cnt);
    consume_skb(tx_ring_desc->skb);
    tx_ring_desc->skb = (struct sk_buff *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_52805: ;
  if ((u32 )i < tx_ring->wq_len) {
    goto ldv_52804;
  } else {
  }
  j = j + 1;
  ldv_52808: ;
  if (j < qdev->tx_ring_count) {
    goto ldv_52807;
  } else {
  }
  return;
}
}
static void ql_free_mem_resources(struct ql_adapter *qdev )
{
  int i ;
  {
  i = 0;
  goto ldv_52815;
  ldv_52814:
  {
  ql_free_tx_resources(qdev, (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )i);
  i = i + 1;
  }
  ldv_52815: ;
  if (i < qdev->tx_ring_count) {
    goto ldv_52814;
  } else {
  }
  i = 0;
  goto ldv_52818;
  ldv_52817:
  {
  ql_free_rx_resources(qdev, (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i);
  i = i + 1;
  }
  ldv_52818: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52817;
  } else {
  }
  {
  ql_free_shadow_space(qdev);
  }
  return;
}
}
static int ql_alloc_mem_resources(struct ql_adapter *qdev )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ql_alloc_shadow_space(qdev);
  }
  if (tmp != 0) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_52826;
  ldv_52825:
  {
  tmp___0 = ql_alloc_rx_resources(qdev, (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i);
  }
  if (tmp___0 != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "RX resource allocation failed.\n");
      }
    } else {
    }
    goto err_mem;
  } else {
  }
  i = i + 1;
  ldv_52826: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52825;
  } else {
  }
  i = 0;
  goto ldv_52829;
  ldv_52828:
  {
  tmp___1 = ql_alloc_tx_resources(qdev, (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )i);
  }
  if (tmp___1 != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "TX resource allocation failed.\n");
      }
    } else {
    }
    goto err_mem;
  } else {
  }
  i = i + 1;
  ldv_52829: ;
  if (i < qdev->tx_ring_count) {
    goto ldv_52828;
  } else {
  }
  return (0);
  err_mem:
  {
  ql_free_mem_resources(qdev);
  }
  return (-12);
}
}
static int ql_start_rx_ring(struct ql_adapter *qdev , struct rx_ring *rx_ring )
{
  struct cqicb *cqicb ;
  void *shadow_reg ;
  u64 shadow_reg_dma ;
  void *doorbell_area ;
  int err ;
  u16 bq_len ;
  u64 tmp ;
  __le64 *base_indirect_ptr ;
  int page_entries ;
  {
  {
  cqicb = & rx_ring->cqicb;
  shadow_reg = qdev->rx_ring_shadow_reg_area + (unsigned long )rx_ring->cq_id * 24UL;
  shadow_reg_dma = qdev->rx_ring_shadow_reg_dma + (unsigned long long )((unsigned long )rx_ring->cq_id * 24UL);
  doorbell_area = qdev->doorbell_area + (unsigned long )(((int )rx_ring->cq_id + 128) * 4096);
  err = 0;
  rx_ring->prod_idx_sh_reg = (__le32 *)shadow_reg;
  rx_ring->prod_idx_sh_reg_dma = shadow_reg_dma;
  *(rx_ring->prod_idx_sh_reg) = 0U;
  shadow_reg = shadow_reg + 8UL;
  shadow_reg_dma = shadow_reg_dma + 8ULL;
  rx_ring->lbq_base_indirect = shadow_reg;
  rx_ring->lbq_base_indirect_dma = shadow_reg_dma;
  shadow_reg = shadow_reg + (((unsigned long )rx_ring->lbq_len * 8UL) / 4096UL + (((unsigned long )rx_ring->lbq_len * 8UL & 4095UL) != 0UL ? 1UL : 0UL)) * 8UL;
  shadow_reg_dma = shadow_reg_dma + (unsigned long long )((((unsigned long )rx_ring->lbq_len * 8UL) / 4096UL + (((unsigned long )rx_ring->lbq_len * 8UL & 4095UL) != 0UL ? 1UL : 0UL)) * 8UL);
  rx_ring->sbq_base_indirect = shadow_reg;
  rx_ring->sbq_base_indirect_dma = shadow_reg_dma;
  rx_ring->cnsmr_idx_db_reg = doorbell_area;
  rx_ring->cnsmr_idx = 0U;
  rx_ring->curr_entry = (struct ql_net_rsp_iocb *)rx_ring->cq_base;
  rx_ring->valid_db_reg = doorbell_area + 4UL;
  rx_ring->lbq_prod_idx_db_reg = doorbell_area + 24U;
  rx_ring->sbq_prod_idx_db_reg = doorbell_area + 28U;
  memset((void *)cqicb, 0, 52UL);
  cqicb->msix_vect = (u8 )rx_ring->irq;
  bq_len = rx_ring->cq_len != 65536U ? (u16 )rx_ring->cq_len : 0U;
  cqicb->len = (unsigned int )bq_len | 16U;
  cqicb->addr = rx_ring->cq_base_dma;
  cqicb->prod_idx_addr = rx_ring->prod_idx_sh_reg_dma;
  cqicb->flags = 200U;
  }
  if (rx_ring->lbq_len != 0U) {
    cqicb->flags = (u8 )((unsigned int )cqicb->flags | 32U);
    tmp = rx_ring->lbq_base_dma;
    base_indirect_ptr = (__le64 *)rx_ring->lbq_base_indirect;
    page_entries = 0;
    ldv_52844:
    *base_indirect_ptr = tmp;
    tmp = tmp + 4096ULL;
    base_indirect_ptr = base_indirect_ptr + 1;
    page_entries = page_entries + 1;
    if ((unsigned long )page_entries < ((unsigned long )rx_ring->lbq_len * 8UL) / 4096UL + (((unsigned long )rx_ring->lbq_len * 8UL & 4095UL) != 0UL ? 1UL : 0UL)) {
      goto ldv_52844;
    } else {
    }
    cqicb->lbq_addr = rx_ring->lbq_base_indirect_dma;
    bq_len = rx_ring->lbq_buf_size != 65536U ? (u16 )rx_ring->lbq_buf_size : 0U;
    cqicb->lbq_buf_size = bq_len;
    bq_len = rx_ring->lbq_len != 65536U ? (u16 )rx_ring->lbq_len : 0U;
    cqicb->lbq_len = bq_len;
    rx_ring->lbq_prod_idx = 0U;
    rx_ring->lbq_curr_idx = 0U;
    rx_ring->lbq_clean_idx = 0U;
    rx_ring->lbq_free_cnt = rx_ring->lbq_len;
  } else {
  }
  if (rx_ring->sbq_len != 0U) {
    cqicb->flags = (u8 )((unsigned int )cqicb->flags | 16U);
    tmp = rx_ring->sbq_base_dma;
    base_indirect_ptr = (__le64 *)rx_ring->sbq_base_indirect;
    page_entries = 0;
    ldv_52846:
    *base_indirect_ptr = tmp;
    tmp = tmp + 4096ULL;
    base_indirect_ptr = base_indirect_ptr + 1;
    page_entries = page_entries + 1;
    if ((unsigned long )page_entries < ((unsigned long )rx_ring->sbq_len * 8UL) / 4096UL + (((unsigned long )rx_ring->sbq_len * 8UL & 4095UL) != 0UL ? 1UL : 0UL)) {
      goto ldv_52846;
    } else {
    }
    cqicb->sbq_addr = rx_ring->sbq_base_indirect_dma;
    cqicb->sbq_buf_size = (unsigned short )rx_ring->sbq_buf_size;
    bq_len = rx_ring->sbq_len != 65536U ? (u16 )rx_ring->sbq_len : 0U;
    cqicb->sbq_len = bq_len;
    rx_ring->sbq_prod_idx = 0U;
    rx_ring->sbq_curr_idx = 0U;
    rx_ring->sbq_clean_idx = 0U;
    rx_ring->sbq_free_cnt = rx_ring->sbq_len;
  } else {
  }
  {
  if (rx_ring->type == 3U) {
    goto case_3;
  } else {
  }
  if (rx_ring->type == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_3:
  cqicb->irq_delay = qdev->tx_coalesce_usecs;
  cqicb->pkt_delay = qdev->tx_max_coalesced_frames;
  goto ldv_52849;
  case_4:
  {
  netif_napi_add(qdev->ndev, & rx_ring->napi, & ql_napi_poll_msix, 64);
  cqicb->irq_delay = qdev->rx_coalesce_usecs;
  cqicb->pkt_delay = qdev->rx_max_coalesced_frames;
  }
  goto ldv_52849;
  switch_default: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Invalid rx_ring->type = %d.\n",
                  rx_ring->type);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_52849:
  {
  err = ql_write_cfg(qdev, (void *)cqicb, 52, 64U, (int )rx_ring->cq_id);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to load CQICB.\n");
      }
    } else {
    }
    return (err);
  } else {
  }
  return (err);
}
}
static int ql_start_tx_ring(struct ql_adapter *qdev , struct tx_ring *tx_ring )
{
  struct wqicb *wqicb ;
  void *doorbell_area ;
  void *shadow_reg ;
  u64 shadow_reg_dma ;
  int err ;
  {
  {
  wqicb = (struct wqicb *)tx_ring;
  doorbell_area = qdev->doorbell_area + (unsigned long )((int )tx_ring->wq_id * 4096);
  shadow_reg = qdev->tx_ring_shadow_reg_area + (unsigned long )tx_ring->wq_id * 8UL;
  shadow_reg_dma = qdev->tx_ring_shadow_reg_dma + (unsigned long long )((unsigned long )tx_ring->wq_id * 8UL);
  err = 0;
  tx_ring->prod_idx_db_reg = doorbell_area;
  tx_ring->prod_idx = 0U;
  tx_ring->valid_db_reg = doorbell_area + 4UL;
  tx_ring->cnsmr_idx_sh_reg = (__le32 *)shadow_reg;
  tx_ring->cnsmr_idx_sh_reg_dma = shadow_reg_dma;
  wqicb->len = (unsigned int )((unsigned short )tx_ring->wq_len) | 16U;
  wqicb->flags = 61440U;
  wqicb->cq_id_rss = tx_ring->cq_id;
  wqicb->rid = 0U;
  wqicb->addr = tx_ring->wq_base_dma;
  wqicb->cnsmr_idx_addr = tx_ring->cnsmr_idx_sh_reg_dma;
  ql_init_tx_ring(qdev, tx_ring);
  err = ql_write_cfg(qdev, (void *)wqicb, 24, 1U, (int )tx_ring->wq_id);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to load tx_ring.\n");
      }
    } else {
    }
    return (err);
  } else {
  }
  return (err);
}
}
static void ql_disable_msix(struct ql_adapter *qdev )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 != 0) {
    {
    pci_disable_msix(qdev->pdev);
    clear_bit(3L, (unsigned long volatile *)(& qdev->flags));
    kfree((void const *)qdev->msi_x_entry);
    qdev->msi_x_entry = (struct msix_entry *)0;
    }
  } else {
    {
    tmp = constant_test_bit(2L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp != 0) {
      {
      pci_disable_msi(qdev->pdev);
      clear_bit(2L, (unsigned long volatile *)(& qdev->flags));
      }
    } else {
    }
  }
  return;
}
}
static void ql_enable_msix(struct ql_adapter *qdev )
{
  int i ;
  int err ;
  void *tmp ;
  int tmp___0 ;
  {
  if (qlge_irq_type == 0) {
    {
    tmp = kcalloc((size_t )qdev->intr_count, 8UL, 208U);
    qdev->msi_x_entry = (struct msix_entry *)tmp;
    }
    if ((unsigned long )qdev->msi_x_entry == (unsigned long )((struct msix_entry *)0)) {
      qlge_irq_type = 1;
      goto msi;
    } else {
    }
    i = 0;
    goto ldv_52871;
    ldv_52870:
    (qdev->msi_x_entry + (unsigned long )i)->entry = (u16 )i;
    i = i + 1;
    ldv_52871: ;
    if ((u32 )i < qdev->intr_count) {
      goto ldv_52870;
    } else {
    }
    ldv_52873:
    {
    err = pci_enable_msix(qdev->pdev, qdev->msi_x_entry, (int )qdev->intr_count);
    }
    if (err > 0) {
      qdev->intr_count = (u32 )err;
    } else {
    }
    if (err > 0) {
      goto ldv_52873;
    } else {
    }
    if (err < 0) {
      {
      kfree((void const *)qdev->msi_x_entry);
      qdev->msi_x_entry = (struct msix_entry *)0;
      }
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_warn((struct net_device const *)qdev->ndev, "MSI-X Enable failed, trying MSI.\n");
        }
      } else {
      }
      qdev->intr_count = 1U;
      qlge_irq_type = 1;
    } else
    if (err == 0) {
      {
      set_bit(3L, (unsigned long volatile *)(& qdev->flags));
      }
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_info((struct net_device const *)qdev->ndev, "MSI-X Enabled, got %d vectors.\n",
                    qdev->intr_count);
        }
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  msi:
  qdev->intr_count = 1U;
  if (qlge_irq_type == 1) {
    {
    tmp___0 = pci_enable_msi_block(qdev->pdev, 1);
    }
    if (tmp___0 == 0) {
      {
      set_bit(2L, (unsigned long volatile *)(& qdev->flags));
      }
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_info((struct net_device const *)qdev->ndev, "Running with MSI interrupts.\n");
        }
      } else {
      }
      return;
    } else {
    }
  } else {
  }
  qlge_irq_type = 2;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Running with legacy interrupts.\n");
    }
  } else {
  }
  return;
}
}
static void ql_set_tx_vect(struct ql_adapter *qdev )
{
  int i ;
  int j ;
  int vect ;
  u32 tx_rings_per_vector ;
  int tmp ;
  long tmp___0 ;
  {
  {
  tx_rings_per_vector = (u32 )qdev->tx_ring_count / qdev->intr_count;
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    vect = 0;
    j = 0;
    i = (int )qdev->rss_ring_count;
    goto ldv_52883;
    ldv_52882: ;
    if ((u32 )j == tx_rings_per_vector) {
      vect = vect + 1;
      j = 0;
    } else {
    }
    qdev->rx_ring[i].irq = (u32 )vect;
    j = j + 1;
    i = i + 1;
    ldv_52883: ;
    if (i < qdev->rx_ring_count) {
      goto ldv_52882;
    } else {
    }
  } else {
    i = 0;
    goto ldv_52886;
    ldv_52885:
    qdev->rx_ring[i].irq = 0U;
    i = i + 1;
    ldv_52886: ;
    if (i < qdev->rx_ring_count) {
      goto ldv_52885;
    } else {
    }
  }
  return;
}
}
static void ql_set_irq_mask(struct ql_adapter *qdev , struct intr_context *ctx )
{
  int j ;
  int vect ;
  u32 tx_rings_per_vector ;
  int tmp ;
  long tmp___0 ;
  {
  {
  vect = (int )ctx->intr;
  tx_rings_per_vector = (u32 )qdev->tx_ring_count / qdev->intr_count;
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    ctx->irq_mask = (u32 )(1 << (int )qdev->rx_ring[vect].cq_id);
    j = 0;
    goto ldv_52896;
    ldv_52895:
    ctx->irq_mask = ctx->irq_mask | (u32 )(1 << (int )qdev->rx_ring[(qdev->rss_ring_count + (u32 )vect * tx_rings_per_vector) + (u32 )j].cq_id);
    j = j + 1;
    ldv_52896: ;
    if ((u32 )j < tx_rings_per_vector) {
      goto ldv_52895;
    } else {
    }
  } else {
    j = 0;
    goto ldv_52899;
    ldv_52898:
    ctx->irq_mask = ctx->irq_mask | (u32 )(1 << (int )qdev->rx_ring[j].cq_id);
    j = j + 1;
    ldv_52899: ;
    if (j < qdev->rx_ring_count) {
      goto ldv_52898;
    } else {
    }
  }
  return;
}
}
static void ql_resolve_queues_to_irqs(struct ql_adapter *qdev )
{
  int i ;
  struct intr_context *intr_context ;
  int tmp ;
  long tmp___0 ;
  {
  {
  i = 0;
  intr_context = (struct intr_context *)(& qdev->intr_context);
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  }
  if (tmp___0 != 0L) {
    i = 0;
    goto ldv_52907;
    ldv_52906:
    {
    qdev->rx_ring[i].irq = (u32 )i;
    intr_context->intr = (u32 )i;
    intr_context->qdev = qdev;
    ql_set_irq_mask(qdev, intr_context);
    intr_context->intr_en_mask = (u32 )(i | 595534080);
    intr_context->intr_dis_mask = (u32 )(i | 595534336);
    intr_context->intr_read_mask = (u32 )(i | 595534592);
    }
    if (i == 0) {
      {
      intr_context->handler = & qlge_isr;
      sprintf((char *)(& intr_context->name), "%s-rx-%d", (char *)(& (qdev->ndev)->name),
              i);
      }
    } else {
      {
      intr_context->handler = & qlge_msix_rx_isr;
      sprintf((char *)(& intr_context->name), "%s-rx-%d", (char *)(& (qdev->ndev)->name),
              i);
      }
    }
    i = i + 1;
    intr_context = intr_context + 1;
    ldv_52907: ;
    if ((u32 )i < qdev->intr_count) {
      goto ldv_52906;
    } else {
    }
  } else {
    {
    intr_context->intr = 0U;
    intr_context->qdev = qdev;
    intr_context->intr_en_mask = 58654976U;
    intr_context->intr_dis_mask = 58655232U;
    intr_context->intr_read_mask = 58655488U;
    intr_context->handler = & qlge_isr;
    sprintf((char *)(& intr_context->name), "%s-single_irq", (char *)(& (qdev->ndev)->name));
    ql_set_irq_mask(qdev, intr_context);
    }
  }
  {
  ql_set_tx_vect(qdev);
  }
  return;
}
}
static void ql_free_irq(struct ql_adapter *qdev )
{
  int i ;
  struct intr_context *intr_context ;
  int tmp ;
  {
  intr_context = (struct intr_context *)(& qdev->intr_context);
  i = 0;
  goto ldv_52915;
  ldv_52914: ;
  if (intr_context->hooked != 0U) {
    {
    tmp = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp != 0) {
      {
      ldv_free_irq_84((qdev->msi_x_entry + (unsigned long )i)->vector, (void *)(& qdev->rx_ring) + (unsigned long )i);
      }
    } else {
      {
      ldv_free_irq_85((qdev->pdev)->irq, (void *)(& qdev->rx_ring));
      }
    }
  } else {
  }
  i = i + 1;
  intr_context = intr_context + 1;
  ldv_52915: ;
  if ((u32 )i < qdev->intr_count) {
    goto ldv_52914;
  } else {
  }
  {
  ql_disable_msix(qdev);
  }
  return;
}
}
static int ql_request_irq(struct ql_adapter *qdev )
{
  int i ;
  int status ;
  struct pci_dev *pdev ;
  struct intr_context *intr_context ;
  int tmp ;
  int tmp___0 ;
  {
  {
  status = 0;
  pdev = qdev->pdev;
  intr_context = (struct intr_context *)(& qdev->intr_context);
  ql_resolve_queues_to_irqs(qdev);
  i = 0;
  }
  goto ldv_52927;
  ldv_52926:
  {
  atomic_set(& intr_context->irq_cnt, 0);
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 != 0) {
    {
    status = ldv_request_irq_86((qdev->msi_x_entry + (unsigned long )i)->vector, intr_context->handler,
                                0UL, (char const *)(& intr_context->name), (void *)(& qdev->rx_ring) + (unsigned long )i);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed request for MSIX interrupt %d.\n",
                   i);
        }
      } else {
      }
      goto err_irq;
    } else {
    }
  } else {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "trying msi or legacy interrupts.\n");
      }
    } else {
    }
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s: irq = %d.\n",
                    "ql_request_irq", pdev->irq);
      }
    } else {
    }
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s: context->name = %s.\n",
                    "ql_request_irq", (char *)(& intr_context->name));
      }
    } else {
    }
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "%s: dev_id = 0x%p.\n",
                    "ql_request_irq", (struct rx_ring *)(& qdev->rx_ring));
      }
    } else {
    }
    {
    tmp = constant_test_bit(2L, (unsigned long const volatile *)(& qdev->flags));
    status = ldv_request_irq_87(pdev->irq, & qlge_isr, tmp != 0 ? 0UL : 128UL, (char const *)(& intr_context->name),
                                (void *)(& qdev->rx_ring));
    }
    if (status != 0) {
      goto err_irq;
    } else {
    }
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Hooked intr %d, queue type %s, with name %s.\n",
                 i, qdev->rx_ring[0].type != 2U ? (qdev->rx_ring[0].type != 3U ? (qdev->rx_ring[0].type == 4U ? (char *)"RX_Q" : (char *)"") : (char *)"TX_Q") : (char *)"DEFAULT_Q",
                 (char *)(& intr_context->name));
      }
    } else {
    }
  }
  intr_context->hooked = 1U;
  i = i + 1;
  intr_context = intr_context + 1;
  ldv_52927: ;
  if ((u32 )i < qdev->intr_count) {
    goto ldv_52926;
  } else {
  }
  return (status);
  err_irq: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Failed to get the interrupts!!!/n");
    }
  } else {
  }
  {
  ql_free_irq(qdev);
  }
  return (status);
}
}
static int ql_start_rss(struct ql_adapter *qdev )
{
  u8 init_hash_seed[40U] ;
  struct ricb *ricb ;
  int status ;
  int i ;
  u8 *hash_id ;
  {
  {
  init_hash_seed[0] = 109U;
  init_hash_seed[1] = 90U;
  init_hash_seed[2] = 86U;
  init_hash_seed[3] = 218U;
  init_hash_seed[4] = 37U;
  init_hash_seed[5] = 91U;
  init_hash_seed[6] = 14U;
  init_hash_seed[7] = 194U;
  init_hash_seed[8] = 65U;
  init_hash_seed[9] = 103U;
  init_hash_seed[10] = 37U;
  init_hash_seed[11] = 61U;
  init_hash_seed[12] = 67U;
  init_hash_seed[13] = 163U;
  init_hash_seed[14] = 143U;
  init_hash_seed[15] = 176U;
  init_hash_seed[16] = 208U;
  init_hash_seed[17] = 202U;
  init_hash_seed[18] = 43U;
  init_hash_seed[19] = 203U;
  init_hash_seed[20] = 174U;
  init_hash_seed[21] = 123U;
  init_hash_seed[22] = 48U;
  init_hash_seed[23] = 180U;
  init_hash_seed[24] = 119U;
  init_hash_seed[25] = 203U;
  init_hash_seed[26] = 45U;
  init_hash_seed[27] = 163U;
  init_hash_seed[28] = 128U;
  init_hash_seed[29] = 48U;
  init_hash_seed[30] = 242U;
  init_hash_seed[31] = 12U;
  init_hash_seed[32] = 106U;
  init_hash_seed[33] = 66U;
  init_hash_seed[34] = 183U;
  init_hash_seed[35] = 59U;
  init_hash_seed[36] = 190U;
  init_hash_seed[37] = 172U;
  init_hash_seed[38] = 1U;
  init_hash_seed[39] = 250U;
  ricb = & qdev->ricb;
  status = 0;
  hash_id = (u8 *)(& ricb->hash_cq_id);
  memset((void *)ricb, 0, 1084UL);
  ricb->base_cq = 128U;
  ricb->flags = 175U;
  ricb->mask = 1023U;
  i = 0;
  }
  goto ldv_52938;
  ldv_52937:
  *(hash_id + (unsigned long )i) = (unsigned int )((u8 )i) & ((unsigned int )((u8 )qdev->rss_ring_count) - 1U);
  i = i + 1;
  ldv_52938: ;
  if (i <= 1023) {
    goto ldv_52937;
  } else {
  }
  {
  memcpy((void *)(& ricb->ipv6_hash_key), (void const *)(& init_hash_seed), 40UL);
  memcpy((void *)(& ricb->ipv4_hash_key), (void const *)(& init_hash_seed), 16UL);
  status = ql_write_cfg(qdev, (void *)ricb, 1084, 4U, 0);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to load RICB.\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  return (status);
}
}
static int ql_clear_routing_entries(struct ql_adapter *qdev )
{
  int i ;
  int status ;
  {
  {
  status = 0;
  status = ql_sem_spinlock(qdev, 805306368U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  i = 0;
  goto ldv_52947;
  ldv_52946:
  {
  status = ql_set_routing_reg(qdev, (u32 )i, 0U, 0);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for CAM packets.\n");
      }
    } else {
    }
    goto ldv_52945;
  } else {
  }
  i = i + 1;
  ldv_52947: ;
  if (i <= 15) {
    goto ldv_52946;
  } else {
  }
  ldv_52945:
  {
  ql_sem_unlock(qdev, 805306368U);
  }
  return (status);
}
}
static int ql_route_initialize(struct ql_adapter *qdev )
{
  int status ;
  {
  {
  status = 0;
  status = ql_clear_routing_entries(qdev);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_sem_spinlock(qdev, 805306368U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_set_routing_reg(qdev, 1U, 33554432U, 1);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for IP CSUM error packets.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  {
  status = ql_set_routing_reg(qdev, 2U, 16777216U, 1);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for TCP/UDP CSUM error packets.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  {
  status = ql_set_routing_reg(qdev, 3U, 1U, 1);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for broadcast packets.\n");
      }
    } else {
    }
    goto exit;
  } else {
  }
  if (qdev->rss_ring_count > 1U) {
    {
    status = ql_set_routing_reg(qdev, 8U, 2147483648U, 1);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for MATCH RSS packets.\n");
        }
      } else {
      }
      goto exit;
    } else {
    }
  } else {
  }
  {
  status = ql_set_routing_reg(qdev, 12U, 128U, 1);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing register for CAM packets.\n");
      }
    } else {
    }
  } else {
  }
  exit:
  {
  ql_sem_unlock(qdev, 805306368U);
  }
  return (status);
}
}
int ql_cam_route_initialize(struct ql_adapter *qdev )
{
  int status ;
  int set ;
  u32 tmp ;
  {
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 48);
  set = (int )tmp;
  set = (int )((u32 )set & qdev->port_link_up);
  status = ql_set_mac_addr(qdev, set);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init mac address.\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  {
  status = ql_route_initialize(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init routing table.\n");
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static int ql_adapter_initialize(struct ql_adapter *qdev )
{
  u32 value ;
  u32 mask ;
  int i ;
  int status ;
  {
  {
  status = 0;
  value = 3U;
  mask = value << 16;
  ql_write32((struct ql_adapter const *)qdev, 8, mask | value);
  value = 0U;
  mask = 2130706432U;
  }
  if (((qdev->ndev)->features & 256ULL) != 0ULL) {
    value = value | 8U;
    mask = mask | 524288U;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 212, mask | value);
  ql_write32((struct ql_adapter const *)qdev, 56, 65537U);
  value = 33504U;
  value = value | 3U;
  mask = (value << 16) | 119472128U;
  ql_write32((struct ql_adapter const *)qdev, 16, mask | value);
  ql_write32((struct ql_adapter const *)qdev, 192, 0U);
  ql_write32((struct ql_adapter const *)qdev, 12, 393222U);
  value = ql_read32((struct ql_adapter const *)qdev, 224);
  value = value & 4294963199U;
  mask = 4294901760U;
  ql_write32((struct ql_adapter const *)qdev, 224, mask);
  ql_write32((struct ql_adapter const *)qdev, 224, mask | value);
  }
  if ((unsigned int )(qdev->pdev)->subsystem_device == 104U || (unsigned int )(qdev->pdev)->subsystem_device == 384U) {
    qdev->wol = 32U;
  } else {
  }
  i = 0;
  goto ldv_52966;
  ldv_52965:
  {
  status = ql_start_rx_ring(qdev, (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to start rx ring[%d].\n",
                 i);
      }
    } else {
    }
    return (status);
  } else {
  }
  i = i + 1;
  ldv_52966: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_52965;
  } else {
  }
  if (qdev->rss_ring_count > 1U) {
    {
    status = ql_start_rss(qdev);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to start RSS.\n");
        }
      } else {
      }
      return (status);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_52969;
  ldv_52968:
  {
  status = ql_start_tx_ring(qdev, (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )i);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to start tx ring[%d].\n",
                 i);
      }
    } else {
    }
    return (status);
  } else {
  }
  i = i + 1;
  ldv_52969: ;
  if (i < qdev->tx_ring_count) {
    goto ldv_52968;
  } else {
  }
  {
  status = (*((qdev->nic_ops)->port_initialize))(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to start port.\n");
      }
    } else {
    }
  } else {
  }
  {
  status = ql_cam_route_initialize(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to init CAM/Routing tables.\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  i = 0;
  goto ldv_52972;
  ldv_52971:
  {
  napi_enable(& qdev->rx_ring[i].napi);
  i = i + 1;
  }
  ldv_52972: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_52971;
  } else {
  }
  return (status);
}
}
static int ql_adapter_reset(struct ql_adapter *qdev )
{
  u32 value ;
  int status ;
  unsigned long end_jiffies ;
  unsigned long _max1 ;
  unsigned long _max2 ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  {
  status = 0;
  status = ql_clear_routing_entries(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to clear routing bits.\n");
      }
    } else {
    }
    return (status);
  } else {
  }
  {
  _max1 = 1UL;
  tmp = usecs_to_jiffies(30U);
  _max2 = tmp;
  end_jiffies = (unsigned long )jiffies + (_max1 > _max2 ? _max1 : _max2);
  tmp___0 = constant_test_bit(14L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 == 0) {
    {
    ql_mb_set_mgmnt_traffic_ctl(qdev, 1U);
    ql_wait_fifo_empty(qdev);
    }
  } else {
    {
    clear_bit(14L, (unsigned long volatile *)(& qdev->flags));
    }
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 12, 2147516416U);
  }
  ldv_52990:
  {
  value = ql_read32((struct ql_adapter const *)qdev, 12);
  }
  if ((value & 32768U) == 0U) {
    goto ldv_52983;
  } else {
  }
  {
  cpu_relax();
  }
  if ((long )((unsigned long )jiffies - end_jiffies) < 0L) {
    goto ldv_52990;
  } else {
  }
  ldv_52983: ;
  if ((value & 32768U) != 0U) {
    if ((qdev->msg_enable & 16U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "ETIMEDOUT!!! errored out of resetting the chip!\n");
      }
    } else {
    }
    status = -110;
  } else {
  }
  {
  ql_mb_set_mgmnt_traffic_ctl(qdev, 2U);
  }
  return (status);
}
}
static void ql_display_dev_info(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  if ((qdev->msg_enable & 2U) != 0U) {
    {
    netdev_info((struct net_device const *)qdev->ndev, "Function #%d, Port %d, NIC Roll %d, NIC Rev = %d, XG Roll = %d, XG Rev = %d.\n",
                qdev->func, qdev->port, qdev->chip_rev_id & 15U, (qdev->chip_rev_id >> 4) & 15U,
                (qdev->chip_rev_id >> 8) & 15U, (qdev->chip_rev_id >> 12) & 15U);
    }
  } else {
  }
  if ((qdev->msg_enable & 2U) != 0U) {
    {
    netdev_info((struct net_device const *)qdev->ndev, "MAC address %pM\n", ndev->dev_addr);
    }
  } else {
  }
  return;
}
}
static int ql_wol(struct ql_adapter *qdev )
{
  int status ;
  u32 wol ;
  {
  status = 0;
  wol = 0U;
  if ((qdev->wol & 95U) != 0U) {
    if ((qdev->msg_enable & 16U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Unsupported WOL parameter. qdev->wol = 0x%x.\n",
                 qdev->wol);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((qdev->wol & 32U) != 0U) {
    {
    status = ql_mb_wol_set_magic(qdev, 1U);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 16U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to set magic packet on %s.\n",
                   (char *)(& (qdev->ndev)->name));
        }
      } else {
      }
      return (status);
    } else
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "Enabled magic packet successfully on %s.\n",
                  (char *)(& (qdev->ndev)->name));
      }
    } else {
    }
    wol = wol | 2U;
  } else {
  }
  if (qdev->wol != 0U) {
    {
    wol = wol | 65536U;
    status = ql_mb_wol_mode(qdev, wol);
    }
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "WOL %s (wol code 0x%x) on %s\n",
                 status == 0 ? (char *)"Successfully set" : (char *)"Failed", wol,
                 (char *)(& (qdev->ndev)->name));
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static void ql_cancel_all_work_sync(struct ql_adapter *qdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp != 0) {
    {
    cancel_delayed_work_sync(& qdev->asic_reset_work);
    }
  } else {
  }
  {
  cancel_delayed_work_sync(& qdev->mpi_reset_work);
  cancel_delayed_work_sync(& qdev->mpi_work);
  cancel_delayed_work_sync(& qdev->mpi_idc_work);
  cancel_delayed_work_sync(& qdev->mpi_core_to_log);
  cancel_delayed_work_sync(& qdev->mpi_port_cfg_work);
  }
  return;
}
}
static int ql_adapter_down(struct ql_adapter *qdev )
{
  int i ;
  int status ;
  {
  {
  status = 0;
  ql_link_off(qdev);
  ql_cancel_all_work_sync(qdev);
  i = 0;
  }
  goto ldv_53009;
  ldv_53008:
  {
  napi_disable(& qdev->rx_ring[i].napi);
  i = i + 1;
  }
  ldv_53009: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_53008;
  } else {
  }
  {
  clear_bit(0L, (unsigned long volatile *)(& qdev->flags));
  ql_disable_interrupts(qdev);
  ql_tx_ring_clean(qdev);
  i = 0;
  }
  goto ldv_53012;
  ldv_53011:
  {
  netif_napi_del(& qdev->rx_ring[i].napi);
  i = i + 1;
  }
  ldv_53012: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_53011;
  } else {
  }
  {
  status = ql_adapter_reset(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 16U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "reset(func #%d) FAILED!\n",
                 qdev->func);
      }
    } else {
    }
  } else {
  }
  {
  ql_free_rx_buffers(qdev);
  }
  return (status);
}
}
static int ql_adapter_up(struct ql_adapter *qdev )
{
  int err ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  err = 0;
  err = ql_adapter_initialize(qdev);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "Unable to initialize adapter.\n");
      }
    } else {
    }
    goto err_init;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& qdev->flags));
  ql_alloc_rx_buffers(qdev);
  tmp = ql_read32((struct ql_adapter const *)qdev, 48);
  }
  if ((tmp & qdev->port_init) != 0U) {
    {
    tmp___0 = ql_read32((struct ql_adapter const *)qdev, 48);
    }
    if ((tmp___0 & qdev->port_link_up) != 0U) {
      {
      ql_link_on(qdev);
      }
    } else {
    }
  } else {
  }
  {
  clear_bit(6L, (unsigned long volatile *)(& qdev->flags));
  clear_bit(5L, (unsigned long volatile *)(& qdev->flags));
  qlge_set_multicast_list(qdev->ndev);
  qlge_restore_vlan(qdev);
  ql_enable_interrupts(qdev);
  ql_enable_all_completion_interrupts(qdev);
  netif_tx_start_all_queues(qdev->ndev);
  }
  return (0);
  err_init:
  {
  ql_adapter_reset(qdev);
  }
  return (err);
}
}
static void ql_release_adapter_resources(struct ql_adapter *qdev )
{
  {
  {
  ql_free_mem_resources(qdev);
  ql_free_irq(qdev);
  }
  return;
}
}
static int ql_get_adapter_resources(struct ql_adapter *qdev )
{
  int status ;
  int tmp ;
  {
  {
  status = 0;
  tmp = ql_alloc_mem_resources(qdev);
  }
  if (tmp != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Unable to  allocate memory.\n");
      }
    } else {
    }
    return (-12);
  } else {
  }
  {
  status = ql_request_irq(qdev);
  }
  return (status);
}
}
static int qlge_close(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  tmp___0 = constant_test_bit(12L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "EEH fatal did unload.\n");
      }
    } else {
    }
    {
    clear_bit(12L, (unsigned long volatile *)(& qdev->flags));
    }
    return (0);
  } else {
  }
  goto ldv_53031;
  ldv_53030:
  {
  msleep(1U);
  }
  ldv_53031:
  {
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___1 == 0) {
    goto ldv_53030;
  } else {
  }
  {
  ql_adapter_down(qdev);
  ql_release_adapter_resources(qdev);
  }
  return (0);
}
}
static int ql_configure_rings(struct ql_adapter *qdev )
{
  int i ;
  struct rx_ring *rx_ring ;
  struct tx_ring *tx_ring ;
  int cpu_cnt ;
  int _min1 ;
  int _min2 ;
  unsigned int tmp ;
  unsigned int lbq_buf_len ;
  int tmp___69 ;
  {
  {
  _min1 = 8;
  tmp = cpumask_weight(cpu_online_mask);
  _min2 = (int )tmp;
  cpu_cnt = _min1 < _min2 ? _min1 : _min2;
  lbq_buf_len = (qdev->ndev)->mtu > 1500U ? 8192U : 2048U;
  tmp___69 = __get_order((unsigned long )lbq_buf_len);
  qdev->lbq_buf_order = (unsigned int )tmp___69;
  qdev->intr_count = (u32 )cpu_cnt;
  ql_enable_msix(qdev);
  qdev->rss_ring_count = qdev->intr_count;
  qdev->tx_ring_count = cpu_cnt;
  qdev->rx_ring_count = (int )((u32 )qdev->tx_ring_count + qdev->rss_ring_count);
  i = 0;
  }
  goto ldv_53045;
  ldv_53044:
  {
  tx_ring = (struct tx_ring *)(& qdev->tx_ring) + (unsigned long )i;
  memset((void *)tx_ring, 0, 432UL);
  tx_ring->qdev = qdev;
  tx_ring->wq_id = (u8 )i;
  tx_ring->wq_len = (u32 )qdev->tx_ring_size;
  tx_ring->wq_size = tx_ring->wq_len * 128U;
  tx_ring->cq_id = (int )((u16 )qdev->rss_ring_count) + (int )((u16 )i);
  i = i + 1;
  }
  ldv_53045: ;
  if (i < qdev->tx_ring_count) {
    goto ldv_53044;
  } else {
  }
  i = 0;
  goto ldv_53048;
  ldv_53047:
  {
  rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
  memset((void *)rx_ring, 0, 608UL);
  rx_ring->qdev = qdev;
  rx_ring->cq_id = (u16 )i;
  rx_ring->cpu = (u32 )(i % cpu_cnt);
  }
  if ((u32 )i < qdev->rss_ring_count) {
    rx_ring->cq_len = (u32 )qdev->rx_ring_size;
    rx_ring->cq_size = rx_ring->cq_len * 64U;
    rx_ring->lbq_len = 512U;
    rx_ring->lbq_size = rx_ring->lbq_len * 8U;
    rx_ring->lbq_buf_size = (u32 )((unsigned short )lbq_buf_len);
    rx_ring->sbq_len = 512U;
    rx_ring->sbq_size = rx_ring->sbq_len * 8U;
    rx_ring->sbq_buf_size = 256U;
    rx_ring->type = 4U;
  } else {
    rx_ring->cq_len = (u32 )qdev->tx_ring_size;
    rx_ring->cq_size = rx_ring->cq_len * 64U;
    rx_ring->lbq_len = 0U;
    rx_ring->lbq_size = 0U;
    rx_ring->lbq_buf_size = 0U;
    rx_ring->sbq_len = 0U;
    rx_ring->sbq_size = 0U;
    rx_ring->sbq_buf_size = 0U;
    rx_ring->type = 3U;
  }
  i = i + 1;
  ldv_53048: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_53047;
  } else {
  }
  return (0);
}
}
static int qlge_open(struct net_device *ndev )
{
  int err ;
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  err = 0;
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  err = ql_adapter_reset(qdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = ql_configure_rings(qdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  err = ql_get_adapter_resources(qdev);
  }
  if (err != 0) {
    goto error_up;
  } else {
  }
  {
  err = ql_adapter_up(qdev);
  }
  if (err != 0) {
    goto error_up;
  } else {
  }
  return (err);
  error_up:
  {
  ql_release_adapter_resources(qdev);
  }
  return (err);
}
}
static int ql_change_rx_buffers(struct ql_adapter *qdev )
{
  struct rx_ring *rx_ring ;
  int i ;
  int status ;
  u32 lbq_buf_len ;
  int i___0 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___71 ;
  {
  {
  tmp___1 = constant_test_bit(0L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___1 == 0) {
    i___0 = 3;
    goto ldv_53065;
    ldv_53064: ;
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Waiting for adapter UP...\n");
      }
    } else {
    }
    {
    ssleep(1U);
    }
    ldv_53065:
    tmp = i___0;
    i___0 = i___0 - 1;
    if (tmp != 0) {
      {
      tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& qdev->flags));
      }
      if (tmp___0 == 0) {
        goto ldv_53064;
      } else {
        goto ldv_53066;
      }
    } else {
    }
    ldv_53066: ;
    if (i___0 == 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Timed out waiting for adapter UP\n");
        }
      } else {
      }
      return (-110);
    } else {
    }
  } else {
  }
  {
  status = ql_adapter_down(qdev);
  }
  if (status != 0) {
    goto error;
  } else {
  }
  {
  lbq_buf_len = (qdev->ndev)->mtu > 1500U ? 8192U : 2048U;
  tmp___71 = __get_order((unsigned long )lbq_buf_len);
  qdev->lbq_buf_order = (unsigned int )tmp___71;
  i = 0;
  }
  goto ldv_53069;
  ldv_53068:
  rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
  rx_ring->lbq_buf_size = lbq_buf_len;
  i = i + 1;
  ldv_53069: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_53068;
  } else {
  }
  {
  status = ql_adapter_up(qdev);
  }
  if (status != 0) {
    goto error;
  } else {
  }
  return (status);
  error: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_alert((struct net_device const *)qdev->ndev, "Driver up/down cycle failed, closing device.\n");
    }
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& qdev->flags));
  dev_close(qdev->ndev);
  }
  return (status);
}
}
static int qlge_change_mtu(struct net_device *ndev , int new_mtu )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  if (ndev->mtu == 1500U && new_mtu == 9000) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Changing to jumbo MTU.\n");
      }
    } else {
    }
  } else
  if (ndev->mtu == 9000U && new_mtu == 1500) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Changing to normal MTU.\n");
      }
    } else {
    }
  } else {
    return (-22);
  }
  {
  queue_delayed_work(qdev->workqueue, & qdev->mpi_port_cfg_work, 750UL);
  ndev->mtu = (unsigned int )new_mtu;
  tmp___0 = netif_running((struct net_device const *)qdev->ndev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  {
  status = ql_change_rx_buffers(qdev);
  }
  if (status != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Changing MTU failed.\n");
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static struct net_device_stats *qlge_get_stats(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  struct rx_ring *rx_ring ;
  struct tx_ring *tx_ring ;
  unsigned long pkts ;
  unsigned long mcast ;
  unsigned long dropped ;
  unsigned long errors ;
  unsigned long bytes ;
  int i ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  rx_ring = (struct rx_ring *)(& qdev->rx_ring);
  tx_ring = (struct tx_ring *)(& qdev->tx_ring);
  bytes = 0UL;
  errors = bytes;
  dropped = errors;
  mcast = dropped;
  pkts = mcast;
  i = 0;
  }
  goto ldv_53090;
  ldv_53089:
  pkts = (unsigned long )((unsigned long long )pkts + rx_ring->rx_packets);
  bytes = (unsigned long )((unsigned long long )bytes + rx_ring->rx_bytes);
  dropped = (unsigned long )((unsigned long long )dropped + rx_ring->rx_dropped);
  errors = (unsigned long )((unsigned long long )errors + rx_ring->rx_errors);
  mcast = (unsigned long )((unsigned long long )mcast + rx_ring->rx_multicast);
  i = i + 1;
  rx_ring = rx_ring + 1;
  ldv_53090: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_53089;
  } else {
  }
  ndev->stats.rx_packets = pkts;
  ndev->stats.rx_bytes = bytes;
  ndev->stats.rx_dropped = dropped;
  ndev->stats.rx_errors = errors;
  ndev->stats.multicast = mcast;
  bytes = 0UL;
  errors = bytes;
  pkts = errors;
  i = 0;
  goto ldv_53093;
  ldv_53092:
  pkts = (unsigned long )((unsigned long long )pkts + tx_ring->tx_packets);
  bytes = (unsigned long )((unsigned long long )bytes + tx_ring->tx_bytes);
  errors = (unsigned long )((unsigned long long )errors + tx_ring->tx_errors);
  i = i + 1;
  tx_ring = tx_ring + 1;
  ldv_53093: ;
  if (i < qdev->tx_ring_count) {
    goto ldv_53092;
  } else {
  }
  ndev->stats.tx_packets = pkts;
  ndev->stats.tx_bytes = bytes;
  ndev->stats.tx_errors = errors;
  return (& ndev->stats);
}
}
static void qlge_set_multicast_list(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  struct netdev_hw_addr *ha ;
  int i ;
  int status ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct list_head const *__mptr ;
  int tmp___8 ;
  struct list_head const *__mptr___0 ;
  int tmp___9 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  status = ql_sem_spinlock(qdev, 805306368U);
  }
  if (status != 0) {
    return;
  } else {
  }
  if ((ndev->flags & 256U) != 0U) {
    {
    tmp___1 = constant_test_bit(5L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp___1 == 0) {
      {
      tmp___0 = ql_set_routing_reg(qdev, 15U, 8388608U, 1);
      }
      if (tmp___0 != 0) {
        if ((qdev->msg_enable & 8192U) != 0U) {
          {
          netdev_err((struct net_device const *)qdev->ndev, "Failed to set promiscuous mode.\n");
          }
        } else {
        }
      } else {
        {
        set_bit(5L, (unsigned long volatile *)(& qdev->flags));
        }
      }
    } else {
    }
  } else {
    {
    tmp___3 = constant_test_bit(5L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp___3 != 0) {
      {
      tmp___2 = ql_set_routing_reg(qdev, 15U, 8388608U, 0);
      }
      if (tmp___2 != 0) {
        if ((qdev->msg_enable & 8192U) != 0U) {
          {
          netdev_err((struct net_device const *)qdev->ndev, "Failed to clear promiscuous mode.\n");
          }
        } else {
        }
      } else {
        {
        clear_bit(5L, (unsigned long volatile *)(& qdev->flags));
        }
      }
    } else {
    }
  }
  if ((ndev->flags & 512U) != 0U || ndev->mc.count > 32) {
    {
    tmp___5 = constant_test_bit(6L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp___5 == 0) {
      {
      tmp___4 = ql_set_routing_reg(qdev, 5U, 2U, 1);
      }
      if (tmp___4 != 0) {
        if ((qdev->msg_enable & 8192U) != 0U) {
          {
          netdev_err((struct net_device const *)qdev->ndev, "Failed to set all-multi mode.\n");
          }
        } else {
        }
      } else {
        {
        set_bit(6L, (unsigned long volatile *)(& qdev->flags));
        }
      }
    } else {
    }
  } else {
    {
    tmp___7 = constant_test_bit(6L, (unsigned long const volatile *)(& qdev->flags));
    }
    if (tmp___7 != 0) {
      {
      tmp___6 = ql_set_routing_reg(qdev, 5U, 2U, 0);
      }
      if (tmp___6 != 0) {
        if ((qdev->msg_enable & 8192U) != 0U) {
          {
          netdev_err((struct net_device const *)qdev->ndev, "Failed to clear all-multi mode.\n");
          }
        } else {
        }
      } else {
        {
        clear_bit(6L, (unsigned long volatile *)(& qdev->flags));
        }
      }
    } else {
    }
  }
  if (ndev->mc.count != 0) {
    {
    status = ql_sem_spinlock(qdev, 12582912U);
    }
    if (status != 0) {
      goto exit;
    } else {
    }
    i = 0;
    __mptr = (struct list_head const *)ndev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_53108;
    ldv_53107:
    {
    tmp___8 = ql_set_mac_addr_reg(qdev, (u8 *)(& ha->addr), 65536U, (int )((u16 )i));
    }
    if (tmp___8 != 0) {
      if ((qdev->msg_enable & 8192U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to loadmulticast address.\n");
        }
      } else {
      }
      {
      ql_sem_unlock(qdev, 12582912U);
      }
      goto exit;
    } else {
    }
    i = i + 1;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_53108: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& ndev->mc.list)) {
      goto ldv_53107;
    } else {
    }
    {
    ql_sem_unlock(qdev, 12582912U);
    tmp___9 = ql_set_routing_reg(qdev, 4U, 4U, 1);
    }
    if (tmp___9 != 0) {
      if ((qdev->msg_enable & 8192U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to set multicast match mode.\n");
        }
      } else {
      }
    } else {
      {
      set_bit(6L, (unsigned long volatile *)(& qdev->flags));
      }
    }
  } else {
  }
  exit:
  {
  ql_sem_unlock(qdev, 805306368U);
  }
  return;
}
}
static int qlge_set_mac_address(struct net_device *ndev , void *p )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  struct sockaddr *addr ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  {
  memcpy((void *)ndev->dev_addr, (void const *)(& addr->sa_data), (size_t )ndev->addr_len);
  memcpy((void *)(& qdev->current_mac_addr), (void const *)ndev->dev_addr, (size_t )ndev->addr_len);
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_set_mac_addr_reg(qdev, ndev->dev_addr, 0U, (int )((unsigned int )((u16 )qdev->func) * 128U));
  }
  if (status != 0) {
    if ((qdev->msg_enable & 8192U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to load MAC address.\n");
      }
    } else {
    }
  } else {
  }
  {
  ql_sem_unlock(qdev, 12582912U);
  }
  return (status);
}
}
static void qlge_tx_timeout(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  ql_queue_asic_error(qdev);
  }
  return;
}
}
static void ql_asic_reset_work(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  int status ;
  {
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb788UL;
  rtnl_lock();
  status = ql_adapter_down(qdev);
  }
  if (status != 0) {
    goto error;
  } else {
  }
  {
  status = ql_adapter_up(qdev);
  }
  if (status != 0) {
    goto error;
  } else {
  }
  {
  clear_bit(6L, (unsigned long volatile *)(& qdev->flags));
  clear_bit(5L, (unsigned long volatile *)(& qdev->flags));
  qlge_set_multicast_list(qdev->ndev);
  rtnl_unlock();
  }
  return;
  error: ;
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_alert((struct net_device const *)qdev->ndev, "Driver up/down cycle failed, closing device\n");
    }
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& qdev->flags));
  dev_close(qdev->ndev);
  rtnl_unlock();
  }
  return;
}
}
static struct nic_operations const qla8012_nic_ops = {& ql_get_8012_flash_params, & ql_8012_port_initialize};
static struct nic_operations const qla8000_nic_ops = {& ql_get_8000_flash_params, & ql_8000_port_initialize};
static int ql_get_alt_pcie_func(struct ql_adapter *qdev )
{
  int status ;
  u32 temp ;
  u32 nic_func1 ;
  u32 nic_func2 ;
  {
  {
  status = 0;
  status = ql_read_mpi_reg(qdev, 4098U, & temp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  nic_func1 = (temp >> 1) & 7U;
  nic_func2 = (temp >> 5) & 7U;
  if (qdev->func == nic_func1) {
    qdev->alt_func = nic_func2;
  } else
  if (qdev->func == nic_func2) {
    qdev->alt_func = nic_func1;
  } else {
    status = -5;
  }
  return (status);
}
}
static int ql_get_board_info(struct ql_adapter *qdev )
{
  int status ;
  u32 tmp ;
  {
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 48);
  qdev->func = (tmp & 192U) >> 6;
  }
  if (qdev->func > 3U) {
    return (-5);
  } else {
  }
  {
  status = ql_get_alt_pcie_func(qdev);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  qdev->port = qdev->func >= qdev->alt_func;
  if (qdev->port != 0U) {
    qdev->xg_sem_mask = 786432U;
    qdev->port_link_up = 8U;
    qdev->port_init = 32U;
    qdev->mailbox_in = 4736U;
    qdev->mailbox_out = 4752U;
  } else {
    qdev->xg_sem_mask = 196608U;
    qdev->port_link_up = 4U;
    qdev->port_init = 16U;
    qdev->mailbox_in = 4480U;
    qdev->mailbox_out = 4496U;
  }
  {
  qdev->chip_rev_id = ql_read32((struct ql_adapter const *)qdev, 76);
  qdev->device_id = (qdev->pdev)->device;
  }
  if ((unsigned int )qdev->device_id == 32786U) {
    qdev->nic_ops = & qla8012_nic_ops;
  } else
  if ((unsigned int )qdev->device_id == 32768U) {
    qdev->nic_ops = & qla8000_nic_ops;
  } else {
  }
  return (status);
}
}
static void ql_release_all(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  }
  if ((unsigned long )qdev->workqueue != (unsigned long )((struct workqueue_struct *)0)) {
    {
    destroy_workqueue(qdev->workqueue);
    qdev->workqueue = (struct workqueue_struct *)0;
    }
  } else {
  }
  if ((unsigned long )qdev->reg_base != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)qdev->reg_base);
    }
  } else {
  }
  if ((unsigned long )qdev->doorbell_area != (unsigned long )((void *)0)) {
    {
    iounmap((void volatile *)qdev->doorbell_area);
    }
  } else {
  }
  {
  vfree((void const *)qdev->mpi_coredump);
  pci_release_regions(pdev);
  }
  return;
}
}
static int ql_init_device(struct pci_dev *pdev , struct net_device *ndev , int cards_found )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___1 ;
  struct lock_class_key __key___1 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___2 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___7 ;
  struct lock_class_key __key___8 ;
  atomic_long_t __constr_expr_3 ;
  struct lock_class_key __key___9 ;
  struct lock_class_key __key___10 ;
  atomic_long_t __constr_expr_4 ;
  struct lock_class_key __key___11 ;
  struct lock_class_key __key___12 ;
  atomic_long_t __constr_expr_5 ;
  struct lock_class_key __key___13 ;
  struct lock_class_key __key___14 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  err = 0;
  memset((void *)qdev, 0, 20152UL);
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "PCI device enable failed.\n");
    }
    return (err);
  } else {
  }
  {
  qdev->ndev = ndev;
  qdev->pdev = pdev;
  pci_set_drvdata(pdev, (void *)ndev);
  err = pcie_set_readrq(pdev, 4096);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Set readrq failed.\n");
    }
    goto err_out1;
  } else {
  }
  {
  err = pci_request_regions(pdev, "qlge");
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "PCI region request failed.\n");
    }
    return (err);
  } else {
  }
  {
  pci_set_master(pdev);
  tmp___0 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp___0 == 0) {
    {
    set_bit(4L, (unsigned long volatile *)(& qdev->flags));
    err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
  } else {
    {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (err == 0) {
      {
      err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
      }
    } else {
    }
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration.\n");
    }
    goto err_out2;
  } else {
  }
  {
  pdev->needs_freset = 1U;
  pci_save_state(pdev);
  qdev->reg_base = ioremap_nocache(pdev->resource[1].start, pdev->resource[1].start != 0ULL || pdev->resource[1].end != pdev->resource[1].start ? (unsigned long )((pdev->resource[1].end - pdev->resource[1].start) + 1ULL) : 0UL);
  }
  if ((unsigned long )qdev->reg_base == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Register mapping failed.\n");
    err = -12;
    }
    goto err_out2;
  } else {
  }
  {
  qdev->doorbell_area_size = pdev->resource[3].start != 0ULL || pdev->resource[3].end != pdev->resource[3].start ? ((u32 )pdev->resource[3].end - (u32 )pdev->resource[3].start) + 1U : 0U;
  qdev->doorbell_area = ioremap_nocache(pdev->resource[3].start, pdev->resource[3].start != 0ULL || pdev->resource[3].end != pdev->resource[3].start ? (unsigned long )((pdev->resource[3].end - pdev->resource[3].start) + 1ULL) : 0UL);
  }
  if ((unsigned long )qdev->doorbell_area == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Doorbell register mapping failed.\n");
    err = -12;
    }
    goto err_out2;
  } else {
  }
  {
  err = ql_get_board_info(qdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Register access failed.\n");
    err = -5;
    }
    goto err_out2;
  } else {
  }
  {
  qdev->msg_enable = netif_msg_init(debug, (int )default_msg);
  spinlock_check(& qdev->hw_lock);
  __raw_spin_lock_init(& qdev->hw_lock.__annonCompField19.rlock, "&(&qdev->hw_lock)->rlock",
                       & __key);
  spinlock_check(& qdev->stats_lock);
  __raw_spin_lock_init(& qdev->stats_lock.__annonCompField19.rlock, "&(&qdev->stats_lock)->rlock",
                       & __key___0);
  }
  if (qlge_mpi_coredump != 0) {
    {
    tmp___1 = vmalloc(176196UL);
    qdev->mpi_coredump = (struct ql_mpi_coredump *)tmp___1;
    }
    if ((unsigned long )qdev->mpi_coredump == (unsigned long )((struct ql_mpi_coredump *)0)) {
      err = -12;
      goto err_out2;
    } else {
    }
    if (qlge_force_coredump != 0) {
      {
      set_bit(11L, (unsigned long volatile *)(& qdev->flags));
      }
    } else {
    }
  } else {
  }
  {
  err = (*((qdev->nic_ops)->get_flash))(qdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Invalid FLASH.\n");
    }
    goto err_out2;
  } else {
  }
  {
  memcpy((void *)(& qdev->current_mac_addr), (void const *)ndev->dev_addr, (size_t )ndev->addr_len);
  qdev->tx_ring_size = 256;
  qdev->rx_ring_size = 256;
  qdev->rx_coalesce_usecs = 100U;
  qdev->tx_coalesce_usecs = 100U;
  qdev->rx_max_coalesced_frames = 5U;
  qdev->tx_max_coalesced_frames = 5U;
  __lock_name = "\"%s\"(ndev->name)";
  tmp___2 = __alloc_workqueue_key("%s", 10U, 1, & __key___1, __lock_name, (char *)(& ndev->name));
  qdev->workqueue = tmp___2;
  __init_work(& qdev->asic_reset_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  qdev->asic_reset_work.work.data = __constr_expr_0;
  lockdep_init_map(& qdev->asic_reset_work.work.lockdep_map, "(&(&qdev->asic_reset_work)->work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& qdev->asic_reset_work.work.entry);
  qdev->asic_reset_work.work.func = & ql_asic_reset_work;
  init_timer_key(& qdev->asic_reset_work.timer, 2U, "(&(&qdev->asic_reset_work)->timer)",
                 & __key___3);
  qdev->asic_reset_work.timer.function = & delayed_work_timer_fn;
  qdev->asic_reset_work.timer.data = (unsigned long )(& qdev->asic_reset_work);
  __init_work(& qdev->mpi_reset_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  qdev->mpi_reset_work.work.data = __constr_expr_1;
  lockdep_init_map(& qdev->mpi_reset_work.work.lockdep_map, "(&(&qdev->mpi_reset_work)->work)",
                   & __key___4, 0);
  INIT_LIST_HEAD(& qdev->mpi_reset_work.work.entry);
  qdev->mpi_reset_work.work.func = & ql_mpi_reset_work;
  init_timer_key(& qdev->mpi_reset_work.timer, 2U, "(&(&qdev->mpi_reset_work)->timer)",
                 & __key___5);
  qdev->mpi_reset_work.timer.function = & delayed_work_timer_fn;
  qdev->mpi_reset_work.timer.data = (unsigned long )(& qdev->mpi_reset_work);
  __init_work(& qdev->mpi_work.work, 0);
  __constr_expr_2.counter = 137438953408L;
  qdev->mpi_work.work.data = __constr_expr_2;
  lockdep_init_map(& qdev->mpi_work.work.lockdep_map, "(&(&qdev->mpi_work)->work)",
                   & __key___6, 0);
  INIT_LIST_HEAD(& qdev->mpi_work.work.entry);
  qdev->mpi_work.work.func = & ql_mpi_work;
  init_timer_key(& qdev->mpi_work.timer, 2U, "(&(&qdev->mpi_work)->timer)", & __key___7);
  qdev->mpi_work.timer.function = & delayed_work_timer_fn;
  qdev->mpi_work.timer.data = (unsigned long )(& qdev->mpi_work);
  __init_work(& qdev->mpi_port_cfg_work.work, 0);
  __constr_expr_3.counter = 137438953408L;
  qdev->mpi_port_cfg_work.work.data = __constr_expr_3;
  lockdep_init_map(& qdev->mpi_port_cfg_work.work.lockdep_map, "(&(&qdev->mpi_port_cfg_work)->work)",
                   & __key___8, 0);
  INIT_LIST_HEAD(& qdev->mpi_port_cfg_work.work.entry);
  qdev->mpi_port_cfg_work.work.func = & ql_mpi_port_cfg_work;
  init_timer_key(& qdev->mpi_port_cfg_work.timer, 2U, "(&(&qdev->mpi_port_cfg_work)->timer)",
                 & __key___9);
  qdev->mpi_port_cfg_work.timer.function = & delayed_work_timer_fn;
  qdev->mpi_port_cfg_work.timer.data = (unsigned long )(& qdev->mpi_port_cfg_work);
  __init_work(& qdev->mpi_idc_work.work, 0);
  __constr_expr_4.counter = 137438953408L;
  qdev->mpi_idc_work.work.data = __constr_expr_4;
  lockdep_init_map(& qdev->mpi_idc_work.work.lockdep_map, "(&(&qdev->mpi_idc_work)->work)",
                   & __key___10, 0);
  INIT_LIST_HEAD(& qdev->mpi_idc_work.work.entry);
  qdev->mpi_idc_work.work.func = & ql_mpi_idc_work;
  init_timer_key(& qdev->mpi_idc_work.timer, 2U, "(&(&qdev->mpi_idc_work)->timer)",
                 & __key___11);
  qdev->mpi_idc_work.timer.function = & delayed_work_timer_fn;
  qdev->mpi_idc_work.timer.data = (unsigned long )(& qdev->mpi_idc_work);
  __init_work(& qdev->mpi_core_to_log.work, 0);
  __constr_expr_5.counter = 137438953408L;
  qdev->mpi_core_to_log.work.data = __constr_expr_5;
  lockdep_init_map(& qdev->mpi_core_to_log.work.lockdep_map, "(&(&qdev->mpi_core_to_log)->work)",
                   & __key___12, 0);
  INIT_LIST_HEAD(& qdev->mpi_core_to_log.work.entry);
  qdev->mpi_core_to_log.work.func = & ql_mpi_core_to_log;
  init_timer_key(& qdev->mpi_core_to_log.timer, 2U, "(&(&qdev->mpi_core_to_log)->timer)",
                 & __key___13);
  qdev->mpi_core_to_log.timer.function = & delayed_work_timer_fn;
  qdev->mpi_core_to_log.timer.data = (unsigned long )(& qdev->mpi_core_to_log);
  init_completion(& qdev->ide_completion);
  __mutex_init(& qdev->mpi_mutex, "&qdev->mpi_mutex", & __key___14);
  }
  if (cards_found == 0) {
    {
    _dev_info((struct device const *)(& pdev->dev), "%s\n", (char *)"QLogic 10 Gigabit PCI-E Ethernet Driver ");
    _dev_info((struct device const *)(& pdev->dev), "Driver name: %s, Version: %s.\n",
              (char *)"qlge", (char *)"1.00.00.34");
    }
  } else {
  }
  return (0);
  err_out2:
  {
  ql_release_all(pdev);
  }
  err_out1:
  {
  pci_disable_device(pdev);
  }
  return (err);
}
}
static struct net_device_ops const qlge_netdev_ops =
     {0, 0, & qlge_open, & qlge_close, & qlge_send, 0, 0, & qlge_set_multicast_list,
    & qlge_set_mac_address, & eth_validate_addr, 0, 0, & qlge_change_mtu, 0, & qlge_tx_timeout,
    0, & qlge_get_stats, & qlge_vlan_rx_add_vid, & qlge_vlan_rx_kill_vid, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & qlge_fix_features,
    & qlge_set_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void ql_timer(unsigned long data )
{
  struct ql_adapter *qdev ;
  u32 var ;
  int tmp ;
  {
  {
  qdev = (struct ql_adapter *)data;
  var = 0U;
  var = ql_read32((struct ql_adapter const *)qdev, 48);
  tmp = pci_channel_offline(qdev->pdev);
  }
  if (tmp != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "EEH STS = 0x%.08x.\n",
                 var);
      }
    } else {
    }
    return;
  } else {
  }
  {
  ldv_mod_timer_88(& qdev->timer, (unsigned long )jiffies + 1250UL);
  }
  return;
}
}
static int qlge_probe(struct pci_dev *pdev , struct pci_device_id const *pci_entry )
{
  struct net_device *ndev ;
  struct ql_adapter *qdev ;
  int cards_found ;
  int err ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  {
  {
  ndev = (struct net_device *)0;
  qdev = (struct ql_adapter *)0;
  cards_found = 0;
  err = 0;
  _min1 = 8;
  tmp = netif_get_num_default_rss_queues();
  _min2 = tmp;
  _min1___0 = 8;
  tmp___0 = netif_get_num_default_rss_queues();
  _min2___0 = tmp___0;
  ndev = ldv_alloc_etherdev_mqs_89(20152, (unsigned int )(_min1___0 < _min2___0 ? _min1___0 : _min2___0),
                                   (unsigned int )(_min1 < _min2 ? _min1 : _min2));
  }
  if ((unsigned long )ndev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  {
  err = ql_init_device(pdev, ndev, cards_found);
  }
  if (err < 0) {
    {
    ldv_free_netdev_90(ndev);
    }
    return (err);
  } else {
  }
  {
  tmp___1 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___1;
  ndev->dev.parent = & pdev->dev;
  ndev->hw_features = 4295558019ULL;
  ndev->features = ndev->hw_features;
  ndev->vlan_features = ndev->hw_features;
  ndev->vlan_features = ndev->vlan_features & 0xfffffffffffffc7fULL;
  tmp___2 = constant_test_bit(4L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___2 != 0) {
    ndev->features = ndev->features | 32ULL;
  } else {
  }
  {
  ndev->tx_queue_len = (unsigned long )qdev->tx_ring_size;
  ndev->irq = (int )pdev->irq;
  ndev->netdev_ops = & qlge_netdev_ops;
  ndev->ethtool_ops = & qlge_ethtool_ops;
  ndev->watchdog_timeo = 2500;
  err = ldv_register_netdev_91(ndev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "net device registration failed.\n");
    ql_release_all(pdev);
    pci_disable_device(pdev);
    ldv_free_netdev_92(ndev);
    }
    return (err);
  } else {
  }
  {
  init_timer_key(& qdev->timer, 1U, "(&qdev->timer)", & __key);
  qdev->timer.data = (unsigned long )qdev;
  qdev->timer.function = & ql_timer;
  qdev->timer.expires = (unsigned long )jiffies + 1250UL;
  add_timer(& qdev->timer);
  ql_link_off(qdev);
  ql_display_dev_info(ndev);
  atomic_set(& qdev->lb_count, 0);
  cards_found = cards_found + 1;
  }
  return (0);
}
}
netdev_tx_t ql_lb_send(struct sk_buff *skb , struct net_device *ndev )
{
  netdev_tx_t tmp ;
  {
  {
  tmp = qlge_send(skb, ndev);
  }
  return (tmp);
}
}
int ql_clean_lb_rx_ring(struct rx_ring *rx_ring , int budget )
{
  int tmp ;
  {
  {
  tmp = ql_clean_inbound_rx_ring(rx_ring, budget);
  }
  return (tmp);
}
}
static void qlge_remove(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  ldv_del_timer_sync_93(& qdev->timer);
  ql_cancel_all_work_sync(qdev);
  ldv_unregister_netdev_94(ndev);
  ql_release_all(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_95(ndev);
  }
  return;
}
}
static void ql_eeh_close(struct net_device *ndev )
{
  int i ;
  struct ql_adapter *qdev ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  tmp___0 = netif_carrier_ok((struct net_device const *)ndev);
  }
  if ((int )tmp___0) {
    {
    netif_carrier_off(ndev);
    netif_stop_queue(ndev);
    }
  } else {
  }
  {
  ldv_del_timer_sync_96(& qdev->timer);
  ql_cancel_all_work_sync(qdev);
  i = 0;
  }
  goto ldv_53220;
  ldv_53219:
  {
  netif_napi_del(& qdev->rx_ring[i].napi);
  i = i + 1;
  }
  ldv_53220: ;
  if ((u32 )i < qdev->rss_ring_count) {
    goto ldv_53219;
  } else {
  }
  {
  clear_bit(0L, (unsigned long volatile *)(& qdev->flags));
  ql_tx_ring_clean(qdev);
  ql_free_rx_buffers(qdev);
  ql_release_adapter_resources(qdev);
  }
  return;
}
}
static pci_ers_result_t qlge_io_error_detected(struct pci_dev *pdev , enum pci_channel_state state )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  }
  {
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )state == 3U) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1: ;
  return (2U);
  case_2:
  {
  netif_device_detach(ndev);
  tmp___1 = netif_running((struct net_device const *)ndev);
  }
  if ((int )tmp___1) {
    {
    ql_eeh_close(ndev);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  }
  return (3U);
  case_3:
  {
  dev_err((struct device const *)(& pdev->dev), "%s: pci_channel_io_perm_failure.\n",
          "qlge_io_error_detected");
  ql_eeh_close(ndev);
  set_bit(12L, (unsigned long volatile *)(& qdev->flags));
  }
  return (4U);
  switch_break: ;
  }
  return (3U);
}
}
static pci_ers_result_t qlge_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  pdev->error_state = 1U;
  pci_restore_state(pdev);
  tmp___1 = pci_enable_device(pdev);
  }
  if (tmp___1 != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Cannot re-enable PCI device after reset.\n");
      }
    } else {
    }
    return (4U);
  } else {
  }
  {
  pci_set_master(pdev);
  tmp___2 = ql_adapter_reset(qdev);
  }
  if (tmp___2 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "reset FAILED!\n");
      }
    } else {
    }
    {
    set_bit(12L, (unsigned long volatile *)(& qdev->flags));
    }
    return (4U);
  } else {
  }
  return (5U);
}
}
static void qlge_io_resume(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  err = 0;
  tmp___1 = netif_running((struct net_device const *)ndev);
  }
  if ((int )tmp___1) {
    {
    err = qlge_open(ndev);
    }
    if (err != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Device initialization failed after reset.\n");
        }
      } else {
      }
      return;
    } else {
    }
  } else
  if ((qdev->msg_enable & 32U) != 0U) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Device was not running prior to EEH.\n");
    }
  } else {
  }
  {
  ldv_mod_timer_97(& qdev->timer, (unsigned long )jiffies + 1250UL);
  netif_device_attach(ndev);
  }
  return;
}
}
static struct pci_error_handlers const qlge_err_handler = {& qlge_io_error_detected, 0, 0, & qlge_io_slot_reset, & qlge_io_resume};
static int qlge_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  pci_power_t tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  netif_device_detach(ndev);
  ldv_del_timer_sync_98(& qdev->timer);
  tmp___1 = netif_running((struct net_device const *)ndev);
  }
  if ((int )tmp___1) {
    {
    err = ql_adapter_down(qdev);
    }
    if (err == 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  ql_wol(qdev);
  err = pci_save_state(pdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  pci_disable_device(pdev);
  tmp___2 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___2);
  }
  return (0);
}
}
static int qlge_resume(struct pci_dev *pdev )
{
  struct net_device *ndev ;
  void *tmp ;
  struct ql_adapter *qdev ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  ndev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp___0;
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Cannot enable PCI device from suspend\n");
      }
    } else {
    }
    return (err);
  } else {
  }
  {
  pci_set_master(pdev);
  pci_enable_wake(pdev, 3, 0);
  pci_enable_wake(pdev, 4, 0);
  tmp___1 = netif_running((struct net_device const *)ndev);
  }
  if ((int )tmp___1) {
    {
    err = ql_adapter_up(qdev);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  ldv_mod_timer_99(& qdev->timer, (unsigned long )jiffies + 1250UL);
  netif_device_attach(ndev);
  }
  return (0);
}
}
static void qlge_shutdown(struct pci_dev *pdev )
{
  struct pm_message __constr_expr_0 ;
  {
  {
  __constr_expr_0.event = 2;
  qlge_suspend(pdev, __constr_expr_0);
  }
  return;
}
}
static struct pci_driver qlge_driver =
     {{0, 0}, "qlge", (struct pci_device_id const *)(& qlge_pci_tbl), & qlge_probe,
    & qlge_remove, & qlge_suspend, 0, 0, & qlge_resume, & qlge_shutdown, 0, & qlge_err_handler,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                           {0, 0}}};
static int qlge_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_100(& qlge_driver, & __this_module, "qlge");
  }
  return (tmp);
}
}
static void qlge_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_101(& qlge_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_qlge_driver_exit_16_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_qlge_driver_init_16_9(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_13_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_16_4(void) ;
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_10_2(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_8_1(int arg0 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_11_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_16_5(void) ;
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_16(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_17(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_20(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_36(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_39(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_45(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_48(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_49(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 ) ;
void ldv_entry_EMGentry_16(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
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
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_11_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_nic_operations_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_nic_operations_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_5(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_qlge_driver_exit_16_2(void (*arg0)(void) )
{
  {
  {
  qlge_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_qlge_driver_init_16_9(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = qlge_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_15_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_15_2(ldv_15_pci_driver_pci_driver);
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
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_6_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_6_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_6_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_7_timer_list_timer_list ;
  {
  {
  ldv_7_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_7_1(ldv_7_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_13_1(struct net_device *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_16_4(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_10_2(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_timer_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_timer_timer_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_8_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_0 = (struct ldv_struct_interrupt_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  cf_arg_0->arg1 = arg1;
  cf_arg_0->arg2 = arg2;
  cf_arg_0->arg3 = arg3;
  ldv_interrupt_interrupt_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_11_4(struct net_device *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_dummy_resourceless_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_net_dummy_resourceless_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_pci_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_pci_pci_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_16_5(void)
{
  struct ldv_struct_EMGentry_16 *cf_arg_3 ;
  struct ldv_struct_EMGentry_16 *cf_arg_4 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_16 *)tmp;
  ldv_struct_nic_operations_dummy_resourceless_instance_3((void *)cf_arg_3);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_16 *)tmp___0;
  ldv_struct_nic_operations_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_24(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  qlge_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  qlge_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  qlge_get_stats(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  qlge_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  qlge_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  qlge_set_multicast_list(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_36(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  qlge_send(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_37(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  qlge_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_39(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  qlge_vlan_rx_add_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  qlge_vlan_rx_kill_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 )
{
  {
  {
  ql_get_8000_flash_params(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 )
{
  {
  {
  ql_8000_port_initialize(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 )
{
  {
  {
  ql_get_8012_flash_params(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct ql_adapter * ) ,
                                                  struct ql_adapter *arg1 )
{
  {
  {
  ql_8012_port_initialize(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_16(void *arg0 )
{
  void (*ldv_16_exit_qlge_driver_exit_default)(void) ;
  int (*ldv_16_init_qlge_driver_init_default)(void) ;
  int ldv_16_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_16_ret_default = ldv_EMGentry_init_qlge_driver_init_16_9(ldv_16_init_qlge_driver_init_default);
  ldv_16_ret_default = ldv_post_init(ldv_16_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_16_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_16_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_14_16_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_16_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_qlge_driver_exit_16_2(ldv_16_exit_qlge_driver_exit_default);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_initialize();
  ldv_entry_EMGentry_16((void *)0);
  }
return 0;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_8_line_line ;
  {
  {
  ldv_8_line_line = arg1;
  ldv_dispatch_irq_deregister_8_1(ldv_8_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  {
  {
  ldv_9_netdev_net_device = arg1;
  ldv_free((void *)ldv_9_netdev_net_device);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = qlge_isr(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
  void *ldv_0_data_data ;
  int ldv_0_line_line ;
  enum irqreturn ldv_0_ret_val_default ;
  enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_0 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_0 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_0 *)0)) {
    {
    ldv_0_line_line = data->arg0;
    ldv_0_callback_handler = data->arg1;
    ldv_0_thread_thread = data->arg2;
    ldv_0_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_10_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_timer_list_timer_list = arg1;
    ldv_dispatch_instance_register_10_2(ldv_10_timer_list_timer_list);
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
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
  void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                           unsigned long long * ) ;
  unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
  unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
  void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
  int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
  int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
  void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
  void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
  unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
  struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
  int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
  enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ,
                                            unsigned short ) ;
  int (*ldv_1_callback_ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ,
                                             unsigned short ) ;
  void (*ldv_1_callback_self_test)(struct net_device * , struct ethtool_test * , unsigned long long * ) ;
  int (*ldv_1_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
  int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  int (*ldv_1_callback_set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
  int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  enum ethtool_phys_id_state ldv_1_container_enum_ethtool_phys_id_state ;
  struct net_device *ldv_1_container_net_device ;
  struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
  struct ethtool_coalesce *ldv_1_container_struct_ethtool_coalesce_ptr ;
  struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
  struct ethtool_pauseparam *ldv_1_container_struct_ethtool_pauseparam_ptr ;
  struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
  struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
  struct ethtool_test *ldv_1_container_struct_ethtool_test_ptr ;
  struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
  struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
  int ldv_1_ldv_param_17_1_default ;
  unsigned int ldv_1_ldv_param_20_1_default ;
  unsigned char *ldv_1_ldv_param_20_2_default ;
  int ldv_1_ldv_param_24_1_default ;
  unsigned long long ldv_1_ldv_param_27_1_default ;
  unsigned long long ldv_1_ldv_param_31_1_default ;
  unsigned short ldv_1_ldv_param_39_1_default ;
  unsigned short ldv_1_ldv_param_39_2_default ;
  unsigned short ldv_1_ldv_param_42_1_default ;
  unsigned short ldv_1_ldv_param_42_2_default ;
  unsigned long long *ldv_1_ldv_param_45_2_default ;
  unsigned int ldv_1_ldv_param_49_1_default ;
  unsigned long long *ldv_1_ldv_param_8_2_default ;
  struct ldv_struct_dummy_resourceless_instance_1 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_1 *)0)) {
    {
    ldv_1_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_1;
  return;
  ldv_call_1:
  {
  tmp = ldv_undef_int();
  }
  {
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
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_1_54(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_1_53(ldv_1_callback_set_phys_id, ldv_1_container_net_device,
                                                ldv_1_container_enum_ethtool_phys_id_state);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_52(ldv_1_callback_set_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_1_49(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_49_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_1_48(ldv_1_callback_set_coalesce, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  tmp___0 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_45_2_default = (unsigned long long *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_45(ldv_1_callback_self_test, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_test_ptr,
                                                ldv_1_ldv_param_45_2_default);
  ldv_free((void *)ldv_1_ldv_param_45_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_42(ldv_1_callback_ndo_vlan_rx_kill_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_42_1_default,
                                                (int )ldv_1_ldv_param_42_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_1_39(ldv_1_callback_ndo_vlan_rx_add_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_39_1_default,
                                                (int )ldv_1_ldv_param_39_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_37(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_36(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_31(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_31_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_get_stats, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_27_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_1_24(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_24_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_get_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_19:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_20_2_default = (unsigned char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_1_20(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_20_1_default, ldv_1_ldv_param_20_2_default);
  ldv_free((void *)ldv_1_ldv_param_20_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_1_17(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_17_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_1_16(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_1_12(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_link, ldv_1_container_net_device);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_27:
  {
  tmp___2 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_8_2_default = (unsigned long long *)tmp___2;
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_get_ethtool_stats, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_stats_ptr,
                                               ldv_1_ldv_param_8_2_default);
  ldv_free((void *)ldv_1_ldv_param_8_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_coalesce, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_30: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  qlge_io_error_detected(arg1, arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  qlge_io_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  qlge_io_slot_reset(arg1);
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
  tmp = qlge_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  qlge_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  qlge_resume(arg1);
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
  qlge_shutdown(arg1);
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
  tmp = qlge_suspend(arg1, arg2);
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
  unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
  void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) ;
  unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) ;
  struct pci_driver *ldv_2_container_pci_driver ;
  struct pci_dev *ldv_2_resource_dev ;
  enum pci_channel_state ldv_2_resource_enum_pci_channel_state ;
  struct pm_message ldv_2_resource_pm_message ;
  struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
  int ldv_2_ret_default ;
  struct ldv_struct_pci_instance_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_2 *)arg0;
  ldv_2_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_2 *)0)) {
    {
    ldv_2_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2936UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_pre_probe();
    ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                    ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
    ldv_2_ret_default = ldv_post_probe(ldv_2_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_dev);
    ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___3 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___3 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_pci_instance_callback_2_24(ldv_2_callback_slot_reset, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_pci_instance_callback_2_23(ldv_2_callback_func_1_ptr, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  case_3:
  {
  ldv_pci_instance_callback_2_10(ldv_2_callback_error_detected, ldv_2_resource_dev,
                                 ldv_2_resource_enum_pci_channel_state);
  }
  goto ldv_call_2;
  goto ldv_call_2;
  goto ldv_call_2;
  case_4:
  {
  ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                   ldv_2_resource_dev, ldv_2_resource_pm_message);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
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
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
  }
  goto ldv_call_2;
  case_5:
  {
  ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  }
  goto ldv_main_2;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_14_pci_driver_pci_driver ;
  {
  {
  ldv_14_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_14_1(ldv_14_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_11_netdev_net_device ;
  int ldv_11_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_11_ret_default = 1;
  ldv_11_ret_default = ldv_pre_register_netdev();
  ldv_11_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_11_ret_default == 0);
    ldv_11_ret_default = ldv_register_netdev_open_11_6((ldv_11_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_11_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_11_ret_default == 0);
      ldv_dispatch_register_11_4(ldv_11_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_11_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_11_ret_default != 0);
    }
  }
  return (ldv_11_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_11_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = qlge_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_12_callback_handler)(int , void * ) ;
  void *ldv_12_data_data ;
  int ldv_12_line_line ;
  enum irqreturn (*ldv_12_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_line_line = (int )arg1;
    ldv_12_callback_handler = arg2;
    ldv_12_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_12_data_data = arg5;
    ldv_dispatch_irq_register_12_2(ldv_12_line_line, ldv_12_callback_handler, ldv_12_thread_thread,
                                   ldv_12_data_data);
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
void ldv_struct_nic_operations_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_get_flash)(struct ql_adapter * ) ;
  int (*ldv_3_callback_port_initialize)(struct ql_adapter * ) ;
  struct ql_adapter *ldv_3_container_struct_ql_adapter_ptr ;
  int tmp ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp = ldv_undef_int();
  }
  {
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
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_port_initialize, ldv_3_container_struct_ql_adapter_ptr);
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_get_flash, ldv_3_container_struct_ql_adapter_ptr);
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_nic_operations_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_get_flash)(struct ql_adapter * ) ;
  int (*ldv_4_callback_port_initialize)(struct ql_adapter * ) ;
  struct ql_adapter *ldv_4_container_struct_ql_adapter_ptr ;
  int tmp ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp = ldv_undef_int();
  }
  {
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
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_port_initialize, ldv_4_container_struct_ql_adapter_ptr);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_get_flash, ldv_4_container_struct_ql_adapter_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_5(void *arg0 )
{
  struct timer_list *ldv_5_container_timer_list ;
  struct ldv_struct_timer_instance_5 *data ;
  {
  data = (struct ldv_struct_timer_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_5 *)0)) {
    {
    ldv_5_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_5_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_5_2(ldv_5_container_timer_list->function, ldv_5_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_13_netdev_net_device ;
  {
  {
  ldv_13_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_13_2((ldv_13_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_13_netdev_net_device);
  ldv_dispatch_deregister_13_1(ldv_13_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  qlge_close(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_58(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_59(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_77(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_hw_lock_of_ql_adapter();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_78(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_hw_lock_of_ql_adapter();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
__inline static void ldv_spin_lock_79(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_hw_lock_of_ql_adapter();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_80(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_hw_lock_of_ql_adapter();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_free_irq_84(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_85(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_86(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
__inline static int ldv_request_irq_87(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static int ldv_mod_timer_88(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static struct net_device *ldv_alloc_etherdev_mqs_89(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_90(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_register_netdev_91(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_92(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_93(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_94(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_95(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_96(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_97(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_98(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_99(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_100(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___10 ldv_func_res ;
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
static void ldv_pci_unregister_driver_101(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
int ql_write_mpi_reg(struct ql_adapter *qdev , u32 reg , u32 data ) ;
int ql_unpause_mpi_risc(struct ql_adapter *qdev ) ;
int ql_pause_mpi_risc(struct ql_adapter *qdev ) ;
int ql_hard_reset_mpi_risc(struct ql_adapter *qdev ) ;
int ql_soft_reset_mpi_risc(struct ql_adapter *qdev ) ;
int ql_dump_risc_ram_area(struct ql_adapter *qdev , void *buf , u32 ram_addr , int word_count ) ;
int ql_core_dump(struct ql_adapter *qdev , struct ql_mpi_coredump *mpi_coredump ) ;
void ql_get_dump(struct ql_adapter *qdev , void *buff ) ;
int ql_own_firmware(struct ql_adapter *qdev ) ;
static u32 ql_read_other_func_reg(struct ql_adapter *qdev , u32 reg )
{
  u32 register_to_read ;
  u32 reg_val ;
  unsigned int status ;
  int tmp ;
  {
  {
  status = 0U;
  register_to_read = ((qdev->alt_func << 6) | reg) | 131072U;
  tmp = ql_read_mpi_reg(qdev, register_to_read, & reg_val);
  status = (unsigned int )tmp;
  }
  if (status != 0U) {
    return (4294967295U);
  } else {
  }
  return (reg_val);
}
}
static int ql_write_other_func_reg(struct ql_adapter *qdev , u32 reg , u32 reg_val )
{
  u32 register_to_read ;
  int status ;
  {
  {
  status = 0;
  register_to_read = ((qdev->alt_func << 6) | reg) | 131072U;
  status = ql_write_mpi_reg(qdev, register_to_read, reg_val);
  }
  return (status);
}
}
static int ql_wait_other_func_reg_rdy(struct ql_adapter *qdev , u32 reg , u32 bit ,
                                      u32 err_bit )
{
  u32 temp ;
  int count ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  count = 10;
  goto ldv_44284;
  ldv_44283:
  {
  temp = ql_read_other_func_reg(qdev, reg);
  }
  if ((temp & err_bit) != 0U) {
    return (-1);
  } else
  if ((temp & bit) != 0U) {
    return (0);
  } else {
  }
  __ms = 10UL;
  goto ldv_44281;
  ldv_44280:
  {
  __const_udelay(4295000UL);
  }
  ldv_44281:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_44280;
  } else {
  }
  count = count - 1;
  ldv_44284: ;
  if (count != 0) {
    goto ldv_44283;
  } else {
  }
  return (-1);
}
}
static int ql_read_other_func_serdes_reg(struct ql_adapter *qdev , u32 reg , u32 *data )
{
  int status ;
  {
  {
  status = ql_wait_other_func_reg_rdy(qdev, 60U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write_other_func_reg(qdev, 60U, reg | 1073741824U);
  status = ql_wait_other_func_reg_rdy(qdev, 60U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read_other_func_reg(qdev, 61U);
  }
  exit: ;
  return (status);
}
}
static int ql_read_serdes_reg(struct ql_adapter *qdev , u32 reg , u32 *data )
{
  int status ;
  {
  {
  status = ql_wait_reg_rdy(qdev, 240U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 240, reg | 1073741824U);
  status = ql_wait_reg_rdy(qdev, 240U, 2147483648U, 0U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read32((struct ql_adapter const *)qdev, 244);
  }
  exit: ;
  return (status);
}
}
static void ql_get_both_serdes(struct ql_adapter *qdev , u32 addr , u32 *direct_ptr ,
                               u32 *indirect_ptr , unsigned int direct_valid , unsigned int indirect_valid )
{
  unsigned int status ;
  int tmp ;
  int tmp___0 ;
  {
  status = 1U;
  if (direct_valid != 0U) {
    {
    tmp = ql_read_serdes_reg(qdev, addr, direct_ptr);
    status = (unsigned int )tmp;
    }
  } else {
  }
  if (status != 0U) {
    *direct_ptr = 3735928559U;
  } else {
  }
  status = 1U;
  if (indirect_valid != 0U) {
    {
    tmp___0 = ql_read_other_func_serdes_reg(qdev, addr, indirect_ptr);
    status = (unsigned int )tmp___0;
    }
  } else {
  }
  if (status != 0U) {
    *indirect_ptr = 3735928559U;
  } else {
  }
  return;
}
}
static int ql_get_serdes_regs(struct ql_adapter *qdev , struct ql_mpi_coredump *mpi_coredump )
{
  int status ;
  unsigned int xfi_direct_valid ;
  unsigned int xfi_indirect_valid ;
  unsigned int xaui_direct_valid ;
  unsigned int xaui_indirect_valid ;
  unsigned int i ;
  u32 *direct_ptr ;
  u32 temp ;
  u32 *indirect_ptr ;
  {
  xfi_indirect_valid = 0U;
  xfi_direct_valid = xfi_indirect_valid;
  xaui_indirect_valid = 1U;
  xaui_direct_valid = xaui_indirect_valid;
  if ((int )qdev->func & 1) {
    {
    status = ql_read_other_func_serdes_reg(qdev, 2048U, & temp);
    }
    if (status != 0) {
      temp = 1U;
    } else {
    }
    if ((int )temp & 1) {
      xaui_indirect_valid = 0U;
    } else {
    }
    {
    status = ql_read_serdes_reg(qdev, 2048U, & temp);
    }
    if (status != 0) {
      temp = 1U;
    } else {
    }
    if ((int )temp & 1) {
      xaui_direct_valid = 0U;
    } else {
    }
  } else {
    {
    status = ql_read_other_func_serdes_reg(qdev, 2048U, & temp);
    }
    if (status != 0) {
      temp = 1U;
    } else {
    }
    if ((int )temp & 1) {
      xaui_indirect_valid = 0U;
    } else {
    }
    {
    status = ql_read_serdes_reg(qdev, 2048U, & temp);
    }
    if (status != 0) {
      temp = 1U;
    } else {
    }
    if ((int )temp & 1) {
      xaui_direct_valid = 0U;
    } else {
    }
  }
  {
  status = ql_read_serdes_reg(qdev, 7686U, & temp);
  }
  if (status != 0) {
    temp = 0U;
  } else {
  }
  if ((temp & 5U) == 5U) {
    if ((int )qdev->func & 1) {
      xfi_indirect_valid = 1U;
    } else {
      xfi_direct_valid = 1U;
    }
  } else {
  }
  if ((temp & 10U) == 10U) {
    if ((int )qdev->func & 1) {
      xfi_direct_valid = 1U;
    } else {
      xfi_indirect_valid = 1U;
    }
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xaui_an);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xaui_an);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xaui_an);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xaui_an);
  }
  i = 0U;
  goto ldv_44323;
  ldv_44322:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xaui_direct_valid, xaui_indirect_valid);
  i = i + 4U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44323: ;
  if (i <= 52U) {
    goto ldv_44322;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xaui_hss_pcs);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xaui_hss_pcs);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xaui_hss_pcs);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xaui_hss_pcs);
  }
  i = 2048U;
  goto ldv_44326;
  ldv_44325:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xaui_direct_valid, xaui_indirect_valid);
  i = i + 4U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44326: ;
  if (i <= 2176U) {
    goto ldv_44325;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_an);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_an);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_an);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_an);
  }
  i = 4096U;
  goto ldv_44329;
  ldv_44328:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 4U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44329: ;
  if (i <= 4148U) {
    goto ldv_44328;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_train);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_train);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_train);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_train);
  }
  i = 4176U;
  goto ldv_44332;
  ldv_44331:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 4U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44332: ;
  if (i <= 4220U) {
    goto ldv_44331;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_pcs);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_pcs);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_pcs);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_pcs);
  }
  i = 6144U;
  goto ldv_44335;
  ldv_44334:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 4U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44335: ;
  if (i <= 6200U) {
    goto ldv_44334;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_tx);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_tx);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_tx);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_tx);
  }
  i = 7168U;
  goto ldv_44338;
  ldv_44337:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 1U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44338: ;
  if (i <= 7199U) {
    goto ldv_44337;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_rx);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_rx);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_rx);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_rx);
  }
  i = 7232U;
  goto ldv_44341;
  ldv_44340:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 1U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44341: ;
  if (i <= 7263U) {
    goto ldv_44340;
  } else {
  }
  if ((int )qdev->func & 1) {
    direct_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_pll);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_pll);
  } else {
    direct_ptr = (u32 *)(& mpi_coredump->serdes_xfi_hss_pll);
    indirect_ptr = (u32 *)(& mpi_coredump->serdes2_xfi_hss_pll);
  }
  i = 7680U;
  goto ldv_44344;
  ldv_44343:
  {
  ql_get_both_serdes(qdev, i, direct_ptr, indirect_ptr, xfi_direct_valid, xfi_indirect_valid);
  i = i + 1U;
  direct_ptr = direct_ptr + 1;
  indirect_ptr = indirect_ptr + 1;
  }
  ldv_44344: ;
  if (i <= 7711U) {
    goto ldv_44343;
  } else {
  }
  return (0);
}
}
static int ql_read_other_func_xgmac_reg(struct ql_adapter *qdev , u32 reg , u32 *data )
{
  int status ;
  {
  {
  status = 0;
  status = ql_wait_other_func_reg_rdy(qdev, 30U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write_other_func_reg(qdev, 30U, reg | 1073741824U);
  status = ql_wait_other_func_reg_rdy(qdev, 30U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read_other_func_reg(qdev, 31U);
  }
  exit: ;
  return (status);
}
}
static int ql_get_xgmac_regs(struct ql_adapter *qdev , u32 *buf , unsigned int other_function )
{
  int status ;
  int i ;
  {
  status = 0;
  i = 256;
  goto ldv_44362;
  ldv_44361: ;
  if (((((((((((((((i == 276 || i == 280) || (i == 316 || i == 320)) || (unsigned int )i - 337U <= 170U) || (unsigned int )i - 633U <= 38U) || (unsigned int )i - 705U <= 13U) || (unsigned int )i - 733U <= 18U) || (unsigned int )i - 969U <= 54U) || (unsigned int )i - 1025U <= 14U) || (unsigned int )i - 1041U <= 14U) || (unsigned int )i - 1057U <= 14U) || (unsigned int )i - 1073U <= 14U) || (unsigned int )i - 1089U <= 14U) || (unsigned int )i - 1105U <= 174U) || (unsigned int )i - 1357U <= 26U) || (unsigned int )i - 1481U <= 54U) {
    if (other_function != 0U) {
      {
      status = ql_read_other_func_xgmac_reg(qdev, (u32 )i, buf);
      }
    } else {
      {
      status = ql_read_xgmac_reg(qdev, (u32 )i, buf);
      }
    }
    if (status != 0) {
      *buf = 3735928559U;
    } else {
    }
    goto ldv_44360;
  } else {
  }
  i = i + 4;
  buf = buf + 1;
  ldv_44362: ;
  if (i <= 1855) {
    goto ldv_44361;
  } else {
  }
  ldv_44360: ;
  return (status);
}
}
static int ql_get_ets_regs(struct ql_adapter *qdev , u32 *buf )
{
  int status ;
  int i ;
  {
  status = 0;
  i = 0;
  goto ldv_44370;
  ldv_44369:
  {
  ql_write32((struct ql_adapter const *)qdev, 128, (u32 )((i << 29) | 134217728));
  *buf = ql_read32((struct ql_adapter const *)qdev, 128);
  i = i + 1;
  buf = buf + 1;
  }
  ldv_44370: ;
  if (i <= 7) {
    goto ldv_44369;
  } else {
  }
  i = 0;
  goto ldv_44373;
  ldv_44372:
  {
  ql_write32((struct ql_adapter const *)qdev, 132, (u32 )((i << 29) | 134217728));
  *buf = ql_read32((struct ql_adapter const *)qdev, 132);
  i = i + 1;
  buf = buf + 1;
  }
  ldv_44373: ;
  if (i <= 1) {
    goto ldv_44372;
  } else {
  }
  return (status);
}
}
static void ql_get_intr_states(struct ql_adapter *qdev , u32 *buf )
{
  int i ;
  {
  i = 0;
  goto ldv_44381;
  ldv_44380:
  {
  ql_write32((struct ql_adapter const *)qdev, 52, qdev->intr_context[i].intr_read_mask);
  *buf = ql_read32((struct ql_adapter const *)qdev, 52);
  i = i + 1;
  buf = buf + 1;
  }
  ldv_44381: ;
  if (i < qdev->rx_ring_count) {
    goto ldv_44380;
  } else {
  }
  return;
}
}
static int ql_get_cam_entries(struct ql_adapter *qdev , u32 *buf )
{
  int i ;
  int status ;
  u32 value[3U] ;
  u32 *tmp ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  u32 *tmp___2 ;
  u32 *tmp___3 ;
  {
  {
  status = ql_sem_spinlock(qdev, 12582912U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  i = 0;
  goto ldv_44392;
  ldv_44391:
  {
  status = ql_get_mac_addr_reg(qdev, 0U, (int )((u16 )i), (u32 *)(& value));
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed read of mac index register\n");
      }
    } else {
    }
    goto err;
  } else {
  }
  tmp = buf;
  buf = buf + 1;
  *tmp = value[0];
  tmp___0 = buf;
  buf = buf + 1;
  *tmp___0 = value[1];
  tmp___1 = buf;
  buf = buf + 1;
  *tmp___1 = value[2];
  i = i + 1;
  ldv_44392: ;
  if (i <= 15) {
    goto ldv_44391;
  } else {
  }
  i = 0;
  goto ldv_44395;
  ldv_44394:
  {
  status = ql_get_mac_addr_reg(qdev, 65536U, (int )((u16 )i), (u32 *)(& value));
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed read of mac index register\n");
      }
    } else {
    }
    goto err;
  } else {
  }
  tmp___2 = buf;
  buf = buf + 1;
  *tmp___2 = value[0];
  tmp___3 = buf;
  buf = buf + 1;
  *tmp___3 = value[1];
  i = i + 1;
  ldv_44395: ;
  if (i <= 31) {
    goto ldv_44394;
  } else {
  }
  err:
  {
  ql_sem_unlock(qdev, 12582912U);
  }
  return (status);
}
}
static int ql_get_routing_entries(struct ql_adapter *qdev , u32 *buf )
{
  int status ;
  u32 value ;
  u32 i ;
  u32 *tmp ;
  {
  {
  status = ql_sem_spinlock(qdev, 805306368U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  i = 0U;
  goto ldv_44406;
  ldv_44405:
  {
  status = ql_get_routing_reg(qdev, i, & value);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed read of routing index register\n");
      }
    } else {
    }
    goto err;
  } else {
    tmp = buf;
    buf = buf + 1;
    *tmp = value;
  }
  i = i + 1U;
  ldv_44406: ;
  if (i <= 15U) {
    goto ldv_44405;
  } else {
  }
  err:
  {
  ql_sem_unlock(qdev, 805306368U);
  }
  return (status);
}
}
static int ql_get_mpi_shadow_regs(struct ql_adapter *qdev , u32 *buf )
{
  u32 i ;
  int status ;
  {
  i = 0U;
  goto ldv_44416;
  ldv_44415:
  {
  status = ql_write_mpi_reg(qdev, 196732U, (i << 20) | 2952790016U);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  {
  status = ql_read_mpi_reg(qdev, 196735U, buf);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  i = i + 1U;
  buf = buf + 1;
  ldv_44416: ;
  if (i <= 15U) {
    goto ldv_44415;
  } else {
  }
  end: ;
  return (status);
}
}
static int ql_get_mpi_regs(struct ql_adapter *qdev , u32 *buf , u32 offset , u32 count )
{
  int i ;
  int status ;
  {
  status = 0;
  i = 0;
  goto ldv_44427;
  ldv_44426:
  {
  status = ql_read_mpi_reg(qdev, offset + (u32 )i, buf);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  i = i + 1;
  buf = buf + 1;
  ldv_44427: ;
  if ((u32 )i < count) {
    goto ldv_44426;
  } else {
  }
  return (status);
}
}
static unsigned int *ql_get_probe(struct ql_adapter *qdev , u32 clock , u32 valid ,
                                  u32 *buf )
{
  u32 module ;
  u32 mux_sel ;
  u32 probe ;
  u32 lo_val ;
  u32 hi_val ;
  {
  module = 0U;
  goto ldv_44445;
  ldv_44444: ;
  if (((valid >> (int )module) & 1U) == 0U) {
    goto ldv_44440;
  } else {
  }
  mux_sel = 0U;
  goto ldv_44442;
  ldv_44441:
  {
  probe = ((clock | mux_sel) | (module << 9)) | 65536U;
  ql_write32((struct ql_adapter const *)qdev, 248, probe);
  lo_val = ql_read32((struct ql_adapter const *)qdev, 252);
  }
  if (mux_sel == 0U) {
    *buf = probe;
    buf = buf + 1;
  } else {
  }
  {
  probe = probe | 32768U;
  ql_write32((struct ql_adapter const *)qdev, 248, probe);
  hi_val = ql_read32((struct ql_adapter const *)qdev, 252);
  *buf = lo_val;
  buf = buf + 1;
  *buf = hi_val;
  buf = buf + 1;
  mux_sel = mux_sel + 1U;
  }
  ldv_44442: ;
  if (mux_sel <= 63U) {
    goto ldv_44441;
  } else {
  }
  ldv_44440:
  module = module + 1U;
  ldv_44445: ;
  if (module <= 20U) {
    goto ldv_44444;
  } else {
  }
  return (buf);
}
}
static int ql_get_probe_dump(struct ql_adapter *qdev , unsigned int *buf )
{
  {
  {
  ql_write_mpi_reg(qdev, 4110U, 413270016U);
  buf = ql_get_probe(qdev, 0U, 1015799U, buf);
  buf = ql_get_probe(qdev, 2U, 16577U, buf);
  buf = ql_get_probe(qdev, 6U, 226057U, buf);
  buf = ql_get_probe(qdev, 5U, 12289U, buf);
  }
  return (0);
}
}
static int ql_get_routing_index_registers(struct ql_adapter *qdev , u32 *buf )
{
  int status ;
  u32 type ;
  u32 index ;
  u32 index_max ;
  u32 result_index ;
  u32 result_data ;
  u32 val ;
  {
  {
  status = ql_sem_spinlock(qdev, 805306368U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  type = 0U;
  goto ldv_44469;
  ldv_44468: ;
  if (type <= 1U) {
    index_max = 8U;
  } else {
    index_max = 16U;
  }
  index = 0U;
  goto ldv_44466;
  ldv_44465:
  {
  val = ((type << 16) | (index << 8)) | 67108864U;
  ql_write32((struct ql_adapter const *)qdev, 228, val);
  result_index = 0U;
  }
  goto ldv_44463;
  ldv_44462:
  {
  result_index = ql_read32((struct ql_adapter const *)qdev, 228);
  }
  ldv_44463: ;
  if ((result_index & 1073741824U) == 0U) {
    goto ldv_44462;
  } else {
  }
  {
  result_data = ql_read32((struct ql_adapter const *)qdev, 232);
  *buf = type;
  buf = buf + 1;
  *buf = index;
  buf = buf + 1;
  *buf = result_index;
  buf = buf + 1;
  *buf = result_data;
  buf = buf + 1;
  index = index + 1U;
  }
  ldv_44466: ;
  if (index < index_max) {
    goto ldv_44465;
  } else {
  }
  type = type + 1U;
  ldv_44469: ;
  if (type <= 3U) {
    goto ldv_44468;
  } else {
  }
  {
  ql_sem_unlock(qdev, 805306368U);
  }
  return (status);
}
}
static void ql_get_mac_protocol_registers(struct ql_adapter *qdev , u32 *buf )
{
  u32 result_index ;
  u32 result_data ;
  u32 type ;
  u32 index ;
  u32 offset ;
  u32 val ;
  u32 initial_val ;
  u32 max_index ;
  u32 max_offset ;
  {
  initial_val = 67108864U;
  type = 0U;
  goto ldv_44506;
  ldv_44505: ;
  {
  if (type == 0U) {
    goto case_0;
  } else {
  }
  if (type == 1U) {
    goto case_1;
  } else {
  }
  if (type == 2U) {
    goto case_2;
  } else {
  }
  if (type == 3U) {
    goto case_3;
  } else {
  }
  if (type == 4U) {
    goto case_4;
  } else {
  }
  if (type == 5U) {
    goto case_5;
  } else {
  }
  if (type == 6U) {
    goto case_6;
  } else {
  }
  if (type == 7U) {
    goto case_7;
  } else {
  }
  if (type == 8U) {
    goto case_8;
  } else {
  }
  if (type == 9U) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_0:
  initial_val = initial_val | 33554432U;
  max_index = 512U;
  max_offset = 3U;
  goto ldv_44485;
  case_1:
  max_index = 3U;
  max_offset = 3U;
  goto ldv_44485;
  case_2: ;
  case_3:
  max_index = 3U;
  max_offset = 3U;
  goto ldv_44485;
  case_4:
  max_index = 4U;
  max_offset = 2U;
  goto ldv_44485;
  case_5:
  max_index = 8U;
  max_offset = 2U;
  goto ldv_44485;
  case_6:
  max_index = 16U;
  max_offset = 1U;
  goto ldv_44485;
  case_7:
  max_index = 4U;
  max_offset = 1U;
  goto ldv_44485;
  case_8:
  max_index = 4U;
  max_offset = 4U;
  goto ldv_44485;
  case_9:
  max_index = 4U;
  max_offset = 1U;
  goto ldv_44485;
  switch_default:
  {
  printk("\vqlge: Bad type!!! 0x%08x\n", type);
  max_index = 0U;
  max_offset = 0U;
  }
  goto ldv_44485;
  switch_break: ;
  }
  ldv_44485:
  index = 0U;
  goto ldv_44503;
  ldv_44502:
  offset = 0U;
  goto ldv_44500;
  ldv_44499:
  {
  val = ((initial_val | (type << 16)) | (index << 4)) | offset;
  ql_write32((struct ql_adapter const *)qdev, 168, val);
  result_index = 0U;
  }
  goto ldv_44497;
  ldv_44496:
  {
  result_index = ql_read32((struct ql_adapter const *)qdev, 168);
  }
  ldv_44497: ;
  if ((result_index & 1073741824U) == 0U) {
    goto ldv_44496;
  } else {
  }
  {
  result_data = ql_read32((struct ql_adapter const *)qdev, 172);
  *buf = result_index;
  buf = buf + 1;
  *buf = result_data;
  buf = buf + 1;
  offset = offset + 1U;
  }
  ldv_44500: ;
  if (offset < max_offset) {
    goto ldv_44499;
  } else {
  }
  index = index + 1U;
  ldv_44503: ;
  if (index < max_index) {
    goto ldv_44502;
  } else {
  }
  type = type + 1U;
  ldv_44506: ;
  if (type <= 9U) {
    goto ldv_44505;
  } else {
  }
  return;
}
}
static void ql_get_sem_registers(struct ql_adapter *qdev , u32 *buf )
{
  u32 func_num ;
  u32 reg ;
  u32 reg_val ;
  int status ;
  {
  func_num = 0U;
  goto ldv_44517;
  ldv_44516:
  {
  reg = (func_num << 6) | 131097U;
  status = ql_read_mpi_reg(qdev, reg, & reg_val);
  *buf = reg_val;
  }
  if (status == 0) {
    *buf = 3735928559U;
  } else {
  }
  buf = buf + 1;
  func_num = func_num + 1U;
  ldv_44517: ;
  if (func_num <= 3U) {
    goto ldv_44516;
  } else {
  }
  return;
}
}
static void ql_build_coredump_seg_header(struct mpi_coredump_segment_header *seg_hdr ,
                                         u32 seg_number , u32 seg_size , u8 *desc )
{
  {
  {
  memset((void *)seg_hdr, 0, 32UL);
  seg_hdr->cookie = 1431677610U;
  seg_hdr->segNum = seg_number;
  seg_hdr->segSize = seg_size;
  memcpy((void *)(& seg_hdr->description), (void const *)desc, 15UL);
  }
  return;
}
}
int ql_core_dump(struct ql_adapter *qdev , struct ql_mpi_coredump *mpi_coredump )
{
  int status ;
  int i ;
  {
  if ((unsigned long )mpi_coredump == (unsigned long )((struct ql_mpi_coredump *)0)) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "No memory allocated\n");
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  ql_sem_spinlock(qdev, 3221225472U);
  status = ql_pause_mpi_risc(qdev);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed RISC pause. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  memset((void *)(& mpi_coredump->mpi_global_header), 0, 256UL);
  mpi_coredump->mpi_global_header.cookie = 1431677610U;
  mpi_coredump->mpi_global_header.headerSize = 256U;
  mpi_coredump->mpi_global_header.imageSize = 176196U;
  memcpy((void *)(& mpi_coredump->mpi_global_header.idString), (void const *)"MPI Coredump",
         16UL);
  ql_build_coredump_seg_header(& mpi_coredump->nic_regs_seg_hdr, 16U, 288U, (u8 *)"NIC1 Registers");
  ql_build_coredump_seg_header(& mpi_coredump->nic2_regs_seg_hdr, 17U, 288U, (u8 *)"NIC2 Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xgmac1_seg_hdr, 18U, 1888U, (u8 *)"NIC1 XGMac Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xgmac2_seg_hdr, 19U, 1888U, (u8 *)"NIC2 XGMac Registers");
  }
  if ((int )qdev->func & 1) {
    i = 0;
    goto ldv_44533;
    ldv_44532:
    {
    mpi_coredump->nic2_regs[i] = ql_read32((struct ql_adapter const *)qdev, (int )((unsigned int )i * 4U));
    i = i + 1;
    }
    ldv_44533: ;
    if (i <= 63) {
      goto ldv_44532;
    } else {
    }
    i = 0;
    goto ldv_44536;
    ldv_44535:
    {
    mpi_coredump->nic_regs[i] = ql_read_other_func_reg(qdev, (u32 )(((unsigned long )i * 4UL) / 4UL));
    i = i + 1;
    }
    ldv_44536: ;
    if (i <= 63) {
      goto ldv_44535;
    } else {
    }
    {
    ql_get_xgmac_regs(qdev, (u32 *)(& mpi_coredump->xgmac2), 0U);
    ql_get_xgmac_regs(qdev, (u32 *)(& mpi_coredump->xgmac1), 1U);
    }
  } else {
    i = 0;
    goto ldv_44539;
    ldv_44538:
    {
    mpi_coredump->nic_regs[i] = ql_read32((struct ql_adapter const *)qdev, (int )((unsigned int )i * 4U));
    i = i + 1;
    }
    ldv_44539: ;
    if (i <= 63) {
      goto ldv_44538;
    } else {
    }
    i = 0;
    goto ldv_44542;
    ldv_44541:
    {
    mpi_coredump->nic2_regs[i] = ql_read_other_func_reg(qdev, (u32 )(((unsigned long )i * 4UL) / 4UL));
    i = i + 1;
    }
    ldv_44542: ;
    if (i <= 63) {
      goto ldv_44541;
    } else {
    }
    {
    ql_get_xgmac_regs(qdev, (u32 *)(& mpi_coredump->xgmac1), 0U);
    ql_get_xgmac_regs(qdev, (u32 *)(& mpi_coredump->xgmac2), 1U);
    }
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->xaui_an_hdr, 22U, 88U, (u8 *)"XAUI AN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xaui_hss_pcs_hdr, 23U, 164U, (u8 *)"XAUI HSS PCS Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_an_hdr, 24U, 88U, (u8 *)"XFI AN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_train_hdr, 25U, 80U, (u8 *)"XFI TRAIN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_hss_pcs_hdr, 26U, 92U, (u8 *)"XFI HSS PCS Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_hss_tx_hdr, 27U, 160U, (u8 *)"XFI HSS TX Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_hss_rx_hdr, 28U, 160U, (u8 *)"XFI HSS RX Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi_hss_pll_hdr, 29U, 160U, (u8 *)"XFI HSS PLL Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xaui2_an_hdr, 38U, 88U, (u8 *)"XAUI2 AN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xaui2_hss_pcs_hdr, 39U, 164U, (u8 *)"XAUI2 HSS PCS Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_an_hdr, 40U, 88U, (u8 *)"XFI2 AN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_train_hdr, 41U, 80U, (u8 *)"XFI2 TRAIN Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_hss_pcs_hdr, 42U, 92U, (u8 *)"XFI2 HSS PCS Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_hss_tx_hdr, 43U, 160U, (u8 *)"XFI2 HSS TX Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_hss_rx_hdr, 44U, 160U, (u8 *)"XFI2 HSS RX Registers");
  ql_build_coredump_seg_header(& mpi_coredump->xfi2_hss_pll_hdr, 45U, 160U, (u8 *)"XFI2 HSS PLL Registers");
  status = ql_get_serdes_regs(qdev, mpi_coredump);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Dump of Serdes Registers. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->core_regs_seg_hdr, 1U, 604U, (u8 *)"Core Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->mpi_core_regs), 196608U,
                           127U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  status = ql_get_mpi_shadow_regs(qdev, (u32 *)(& mpi_coredump->mpi_core_sh_regs));
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->test_logic_regs_seg_hdr, 2U, 124U,
                               (u8 *)"Test Logic Regs");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->test_logic_regs), 4096U,
                           23U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->rmii_regs_seg_hdr, 3U, 288U, (u8 *)"RMII Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->rmii_regs), 4160U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->fcmac1_regs_seg_hdr, 4U, 288U, (u8 *)"FCMAC1 Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->fcmac1_regs), 4224U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->fcmac2_regs_seg_hdr, 5U, 288U, (u8 *)"FCMAC2 Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->fcmac2_regs), 4288U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->fc1_mbx_regs_seg_hdr, 6U, 288U, (u8 *)"FC1 MBox Regs");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->fc1_mbx_regs), 4352U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->ide_regs_seg_hdr, 7U, 288U, (u8 *)"IDE Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->ide_regs), 4416U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->nic1_mbx_regs_seg_hdr, 8U, 288U, (u8 *)"NIC1 MBox Regs");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->nic1_mbx_regs), 4480U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->smbus_regs_seg_hdr, 9U, 288U, (u8 *)"SMBus Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->smbus_regs), 4608U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->fc2_mbx_regs_seg_hdr, 10U, 288U, (u8 *)"FC2 MBox Regs");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->fc2_mbx_regs), 4672U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->nic2_mbx_regs_seg_hdr, 11U, 288U, (u8 *)"NIC2 MBox Regs");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->nic2_mbx_regs), 4736U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->i2c_regs_seg_hdr, 12U, 288U, (u8 *)"I2C Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->i2c_regs), 8128U, 64U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->memc_regs_seg_hdr, 13U, 1056U, (u8 *)"MEMC Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->memc_regs), 12288U, 256U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->pbus_regs_seg_hdr, 14U, 1056U, (u8 *)"PBUS Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->pbus_regs), 31744U, 256U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->mde_regs_seg_hdr, 15U, 56U, (u8 *)"MDE Registers");
  status = ql_get_mpi_regs(qdev, (u32 *)(& mpi_coredump->mde_regs), 65536U, 6U);
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->misc_nic_seg_hdr, 30U, 48U, (u8 *)"MISC NIC INFO");
  mpi_coredump->misc_nic_info.rx_ring_count = (u32 )qdev->rx_ring_count;
  mpi_coredump->misc_nic_info.tx_ring_count = (u32 )qdev->tx_ring_count;
  mpi_coredump->misc_nic_info.intr_count = qdev->intr_count;
  mpi_coredump->misc_nic_info.function = qdev->func;
  ql_build_coredump_seg_header(& mpi_coredump->intr_states_seg_hdr, 31U, 100U, (u8 *)"INTR States");
  ql_get_intr_states(qdev, (u32 *)(& mpi_coredump->intr_states));
  ql_build_coredump_seg_header(& mpi_coredump->cam_entries_seg_hdr, 32U, 608U, (u8 *)"CAM Entries");
  status = ql_get_cam_entries(qdev, (u32 *)(& mpi_coredump->cam_entries));
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->nic_routing_words_seg_hdr, 33U, 96U,
                               (u8 *)"Routing Words");
  status = ql_get_routing_entries(qdev, (u32 *)(& mpi_coredump->nic_routing_words));
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->ets_seg_hdr, 34U, 72U, (u8 *)"ETS Registers");
  status = ql_get_ets_regs(qdev, (u32 *)(& mpi_coredump->ets));
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->probe_dump_seg_hdr, 35U, 17576U, (u8 *)"Probe Dump");
  ql_get_probe_dump(qdev, (unsigned int *)(& mpi_coredump->probe_dump));
  ql_build_coredump_seg_header(& mpi_coredump->routing_reg_seg_hdr, 36U, 800U, (u8 *)"Routing Regs");
  status = ql_get_routing_index_registers(qdev, (u32 *)(& mpi_coredump->routing_regs));
  }
  if (status != 0) {
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->mac_prot_reg_seg_hdr, 37U, 78880U,
                               (u8 *)"MAC Prot Regs");
  ql_get_mac_protocol_registers(qdev, (u32 *)(& mpi_coredump->mac_prot_regs));
  ql_build_coredump_seg_header(& mpi_coredump->sem_regs_seg_hdr, 50U, 48U, (u8 *)"Sem Registers");
  ql_get_sem_registers(qdev, (u32 *)(& mpi_coredump->sem_regs));
  ql_write_mpi_reg(qdev, 4106U, 3U);
  status = ql_unpause_mpi_risc(qdev);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed RISC unpause. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  status = ql_hard_reset_mpi_risc(qdev);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed RISC reset. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->code_ram_seg_hdr, 20U, 32800U, (u8 *)"WCS RAM");
  status = ql_dump_risc_ram_area(qdev, (void *)(& mpi_coredump->code_ram), 131072U,
                                 8192);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Dump of CODE RAM. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->memc_ram_seg_hdr, 21U, 32800U, (u8 *)"MEMC RAM");
  status = ql_dump_risc_ram_area(qdev, (void *)(& mpi_coredump->memc_ram), 1048576U,
                                 8192);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Dump of MEMC RAM. Status = 0x%.08x\n",
                 status);
      }
    } else {
    }
    goto err;
  } else {
  }
  err:
  {
  ql_sem_unlock(qdev, 3221225472U);
  }
  return (status);
}
}
static void ql_get_core_dump(struct ql_adapter *qdev )
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = ql_own_firmware(qdev);
  }
  if (tmp == 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Don\'t own firmware!\n");
      }
    } else {
    }
    return;
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)qdev->ndev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if ((qdev->msg_enable & 32U) != 0U) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Force Coredump can only be done from interface that is up\n");
      }
    } else {
    }
    return;
  } else {
  }
  {
  ql_queue_fw_error(qdev);
  }
  return;
}
}
static void ql_gen_reg_dump(struct ql_adapter *qdev , struct ql_reg_dump *mpi_coredump )
{
  int i ;
  int status ;
  {
  {
  memset((void *)(& mpi_coredump->mpi_global_header), 0, 256UL);
  mpi_coredump->mpi_global_header.cookie = 1431677610U;
  mpi_coredump->mpi_global_header.headerSize = 256U;
  mpi_coredump->mpi_global_header.imageSize = 1432U;
  memcpy((void *)(& mpi_coredump->mpi_global_header.idString), (void const *)"MPI Coredump",
         16UL);
  ql_build_coredump_seg_header(& mpi_coredump->misc_nic_seg_hdr, 30U, 48U, (u8 *)"MISC NIC INFO");
  mpi_coredump->misc_nic_info.rx_ring_count = (u32 )qdev->rx_ring_count;
  mpi_coredump->misc_nic_info.tx_ring_count = (u32 )qdev->tx_ring_count;
  mpi_coredump->misc_nic_info.intr_count = qdev->intr_count;
  mpi_coredump->misc_nic_info.function = qdev->func;
  ql_build_coredump_seg_header(& mpi_coredump->nic_regs_seg_hdr, 16U, 288U, (u8 *)"NIC Registers");
  i = 0;
  }
  goto ldv_44554;
  ldv_44553:
  {
  mpi_coredump->nic_regs[i] = ql_read32((struct ql_adapter const *)qdev, (int )((unsigned int )i * 4U));
  i = i + 1;
  }
  ldv_44554: ;
  if (i <= 63) {
    goto ldv_44553;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->intr_states_seg_hdr, 31U, 64U, (u8 *)"INTR States");
  ql_get_intr_states(qdev, (u32 *)(& mpi_coredump->intr_states));
  ql_build_coredump_seg_header(& mpi_coredump->cam_entries_seg_hdr, 32U, 608U, (u8 *)"CAM Entries");
  status = ql_get_cam_entries(qdev, (u32 *)(& mpi_coredump->cam_entries));
  }
  if (status != 0) {
    return;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->nic_routing_words_seg_hdr, 33U, 96U,
                               (u8 *)"Routing Words");
  status = ql_get_routing_entries(qdev, (u32 *)(& mpi_coredump->nic_routing_words));
  }
  if (status != 0) {
    return;
  } else {
  }
  {
  ql_build_coredump_seg_header(& mpi_coredump->ets_seg_hdr, 34U, 72U, (u8 *)"ETS Registers");
  status = ql_get_ets_regs(qdev, (u32 *)(& mpi_coredump->ets));
  }
  if (status != 0) {
    return;
  } else {
  }
  return;
}
}
void ql_get_dump(struct ql_adapter *qdev , void *buff )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 == 0) {
    {
    tmp = ql_core_dump(qdev, (struct ql_mpi_coredump *)buff);
    }
    if (tmp == 0) {
      {
      ql_soft_reset_mpi_risc(qdev);
      }
    } else
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "coredump failed!\n");
      }
    } else {
    }
  } else {
    {
    ql_gen_reg_dump(qdev, (struct ql_reg_dump *)buff);
    ql_get_core_dump(qdev);
    }
  }
  return;
}
}
void ql_mpi_core_to_log(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  u32 *tmp ;
  u32 count ;
  int i ;
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb328UL;
  count = 44049U;
  tmp = (u32 *)qdev->mpi_coredump;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_printk("\017", (struct net_device const *)qdev->ndev, "Core is dumping to log file!\n");
    }
  } else {
  }
  i = 0;
  goto ldv_44570;
  ldv_44569:
  {
  printk("\vqlge: %.08x: %.08x %.08x %.08x %.08x %.08x %.08x %.08x %.08x\n", i, *(tmp + (unsigned long )i),
         *(tmp + ((unsigned long )i + 1UL)), *(tmp + ((unsigned long )i + 2UL)), *(tmp + ((unsigned long )i + 3UL)),
         *(tmp + ((unsigned long )i + 4UL)), *(tmp + ((unsigned long )i + 5UL)), *(tmp + ((unsigned long )i + 6UL)),
         *(tmp + ((unsigned long )i + 7UL)));
  msleep(5U);
  i = i + 8;
  }
  ldv_44570: ;
  if ((u32 )i < count) {
    goto ldv_44569;
  } else {
  }
  return;
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
int ql_mb_set_led_cfg(struct ql_adapter *qdev , u32 led_config ) ;
int ql_mb_get_led_cfg(struct ql_adapter *qdev ) ;
int ql_mb_get_port_cfg(struct ql_adapter *qdev ) ;
int ql_mb_set_port_cfg(struct ql_adapter *qdev ) ;
int ql_unpause_mpi_risc(struct ql_adapter *qdev )
{
  u32 tmp ;
  {
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 20);
  }
  if ((tmp & 1024U) == 0U) {
    return (-5);
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 20, 1073741824U);
  }
  return (0);
}
}
int ql_pause_mpi_risc(struct ql_adapter *qdev )
{
  u32 tmp ;
  int count ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  count = 3;
  ql_write32((struct ql_adapter const *)qdev, 20, 805306368U);
  }
  ldv_44271:
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 20);
  }
  if ((tmp & 1024U) != 0U) {
    goto ldv_44266;
  } else {
  }
  __ms = 100UL;
  goto ldv_44269;
  ldv_44268:
  {
  __const_udelay(4295000UL);
  }
  ldv_44269:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_44268;
  } else {
  }
  count = count - 1;
  if (count != 0) {
    goto ldv_44271;
  } else {
  }
  ldv_44266: ;
  return (count == 0 ? -110 : 0);
}
}
int ql_hard_reset_mpi_risc(struct ql_adapter *qdev )
{
  u32 tmp ;
  int count ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  count = 3;
  ql_write32((struct ql_adapter const *)qdev, 20, 268435456U);
  }
  ldv_44282:
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 20);
  }
  if ((tmp & 256U) != 0U) {
    {
    ql_write32((struct ql_adapter const *)qdev, 20, 536870912U);
    }
    goto ldv_44277;
  } else {
  }
  __ms = 100UL;
  goto ldv_44280;
  ldv_44279:
  {
  __const_udelay(4295000UL);
  }
  ldv_44280:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_44279;
  } else {
  }
  count = count - 1;
  if (count != 0) {
    goto ldv_44282;
  } else {
  }
  ldv_44277: ;
  return (count == 0 ? -110 : 0);
}
}
int ql_read_mpi_reg(struct ql_adapter *qdev , u32 reg , u32 *data )
{
  int status ;
  {
  {
  status = ql_wait_reg_rdy(qdev, 0U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 0, reg | 1073741824U);
  status = ql_wait_reg_rdy(qdev, 0U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  *data = ql_read32((struct ql_adapter const *)qdev, 4);
  }
  exit: ;
  return (status);
}
}
int ql_write_mpi_reg(struct ql_adapter *qdev , u32 reg , u32 data )
{
  int status ;
  {
  {
  status = 0;
  status = ql_wait_reg_rdy(qdev, 0U, 2147483648U, 536870912U);
  }
  if (status != 0) {
    goto exit;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 4, data);
  ql_write32((struct ql_adapter const *)qdev, 0, reg);
  status = ql_wait_reg_rdy(qdev, 0U, 2147483648U, 536870912U);
  }
  if (status != 0) {
  } else {
  }
  exit: ;
  return (status);
}
}
int ql_soft_reset_mpi_risc(struct ql_adapter *qdev )
{
  int status ;
  {
  {
  status = ql_write_mpi_reg(qdev, 4112U, 1U);
  }
  return (status);
}
}
int ql_own_firmware(struct ql_adapter *qdev )
{
  u32 temp ;
  {
  if (qdev->func < qdev->alt_func) {
    return (1);
  } else {
  }
  {
  temp = ql_read32((struct ql_adapter const *)qdev, 48);
  }
  if ((temp & (u32 )(1 << (int )(qdev->alt_func + 8U))) == 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static int ql_get_mb_sts(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int i ;
  int status ;
  {
  {
  status = ql_sem_spinlock(qdev, 3221225472U);
  }
  if (status != 0) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_44313;
  ldv_44312:
  {
  status = ql_read_mpi_reg(qdev, qdev->mailbox_out + (u32 )i, (u32 *)(& mbcp->mbox_out) + (unsigned long )i);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed mailbox read.\n");
      }
    } else {
    }
    goto ldv_44311;
  } else {
  }
  i = i + 1;
  ldv_44313: ;
  if (i < mbcp->out_count) {
    goto ldv_44312;
  } else {
  }
  ldv_44311:
  {
  ql_sem_unlock(qdev, 3221225472U);
  }
  return (status);
}
}
static int ql_wait_mbx_cmd_cmplt(struct ql_adapter *qdev )
{
  int count ;
  u32 value ;
  unsigned long __ms ;
  unsigned long tmp ;
  {
  count = 100;
  ldv_44323:
  {
  value = ql_read32((struct ql_adapter const *)qdev, 48);
  }
  if ((value & 2U) != 0U) {
    return (0);
  } else {
  }
  __ms = 100UL;
  goto ldv_44321;
  ldv_44320:
  {
  __const_udelay(4295000UL);
  }
  ldv_44321:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_44320;
  } else {
  }
  count = count - 1;
  if (count != 0) {
    goto ldv_44323;
  } else {
  }
  return (-110);
}
}
static int ql_exec_mb_cmd(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int i ;
  int status ;
  u32 tmp ;
  {
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 20);
  }
  if ((tmp & 512U) != 0U) {
    return (-5);
  } else {
  }
  {
  status = ql_sem_spinlock(qdev, 3221225472U);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  i = 0;
  goto ldv_44333;
  ldv_44332:
  {
  status = ql_write_mpi_reg(qdev, qdev->mailbox_in + (u32 )i, mbcp->mbox_in[i]);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  i = i + 1;
  ldv_44333: ;
  if (i < mbcp->in_count) {
    goto ldv_44332;
  } else {
  }
  {
  ql_write32((struct ql_adapter const *)qdev, 20, 1342177280U);
  }
  end:
  {
  ql_sem_unlock(qdev, 3221225472U);
  }
  return (status);
}
}
static int ql_idc_req_aen(struct ql_adapter *qdev )
{
  int status ;
  struct mbox_params *mbcp ;
  {
  mbcp = & qdev->idc_mbc;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Enter!\n");
    }
  } else {
  }
  {
  mbcp = & qdev->idc_mbc;
  mbcp->out_count = 4;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Could not read MPI, resetting ASIC!\n");
      }
    } else {
    }
    {
    ql_queue_asic_error(qdev);
    }
  } else {
    {
    ql_write32((struct ql_adapter const *)qdev, 56, 65536U);
    queue_delayed_work(qdev->workqueue, & qdev->mpi_idc_work, 0UL);
    }
  }
  return (status);
}
}
static int ql_idc_cmplt_aen(struct ql_adapter *qdev )
{
  int status ;
  struct mbox_params *mbcp ;
  {
  {
  mbcp = & qdev->idc_mbc;
  mbcp->out_count = 4;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Could not read MPI, resetting RISC!\n");
      }
    } else {
    }
    {
    ql_queue_fw_error(qdev);
    }
  } else {
    {
    complete(& qdev->ide_completion);
    }
  }
  return (status);
}
}
static void ql_link_up(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  int tmp ;
  int tmp___0 ;
  {
  {
  mbcp->out_count = 2;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "%s: Could not get mailbox status.\n",
                 "ql_link_up");
      }
    } else {
    }
    return;
  } else {
  }
  qdev->link_status = mbcp->mbox_out[1];
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Link Up.\n");
    }
  } else {
  }
  {
  tmp = constant_test_bit(8L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp != 0) {
    {
    status = ql_cam_route_initialize(qdev);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to init CAM/Routing tables.\n");
        }
      } else {
      }
      return;
    } else {
      {
      clear_bit(8L, (unsigned long volatile *)(& qdev->flags));
      }
    }
  } else {
  }
  {
  tmp___0 = constant_test_bit(7L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 == 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Queue Port Config Worker!\n");
      }
    } else {
    }
    {
    set_bit(7L, (unsigned long volatile *)(& qdev->flags));
    ql_write32((struct ql_adapter const *)qdev, 56, 65536U);
    queue_delayed_work(qdev->workqueue, & qdev->mpi_port_cfg_work, 0UL);
    }
  } else {
  }
  {
  ql_link_on(qdev);
  }
  return;
}
}
static void ql_link_down(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  {
  {
  mbcp->out_count = 3;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Link down AEN broken!\n");
      }
    } else {
    }
  } else {
  }
  {
  ql_link_off(qdev);
  }
  return;
}
}
static int ql_sfp_in(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  {
  {
  mbcp->out_count = 5;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "SFP in AEN broken!\n");
      }
    } else {
    }
  } else
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "SFP insertion detected.\n");
    }
  } else {
  }
  return (status);
}
}
static int ql_sfp_out(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  {
  {
  mbcp->out_count = 1;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "SFP out AEN broken!\n");
      }
    } else {
    }
  } else
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "SFP removal detected.\n");
    }
  } else {
  }
  return (status);
}
}
static int ql_aen_lost(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  int i ;
  {
  {
  mbcp->out_count = 6;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Lost AEN broken!\n");
      }
    } else {
    }
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Lost AEN detected.\n");
      }
    } else {
    }
    i = 0;
    goto ldv_44373;
    ldv_44372: ;
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
                 i, mbcp->mbox_out[i]);
      }
    } else {
    }
    i = i + 1;
    ldv_44373: ;
    if (i < mbcp->out_count) {
      goto ldv_44372;
    } else {
    }
  }
  return (status);
}
}
static void ql_init_fw_done(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  {
  {
  mbcp->out_count = 2;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Firmware did not initialize!\n");
      }
    } else {
    }
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Firmware Revision  = 0x%.08x.\n",
                 mbcp->mbox_out[1]);
      }
    } else {
    }
    {
    qdev->fw_rev_id = mbcp->mbox_out[1];
    status = ql_cam_route_initialize(qdev);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to init CAM/Routing tables.\n");
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
static int ql_mpi_handler(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  int orig_count ;
  {
  {
  orig_count = mbcp->out_count;
  mbcp->out_count = 1;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Could not read MPI, resetting ASIC!\n");
      }
    } else {
    }
    {
    ql_queue_asic_error(qdev);
    }
    goto end;
  } else {
  }
  {
  if (mbcp->mbox_out[0] == 4096U) {
    goto case_4096;
  } else {
  }
  if (mbcp->mbox_out[0] == 16384U) {
    goto case_16384;
  } else {
  }
  if (mbcp->mbox_out[0] == 16385U) {
    goto case_16385;
  } else {
  }
  if (mbcp->mbox_out[0] == 16386U) {
    goto case_16386;
  } else {
  }
  if (mbcp->mbox_out[0] == 16387U) {
    goto case_16387;
  } else {
  }
  if (mbcp->mbox_out[0] == 16389U) {
    goto case_16389;
  } else {
  }
  if (mbcp->mbox_out[0] == 16390U) {
    goto case_16390;
  } else {
  }
  if (mbcp->mbox_out[0] == 33025U) {
    goto case_33025;
  } else {
  }
  if (mbcp->mbox_out[0] == 33024U) {
    goto case_33024;
  } else {
  }
  if (mbcp->mbox_out[0] == 33026U) {
    goto case_33026;
  } else {
  }
  if (mbcp->mbox_out[0] == 32785U) {
    goto case_32785;
  } else {
  }
  if (mbcp->mbox_out[0] == 32786U) {
    goto case_32786;
  } else {
  }
  if (mbcp->mbox_out[0] == 33792U) {
    goto case_33792;
  } else {
  }
  if (mbcp->mbox_out[0] == 33072U) {
    goto case_33072;
  } else {
  }
  if (mbcp->mbox_out[0] == 33073U) {
    goto case_33073;
  } else {
  }
  if (mbcp->mbox_out[0] == 33793U) {
    goto case_33793;
  } else {
  }
  if (mbcp->mbox_out[0] == 32770U) {
    goto case_32770;
  } else {
  }
  if (mbcp->mbox_out[0] == 33056U) {
    goto case_33056;
  } else {
  }
  if (mbcp->mbox_out[0] == 33040U) {
    goto case_33040;
  } else {
  }
  goto switch_default;
  case_4096: ;
  case_16384: ;
  case_16385: ;
  case_16386: ;
  case_16387: ;
  case_16389: ;
  case_16390:
  {
  mbcp->out_count = orig_count;
  status = ql_get_mb_sts(qdev, mbcp);
  }
  return (status);
  case_33025:
  {
  status = ql_idc_req_aen(qdev);
  }
  goto ldv_44395;
  case_33024: ;
  case_33026:
  {
  status = ql_idc_cmplt_aen(qdev);
  }
  goto ldv_44395;
  case_32785:
  {
  ql_link_up(qdev, mbcp);
  }
  goto ldv_44395;
  case_32786:
  {
  ql_link_down(qdev, mbcp);
  }
  goto ldv_44395;
  case_33792: ;
  if (mbcp->mbox_in[0] == 2U) {
    {
    mbcp->out_count = orig_count;
    status = ql_get_mb_sts(qdev, mbcp);
    mbcp->mbox_out[0] = 16384U;
    }
    return (status);
  } else {
  }
  {
  ql_init_fw_done(qdev, mbcp);
  }
  goto ldv_44395;
  case_33072:
  {
  ql_sfp_in(qdev, mbcp);
  }
  goto ldv_44395;
  case_33073:
  {
  ql_sfp_out(qdev, mbcp);
  }
  goto ldv_44395;
  case_33793: ;
  if (mbcp->mbox_in[0] == 2U) {
    {
    mbcp->out_count = orig_count;
    status = ql_get_mb_sts(qdev, mbcp);
    mbcp->mbox_out[0] = 16389U;
    }
    return (status);
  } else {
  }
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Firmware initialization failed.\n");
    }
  } else {
  }
  {
  status = -5;
  ql_queue_fw_error(qdev);
  }
  goto ldv_44395;
  case_32770: ;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "System Error.\n");
    }
  } else {
  }
  {
  ql_queue_fw_error(qdev);
  status = -5;
  }
  goto ldv_44395;
  case_33056:
  {
  ql_aen_lost(qdev, mbcp);
  }
  goto ldv_44395;
  case_33040: ;
  goto ldv_44395;
  switch_default: ;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Unsupported AE %.08x.\n",
               mbcp->mbox_out[0]);
    }
  } else {
  }
  switch_break: ;
  }
  ldv_44395: ;
  end:
  {
  ql_write32((struct ql_adapter const *)qdev, 20, 2684354560U);
  mbcp->out_count = orig_count;
  }
  return (status);
}
}
static int ql_mailbox_command(struct ql_adapter *qdev , struct mbox_params *mbcp )
{
  int status ;
  unsigned long count ;
  {
  {
  mutex_lock_nested(& qdev->mpi_mutex, 0U);
  ql_write32((struct ql_adapter const *)qdev, 56, 65536U);
  status = ql_exec_mb_cmd(qdev, mbcp);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  if (mbcp->mbox_in[0] == 42U) {
    goto end;
  } else {
  }
  count = (unsigned long )jiffies + 1250UL;
  ldv_44423:
  {
  status = ql_wait_mbx_cmd_cmplt(qdev);
  }
  if (status != 0) {
    goto ldv_44415;
  } else {
  }
  {
  status = ql_mpi_handler(qdev, mbcp);
  }
  if (status != 0) {
    goto end;
  } else {
  }
  if ((mbcp->mbox_out[0] & 61440U) == 16384U || (mbcp->mbox_out[0] & 61440U) == 4096U) {
    goto done;
  } else {
  }
  ldv_44415: ;
  if ((long )((unsigned long )jiffies - count) < 0L) {
    goto ldv_44423;
  } else {
  }
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Timed out waiting for mailbox complete.\n");
    }
  } else {
  }
  status = -110;
  goto end;
  done:
  {
  ql_write32((struct ql_adapter const *)qdev, 20, 2684354560U);
  }
  if ((mbcp->mbox_out[0] & 61440U) != 16384U && (mbcp->mbox_out[0] & 61440U) != 4096U) {
    status = -5;
  } else {
  }
  end:
  {
  ql_write32((struct ql_adapter const *)qdev, 56, 65537U);
  mutex_unlock(& qdev->mpi_mutex);
  }
  return (status);
}
}
int ql_mb_about_fw(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  status = 0;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 1;
  mbcp->out_count = 3;
  mbcp->mbox_in[0] = 8U;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed about firmware command\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  qdev->fw_rev_id = mbcp->mbox_out[1];
  return (status);
}
}
int ql_mb_get_fw_state(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  status = 0;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 1;
  mbcp->out_count = 2;
  mbcp->mbox_in[0] = 105U;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Get Firmware State.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  if ((int )mbcp->mbox_out[1] & 1) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Firmware waiting for initialization.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
static int ql_mb_idc_ack(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  status = 0;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 5;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 257U;
  mbcp->mbox_in[1] = qdev->idc_mbc.mbox_out[1];
  mbcp->mbox_in[2] = qdev->idc_mbc.mbox_out[2];
  mbcp->mbox_in[3] = qdev->idc_mbc.mbox_out[3];
  mbcp->mbox_in[4] = qdev->idc_mbc.mbox_out[4];
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed IDC ACK send.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
int ql_mb_set_port_cfg(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  status = 0;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 3;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 290U;
  mbcp->mbox_in[1] = qdev->link_config;
  mbcp->mbox_in[2] = qdev->max_frame_size;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] == 4096U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Port Config sent, wait for IDC.\n");
      }
    } else {
    }
  } else
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Set Port Configuration.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
static int ql_mb_dump_ram(struct ql_adapter *qdev , u64 req_dma , u32 addr , u32 size )
{
  int status ;
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  {
  {
  status = 0;
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 9;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 12U;
  mbcp->mbox_in[1] = (u32 )((unsigned short )addr);
  mbcp->mbox_in[2] = (u32 )((unsigned short )((unsigned int )req_dma >> 16));
  mbcp->mbox_in[3] = (u32 )((unsigned short )req_dma);
  mbcp->mbox_in[4] = (u32 )((unsigned short )(size >> 16));
  mbcp->mbox_in[5] = (u32 )((unsigned short )size);
  mbcp->mbox_in[6] = (u32 )((unsigned short )((unsigned int )(req_dma >> 32) >> 16));
  mbcp->mbox_in[7] = (u32 )((unsigned short )(req_dma >> 32));
  mbcp->mbox_in[8] = (u32 )((unsigned short )(addr >> 16));
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to dump risc RAM.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
int ql_dump_risc_ram_area(struct ql_adapter *qdev , void *buf , u32 ram_addr , int word_count )
{
  int status ;
  char *my_buf ;
  dma_addr_t buf_dma ;
  void *tmp ;
  {
  {
  tmp = pci_alloc_consistent(qdev->pdev, (unsigned long )word_count * 4UL, & buf_dma);
  my_buf = (char *)tmp;
  }
  if ((unsigned long )my_buf == (unsigned long )((char *)0)) {
    return (-5);
  } else {
  }
  {
  status = ql_mb_dump_ram(qdev, buf_dma, ram_addr, (u32 )word_count);
  }
  if (status == 0) {
    {
    memcpy(buf, (void const *)my_buf, (unsigned long )word_count * 4UL);
    }
  } else {
  }
  {
  pci_free_consistent(qdev->pdev, (unsigned long )word_count * 4UL, (void *)my_buf,
                      buf_dma);
  }
  return (status);
}
}
int ql_mb_get_port_cfg(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  status = 0;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 1;
  mbcp->out_count = 3;
  mbcp->mbox_in[0] = 291U;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed Get Port Configuration.\n");
      }
    } else {
    }
    status = -5;
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "Passed Get Port Configuration.\n");
      }
    } else {
    }
    qdev->link_config = mbcp->mbox_out[1];
    qdev->max_frame_size = mbcp->mbox_out[2];
  }
  return (status);
}
}
int ql_mb_wol_mode(struct ql_adapter *qdev , u32 wol )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 2;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 272U;
  mbcp->mbox_in[1] = wol;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to set WOL mode.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
int ql_mb_wol_set_magic(struct ql_adapter *qdev , u32 enable_wol )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  u8 *addr ;
  {
  {
  mbcp = & mbc;
  addr = (qdev->ndev)->dev_addr;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 8;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 275U;
  }
  if (enable_wol != 0U) {
    mbcp->mbox_in[1] = (unsigned int )*addr;
    mbcp->mbox_in[2] = (unsigned int )*(addr + 1UL);
    mbcp->mbox_in[3] = (unsigned int )*(addr + 2UL);
    mbcp->mbox_in[4] = (unsigned int )*(addr + 3UL);
    mbcp->mbox_in[5] = (unsigned int )*(addr + 4UL);
    mbcp->mbox_in[6] = (unsigned int )*(addr + 5UL);
    mbcp->mbox_in[7] = 0U;
  } else {
    mbcp->mbox_in[1] = 0U;
    mbcp->mbox_in[2] = 1U;
    mbcp->mbox_in[3] = 1U;
    mbcp->mbox_in[4] = 1U;
    mbcp->mbox_in[5] = 1U;
    mbcp->mbox_in[6] = 1U;
    mbcp->mbox_in[7] = 0U;
  }
  {
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to set WOL mode.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
static int ql_idc_wait(struct ql_adapter *qdev )
{
  int status ;
  long wait_time ;
  struct mbox_params *mbcp ;
  unsigned long tmp ;
  {
  status = -110;
  wait_time = 250L;
  mbcp = & qdev->idc_mbc;
  ldv_44495:
  {
  tmp = wait_for_completion_timeout(& qdev->ide_completion, (unsigned long )wait_time);
  wait_time = (long )tmp;
  }
  if (wait_time == 0L) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "IDC Timeout.\n");
      }
    } else {
    }
    goto ldv_44494;
  } else {
  }
  if (mbcp->mbox_out[0] == 33026U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "IDC Time Extension from function.\n");
      }
    } else {
    }
    wait_time = wait_time + ((long )(mbcp->mbox_out[1] >> 8) & 15L);
  } else
  if (mbcp->mbox_out[0] == 33024U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "IDC Success.\n");
      }
    } else {
    }
    status = 0;
    goto ldv_44494;
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "IDC: Invalid State 0x%.04x.\n",
                 mbcp->mbox_out[0]);
      }
    } else {
    }
    status = -5;
    goto ldv_44494;
  }
  if (wait_time != 0L) {
    goto ldv_44495;
  } else {
  }
  ldv_44494: ;
  return (status);
}
}
int ql_mb_set_led_cfg(struct ql_adapter *qdev , u32 led_config )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 2;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 293U;
  mbcp->mbox_in[1] = led_config;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to set LED Configuration.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
int ql_mb_get_led_cfg(struct ql_adapter *qdev )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 1;
  mbcp->out_count = 2;
  mbcp->mbox_in[0] = 294U;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] != 16384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to get LED Configuration.\n");
      }
    } else {
    }
    status = -5;
  } else {
    qdev->led_config = mbcp->mbox_out[1];
  }
  return (status);
}
}
int ql_mb_set_mgmnt_traffic_ctl(struct ql_adapter *qdev , u32 control )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  mbcp->in_count = 1;
  mbcp->out_count = 2;
  mbcp->mbox_in[0] = 352U;
  mbcp->mbox_in[1] = control;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] == 16384U) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] == 16385U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Command not supported by firmware.\n");
      }
    } else {
    }
    status = -22;
  } else
  if (mbcp->mbox_out[0] == 16389U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Command parameters make no change.\n");
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static int ql_mb_get_mgmnt_traffic_ctl(struct ql_adapter *qdev , u32 *control )
{
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int status ;
  {
  {
  mbcp = & mbc;
  memset((void *)mbcp, 0, 136UL);
  *control = 0U;
  mbcp->in_count = 1;
  mbcp->out_count = 1;
  mbcp->mbox_in[0] = 353U;
  status = ql_mailbox_command(qdev, mbcp);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] == 16384U) {
    *control = mbcp->mbox_in[1];
    return (status);
  } else {
  }
  if (mbcp->mbox_out[0] == 16385U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Command not supported by firmware.\n");
      }
    } else {
    }
    status = -22;
  } else
  if (mbcp->mbox_out[0] == 16389U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Failed to get MPI traffic control.\n");
      }
    } else {
    }
    status = -5;
  } else {
  }
  return (status);
}
}
int ql_wait_fifo_empty(struct ql_adapter *qdev )
{
  int count ;
  u32 mgmnt_fifo_empty ;
  u32 nic_fifo_empty ;
  u32 tmp ;
  int tmp___0 ;
  {
  count = 5;
  ldv_44529:
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 48);
  nic_fifo_empty = tmp & 4096U;
  ql_mb_get_mgmnt_traffic_ctl(qdev, & mgmnt_fifo_empty);
  mgmnt_fifo_empty = mgmnt_fifo_empty & 2U;
  }
  if (nic_fifo_empty != 0U && mgmnt_fifo_empty != 0U) {
    return (0);
  } else {
  }
  {
  msleep(100U);
  tmp___0 = count;
  count = count - 1;
  }
  if (tmp___0 > 0) {
    goto ldv_44529;
  } else {
  }
  return (-110);
}
}
static int ql_set_port_cfg(struct ql_adapter *qdev )
{
  int status ;
  {
  {
  status = ql_mb_set_port_cfg(qdev);
  }
  if (status != 0) {
    return (status);
  } else {
  }
  {
  status = ql_idc_wait(qdev);
  }
  return (status);
}
}
void ql_mpi_port_cfg_work(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  int status ;
  {
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb4e8UL;
  status = ql_mb_get_port_cfg(qdev);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Bug: Failed to get port config data.\n");
      }
    } else {
    }
    goto err;
  } else {
  }
  if ((qdev->link_config & 65536U) != 0U && qdev->max_frame_size == 9600U) {
    goto end;
  } else {
  }
  {
  qdev->link_config = qdev->link_config | 65536U;
  qdev->max_frame_size = 9600U;
  status = ql_set_port_cfg(qdev);
  }
  if (status != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Bug: Failed to set port config data.\n");
      }
    } else {
    }
    goto err;
  } else {
  }
  end:
  {
  clear_bit(7L, (unsigned long volatile *)(& qdev->flags));
  }
  return;
  err:
  {
  ql_queue_fw_error(qdev);
  }
  goto end;
}
}
void ql_mpi_idc_work(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  int status ;
  struct mbox_params *mbcp ;
  u32 aen ;
  int timeout ;
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb408UL;
  mbcp = & qdev->idc_mbc;
  aen = mbcp->mbox_out[1] >> 16;
  timeout = (int )(mbcp->mbox_out[1] >> 8) & 15;
  {
  if (aen == 288U) {
    goto case_288;
  } else {
  }
  if (aen == 20U) {
    goto case_20;
  } else {
  }
  if (aen == 290U) {
    goto case_290;
  } else {
  }
  if (aen == 258U) {
    goto case_258;
  } else {
  }
  if (aen == 16U) {
    goto case_16;
  } else {
  }
  if (aen == 256U) {
    goto case_256;
  } else {
  }
  if (aen == 257U) {
    goto case_257;
  } else {
  }
  if (aen == 259U) {
    goto case_259;
  } else {
  }
  if (aen == 1U) {
    goto case_1;
  } else {
  }
  if (aen == 2U) {
    goto case_2;
  } else {
  }
  if (aen == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  switch_default: ;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_err((struct net_device const *)qdev->ndev, "Bug: Unhandled IDC action.\n");
    }
  } else {
  }
  goto ldv_44555;
  case_288: ;
  case_20:
  {
  ql_link_off(qdev);
  }
  case_290:
  {
  set_bit(8L, (unsigned long volatile *)(& qdev->flags));
  }
  if (timeout != 0) {
    {
    status = ql_mb_idc_ack(qdev);
    }
    if (status != 0) {
      if ((int )qdev->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Bug: No pending IDC!\n");
        }
      } else {
      }
    } else {
    }
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "IDC ACK not required\n");
      }
    } else {
    }
    status = 0;
  }
  goto ldv_44555;
  case_258: ;
  case_16:
  {
  ql_link_off(qdev);
  set_bit(8L, (unsigned long volatile *)(& qdev->flags));
  }
  case_256: ;
  case_257: ;
  case_259: ;
  case_1: ;
  case_2: ;
  case_0: ;
  if (timeout != 0) {
    {
    status = ql_mb_idc_ack(qdev);
    }
    if (status != 0) {
      if ((int )qdev->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Bug: No pending IDC!\n");
        }
      } else {
      }
    } else {
    }
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_printk("\017", (struct net_device const *)qdev->ndev, "IDC ACK not required\n");
      }
    } else {
    }
    status = 0;
  }
  goto ldv_44555;
  switch_break: ;
  }
  ldv_44555: ;
  return;
}
}
void ql_mpi_work(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  struct mbox_params mbc ;
  struct mbox_params *mbcp ;
  int err ;
  u32 tmp ;
  {
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb5c8UL;
  mbcp = & mbc;
  err = 0;
  mutex_lock_nested(& qdev->mpi_mutex, 0U);
  ql_write32((struct ql_adapter const *)qdev, 56, 65536U);
  }
  goto ldv_44578;
  ldv_44577:
  {
  memset((void *)mbcp, 0, 136UL);
  mbcp->out_count = 1;
  err = ql_mpi_handler(qdev, mbcp);
  }
  if (err != 0) {
    goto ldv_44576;
  } else {
  }
  ldv_44578:
  {
  tmp = ql_read32((struct ql_adapter const *)qdev, 48);
  }
  if ((tmp & 2U) != 0U) {
    goto ldv_44577;
  } else {
  }
  ldv_44576:
  {
  ql_write32((struct ql_adapter const *)qdev, 56, 65537U);
  mutex_unlock(& qdev->mpi_mutex);
  ql_enable_completion_interrupt(qdev, 0U);
  }
  return;
}
}
void ql_mpi_reset_work(struct work_struct *work )
{
  struct ql_adapter *qdev ;
  struct work_struct const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  qdev = (struct ql_adapter *)__mptr + 0xffffffffffffb6a8UL;
  cancel_delayed_work_sync(& qdev->mpi_work);
  cancel_delayed_work_sync(& qdev->mpi_port_cfg_work);
  cancel_delayed_work_sync(& qdev->mpi_idc_work);
  tmp = ql_own_firmware(qdev);
  }
  if (tmp == 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Don\'t own firmware!\n");
      }
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )qdev->mpi_coredump != (unsigned long )((struct ql_mpi_coredump *)0)) {
    {
    tmp___0 = ql_core_dump(qdev, qdev->mpi_coredump);
    }
    if (tmp___0 == 0) {
      if ((int )qdev->msg_enable & 1) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Core is dumped!\n");
        }
      } else {
      }
      {
      qdev->core_is_dumped = 1U;
      queue_delayed_work(qdev->workqueue, & qdev->mpi_core_to_log, 1250UL);
      }
    } else {
    }
  } else {
  }
  {
  ql_soft_reset_mpi_risc(qdev);
  }
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
void ldv_spin_lock_stats_lock_of_ql_adapter(void) ;
void ldv_spin_unlock_stats_lock_of_ql_adapter(void) ;
__inline static void ldv_spin_lock_77(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_78(spinlock_t *lock ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
extern unsigned long msleep_interruptible(unsigned int ) ;
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
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
static struct ql_stats const ql_gstrings_stats[66U] =
  { {{'t', 'x', '_', 'p', 'k', 't', 's', '\000'}, 8, 1104},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 1112},
        {{'t', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1120},
        {{'t', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1128},
        {{'t', 'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1136},
        {{'t', 'x', '_', 'c', 't', 'l', '_', 'p', 'k', 't', 's', '\000'}, 8, 1144},
        {{'t', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1152},
        {{'t', 'x', '_', '6', '4', '_', 'p', 'k', 't', 's', '\000'}, 8, 1160},
        {{'t', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'p', 'k',
       't', 's', '\000'}, 8, 1168},
        {{'t', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'p',
       'k', 't', 's', '\000'}, 8, 1176},
        {{'t', 'x', '_', '2', '5', '6', '_', '5', '1', '1', '_', 'p', 'k', 't', 's',
       '\000'}, 8, 1184},
        {{'t', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'p', 'k', 't', 's', '\000'}, 8, 1192},
        {{'t', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', '1', '5', '1', '8',
       '_', 'p', 'k', 't', 's', '\000'}, 8, 1200},
        {{'t', 'x', '_', '1', '5', '1', '9', '_', 't', 'o', '_', 'm', 'a', 'x', '_',
       'p', 'k', 't', 's', '\000'}, 8, 1208},
        {{'t', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'k',
       't', 's', '\000'}, 8, 1216},
        {{'t', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'k', 't',
       's', '\000'}, 8, 1224},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 1232},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '_', 'o', 'k', '\000'}, 8, 1240},
        {{'r', 'x', '_', 'p', 'k', 't', 's', '\000'}, 8, 1248},
        {{'r', 'x', '_', 'p', 'k', 't', 's', '_', 'o', 'k', '\000'}, 8, 1256},
        {{'r', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1264},
        {{'r', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1272},
        {{'r', 'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1280},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'k',
       't', 's', '\000'}, 8, 1288},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'k', 't',
       's', '\000'}, 8, 1296},
        {{'r', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', '_', 'p', 'k', 't', 's', '\000'},
      8, 1304},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'f', 'c',
       'e', 'r', 'r', '_', 'p', 'k', 't', 's', '\000'}, 8, 1312},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', '_', 'e', 'v', 'e', 'n', 't', 's', '\000'},
      8, 1320},
        {{'r', 'x', '_', 'f', 'c', 'e', 'r', 'r', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1328},
        {{'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', '_', 'e', 'r', 'r', '\000'}, 8, 1336},
        {{'r',
       'x', '_', 's', 'y', 'm', 'b', 'o', 'l', '_', 'e', 'r', 'r', '\000'}, 8, 1344},
        {{'r',
       'x', '_', 'm', 'a', 'c', '_', 'e', 'r', 'r', '\000'}, 8, 1352},
        {{'r', 'x', '_', 'c', 't', 'l', '_', 'p', 'k', 't', 's', '\000'}, 8, 1360},
        {{'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'p', 'k', 't', 's', '\000'}, 8,
      1368},
        {{'r', 'x', '_', '6', '4', '_', 'p', 'k', 't', 's', '\000'}, 8, 1376},
        {{'r', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'p', 'k',
       't', 's', '\000'}, 8, 1384},
        {{'r', 'x', '_', '1', '2', '8', '_', '2', '5', '5', '_', 'p', 'k', 't', 's',
       '\000'}, 8, 1392},
        {{'r', 'x', '_', '2', '5', '6', '_', '5', '1', '1', '_', 'p', 'k', 't', 's',
       '\000'}, 8, 1400},
        {{'r', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'p', 'k', 't', 's', '\000'}, 8, 1408},
        {{'r', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', '1', '5', '1', '8',
       '_', 'p', 'k', 't', 's', '\000'}, 8, 1416},
        {{'r', 'x', '_', '1', '5', '1', '9', '_', 't', 'o', '_', 'm', 'a', 'x', '_',
       'p', 'k', 't', 's', '\000'}, 8, 1424},
        {{'r', 'x', '_', 'l', 'e', 'n', '_', 'e', 'r', 'r', '_', 'p', 'k', 't', 's',
       '\000'}, 8, 1432},
        {{'r', 'x', '_', 'c', 'o', 'd', 'e', '_', 'e', 'r', 'r', '\000'}, 8, 1440},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e', '_', 'e', 'r', 'r',
       '\000'}, 8, 1448},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'e', 'r',
       'r', '\000'}, 8, 1456},
        {{'r', 'x', '_', 'p', 'r', 'e', 'a', 'm', 'b', 'l', 'e', '_', 'e', 'r', 'r',
       '\000'}, 8, 1464},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 'l', 'e', 'n', '_', 'e', 'r',
       'r', '\000'}, 8, 1472},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', '\000'}, 8, 1480},
        {{'r', 'x', '_', 'e', 'r', 'r', '_', 'c', 'o', 'u', 'n', 't', '\000'}, 8, 1488},
        {{'t',
       'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r',
       'a', 'm', 'e', 's', '0', '\000'}, 8, 1496},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '1', '\000'}, 8, 1504},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '2', '\000'}, 8, 1512},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '3', '\000'}, 8, 1520},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '4', '\000'}, 8, 1528},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '5', '\000'}, 8, 1536},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '6', '\000'}, 8, 1544},
        {{'t', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '7', '\000'}, 8, 1552},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '0', '\000'}, 8, 1560},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '1', '\000'}, 8, 1568},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '2', '\000'}, 8, 1576},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '3', '\000'}, 8, 1584},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '4', '\000'}, 8, 1592},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '5', '\000'}, 8, 1600},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '6', '\000'}, 8, 1608},
        {{'r', 'x', '_', 'c', 'b', 'f', 'c', '_', 'p', 'a', 'u', 's', 'e', '_', 'f',
       'r', 'a', 'm', 'e', 's', '7', '\000'}, 8, 1616},
        {{'r', 'x', '_', 'n', 'i', 'c', '_', 'f', 'i', 'f', 'o', '_', 'd', 'r', 'o',
       'p', '\000'}, 8, 1624}};
static char const ql_gstrings_test[1U][32U] = { { 'L', 'o', 'o', 'p',
            'b', 'a', 'c', 'k',
            ' ', 't', 'e', 's',
            't', ' ', ' ', '(',
            'o', 'f', 'f', 'l',
            'i', 'n', 'e', ')',
            '\000'}};
static int ql_update_ring_coalescing(struct ql_adapter *qdev )
{
  int i ;
  int status ;
  struct rx_ring *rx_ring ;
  struct cqicb *cqicb ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  status = 0;
  tmp = netif_running((struct net_device const *)qdev->ndev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (status);
  } else {
  }
  cqicb = (struct cqicb *)(& qdev->rx_ring) + (unsigned long )qdev->rss_ring_count;
  if ((int )cqicb->irq_delay != (int )qdev->tx_coalesce_usecs || (int )cqicb->pkt_delay != (int )qdev->tx_max_coalesced_frames) {
    i = (int )qdev->rss_ring_count;
    goto ldv_51119;
    ldv_51118:
    {
    rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
    cqicb = (struct cqicb *)rx_ring;
    cqicb->irq_delay = qdev->tx_coalesce_usecs;
    cqicb->pkt_delay = qdev->tx_max_coalesced_frames;
    cqicb->flags = 64U;
    status = ql_write_cfg(qdev, (void *)cqicb, 52, 64U, (int )rx_ring->cq_id);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to load CQICB.\n");
        }
      } else {
      }
      goto exit;
    } else {
    }
    i = i + 1;
    ldv_51119: ;
    if (i < qdev->rx_ring_count) {
      goto ldv_51118;
    } else {
    }
  } else {
  }
  cqicb = (struct cqicb *)(& qdev->rx_ring);
  if ((int )cqicb->irq_delay != (int )qdev->rx_coalesce_usecs || (int )cqicb->pkt_delay != (int )qdev->rx_max_coalesced_frames) {
    i = 0;
    goto ldv_51122;
    ldv_51121:
    {
    rx_ring = (struct rx_ring *)(& qdev->rx_ring) + (unsigned long )i;
    cqicb = (struct cqicb *)rx_ring;
    cqicb->irq_delay = qdev->rx_coalesce_usecs;
    cqicb->pkt_delay = qdev->rx_max_coalesced_frames;
    cqicb->flags = 64U;
    status = ql_write_cfg(qdev, (void *)cqicb, 52, 64U, (int )rx_ring->cq_id);
    }
    if (status != 0) {
      if ((qdev->msg_enable & 32U) != 0U) {
        {
        netdev_err((struct net_device const *)qdev->ndev, "Failed to load CQICB.\n");
        }
      } else {
      }
      goto exit;
    } else {
    }
    i = i + 1;
    rx_ring = rx_ring + 1;
    ldv_51122: ;
    if ((u32 )i < qdev->rss_ring_count) {
      goto ldv_51121;
    } else {
    }
  } else {
  }
  exit: ;
  return (status);
}
}
static void ql_update_stats(struct ql_adapter *qdev )
{
  u32 i ;
  u64 data ;
  u64 *iter ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  iter = & qdev->nic_stats.tx_pkts;
  ldv_spin_lock_77(& qdev->stats_lock);
  tmp = ql_sem_spinlock(qdev, qdev->xg_sem_mask);
  }
  if (tmp != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Couldn\'t get xgmac sem.\n");
      }
    } else {
    }
    goto quit;
  } else {
  }
  i = 512U;
  goto ldv_51133;
  ldv_51132:
  {
  tmp___0 = ql_read_xgmac_reg64(qdev, i, & data);
  }
  if (tmp___0 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading status register 0x%.04x.\n",
                 i);
      }
    } else {
    }
    goto end;
  } else {
    *iter = data;
  }
  iter = iter + 1;
  i = i + 8U;
  ldv_51133: ;
  if (i <= 639U) {
    goto ldv_51132;
  } else {
  }
  i = 768U;
  goto ldv_51136;
  ldv_51135:
  {
  tmp___1 = ql_read_xgmac_reg64(qdev, i, & data);
  }
  if (tmp___1 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading status register 0x%.04x.\n",
                 i);
      }
    } else {
    }
    goto end;
  } else {
    *iter = data;
  }
  iter = iter + 1;
  i = i + 8U;
  ldv_51136: ;
  if (i <= 975U) {
    goto ldv_51135;
  } else {
  }
  iter = iter + 7UL;
  i = 1280U;
  goto ldv_51139;
  ldv_51138:
  {
  tmp___2 = ql_read_xgmac_reg64(qdev, i, & data);
  }
  if (tmp___2 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading status register 0x%.04x.\n",
                 i);
      }
    } else {
    }
    goto end;
  } else {
    *iter = data;
  }
  iter = iter + 1;
  i = i + 8U;
  ldv_51139: ;
  if (i <= 1343U) {
    goto ldv_51138;
  } else {
  }
  i = 1384U;
  goto ldv_51142;
  ldv_51141:
  {
  tmp___3 = ql_read_xgmac_reg64(qdev, i, & data);
  }
  if (tmp___3 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading status register 0x%.04x.\n",
                 i);
      }
    } else {
    }
    goto end;
  } else {
    *iter = data;
  }
  iter = iter + 1;
  i = i + 8U;
  ldv_51142: ;
  if (i <= 1447U) {
    goto ldv_51141;
  } else {
  }
  {
  tmp___4 = ql_read_xgmac_reg64(qdev, 1464U, & data);
  }
  if (tmp___4 != 0) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "Error reading status register 0x%.04x.\n",
                 i);
      }
    } else {
    }
    goto end;
  } else {
    *iter = data;
  }
  end:
  {
  ql_sem_unlock(qdev, qdev->xg_sem_mask);
  }
  quit:
  {
  ldv_spin_unlock_78(& qdev->stats_lock);
  }
  return;
}
}
static void ql_get_strings(struct net_device *dev , u32 stringset , u8 *buf )
{
  int index ;
  {
  {
  if (stringset == 0U) {
    goto case_0;
  } else {
  }
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0:
  {
  memcpy((void *)buf, (void const *)(& ql_gstrings_test), 32UL);
  }
  goto ldv_51151;
  case_1:
  index = 0;
  goto ldv_51156;
  ldv_51155:
  {
  memcpy((void *)buf + (unsigned long )(index * 32), (void const *)(& ql_gstrings_stats[index].stat_string),
         32UL);
  index = index + 1;
  }
  ldv_51156: ;
  if ((unsigned int )index <= 65U) {
    goto ldv_51155;
  } else {
  }
  goto ldv_51151;
  switch_break: ;
  }
  ldv_51151: ;
  return;
}
}
static int ql_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 0) {
    goto case_0;
  } else {
  }
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (66);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void ql_get_ethtool_stats(struct net_device *ndev , struct ethtool_stats *stats ,
                                 u64 *data )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int index ;
  int length ;
  char *p ;
  u64 *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  length = 66;
  ql_update_stats(qdev);
  index = 0;
  }
  goto ldv_51179;
  ldv_51178:
  p = (char *)qdev + (unsigned long )ql_gstrings_stats[index].stat_offset;
  tmp___0 = data;
  data = data + 1;
  *tmp___0 = ql_gstrings_stats[index].sizeof_stat == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  index = index + 1;
  ldv_51179: ;
  if (index < length) {
    goto ldv_51178;
  } else {
  }
  return;
}
}
static int ql_get_settings(struct net_device *ndev , struct ethtool_cmd *ecmd )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  ecmd->supported = 4096U;
  ecmd->advertising = 4096U;
  ecmd->transceiver = 1U;
  }
  if ((qdev->link_status & 7U) == 5U) {
    ecmd->supported = ecmd->supported | 192U;
    ecmd->advertising = ecmd->advertising | 192U;
    ecmd->port = 0U;
    ecmd->autoneg = 1U;
  } else {
    ecmd->supported = ecmd->supported | 1024U;
    ecmd->advertising = ecmd->advertising | 1024U;
    ecmd->port = 3U;
  }
  {
  ethtool_cmd_speed_set(ecmd, 10000U);
  ecmd->duplex = 1U;
  }
  return (0);
}
}
static void ql_get_drvinfo(struct net_device *ndev , struct ethtool_drvinfo *drvinfo )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), (char const *)(& qlge_driver_name), 32UL);
  strlcpy((char *)(& drvinfo->version), (char const *)(& qlge_driver_version), 32UL);
  snprintf((char *)(& drvinfo->fw_version), 32UL, "v%d.%d.%d", (qdev->fw_rev_id & 16711680U) >> 16,
           (qdev->fw_rev_id & 65280U) >> 8, qdev->fw_rev_id & 255U);
  tmp___0 = pci_name((struct pci_dev const *)qdev->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->n_stats = 0U;
  drvinfo->testinfo_len = 0U;
  tmp___1 = constant_test_bit(11L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___1 == 0) {
    drvinfo->regdump_len = 176196U;
  } else {
    drvinfo->regdump_len = 1432U;
  }
  drvinfo->eedump_len = 0U;
  return;
}
}
static void ql_get_wol(struct net_device *ndev , struct ethtool_wolinfo *wol )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  unsigned short ssys_dev ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  ssys_dev = (qdev->pdev)->subsystem_device;
  }
  if ((unsigned int )ssys_dev == 104U || (unsigned int )ssys_dev == 384U) {
    wol->supported = 32U;
    wol->wolopts = qdev->wol;
  } else {
  }
  return;
}
}
static int ql_set_wol(struct net_device *ndev , struct ethtool_wolinfo *wol )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  unsigned short ssys_dev ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  ssys_dev = (qdev->pdev)->subsystem_device;
  }
  if ((unsigned int )ssys_dev != 104U && (unsigned int )ssys_dev != 384U) {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_info((struct net_device const *)qdev->ndev, "WOL is only supported for mezz card\n");
      }
    } else {
    }
    return (-95);
  } else {
  }
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-22);
  } else {
  }
  qdev->wol = wol->wolopts;
  if ((int )qdev->msg_enable & 1) {
    {
    netdev_info((struct net_device const *)qdev->ndev, "Set wol option 0x%x\n",
                qdev->wol);
    }
  } else {
  }
  return (0);
}
}
static int ql_set_phys_id(struct net_device *ndev , enum ethtool_phys_id_state state )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  {
  if ((unsigned int )state == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___0 = ql_mb_get_led_cfg(qdev);
  }
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  {
  ql_mb_set_led_cfg(qdev, 65537000U);
  }
  return (0);
  case_0:
  {
  tmp___1 = ql_mb_set_led_cfg(qdev, qdev->led_config);
  }
  if (tmp___1 != 0) {
    return (-5);
  } else {
  }
  return (0);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static int ql_start_loopback(struct ql_adapter *qdev )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = netif_carrier_ok((struct net_device const *)qdev->ndev);
  }
  if ((int )tmp) {
    {
    set_bit(10L, (unsigned long volatile *)(& qdev->flags));
    netif_carrier_off(qdev->ndev);
    }
  } else {
    {
    clear_bit(10L, (unsigned long volatile *)(& qdev->flags));
    }
  }
  {
  qdev->link_config = qdev->link_config | 2U;
  tmp___0 = ql_mb_set_port_cfg(qdev);
  }
  return (tmp___0);
}
}
static void ql_stop_loopback(struct ql_adapter *qdev )
{
  int tmp ;
  {
  {
  qdev->link_config = qdev->link_config & 4294967293U;
  ql_mb_set_port_cfg(qdev);
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp != 0) {
    {
    netif_carrier_on(qdev->ndev);
    clear_bit(10L, (unsigned long volatile *)(& qdev->flags));
    }
  } else {
  }
  return;
}
}
static void ql_create_lb_frame(struct sk_buff *skb , unsigned int frame_size )
{
  {
  {
  memset((void *)skb->data, 255, (size_t )frame_size);
  frame_size = frame_size & 4294967294U;
  memset((void *)skb->data + (unsigned long )(frame_size / 2U), 170, (size_t )(frame_size / 2U - 1U));
  memset((void *)skb->data + (unsigned long )(frame_size / 2U + 10U), 190, 1UL);
  memset((void *)skb->data + (unsigned long )(frame_size / 2U + 12U), 175, 1UL);
  }
  return;
}
}
void ql_check_lb_frame(struct ql_adapter *qdev , struct sk_buff *skb )
{
  unsigned int frame_size ;
  {
  frame_size = skb->len;
  if (((unsigned int )*(skb->data + 3UL) == 255U && (unsigned int )*(skb->data + ((unsigned long )(frame_size / 2U) + 10UL)) == 190U) && (unsigned int )*(skb->data + ((unsigned long )(frame_size / 2U) + 12UL)) == 175U) {
    {
    atomic_dec(& qdev->lb_count);
    }
    return;
  } else {
  }
  return;
}
}
static int ql_run_loopback_test(struct ql_adapter *qdev )
{
  int i ;
  netdev_tx_t rc ;
  struct sk_buff *skb ;
  unsigned int size ;
  int tmp ;
  {
  size = 256U;
  i = 0;
  goto ldv_51234;
  ldv_51233:
  {
  skb = netdev_alloc_skb(qdev->ndev, size);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  skb->queue_mapping = 0U;
  skb_put(skb, size);
  ql_create_lb_frame(skb, size);
  rc = ql_lb_send(skb, qdev->ndev);
  }
  if ((int )rc != 0) {
    return (-32);
  } else {
  }
  {
  atomic_inc(& qdev->lb_count);
  i = i + 1;
  }
  ldv_51234: ;
  if (i <= 63) {
    goto ldv_51233;
  } else {
  }
  {
  msleep(2U);
  ql_clean_lb_rx_ring((struct rx_ring *)(& qdev->rx_ring), 128);
  tmp = atomic_read((atomic_t const *)(& qdev->lb_count));
  }
  return (tmp != 0 ? -5 : 0);
}
}
static int ql_loopback_test(struct ql_adapter *qdev , u64 *data )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = ql_start_loopback(qdev);
  *data = (u64 )tmp;
  }
  if (*data != 0ULL) {
    goto out;
  } else {
  }
  {
  tmp___0 = ql_run_loopback_test(qdev);
  *data = (u64 )tmp___0;
  }
  out:
  {
  ql_stop_loopback(qdev);
  }
  return ((int )*data);
}
}
static void ql_self_test(struct net_device *ndev , struct ethtool_test *eth_test ,
                         u64 *data )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  memset((void *)data, 0, 8UL);
  tmp___1 = netif_running((struct net_device const *)ndev);
  }
  if ((int )tmp___1) {
    {
    set_bit(9L, (unsigned long volatile *)(& qdev->flags));
    }
    if (eth_test->flags == 1U) {
      {
      tmp___0 = ql_loopback_test(qdev, data);
      }
      if (tmp___0 != 0) {
        eth_test->flags = eth_test->flags | 2U;
      } else {
      }
    } else {
      *data = 0ULL;
    }
    {
    clear_bit(9L, (unsigned long volatile *)(& qdev->flags));
    msleep_interruptible(4000U);
    }
  } else {
    if ((int )qdev->msg_enable & 1) {
      {
      netdev_err((struct net_device const *)qdev->ndev, "is down, Loopback test will fail.\n");
      }
    } else {
    }
    eth_test->flags = eth_test->flags | 2U;
  }
  return;
}
}
static int ql_get_regs_len(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 == 0) {
    return (176196);
  } else {
    return (1432);
  }
}
}
static void ql_get_regs(struct net_device *ndev , struct ethtool_regs *regs , void *p )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  ql_get_dump(qdev, p);
  qdev->core_is_dumped = 0U;
  tmp___0 = constant_test_bit(11L, (unsigned long const volatile *)(& qdev->flags));
  }
  if (tmp___0 == 0) {
    regs->len = 176196U;
  } else {
    regs->len = 1432U;
  }
  return;
}
}
static int ql_get_coalesce(struct net_device *dev , struct ethtool_coalesce *c )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  qdev = (struct ql_adapter *)tmp;
  c->rx_coalesce_usecs = (__u32 )qdev->rx_coalesce_usecs;
  c->tx_coalesce_usecs = (__u32 )qdev->tx_coalesce_usecs;
  c->rx_max_coalesced_frames = (__u32 )qdev->rx_max_coalesced_frames;
  c->tx_max_coalesced_frames = (__u32 )qdev->tx_max_coalesced_frames;
  }
  return (0);
}
}
static int ql_set_coalesce(struct net_device *ndev , struct ethtool_coalesce *c )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  if (c->rx_coalesce_usecs > (__u32 )(qdev->rx_ring_size / 2)) {
    return (-22);
  } else {
  }
  if (c->rx_max_coalesced_frames > 10U) {
    return (-22);
  } else {
  }
  if (c->tx_coalesce_usecs > (__u32 )(qdev->tx_ring_size / 2)) {
    return (-22);
  } else {
  }
  if (c->tx_max_coalesced_frames > 10U) {
    return (-22);
  } else {
  }
  if ((((__u32 )qdev->rx_coalesce_usecs == c->rx_coalesce_usecs && (__u32 )qdev->tx_coalesce_usecs == c->tx_coalesce_usecs) && (__u32 )qdev->rx_max_coalesced_frames == c->rx_max_coalesced_frames) && (__u32 )qdev->tx_max_coalesced_frames == c->tx_max_coalesced_frames) {
    return (0);
  } else {
  }
  {
  qdev->rx_coalesce_usecs = (u16 )c->rx_coalesce_usecs;
  qdev->tx_coalesce_usecs = (u16 )c->tx_coalesce_usecs;
  qdev->rx_max_coalesced_frames = (u16 )c->rx_max_coalesced_frames;
  qdev->tx_max_coalesced_frames = (u16 )c->tx_max_coalesced_frames;
  tmp___0 = ql_update_ring_coalescing(qdev);
  }
  return (tmp___0);
}
}
static void ql_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  qdev = (struct ql_adapter *)tmp;
  ql_mb_get_port_cfg(qdev);
  }
  if ((qdev->link_config & 32U) != 0U) {
    pause->rx_pause = 1U;
    pause->tx_pause = 1U;
  } else {
  }
  return;
}
}
static int ql_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  int status ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  qdev = (struct ql_adapter *)tmp;
  status = 0;
  }
  if (pause->rx_pause != 0U && pause->tx_pause != 0U) {
    qdev->link_config = qdev->link_config | 32U;
  } else
  if (pause->rx_pause == 0U && pause->tx_pause == 0U) {
    qdev->link_config = qdev->link_config & 4294967263U;
  } else {
    return (-22);
  }
  {
  status = ql_mb_set_port_cfg(qdev);
  }
  return (status);
}
}
static u32 ql_get_msglevel(struct net_device *ndev )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  }
  return (qdev->msg_enable);
}
}
static void ql_set_msglevel(struct net_device *ndev , u32 value )
{
  struct ql_adapter *qdev ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)ndev);
  qdev = (struct ql_adapter *)tmp;
  qdev->msg_enable = value;
  }
  return;
}
}
struct ethtool_ops const qlge_ethtool_ops =
     {& ql_get_settings, 0, & ql_get_drvinfo, & ql_get_regs_len, & ql_get_regs, & ql_get_wol,
    & ql_set_wol, & ql_get_msglevel, & ql_set_msglevel, 0, & ethtool_op_get_link,
    0, 0, 0, & ql_get_coalesce, & ql_set_coalesce, 0, 0, & ql_get_pauseparam, & ql_set_pauseparam,
    & ql_self_test, & ql_get_strings, & ql_set_phys_id, & ql_get_ethtool_stats, 0,
    0, 0, 0, & ql_get_sset_count, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
void ldv_dummy_resourceless_instance_callback_1_11(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_12(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ql_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  ql_get_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  ql_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ql_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_16(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  ql_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_17(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  ql_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_20(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  ql_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  ql_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  ql_get_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_45(void (*arg0)(struct net_device * ,
                                                                struct ethtool_test * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_test *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  ql_self_test(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_48(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  ql_set_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_49(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  ql_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_52(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  ql_set_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_53(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 )
{
  {
  {
  ql_set_phys_id(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  ql_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  ql_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_stats * ,
                                                               unsigned long long * ) ,
                                                  struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                  unsigned long long *arg3 )
{
  {
  {
  ql_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
__inline static void ldv_spin_lock_77(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_stats_lock_of_ql_adapter();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_78(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_stats_lock_of_ql_adapter();
  spin_unlock(lock);
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin__xmit_lock_of_netdev_queue = 1;
void ldv_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 2);
  ldv_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended__xmit_lock_of_netdev_queue(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_addr_list_lock_of_net_device = 1;
void ldv_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 2);
  ldv_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_addr_list_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_hw_lock_of_ql_adapter = 1;
void ldv_spin_lock_hw_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_spin_hw_lock_of_ql_adapter = 2;
  }
  return;
}
}
void ldv_spin_unlock_hw_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_hw_lock_of_ql_adapter == 2);
  ldv_assume(ldv_spin_hw_lock_of_ql_adapter == 2);
  ldv_spin_hw_lock_of_ql_adapter = 1;
  }
  return;
}
}
int ldv_spin_trylock_hw_lock_of_ql_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_hw_lock_of_ql_adapter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_hw_lock_of_ql_adapter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_hw_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_hw_lock_of_ql_adapter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_hw_lock_of_ql_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_hw_lock_of_ql_adapter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_hw_lock_of_ql_adapter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_hw_lock_of_ql_adapter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_hw_lock_of_ql_adapter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_hw_lock_of_ql_adapter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_hw_lock_of_ql_adapter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_hw_lock_of_ql_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_res_counter = 1;
void ldv_spin_lock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  ldv_spin_lock_of_res_counter = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_res_counter == 2);
  ldv_assume(ldv_spin_lock_of_res_counter == 2);
  ldv_spin_lock_of_res_counter = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_res_counter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_res_counter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_res_counter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_res_counter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_res_counter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_res_counter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_res_counter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_res_counter == 1);
  ldv_assume(ldv_spin_lock_of_res_counter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_res_counter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lru_lock_of_netns_frags = 1;
void ldv_spin_lock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_spin_lru_lock_of_netns_frags = 2;
  }
  return;
}
}
void ldv_spin_unlock_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 2);
  ldv_spin_lru_lock_of_netns_frags = 1;
  }
  return;
}
}
int ldv_spin_trylock_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lru_lock_of_netns_frags(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lru_lock_of_netns_frags(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lru_lock_of_netns_frags == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lru_lock_of_netns_frags(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lru_lock_of_netns_frags();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lru_lock_of_netns_frags(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lru_lock_of_netns_frags(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assume(ldv_spin_lru_lock_of_netns_frags == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lru_lock_of_netns_frags = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_sk_dst_lock_of_sock = 1;
void ldv_spin_lock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_spin_sk_dst_lock_of_sock = 2;
  }
  return;
}
}
void ldv_spin_unlock_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 2);
  ldv_spin_sk_dst_lock_of_sock = 1;
  }
  return;
}
}
int ldv_spin_trylock_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_sk_dst_lock_of_sock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_sk_dst_lock_of_sock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_sk_dst_lock_of_sock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_sk_dst_lock_of_sock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_sk_dst_lock_of_sock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_sk_dst_lock_of_sock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_sk_dst_lock_of_sock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assume(ldv_spin_sk_dst_lock_of_sock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_sk_dst_lock_of_sock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_stats_lock_of_ql_adapter = 1;
void ldv_spin_lock_stats_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_spin_stats_lock_of_ql_adapter = 2;
  }
  return;
}
}
void ldv_spin_unlock_stats_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_stats_lock_of_ql_adapter == 2);
  ldv_assume(ldv_spin_stats_lock_of_ql_adapter == 2);
  ldv_spin_stats_lock_of_ql_adapter = 1;
  }
  return;
}
}
int ldv_spin_trylock_stats_lock_of_ql_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_stats_lock_of_ql_adapter == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_stats_lock_of_ql_adapter = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_stats_lock_of_ql_adapter(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_stats_lock_of_ql_adapter == 1);
  }
  return;
}
}
int ldv_spin_is_locked_stats_lock_of_ql_adapter(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_stats_lock_of_ql_adapter == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_stats_lock_of_ql_adapter(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_stats_lock_of_ql_adapter();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_stats_lock_of_ql_adapter(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_stats_lock_of_ql_adapter(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_assume(ldv_spin_stats_lock_of_ql_adapter == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_stats_lock_of_ql_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_tx_global_lock_of_net_device = 1;
void ldv_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 2);
  ldv_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_tx_global_lock_of_net_device(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_tx_global_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_hw_lock_of_ql_adapter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_res_counter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lru_lock_of_netns_frags == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_sk_dst_lock_of_sock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_stats_lock_of_ql_adapter == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_hw_lock_of_ql_adapter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_res_counter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lru_lock_of_netns_frags == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_sk_dst_lock_of_sock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_stats_lock_of_ql_adapter == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
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
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 csum_ipv6_magic(const struct in6_addr *arg0, const struct in6_addr *arg1, __u32 arg2, unsigned short arg3, __wsum arg4) {
  return __VERIFIER_nondet_ushort();
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
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_close(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_page(struct page *arg0, char *arg1) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
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
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_register_netdev() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
struct sk_buff *napi_get_frags(struct napi_struct *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_frags(struct napi_struct *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_alert(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_crit(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_printk(const char *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_get_num_default_rss_queues() {
  return __VERIFIER_nondet_int();
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
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
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pcie_set_readrq(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
int __VERIFIER_nondet_int(void);
int skb_pad(struct sk_buff *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int usecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
