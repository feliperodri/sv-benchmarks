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
struct device;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
enum ldv_21638 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21638 socket_state;
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
enum ldv_27996 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_27997 {
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
   enum ldv_27996 reg_state : 8 ;
   bool dismantle ;
   enum ldv_27997 rtnl_link_state : 16 ;
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
union __anonunion_ki_obj_247 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_247 ki_obj ;
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
union __anonunion____missing_field_name_248 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_248 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct tcmsg {
   unsigned char tcm_family ;
   unsigned char tcm__pad1 ;
   unsigned short tcm__pad2 ;
   int tcm_ifindex ;
   __u32 tcm_handle ;
   __u32 tcm_parent ;
   __u32 tcm_info ;
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
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_253 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_254 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_254 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_256 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_255 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_256 __annonCompField79 ;
};
union __anonunion____missing_field_name_257 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_259 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_258 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_259 __annonCompField82 ;
};
union __anonunion____missing_field_name_260 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_255 __annonCompField80 ;
   union __anonunion____missing_field_name_257 __annonCompField81 ;
   union __anonunion____missing_field_name_258 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_260 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_261 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_262 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_262 sk_backlog ;
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
union __anonunion_h_263 {
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
   union __anonunion_h_263 h ;
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
struct tc_stats {
   __u64 bytes ;
   __u32 packets ;
   __u32 drops ;
   __u32 overlimits ;
   __u32 bps ;
   __u32 pps ;
   __u32 qlen ;
   __u32 backlog ;
};
struct tc_sizespec {
   unsigned char cell_log ;
   unsigned char size_log ;
   short cell_align ;
   int overhead ;
   unsigned int linklayer ;
   unsigned int mpu ;
   unsigned int mtu ;
   unsigned int tsize ;
};
struct gnet_stats_basic_packed {
   __u64 bytes ;
   __u32 packets ;
};
struct gnet_stats_rate_est64 {
   __u64 bps ;
   __u64 pps ;
};
struct gnet_stats_queue {
   __u32 qlen ;
   __u32 backlog ;
   __u32 drops ;
   __u32 requeues ;
   __u32 overlimits ;
};
struct gnet_dump {
   spinlock_t *lock ;
   struct sk_buff *skb ;
   struct nlattr *tail ;
   int compat_tc_stats ;
   int compat_xstats ;
   void *xstats ;
   int xstats_len ;
   struct tc_stats tc_stats ;
};
struct Qdisc_ops;
struct qdisc_walker;
struct tcf_walker;
struct qdisc_size_table {
   struct callback_head rcu ;
   struct list_head list ;
   struct tc_sizespec szopts ;
   int refcnt ;
   u16 data[] ;
};
struct Qdisc {
   int (*enqueue)(struct sk_buff * , struct Qdisc * ) ;
   struct sk_buff *(*dequeue)(struct Qdisc * ) ;
   unsigned int flags ;
   u32 limit ;
   struct Qdisc_ops const *ops ;
   struct qdisc_size_table *stab ;
   struct list_head list ;
   u32 handle ;
   u32 parent ;
   int (*reshape_fail)(struct sk_buff * , struct Qdisc * ) ;
   void *u32_node ;
   struct Qdisc *__parent ;
   struct netdev_queue *dev_queue ;
   struct gnet_stats_rate_est64 rate_est ;
   struct Qdisc *next_sched ;
   struct sk_buff *gso_skb ;
   unsigned long state ;
   struct sk_buff_head q ;
   struct gnet_stats_basic_packed bstats ;
   unsigned int __state ;
   struct gnet_stats_queue qstats ;
   struct callback_head callback_head ;
   int padded ;
   atomic_t refcnt ;
   spinlock_t busylock ;
};
struct tcf_proto;
struct Qdisc_class_ops {
   struct netdev_queue *(*select_queue)(struct Qdisc * , struct tcmsg * ) ;
   int (*graft)(struct Qdisc * , unsigned long , struct Qdisc * , struct Qdisc ** ) ;
   struct Qdisc *(*leaf)(struct Qdisc * , unsigned long ) ;
   void (*qlen_notify)(struct Qdisc * , unsigned long ) ;
   unsigned long (*get)(struct Qdisc * , u32 ) ;
   void (*put)(struct Qdisc * , unsigned long ) ;
   int (*change)(struct Qdisc * , u32 , u32 , struct nlattr ** , unsigned long * ) ;
   int (*delete)(struct Qdisc * , unsigned long ) ;
   void (*walk)(struct Qdisc * , struct qdisc_walker * ) ;
   struct tcf_proto **(*tcf_chain)(struct Qdisc * , unsigned long ) ;
   unsigned long (*bind_tcf)(struct Qdisc * , unsigned long , u32 ) ;
   void (*unbind_tcf)(struct Qdisc * , unsigned long ) ;
   int (*dump)(struct Qdisc * , unsigned long , struct sk_buff * , struct tcmsg * ) ;
   int (*dump_stats)(struct Qdisc * , unsigned long , struct gnet_dump * ) ;
};
struct Qdisc_ops {
   struct Qdisc_ops *next ;
   struct Qdisc_class_ops const *cl_ops ;
   char id[16U] ;
   int priv_size ;
   int (*enqueue)(struct sk_buff * , struct Qdisc * ) ;
   struct sk_buff *(*dequeue)(struct Qdisc * ) ;
   struct sk_buff *(*peek)(struct Qdisc * ) ;
   unsigned int (*drop)(struct Qdisc * ) ;
   int (*init)(struct Qdisc * , struct nlattr * ) ;
   void (*reset)(struct Qdisc * ) ;
   void (*destroy)(struct Qdisc * ) ;
   int (*change)(struct Qdisc * , struct nlattr * ) ;
   void (*attach)(struct Qdisc * ) ;
   int (*dump)(struct Qdisc * , struct sk_buff * ) ;
   int (*dump_stats)(struct Qdisc * , struct gnet_dump * ) ;
   struct module *owner ;
};
struct tcf_result {
   unsigned long class ;
   u32 classid ;
};
struct tcf_proto_ops {
   struct list_head head ;
   char kind[16U] ;
   int (*classify)(struct sk_buff * , struct tcf_proto const * , struct tcf_result * ) ;
   int (*init)(struct tcf_proto * ) ;
   void (*destroy)(struct tcf_proto * ) ;
   unsigned long (*get)(struct tcf_proto * , u32 ) ;
   void (*put)(struct tcf_proto * , unsigned long ) ;
   int (*change)(struct net * , struct sk_buff * , struct tcf_proto * , unsigned long ,
                 u32 , struct nlattr ** , unsigned long * ) ;
   int (*delete)(struct tcf_proto * , unsigned long ) ;
   void (*walk)(struct tcf_proto * , struct tcf_walker * ) ;
   int (*dump)(struct net * , struct tcf_proto * , unsigned long , struct sk_buff * ,
               struct tcmsg * ) ;
   struct module *owner ;
};
struct tcf_proto {
   struct tcf_proto *next ;
   void *root ;
   int (*classify)(struct sk_buff * , struct tcf_proto const * , struct tcf_result * ) ;
   __be16 protocol ;
   u32 prio ;
   u32 classid ;
   struct Qdisc *q ;
   void *data ;
   struct tcf_proto_ops const *ops ;
};
struct qdisc_walker {
   int stop ;
   int skip ;
   int count ;
   int (*fn)(struct Qdisc * , unsigned long , struct qdisc_walker * ) ;
};
struct ixgb_adapter;
enum ldv_34126 {
    ixgb_mac_unknown = 0,
    ixgb_82597 = 1,
    ixgb_num_macs = 2
} ;
typedef enum ldv_34126 ixgb_mac_type;
enum ldv_34128 {
    ixgb_phy_type_unknown = 0,
    ixgb_phy_type_g6005 = 1,
    ixgb_phy_type_g6104 = 2,
    ixgb_phy_type_txn17201 = 3,
    ixgb_phy_type_txn17401 = 4,
    ixgb_phy_type_bcm = 5
} ;
typedef enum ldv_34128 ixgb_phy_type;
enum ldv_34134 {
    ixgb_fc_none = 0,
    ixgb_fc_rx_pause = 1,
    ixgb_fc_tx_pause = 2,
    ixgb_fc_full = 3,
    ixgb_fc_default = 255
} ;
typedef enum ldv_34134 ixgb_fc_type;
enum ldv_34136 {
    ixgb_bus_type_unknown = 0,
    ixgb_bus_type_pci = 1,
    ixgb_bus_type_pcix = 2
} ;
typedef enum ldv_34136 ixgb_bus_type;
enum ldv_34138 {
    ixgb_bus_speed_unknown = 0,
    ixgb_bus_speed_33 = 1,
    ixgb_bus_speed_66 = 2,
    ixgb_bus_speed_100 = 3,
    ixgb_bus_speed_133 = 4,
    ixgb_bus_speed_reserved = 5
} ;
typedef enum ldv_34138 ixgb_bus_speed;
enum ldv_34140 {
    ixgb_bus_width_unknown = 0,
    ixgb_bus_width_32 = 1,
    ixgb_bus_width_64 = 2
} ;
typedef enum ldv_34140 ixgb_bus_width;
struct ixgb_rx_desc {
   __le64 buff_addr ;
   __le16 length ;
   __le16 reserved ;
   u8 status ;
   u8 errors ;
   __le16 special ;
};
struct ixgb_tx_desc {
   __le64 buff_addr ;
   __le32 cmd_type_len ;
   u8 status ;
   u8 popts ;
   __le16 vlan ;
};
struct ixgb_context_desc {
   u8 ipcss ;
   u8 ipcso ;
   __le16 ipcse ;
   u8 tucss ;
   u8 tucso ;
   __le16 tucse ;
   __le32 cmd_type_len ;
   u8 status ;
   u8 hdr_len ;
   __le16 mss ;
};
struct ixgb_fc {
   u32 high_water ;
   u32 low_water ;
   u16 pause_time ;
   bool send_xon ;
   ixgb_fc_type type ;
};
struct ixgb_bus {
   ixgb_bus_speed speed ;
   ixgb_bus_width width ;
   ixgb_bus_type type ;
};
struct ixgb_hw {
   u8 *hw_addr ;
   void *back ;
   struct ixgb_fc fc ;
   struct ixgb_bus bus ;
   u32 phy_id ;
   u32 phy_addr ;
   ixgb_mac_type mac_type ;
   ixgb_phy_type phy_type ;
   u32 max_frame_size ;
   u32 mc_filter_type ;
   u32 num_mc_addrs ;
   u8 curr_mac_addr[6U] ;
   u32 num_tx_desc ;
   u32 num_rx_desc ;
   u32 rx_buffer_size ;
   bool link_up ;
   bool adapter_stopped ;
   u16 device_id ;
   u16 vendor_id ;
   u8 revision_id ;
   u16 subsystem_vendor_id ;
   u16 subsystem_id ;
   u32 bar0 ;
   u32 bar1 ;
   u32 bar2 ;
   u32 bar3 ;
   u16 pci_cmd_word ;
   __le16 eeprom[64U] ;
   unsigned long io_base ;
   u32 lastLFC ;
   u32 lastRFC ;
};
struct ixgb_hw_stats {
   u64 tprl ;
   u64 tprh ;
   u64 gprcl ;
   u64 gprch ;
   u64 bprcl ;
   u64 bprch ;
   u64 mprcl ;
   u64 mprch ;
   u64 uprcl ;
   u64 uprch ;
   u64 vprcl ;
   u64 vprch ;
   u64 jprcl ;
   u64 jprch ;
   u64 gorcl ;
   u64 gorch ;
   u64 torl ;
   u64 torh ;
   u64 rnbc ;
   u64 ruc ;
   u64 roc ;
   u64 rlec ;
   u64 crcerrs ;
   u64 icbc ;
   u64 ecbc ;
   u64 mpc ;
   u64 tptl ;
   u64 tpth ;
   u64 gptcl ;
   u64 gptch ;
   u64 bptcl ;
   u64 bptch ;
   u64 mptcl ;
   u64 mptch ;
   u64 uptcl ;
   u64 uptch ;
   u64 vptcl ;
   u64 vptch ;
   u64 jptcl ;
   u64 jptch ;
   u64 gotcl ;
   u64 gotch ;
   u64 totl ;
   u64 toth ;
   u64 dc ;
   u64 plt64c ;
   u64 tsctc ;
   u64 tsctfc ;
   u64 ibic ;
   u64 rfc ;
   u64 lfc ;
   u64 pfrc ;
   u64 pftc ;
   u64 mcfrc ;
   u64 mcftc ;
   u64 xonrxc ;
   u64 xontxc ;
   u64 xoffrxc ;
   u64 xofftxc ;
   u64 rjc ;
};
struct ixgb_buffer {
   struct sk_buff *skb ;
   dma_addr_t dma ;
   unsigned long time_stamp ;
   u16 length ;
   u16 next_to_watch ;
   u16 mapped_as_page ;
};
struct ixgb_desc_ring {
   void *desc ;
   dma_addr_t dma ;
   unsigned int size ;
   unsigned int count ;
   unsigned int next_to_use ;
   unsigned int next_to_clean ;
   struct ixgb_buffer *buffer_info ;
};
struct ixgb_adapter {
   struct timer_list watchdog_timer ;
   unsigned long active_vlans[64U] ;
   u32 bd_number ;
   u32 rx_buffer_len ;
   u32 part_num ;
   u16 link_speed ;
   u16 link_duplex ;
   struct work_struct tx_timeout_task ;
   struct ixgb_desc_ring tx_ring ;
   unsigned int restart_queue ;
   unsigned long timeo_start ;
   u32 tx_cmd_type ;
   u64 hw_csum_tx_good ;
   u64 hw_csum_tx_error ;
   u32 tx_int_delay ;
   u32 tx_timeout_count ;
   bool tx_int_delay_enable ;
   bool detect_tx_hung ;
   struct ixgb_desc_ring rx_ring ;
   u64 hw_csum_rx_error ;
   u64 hw_csum_rx_good ;
   u32 rx_int_delay ;
   bool rx_csum ;
   struct napi_struct napi ;
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct ixgb_hw hw ;
   u16 msg_enable ;
   struct ixgb_hw_stats stats ;
   u32 alloc_rx_buff_failed ;
   bool have_msi ;
   unsigned long flags ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef struct net_device *ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
enum ldv_30529 {
    ixgb_xpak_vendor_intel = 0,
    ixgb_xpak_vendor_infineon = 1
} ;
typedef enum ldv_30529 ixgb_xpak_vendor;
struct ixgb_ee_map_type {
   u8 mac_addr[6U] ;
   __le16 compatibility ;
   __le16 reserved1[4U] ;
   __le32 pba_number ;
   __le16 init_ctrl_reg_1 ;
   __le16 subsystem_id ;
   __le16 subvendor_id ;
   __le16 device_id ;
   __le16 vendor_id ;
   __le16 init_ctrl_reg_2 ;
   __le16 oem_reserved[16U] ;
   __le16 swdpins_reg ;
   __le16 circuit_ctrl_reg ;
   u8 d3_power ;
   u8 d0_power ;
   __le16 reserved2[28U] ;
   __le16 checksum ;
};
enum hrtimer_restart;
struct ixgb_stats {
   char stat_string[32U] ;
   int type ;
   int sizeof_stat ;
   int stat_offset ;
};
enum hrtimer_restart;
enum ldv_34511 {
    enable_option = 0,
    range_option = 1,
    list_option = 2
} ;
struct ixgb_opt_list {
   int i ;
   char const *str ;
};
struct __anonstruct_r_273 {
   int min ;
   int max ;
};
struct __anonstruct_l_274 {
   int nr ;
   struct ixgb_opt_list const *p ;
};
union __anonunion_arg_272 {
   struct __anonstruct_r_273 r ;
   struct __anonstruct_l_274 l ;
};
struct ixgb_option {
   enum ldv_34511 type ;
   char const *name ;
   char const *err ;
   int def ;
   union __anonunion_arg_272 arg ;
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
typedef int ldv_map;
struct usb_device;
struct ldv_thread;
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
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_32(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct module __this_module ;
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
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/a068ef8/linux-usb-dev/lkbce/arch/x86/include/asm/paravirt.h"),
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_29(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_30(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_31(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_23(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
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
extern void iounmap(void volatile * ) ;
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
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
static void *ldv_dev_get_drvdata_16(struct device const *dev ) ;
static int ldv_dev_set_drvdata_17(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern void msleep(unsigned int ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/a068ef8/linux-usb-dev/lkbce/arch/x86/include/asm/dma-mapping.h",
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
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  }
  if (rc == 0) {
    {
    dma_set_coherent_mask(dev, mask);
    }
  } else {
  }
  return (rc);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flag )
{
  void *ret ;
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs(dev, size, dma_handle, flag | 32768U, (struct dma_attrs *)0);
  ret = tmp;
  }
  return (ret);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
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
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
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
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  {
  tmp = skb_headroom(skb);
  }
  return ((int )((unsigned int )skb->__annonCompField68.__annonCompField67.csum_start - tmp));
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
extern void skb_trim(struct sk_buff * , unsigned int ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  }
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
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
__inline static void skb_copy_to_linear_data_offset(struct sk_buff *skb , int const offset ,
                                                    void const *from , unsigned int const len )
{
  {
  {
  memcpy((void *)skb->data + (unsigned long )offset, from, (size_t )len);
  }
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
extern void synchronize_irq(unsigned int ) ;
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
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_37736;
  ldv_37735:
  {
  msleep(1U);
  }
  ldv_37736:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_37735;
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
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_26(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_28(struct net_device *ldv_func_arg1 ) ;
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
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = netpoll_trap();
  }
  if (tmp != 0) {
    {
    netif_tx_start_queue(dev_queue);
    }
    return;
  } else {
  }
  {
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___0 != 0) {
    {
    __netif_schedule(dev_queue->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
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
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  }
  return (tmp___0);
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
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_irq(skb, 1);
  }
  return;
}
}
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
static int ldv_register_netdev_25(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_27(struct net_device *ldv_func_arg1 ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
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
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_18(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_19(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_16((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_17(& pdev->dev, data);
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_24(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
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
__inline static int ldv_request_irq_20(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
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
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
bool ixgb_adapter_stop(struct ixgb_hw *hw ) ;
bool ixgb_init_hw(struct ixgb_hw *hw ) ;
void ixgb_check_for_link(struct ixgb_hw *hw ) ;
bool ixgb_check_for_bad_link(struct ixgb_hw *hw ) ;
void ixgb_rar_set(struct ixgb_hw *hw , u8 *addr , u32 index ) ;
void ixgb_mc_addr_list_update(struct ixgb_hw *hw , u8 *mc_addr_list , u32 mc_addr_count ,
                              u32 pad ) ;
void ixgb_write_vfta(struct ixgb_hw *hw , u32 offset , u32 value ) ;
void ixgb_get_ee_mac_addr(struct ixgb_hw *hw , u8 *mac_addr ) ;
u32 ixgb_get_ee_pba_number(struct ixgb_hw *hw ) ;
bool ixgb_validate_eeprom_checksum(struct ixgb_hw *hw ) ;
void ixgb_check_options(struct ixgb_adapter *adapter ) ;
void ixgb_set_ethtool_ops(struct net_device *netdev ) ;
char ixgb_driver_name[5U] ;
char const ixgb_driver_version[16U] ;
void ixgb_set_speed_duplex(struct net_device *netdev ) ;
int ixgb_up(struct ixgb_adapter *adapter ) ;
void ixgb_down(struct ixgb_adapter *adapter , bool kill_watchdog ) ;
void ixgb_reset(struct ixgb_adapter *adapter ) ;
int ixgb_setup_rx_resources(struct ixgb_adapter *adapter ) ;
int ixgb_setup_tx_resources(struct ixgb_adapter *adapter ) ;
void ixgb_free_rx_resources(struct ixgb_adapter *adapter ) ;
void ixgb_free_tx_resources(struct ixgb_adapter *adapter ) ;
void ixgb_update_stats(struct ixgb_adapter *adapter ) ;
char ixgb_driver_name[5U] = { 'i', 'x', 'g', 'b',
        '\000'};
static char ixgb_driver_string[34U] =
  { 'I', 'n', 't', 'e',
        'l', '(', 'R', ')',
        ' ', 'P', 'R', 'O',
        '/', '1', '0', 'G',
        'b', 'E', ' ', 'N',
        'e', 't', 'w', 'o',
        'r', 'k', ' ', 'D',
        'r', 'i', 'v', 'e',
        'r', '\000'};
char const ixgb_driver_version[16U] =
  { '1', '.', '0', '.',
        '1', '3', '5', '-',
        'k', '2', '-', 'N',
        'A', 'P', 'I', '\000'};
static char const ixgb_copyright[43U] =
  { 'C', 'o', 'p', 'y',
        'r', 'i', 'g', 'h',
        't', ' ', '(', 'c',
        ')', ' ', '1', '9',
        '9', '9', '-', '2',
        '0', '0', '8', ' ',
        'I', 'n', 't', 'e',
        'l', ' ', 'C', 'o',
        'r', 'p', 'o', 'r',
        'a', 't', 'i', 'o',
        'n', '.', '\000'};
static unsigned int copybreak = 256U;
static struct pci_device_id const ixgb_pci_tbl[5U] = { {32902U, 4168U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 4254U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 6728U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 6984U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int ixgb_init_module(void) ;
static void ixgb_exit_module(void) ;
static int ixgb_probe(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static void ixgb_remove(struct pci_dev *pdev ) ;
static int ixgb_sw_init(struct ixgb_adapter *adapter ) ;
static int ixgb_open(struct net_device *netdev ) ;
static int ixgb_close(struct net_device *netdev ) ;
static void ixgb_configure_tx(struct ixgb_adapter *adapter ) ;
static void ixgb_configure_rx(struct ixgb_adapter *adapter ) ;
static void ixgb_setup_rctl(struct ixgb_adapter *adapter ) ;
static void ixgb_clean_tx_ring(struct ixgb_adapter *adapter ) ;
static void ixgb_clean_rx_ring(struct ixgb_adapter *adapter ) ;
static void ixgb_set_multi(struct net_device *netdev ) ;
static void ixgb_watchdog(unsigned long data ) ;
static netdev_tx_t ixgb_xmit_frame(struct sk_buff *skb , struct net_device *netdev ) ;
static struct net_device_stats *ixgb_get_stats(struct net_device *netdev ) ;
static int ixgb_change_mtu(struct net_device *netdev , int new_mtu ) ;
static int ixgb_set_mac(struct net_device *netdev , void *p ) ;
static irqreturn_t ixgb_intr(int irq , void *data ) ;
static bool ixgb_clean_tx_irq(struct ixgb_adapter *adapter ) ;
static int ixgb_clean(struct napi_struct *napi , int budget ) ;
static bool ixgb_clean_rx_irq(struct ixgb_adapter *adapter , int *work_done , int work_to_do ) ;
static void ixgb_alloc_rx_buffers(struct ixgb_adapter *adapter , int cleaned_count ) ;
static void ixgb_tx_timeout(struct net_device *netdev ) ;
static void ixgb_tx_timeout_task(struct work_struct *work ) ;
static void ixgb_vlan_strip_enable(struct ixgb_adapter *adapter ) ;
static void ixgb_vlan_strip_disable(struct ixgb_adapter *adapter ) ;
static int ixgb_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid ) ;
static int ixgb_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid ) ;
static void ixgb_restore_vlan(struct ixgb_adapter *adapter ) ;
static void ixgb_netpoll(struct net_device *dev ) ;
static pci_ers_result_t ixgb_io_error_detected(struct pci_dev *pdev , enum pci_channel_state state ) ;
static pci_ers_result_t ixgb_io_slot_reset(struct pci_dev *pdev ) ;
static void ixgb_io_resume(struct pci_dev *pdev ) ;
static struct pci_error_handlers const ixgb_err_handler = {& ixgb_io_error_detected, 0, 0, & ixgb_io_slot_reset, & ixgb_io_resume};
static struct pci_driver ixgb_driver =
     {{0, 0}, (char const *)(& ixgb_driver_name), (struct pci_device_id const *)(& ixgb_pci_tbl),
    & ixgb_probe, & ixgb_remove, 0, 0, 0, 0, 0, 0, & ixgb_err_handler, {0, 0, 0, 0,
                                                                        (_Bool)0,
                                                                        0, 0, 0, 0,
                                                                        0, 0, 0, 0,
                                                                        0, 0}, {{{{{{0U}},
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
                                                                                 0}}};
static int debug = -1;
static int ixgb_init_module(void)
{
  int tmp ;
  {
  {
  printk("\016ixgb: %s - version %s\n", (char *)(& ixgb_driver_string), (char const *)(& ixgb_driver_version));
  printk("\016ixgb: %s\n", (char const *)(& ixgb_copyright));
  tmp = ldv___pci_register_driver_18(& ixgb_driver, & __this_module, "ixgb");
  }
  return (tmp);
}
}
static void ixgb_exit_module(void)
{
  {
  {
  ldv_pci_unregister_driver_19(& ixgb_driver);
  }
  return;
}
}
static void ixgb_irq_disable(struct ixgb_adapter *adapter )
{
  {
  {
  writel(4294967295U, (void volatile *)adapter->hw.hw_addr + 152U);
  readl((void const volatile *)adapter->hw.hw_addr + 16U);
  synchronize_irq((adapter->pdev)->irq);
  }
  return;
}
}
static void ixgb_irq_enable(struct ixgb_adapter *adapter )
{
  u32 val ;
  {
  val = 149U;
  if ((unsigned int )adapter->hw.subsystem_vendor_id == 4238U) {
    val = val | 2048U;
  } else {
  }
  {
  writel(val, (void volatile *)adapter->hw.hw_addr + 144U);
  readl((void const volatile *)adapter->hw.hw_addr + 16U);
  }
  return;
}
}
int ixgb_up(struct ixgb_adapter *adapter )
{
  struct net_device *netdev ;
  int err ;
  int irq_flags ;
  int max_frame ;
  struct ixgb_hw *hw ;
  unsigned int tmp ;
  u32 ctrl0 ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  netdev = adapter->netdev;
  irq_flags = 128;
  max_frame = (int )(netdev->mtu + 18U);
  hw = & adapter->hw;
  ixgb_rar_set(hw, netdev->dev_addr, 0U);
  ixgb_set_multi(netdev);
  ixgb_restore_vlan(adapter);
  ixgb_configure_tx(adapter);
  ixgb_setup_rctl(adapter);
  ixgb_configure_rx(adapter);
  ixgb_alloc_rx_buffers(adapter, (int )((((adapter->rx_ring.next_to_clean <= adapter->rx_ring.next_to_use ? adapter->rx_ring.count : 0U) + adapter->rx_ring.next_to_clean) - adapter->rx_ring.next_to_use) - 1U));
  writel(4294967295U, (void volatile *)adapter->hw.hw_addr + 152U);
  tmp = readl((void const volatile *)adapter->hw.hw_addr + 16U);
  }
  if ((tmp & 8192U) != 0U) {
    {
    err = pci_enable_msi_block(adapter->pdev, 1);
    }
    if (err == 0) {
      adapter->have_msi = 1;
      irq_flags = 0;
    } else {
    }
  } else {
  }
  {
  err = ldv_request_irq_20((adapter->pdev)->irq, & ixgb_intr, (unsigned long )irq_flags,
                           (char const *)(& netdev->name), (void *)netdev);
  }
  if (err != 0) {
    if ((int )adapter->have_msi) {
      {
      pci_disable_msi(adapter->pdev);
      }
    } else {
    }
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "Unable to allocate interrupt Error: %d\n",
                 err);
      }
    } else {
    }
    return (err);
  } else {
  }
  if (hw->max_frame_size != (u32 )max_frame) {
    goto _L;
  } else {
    {
    tmp___1 = readl((void const volatile *)hw->hw_addr + 32U);
    }
    if (hw->max_frame_size != tmp___1 >> 16) {
      _L:
      {
      hw->max_frame_size = (u32 )max_frame;
      writel(hw->max_frame_size << 16, (void volatile *)hw->hw_addr + 32U);
      }
      if (hw->max_frame_size > 1518U) {
        {
        tmp___0 = readl((void const volatile *)hw->hw_addr);
        ctrl0 = tmp___0;
        }
        if ((ctrl0 & 16U) == 0U) {
          {
          ctrl0 = ctrl0 | 16U;
          writel(ctrl0, (void volatile *)hw->hw_addr);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  }
  {
  clear_bit(0L, (unsigned long volatile *)(& adapter->flags));
  napi_enable(& adapter->napi);
  ixgb_irq_enable(adapter);
  netif_wake_queue(netdev);
  ldv_mod_timer_21(& adapter->watchdog_timer, jiffies);
  }
  return (0);
}
}
void ixgb_down(struct ixgb_adapter *adapter , bool kill_watchdog )
{
  struct net_device *netdev ;
  {
  {
  netdev = adapter->netdev;
  set_bit(0L, (unsigned long volatile *)(& adapter->flags));
  napi_disable(& adapter->napi);
  ixgb_irq_disable(adapter);
  ldv_free_irq_22((adapter->pdev)->irq, (void *)netdev);
  }
  if ((int )adapter->have_msi) {
    {
    pci_disable_msi(adapter->pdev);
    }
  } else {
  }
  if ((int )kill_watchdog) {
    {
    ldv_del_timer_sync_23(& adapter->watchdog_timer);
    }
  } else {
  }
  {
  adapter->link_speed = 0U;
  adapter->link_duplex = 0U;
  netif_carrier_off(netdev);
  netif_stop_queue(netdev);
  ixgb_reset(adapter);
  ixgb_clean_tx_ring(adapter);
  ixgb_clean_rx_ring(adapter);
  }
  return;
}
}
void ixgb_reset(struct ixgb_adapter *adapter )
{
  struct ixgb_hw *hw ;
  bool tmp ;
  int tmp___0 ;
  u32 ctrl0 ;
  unsigned int tmp___1 ;
  {
  {
  hw = & adapter->hw;
  ixgb_adapter_stop(hw);
  tmp = ixgb_init_hw(hw);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "ixgb_init_hw failed\n");
      }
    } else {
    }
  } else {
  }
  {
  writel(hw->max_frame_size << 16, (void volatile *)hw->hw_addr + 32U);
  }
  if (hw->max_frame_size > 1518U) {
    {
    tmp___1 = readl((void const volatile *)hw->hw_addr);
    ctrl0 = tmp___1;
    }
    if ((ctrl0 & 16U) == 0U) {
      {
      ctrl0 = ctrl0 | 16U;
      writel(ctrl0, (void volatile *)hw->hw_addr);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static netdev_features_t ixgb_fix_features(struct net_device *netdev , netdev_features_t features )
{
  {
  if ((features & 256ULL) == 0ULL) {
    features = features & 0xffffffffffffff7fULL;
  } else {
  }
  return (features);
}
}
static int ixgb_set_features(struct net_device *netdev , netdev_features_t features )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  netdev_features_t changed ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  changed = features ^ netdev->features;
  }
  if ((changed & 4294967552ULL) == 0ULL) {
    return (0);
  } else {
  }
  {
  adapter->rx_csum = (features & 4294967296ULL) != 0ULL;
  tmp___0 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___0) {
    {
    ixgb_down(adapter, 1);
    ixgb_up(adapter);
    ixgb_set_speed_duplex(netdev);
    }
  } else {
    {
    ixgb_reset(adapter);
    }
  }
  return (0);
}
}
static struct net_device_ops const ixgb_netdev_ops =
     {0, 0, & ixgb_open, & ixgb_close, & ixgb_xmit_frame, 0, 0, & ixgb_set_multi, & ixgb_set_mac,
    & eth_validate_addr, 0, 0, & ixgb_change_mtu, 0, & ixgb_tx_timeout, 0, & ixgb_get_stats,
    & ixgb_vlan_rx_add_vid, & ixgb_vlan_rx_kill_vid, & ixgb_netpoll, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ixgb_fix_features, & ixgb_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ixgb_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct ixgb_adapter *adapter ;
  int cards_found ;
  int pci_using_dac ;
  int i ;
  int err ;
  void *tmp ;
  u32 tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  netdev = (struct net_device *)0;
  cards_found = 0;
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  pci_using_dac = 0;
  err = dma_set_mask_and_coherent(& pdev->dev, 0xffffffffffffffffULL);
  }
  if (err == 0) {
    pci_using_dac = 1;
  } else {
    {
    err = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
    }
    if (err != 0) {
      {
      printk("\vixgb: No usable DMA configuration, aborting\n");
      }
      goto err_dma_mask;
    } else {
    }
  }
  {
  err = pci_request_regions(pdev, (char const *)(& ixgb_driver_name));
  }
  if (err != 0) {
    goto err_request_regions;
  } else {
  }
  {
  pci_set_master(pdev);
  netdev = ldv_alloc_etherdev_mqs_24(1920, 1U, 1U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_alloc_etherdev;
  } else {
  }
  {
  netdev->dev.parent = & pdev->dev;
  pci_set_drvdata(pdev, (void *)netdev);
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  adapter->netdev = netdev;
  adapter->pdev = pdev;
  adapter->hw.back = (void *)adapter;
  tmp___0 = netif_msg_init(debug, 7);
  adapter->msg_enable = (u16 )tmp___0;
  tmp___1 = pci_ioremap_bar(pdev, 0);
  adapter->hw.hw_addr = (u8 *)tmp___1;
  }
  if ((unsigned long )adapter->hw.hw_addr == (unsigned long )((u8 *)0U)) {
    err = -5;
    goto err_ioremap;
  } else {
  }
  i = 1;
  goto ldv_49991;
  ldv_49990: ;
  if ((pdev->resource[i].start == 0ULL && pdev->resource[i].end == pdev->resource[i].start) || pdev->resource[i].end - pdev->resource[i].start == 0xffffffffffffffffULL) {
    goto ldv_49988;
  } else {
  }
  if ((pdev->resource[i].flags & 256UL) != 0UL) {
    adapter->hw.io_base = (unsigned long )pdev->resource[i].start;
    goto ldv_49989;
  } else {
  }
  ldv_49988:
  i = i + 1;
  ldv_49991: ;
  if (i <= 5) {
    goto ldv_49990;
  } else {
  }
  ldv_49989:
  {
  netdev->netdev_ops = & ixgb_netdev_ops;
  ixgb_set_ethtool_ops(netdev);
  netdev->watchdog_timeo = 1250;
  netif_napi_add(netdev, & adapter->napi, & ixgb_clean, 64);
  tmp___2 = pci_name((struct pci_dev const *)pdev);
  strncpy((char *)(& netdev->name), tmp___2, 15UL);
  adapter->bd_number = (u32 )cards_found;
  adapter->link_speed = 0U;
  adapter->link_duplex = 0U;
  err = ixgb_sw_init(adapter);
  }
  if (err != 0) {
    goto err_sw_init;
  } else {
  }
  netdev->hw_features = 65929ULL;
  netdev->features = netdev->hw_features | 512ULL;
  netdev->hw_features = netdev->hw_features | 4294967296ULL;
  if (pci_using_dac != 0) {
    netdev->features = netdev->features | 32ULL;
    netdev->vlan_features = netdev->vlan_features | 32ULL;
  } else {
  }
  {
  tmp___3 = ixgb_validate_eeprom_checksum(& adapter->hw);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "The EEPROM Checksum Is Not Valid\n");
      }
    } else {
    }
    err = -5;
    goto err_eeprom;
  } else {
  }
  {
  ixgb_get_ee_mac_addr(& adapter->hw, netdev->dev_addr);
  tmp___5 = is_valid_ether_addr((u8 const *)netdev->dev_addr);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "Invalid MAC Address\n");
      }
    } else {
    }
    err = -5;
    goto err_eeprom;
  } else {
  }
  {
  adapter->part_num = ixgb_get_ee_pba_number(& adapter->hw);
  init_timer_key(& adapter->watchdog_timer, 0U, "(&adapter->watchdog_timer)", & __key);
  adapter->watchdog_timer.function = & ixgb_watchdog;
  adapter->watchdog_timer.data = (unsigned long )adapter;
  __init_work(& adapter->tx_timeout_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->tx_timeout_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->tx_timeout_task.lockdep_map, "(&adapter->tx_timeout_task)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& adapter->tx_timeout_task.entry);
  adapter->tx_timeout_task.func = & ixgb_tx_timeout_task;
  strcpy((char *)(& netdev->name), "eth%d");
  err = ldv_register_netdev_25(netdev);
  }
  if (err != 0) {
    goto err_register;
  } else {
  }
  {
  netif_carrier_off(netdev);
  }
  if (((int )adapter->msg_enable & 2) != 0) {
    {
    netdev_info((struct net_device const *)adapter->netdev, "Intel(R) PRO/10GbE Network Connection\n");
    }
  } else {
  }
  {
  ixgb_check_options(adapter);
  ixgb_reset(adapter);
  cards_found = cards_found + 1;
  }
  return (0);
  err_register: ;
  err_sw_init: ;
  err_eeprom:
  {
  iounmap((void volatile *)adapter->hw.hw_addr);
  }
  err_ioremap:
  {
  ldv_free_netdev_26(netdev);
  }
  err_alloc_etherdev:
  {
  pci_release_regions(pdev);
  }
  err_request_regions: ;
  err_dma_mask:
  {
  pci_disable_device(pdev);
  }
  return (err);
}
}
static void ixgb_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct ixgb_adapter *adapter ;
  void *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp___0;
  cancel_work_sync(& adapter->tx_timeout_task);
  ldv_unregister_netdev_27(netdev);
  iounmap((void volatile *)adapter->hw.hw_addr);
  pci_release_regions(pdev);
  ldv_free_netdev_28(netdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static int ixgb_sw_init(struct ixgb_adapter *adapter )
{
  struct ixgb_hw *hw ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  hw->vendor_id = pdev->vendor;
  hw->device_id = pdev->device;
  hw->subsystem_vendor_id = pdev->subsystem_vendor;
  hw->subsystem_id = pdev->subsystem_device;
  hw->max_frame_size = netdev->mtu + 18U;
  adapter->rx_buffer_len = hw->max_frame_size + 8U;
  if ((((unsigned int )hw->device_id == 4168U || (unsigned int )hw->device_id == 4254U) || (unsigned int )hw->device_id == 6984U) || (unsigned int )hw->device_id == 6728U) {
    hw->mac_type = 1;
  } else
  if (((int )adapter->msg_enable & 2) != 0) {
    {
    netdev_err((struct net_device const *)adapter->netdev, "unsupported device id\n");
    }
  } else {
  }
  {
  hw->fc.send_xon = 1;
  set_bit(0L, (unsigned long volatile *)(& adapter->flags));
  }
  return (0);
}
}
static int ixgb_open(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  int err ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  err = ixgb_setup_tx_resources(adapter);
  }
  if (err != 0) {
    goto err_setup_tx;
  } else {
  }
  {
  netif_carrier_off(netdev);
  err = ixgb_setup_rx_resources(adapter);
  }
  if (err != 0) {
    goto err_setup_rx;
  } else {
  }
  {
  err = ixgb_up(adapter);
  }
  if (err != 0) {
    goto err_up;
  } else {
  }
  {
  netif_start_queue(netdev);
  }
  return (0);
  err_up:
  {
  ixgb_free_rx_resources(adapter);
  }
  err_setup_rx:
  {
  ixgb_free_tx_resources(adapter);
  }
  err_setup_tx:
  {
  ixgb_reset(adapter);
  }
  return (err);
}
}
static int ixgb_close(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  ixgb_down(adapter, 1);
  ixgb_free_tx_resources(adapter);
  ixgb_free_rx_resources(adapter);
  }
  return (0);
}
}
int ixgb_setup_tx_resources(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *txdr ;
  struct pci_dev *pdev ;
  int size ;
  void *tmp ;
  {
  {
  txdr = & adapter->tx_ring;
  pdev = adapter->pdev;
  size = (int )(txdr->count * 32U);
  tmp = vzalloc((unsigned long )size);
  txdr->buffer_info = (struct ixgb_buffer *)tmp;
  }
  if ((unsigned long )txdr->buffer_info == (unsigned long )((struct ixgb_buffer *)0)) {
    return (-12);
  } else {
  }
  {
  txdr->size = txdr->count * 16U;
  txdr->size = (txdr->size + 4095U) & 4294963200U;
  txdr->desc = dma_zalloc_coherent(& pdev->dev, (size_t )txdr->size, & txdr->dma,
                                   208U);
  }
  if ((unsigned long )txdr->desc == (unsigned long )((void *)0)) {
    {
    vfree((void const *)txdr->buffer_info);
    }
    return (-12);
  } else {
  }
  txdr->next_to_use = 0U;
  txdr->next_to_clean = 0U;
  return (0);
}
}
static void ixgb_configure_tx(struct ixgb_adapter *adapter )
{
  u64 tdba ;
  u32 tdlen ;
  u32 tctl ;
  struct ixgb_hw *hw ;
  {
  {
  tdba = adapter->tx_ring.dma;
  tdlen = adapter->tx_ring.count * 16U;
  hw = & adapter->hw;
  writel((unsigned int )tdba, (void volatile *)hw->hw_addr + 1544U);
  writel((unsigned int )(tdba >> 32), (void volatile *)hw->hw_addr + 1548U);
  writel(tdlen, (void volatile *)hw->hw_addr + 1552U);
  writel(0U, (void volatile *)hw->hw_addr + 1560U);
  writel(0U, (void volatile *)hw->hw_addr + 1568U);
  writel(adapter->tx_int_delay, (void volatile *)hw->hw_addr + 1576U);
  tctl = 7U;
  writel(tctl, (void volatile *)hw->hw_addr + 1536U);
  adapter->tx_cmd_type = (int )adapter->tx_int_delay_enable ? 2148532224U : 1048576U;
  }
  return;
}
}
int ixgb_setup_rx_resources(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *rxdr ;
  struct pci_dev *pdev ;
  int size ;
  void *tmp ;
  {
  {
  rxdr = & adapter->rx_ring;
  pdev = adapter->pdev;
  size = (int )(rxdr->count * 32U);
  tmp = vzalloc((unsigned long )size);
  rxdr->buffer_info = (struct ixgb_buffer *)tmp;
  }
  if ((unsigned long )rxdr->buffer_info == (unsigned long )((struct ixgb_buffer *)0)) {
    return (-12);
  } else {
  }
  {
  rxdr->size = rxdr->count * 16U;
  rxdr->size = (rxdr->size + 4095U) & 4294963200U;
  rxdr->desc = dma_alloc_attrs(& pdev->dev, (size_t )rxdr->size, & rxdr->dma, 208U,
                               (struct dma_attrs *)0);
  }
  if ((unsigned long )rxdr->desc == (unsigned long )((void *)0)) {
    {
    vfree((void const *)rxdr->buffer_info);
    }
    return (-12);
  } else {
  }
  {
  memset(rxdr->desc, 0, (size_t )rxdr->size);
  rxdr->next_to_clean = 0U;
  rxdr->next_to_use = 0U;
  }
  return (0);
}
}
static void ixgb_setup_rctl(struct ixgb_adapter *adapter )
{
  u32 rctl ;
  {
  {
  rctl = readl((void const volatile *)adapter->hw.hw_addr + 256U);
  rctl = rctl & 4294955007U;
  rctl = (rctl | (adapter->hw.mc_filter_type << 12)) | 8421378U;
  rctl = rctl | 67108864U;
  }
  if (adapter->rx_buffer_len <= 2048U) {
    rctl = rctl;
  } else
  if (adapter->rx_buffer_len <= 4096U) {
    rctl = rctl | 65536U;
  } else
  if (adapter->rx_buffer_len <= 8192U) {
    rctl = rctl | 131072U;
  } else
  if (adapter->rx_buffer_len <= 16384U) {
    rctl = rctl | 196608U;
  } else {
  }
  {
  writel(rctl, (void volatile *)adapter->hw.hw_addr + 256U);
  }
  return;
}
}
static void ixgb_configure_rx(struct ixgb_adapter *adapter )
{
  u64 rdba ;
  u32 rdlen ;
  struct ixgb_hw *hw ;
  u32 rctl ;
  u32 rxcsum ;
  {
  {
  rdba = adapter->rx_ring.dma;
  rdlen = adapter->rx_ring.count * 16U;
  hw = & adapter->hw;
  rctl = readl((void const volatile *)hw->hw_addr + 256U);
  writel(rctl & 4294967293U, (void volatile *)hw->hw_addr + 256U);
  writel(adapter->rx_int_delay, (void volatile *)hw->hw_addr + 312U);
  writel((unsigned int )rdba, (void volatile *)hw->hw_addr + 280U);
  writel((unsigned int )(rdba >> 32), (void volatile *)hw->hw_addr + 284U);
  writel(rdlen, (void volatile *)hw->hw_addr + 288U);
  writel(0U, (void volatile *)hw->hw_addr + 296U);
  writel(0U, (void volatile *)hw->hw_addr + 304U);
  writel(0U, (void volatile *)hw->hw_addr + 320U);
  }
  if ((int )adapter->rx_csum) {
    {
    rxcsum = readl((void const volatile *)hw->hw_addr + 344U);
    rxcsum = rxcsum | 512U;
    writel(rxcsum, (void volatile *)hw->hw_addr + 344U);
    }
  } else {
  }
  {
  writel(rctl, (void volatile *)hw->hw_addr + 256U);
  }
  return;
}
}
void ixgb_free_tx_resources(struct ixgb_adapter *adapter )
{
  struct pci_dev *pdev ;
  {
  {
  pdev = adapter->pdev;
  ixgb_clean_tx_ring(adapter);
  vfree((void const *)adapter->tx_ring.buffer_info);
  adapter->tx_ring.buffer_info = (struct ixgb_buffer *)0;
  dma_free_attrs(& pdev->dev, (size_t )adapter->tx_ring.size, adapter->tx_ring.desc,
                 adapter->tx_ring.dma, (struct dma_attrs *)0);
  adapter->tx_ring.desc = (void *)0;
  }
  return;
}
}
static void ixgb_unmap_and_free_tx_resource(struct ixgb_adapter *adapter , struct ixgb_buffer *buffer_info )
{
  {
  if (buffer_info->dma != 0ULL) {
    if ((unsigned int )buffer_info->mapped_as_page != 0U) {
      {
      dma_unmap_page(& (adapter->pdev)->dev, buffer_info->dma, (size_t )buffer_info->length,
                     1);
      }
    } else {
      {
      dma_unmap_single_attrs(& (adapter->pdev)->dev, buffer_info->dma, (size_t )buffer_info->length,
                             1, (struct dma_attrs *)0);
      }
    }
    buffer_info->dma = 0ULL;
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    dev_kfree_skb_any(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
    }
  } else {
  }
  buffer_info->time_stamp = 0UL;
  return;
}
}
static void ixgb_clean_tx_ring(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *tx_ring ;
  struct ixgb_buffer *buffer_info ;
  unsigned long size ;
  unsigned int i ;
  {
  tx_ring = & adapter->tx_ring;
  i = 0U;
  goto ldv_50068;
  ldv_50067:
  {
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  ixgb_unmap_and_free_tx_resource(adapter, buffer_info);
  i = i + 1U;
  }
  ldv_50068: ;
  if (i < tx_ring->count) {
    goto ldv_50067;
  } else {
  }
  {
  size = (unsigned long )tx_ring->count * 32UL;
  memset((void *)tx_ring->buffer_info, 0, size);
  memset(tx_ring->desc, 0, (size_t )tx_ring->size);
  tx_ring->next_to_use = 0U;
  tx_ring->next_to_clean = 0U;
  writel(0U, (void volatile *)adapter->hw.hw_addr + 1560U);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 1568U);
  }
  return;
}
}
void ixgb_free_rx_resources(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *rx_ring ;
  struct pci_dev *pdev ;
  {
  {
  rx_ring = & adapter->rx_ring;
  pdev = adapter->pdev;
  ixgb_clean_rx_ring(adapter);
  vfree((void const *)rx_ring->buffer_info);
  rx_ring->buffer_info = (struct ixgb_buffer *)0;
  dma_free_attrs(& pdev->dev, (size_t )rx_ring->size, rx_ring->desc, rx_ring->dma,
                 (struct dma_attrs *)0);
  rx_ring->desc = (void *)0;
  }
  return;
}
}
static void ixgb_clean_rx_ring(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *rx_ring ;
  struct ixgb_buffer *buffer_info ;
  struct pci_dev *pdev ;
  unsigned long size ;
  unsigned int i ;
  {
  rx_ring = & adapter->rx_ring;
  pdev = adapter->pdev;
  i = 0U;
  goto ldv_50084;
  ldv_50083:
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  if (buffer_info->dma != 0ULL) {
    {
    dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )buffer_info->length,
                           2, (struct dma_attrs *)0);
    buffer_info->dma = 0ULL;
    buffer_info->length = 0U;
    }
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
    }
  } else {
  }
  i = i + 1U;
  ldv_50084: ;
  if (i < rx_ring->count) {
    goto ldv_50083;
  } else {
  }
  {
  size = (unsigned long )rx_ring->count * 32UL;
  memset((void *)rx_ring->buffer_info, 0, size);
  memset(rx_ring->desc, 0, (size_t )rx_ring->size);
  rx_ring->next_to_clean = 0U;
  rx_ring->next_to_use = 0U;
  writel(0U, (void volatile *)adapter->hw.hw_addr + 296U);
  writel(0U, (void volatile *)adapter->hw.hw_addr + 304U);
  }
  return;
}
}
static int ixgb_set_mac(struct net_device *netdev , void *p )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
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
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  ixgb_rar_set(& adapter->hw, (u8 *)(& addr->sa_data), 0U);
  }
  return (0);
}
}
static void ixgb_set_multi(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  struct netdev_hw_addr *ha ;
  u32 rctl ;
  u8 *mta ;
  void *tmp___0 ;
  u8 *addr ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  rctl = readl((void const volatile *)hw->hw_addr + 256U);
  }
  if ((netdev->flags & 256U) != 0U) {
    rctl = rctl | 24U;
    rctl = rctl & 4294443007U;
    rctl = rctl & 4294705151U;
  } else {
    if ((netdev->flags & 512U) != 0U) {
      rctl = rctl | 16U;
      rctl = rctl & 4294967287U;
    } else {
      rctl = rctl & 4294967271U;
    }
    rctl = rctl | 262144U;
    rctl = rctl & 4294443007U;
  }
  if (netdev->mc.count > 128) {
    {
    rctl = rctl | 16U;
    writel(rctl, (void volatile *)hw->hw_addr + 256U);
    }
  } else {
    {
    tmp___0 = kmalloc(768UL, 32U);
    mta = (u8 *)tmp___0;
    }
    if ((unsigned long )mta == (unsigned long )((u8 *)0U)) {
      goto alloc_failed;
    } else {
    }
    {
    writel(rctl, (void volatile *)hw->hw_addr + 256U);
    addr = mta;
    __mptr = (struct list_head const *)netdev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    }
    goto ldv_50107;
    ldv_50106:
    {
    memcpy((void *)addr, (void const *)(& ha->addr), 6UL);
    addr = addr + 6UL;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_50107: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
      goto ldv_50106;
    } else {
    }
    {
    ixgb_mc_addr_list_update(hw, mta, (u32 )netdev->mc.count, 0U);
    kfree((void const *)mta);
    }
  }
  alloc_failed: ;
  if ((netdev->features & 256ULL) != 0ULL) {
    {
    ixgb_vlan_strip_enable(adapter);
    }
  } else {
    {
    ixgb_vlan_strip_disable(adapter);
    }
  }
  return;
}
}
static void ixgb_watchdog(unsigned long data )
{
  struct ixgb_adapter *adapter ;
  struct net_device *netdev ;
  struct ixgb_desc_ring *txdr ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  {
  adapter = (struct ixgb_adapter *)data;
  netdev = adapter->netdev;
  txdr = & adapter->tx_ring;
  ixgb_check_for_link(& adapter->hw);
  tmp = ixgb_check_for_bad_link(& adapter->hw);
  }
  if ((int )tmp) {
    {
    netif_stop_queue(netdev);
    }
  } else {
  }
  if ((int )adapter->hw.link_up) {
    {
    tmp___0 = netif_carrier_ok((struct net_device const *)netdev);
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      netdev_info((struct net_device const *)netdev, "NIC Link is Up 10 Gbps Full Duplex, Flow Control: %s\n",
                  (unsigned int )adapter->hw.fc.type != 3U ? ((unsigned int )adapter->hw.fc.type != 1U ? ((unsigned int )adapter->hw.fc.type == 2U ? (char *)"TX" : (char *)"None") : (char *)"RX") : (char *)"RX/TX");
      adapter->link_speed = 10000U;
      adapter->link_duplex = 2U;
      netif_carrier_on(netdev);
      }
    } else {
    }
  } else {
    {
    tmp___2 = netif_carrier_ok((struct net_device const *)netdev);
    }
    if ((int )tmp___2) {
      {
      adapter->link_speed = 0U;
      adapter->link_duplex = 0U;
      netdev_info((struct net_device const *)netdev, "NIC Link is Down\n");
      netif_carrier_off(netdev);
      }
    } else {
    }
  }
  {
  ixgb_update_stats(adapter);
  tmp___3 = netif_carrier_ok((struct net_device const *)netdev);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    if (((txdr->next_to_clean <= txdr->next_to_use ? txdr->count : 0U) + txdr->next_to_clean) - txdr->next_to_use < txdr->count) {
      {
      schedule_work(& adapter->tx_timeout_task);
      }
      return;
    } else {
    }
  } else {
  }
  {
  adapter->detect_tx_hung = 1;
  writel(1U, (void volatile *)adapter->hw.hw_addr + 136U);
  ldv_mod_timer_29(& adapter->watchdog_timer, (unsigned long )jiffies + 500UL);
  }
  return;
}
}
static int ixgb_tso(struct ixgb_adapter *adapter , struct sk_buff *skb )
{
  struct ixgb_context_desc *context_desc ;
  unsigned int i ;
  u8 ipcss ;
  u8 ipcso ;
  u8 tucss ;
  u8 tucso ;
  u8 hdr_len ;
  u16 ipcse ;
  u16 tucse ;
  u16 mss ;
  int err ;
  struct ixgb_buffer *buffer_info ;
  struct iphdr *iph ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned char *tmp___2 ;
  struct tcphdr *tmp___3 ;
  __sum16 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct tcphdr *tmp___8 ;
  int __ret_warn_on ;
  long tmp___9 ;
  bool tmp___10 ;
  long tmp___11 ;
  {
  {
  tmp___10 = skb_is_gso((struct sk_buff const *)skb);
  tmp___11 = ldv__builtin_expect((long )tmp___10, 1L);
  }
  if (tmp___11 != 0L) {
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
    tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___1 = tcp_hdrlen((struct sk_buff const *)skb);
    hdr_len = (int )((u8 )tmp___0) + (int )((u8 )tmp___1);
    tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
    mss = ((struct skb_shared_info *)tmp___2)->gso_size;
    iph = ip_hdr((struct sk_buff const *)skb);
    iph->tot_len = 0U;
    iph->check = 0U;
    tmp___3 = tcp_hdr((struct sk_buff const *)skb);
    tmp___4 = csum_tcpudp_magic(iph->saddr, iph->daddr, 0, 6, 0U);
    tmp___3->check = ~ ((int )tmp___4);
    tmp___5 = skb_network_offset((struct sk_buff const *)skb);
    ipcss = (u8 )tmp___5;
    ipcso = (int )((u8 )((long )(& iph->check))) - (int )((u8 )((long )skb->data));
    tmp___6 = skb_transport_offset((struct sk_buff const *)skb);
    ipcse = (unsigned int )((u16 )tmp___6) + 65535U;
    tmp___7 = skb_transport_offset((struct sk_buff const *)skb);
    tucss = (u8 )tmp___7;
    tmp___8 = tcp_hdr((struct sk_buff const *)skb);
    tucso = (int )((u8 )((long )(& tmp___8->check))) - (int )((u8 )((long )skb->data));
    tucse = 0U;
    i = adapter->tx_ring.next_to_use;
    context_desc = (struct ixgb_context_desc *)adapter->tx_ring.desc + (unsigned long )i;
    buffer_info = adapter->tx_ring.buffer_info + (unsigned long )i;
    __ret_warn_on = buffer_info->dma != 0ULL;
    tmp___9 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___9 != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/intel/ixgb/ixgb_main.c", 1253);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    context_desc->ipcss = ipcss;
    context_desc->ipcso = ipcso;
    context_desc->ipcse = ipcse;
    context_desc->tucss = tucss;
    context_desc->tucso = tucso;
    context_desc->tucse = tucse;
    context_desc->mss = mss;
    context_desc->hdr_len = hdr_len;
    context_desc->status = 0U;
    context_desc->cmd_type_len = (skb->len - (unsigned int )hdr_len) | 2264924160U;
    i = i + 1U;
    }
    if (i == adapter->tx_ring.count) {
      i = 0U;
    } else {
    }
    adapter->tx_ring.next_to_use = i;
    return (1);
  } else {
  }
  return (0);
}
}
static bool ixgb_tx_csum(struct ixgb_adapter *adapter , struct sk_buff *skb )
{
  struct ixgb_context_desc *context_desc ;
  unsigned int i ;
  u8 css ;
  u8 cso ;
  struct ixgb_buffer *buffer_info ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)skb + 124UL) == 12U,
                             1L);
  }
  if (tmp___1 != 0L) {
    {
    tmp = skb_checksum_start_offset((struct sk_buff const *)skb);
    css = (u8 )tmp;
    cso = (int )css + (int )((u8 )skb->__annonCompField68.__annonCompField67.csum_offset);
    i = adapter->tx_ring.next_to_use;
    context_desc = (struct ixgb_context_desc *)adapter->tx_ring.desc + (unsigned long )i;
    buffer_info = adapter->tx_ring.buffer_info + (unsigned long )i;
    __ret_warn_on = buffer_info->dma != 0ULL;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/intel/ixgb/ixgb_main.c", 1297);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    context_desc->tucss = css;
    context_desc->tucso = cso;
    context_desc->tucse = 0U;
    *((u32 *)(& context_desc->ipcss)) = 0U;
    context_desc->status = 0U;
    context_desc->hdr_len = 0U;
    context_desc->mss = 0U;
    context_desc->cmd_type_len = 2147483648U;
    i = i + 1U;
    }
    if (i == adapter->tx_ring.count) {
      i = 0U;
    } else {
    }
    adapter->tx_ring.next_to_use = i;
    return (1);
  } else {
  }
  return (0);
}
}
static int ixgb_tx_map(struct ixgb_adapter *adapter , struct sk_buff *skb , unsigned int first )
{
  struct ixgb_desc_ring *tx_ring ;
  struct pci_dev *pdev ;
  struct ixgb_buffer *buffer_info ;
  int len ;
  unsigned int tmp ;
  unsigned int offset ;
  unsigned int size ;
  unsigned int count ;
  unsigned int i ;
  unsigned int mss ;
  unsigned char *tmp___0 ;
  unsigned int nr_frags ;
  unsigned char *tmp___1 ;
  unsigned int f ;
  int _min1 ;
  int _min2 ;
  long tmp___2 ;
  long tmp___3 ;
  int __ret_warn_on ;
  long tmp___4 ;
  int tmp___5 ;
  struct skb_frag_struct const *frag ;
  unsigned char *tmp___6 ;
  unsigned int tmp___7 ;
  int _min1___0 ;
  int _min2___0 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  int tmp___12 ;
  unsigned int tmp___13 ;
  {
  {
  tx_ring = & adapter->tx_ring;
  pdev = adapter->pdev;
  tmp = skb_headlen((struct sk_buff const *)skb);
  len = (int )tmp;
  offset = 0U;
  count = 0U;
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  mss = (unsigned int )((struct skb_shared_info *)tmp___0)->gso_size;
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  nr_frags = (unsigned int )((struct skb_shared_info *)tmp___1)->nr_frags;
  i = tx_ring->next_to_use;
  }
  goto ldv_50168;
  ldv_50167:
  {
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  _min1 = len;
  _min2 = 16384;
  size = (unsigned int )(_min1 < _min2 ? _min1 : _min2);
  tmp___2 = ldv__builtin_expect((long )(mss != 0U && nr_frags == 0U), 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___3 = ldv__builtin_expect((long )(size == (unsigned int )len && size > 8U), 0L);
    }
    if (tmp___3 != 0L) {
      size = size - 4U;
    } else {
    }
  } else {
  }
  {
  buffer_info->length = (u16 )size;
  __ret_warn_on = buffer_info->dma != 0ULL;
  tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    warn_slowpath_null("drivers/net/ethernet/intel/ixgb/ixgb_main.c", 1347);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  buffer_info->time_stamp = jiffies;
  buffer_info->mapped_as_page = 0U;
  buffer_info->dma = dma_map_single_attrs(& pdev->dev, (void *)skb->data + (unsigned long )offset,
                                          (size_t )size, 1, (struct dma_attrs *)0);
  tmp___5 = dma_mapping_error(& pdev->dev, buffer_info->dma);
  }
  if (tmp___5 != 0) {
    goto dma_error;
  } else {
  }
  buffer_info->next_to_watch = 0U;
  len = (int )((unsigned int )len - size);
  offset = offset + size;
  count = count + 1U;
  if (len != 0) {
    i = i + 1U;
    if (i == tx_ring->count) {
      i = 0U;
    } else {
    }
  } else {
  }
  ldv_50168: ;
  if (len != 0) {
    goto ldv_50167;
  } else {
  }
  f = 0U;
  goto ldv_50178;
  ldv_50177:
  {
  tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___6)->frags) + (unsigned long )f;
  tmp___7 = skb_frag_size(frag);
  len = (int )tmp___7;
  offset = 0U;
  }
  goto ldv_50175;
  ldv_50174:
  i = i + 1U;
  if (i == tx_ring->count) {
    i = 0U;
  } else {
  }
  {
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  _min1___0 = len;
  _min2___0 = 16384;
  size = (unsigned int )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  tmp___8 = ldv__builtin_expect(mss != 0U, 0L);
  }
  if (tmp___8 != 0L) {
    {
    tmp___9 = ldv__builtin_expect((long )(f == nr_frags - 1U && size == (unsigned int )len),
                               0L);
    }
    if (tmp___9 != 0L) {
      tmp___10 = 1;
    } else {
      tmp___10 = 0;
    }
  } else {
    tmp___10 = 0;
  }
  if (tmp___10 != 0) {
    {
    tmp___11 = ldv__builtin_expect(size > 8U, 0L);
    }
    if (tmp___11 != 0L) {
      size = size - 4U;
    } else {
    }
  } else {
  }
  {
  buffer_info->length = (u16 )size;
  buffer_info->time_stamp = jiffies;
  buffer_info->mapped_as_page = 1U;
  buffer_info->dma = skb_frag_dma_map(& pdev->dev, frag, (size_t )offset, (size_t )size,
                                      1);
  tmp___12 = dma_mapping_error(& pdev->dev, buffer_info->dma);
  }
  if (tmp___12 != 0) {
    goto dma_error;
  } else {
  }
  buffer_info->next_to_watch = 0U;
  len = (int )((unsigned int )len - size);
  offset = offset + size;
  count = count + 1U;
  ldv_50175: ;
  if (len != 0) {
    goto ldv_50174;
  } else {
  }
  f = f + 1U;
  ldv_50178: ;
  if (f < nr_frags) {
    goto ldv_50177;
  } else {
  }
  (tx_ring->buffer_info + (unsigned long )i)->skb = skb;
  (tx_ring->buffer_info + (unsigned long )first)->next_to_watch = (u16 )i;
  return ((int )count);
  dma_error:
  {
  dev_err((struct device const *)(& pdev->dev), "TX DMA map failed\n");
  buffer_info->dma = 0ULL;
  }
  if (count != 0U) {
    count = count - 1U;
  } else {
  }
  goto ldv_50181;
  ldv_50180: ;
  if (i == 0U) {
    i = i + tx_ring->count;
  } else {
  }
  {
  i = i - 1U;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  ixgb_unmap_and_free_tx_resource(adapter, buffer_info);
  }
  ldv_50181:
  tmp___13 = count;
  count = count - 1U;
  if (tmp___13 != 0U) {
    goto ldv_50180;
  } else {
  }
  return (0);
}
}
static void ixgb_tx_queue(struct ixgb_adapter *adapter , int count , int vlan_id ,
                          int tx_flags )
{
  struct ixgb_desc_ring *tx_ring ;
  struct ixgb_tx_desc *tx_desc ;
  struct ixgb_buffer *buffer_info ;
  u32 cmd_type_len ;
  u8 status ;
  u8 popts ;
  unsigned int i ;
  int tmp ;
  {
  tx_ring = & adapter->tx_ring;
  tx_desc = (struct ixgb_tx_desc *)0;
  cmd_type_len = adapter->tx_cmd_type;
  status = 0U;
  popts = 0U;
  if ((tx_flags & 4) != 0) {
    cmd_type_len = cmd_type_len | 67108864U;
    popts = (u8 )((unsigned int )popts | 3U);
  } else {
  }
  if (tx_flags & 1) {
    popts = (u8 )((unsigned int )popts | 2U);
  } else {
  }
  if ((tx_flags & 2) != 0) {
    cmd_type_len = cmd_type_len | 1073741824U;
  } else {
  }
  i = tx_ring->next_to_use;
  goto ldv_50197;
  ldv_50196:
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  tx_desc = (struct ixgb_tx_desc *)tx_ring->desc + (unsigned long )i;
  tx_desc->buff_addr = buffer_info->dma;
  tx_desc->cmd_type_len = cmd_type_len | (u32 )buffer_info->length;
  tx_desc->status = status;
  tx_desc->popts = popts;
  tx_desc->vlan = (unsigned short )vlan_id;
  i = i + 1U;
  if (i == tx_ring->count) {
    i = 0U;
  } else {
  }
  ldv_50197:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_50196;
  } else {
  }
  {
  tx_desc->cmd_type_len = tx_desc->cmd_type_len | 150994944U;
  __asm__ volatile ("sfence": : : "memory");
  tx_ring->next_to_use = i;
  writel(i, (void volatile *)adapter->hw.hw_addr + 1568U);
  }
  return;
}
}
static int __ixgb_maybe_stop_tx(struct net_device *netdev , int size )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_desc_ring *tx_ring ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  tx_ring = & adapter->tx_ring;
  netif_stop_queue(netdev);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = ldv__builtin_expect((((tx_ring->next_to_clean <= tx_ring->next_to_use ? tx_ring->count : 0U) + tx_ring->next_to_clean) - tx_ring->next_to_use) - 1U < (unsigned int )size,
                             1L);
  }
  if (tmp___0 != 0L) {
    return (-16);
  } else {
  }
  {
  netif_start_queue(netdev);
  adapter->restart_queue = adapter->restart_queue + 1U;
  }
  return (0);
}
}
static int ixgb_maybe_stop_tx(struct net_device *netdev , struct ixgb_desc_ring *tx_ring ,
                              int size )
{
  long tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect((((tx_ring->next_to_clean <= tx_ring->next_to_use ? tx_ring->count : 0U) + tx_ring->next_to_clean) - tx_ring->next_to_use) - 1U >= (unsigned int )size,
                         1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  tmp___0 = __ixgb_maybe_stop_tx(netdev, size);
  }
  return (tmp___0);
}
}
static netdev_tx_t ixgb_xmit_frame(struct sk_buff *skb , struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  unsigned int first ;
  unsigned int tx_flags ;
  int vlan_id ;
  int count ;
  int tso ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  tx_flags = 0U;
  vlan_id = 0;
  count = 0;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->flags));
  }
  if (tmp___0 != 0) {
    {
    consume_skb(skb);
    }
    return (0);
  } else {
  }
  if (skb->len == 0U) {
    {
    consume_skb(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___1 = ixgb_maybe_stop_tx(netdev, & adapter->tx_ring, 20);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    return (16);
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    tx_flags = tx_flags | 2U;
    vlan_id = (int )skb->vlan_tci & -4097;
  } else {
  }
  {
  first = adapter->tx_ring.next_to_use;
  tso = ixgb_tso(adapter, skb);
  }
  if (tso < 0) {
    {
    consume_skb(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___4 = ldv__builtin_expect(tso != 0, 1L);
  }
  if (tmp___4 != 0L) {
    tx_flags = tx_flags | 4U;
  } else {
    {
    tmp___3 = ixgb_tx_csum(adapter, skb);
    }
    if ((int )tmp___3) {
      tx_flags = tx_flags | 1U;
    } else {
    }
  }
  {
  count = ixgb_tx_map(adapter, skb, first);
  }
  if (count != 0) {
    {
    ixgb_tx_queue(adapter, count, vlan_id, (int )tx_flags);
    ixgb_maybe_stop_tx(netdev, & adapter->tx_ring, 20);
    }
  } else {
    {
    dev_kfree_skb_any(skb);
    (adapter->tx_ring.buffer_info + (unsigned long )first)->time_stamp = 0UL;
    adapter->tx_ring.next_to_use = first;
    }
  }
  return (0);
}
}
static void ixgb_tx_timeout(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  schedule_work(& adapter->tx_timeout_task);
  }
  return;
}
}
static void ixgb_tx_timeout_task(struct work_struct *work )
{
  struct ixgb_adapter *adapter ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct ixgb_adapter *)__mptr + 0xfffffffffffffd70UL;
  adapter->tx_timeout_count = adapter->tx_timeout_count + 1U;
  ixgb_down(adapter, 1);
  ixgb_up(adapter);
  }
  return;
}
}
static struct net_device_stats *ixgb_get_stats(struct net_device *netdev )
{
  {
  return (& netdev->stats);
}
}
static int ixgb_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  int max_frame ;
  int old_max_frame ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  max_frame = new_mtu + 18;
  old_max_frame = (int )(netdev->mtu + 18U);
  }
  if (new_mtu <= 67 || max_frame > 16132) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "Invalid MTU setting %d\n",
                 new_mtu);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if (old_max_frame == max_frame) {
    return (0);
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___0) {
    {
    ixgb_down(adapter, 1);
    }
  } else {
  }
  {
  adapter->rx_buffer_len = (u32 )(max_frame + 8);
  netdev->mtu = (unsigned int )new_mtu;
  tmp___1 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___1) {
    {
    ixgb_up(adapter);
    }
  } else {
  }
  return (0);
}
}
void ixgb_update_stats(struct ixgb_adapter *adapter )
{
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  int tmp ;
  u64 multi ;
  unsigned int tmp___0 ;
  u32 bcast_l ;
  unsigned int tmp___1 ;
  u32 bcast_h ;
  unsigned int tmp___2 ;
  u64 bcast ;
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
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  unsigned int tmp___22 ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  unsigned int tmp___25 ;
  unsigned int tmp___26 ;
  unsigned int tmp___27 ;
  unsigned int tmp___28 ;
  unsigned int tmp___29 ;
  unsigned int tmp___30 ;
  unsigned int tmp___31 ;
  unsigned int tmp___32 ;
  unsigned int tmp___33 ;
  unsigned int tmp___34 ;
  unsigned int tmp___35 ;
  unsigned int tmp___36 ;
  unsigned int tmp___37 ;
  unsigned int tmp___38 ;
  unsigned int tmp___39 ;
  unsigned int tmp___40 ;
  unsigned int tmp___41 ;
  unsigned int tmp___42 ;
  unsigned int tmp___43 ;
  unsigned int tmp___44 ;
  unsigned int tmp___45 ;
  unsigned int tmp___46 ;
  unsigned int tmp___47 ;
  unsigned int tmp___48 ;
  unsigned int tmp___49 ;
  unsigned int tmp___50 ;
  unsigned int tmp___51 ;
  unsigned int tmp___52 ;
  unsigned int tmp___53 ;
  unsigned int tmp___54 ;
  unsigned int tmp___55 ;
  unsigned int tmp___56 ;
  unsigned int tmp___57 ;
  unsigned int tmp___58 ;
  unsigned int tmp___59 ;
  unsigned int tmp___60 ;
  unsigned int tmp___61 ;
  unsigned int tmp___62 ;
  unsigned int tmp___63 ;
  {
  {
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  tmp = pci_channel_offline(pdev);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  if (*((unsigned int *)netdev + 126UL) != 0U || netdev->mc.count > 128) {
    {
    tmp___0 = readl((void const volatile *)adapter->hw.hw_addr + 8216U);
    multi = (u64 )tmp___0;
    tmp___1 = readl((void const volatile *)adapter->hw.hw_addr + 8208U);
    bcast_l = tmp___1;
    tmp___2 = readl((void const volatile *)adapter->hw.hw_addr + 8212U);
    bcast_h = tmp___2;
    bcast = ((unsigned long long )bcast_h << 32) | (unsigned long long )bcast_l;
    tmp___3 = readl((void const volatile *)adapter->hw.hw_addr + 8220U);
    multi = multi | ((unsigned long long )tmp___3 << 32);
    }
    if (multi >= bcast) {
      multi = multi - bcast;
    } else {
    }
    adapter->stats.mprcl = adapter->stats.mprcl + (multi & 4294967295ULL);
    adapter->stats.mprch = adapter->stats.mprch + (multi >> 32);
    adapter->stats.bprcl = adapter->stats.bprcl + (u64 )bcast_l;
    adapter->stats.bprch = adapter->stats.bprch + (u64 )bcast_h;
  } else {
    {
    tmp___4 = readl((void const volatile *)adapter->hw.hw_addr + 8216U);
    adapter->stats.mprcl = adapter->stats.mprcl + (u64 )tmp___4;
    tmp___5 = readl((void const volatile *)adapter->hw.hw_addr + 8220U);
    adapter->stats.mprch = adapter->stats.mprch + (u64 )tmp___5;
    tmp___6 = readl((void const volatile *)adapter->hw.hw_addr + 8208U);
    adapter->stats.bprcl = adapter->stats.bprcl + (u64 )tmp___6;
    tmp___7 = readl((void const volatile *)adapter->hw.hw_addr + 8212U);
    adapter->stats.bprch = adapter->stats.bprch + (u64 )tmp___7;
    }
  }
  {
  tmp___8 = readl((void const volatile *)adapter->hw.hw_addr + 8192U);
  adapter->stats.tprl = adapter->stats.tprl + (u64 )tmp___8;
  tmp___9 = readl((void const volatile *)adapter->hw.hw_addr + 8196U);
  adapter->stats.tprh = adapter->stats.tprh + (u64 )tmp___9;
  tmp___10 = readl((void const volatile *)adapter->hw.hw_addr + 8200U);
  adapter->stats.gprcl = adapter->stats.gprcl + (u64 )tmp___10;
  tmp___11 = readl((void const volatile *)adapter->hw.hw_addr + 8204U);
  adapter->stats.gprch = adapter->stats.gprch + (u64 )tmp___11;
  tmp___12 = readl((void const volatile *)adapter->hw.hw_addr + 8224U);
  adapter->stats.uprcl = adapter->stats.uprcl + (u64 )tmp___12;
  tmp___13 = readl((void const volatile *)adapter->hw.hw_addr + 8228U);
  adapter->stats.uprch = adapter->stats.uprch + (u64 )tmp___13;
  tmp___14 = readl((void const volatile *)adapter->hw.hw_addr + 8232U);
  adapter->stats.vprcl = adapter->stats.vprcl + (u64 )tmp___14;
  tmp___15 = readl((void const volatile *)adapter->hw.hw_addr + 8236U);
  adapter->stats.vprch = adapter->stats.vprch + (u64 )tmp___15;
  tmp___16 = readl((void const volatile *)adapter->hw.hw_addr + 8240U);
  adapter->stats.jprcl = adapter->stats.jprcl + (u64 )tmp___16;
  tmp___17 = readl((void const volatile *)adapter->hw.hw_addr + 8244U);
  adapter->stats.jprch = adapter->stats.jprch + (u64 )tmp___17;
  tmp___18 = readl((void const volatile *)adapter->hw.hw_addr + 8248U);
  adapter->stats.gorcl = adapter->stats.gorcl + (u64 )tmp___18;
  tmp___19 = readl((void const volatile *)adapter->hw.hw_addr + 8252U);
  adapter->stats.gorch = adapter->stats.gorch + (u64 )tmp___19;
  tmp___20 = readl((void const volatile *)adapter->hw.hw_addr + 8256U);
  adapter->stats.torl = adapter->stats.torl + (u64 )tmp___20;
  tmp___21 = readl((void const volatile *)adapter->hw.hw_addr + 8260U);
  adapter->stats.torh = adapter->stats.torh + (u64 )tmp___21;
  tmp___22 = readl((void const volatile *)adapter->hw.hw_addr + 8264U);
  adapter->stats.rnbc = adapter->stats.rnbc + (u64 )tmp___22;
  tmp___23 = readl((void const volatile *)adapter->hw.hw_addr + 8272U);
  adapter->stats.ruc = adapter->stats.ruc + (u64 )tmp___23;
  tmp___24 = readl((void const volatile *)adapter->hw.hw_addr + 8280U);
  adapter->stats.roc = adapter->stats.roc + (u64 )tmp___24;
  tmp___25 = readl((void const volatile *)adapter->hw.hw_addr + 8288U);
  adapter->stats.rlec = adapter->stats.rlec + (u64 )tmp___25;
  tmp___26 = readl((void const volatile *)adapter->hw.hw_addr + 8296U);
  adapter->stats.crcerrs = adapter->stats.crcerrs + (u64 )tmp___26;
  tmp___27 = readl((void const volatile *)adapter->hw.hw_addr + 8304U);
  adapter->stats.icbc = adapter->stats.icbc + (u64 )tmp___27;
  tmp___28 = readl((void const volatile *)adapter->hw.hw_addr + 8312U);
  adapter->stats.ecbc = adapter->stats.ecbc + (u64 )tmp___28;
  tmp___29 = readl((void const volatile *)adapter->hw.hw_addr + 8320U);
  adapter->stats.mpc = adapter->stats.mpc + (u64 )tmp___29;
  tmp___30 = readl((void const volatile *)adapter->hw.hw_addr + 8448U);
  adapter->stats.tptl = adapter->stats.tptl + (u64 )tmp___30;
  tmp___31 = readl((void const volatile *)adapter->hw.hw_addr + 8452U);
  adapter->stats.tpth = adapter->stats.tpth + (u64 )tmp___31;
  tmp___32 = readl((void const volatile *)adapter->hw.hw_addr + 8456U);
  adapter->stats.gptcl = adapter->stats.gptcl + (u64 )tmp___32;
  tmp___33 = readl((void const volatile *)adapter->hw.hw_addr + 8460U);
  adapter->stats.gptch = adapter->stats.gptch + (u64 )tmp___33;
  tmp___34 = readl((void const volatile *)adapter->hw.hw_addr + 8464U);
  adapter->stats.bptcl = adapter->stats.bptcl + (u64 )tmp___34;
  tmp___35 = readl((void const volatile *)adapter->hw.hw_addr + 8468U);
  adapter->stats.bptch = adapter->stats.bptch + (u64 )tmp___35;
  tmp___36 = readl((void const volatile *)adapter->hw.hw_addr + 8472U);
  adapter->stats.mptcl = adapter->stats.mptcl + (u64 )tmp___36;
  tmp___37 = readl((void const volatile *)adapter->hw.hw_addr + 8476U);
  adapter->stats.mptch = adapter->stats.mptch + (u64 )tmp___37;
  tmp___38 = readl((void const volatile *)adapter->hw.hw_addr + 8480U);
  adapter->stats.uptcl = adapter->stats.uptcl + (u64 )tmp___38;
  tmp___39 = readl((void const volatile *)adapter->hw.hw_addr + 8484U);
  adapter->stats.uptch = adapter->stats.uptch + (u64 )tmp___39;
  tmp___40 = readl((void const volatile *)adapter->hw.hw_addr + 8488U);
  adapter->stats.vptcl = adapter->stats.vptcl + (u64 )tmp___40;
  tmp___41 = readl((void const volatile *)adapter->hw.hw_addr + 8492U);
  adapter->stats.vptch = adapter->stats.vptch + (u64 )tmp___41;
  tmp___42 = readl((void const volatile *)adapter->hw.hw_addr + 8496U);
  adapter->stats.jptcl = adapter->stats.jptcl + (u64 )tmp___42;
  tmp___43 = readl((void const volatile *)adapter->hw.hw_addr + 8500U);
  adapter->stats.jptch = adapter->stats.jptch + (u64 )tmp___43;
  tmp___44 = readl((void const volatile *)adapter->hw.hw_addr + 8504U);
  adapter->stats.gotcl = adapter->stats.gotcl + (u64 )tmp___44;
  tmp___45 = readl((void const volatile *)adapter->hw.hw_addr + 8508U);
  adapter->stats.gotch = adapter->stats.gotch + (u64 )tmp___45;
  tmp___46 = readl((void const volatile *)adapter->hw.hw_addr + 8512U);
  adapter->stats.totl = adapter->stats.totl + (u64 )tmp___46;
  tmp___47 = readl((void const volatile *)adapter->hw.hw_addr + 8516U);
  adapter->stats.toth = adapter->stats.toth + (u64 )tmp___47;
  tmp___48 = readl((void const volatile *)adapter->hw.hw_addr + 8520U);
  adapter->stats.dc = adapter->stats.dc + (u64 )tmp___48;
  tmp___49 = readl((void const volatile *)adapter->hw.hw_addr + 8528U);
  adapter->stats.plt64c = adapter->stats.plt64c + (u64 )tmp___49;
  tmp___50 = readl((void const volatile *)adapter->hw.hw_addr + 8560U);
  adapter->stats.tsctc = adapter->stats.tsctc + (u64 )tmp___50;
  tmp___51 = readl((void const volatile *)adapter->hw.hw_addr + 8568U);
  adapter->stats.tsctfc = adapter->stats.tsctfc + (u64 )tmp___51;
  tmp___52 = readl((void const volatile *)adapter->hw.hw_addr + 8576U);
  adapter->stats.ibic = adapter->stats.ibic + (u64 )tmp___52;
  tmp___53 = readl((void const volatile *)adapter->hw.hw_addr + 8584U);
  adapter->stats.rfc = adapter->stats.rfc + (u64 )tmp___53;
  tmp___54 = readl((void const volatile *)adapter->hw.hw_addr + 8592U);
  adapter->stats.lfc = adapter->stats.lfc + (u64 )tmp___54;
  tmp___55 = readl((void const volatile *)adapter->hw.hw_addr + 8600U);
  adapter->stats.pfrc = adapter->stats.pfrc + (u64 )tmp___55;
  tmp___56 = readl((void const volatile *)adapter->hw.hw_addr + 8608U);
  adapter->stats.pftc = adapter->stats.pftc + (u64 )tmp___56;
  tmp___57 = readl((void const volatile *)adapter->hw.hw_addr + 8616U);
  adapter->stats.mcfrc = adapter->stats.mcfrc + (u64 )tmp___57;
  tmp___58 = readl((void const volatile *)adapter->hw.hw_addr + 8624U);
  adapter->stats.mcftc = adapter->stats.mcftc + (u64 )tmp___58;
  tmp___59 = readl((void const volatile *)adapter->hw.hw_addr + 8632U);
  adapter->stats.xonrxc = adapter->stats.xonrxc + (u64 )tmp___59;
  tmp___60 = readl((void const volatile *)adapter->hw.hw_addr + 8640U);
  adapter->stats.xontxc = adapter->stats.xontxc + (u64 )tmp___60;
  tmp___61 = readl((void const volatile *)adapter->hw.hw_addr + 8648U);
  adapter->stats.xoffrxc = adapter->stats.xoffrxc + (u64 )tmp___61;
  tmp___62 = readl((void const volatile *)adapter->hw.hw_addr + 8656U);
  adapter->stats.xofftxc = adapter->stats.xofftxc + (u64 )tmp___62;
  tmp___63 = readl((void const volatile *)adapter->hw.hw_addr + 8664U);
  adapter->stats.rjc = adapter->stats.rjc + (u64 )tmp___63;
  netdev->stats.rx_packets = (unsigned long )adapter->stats.gprcl;
  netdev->stats.tx_packets = (unsigned long )adapter->stats.gptcl;
  netdev->stats.rx_bytes = (unsigned long )adapter->stats.gorcl;
  netdev->stats.tx_bytes = (unsigned long )adapter->stats.gotcl;
  netdev->stats.multicast = (unsigned long )adapter->stats.mprcl;
  netdev->stats.collisions = 0UL;
  netdev->stats.rx_errors = (unsigned long )(((((adapter->stats.crcerrs + adapter->stats.ruc) + adapter->stats.roc) + adapter->stats.icbc) + adapter->stats.ecbc) + adapter->stats.mpc);
  netdev->stats.rx_crc_errors = (unsigned long )adapter->stats.crcerrs;
  netdev->stats.rx_fifo_errors = (unsigned long )adapter->stats.mpc;
  netdev->stats.rx_missed_errors = (unsigned long )adapter->stats.mpc;
  netdev->stats.rx_over_errors = (unsigned long )adapter->stats.mpc;
  netdev->stats.tx_errors = 0UL;
  netdev->stats.rx_frame_errors = 0UL;
  netdev->stats.tx_aborted_errors = 0UL;
  netdev->stats.tx_carrier_errors = 0UL;
  netdev->stats.tx_fifo_errors = 0UL;
  netdev->stats.tx_heartbeat_errors = 0UL;
  netdev->stats.tx_window_errors = 0UL;
  }
  return;
}
}
static irqreturn_t ixgb_intr(int irq , void *data )
{
  struct net_device *netdev ;
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  u32 icr ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  tmp___0 = readl((void const volatile *)hw->hw_addr + 128U);
  icr = tmp___0;
  tmp___1 = ldv__builtin_expect(icr == 0U, 0L);
  }
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect((icr & 12U) != 0U, 0L);
  }
  if (tmp___3 != 0L) {
    {
    tmp___2 = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->flags));
    }
    if (tmp___2 == 0) {
      {
      ldv_mod_timer_30(& adapter->watchdog_timer, jiffies);
      }
    } else {
    }
  } else {
  }
  {
  tmp___4 = napi_schedule_prep(& adapter->napi);
  }
  if ((int )tmp___4) {
    {
    writel(4294967295U, (void volatile *)adapter->hw.hw_addr + 152U);
    __napi_schedule(& adapter->napi);
    }
  } else {
  }
  return (1);
}
}
static int ixgb_clean(struct napi_struct *napi , int budget )
{
  struct ixgb_adapter *adapter ;
  struct napi_struct const *__mptr ;
  int work_done ;
  int tmp ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  adapter = (struct ixgb_adapter *)__mptr + 0xfffffffffffffc60UL;
  work_done = 0;
  ixgb_clean_tx_irq(adapter);
  ixgb_clean_rx_irq(adapter, & work_done, budget);
  }
  if (work_done < budget) {
    {
    napi_complete(napi);
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->flags));
    }
    if (tmp == 0) {
      {
      ixgb_irq_enable(adapter);
      }
    } else {
    }
  } else {
  }
  return (work_done);
}
}
static bool ixgb_clean_tx_irq(struct ixgb_adapter *adapter )
{
  struct ixgb_desc_ring *tx_ring ;
  struct net_device *netdev ;
  struct ixgb_tx_desc *tx_desc ;
  struct ixgb_tx_desc *eop_desc ;
  struct ixgb_buffer *buffer_info ;
  unsigned int i ;
  unsigned int eop ;
  bool cleaned ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  {
  tx_ring = & adapter->tx_ring;
  netdev = adapter->netdev;
  cleaned = 0;
  i = tx_ring->next_to_clean;
  eop = (unsigned int )(tx_ring->buffer_info + (unsigned long )i)->next_to_watch;
  eop_desc = (struct ixgb_tx_desc *)tx_ring->desc + (unsigned long )eop;
  goto ldv_50280;
  ldv_50279:
  __asm__ volatile ("lfence": : : "memory");
  cleaned = 0;
  goto ldv_50277;
  ldv_50276:
  tx_desc = (struct ixgb_tx_desc *)tx_ring->desc + (unsigned long )i;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  if (((int )tx_desc->popts & 3) != 0) {
    adapter->hw_csum_tx_good = adapter->hw_csum_tx_good + 1ULL;
  } else {
  }
  {
  ixgb_unmap_and_free_tx_resource(adapter, buffer_info);
  *((u32 *)(& tx_desc->status)) = 0U;
  cleaned = i == eop;
  i = i + 1U;
  }
  if (i == tx_ring->count) {
    i = 0U;
  } else {
  }
  ldv_50277: ;
  if (! cleaned) {
    goto ldv_50276;
  } else {
  }
  eop = (unsigned int )(tx_ring->buffer_info + (unsigned long )i)->next_to_watch;
  eop_desc = (struct ixgb_tx_desc *)tx_ring->desc + (unsigned long )eop;
  ldv_50280: ;
  if ((int )eop_desc->status & 1) {
    goto ldv_50279;
  } else {
  }
  {
  tx_ring->next_to_clean = i;
  tmp___1 = ldv__builtin_expect((long )cleaned, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___2 = netif_carrier_ok((struct net_device const *)netdev);
    tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
    }
    if (tmp___3 != 0L) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  } else {
    tmp___4 = 0;
  }
  if (tmp___4 != 0) {
    {
    tmp___5 = ldv__builtin_expect((((tx_ring->next_to_clean <= tx_ring->next_to_use ? tx_ring->count : 0U) + tx_ring->next_to_clean) - tx_ring->next_to_use) - 1U > 19U,
                               0L);
    }
    if (tmp___5 != 0L) {
      {
      __asm__ volatile ("mfence": : : "memory");
      tmp = netif_queue_stopped((struct net_device const *)netdev);
      }
      if ((int )tmp) {
        {
        tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->flags));
        }
        if (tmp___0 == 0) {
          {
          netif_wake_queue(netdev);
          adapter->restart_queue = adapter->restart_queue + 1U;
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )adapter->detect_tx_hung) {
    adapter->detect_tx_hung = 0;
    if ((tx_ring->buffer_info + (unsigned long )eop)->time_stamp != 0UL && (long )(((tx_ring->buffer_info + (unsigned long )eop)->time_stamp - (unsigned long )jiffies) + 250UL) < 0L) {
      {
      tmp___8 = readl((void const volatile *)adapter->hw.hw_addr + 16U);
      }
      if ((tmp___8 & 16U) == 0U) {
        if ((int )adapter->msg_enable & 1) {
          {
          tmp___6 = readl((void const volatile *)adapter->hw.hw_addr + 1568U);
          tmp___7 = readl((void const volatile *)adapter->hw.hw_addr + 1560U);
          netdev_err((struct net_device const *)adapter->netdev, "Detected Tx Unit Hang\n  TDH                  <%x>\n  TDT                  <%x>\n  next_to_use          <%x>\n  next_to_clean        <%x>\nbuffer_info[next_to_clean]\n  time_stamp           <%lx>\n  next_to_watch        <%x>\n  jiffies              <%lx>\n  next_to_watch.status <%x>\n",
                     tmp___7, tmp___6, tx_ring->next_to_use, tx_ring->next_to_clean,
                     (tx_ring->buffer_info + (unsigned long )eop)->time_stamp, eop,
                     jiffies, (int )eop_desc->status);
          }
        } else {
        }
        {
        netif_stop_queue(netdev);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (cleaned);
}
}
static void ixgb_rx_checksum(struct ixgb_adapter *adapter , struct ixgb_rx_desc *rx_desc ,
                             struct sk_buff *skb )
{
  {
  if (((unsigned int )rx_desc->status & 36U) != 32U) {
    {
    skb_checksum_none_assert((struct sk_buff const *)skb);
    }
    return;
  } else {
  }
  if (((int )rx_desc->errors & 32) != 0) {
    {
    skb_checksum_none_assert((struct sk_buff const *)skb);
    adapter->hw_csum_rx_error = adapter->hw_csum_rx_error + 1ULL;
    }
  } else {
    skb->ip_summed = 1U;
    adapter->hw_csum_rx_good = adapter->hw_csum_rx_good + 1ULL;
  }
  return;
}
}
static void ixgb_check_copybreak(struct net_device *netdev , struct ixgb_buffer *buffer_info ,
                                 u32 length , struct sk_buff **skb )
{
  struct sk_buff *new_skb ;
  {
  if (length > copybreak) {
    return;
  } else {
  }
  {
  new_skb = netdev_alloc_skb_ip_align(netdev, length);
  }
  if ((unsigned long )new_skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_copy_to_linear_data_offset(new_skb, 0, (void const *)(*skb)->data, length);
  buffer_info->skb = *skb;
  *skb = new_skb;
  }
  return;
}
}
static bool ixgb_clean_rx_irq(struct ixgb_adapter *adapter , int *work_done , int work_to_do )
{
  struct ixgb_desc_ring *rx_ring ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  struct ixgb_rx_desc *rx_desc ;
  struct ixgb_rx_desc *next_rxd ;
  struct ixgb_buffer *buffer_info ;
  struct ixgb_buffer *next_buffer ;
  struct ixgb_buffer *next2_buffer ;
  u32 length ;
  unsigned int i ;
  unsigned int j ;
  int cleaned_count ;
  bool cleaned ;
  struct sk_buff *skb ;
  u8 status ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rx_ring = & adapter->rx_ring;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  cleaned_count = 0;
  cleaned = 0;
  i = rx_ring->next_to_clean;
  rx_desc = (struct ixgb_rx_desc *)rx_ring->desc + (unsigned long )i;
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  goto ldv_50325;
  ldv_50324: ;
  if (*work_done >= work_to_do) {
    goto ldv_50320;
  } else {
  }
  {
  *work_done = *work_done + 1;
  __asm__ volatile ("lfence": : : "memory");
  status = rx_desc->status;
  skb = buffer_info->skb;
  buffer_info->skb = (struct sk_buff *)0;
  __builtin_prefetch((void const *)skb->data);
  i = i + 1U;
  }
  if (i == rx_ring->count) {
    i = 0U;
  } else {
  }
  {
  next_rxd = (struct ixgb_rx_desc *)rx_ring->desc + (unsigned long )i;
  __builtin_prefetch((void const *)next_rxd);
  j = i + 1U;
  }
  if (j == rx_ring->count) {
    j = 0U;
  } else {
  }
  {
  next2_buffer = rx_ring->buffer_info + (unsigned long )j;
  __builtin_prefetch((void const *)next2_buffer);
  next_buffer = rx_ring->buffer_info + (unsigned long )i;
  cleaned = 1;
  cleaned_count = cleaned_count + 1;
  dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )buffer_info->length,
                         2, (struct dma_attrs *)0);
  buffer_info->dma = 0ULL;
  length = (u32 )rx_desc->length;
  rx_desc->length = 0U;
  tmp___0 = ldv__builtin_expect(((int )status & 2) == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    descriptor.modname = "ixgb";
    descriptor.function = "ixgb_clean_rx_irq";
    descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_main.c";
    descriptor.format = "Receive packet consumed multiple buffers length<%x>\n";
    descriptor.lineno = 2056U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "ixgb: Receive packet consumed multiple buffers length<%x>\n",
                         length);
      }
    } else {
    }
    {
    dev_kfree_skb_irq(skb);
    }
    goto rxdesc_done;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(((int )rx_desc->errors & 139) != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    dev_kfree_skb_irq(skb);
    }
    goto rxdesc_done;
  } else {
  }
  {
  ixgb_check_copybreak(netdev, buffer_info, length, & skb);
  skb_put(skb, length);
  ixgb_rx_checksum(adapter, rx_desc, skb);
  skb->protocol = eth_type_trans(skb, netdev);
  }
  if (((int )status & 8) != 0) {
    {
    __vlan_hwaccel_put_tag(skb, 129, (int )rx_desc->special);
    }
  } else {
  }
  {
  netif_receive_skb(skb);
  }
  rxdesc_done:
  {
  rx_desc->status = 0U;
  tmp___2 = ldv__builtin_expect(cleaned_count > 7, 0L);
  }
  if (tmp___2 != 0L) {
    {
    ixgb_alloc_rx_buffers(adapter, cleaned_count);
    cleaned_count = 0;
    }
  } else {
  }
  rx_desc = next_rxd;
  buffer_info = next_buffer;
  ldv_50325: ;
  if ((int )rx_desc->status & 1) {
    goto ldv_50324;
  } else {
  }
  ldv_50320:
  rx_ring->next_to_clean = i;
  cleaned_count = (int )((((rx_ring->next_to_clean <= rx_ring->next_to_use ? rx_ring->count : 0U) + rx_ring->next_to_clean) - rx_ring->next_to_use) - 1U);
  if (cleaned_count != 0) {
    {
    ixgb_alloc_rx_buffers(adapter, cleaned_count);
    }
  } else {
  }
  return (cleaned);
}
}
static void ixgb_alloc_rx_buffers(struct ixgb_adapter *adapter , int cleaned_count )
{
  struct ixgb_desc_ring *rx_ring ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  struct ixgb_rx_desc *rx_desc ;
  struct ixgb_buffer *buffer_info ;
  struct sk_buff *skb ;
  unsigned int i ;
  long cleancount ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  rx_ring = & adapter->rx_ring;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  i = rx_ring->next_to_use;
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  cleancount = (long )((((rx_ring->next_to_clean <= rx_ring->next_to_use ? rx_ring->count : 0U) + rx_ring->next_to_clean) - rx_ring->next_to_use) - 1U);
  goto ldv_50341;
  ldv_50340:
  skb = buffer_info->skb;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    skb_trim(skb, 0U);
    }
    goto map_skb;
  } else {
  }
  {
  skb = netdev_alloc_skb_ip_align(netdev, adapter->rx_buffer_len);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  }
  if (tmp != 0L) {
    adapter->alloc_rx_buff_failed = adapter->alloc_rx_buff_failed + 1U;
    goto ldv_50339;
  } else {
  }
  buffer_info->skb = skb;
  buffer_info->length = (u16 )adapter->rx_buffer_len;
  map_skb:
  {
  buffer_info->dma = dma_map_single_attrs(& pdev->dev, (void *)skb->data, (size_t )adapter->rx_buffer_len,
                                          2, (struct dma_attrs *)0);
  tmp___0 = dma_mapping_error(& pdev->dev, buffer_info->dma);
  }
  if (tmp___0 != 0) {
    adapter->alloc_rx_buff_failed = adapter->alloc_rx_buff_failed + 1U;
    goto ldv_50339;
  } else {
  }
  rx_desc = (struct ixgb_rx_desc *)rx_ring->desc + (unsigned long )i;
  rx_desc->buff_addr = buffer_info->dma;
  rx_desc->status = 0U;
  i = i + 1U;
  if (i == rx_ring->count) {
    i = 0U;
  } else {
  }
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  ldv_50341:
  cleancount = cleancount - 1L;
  if (cleancount > 2L) {
    tmp___1 = cleaned_count;
    cleaned_count = cleaned_count - 1;
    if (tmp___1 != 0) {
      goto ldv_50340;
    } else {
      goto ldv_50339;
    }
  } else {
  }
  ldv_50339:
  {
  tmp___4 = ldv__builtin_expect(rx_ring->next_to_use != i, 1L);
  }
  if (tmp___4 != 0L) {
    {
    rx_ring->next_to_use = i;
    tmp___2 = i;
    i = i - 1U;
    tmp___3 = ldv__builtin_expect(tmp___2 == 0U, 0L);
    }
    if (tmp___3 != 0L) {
      i = rx_ring->count - 1U;
    } else {
    }
    {
    __asm__ volatile ("sfence": : : "memory");
    writel(i, (void volatile *)adapter->hw.hw_addr + 304U);
    }
  } else {
  }
  return;
}
}
static void ixgb_vlan_strip_enable(struct ixgb_adapter *adapter )
{
  u32 ctrl ;
  {
  {
  ctrl = readl((void const volatile *)adapter->hw.hw_addr);
  ctrl = ctrl | 1073741824U;
  writel(ctrl, (void volatile *)adapter->hw.hw_addr);
  }
  return;
}
}
static void ixgb_vlan_strip_disable(struct ixgb_adapter *adapter )
{
  u32 ctrl ;
  {
  {
  ctrl = readl((void const volatile *)adapter->hw.hw_addr);
  ctrl = ctrl & 3221225471U;
  writel(ctrl, (void volatile *)adapter->hw.hw_addr);
  }
  return;
}
}
static int ixgb_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  u32 vfta ;
  u32 index ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  index = (u32 )((int )vid >> 5) & 127U;
  vfta = readl((void const volatile *)(adapter->hw.hw_addr + ((unsigned long )(index << 2) + 1024UL)));
  vfta = vfta | (u32 )(1 << ((int )vid & 31));
  ixgb_write_vfta(& adapter->hw, index, vfta);
  set_bit((long )vid, (unsigned long volatile *)(& adapter->active_vlans));
  }
  return (0);
}
}
static int ixgb_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  u32 vfta ;
  u32 index ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  index = (u32 )((int )vid >> 5) & 127U;
  vfta = readl((void const volatile *)(adapter->hw.hw_addr + ((unsigned long )(index << 2) + 1024UL)));
  vfta = vfta & (u32 )(~ (1 << ((int )vid & 31)));
  ixgb_write_vfta(& adapter->hw, index, vfta);
  clear_bit((long )vid, (unsigned long volatile *)(& adapter->active_vlans));
  }
  return (0);
}
}
static void ixgb_restore_vlan(struct ixgb_adapter *adapter )
{
  u16 vid ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = find_first_bit((unsigned long const *)(& adapter->active_vlans), 4096UL);
  vid = (u16 )tmp;
  }
  goto ldv_50371;
  ldv_50370:
  {
  ixgb_vlan_rx_add_vid(adapter->netdev, 129, (int )vid);
  tmp___0 = find_next_bit((unsigned long const *)(& adapter->active_vlans), 4096UL,
                          (unsigned long )((int )vid + 1));
  vid = (u16 )tmp___0;
  }
  ldv_50371: ;
  if ((unsigned int )vid <= 4095U) {
    goto ldv_50370;
  } else {
  }
  return;
}
}
static void ixgb_netpoll(struct net_device *dev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct ixgb_adapter *)tmp;
  disable_irq((adapter->pdev)->irq);
  ixgb_intr((int )(adapter->pdev)->irq, (void *)dev);
  enable_irq((adapter->pdev)->irq);
  }
  return;
}
}
static pci_ers_result_t ixgb_io_error_detected(struct pci_dev *pdev , enum pci_channel_state state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct ixgb_adapter *adapter ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp___0;
  netif_device_detach(netdev);
  }
  if ((unsigned int )state == 3U) {
    return (4U);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___1) {
    {
    ixgb_down(adapter, 1);
    }
  } else {
  }
  {
  pci_disable_device(pdev);
  }
  return (3U);
}
}
static pci_ers_result_t ixgb_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct ixgb_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp___0;
  tmp___1 = pci_enable_device(pdev);
  }
  if (tmp___1 != 0) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "Cannot re-enable PCI device after reset\n");
      }
    } else {
    }
    return (4U);
  } else {
  }
  if ((pdev->devfn & 7U) != 0U) {
    return (5U);
  } else {
  }
  {
  pci_set_master(pdev);
  netif_carrier_off(netdev);
  netif_stop_queue(netdev);
  ixgb_reset(adapter);
  tmp___2 = ixgb_validate_eeprom_checksum(& adapter->hw);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "After reset, the EEPROM checksum is not valid\n");
      }
    } else {
    }
    return (4U);
  } else {
  }
  {
  ixgb_get_ee_mac_addr(& adapter->hw, netdev->dev_addr);
  memcpy((void *)(& netdev->perm_addr), (void const *)netdev->dev_addr, (size_t )netdev->addr_len);
  tmp___4 = is_valid_ether_addr((u8 const *)(& netdev->perm_addr));
  }
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    if (((int )adapter->msg_enable & 2) != 0) {
      {
      netdev_err((struct net_device const *)adapter->netdev, "After reset, invalid MAC address\n");
      }
    } else {
    }
    return (4U);
  } else {
  }
  return (5U);
}
}
static void ixgb_io_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct ixgb_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp___0;
  pci_set_master(pdev);
  tmp___2 = netif_running((struct net_device const *)netdev);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = ixgb_up(adapter);
    }
    if (tmp___1 != 0) {
      {
      printk("\vixgb: can\'t bring device back up after reset\n");
      }
      return;
    } else {
    }
  } else {
  }
  {
  netif_device_attach(netdev);
  ldv_mod_timer_31(& adapter->watchdog_timer, jiffies);
  }
  return;
}
}
void ldv_EMGentry_exit_ixgb_exit_module_14_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_ixgb_init_module_14_7(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_allocate_external_0(void) ;
extern int ldv_del_timer_sync(int , struct timer_list * ) ;
void ldv_dispatch_deregister_11_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_13_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_9_4(struct net_device *arg0 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_11(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_16(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_17(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_24(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_43(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_49(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_52(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_55(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_56(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_58(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_entry_EMGentry_14(void *arg0 ) ;
int main(void) ;
extern void ldv_free_irq(void * , int , void * ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
extern int ldv_mod_timer(int , struct timer_list * , unsigned long ) ;
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
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_11(void) ;
void ldv_switch_automaton_state_2_20(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_3(void) ;
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_3(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_14_exit_ixgb_exit_module_default)(void) ;
int (*ldv_14_init_ixgb_init_module_default)(void) ;
int ldv_14_ret_default ;
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) ;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) ;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) ;
void (*ldv_1_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) ;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) ;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
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
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) ;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
int (*ldv_1_callback_set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
int (*ldv_1_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
enum ethtool_phys_id_state ldv_1_container_enum_ethtool_phys_id_state ;
struct net_device *ldv_1_container_net_device ;
struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
struct ethtool_eeprom *ldv_1_container_struct_ethtool_eeprom_ptr ;
struct ethtool_pauseparam *ldv_1_container_struct_ethtool_pauseparam_ptr ;
struct ethtool_regs *ldv_1_container_struct_ethtool_regs_ptr ;
struct ethtool_ringparam *ldv_1_container_struct_ethtool_ringparam_ptr ;
struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
unsigned long long *ldv_1_ldv_param_11_2_default ;
int ldv_1_ldv_param_21_1_default ;
unsigned int ldv_1_ldv_param_24_1_default ;
unsigned char *ldv_1_ldv_param_24_2_default ;
int ldv_1_ldv_param_27_1_default ;
unsigned long long ldv_1_ldv_param_30_1_default ;
unsigned long long ldv_1_ldv_param_35_1_default ;
unsigned short ldv_1_ldv_param_43_1_default ;
unsigned short ldv_1_ldv_param_43_2_default ;
unsigned short ldv_1_ldv_param_46_1_default ;
unsigned short ldv_1_ldv_param_46_2_default ;
unsigned char *ldv_1_ldv_param_49_2_default ;
unsigned int ldv_1_ldv_param_52_1_default ;
unsigned char *ldv_1_ldv_param_7_2_default ;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) ;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) ;
struct pci_driver *ldv_2_container_pci_driver ;
struct pci_dev *ldv_2_resource_dev ;
enum pci_channel_state ldv_2_resource_enum_pci_channel_state ;
struct pm_message ldv_2_resource_pm_message ;
struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
int ldv_2_ret_default ;
struct timer_list *ldv_3_container_timer_list ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_14 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & ixgb_intr;
void (*ldv_14_exit_ixgb_exit_module_default)(void) = & ixgb_exit_module;
int (*ldv_14_init_ixgb_init_module_default)(void) = & ixgb_init_module;
int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) = & ixgb_change_mtu;
unsigned long long (*ldv_1_callback_ndo_fix_features)(struct net_device * , unsigned long long ) = & ixgb_fix_features;
struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) = & ixgb_get_stats;
void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) = & ixgb_netpoll;
int (*ldv_1_callback_ndo_set_features)(struct net_device * , unsigned long long ) = & ixgb_set_features;
int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) = & ixgb_set_mac;
void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) = & ixgb_set_multi;
enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & ixgb_xmit_frame;
void (*ldv_1_callback_ndo_tx_timeout)(struct net_device * ) = & ixgb_tx_timeout;
int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
int (*ldv_1_callback_ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ,
                                          unsigned short ) = & ixgb_vlan_rx_add_vid;
int (*ldv_1_callback_ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ,
                                           unsigned short ) = & ixgb_vlan_rx_kill_vid;
unsigned int (*ldv_2_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) = & ixgb_io_error_detected;
void (*ldv_2_callback_func_1_ptr)(struct pci_dev * ) = & ixgb_io_resume;
unsigned int (*ldv_2_callback_slot_reset)(struct pci_dev * ) = & ixgb_io_slot_reset;
void ldv_EMGentry_exit_ixgb_exit_module_14_2(void (*arg0)(void) )
{
  {
  {
  ixgb_exit_module();
  }
  return;
}
}
int ldv_EMGentry_init_ixgb_init_module_14_7(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ixgb_init_module();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_13_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_13_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_2 == 20);
    ldv_dispatch_register_13_2(ldv_13_pci_driver_pci_driver);
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
  struct net_device *ldv_4_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_4_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_4_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_allocate_external_0(void)
{
  {
  {
  ldv_0_data_data = ldv_malloc(0UL);
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))0;
  ldv_1_container_net_device = ldv_malloc(sizeof(struct net_device));
  ldv_1_container_struct_ethtool_cmd_ptr = ldv_malloc(sizeof(struct ethtool_cmd));
  ldv_1_container_struct_ethtool_drvinfo_ptr = ldv_malloc(sizeof(struct ethtool_drvinfo));
  ldv_1_container_struct_ethtool_eeprom_ptr = ldv_malloc(sizeof(struct ethtool_eeprom));
  ldv_1_container_struct_ethtool_pauseparam_ptr = ldv_malloc(sizeof(struct ethtool_pauseparam));
  ldv_1_container_struct_ethtool_regs_ptr = ldv_malloc(sizeof(struct ethtool_regs));
  ldv_1_container_struct_ethtool_ringparam_ptr = ldv_malloc(sizeof(struct ethtool_ringparam));
  ldv_1_container_struct_ethtool_stats_ptr = ldv_malloc(sizeof(struct ethtool_stats));
  ldv_1_container_struct_sk_buff_ptr = ldv_malloc(sizeof(struct sk_buff));
  ldv_1_ldv_param_11_2_default = ldv_malloc(sizeof(unsigned long long));
  ldv_1_ldv_param_24_2_default = ldv_malloc(sizeof(unsigned char));
  ldv_1_ldv_param_49_2_default = ldv_malloc(sizeof(unsigned char));
  ldv_1_ldv_param_7_2_default = ldv_malloc(sizeof(unsigned char));
  ldv_2_resource_dev = ldv_malloc(sizeof(struct pci_dev));
  ldv_3_container_timer_list = ldv_malloc(sizeof(struct timer_list));
  }
  return;
}
}
void ldv_dispatch_deregister_11_1(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_12_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_11();
  }
  return;
}
}
void ldv_dispatch_irq_register_10_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_register_13_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_2_container_pci_driver = arg0;
  ldv_switch_automaton_state_2_20();
  }
  return;
}
}
void ldv_dispatch_register_9_4(struct net_device *arg0 )
{
  {
  {
  ldv_1_container_net_device = arg0;
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_27(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  ixgb_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(unsigned long long (*arg0)(struct net_device * ,
                                                                              unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  ixgb_fix_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_get_stats(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  ixgb_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  ixgb_set_mac(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_39(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_set_multi(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_40(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  ixgb_xmit_frame(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_41(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_42(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_43(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  ixgb_vlan_rx_add_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  ixgb_vlan_rx_kill_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_14(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_14 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_4:
  {
  ldv_assume(ldv_14_ret_default == 0);
  ldv_assume(ldv_statevar_2 == 12);
  ldv_EMGentry_exit_ixgb_exit_module_14_2(ldv_14_exit_ixgb_exit_module_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 7;
  }
  goto ldv_51082;
  case_6:
  {
  ldv_assume(ldv_14_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_14 = 7;
  }
  goto ldv_51082;
  case_7:
  {
  ldv_assume(ldv_statevar_2 == 20);
  ldv_14_ret_default = ldv_EMGentry_init_ixgb_init_module_14_7(ldv_14_init_ixgb_init_module_default);
  ldv_14_ret_default = ldv_post_init(ldv_14_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_14 = 4;
  } else {
    ldv_statevar_14 = 6;
  }
  goto ldv_51082;
  switch_default: ;
  switch_break: ;
  }
  ldv_51082: ;
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
  ldv_statevar_14 = 7;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 5;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  ldv_statevar_3 = 3;
  }
  ldv_51095:
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
  ldv_entry_EMGentry_14((void *)0);
  }
  goto ldv_51089;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_51089;
  case_2:
  {
  ldv_net_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_51089;
  case_3:
  {
  ldv_pci_pci_instance_2((void *)0);
  }
  goto ldv_51089;
  case_4:
  {
  ldv_timer_timer_instance_3((void *)0);
  }
  goto ldv_51089;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_51089: ;
  goto ldv_51095;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_7_netdev_net_device ;
  {
  {
  ldv_7_netdev_net_device = arg1;
  ldv_free((void *)ldv_7_netdev_net_device);
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
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = ixgb_intr(arg1, arg2);
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
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_51121;
  case_4:
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
  ldv_statevar_0 = 6;
  goto ldv_51121;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_51121;
  case_6: ;
  goto ldv_51121;
  switch_default: ;
  switch_break: ;
  }
  ldv_51121: ;
  return;
}
}
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
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
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
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
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_1 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_1 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_1 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_1 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_1 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_1 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_1 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_1 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_1 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_1 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_1 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_1 == 55) {
    goto case_55;
  } else {
  }
  if (ldv_statevar_1 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_1 == 57) {
    goto case_57;
  } else {
  }
  if (ldv_statevar_1 == 58) {
    goto case_58;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_51130;
  case_2:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_51130;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_drvinfo_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_51130;
  case_5: ;
  goto ldv_51130;
  case_8:
  {
  tmp = ldv_xmalloc(1UL);
  ldv_1_ldv_param_7_2_default = (unsigned char *)tmp;
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_get_eeprom, ldv_1_container_net_device,
                                               ldv_1_container_struct_ethtool_eeprom_ptr,
                                               ldv_1_ldv_param_7_2_default);
  ldv_free((void *)ldv_1_ldv_param_7_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_eeprom_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_12:
  {
  tmp___0 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_11_2_default = (unsigned long long *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_11(ldv_1_callback_get_ethtool_stats,
                                                ldv_1_container_net_device, ldv_1_container_struct_ethtool_stats_ptr,
                                                ldv_1_ldv_param_11_2_default);
  ldv_free((void *)ldv_1_ldv_param_11_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_link, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_1_16(ldv_1_callback_get_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_1_17(ldv_1_callback_get_regs, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_1_18(ldv_1_callback_get_regs_len, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_1_19(ldv_1_callback_get_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_1_20(ldv_1_callback_get_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_1_21(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_21_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_25:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_24_2_default = (unsigned char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_1_24(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_24_1_default, ldv_1_ldv_param_24_2_default);
  ldv_free((void *)ldv_1_ldv_param_24_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_28:
  {
  ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_0 == 2) || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_27(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_27_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_fix_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_30_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_33:
  {
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_get_stats, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_34:
  {
  ldv_assume(ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_ndo_poll_controller,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_36:
  {
  ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_0 == 2) || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_set_features, ldv_1_container_net_device,
                                                ldv_1_ldv_param_35_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_set_mac_address,
                                                ldv_1_container_net_device, (void *)ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_1_39(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_40:
  {
  ldv_dummy_resourceless_instance_callback_1_40(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_1_41(ldv_1_callback_ndo_tx_timeout, ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_42:
  {
  ldv_dummy_resourceless_instance_callback_1_42(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_44:
  {
  ldv_dummy_resourceless_instance_callback_1_43(ldv_1_callback_ndo_vlan_rx_add_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_43_1_default,
                                                (int )ldv_1_ldv_param_43_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_47:
  {
  ldv_dummy_resourceless_instance_callback_1_46(ldv_1_callback_ndo_vlan_rx_kill_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_46_1_default,
                                                (int )ldv_1_ldv_param_46_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_50:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_49_2_default = (unsigned char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_1_49(ldv_1_callback_set_eeprom, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_eeprom_ptr,
                                                ldv_1_ldv_param_49_2_default);
  ldv_free((void *)ldv_1_ldv_param_49_2_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_53:
  {
  ldv_dummy_resourceless_instance_callback_1_52(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_52_1_default);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_55:
  {
  ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_0 == 2) || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_55(ldv_1_callback_set_pauseparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_pauseparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_56:
  {
  ldv_dummy_resourceless_instance_callback_1_56(ldv_1_callback_set_phys_id, ldv_1_container_net_device,
                                                ldv_1_container_enum_ethtool_phys_id_state);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_57:
  {
  ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_0 == 2) || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_57(ldv_1_callback_set_ringparam, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_ringparam_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  case_58:
  {
  ldv_assume(((ldv_statevar_0 == 6 || ldv_statevar_0 == 2) || ldv_statevar_3 == 2) || ldv_statevar_3 == 3);
  ldv_dummy_resourceless_instance_callback_1_58(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_51130;
  switch_default: ;
  switch_break: ;
  }
  ldv_51130: ;
  return;
}
}
void ldv_pci_instance_callback_2_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  ixgb_io_error_detected(arg1, arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_2_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ixgb_io_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_2_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ixgb_io_slot_reset(arg1);
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
  tmp = ixgb_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  ixgb_remove(arg1);
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
  if (ldv_statevar_2 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_2 == 24) {
    goto case_24;
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
  goto ldv_51228;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 1);
  ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
  ldv_statevar_2 = 1;
  }
  goto ldv_51228;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 2;
  goto ldv_51228;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_51228;
  case_5: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 4;
  goto ldv_51228;
  case_6: ;
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  ldv_statevar_2 = 5;
  goto ldv_51228;
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
  goto ldv_51228;
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
  goto ldv_51228;
  case_9:
  {
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_51228;
  case_10:
  {
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_3 == 2);
  ldv_pci_instance_callback_2_10(ldv_2_callback_error_detected, ldv_2_resource_dev,
                                 ldv_2_resource_enum_pci_channel_state);
  ldv_statevar_2 = 9;
  }
  goto ldv_51228;
  case_12:
  {
  ldv_free((void *)ldv_2_resource_dev);
  ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 20;
  }
  goto ldv_51228;
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
  goto ldv_51228;
  case_16:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_51228;
  case_17:
  {
  ldv_assume(ldv_statevar_1 == 5);
  ldv_pre_probe();
  ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                  ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
  ldv_2_ret_default = ldv_ldv_post_probe_32(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 14;
  } else {
    ldv_statevar_2 = 16;
  }
  goto ldv_51228;
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
  goto ldv_51228;
  case_20: ;
  goto ldv_51228;
  case_23:
  {
  ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_3 == 3);
  ldv_pci_instance_callback_2_23(ldv_2_callback_func_1_ptr, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_51228;
  case_24:
  {
  ldv_pci_instance_callback_2_24(ldv_2_callback_slot_reset, ldv_2_resource_dev);
  ldv_statevar_2 = 9;
  }
  goto ldv_51228;
  switch_default: ;
  switch_break: ;
  }
  ldv_51228: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_12_pci_driver_pci_driver ;
  {
  {
  ldv_12_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_2 == 12);
  ldv_dispatch_deregister_12_1(ldv_12_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_9_netdev_net_device ;
  int ldv_9_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_9_ret_default = 1;
  ldv_9_ret_default = ldv_pre_register_netdev();
  ldv_9_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_9_ret_default == 0);
    ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_3 == 3);
    ldv_9_ret_default = ldv_register_netdev_open_9_6((ldv_9_netdev_net_device->netdev_ops)->ndo_open,
                                                     ldv_9_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      ldv_assume(ldv_statevar_1 == 5);
      ldv_dispatch_register_9_4(ldv_9_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_9_ret_default != 0);
    }
  }
  return (ldv_9_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_9_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = ixgb_open(arg1);
  }
  return (tmp);
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_10_callback_handler)(int , void * ) ;
  void *ldv_10_data_data ;
  int ldv_10_line_line ;
  enum irqreturn (*ldv_10_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_line_line = (int )arg1;
    ldv_10_callback_handler = arg2;
    ldv_10_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_10_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_10_2(ldv_10_line_line, ldv_10_callback_handler, ldv_10_thread_thread,
                                   ldv_10_data_data);
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
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (8);
  case_3: ;
  return (10);
  case_4: ;
  return (12);
  case_5: ;
  return (14);
  case_6: ;
  return (15);
  case_7: ;
  return (16);
  case_8: ;
  return (17);
  case_9: ;
  return (18);
  case_10: ;
  return (19);
  case_11: ;
  return (20);
  case_12: ;
  return (22);
  case_13: ;
  return (25);
  case_14: ;
  return (28);
  case_15: ;
  return (31);
  case_16: ;
  return (33);
  case_17: ;
  return (34);
  case_18: ;
  return (36);
  case_19: ;
  return (38);
  case_20: ;
  return (39);
  case_21: ;
  return (40);
  case_22: ;
  return (41);
  case_23: ;
  return (42);
  case_24: ;
  return (44);
  case_25: ;
  return (47);
  case_26: ;
  return (50);
  case_27: ;
  return (53);
  case_28: ;
  return (55);
  case_29: ;
  return (56);
  case_30: ;
  return (57);
  case_31: ;
  return (58);
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
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  case_3: ;
  return (23);
  case_4: ;
  return (24);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_5(void)
{
  {
  ldv_statevar_1 = 4;
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
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 3;
  return;
}
}
void ldv_switch_automaton_state_3_3(void)
{
  {
  ldv_statevar_3 = 2;
  return;
}
}
void ldv_timer_instance_callback_3_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_3(void *arg0 )
{
  {
  {
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_3_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_3_2(ldv_3_container_timer_list->function, ldv_3_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_3 = 3;
  }
  goto ldv_51349;
  case_3: ;
  goto ldv_51349;
  switch_default: ;
  switch_break: ;
  }
  ldv_51349: ;
  return;
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_11_netdev_net_device ;
  {
  {
  ldv_11_netdev_net_device = arg1;
  ldv_assume(ldv_statevar_0 == 2 || ldv_statevar_3 == 2);
  ldv_unregister_netdev_stop_11_2((ldv_11_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_11_netdev_net_device);
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_11_1(ldv_11_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_11_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  ixgb_close(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_16(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_17(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static int ldv___pci_register_driver_18(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
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
static void ldv_pci_unregister_driver_19(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_20(unsigned int irq , irqreturn_t (*handler)(int ,
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
static int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_del_timer_sync_23(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
static struct net_device *ldv_alloc_etherdev_mqs_24(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
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
static int ldv_register_netdev_25(struct net_device *ldv_func_arg1 )
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
static void ldv_free_netdev_26(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_unregister_netdev_27(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_28(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_29(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static int ldv_mod_timer_30(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
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
static int ldv_mod_timer_31(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_ldv_post_probe_32(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
extern void __const_udelay(unsigned long ) ;
u16 ixgb_get_ee_device_id(struct ixgb_hw *hw ) ;
bool ixgb_get_eeprom_data(struct ixgb_hw *hw ) ;
void ixgb_led_on(struct ixgb_hw *hw ) ;
void ixgb_led_off(struct ixgb_hw *hw ) ;
__inline static bool is_broadcast_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )(((int )((unsigned short )*((u16 const *)addr)) & (int )((unsigned short )*((u16 const *)addr + 2U))) & (int )((unsigned short )*((u16 const *)addr + 4U))) == 65535U);
}
}
static u32 ixgb_hash_mc_addr(struct ixgb_hw *hw , u8 *mc_addr ) ;
static void ixgb_mta_set(struct ixgb_hw *hw , u32 hash_value ) ;
static void ixgb_get_bus_info(struct ixgb_hw *hw ) ;
static bool ixgb_link_reset(struct ixgb_hw *hw ) ;
static void ixgb_optics_reset(struct ixgb_hw *hw ) ;
static void ixgb_optics_reset_bcm(struct ixgb_hw *hw ) ;
static ixgb_phy_type ixgb_identify_phy(struct ixgb_hw *hw ) ;
static void ixgb_clear_hw_cntrs(struct ixgb_hw *hw ) ;
static void ixgb_clear_vfta(struct ixgb_hw *hw ) ;
static void ixgb_init_rx_addrs(struct ixgb_hw *hw ) ;
static u16 ixgb_read_phy_reg(struct ixgb_hw *hw , u32 reg_address , u32 phy_address ,
                             u32 device_type ) ;
static bool ixgb_setup_fc(struct ixgb_hw *hw ) ;
static bool mac_addr_valid(u8 *mac_addr ) ;
static u32 ixgb_mac_reset(struct ixgb_hw *hw )
{
  u32 ctrl_reg ;
  {
  {
  ctrl_reg = 133431296U;
  writel(ctrl_reg, (void volatile *)hw->hw_addr);
  msleep(1U);
  ctrl_reg = readl((void const volatile *)hw->hw_addr);
  }
  if ((unsigned int )hw->subsystem_vendor_id == 4238U) {
    {
    ctrl_reg = 3265U;
    writel(ctrl_reg, (void volatile *)hw->hw_addr + 8U);
    ixgb_optics_reset_bcm(hw);
    }
  } else {
  }
  if ((unsigned int )hw->phy_type == 4U) {
    {
    ixgb_optics_reset(hw);
    }
  } else {
  }
  return (ctrl_reg);
}
}
bool ixgb_adapter_stop(struct ixgb_hw *hw )
{
  u32 ctrl_reg ;
  u32 icr_reg ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_adapter_stop";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 128U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_adapter_stop");
    }
  } else {
  }
  if ((int )hw->adapter_stopped) {
    {
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "ixgb_adapter_stop";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___0.format = "Exiting because the adapter is already stopped!!!\n";
    descriptor___0.lineno = 134U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: Exiting because the adapter is already stopped!!!\n");
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  hw->adapter_stopped = 1;
  descriptor___1.modname = "ixgb";
  descriptor___1.function = "ixgb_adapter_stop";
  descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___1.format = "Masking off all interrupts\n";
  descriptor___1.lineno = 144U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "ixgb: Masking off all interrupts\n");
    }
  } else {
  }
  {
  writel(4294967295U, (void volatile *)hw->hw_addr + 152U);
  tmp___2 = readl((void const volatile *)hw->hw_addr + 256U);
  writel(tmp___2 & 4294967293U, (void volatile *)hw->hw_addr + 256U);
  tmp___3 = readl((void const volatile *)hw->hw_addr + 1536U);
  writel(tmp___3 & 4294967293U, (void volatile *)hw->hw_addr + 1536U);
  readl((void const volatile *)hw->hw_addr + 16U);
  msleep(10U);
  descriptor___2.modname = "ixgb";
  descriptor___2.function = "ixgb_adapter_stop";
  descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___2.format = "Issuing a global reset to MAC\n";
  descriptor___2.lineno = 161U;
  descriptor___2.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "ixgb: Issuing a global reset to MAC\n");
    }
  } else {
  }
  {
  ctrl_reg = ixgb_mac_reset(hw);
  descriptor___3.modname = "ixgb";
  descriptor___3.function = "ixgb_adapter_stop";
  descriptor___3.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___3.format = "Masking off all interrupts\n";
  descriptor___3.lineno = 166U;
  descriptor___3.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "ixgb: Masking off all interrupts\n");
    }
  } else {
  }
  {
  writel(4294967295U, (void volatile *)hw->hw_addr + 152U);
  icr_reg = readl((void const volatile *)hw->hw_addr + 128U);
  }
  return ((ctrl_reg & 67108864U) != 0U);
}
}
static ixgb_xpak_vendor ixgb_identify_xpak_vendor(struct ixgb_hw *hw )
{
  u32 i ;
  u16 vendor_name[5U] ;
  ixgb_xpak_vendor xpak_vendor ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_identify_xpak_vendor";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 192U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_identify_xpak_vendor");
    }
  } else {
  }
  i = 0U;
  goto ldv_42262;
  ldv_42261:
  {
  vendor_name[i] = ixgb_read_phy_reg(hw, i + 32826U, 0U, 1U);
  i = i + 1U;
  }
  ldv_42262: ;
  if (i <= 4U) {
    goto ldv_42261;
  } else {
  }
  if (((((unsigned int )vendor_name[0] == 73U && (unsigned int )vendor_name[1] == 78U) && (unsigned int )vendor_name[2] == 84U) && (unsigned int )vendor_name[3] == 69U) && (unsigned int )vendor_name[4] == 76U) {
    xpak_vendor = 0;
  } else {
    xpak_vendor = 1;
  }
  return (xpak_vendor);
}
}
static ixgb_phy_type ixgb_identify_phy(struct ixgb_hw *hw )
{
  ixgb_phy_type phy_type ;
  ixgb_xpak_vendor xpak_vendor ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  struct _ddebug descriptor___7 ;
  long tmp___7 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_identify_phy";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 231U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_identify_phy");
    }
  } else {
  }
  {
  if ((int )hw->device_id == 4168) {
    goto case_4168;
  } else {
  }
  if ((int )hw->device_id == 6728) {
    goto case_6728;
  } else {
  }
  if ((int )hw->device_id == 6984) {
    goto case_6984;
  } else {
  }
  if ((int )hw->device_id == 4254) {
    goto case_4254;
  } else {
  }
  goto switch_default;
  case_4168:
  {
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_identify_phy";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___0.format = "Identified TXN17401 optics\n";
  descriptor___0.lineno = 236U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: Identified TXN17401 optics\n");
    }
  } else {
  }
  phy_type = 4;
  goto ldv_42273;
  case_6728:
  {
  xpak_vendor = ixgb_identify_xpak_vendor(hw);
  }
  if ((unsigned int )xpak_vendor == 0U) {
    {
    descriptor___1.modname = "ixgb";
    descriptor___1.function = "ixgb_identify_phy";
    descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___1.format = "Identified TXN17201 optics\n";
    descriptor___1.lineno = 246U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "ixgb: Identified TXN17201 optics\n");
      }
    } else {
    }
    phy_type = 3;
  } else {
    {
    descriptor___2.modname = "ixgb";
    descriptor___2.function = "ixgb_identify_phy";
    descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___2.format = "Identified G6005 optics\n";
    descriptor___2.lineno = 249U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "ixgb: Identified G6005 optics\n");
      }
    } else {
    }
    phy_type = 1;
  }
  goto ldv_42273;
  case_6984:
  {
  descriptor___3.modname = "ixgb";
  descriptor___3.function = "ixgb_identify_phy";
  descriptor___3.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___3.format = "Identified G6104 optics\n";
  descriptor___3.lineno = 254U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "ixgb: Identified G6104 optics\n");
    }
  } else {
  }
  phy_type = 2;
  goto ldv_42273;
  case_4254:
  {
  descriptor___4.modname = "ixgb";
  descriptor___4.function = "ixgb_identify_phy";
  descriptor___4.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___4.format = "Identified CX4\n";
  descriptor___4.lineno = 258U;
  descriptor___4.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___4, "ixgb: Identified CX4\n");
    }
  } else {
  }
  {
  xpak_vendor = ixgb_identify_xpak_vendor(hw);
  }
  if ((unsigned int )xpak_vendor == 0U) {
    {
    descriptor___5.modname = "ixgb";
    descriptor___5.function = "ixgb_identify_phy";
    descriptor___5.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___5.format = "Identified TXN17201 optics\n";
    descriptor___5.lineno = 261U;
    descriptor___5.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "ixgb: Identified TXN17201 optics\n");
      }
    } else {
    }
    phy_type = 3;
  } else {
    {
    descriptor___6.modname = "ixgb";
    descriptor___6.function = "ixgb_identify_phy";
    descriptor___6.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___6.format = "Identified G6005 optics\n";
    descriptor___6.lineno = 264U;
    descriptor___6.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___6, "ixgb: Identified G6005 optics\n");
      }
    } else {
    }
    phy_type = 1;
  }
  goto ldv_42273;
  switch_default:
  {
  descriptor___7.modname = "ixgb";
  descriptor___7.function = "ixgb_identify_phy";
  descriptor___7.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___7.format = "Unknown physical layer module\n";
  descriptor___7.lineno = 269U;
  descriptor___7.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___7, "ixgb: Unknown physical layer module\n");
    }
  } else {
  }
  phy_type = 0;
  goto ldv_42273;
  switch_break: ;
  }
  ldv_42273: ;
  if ((unsigned int )hw->subsystem_vendor_id == 4238U) {
    phy_type = 5;
  } else {
  }
  return (phy_type);
}
}
bool ixgb_init_hw(struct ixgb_hw *hw )
{
  u32 i ;
  u32 ctrl_reg ;
  bool status ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_init_hw";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 305U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_init_hw");
    }
  } else {
  }
  {
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_init_hw";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___0.format = "Issuing a global reset to MAC\n";
  descriptor___0.lineno = 312U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: Issuing a global reset to MAC\n");
    }
  } else {
  }
  {
  ctrl_reg = ixgb_mac_reset(hw);
  descriptor___1.modname = "ixgb";
  descriptor___1.function = "ixgb_init_hw";
  descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___1.format = "Issuing an EE reset to MAC\n";
  descriptor___1.lineno = 316U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "ixgb: Issuing an EE reset to MAC\n");
    }
  } else {
  }
  {
  writel(8192U, (void volatile *)hw->hw_addr + 8U);
  msleep(10U);
  tmp___2 = ixgb_get_eeprom_data(hw);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  {
  hw->device_id = ixgb_get_ee_device_id(hw);
  hw->phy_type = ixgb_identify_phy(hw);
  ixgb_init_rx_addrs(hw);
  tmp___5 = mac_addr_valid((u8 *)(& hw->curr_mac_addr));
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    {
    descriptor___2.modname = "ixgb";
    descriptor___2.function = "ixgb_init_hw";
    descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___2.format = "MAC address invalid after ixgb_init_rx_addrs\n";
    descriptor___2.lineno = 344U;
    descriptor___2.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "ixgb: MAC address invalid after ixgb_init_rx_addrs\n");
      }
    } else {
    }
    return (0);
  } else {
  }
  {
  hw->adapter_stopped = 0;
  ixgb_get_bus_info(hw);
  descriptor___3.modname = "ixgb";
  descriptor___3.function = "ixgb_init_hw";
  descriptor___3.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___3.format = "Zeroing the MTA\n";
  descriptor___3.lineno = 355U;
  descriptor___3.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "ixgb: Zeroing the MTA\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_42298;
  ldv_42297:
  {
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(i << 2) + 512UL)));
  i = i + 1U;
  }
  ldv_42298: ;
  if (i <= 127U) {
    goto ldv_42297;
  } else {
  }
  {
  ixgb_clear_vfta(hw);
  ixgb_clear_hw_cntrs(hw);
  status = ixgb_setup_fc(hw);
  ixgb_check_for_link(hw);
  }
  return (status);
}
}
static void ixgb_init_rx_addrs(struct ixgb_hw *hw )
{
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_init_rx_addrs";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 388U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_init_rx_addrs");
    }
  } else {
  }
  {
  tmp___3 = mac_addr_valid((u8 *)(& hw->curr_mac_addr));
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    {
    ixgb_get_ee_mac_addr(hw, (u8 *)(& hw->curr_mac_addr));
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "ixgb_init_rx_addrs";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___0.format = "Keeping Permanent MAC Addr = %pM\n";
    descriptor___0.lineno = 401U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: Keeping Permanent MAC Addr = %pM\n",
                         (u8 *)(& hw->curr_mac_addr));
      }
    } else {
    }
  } else {
    {
    descriptor___1.modname = "ixgb";
    descriptor___1.function = "ixgb_init_rx_addrs";
    descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___1.format = "Overriding MAC Address in RAR[0]\n";
    descriptor___1.lineno = 405U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "ixgb: Overriding MAC Address in RAR[0]\n");
      }
    } else {
    }
    {
    descriptor___2.modname = "ixgb";
    descriptor___2.function = "ixgb_init_rx_addrs";
    descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___2.format = "New MAC Addr = %pM\n";
    descriptor___2.lineno = 406U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "ixgb: New MAC Addr = %pM\n", (u8 *)(& hw->curr_mac_addr));
      }
    } else {
    }
    {
    ixgb_rar_set(hw, (u8 *)(& hw->curr_mac_addr), 0U);
    }
  }
  {
  descriptor___3.modname = "ixgb";
  descriptor___3.function = "ixgb_init_rx_addrs";
  descriptor___3.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___3.format = "Clearing RAR[1-15]\n";
  descriptor___3.lineno = 412U;
  descriptor___3.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "ixgb: Clearing RAR[1-15]\n");
    }
  } else {
  }
  i = 1U;
  goto ldv_42311;
  ldv_42310:
  {
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(((i << 1) + 1U) << 2) + 384UL)));
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(i << 3U) + 384UL)));
  i = i + 1U;
  }
  ldv_42311: ;
  if (i <= 2U) {
    goto ldv_42310;
  } else {
  }
  return;
}
}
void ixgb_mc_addr_list_update(struct ixgb_hw *hw , u8 *mc_addr_list , u32 mc_addr_count ,
                              u32 pad )
{
  u32 hash_value ;
  u32 i ;
  u32 rar_used_count ;
  u8 *mca ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  {
  {
  rar_used_count = 1U;
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_mc_addr_list_update";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 444U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_mc_addr_list_update");
    }
  } else {
  }
  {
  hw->num_mc_addrs = mc_addr_count;
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_mc_addr_list_update";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___0.format = "Clearing RAR[1-15]\n";
  descriptor___0.lineno = 450U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: Clearing RAR[1-15]\n");
    }
  } else {
  }
  i = rar_used_count;
  goto ldv_42327;
  ldv_42326:
  {
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(i << 3U) + 384UL)));
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(((i << 1) + 1U) << 2) + 384UL)));
  i = i + 1U;
  }
  ldv_42327: ;
  if (i <= 2U) {
    goto ldv_42326;
  } else {
  }
  {
  descriptor___1.modname = "ixgb";
  descriptor___1.function = "ixgb_mc_addr_list_update";
  descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___1.format = "Clearing MTA\n";
  descriptor___1.lineno = 457U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___1, "ixgb: Clearing MTA\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_42331;
  ldv_42330:
  {
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(i << 2) + 512UL)));
  i = i + 1U;
  }
  ldv_42331: ;
  if (i <= 127U) {
    goto ldv_42330;
  } else {
  }
  mca = mc_addr_list;
  i = 0U;
  goto ldv_42338;
  ldv_42337:
  {
  descriptor___2.modname = "ixgb";
  descriptor___2.function = "ixgb_mc_addr_list_update";
  descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___2.format = "Adding the multicast addresses:\n";
  descriptor___2.lineno = 464U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___2, "ixgb: Adding the multicast addresses:\n");
    }
  } else {
  }
  {
  descriptor___3.modname = "ixgb";
  descriptor___3.function = "ixgb_mc_addr_list_update";
  descriptor___3.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___3.format = "MC Addr #%d = %pM\n";
  descriptor___3.lineno = 465U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___3, "ixgb: MC Addr #%d = %pM\n", i, mca);
    }
  } else {
  }
  if (rar_used_count <= 2U) {
    {
    ixgb_rar_set(hw, mca, rar_used_count);
    descriptor___4.modname = "ixgb";
    descriptor___4.function = "ixgb_mc_addr_list_update";
    descriptor___4.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___4.format = "Added a multicast address to RAR[%d]\n";
    descriptor___4.lineno = 472U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "ixgb: Added a multicast address to RAR[%d]\n",
                         i);
      }
    } else {
    }
    rar_used_count = rar_used_count + 1U;
  } else {
    {
    hash_value = ixgb_hash_mc_addr(hw, mca);
    descriptor___5.modname = "ixgb";
    descriptor___5.function = "ixgb_mc_addr_list_update";
    descriptor___5.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___5.format = "Hash value = 0x%03X\n";
    descriptor___5.lineno = 477U;
    descriptor___5.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "ixgb: Hash value = 0x%03X\n", hash_value);
      }
    } else {
    }
    {
    ixgb_mta_set(hw, hash_value);
    }
  }
  mca = mca + (unsigned long )(pad + 6U);
  i = i + 1U;
  ldv_42338: ;
  if (i < mc_addr_count) {
    goto ldv_42337;
  } else {
  }
  {
  descriptor___6.modname = "ixgb";
  descriptor___6.function = "ixgb_mc_addr_list_update";
  descriptor___6.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___6.format = "MC Update Complete\n";
  descriptor___6.lineno = 485U;
  descriptor___6.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  }
  if (tmp___6 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___6, "ixgb: MC Update Complete\n");
    }
  } else {
  }
  return;
}
}
static u32 ixgb_hash_mc_addr(struct ixgb_hw *hw , u8 *mc_addr )
{
  u32 hash_value ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  hash_value = 0U;
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_hash_mc_addr";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 503U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_hash_mc_addr");
    }
  } else {
  }
  {
  if (hw->mc_filter_type == 0U) {
    goto case_0;
  } else {
  }
  if (hw->mc_filter_type == 1U) {
    goto case_1;
  } else {
  }
  if (hw->mc_filter_type == 2U) {
    goto case_2;
  } else {
  }
  if (hw->mc_filter_type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  hash_value = (u32 )(((int )*(mc_addr + 4UL) >> 4) | ((int )*(mc_addr + 5UL) << 4));
  goto ldv_42349;
  case_1:
  hash_value = (u32 )(((int )*(mc_addr + 4UL) >> 3) | ((int )*(mc_addr + 5UL) << 5));
  goto ldv_42349;
  case_2:
  hash_value = (u32 )(((int )*(mc_addr + 4UL) >> 2) | ((int )*(mc_addr + 5UL) << 6));
  goto ldv_42349;
  case_3:
  hash_value = (u32 )((int )*(mc_addr + 4UL) | ((int )*(mc_addr + 5UL) << 8));
  goto ldv_42349;
  switch_default:
  {
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_hash_mc_addr";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___0.format = "MC filter type param set incorrectly\n";
  descriptor___0.lineno = 530U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: MC filter type param set incorrectly\n");
    }
  } else {
  }
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                       "i" (531), "i" (12UL));
  __builtin_unreachable();
  }
  goto ldv_42349;
  switch_break: ;
  }
  ldv_42349:
  hash_value = hash_value & 4095U;
  return (hash_value);
}
}
static void ixgb_mta_set(struct ixgb_hw *hw , u32 hash_value )
{
  u32 hash_bit ;
  u32 hash_reg ;
  u32 mta_reg ;
  {
  {
  hash_reg = (hash_value >> 5) & 127U;
  hash_bit = hash_value & 31U;
  mta_reg = readl((void const volatile *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 512UL)));
  mta_reg = mta_reg | (u32 )(1 << (int )hash_bit);
  writel(mta_reg, (void volatile *)(hw->hw_addr + ((unsigned long )(hash_reg << 2) + 512UL)));
  }
  return;
}
}
void ixgb_rar_set(struct ixgb_hw *hw , u8 *addr , u32 index )
{
  u32 rar_low ;
  u32 rar_high ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_rar_set";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 584U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_rar_set");
    }
  } else {
  }
  {
  rar_low = (((unsigned int )*addr | ((unsigned int )*(addr + 1UL) << 8)) | ((unsigned int )*(addr + 2UL) << 16)) | ((unsigned int )*(addr + 3UL) << 24);
  rar_high = ((unsigned int )*(addr + 4UL) | ((unsigned int )*(addr + 5UL) << 8)) | 2147483648U;
  writel(rar_low, (void volatile *)(hw->hw_addr + ((unsigned long )(index << 3U) + 384UL)));
  writel(rar_high, (void volatile *)(hw->hw_addr + ((unsigned long )(((index << 1) + 1U) << 2) + 384UL)));
  }
  return;
}
}
void ixgb_write_vfta(struct ixgb_hw *hw , u32 offset , u32 value )
{
  {
  {
  writel(value, (void volatile *)(hw->hw_addr + ((unsigned long )(offset << 2) + 1024UL)));
  }
  return;
}
}
static void ixgb_clear_vfta(struct ixgb_hw *hw )
{
  u32 offset ;
  {
  offset = 0U;
  goto ldv_42381;
  ldv_42380:
  {
  writel(0U, (void volatile *)(hw->hw_addr + ((unsigned long )(offset << 2) + 1024UL)));
  offset = offset + 1U;
  }
  ldv_42381: ;
  if (offset <= 127U) {
    goto ldv_42380;
  } else {
  }
  return;
}
}
static bool ixgb_setup_fc(struct ixgb_hw *hw )
{
  u32 ctrl_reg ;
  u32 pap_reg ;
  bool status ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  pap_reg = 0U;
  status = 1;
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_setup_fc";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 644U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_setup_fc");
    }
  } else {
  }
  {
  ctrl_reg = readl((void const volatile *)hw->hw_addr);
  ctrl_reg = ctrl_reg & 3892314111U;
  }
  {
  if ((unsigned int )hw->fc.type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )hw->fc.type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )hw->fc.type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )hw->fc.type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  ctrl_reg = ctrl_reg | 128U;
  goto ldv_42392;
  case_1:
  ctrl_reg = ctrl_reg | 134217728U;
  goto ldv_42392;
  case_2:
  ctrl_reg = ctrl_reg | 268435456U;
  pap_reg = (u32 )hw->fc.pause_time;
  goto ldv_42392;
  case_3:
  ctrl_reg = ctrl_reg | 402653184U;
  pap_reg = (u32 )hw->fc.pause_time;
  goto ldv_42392;
  switch_default:
  {
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_setup_fc";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor___0.format = "Flow control param set incorrectly\n";
  descriptor___0.lineno = 688U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: Flow control param set incorrectly\n");
    }
  } else {
  }
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                       "i" (689), "i" (12UL));
  __builtin_unreachable();
  }
  goto ldv_42392;
  switch_break: ;
  }
  ldv_42392:
  {
  writel(ctrl_reg, (void volatile *)hw->hw_addr);
  }
  if (pap_reg != 0U) {
    {
    writel(pap_reg, (void volatile *)hw->hw_addr + 1600U);
    }
  } else {
  }
  if (((unsigned int )hw->fc.type & 2U) == 0U) {
    {
    writel(0U, (void volatile *)hw->hw_addr + 264U);
    writel(0U, (void volatile *)hw->hw_addr + 272U);
    }
  } else {
    if ((int )hw->fc.send_xon) {
      {
      writel(hw->fc.low_water | 2147483648U, (void volatile *)hw->hw_addr + 264U);
      }
    } else {
      {
      writel(hw->fc.low_water, (void volatile *)hw->hw_addr + 264U);
      }
    }
    {
    writel(hw->fc.high_water, (void volatile *)hw->hw_addr + 272U);
    }
  }
  return (status);
}
}
static u16 ixgb_read_phy_reg(struct ixgb_hw *hw , u32 reg_address , u32 phy_address ,
                             u32 device_type )
{
  u32 i ;
  u32 data ;
  u32 command ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  command = 0U;
  tmp = ldv__builtin_expect(reg_address > 65535U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (748), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(phy_address > 31U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (749), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(device_type > 31U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (750), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  command = ((reg_address | (device_type << 16)) | (phy_address << 21)) | 1073741824U;
  writel(command, (void volatile *)hw->hw_addr + 1880U);
  i = 0U;
  }
  goto ldv_42409;
  ldv_42408:
  {
  __const_udelay(42950UL);
  command = readl((void const volatile *)hw->hw_addr + 1880U);
  }
  if ((command & 1073741824U) == 0U) {
    goto ldv_42407;
  } else {
  }
  i = i + 1U;
  ldv_42409: ;
  if (i <= 9U) {
    goto ldv_42408;
  } else {
  }
  ldv_42407:
  {
  tmp___2 = ldv__builtin_expect((command & 1073741824U) != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (777), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  command = ((reg_address | (device_type << 16)) | (phy_address << 21)) | 1207959552U;
  writel(command, (void volatile *)hw->hw_addr + 1880U);
  i = 0U;
  }
  goto ldv_42412;
  ldv_42411:
  {
  __const_udelay(42950UL);
  command = readl((void const volatile *)hw->hw_addr + 1880U);
  }
  if ((command & 1073741824U) == 0U) {
    goto ldv_42410;
  } else {
  }
  i = i + 1U;
  ldv_42412: ;
  if (i <= 9U) {
    goto ldv_42411;
  } else {
  }
  ldv_42410:
  {
  tmp___3 = ldv__builtin_expect((command & 1073741824U) != 0U, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  data = readl((void const volatile *)hw->hw_addr + 1888U);
  data = data >> 16;
  }
  return ((u16 )data);
}
}
static void ixgb_write_phy_reg(struct ixgb_hw *hw , u32 reg_address , u32 phy_address ,
                               u32 device_type , u16 data )
{
  u32 i ;
  u32 command ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  {
  command = 0U;
  tmp = ldv__builtin_expect(reg_address > 65535U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (841), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(phy_address > 31U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (842), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(device_type > 31U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (843), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  writel((unsigned int )data, (void volatile *)hw->hw_addr + 1888U);
  command = ((reg_address | (device_type << 16)) | (phy_address << 21)) | 1073741824U;
  writel(command, (void volatile *)hw->hw_addr + 1880U);
  i = 0U;
  }
  goto ldv_42424;
  ldv_42423:
  {
  __const_udelay(42950UL);
  command = readl((void const volatile *)hw->hw_addr + 1880U);
  }
  if ((command & 1073741824U) == 0U) {
    goto ldv_42422;
  } else {
  }
  i = i + 1U;
  ldv_42424: ;
  if (i <= 9U) {
    goto ldv_42423;
  } else {
  }
  ldv_42422:
  {
  tmp___2 = ldv__builtin_expect((command & 1073741824U) != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (873), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  command = ((reg_address | (device_type << 16)) | (phy_address << 21)) | 1140850688U;
  writel(command, (void volatile *)hw->hw_addr + 1880U);
  i = 0U;
  }
  goto ldv_42427;
  ldv_42426:
  {
  __const_udelay(42950UL);
  command = readl((void const volatile *)hw->hw_addr + 1880U);
  }
  if ((command & 1073741824U) == 0U) {
    goto ldv_42425;
  } else {
  }
  i = i + 1U;
  ldv_42427: ;
  if (i <= 9U) {
    goto ldv_42426;
  } else {
  }
  ldv_42425:
  {
  tmp___3 = ldv__builtin_expect((command & 1073741824U) != 0U, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_hw.c"),
                         "i" (900), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return;
}
}
void ixgb_check_for_link(struct ixgb_hw *hw )
{
  u32 status_reg ;
  u32 xpcss_reg ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_check_for_link";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 918U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_check_for_link");
    }
  } else {
  }
  {
  xpcss_reg = readl((void const volatile *)hw->hw_addr + 1824U);
  status_reg = readl((void const volatile *)hw->hw_addr + 16U);
  }
  if ((xpcss_reg & 4096U) != 0U && (status_reg & 2U) != 0U) {
    hw->link_up = 1;
  } else
  if ((xpcss_reg & 4096U) == 0U && (status_reg & 2U) != 0U) {
    {
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "ixgb_check_for_link";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___0.format = "XPCSS Not Aligned while Status:LU is set\n";
    descriptor___0.lineno = 928U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: XPCSS Not Aligned while Status:LU is set\n");
      }
    } else {
    }
    {
    hw->link_up = ixgb_link_reset(hw);
    }
  } else {
    {
    hw->link_up = ixgb_link_reset(hw);
    }
  }
  return;
}
}
bool ixgb_check_for_bad_link(struct ixgb_hw *hw )
{
  u32 newLFC ;
  u32 newRFC ;
  bool bad_link_returncode ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  bad_link_returncode = 0;
  if ((unsigned int )hw->phy_type == 4U) {
    {
    newLFC = readl((void const volatile *)hw->hw_addr + 8592U);
    newRFC = readl((void const volatile *)hw->hw_addr + 8584U);
    }
    if (hw->lastLFC + 250U < newLFC || hw->lastRFC + 250U < newRFC) {
      {
      descriptor.modname = "ixgb";
      descriptor.function = "ixgb_check_for_bad_link";
      descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
      descriptor.format = "BAD LINK! too many LFC/RFC since last check\n";
      descriptor.lineno = 959U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "ixgb: BAD LINK! too many LFC/RFC since last check\n");
        }
      } else {
      }
      bad_link_returncode = 1;
    } else {
    }
    hw->lastLFC = newLFC;
    hw->lastRFC = newRFC;
  } else {
  }
  return (bad_link_returncode);
}
}
static void ixgb_clear_hw_cntrs(struct ixgb_hw *hw )
{
  u32 volatile temp_reg ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
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
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  unsigned int tmp___22 ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  unsigned int tmp___25 ;
  unsigned int tmp___26 ;
  unsigned int tmp___27 ;
  unsigned int tmp___28 ;
  unsigned int tmp___29 ;
  unsigned int tmp___30 ;
  unsigned int tmp___31 ;
  unsigned int tmp___32 ;
  unsigned int tmp___33 ;
  unsigned int tmp___34 ;
  unsigned int tmp___35 ;
  unsigned int tmp___36 ;
  unsigned int tmp___37 ;
  unsigned int tmp___38 ;
  unsigned int tmp___39 ;
  unsigned int tmp___40 ;
  unsigned int tmp___41 ;
  unsigned int tmp___42 ;
  unsigned int tmp___43 ;
  unsigned int tmp___44 ;
  unsigned int tmp___45 ;
  unsigned int tmp___46 ;
  unsigned int tmp___47 ;
  unsigned int tmp___48 ;
  unsigned int tmp___49 ;
  unsigned int tmp___50 ;
  unsigned int tmp___51 ;
  unsigned int tmp___52 ;
  unsigned int tmp___53 ;
  unsigned int tmp___54 ;
  unsigned int tmp___55 ;
  unsigned int tmp___56 ;
  unsigned int tmp___57 ;
  unsigned int tmp___58 ;
  unsigned int tmp___59 ;
  unsigned int tmp___60 ;
  {
  {
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_clear_hw_cntrs";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 979U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_clear_hw_cntrs");
    }
  } else {
  }
  if ((int )hw->adapter_stopped) {
    {
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "ixgb_clear_hw_cntrs";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___0.format = "Exiting because the adapter is stopped!!!\n";
    descriptor___0.lineno = 983U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: Exiting because the adapter is stopped!!!\n");
      }
    } else {
    }
    return;
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)hw->hw_addr + 8192U);
  temp_reg = tmp___1;
  tmp___2 = readl((void const volatile *)hw->hw_addr + 8196U);
  temp_reg = tmp___2;
  tmp___3 = readl((void const volatile *)hw->hw_addr + 8200U);
  temp_reg = tmp___3;
  tmp___4 = readl((void const volatile *)hw->hw_addr + 8204U);
  temp_reg = tmp___4;
  tmp___5 = readl((void const volatile *)hw->hw_addr + 8208U);
  temp_reg = tmp___5;
  tmp___6 = readl((void const volatile *)hw->hw_addr + 8212U);
  temp_reg = tmp___6;
  tmp___7 = readl((void const volatile *)hw->hw_addr + 8216U);
  temp_reg = tmp___7;
  tmp___8 = readl((void const volatile *)hw->hw_addr + 8220U);
  temp_reg = tmp___8;
  tmp___9 = readl((void const volatile *)hw->hw_addr + 8224U);
  temp_reg = tmp___9;
  tmp___10 = readl((void const volatile *)hw->hw_addr + 8228U);
  temp_reg = tmp___10;
  tmp___11 = readl((void const volatile *)hw->hw_addr + 8232U);
  temp_reg = tmp___11;
  tmp___12 = readl((void const volatile *)hw->hw_addr + 8236U);
  temp_reg = tmp___12;
  tmp___13 = readl((void const volatile *)hw->hw_addr + 8240U);
  temp_reg = tmp___13;
  tmp___14 = readl((void const volatile *)hw->hw_addr + 8244U);
  temp_reg = tmp___14;
  tmp___15 = readl((void const volatile *)hw->hw_addr + 8248U);
  temp_reg = tmp___15;
  tmp___16 = readl((void const volatile *)hw->hw_addr + 8252U);
  temp_reg = tmp___16;
  tmp___17 = readl((void const volatile *)hw->hw_addr + 8256U);
  temp_reg = tmp___17;
  tmp___18 = readl((void const volatile *)hw->hw_addr + 8260U);
  temp_reg = tmp___18;
  tmp___19 = readl((void const volatile *)hw->hw_addr + 8264U);
  temp_reg = tmp___19;
  tmp___20 = readl((void const volatile *)hw->hw_addr + 8272U);
  temp_reg = tmp___20;
  tmp___21 = readl((void const volatile *)hw->hw_addr + 8280U);
  temp_reg = tmp___21;
  tmp___22 = readl((void const volatile *)hw->hw_addr + 8288U);
  temp_reg = tmp___22;
  tmp___23 = readl((void const volatile *)hw->hw_addr + 8296U);
  temp_reg = tmp___23;
  tmp___24 = readl((void const volatile *)hw->hw_addr + 8304U);
  temp_reg = tmp___24;
  tmp___25 = readl((void const volatile *)hw->hw_addr + 8312U);
  temp_reg = tmp___25;
  tmp___26 = readl((void const volatile *)hw->hw_addr + 8320U);
  temp_reg = tmp___26;
  tmp___27 = readl((void const volatile *)hw->hw_addr + 8448U);
  temp_reg = tmp___27;
  tmp___28 = readl((void const volatile *)hw->hw_addr + 8452U);
  temp_reg = tmp___28;
  tmp___29 = readl((void const volatile *)hw->hw_addr + 8456U);
  temp_reg = tmp___29;
  tmp___30 = readl((void const volatile *)hw->hw_addr + 8460U);
  temp_reg = tmp___30;
  tmp___31 = readl((void const volatile *)hw->hw_addr + 8464U);
  temp_reg = tmp___31;
  tmp___32 = readl((void const volatile *)hw->hw_addr + 8468U);
  temp_reg = tmp___32;
  tmp___33 = readl((void const volatile *)hw->hw_addr + 8472U);
  temp_reg = tmp___33;
  tmp___34 = readl((void const volatile *)hw->hw_addr + 8476U);
  temp_reg = tmp___34;
  tmp___35 = readl((void const volatile *)hw->hw_addr + 8480U);
  temp_reg = tmp___35;
  tmp___36 = readl((void const volatile *)hw->hw_addr + 8484U);
  temp_reg = tmp___36;
  tmp___37 = readl((void const volatile *)hw->hw_addr + 8488U);
  temp_reg = tmp___37;
  tmp___38 = readl((void const volatile *)hw->hw_addr + 8492U);
  temp_reg = tmp___38;
  tmp___39 = readl((void const volatile *)hw->hw_addr + 8496U);
  temp_reg = tmp___39;
  tmp___40 = readl((void const volatile *)hw->hw_addr + 8500U);
  temp_reg = tmp___40;
  tmp___41 = readl((void const volatile *)hw->hw_addr + 8504U);
  temp_reg = tmp___41;
  tmp___42 = readl((void const volatile *)hw->hw_addr + 8508U);
  temp_reg = tmp___42;
  tmp___43 = readl((void const volatile *)hw->hw_addr + 8512U);
  temp_reg = tmp___43;
  tmp___44 = readl((void const volatile *)hw->hw_addr + 8516U);
  temp_reg = tmp___44;
  tmp___45 = readl((void const volatile *)hw->hw_addr + 8520U);
  temp_reg = tmp___45;
  tmp___46 = readl((void const volatile *)hw->hw_addr + 8528U);
  temp_reg = tmp___46;
  tmp___47 = readl((void const volatile *)hw->hw_addr + 8560U);
  temp_reg = tmp___47;
  tmp___48 = readl((void const volatile *)hw->hw_addr + 8568U);
  temp_reg = tmp___48;
  tmp___49 = readl((void const volatile *)hw->hw_addr + 8576U);
  temp_reg = tmp___49;
  tmp___50 = readl((void const volatile *)hw->hw_addr + 8584U);
  temp_reg = tmp___50;
  tmp___51 = readl((void const volatile *)hw->hw_addr + 8592U);
  temp_reg = tmp___51;
  tmp___52 = readl((void const volatile *)hw->hw_addr + 8600U);
  temp_reg = tmp___52;
  tmp___53 = readl((void const volatile *)hw->hw_addr + 8608U);
  temp_reg = tmp___53;
  tmp___54 = readl((void const volatile *)hw->hw_addr + 8616U);
  temp_reg = tmp___54;
  tmp___55 = readl((void const volatile *)hw->hw_addr + 8624U);
  temp_reg = tmp___55;
  tmp___56 = readl((void const volatile *)hw->hw_addr + 8632U);
  temp_reg = tmp___56;
  tmp___57 = readl((void const volatile *)hw->hw_addr + 8640U);
  temp_reg = tmp___57;
  tmp___58 = readl((void const volatile *)hw->hw_addr + 8648U);
  temp_reg = tmp___58;
  tmp___59 = readl((void const volatile *)hw->hw_addr + 8656U);
  temp_reg = tmp___59;
  tmp___60 = readl((void const volatile *)hw->hw_addr + 8664U);
  temp_reg = tmp___60;
  }
  return;
}
}
void ixgb_led_on(struct ixgb_hw *hw )
{
  u32 ctrl0_reg ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)hw->hw_addr);
  ctrl0_reg = tmp;
  ctrl0_reg = ctrl0_reg & 4294705151U;
  writel(ctrl0_reg, (void volatile *)hw->hw_addr);
  }
  return;
}
}
void ixgb_led_off(struct ixgb_hw *hw )
{
  u32 ctrl0_reg ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)hw->hw_addr);
  ctrl0_reg = tmp;
  ctrl0_reg = ctrl0_reg | 262144U;
  writel(ctrl0_reg, (void volatile *)hw->hw_addr);
  }
  return;
}
}
static void ixgb_get_bus_info(struct ixgb_hw *hw )
{
  u32 status_reg ;
  {
  {
  status_reg = readl((void const volatile *)hw->hw_addr + 16U);
  hw->bus.type = (status_reg & 8192U) != 0U ? 2 : 1;
  }
  if ((unsigned int )hw->bus.type == 1U) {
    hw->bus.speed = (status_reg & 2048U) != 0U ? 2 : 1;
  } else {
    {
    if ((status_reg & 49152U) == 0U) {
      goto case_0;
    } else {
    }
    if ((status_reg & 49152U) == 16384U) {
      goto case_16384;
    } else {
    }
    if ((status_reg & 49152U) == 32768U) {
      goto case_32768;
    } else {
    }
    goto switch_default;
    case_0:
    hw->bus.speed = 2;
    goto ldv_42464;
    case_16384:
    hw->bus.speed = 3;
    goto ldv_42464;
    case_32768:
    hw->bus.speed = 4;
    goto ldv_42464;
    switch_default:
    hw->bus.speed = 5;
    goto ldv_42464;
    switch_break: ;
    }
    ldv_42464: ;
  }
  hw->bus.width = (status_reg & 4096U) != 0U ? 2 : 1;
  return;
}
}
static bool mac_addr_valid(u8 *mac_addr )
{
  bool is_valid ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  bool tmp___5 ;
  {
  {
  is_valid = 1;
  descriptor.modname = "ixgb";
  descriptor.function = "mac_addr_valid";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 1128U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "mac_addr_valid");
    }
  } else {
  }
  {
  tmp___5 = is_multicast_ether_addr((u8 const *)mac_addr);
  }
  if ((int )tmp___5) {
    {
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "mac_addr_valid";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
    descriptor___0.format = "MAC address is multicast\n";
    descriptor___0.lineno = 1132U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: MAC address is multicast\n");
      }
    } else {
    }
    is_valid = 0;
  } else {
    {
    tmp___4 = is_broadcast_ether_addr((u8 const *)mac_addr);
    }
    if ((int )tmp___4) {
      {
      descriptor___1.modname = "ixgb";
      descriptor___1.function = "mac_addr_valid";
      descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
      descriptor___1.format = "MAC address is broadcast\n";
      descriptor___1.lineno = 1137U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "ixgb: MAC address is broadcast\n");
        }
      } else {
      }
      is_valid = 0;
    } else {
      {
      tmp___3 = is_zero_ether_addr((u8 const *)mac_addr);
      }
      if ((int )tmp___3) {
        {
        descriptor___2.modname = "ixgb";
        descriptor___2.function = "mac_addr_valid";
        descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_hw.c";
        descriptor___2.format = "MAC address is all zeros\n";
        descriptor___2.lineno = 1142U;
        descriptor___2.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
        }
        if (tmp___2 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___2, "ixgb: MAC address is all zeros\n");
          }
        } else {
        }
        is_valid = 0;
      } else {
      }
    }
  }
  return (is_valid);
}
}
static bool ixgb_link_reset(struct ixgb_hw *hw )
{
  bool link_status ;
  u8 wait_retries ;
  u8 lrst_retries ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  link_status = 0;
  wait_retries = 8U;
  lrst_retries = 8U;
  ldv_42485:
  {
  tmp = readl((void const volatile *)hw->hw_addr);
  writel(tmp | 8U, (void volatile *)hw->hw_addr);
  }
  ldv_42483:
  {
  __const_udelay(55835UL);
  tmp___0 = readl((void const volatile *)hw->hw_addr + 16U);
  }
  if ((tmp___0 & 2U) != 0U) {
    {
    tmp___1 = readl((void const volatile *)hw->hw_addr + 1824U);
    }
    if ((tmp___1 & 4096U) != 0U) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  link_status = (bool )tmp___2;
  if (! link_status) {
    wait_retries = (u8 )((int )wait_retries - 1);
    if ((unsigned int )wait_retries != 0U) {
      goto ldv_42483;
    } else {
      goto ldv_42484;
    }
  } else {
  }
  ldv_42484: ;
  if (! link_status) {
    lrst_retries = (u8 )((int )lrst_retries - 1);
    if ((unsigned int )lrst_retries != 0U) {
      goto ldv_42485;
    } else {
      goto ldv_42486;
    }
  } else {
  }
  ldv_42486: ;
  return (link_status);
}
}
static void ixgb_optics_reset(struct ixgb_hw *hw )
{
  u16 mdio_reg ;
  {
  if ((unsigned int )hw->phy_type == 4U) {
    {
    ixgb_write_phy_reg(hw, 0U, 0U, 1U, 32768);
    mdio_reg = ixgb_read_phy_reg(hw, 0U, 0U, 1U);
    }
  } else {
  }
  return;
}
}
static void ixgb_optics_reset_bcm(struct ixgb_hw *hw )
{
  u32 ctrl ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)hw->hw_addr);
  ctrl = tmp;
  ctrl = ctrl & 4293918719U;
  ctrl = ctrl | 2097152U;
  writel(ctrl, (void volatile *)hw->hw_addr);
  readl((void const volatile *)hw->hw_addr + 16U);
  msleep(305U);
  ixgb_write_phy_reg(hw, 51203U, 0U, 3U, 356);
  ixgb_read_phy_reg(hw, 51203U, 0U, 3U);
  ixgb_read_phy_reg(hw, 51203U, 0U, 3U);
  ixgb_write_phy_reg(hw, 51200U, 0U, 3U, 32703);
  ixgb_read_phy_reg(hw, 51200U, 0U, 3U);
  ixgb_read_phy_reg(hw, 51200U, 0U, 3U);
  msleep(305U);
  }
  return;
}
}
__le16 ixgb_get_eeprom_word(struct ixgb_hw *hw , u16 index ) ;
u16 ixgb_read_eeprom(struct ixgb_hw *hw , u16 offset ) ;
void ixgb_update_eeprom_checksum(struct ixgb_hw *hw ) ;
void ixgb_write_eeprom(struct ixgb_hw *hw , u16 offset , u16 data ) ;
static u16 ixgb_shift_in_bits(struct ixgb_hw *hw ) ;
static void ixgb_shift_out_bits(struct ixgb_hw *hw , u16 data , u16 count ) ;
static void ixgb_standby_eeprom(struct ixgb_hw *hw ) ;
static bool ixgb_wait_eeprom_command(struct ixgb_hw *hw ) ;
static void ixgb_cleanup_eeprom(struct ixgb_hw *hw ) ;
static void ixgb_raise_clock(struct ixgb_hw *hw , u32 *eecd_reg )
{
  {
  {
  *eecd_reg = *eecd_reg | 1U;
  writel(*eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  }
  return;
}
}
static void ixgb_lower_clock(struct ixgb_hw *hw , u32 *eecd_reg )
{
  {
  {
  *eecd_reg = *eecd_reg & 4294967294U;
  writel(*eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  }
  return;
}
}
static void ixgb_shift_out_bits(struct ixgb_hw *hw , u16 data , u16 count )
{
  u32 eecd_reg ;
  u32 mask ;
  {
  {
  mask = (u32 )(1 << ((int )count + -1));
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967283U;
  }
  ldv_42090:
  eecd_reg = eecd_reg & 4294967291U;
  if (((u32 )data & mask) != 0U) {
    eecd_reg = eecd_reg | 4U;
  } else {
  }
  {
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  ixgb_raise_clock(hw, & eecd_reg);
  ixgb_lower_clock(hw, & eecd_reg);
  mask = mask >> 1;
  }
  if (mask != 0U) {
    goto ldv_42090;
  } else {
  }
  {
  eecd_reg = eecd_reg & 4294967291U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  }
  return;
}
}
static u16 ixgb_shift_in_bits(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  u32 i ;
  u16 data ;
  {
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967283U;
  data = 0U;
  i = 0U;
  }
  goto ldv_42099;
  ldv_42098:
  {
  data = (int )data << 1U;
  ixgb_raise_clock(hw, & eecd_reg);
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967291U;
  }
  if ((eecd_reg & 8U) != 0U) {
    data = (u16 )((unsigned int )data | 1U);
  } else {
  }
  {
  ixgb_lower_clock(hw, & eecd_reg);
  i = i + 1U;
  }
  ldv_42099: ;
  if (i <= 15U) {
    goto ldv_42098;
  } else {
  }
  return (data);
}
}
static void ixgb_setup_eeprom(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  {
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967290U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg | 2U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  }
  return;
}
}
static void ixgb_standby_eeprom(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  {
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967292U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  eecd_reg = eecd_reg | 1U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  eecd_reg = eecd_reg | 2U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  eecd_reg = eecd_reg & 4294967294U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  }
  return;
}
}
static void ixgb_clock_eeprom(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  {
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg | 1U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  eecd_reg = eecd_reg & 4294967294U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  readl((void const volatile *)hw->hw_addr + 16U);
  __const_udelay(214750UL);
  }
  return;
}
}
static void ixgb_cleanup_eeprom(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  {
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  eecd_reg = eecd_reg & 4294967289U;
  writel(eecd_reg, (void volatile *)hw->hw_addr + 24U);
  ixgb_clock_eeprom(hw);
  }
  return;
}
}
static bool ixgb_wait_eeprom_command(struct ixgb_hw *hw )
{
  u32 eecd_reg ;
  u32 i ;
  {
  {
  ixgb_standby_eeprom(hw);
  i = 0U;
  }
  goto ldv_42123;
  ldv_42122:
  {
  eecd_reg = readl((void const volatile *)hw->hw_addr + 24U);
  }
  if ((eecd_reg & 8U) != 0U) {
    return (1);
  } else {
  }
  {
  __const_udelay(214750UL);
  i = i + 1U;
  }
  ldv_42123: ;
  if (i <= 199U) {
    goto ldv_42122;
  } else {
  }
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_ee.c"),
                       "i" (312), "i" (12UL));
  __builtin_unreachable();
  }
  return (0);
}
}
bool ixgb_validate_eeprom_checksum(struct ixgb_hw *hw )
{
  u16 checksum ;
  u16 i ;
  u16 tmp ;
  {
  checksum = 0U;
  i = 0U;
  goto ldv_42131;
  ldv_42130:
  {
  tmp = ixgb_read_eeprom(hw, (int )i);
  checksum = (int )checksum + (int )tmp;
  i = (u16 )((int )i + 1);
  }
  ldv_42131: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_42130;
  } else {
  }
  if ((unsigned int )checksum == 47802U) {
    return (1);
  } else {
    return (0);
  }
}
}
void ixgb_update_eeprom_checksum(struct ixgb_hw *hw )
{
  u16 checksum ;
  u16 i ;
  u16 tmp ;
  {
  checksum = 0U;
  i = 0U;
  goto ldv_42139;
  ldv_42138:
  {
  tmp = ixgb_read_eeprom(hw, (int )i);
  checksum = (int )checksum + (int )tmp;
  i = (u16 )((int )i + 1);
  }
  ldv_42139: ;
  if ((unsigned int )i <= 62U) {
    goto ldv_42138;
  } else {
  }
  {
  checksum = 47802U - (unsigned int )checksum;
  ixgb_write_eeprom(hw, 63, (int )checksum);
  }
  return;
}
}
void ixgb_write_eeprom(struct ixgb_hw *hw , u16 offset , u16 data )
{
  struct ixgb_ee_map_type *ee_map ;
  {
  {
  ee_map = (struct ixgb_ee_map_type *)(& hw->eeprom);
  ixgb_setup_eeprom(hw);
  ixgb_shift_out_bits(hw, 19, 5);
  ixgb_shift_out_bits(hw, 0, 4);
  ixgb_standby_eeprom(hw);
  ixgb_shift_out_bits(hw, 5, 3);
  ixgb_shift_out_bits(hw, (int )offset, 6);
  ixgb_shift_out_bits(hw, (int )data, 16);
  ixgb_wait_eeprom_command(hw);
  ixgb_standby_eeprom(hw);
  ixgb_shift_out_bits(hw, 16, 5);
  ixgb_shift_out_bits(hw, 0, 4);
  ixgb_cleanup_eeprom(hw);
  ee_map->init_ctrl_reg_1 = 0U;
  }
  return;
}
}
u16 ixgb_read_eeprom(struct ixgb_hw *hw , u16 offset )
{
  u16 data ;
  {
  {
  ixgb_setup_eeprom(hw);
  ixgb_shift_out_bits(hw, 6, 3);
  ixgb_shift_out_bits(hw, (int )offset, 6);
  data = ixgb_shift_in_bits(hw);
  ixgb_standby_eeprom(hw);
  }
  return (data);
}
}
bool ixgb_get_eeprom_data(struct ixgb_hw *hw )
{
  u16 i ;
  u16 checksum ;
  struct ixgb_ee_map_type *ee_map ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u16 ee_data ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  {
  checksum = 0U;
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_get_eeprom_data";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 471U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_get_eeprom_data");
    }
  } else {
  }
  {
  ee_map = (struct ixgb_ee_map_type *)(& hw->eeprom);
  descriptor___0.modname = "ixgb";
  descriptor___0.function = "ixgb_get_eeprom_data";
  descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
  descriptor___0.format = "Reading eeprom data\n";
  descriptor___0.lineno = 475U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_pr_debug(& descriptor___0, "ixgb: Reading eeprom data\n");
    }
  } else {
  }
  i = 0U;
  goto ldv_42163;
  ldv_42162:
  {
  ee_data = ixgb_read_eeprom(hw, (int )i);
  checksum = (int )checksum + (int )ee_data;
  hw->eeprom[(int )i] = ee_data;
  i = (u16 )((int )i + 1);
  }
  ldv_42163: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_42162;
  } else {
  }
  if ((unsigned int )checksum != 47802U) {
    {
    descriptor___1.modname = "ixgb";
    descriptor___1.function = "ixgb_get_eeprom_data";
    descriptor___1.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
    descriptor___1.format = "Checksum invalid\n";
    descriptor___1.lineno = 484U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "ixgb: Checksum invalid\n");
      }
    } else {
    }
    ee_map->init_ctrl_reg_1 = 0U;
    return (0);
  } else {
  }
  if (((int )ee_map->init_ctrl_reg_1 & 49152) != 16384) {
    {
    descriptor___2.modname = "ixgb";
    descriptor___2.function = "ixgb_get_eeprom_data";
    descriptor___2.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
    descriptor___2.format = "Signature invalid\n";
    descriptor___2.lineno = 493U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "ixgb: Signature invalid\n");
      }
    } else {
    }
    return (0);
  } else {
  }
  return (1);
}
}
static bool ixgb_check_and_get_eeprom_data(struct ixgb_hw *hw )
{
  struct ixgb_ee_map_type *ee_map ;
  bool tmp ;
  {
  ee_map = (struct ixgb_ee_map_type *)(& hw->eeprom);
  if (((int )ee_map->init_ctrl_reg_1 & 49152) == 16384) {
    return (1);
  } else {
    {
    tmp = ixgb_get_eeprom_data(hw);
    }
    return (tmp);
  }
}
}
__le16 ixgb_get_eeprom_word(struct ixgb_hw *hw , u16 index )
{
  bool tmp ;
  {
  if ((unsigned int )index <= 63U) {
    {
    tmp = ixgb_check_and_get_eeprom_data(hw);
    }
    if ((int )tmp) {
      return (hw->eeprom[(int )index]);
    } else {
    }
  } else {
  }
  return (0U);
}
}
void ixgb_get_ee_mac_addr(struct ixgb_hw *hw , u8 *mac_addr )
{
  int i ;
  struct ixgb_ee_map_type *ee_map ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  {
  ee_map = (struct ixgb_ee_map_type *)(& hw->eeprom);
  descriptor.modname = "ixgb";
  descriptor.function = "ixgb_get_ee_mac_addr";
  descriptor.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 557U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_pr_debug(& descriptor, "ixgb: %s\n", "ixgb_get_ee_mac_addr");
    }
  } else {
  }
  {
  tmp___1 = ixgb_check_and_get_eeprom_data(hw);
  }
  if ((int )tmp___1) {
    i = 0;
    goto ldv_42184;
    ldv_42183:
    *(mac_addr + (unsigned long )i) = ee_map->mac_addr[i];
    i = i + 1;
    ldv_42184: ;
    if (i <= 5) {
      goto ldv_42183;
    } else {
    }
    {
    descriptor___0.modname = "ixgb";
    descriptor___0.function = "ixgb_get_ee_mac_addr";
    descriptor___0.filename = "drivers/net/ethernet/intel/ixgb/ixgb_ee.c";
    descriptor___0.format = "eeprom mac address = %pM\n";
    descriptor___0.lineno = 563U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "ixgb: eeprom mac address = %pM\n", mac_addr);
      }
    } else {
    }
  } else {
  }
  return;
}
}
u32 ixgb_get_ee_pba_number(struct ixgb_hw *hw )
{
  bool tmp ;
  {
  {
  tmp = ixgb_check_and_get_eeprom_data(hw);
  }
  if ((int )tmp) {
    return ((u32 )((int )hw->eeprom[8] | ((int )hw->eeprom[9] << 16)));
  } else {
  }
  return (0U);
}
}
u16 ixgb_get_ee_device_id(struct ixgb_hw *hw )
{
  struct ixgb_ee_map_type *ee_map ;
  bool tmp ;
  {
  {
  ee_map = (struct ixgb_ee_map_type *)(& hw->eeprom);
  tmp = ixgb_check_and_get_eeprom_data(hw);
  }
  if ((int )tmp) {
    return (ee_map->device_id);
  } else {
  }
  return (0U);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
static struct ixgb_stats ixgb_gstrings_stats[36U] =
  { {{'r', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 0, 8, 264},
        {{'t', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 0, 8, 272},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 0, 8, 280},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 0, 8, 288},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 0, 8, 296},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 0, 8, 304},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}, 0, 8, 312},
        {{'t', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '\000'}, 0, 8, 320},
        {{'m', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 0, 8, 328},
        {{'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}, 0, 8, 336},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      0, 8, 352},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 0,
      8, 360},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 'e', 'r', 'r', 'o', 'r', 's',
       '\000'}, 0, 8, 368},
        {{'r', 'x', '_', 'n', 'o', '_', 'b', 'u', 'f', 'f', 'e', 'r', '_', 'c', 'o',
       'u', 'n', 't', '\000'}, 1, 8, 1552},
        {{'r', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      0, 8, 376},
        {{'r', 'x', '_', 'm', 'i', 's', 's', 'e', 'd', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 0, 8, 384},
        {{'t', 'x', '_', 'a', 'b', 'o', 'r', 't', 'e', 'd', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}, 0, 8, 392},
        {{'t', 'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '_', 'e', 'r', 'r', 'o',
       'r', 's', '\000'}, 0, 8, 400},
        {{'t', 'x', '_', 'f', 'i', 'f', 'o', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      0, 8, 408},
        {{'t', 'x', '_', 'h', 'e', 'a', 'r', 't', 'b', 'e', 'a', 't', '_', 'e', 'r',
       'r', 'o', 'r', 's', '\000'}, 0, 8, 416},
        {{'t', 'x', '_', 'w', 'i', 'n', 'd', 'o', 'w', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 0, 8, 424},
        {{'t', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd', '_', 'o', 'k', '\000'},
      1, 8, 1760},
        {{'t', 'x', '_', 't', 'i', 'm', 'e', 'o', 'u', 't', '_', 'c', 'o', 'u', 'n',
       't', '\000'}, 1, 4, 852},
        {{'t', 'x', '_', 'r', 'e', 's', 't', 'a', 'r', 't', '_', 'q', 'u', 'e', 'u',
       'e', '\000'}, 1, 4, 808},
        {{'r', 'x', '_', 'l', 'o', 'n', 'g', '_', 'l', 'e', 'n', 'g', 't', 'h', '_',
       'e', 'r', 'r', 'o', 'r', 's', '\000'}, 1, 8, 1568},
        {{'r', 'x', '_', 's', 'h', 'o', 'r', 't', '_', 'l', 'e', 'n', 'g', 't', 'h',
       '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 1, 8, 1560},
        {{'t', 'x', '_', 't', 'c', 'p', '_', 's', 'e', 'g', '_', 'g', 'o', 'o', 'd',
       '\000'}, 1, 8, 1776},
        {{'t', 'x', '_', 't', 'c', 'p', '_', 's', 'e', 'g', '_', 'f', 'a', 'i', 'l',
       'e', 'd', '\000'}, 1, 8, 1784},
        {{'r', 'x', '_', 'f', 'l', 'o', 'w', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l',
       '_', 'x', 'o', 'n', '\000'}, 1, 8, 1848},
        {{'r', 'x', '_', 'f', 'l', 'o', 'w', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l',
       '_', 'x', 'o', 'f', 'f', '\000'}, 1, 8, 1864},
        {{'t', 'x', '_', 'f', 'l', 'o', 'w', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l',
       '_', 'x', 'o', 'n', '\000'}, 1, 8, 1856},
        {{'t', 'x', '_', 'f', 'l', 'o', 'w', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l',
       '_', 'x', 'o', 'f', 'f', '\000'}, 1, 8, 1872},
        {{'r', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'g', 'o', 'o', 'd', '\000'}, 1, 8, 912},
        {{'r', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 1, 8, 904},
        {{'t', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'g', 'o', 'o', 'd', '\000'}, 1, 8, 832},
        {{'t', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 1, 8, 840}};
static int ixgb_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  ecmd->supported = 5120U;
  ecmd->advertising = 5120U;
  ecmd->port = 3U;
  ecmd->transceiver = 1U;
  tmp___0 = netif_carrier_ok((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___0) {
    {
    ethtool_cmd_speed_set(ecmd, 10000U);
    ecmd->duplex = 1U;
    }
  } else {
    {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
    }
  }
  ecmd->autoneg = 0U;
  return (0);
}
}
void ixgb_set_speed_duplex(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  adapter->link_speed = 10000U;
  adapter->link_duplex = 2U;
  netif_carrier_on(netdev);
  netif_wake_queue(netdev);
  }
  return;
}
}
static int ixgb_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  u32 speed ;
  __u32 tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
  speed = tmp___0;
  }
  if ((unsigned int )ecmd->autoneg == 1U || speed + (u32 )ecmd->duplex != 10001U) {
    return (-22);
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___1) {
    {
    ixgb_down(adapter, 1);
    ixgb_reset(adapter);
    ixgb_up(adapter);
    ixgb_set_speed_duplex(netdev);
    }
  } else {
    {
    ixgb_reset(adapter);
    }
  }
  return (0);
}
}
static void ixgb_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  pause->autoneg = 0U;
  }
  if ((unsigned int )hw->fc.type == 1U) {
    pause->rx_pause = 1U;
  } else
  if ((unsigned int )hw->fc.type == 2U) {
    pause->tx_pause = 1U;
  } else
  if ((unsigned int )hw->fc.type == 3U) {
    pause->rx_pause = 1U;
    pause->tx_pause = 1U;
  } else {
  }
  return;
}
}
static int ixgb_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  }
  if (pause->autoneg == 1U) {
    return (-22);
  } else {
  }
  if (pause->rx_pause != 0U && pause->tx_pause != 0U) {
    hw->fc.type = 3;
  } else
  if (pause->rx_pause != 0U && pause->tx_pause == 0U) {
    hw->fc.type = 1;
  } else
  if (pause->rx_pause == 0U && pause->tx_pause != 0U) {
    hw->fc.type = 2;
  } else
  if (pause->rx_pause == 0U && pause->tx_pause == 0U) {
    hw->fc.type = 0;
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___0) {
    {
    ixgb_down(adapter, 1);
    ixgb_up(adapter);
    ixgb_set_speed_duplex(netdev);
    }
  } else {
    {
    ixgb_reset(adapter);
    }
  }
  return (0);
}
}
static u32 ixgb_get_msglevel(struct net_device *netdev )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  }
  return ((u32 )adapter->msg_enable);
}
}
static void ixgb_set_msglevel(struct net_device *netdev , u32 data )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  adapter->msg_enable = (u16 )data;
  }
  return;
}
}
static int ixgb_get_regs_len(struct net_device *netdev )
{
  {
  return (544);
}
}
static void ixgb_get_regs(struct net_device *netdev , struct ethtool_regs *regs ,
                          void *p )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  u32 *reg ;
  u32 *reg_start ;
  u8 i ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  u32 *tmp___2 ;
  u32 *tmp___3 ;
  u32 *tmp___4 ;
  u32 *tmp___5 ;
  u32 *tmp___6 ;
  u32 *tmp___7 ;
  u32 *tmp___8 ;
  u32 *tmp___9 ;
  u32 *tmp___10 ;
  u32 *tmp___11 ;
  u32 *tmp___12 ;
  u32 *tmp___13 ;
  u32 *tmp___14 ;
  u32 *tmp___15 ;
  u32 *tmp___16 ;
  u32 *tmp___17 ;
  u32 *tmp___18 ;
  u32 *tmp___19 ;
  u32 *tmp___20 ;
  u32 *tmp___21 ;
  u32 *tmp___22 ;
  u32 *tmp___23 ;
  u32 *tmp___24 ;
  u32 *tmp___25 ;
  u32 *tmp___26 ;
  u32 *tmp___27 ;
  u32 *tmp___28 ;
  u32 *tmp___29 ;
  u32 *tmp___30 ;
  u32 *tmp___31 ;
  u32 *tmp___32 ;
  u32 *tmp___33 ;
  u32 *tmp___34 ;
  u32 *tmp___35 ;
  u32 *tmp___36 ;
  u32 *tmp___37 ;
  u32 *tmp___38 ;
  u32 *tmp___39 ;
  u32 *tmp___40 ;
  u32 *tmp___41 ;
  u32 *tmp___42 ;
  u32 *tmp___43 ;
  u32 *tmp___44 ;
  u32 *tmp___45 ;
  u32 *tmp___46 ;
  u32 *tmp___47 ;
  u32 *tmp___48 ;
  u32 *tmp___49 ;
  u32 *tmp___50 ;
  u32 *tmp___51 ;
  u32 *tmp___52 ;
  u32 *tmp___53 ;
  u32 *tmp___54 ;
  u32 *tmp___55 ;
  u32 *tmp___56 ;
  u32 *tmp___57 ;
  u32 *tmp___58 ;
  u32 *tmp___59 ;
  u32 *tmp___60 ;
  u32 *tmp___61 ;
  u32 *tmp___62 ;
  u32 *tmp___63 ;
  u32 *tmp___64 ;
  u32 *tmp___65 ;
  u32 *tmp___66 ;
  u32 *tmp___67 ;
  u32 *tmp___68 ;
  u32 *tmp___69 ;
  u32 *tmp___70 ;
  u32 *tmp___71 ;
  u32 *tmp___72 ;
  u32 *tmp___73 ;
  u32 *tmp___74 ;
  u32 *tmp___75 ;
  u32 *tmp___76 ;
  u32 *tmp___77 ;
  u32 *tmp___78 ;
  u32 *tmp___79 ;
  u32 *tmp___80 ;
  u32 *tmp___81 ;
  u32 *tmp___82 ;
  u32 *tmp___83 ;
  u32 *tmp___84 ;
  u32 *tmp___85 ;
  u32 *tmp___86 ;
  u32 *tmp___87 ;
  u32 *tmp___88 ;
  u32 *tmp___89 ;
  u32 *tmp___90 ;
  u32 *tmp___91 ;
  u32 *tmp___92 ;
  u32 *tmp___93 ;
  u32 *tmp___94 ;
  u32 *tmp___95 ;
  u32 *tmp___96 ;
  u32 *tmp___97 ;
  u32 *tmp___98 ;
  u32 *tmp___99 ;
  u32 *tmp___100 ;
  u32 *tmp___101 ;
  u32 *tmp___102 ;
  u32 *tmp___103 ;
  u32 *tmp___104 ;
  u32 *tmp___105 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  reg = (u32 *)p;
  reg_start = reg;
  regs->version = (__u32 )((((int )hw->revision_id << 16) | 16777216) | (int )hw->device_id);
  tmp___0 = reg;
  reg = reg + 1;
  *tmp___0 = readl((void const volatile *)hw->hw_addr);
  tmp___1 = reg;
  reg = reg + 1;
  *tmp___1 = readl((void const volatile *)hw->hw_addr + 8U);
  tmp___2 = reg;
  reg = reg + 1;
  *tmp___2 = readl((void const volatile *)hw->hw_addr + 16U);
  tmp___3 = reg;
  reg = reg + 1;
  *tmp___3 = readl((void const volatile *)hw->hw_addr + 24U);
  tmp___4 = reg;
  reg = reg + 1;
  *tmp___4 = readl((void const volatile *)hw->hw_addr + 32U);
  tmp___5 = reg;
  reg = reg + 1;
  *tmp___5 = readl((void const volatile *)hw->hw_addr + 128U);
  tmp___6 = reg;
  reg = reg + 1;
  *tmp___6 = readl((void const volatile *)hw->hw_addr + 136U);
  tmp___7 = reg;
  reg = reg + 1;
  *tmp___7 = readl((void const volatile *)hw->hw_addr + 144U);
  tmp___8 = reg;
  reg = reg + 1;
  *tmp___8 = readl((void const volatile *)hw->hw_addr + 152U);
  tmp___9 = reg;
  reg = reg + 1;
  *tmp___9 = readl((void const volatile *)hw->hw_addr + 256U);
  tmp___10 = reg;
  reg = reg + 1;
  *tmp___10 = readl((void const volatile *)hw->hw_addr + 264U);
  tmp___11 = reg;
  reg = reg + 1;
  *tmp___11 = readl((void const volatile *)hw->hw_addr + 272U);
  tmp___12 = reg;
  reg = reg + 1;
  *tmp___12 = readl((void const volatile *)hw->hw_addr + 280U);
  tmp___13 = reg;
  reg = reg + 1;
  *tmp___13 = readl((void const volatile *)hw->hw_addr + 284U);
  tmp___14 = reg;
  reg = reg + 1;
  *tmp___14 = readl((void const volatile *)hw->hw_addr + 288U);
  tmp___15 = reg;
  reg = reg + 1;
  *tmp___15 = readl((void const volatile *)hw->hw_addr + 296U);
  tmp___16 = reg;
  reg = reg + 1;
  *tmp___16 = readl((void const volatile *)hw->hw_addr + 304U);
  tmp___17 = reg;
  reg = reg + 1;
  *tmp___17 = readl((void const volatile *)hw->hw_addr + 312U);
  tmp___18 = reg;
  reg = reg + 1;
  *tmp___18 = readl((void const volatile *)hw->hw_addr + 320U);
  tmp___19 = reg;
  reg = reg + 1;
  *tmp___19 = readl((void const volatile *)hw->hw_addr + 328U);
  tmp___20 = reg;
  reg = reg + 1;
  *tmp___20 = readl((void const volatile *)hw->hw_addr + 344U);
  i = 0U;
  }
  goto ldv_49761;
  ldv_49760:
  {
  tmp___21 = reg;
  reg = reg + 1;
  *tmp___21 = readl((void const volatile *)(hw->hw_addr + ((unsigned long )((int )i << 3) + 384UL)));
  tmp___22 = reg;
  reg = reg + 1;
  *tmp___22 = readl((void const volatile *)(hw->hw_addr + ((unsigned long )((int )i << 3) + 388UL)));
  i = (u8 )((int )i + 1);
  }
  ldv_49761: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_49760;
  } else {
  }
  {
  tmp___23 = reg;
  reg = reg + 1;
  *tmp___23 = readl((void const volatile *)hw->hw_addr + 1536U);
  tmp___24 = reg;
  reg = reg + 1;
  *tmp___24 = readl((void const volatile *)hw->hw_addr + 1544U);
  tmp___25 = reg;
  reg = reg + 1;
  *tmp___25 = readl((void const volatile *)hw->hw_addr + 1548U);
  tmp___26 = reg;
  reg = reg + 1;
  *tmp___26 = readl((void const volatile *)hw->hw_addr + 1552U);
  tmp___27 = reg;
  reg = reg + 1;
  *tmp___27 = readl((void const volatile *)hw->hw_addr + 1560U);
  tmp___28 = reg;
  reg = reg + 1;
  *tmp___28 = readl((void const volatile *)hw->hw_addr + 1568U);
  tmp___29 = reg;
  reg = reg + 1;
  *tmp___29 = readl((void const volatile *)hw->hw_addr + 1576U);
  tmp___30 = reg;
  reg = reg + 1;
  *tmp___30 = readl((void const volatile *)hw->hw_addr + 1584U);
  tmp___31 = reg;
  reg = reg + 1;
  *tmp___31 = readl((void const volatile *)hw->hw_addr + 1592U);
  tmp___32 = reg;
  reg = reg + 1;
  *tmp___32 = readl((void const volatile *)hw->hw_addr + 1600U);
  tmp___33 = reg;
  reg = reg + 1;
  *tmp___33 = readl((void const volatile *)hw->hw_addr + 1792U);
  tmp___34 = reg;
  reg = reg + 1;
  *tmp___34 = readl((void const volatile *)hw->hw_addr + 1800U);
  tmp___35 = reg;
  reg = reg + 1;
  *tmp___35 = readl((void const volatile *)hw->hw_addr + 1808U);
  tmp___36 = reg;
  reg = reg + 1;
  *tmp___36 = readl((void const volatile *)hw->hw_addr + 1816U);
  tmp___37 = reg;
  reg = reg + 1;
  *tmp___37 = readl((void const volatile *)hw->hw_addr + 1824U);
  tmp___38 = reg;
  reg = reg + 1;
  *tmp___38 = readl((void const volatile *)hw->hw_addr + 1832U);
  tmp___39 = reg;
  reg = reg + 1;
  *tmp___39 = readl((void const volatile *)hw->hw_addr + 1840U);
  tmp___40 = reg;
  reg = reg + 1;
  *tmp___40 = readl((void const volatile *)hw->hw_addr + 1848U);
  tmp___41 = reg;
  reg = reg + 1;
  *tmp___41 = readl((void const volatile *)hw->hw_addr + 1856U);
  tmp___42 = reg;
  reg = reg + 1;
  *tmp___42 = readl((void const volatile *)hw->hw_addr + 1864U);
  tmp___43 = reg;
  reg = reg + 1;
  *tmp___43 = readl((void const volatile *)hw->hw_addr + 1872U);
  tmp___44 = reg;
  reg = reg + 1;
  *tmp___44 = readl((void const volatile *)hw->hw_addr + 1880U);
  tmp___45 = reg;
  reg = reg + 1;
  *tmp___45 = readl((void const volatile *)hw->hw_addr + 1888U);
  tmp___46 = reg;
  reg = reg + 1;
  *tmp___46 = (u32 )adapter->stats.tprl;
  tmp___47 = reg;
  reg = reg + 1;
  *tmp___47 = (u32 )adapter->stats.tprh;
  tmp___48 = reg;
  reg = reg + 1;
  *tmp___48 = (u32 )adapter->stats.gprcl;
  tmp___49 = reg;
  reg = reg + 1;
  *tmp___49 = (u32 )adapter->stats.gprch;
  tmp___50 = reg;
  reg = reg + 1;
  *tmp___50 = (u32 )adapter->stats.bprcl;
  tmp___51 = reg;
  reg = reg + 1;
  *tmp___51 = (u32 )adapter->stats.bprch;
  tmp___52 = reg;
  reg = reg + 1;
  *tmp___52 = (u32 )adapter->stats.mprcl;
  tmp___53 = reg;
  reg = reg + 1;
  *tmp___53 = (u32 )adapter->stats.mprch;
  tmp___54 = reg;
  reg = reg + 1;
  *tmp___54 = (u32 )adapter->stats.uprcl;
  tmp___55 = reg;
  reg = reg + 1;
  *tmp___55 = (u32 )adapter->stats.uprch;
  tmp___56 = reg;
  reg = reg + 1;
  *tmp___56 = (u32 )adapter->stats.vprcl;
  tmp___57 = reg;
  reg = reg + 1;
  *tmp___57 = (u32 )adapter->stats.vprch;
  tmp___58 = reg;
  reg = reg + 1;
  *tmp___58 = (u32 )adapter->stats.jprcl;
  tmp___59 = reg;
  reg = reg + 1;
  *tmp___59 = (u32 )adapter->stats.jprch;
  tmp___60 = reg;
  reg = reg + 1;
  *tmp___60 = (u32 )adapter->stats.gorcl;
  tmp___61 = reg;
  reg = reg + 1;
  *tmp___61 = (u32 )adapter->stats.gorch;
  tmp___62 = reg;
  reg = reg + 1;
  *tmp___62 = (u32 )adapter->stats.torl;
  tmp___63 = reg;
  reg = reg + 1;
  *tmp___63 = (u32 )adapter->stats.torh;
  tmp___64 = reg;
  reg = reg + 1;
  *tmp___64 = (u32 )adapter->stats.rnbc;
  tmp___65 = reg;
  reg = reg + 1;
  *tmp___65 = (u32 )adapter->stats.ruc;
  tmp___66 = reg;
  reg = reg + 1;
  *tmp___66 = (u32 )adapter->stats.roc;
  tmp___67 = reg;
  reg = reg + 1;
  *tmp___67 = (u32 )adapter->stats.rlec;
  tmp___68 = reg;
  reg = reg + 1;
  *tmp___68 = (u32 )adapter->stats.crcerrs;
  tmp___69 = reg;
  reg = reg + 1;
  *tmp___69 = (u32 )adapter->stats.icbc;
  tmp___70 = reg;
  reg = reg + 1;
  *tmp___70 = (u32 )adapter->stats.ecbc;
  tmp___71 = reg;
  reg = reg + 1;
  *tmp___71 = (u32 )adapter->stats.mpc;
  tmp___72 = reg;
  reg = reg + 1;
  *tmp___72 = (u32 )adapter->stats.tptl;
  tmp___73 = reg;
  reg = reg + 1;
  *tmp___73 = (u32 )adapter->stats.tpth;
  tmp___74 = reg;
  reg = reg + 1;
  *tmp___74 = (u32 )adapter->stats.gptcl;
  tmp___75 = reg;
  reg = reg + 1;
  *tmp___75 = (u32 )adapter->stats.gptch;
  tmp___76 = reg;
  reg = reg + 1;
  *tmp___76 = (u32 )adapter->stats.bptcl;
  tmp___77 = reg;
  reg = reg + 1;
  *tmp___77 = (u32 )adapter->stats.bptch;
  tmp___78 = reg;
  reg = reg + 1;
  *tmp___78 = (u32 )adapter->stats.mptcl;
  tmp___79 = reg;
  reg = reg + 1;
  *tmp___79 = (u32 )adapter->stats.mptch;
  tmp___80 = reg;
  reg = reg + 1;
  *tmp___80 = (u32 )adapter->stats.uptcl;
  tmp___81 = reg;
  reg = reg + 1;
  *tmp___81 = (u32 )adapter->stats.uptch;
  tmp___82 = reg;
  reg = reg + 1;
  *tmp___82 = (u32 )adapter->stats.vptcl;
  tmp___83 = reg;
  reg = reg + 1;
  *tmp___83 = (u32 )adapter->stats.vptch;
  tmp___84 = reg;
  reg = reg + 1;
  *tmp___84 = (u32 )adapter->stats.jptcl;
  tmp___85 = reg;
  reg = reg + 1;
  *tmp___85 = (u32 )adapter->stats.jptch;
  tmp___86 = reg;
  reg = reg + 1;
  *tmp___86 = (u32 )adapter->stats.gotcl;
  tmp___87 = reg;
  reg = reg + 1;
  *tmp___87 = (u32 )adapter->stats.gotch;
  tmp___88 = reg;
  reg = reg + 1;
  *tmp___88 = (u32 )adapter->stats.totl;
  tmp___89 = reg;
  reg = reg + 1;
  *tmp___89 = (u32 )adapter->stats.toth;
  tmp___90 = reg;
  reg = reg + 1;
  *tmp___90 = (u32 )adapter->stats.dc;
  tmp___91 = reg;
  reg = reg + 1;
  *tmp___91 = (u32 )adapter->stats.plt64c;
  tmp___92 = reg;
  reg = reg + 1;
  *tmp___92 = (u32 )adapter->stats.tsctc;
  tmp___93 = reg;
  reg = reg + 1;
  *tmp___93 = (u32 )adapter->stats.tsctfc;
  tmp___94 = reg;
  reg = reg + 1;
  *tmp___94 = (u32 )adapter->stats.ibic;
  tmp___95 = reg;
  reg = reg + 1;
  *tmp___95 = (u32 )adapter->stats.rfc;
  tmp___96 = reg;
  reg = reg + 1;
  *tmp___96 = (u32 )adapter->stats.lfc;
  tmp___97 = reg;
  reg = reg + 1;
  *tmp___97 = (u32 )adapter->stats.pfrc;
  tmp___98 = reg;
  reg = reg + 1;
  *tmp___98 = (u32 )adapter->stats.pftc;
  tmp___99 = reg;
  reg = reg + 1;
  *tmp___99 = (u32 )adapter->stats.mcfrc;
  tmp___100 = reg;
  reg = reg + 1;
  *tmp___100 = (u32 )adapter->stats.mcftc;
  tmp___101 = reg;
  reg = reg + 1;
  *tmp___101 = (u32 )adapter->stats.xonrxc;
  tmp___102 = reg;
  reg = reg + 1;
  *tmp___102 = (u32 )adapter->stats.xontxc;
  tmp___103 = reg;
  reg = reg + 1;
  *tmp___103 = (u32 )adapter->stats.xoffrxc;
  tmp___104 = reg;
  reg = reg + 1;
  *tmp___104 = (u32 )adapter->stats.xofftxc;
  tmp___105 = reg;
  reg = reg + 1;
  *tmp___105 = (u32 )adapter->stats.rjc;
  regs->len = (__u32 )(((long )reg - (long )reg_start) / 4L) * 4U;
  }
  return;
}
}
static int ixgb_get_eeprom_len(struct net_device *netdev )
{
  {
  return (128);
}
}
static int ixgb_get_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                           u8 *bytes )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  __le16 *eeprom_buff ;
  int i ;
  int max_len ;
  int first_word ;
  int last_word ;
  int ret_val ;
  void *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  ret_val = 0;
  }
  if (eeprom->len == 0U) {
    ret_val = -22;
    goto geeprom_error;
  } else {
  }
  {
  eeprom->magic = (__u32 )((int )hw->vendor_id | ((int )hw->device_id << 16));
  max_len = ixgb_get_eeprom_len(netdev);
  }
  if (eeprom->offset > eeprom->offset + eeprom->len) {
    ret_val = -22;
    goto geeprom_error;
  } else {
  }
  if (eeprom->offset + eeprom->len > (__u32 )max_len) {
    eeprom->len = (__u32 )max_len - eeprom->offset;
  } else {
  }
  {
  first_word = (int )(eeprom->offset >> 1);
  last_word = (int )(((eeprom->offset + eeprom->len) - 1U) >> 1);
  tmp___0 = kmalloc((unsigned long )((last_word - first_word) + 1) * 2UL, 208U);
  eeprom_buff = (__le16 *)tmp___0;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((__le16 *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_49781;
  ldv_49780:
  {
  *(eeprom_buff + (unsigned long )i) = ixgb_get_eeprom_word(hw, (int )((u16 )first_word) + (int )((u16 )i));
  i = i + 1;
  }
  ldv_49781: ;
  if (i <= last_word - first_word) {
    goto ldv_49780;
  } else {
  }
  {
  memcpy((void *)bytes, (void const *)eeprom_buff + ((unsigned long )eeprom->offset & 1UL),
         (size_t )eeprom->len);
  kfree((void const *)eeprom_buff);
  }
  geeprom_error: ;
  return (ret_val);
}
}
static int ixgb_set_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                           u8 *bytes )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_hw *hw ;
  u16 *eeprom_buff ;
  void *ptr ;
  int max_len ;
  int first_word ;
  int last_word ;
  u16 i ;
  void *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  hw = & adapter->hw;
  }
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  if (eeprom->magic != (__u32 )((int )hw->vendor_id | ((int )hw->device_id << 16))) {
    return (-14);
  } else {
  }
  {
  max_len = ixgb_get_eeprom_len(netdev);
  }
  if (eeprom->offset > eeprom->offset + eeprom->len) {
    return (-22);
  } else {
  }
  if (eeprom->offset + eeprom->len > (__u32 )max_len) {
    eeprom->len = (__u32 )max_len - eeprom->offset;
  } else {
  }
  {
  first_word = (int )(eeprom->offset >> 1);
  last_word = (int )(((eeprom->offset + eeprom->len) - 1U) >> 1);
  tmp___0 = kmalloc((size_t )max_len, 208U);
  eeprom_buff = (u16 *)tmp___0;
  }
  if ((unsigned long )eeprom_buff == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  ptr = (void *)eeprom_buff;
  if ((int )eeprom->offset & 1) {
    {
    *eeprom_buff = ixgb_read_eeprom(hw, (int )((u16 )first_word));
    ptr = ptr + 1;
    }
  } else {
  }
  if ((int )(eeprom->offset + eeprom->len) & 1) {
    {
    *(eeprom_buff + (unsigned long )(last_word - first_word)) = ixgb_read_eeprom(hw,
                                                                                 (int )((u16 )last_word));
    }
  } else {
  }
  {
  memcpy(ptr, (void const *)bytes, (size_t )eeprom->len);
  i = 0U;
  }
  goto ldv_49797;
  ldv_49796:
  {
  ixgb_write_eeprom(hw, (int )((u16 )first_word) + (int )i, (int )*(eeprom_buff + (unsigned long )i));
  i = (u16 )((int )i + 1);
  }
  ldv_49797: ;
  if ((int )i <= last_word - first_word) {
    goto ldv_49796;
  } else {
  }
  if (first_word <= 63) {
    {
    ixgb_update_eeprom_checksum(hw);
    }
  } else {
  }
  {
  kfree((void const *)eeprom_buff);
  }
  return (0);
}
}
static void ixgb_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), (char const *)(& ixgb_driver_name), 32UL);
  strlcpy((char *)(& drvinfo->version), (char const *)(& ixgb_driver_version), 32UL);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  drvinfo->n_stats = 36U;
  tmp___1 = ixgb_get_regs_len(netdev);
  drvinfo->regdump_len = (__u32 )tmp___1;
  tmp___2 = ixgb_get_eeprom_len(netdev);
  drvinfo->eedump_len = (__u32 )tmp___2;
  }
  return;
}
}
static void ixgb_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_desc_ring *txdr ;
  struct ixgb_desc_ring *rxdr ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  txdr = & adapter->tx_ring;
  rxdr = & adapter->rx_ring;
  ring->rx_max_pending = 512U;
  ring->tx_max_pending = 4096U;
  ring->rx_pending = rxdr->count;
  ring->tx_pending = txdr->count;
  }
  return;
}
}
static int ixgb_set_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  struct ixgb_desc_ring *txdr ;
  struct ixgb_desc_ring *rxdr ;
  struct ixgb_desc_ring tx_old ;
  struct ixgb_desc_ring tx_new ;
  struct ixgb_desc_ring rx_old ;
  struct ixgb_desc_ring rx_new ;
  int err ;
  bool tmp___0 ;
  __u32 _max1 ;
  unsigned int _max2 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  __u32 _max1___0 ;
  unsigned int _max2___0 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  txdr = & adapter->tx_ring;
  rxdr = & adapter->rx_ring;
  tx_old = adapter->tx_ring;
  rx_old = adapter->rx_ring;
  }
  if (ring->rx_mini_pending != 0U || ring->rx_jumbo_pending != 0U) {
    return (-22);
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___0) {
    {
    ixgb_down(adapter, 1);
    }
  } else {
  }
  {
  _max1 = ring->rx_pending;
  _max2 = 64U;
  rxdr->count = _max1 > _max2 ? _max1 : _max2;
  _min1 = rxdr->count;
  _min2 = 512U;
  rxdr->count = _min1 < _min2 ? _min1 : _min2;
  rxdr->count = (rxdr->count + 7U) & 4294967288U;
  _max1___0 = ring->tx_pending;
  _max2___0 = 64U;
  txdr->count = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  _min1___0 = txdr->count;
  _min2___0 = 4096U;
  txdr->count = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  txdr->count = (txdr->count + 7U) & 4294967288U;
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  }
  if ((int )tmp___1) {
    {
    err = ixgb_setup_rx_resources(adapter);
    }
    if (err != 0) {
      goto err_setup_rx;
    } else {
    }
    {
    err = ixgb_setup_tx_resources(adapter);
    }
    if (err != 0) {
      goto err_setup_tx;
    } else {
    }
    {
    rx_new = adapter->rx_ring;
    tx_new = adapter->tx_ring;
    adapter->rx_ring = rx_old;
    adapter->tx_ring = tx_old;
    ixgb_free_rx_resources(adapter);
    ixgb_free_tx_resources(adapter);
    adapter->rx_ring = rx_new;
    adapter->tx_ring = tx_new;
    err = ixgb_up(adapter);
    }
    if (err != 0) {
      return (err);
    } else {
    }
    {
    ixgb_set_speed_duplex(netdev);
    }
  } else {
  }
  return (0);
  err_setup_tx:
  {
  ixgb_free_rx_resources(adapter);
  }
  err_setup_rx:
  {
  adapter->rx_ring = rx_old;
  adapter->tx_ring = tx_old;
  ixgb_up(adapter);
  }
  return (err);
}
}
static int ixgb_set_phys_id(struct net_device *netdev , enum ethtool_phys_id_state state )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
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
  if ((unsigned int )state == 0U) {
    goto case_0;
  } else {
  }
  goto switch_break;
  case_1: ;
  return (2);
  case_2:
  {
  ixgb_led_on(& adapter->hw);
  }
  goto ldv_49846;
  case_3: ;
  case_0:
  {
  ixgb_led_off(& adapter->hw);
  }
  switch_break: ;
  }
  ldv_49846: ;
  return (0);
}
}
static int ixgb_get_sset_count(struct net_device *netdev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (36);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void ixgb_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct ixgb_adapter *adapter ;
  void *tmp ;
  int i ;
  char *p ;
  {
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct ixgb_adapter *)tmp;
  p = (char *)0;
  ixgb_update_stats(adapter);
  i = 0;
  }
  goto ldv_49871;
  ldv_49870: ;
  {
  if (ixgb_gstrings_stats[i].type == 0) {
    goto case_0;
  } else {
  }
  if (ixgb_gstrings_stats[i].type == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0:
  p = (char *)netdev + (unsigned long )ixgb_gstrings_stats[i].stat_offset;
  goto ldv_49868;
  case_1:
  p = (char *)adapter + (unsigned long )ixgb_gstrings_stats[i].stat_offset;
  goto ldv_49868;
  switch_break: ;
  }
  ldv_49868:
  *(data + (unsigned long )i) = ixgb_gstrings_stats[i].sizeof_stat == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  i = i + 1;
  ldv_49871: ;
  if ((unsigned int )i <= 35U) {
    goto ldv_49870;
  } else {
  }
  return;
}
}
static void ixgb_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  int i ;
  {
  {
  if (stringset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_1:
  i = 0;
  goto ldv_49883;
  ldv_49882:
  {
  memcpy((void *)data + (unsigned long )(i * 32), (void const *)(& ixgb_gstrings_stats[i].stat_string),
         32UL);
  i = i + 1;
  }
  ldv_49883: ;
  if ((unsigned int )i <= 35U) {
    goto ldv_49882;
  } else {
  }
  goto ldv_49885;
  switch_break: ;
  }
  ldv_49885: ;
  return;
}
}
static struct ethtool_ops const ixgb_ethtool_ops =
     {& ixgb_get_settings, & ixgb_set_settings, & ixgb_get_drvinfo, & ixgb_get_regs_len,
    & ixgb_get_regs, 0, 0, & ixgb_get_msglevel, & ixgb_set_msglevel, 0, & ethtool_op_get_link,
    & ixgb_get_eeprom_len, & ixgb_get_eeprom, & ixgb_set_eeprom, 0, 0, & ixgb_get_ringparam,
    & ixgb_set_ringparam, & ixgb_get_pauseparam, & ixgb_set_pauseparam, 0, & ixgb_get_strings,
    & ixgb_set_phys_id, & ixgb_get_ethtool_stats, 0, 0, 0, 0, & ixgb_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void ixgb_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & ixgb_ethtool_ops;
  return;
}
}
void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) = & ixgb_get_drvinfo;
int (*ldv_1_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & ixgb_get_eeprom;
int (*ldv_1_callback_get_eeprom_len)(struct net_device * ) = & ixgb_get_eeprom_len;
void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                         unsigned long long * ) = & ixgb_get_ethtool_stats;
unsigned int (*ldv_1_callback_get_link)(struct net_device * ) = & ethtool_op_get_link;
unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) = & ixgb_get_msglevel;
void (*ldv_1_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) = & ixgb_get_pauseparam;
void (*ldv_1_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) = & ixgb_get_regs;
int (*ldv_1_callback_get_regs_len)(struct net_device * ) = & ixgb_get_regs_len;
void (*ldv_1_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) = & ixgb_get_ringparam;
int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) = & ixgb_get_settings;
int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) = & ixgb_get_sset_count;
void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) = & ixgb_get_strings;
int (*ldv_1_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * , unsigned char * ) = & ixgb_set_eeprom;
void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) = & ixgb_set_msglevel;
int (*ldv_1_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) = & ixgb_set_pauseparam;
int (*ldv_1_callback_set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) = & ixgb_set_phys_id;
int (*ldv_1_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) = & ixgb_set_ringparam;
int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) = & ixgb_set_settings;
void ldv_dummy_resourceless_instance_callback_1_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_11(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  ixgb_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_16(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  ixgb_get_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_17(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  ixgb_get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_18(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ixgb_get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  ixgb_get_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_20(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  ixgb_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_21(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  ixgb_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_24(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  ixgb_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  ixgb_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_49(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  ixgb_set_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_52(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  ixgb_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_55(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  ixgb_set_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_56(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 )
{
  {
  {
  ixgb_set_phys_id(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_57(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  ixgb_set_ringparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_58(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  ixgb_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  ixgb_get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
static int TxDescriptors[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_TxDescriptors = 0U;
static int RxDescriptors[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_RxDescriptors = 0U;
static int FlowControl[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_FlowControl = 0U;
static int XsumRX[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_XsumRX = 0U;
static int TxIntDelay[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_TxIntDelay = 0U;
static int RxIntDelay[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_RxIntDelay = 0U;
static int RxFCHighThresh[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_RxFCHighThresh = 0U;
static int RxFCLowThresh[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_RxFCLowThresh = 0U;
static int FCReqTimeout[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_FCReqTimeout = 0U;
static int IntDelayEnable[9U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static unsigned int num_IntDelayEnable = 0U;
static int ixgb_validate_option(unsigned int *value , struct ixgb_option const *opt )
{
  int i ;
  struct ixgb_opt_list const *ent ;
  {
  if (*value == 4294967295U) {
    *value = (unsigned int )opt->def;
    return (0);
  } else {
  }
  {
  if ((unsigned int )opt->type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )opt->type == 1U) {
    goto case_1___0;
  } else {
  }
  if ((unsigned int )opt->type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  {
  if (*value == 1U) {
    goto case_1;
  } else {
  }
  if (*value == 0U) {
    goto case_0___0;
  } else {
  }
  goto switch_break___0;
  case_1:
  {
  printk("\016ixgb: %s Enabled\n", opt->name);
  }
  return (0);
  case_0___0:
  {
  printk("\016ixgb: %s Disabled\n", opt->name);
  }
  return (0);
  switch_break___0: ;
  }
  goto ldv_49901;
  case_1___0: ;
  if (*value >= (unsigned int )opt->arg.r.min && *value <= (unsigned int )opt->arg.r.max) {
    {
    printk("\016ixgb: %s set to %i\n", opt->name, *value);
    }
    return (0);
  } else {
  }
  goto ldv_49901;
  case_2:
  i = 0;
  goto ldv_49907;
  ldv_49906:
  ent = opt->arg.l.p + (unsigned long )i;
  if (*value == (unsigned int )ent->i) {
    if ((int )((signed char )*(ent->str)) != 0) {
      {
      printk("\016ixgb: %s\n", ent->str);
      }
    } else {
    }
    return (0);
  } else {
  }
  i = i + 1;
  ldv_49907: ;
  if (i < (int )opt->arg.l.nr) {
    goto ldv_49906;
  } else {
  }
  goto ldv_49901;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/intel/ixgb/ixgb_param.c"),
                       "i" (242), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_49901:
  {
  printk("\016ixgb: Invalid %s specified (%i) %s\n", opt->name, *value, opt->err);
  *value = (unsigned int )opt->def;
  }
  return (-1);
}
}
void ixgb_check_options(struct ixgb_adapter *adapter )
{
  int bd ;
  struct ixgb_option opt ;
  struct ixgb_desc_ring *tx_ring ;
  struct ixgb_option opt___0 ;
  struct ixgb_desc_ring *rx_ring ;
  struct ixgb_option opt___1 ;
  unsigned int rx_csum ;
  struct ixgb_opt_list fc_list[5U] ;
  struct ixgb_option opt___2 ;
  unsigned int fc ;
  struct ixgb_option opt___3 ;
  struct ixgb_option opt___4 ;
  struct ixgb_option opt___5 ;
  unsigned int pause_time ;
  struct ixgb_option opt___6 ;
  struct ixgb_option opt___7 ;
  struct ixgb_option opt___8 ;
  unsigned int ide ;
  {
  bd = (int )adapter->bd_number;
  if (bd > 7) {
    {
    printk("\rixgb: Warning: no configuration for board #%i\n", bd);
    printk("\rixgb: Using defaults for all values\n");
    }
  } else {
  }
  opt.type = 1;
  opt.name = "Transmit Descriptors";
  opt.err = "using default of 256";
  opt.def = 256;
  opt.arg.r.min = 64;
  opt.arg.r.max = 4096;
  tx_ring = & adapter->tx_ring;
  if (num_TxDescriptors > (unsigned int )bd) {
    {
    tx_ring->count = (unsigned int )TxDescriptors[bd];
    ixgb_validate_option(& tx_ring->count, & opt);
    }
  } else {
    tx_ring->count = (unsigned int )opt.def;
  }
  tx_ring->count = (tx_ring->count + 7U) & 4294967288U;
  opt___0.type = 1;
  opt___0.name = "Receive Descriptors";
  opt___0.err = "using default of 512";
  opt___0.def = 512;
  opt___0.arg.r.min = 64;
  opt___0.arg.r.max = 512;
  rx_ring = & adapter->rx_ring;
  if (num_RxDescriptors > (unsigned int )bd) {
    {
    rx_ring->count = (unsigned int )RxDescriptors[bd];
    ixgb_validate_option(& rx_ring->count, & opt___0);
    }
  } else {
    rx_ring->count = (unsigned int )opt___0.def;
  }
  rx_ring->count = (rx_ring->count + 7U) & 4294967288U;
  opt___1.type = 0;
  opt___1.name = "Receive Checksum Offload";
  opt___1.err = "defaulting to Enabled";
  opt___1.def = 1;
  opt___1.arg.l.nr = 0;
  opt___1.arg.l.p = 0;
  if (num_XsumRX > (unsigned int )bd) {
    {
    rx_csum = (unsigned int )XsumRX[bd];
    ixgb_validate_option(& rx_csum, & opt___1);
    adapter->rx_csum = rx_csum != 0U;
    }
  } else {
    adapter->rx_csum = opt___1.def != 0;
  }
  fc_list[0].i = 0;
  fc_list[0].str = "Flow Control Disabled";
  fc_list[1].i = 1;
  fc_list[1].str = "Flow Control Receive Only";
  fc_list[2].i = 2;
  fc_list[2].str = "Flow Control Transmit Only";
  fc_list[3].i = 3;
  fc_list[3].str = "Flow Control Enabled";
  fc_list[4].i = 255;
  fc_list[4].str = "Flow Control Hardware Default";
  opt___2.type = 2;
  opt___2.name = "Flow Control";
  opt___2.err = "reading default settings from EEPROM";
  opt___2.def = 2;
  opt___2.arg.l.nr = 5;
  opt___2.arg.l.p = (struct ixgb_opt_list const *)(& fc_list);
  if (num_FlowControl > (unsigned int )bd) {
    {
    fc = (unsigned int )FlowControl[bd];
    ixgb_validate_option(& fc, & opt___2);
    adapter->hw.fc.type = (ixgb_fc_type )fc;
    }
  } else {
    adapter->hw.fc.type = (ixgb_fc_type )opt___2.def;
  }
  opt___3.type = 1;
  opt___3.name = "Rx Flow Control High Threshold";
  opt___3.err = "using default of 0x30000";
  opt___3.def = 196608;
  opt___3.arg.r.min = 8;
  opt___3.arg.r.max = 262128;
  if (num_RxFCHighThresh > (unsigned int )bd) {
    {
    adapter->hw.fc.high_water = (u32 )RxFCHighThresh[bd];
    ixgb_validate_option(& adapter->hw.fc.high_water, & opt___3);
    }
  } else {
    adapter->hw.fc.high_water = (u32 )opt___3.def;
  }
  if (((unsigned int )adapter->hw.fc.type & 2U) == 0U) {
    {
    printk("\016ixgb: Ignoring RxFCHighThresh when no RxFC\n");
    }
  } else {
  }
  opt___4.type = 1;
  opt___4.name = "Rx Flow Control Low Threshold";
  opt___4.err = "using default of 0x28000";
  opt___4.def = 163840;
  opt___4.arg.r.min = 0;
  opt___4.arg.r.max = 262120;
  if (num_RxFCLowThresh > (unsigned int )bd) {
    {
    adapter->hw.fc.low_water = (u32 )RxFCLowThresh[bd];
    ixgb_validate_option(& adapter->hw.fc.low_water, & opt___4);
    }
  } else {
    adapter->hw.fc.low_water = (u32 )opt___4.def;
  }
  if (((unsigned int )adapter->hw.fc.type & 2U) == 0U) {
    {
    printk("\016ixgb: Ignoring RxFCLowThresh when no RxFC\n");
    }
  } else {
  }
  opt___5.type = 1;
  opt___5.name = "Flow Control Pause Time Request";
  opt___5.err = "using default of 0xFFFF";
  opt___5.def = 65535;
  opt___5.arg.r.min = 1;
  opt___5.arg.r.max = 65535;
  if (num_FCReqTimeout > (unsigned int )bd) {
    {
    pause_time = (unsigned int )FCReqTimeout[bd];
    ixgb_validate_option(& pause_time, & opt___5);
    adapter->hw.fc.pause_time = (u16 )pause_time;
    }
  } else {
    adapter->hw.fc.pause_time = (u16 )opt___5.def;
  }
  if (((unsigned int )adapter->hw.fc.type & 2U) == 0U) {
    {
    printk("\016ixgb: Ignoring FCReqTimeout when no RxFC\n");
    }
  } else {
  }
  if (((unsigned int )adapter->hw.fc.type & 2U) != 0U) {
    if (adapter->hw.fc.high_water < adapter->hw.fc.low_water + 8U) {
      {
      printk("\016ixgb: RxFCHighThresh must be >= (RxFCLowThresh + 8), Using Defaults\n");
      adapter->hw.fc.high_water = 196608U;
      adapter->hw.fc.low_water = 163840U;
      }
    } else {
    }
  } else {
  }
  opt___6.type = 1;
  opt___6.name = "Receive Interrupt Delay";
  opt___6.err = "using default of 72";
  opt___6.def = 72;
  opt___6.arg.r.min = 0;
  opt___6.arg.r.max = 65535;
  if (num_RxIntDelay > (unsigned int )bd) {
    {
    adapter->rx_int_delay = (u32 )RxIntDelay[bd];
    ixgb_validate_option(& adapter->rx_int_delay, & opt___6);
    }
  } else {
    adapter->rx_int_delay = (u32 )opt___6.def;
  }
  opt___7.type = 1;
  opt___7.name = "Transmit Interrupt Delay";
  opt___7.err = "using default of 32";
  opt___7.def = 32;
  opt___7.arg.r.min = 0;
  opt___7.arg.r.max = 65535;
  if (num_TxIntDelay > (unsigned int )bd) {
    {
    adapter->tx_int_delay = (u32 )TxIntDelay[bd];
    ixgb_validate_option(& adapter->tx_int_delay, & opt___7);
    }
  } else {
    adapter->tx_int_delay = (u32 )opt___7.def;
  }
  opt___8.type = 0;
  opt___8.name = "Tx Interrupt Delay Enable";
  opt___8.err = "defaulting to Enabled";
  opt___8.def = 1;
  opt___8.arg.l.nr = 0;
  opt___8.arg.l.p = 0;
  if (num_IntDelayEnable > (unsigned int )bd) {
    {
    ide = (unsigned int )IntDelayEnable[bd];
    ixgb_validate_option(& ide, & opt___8);
    adapter->tx_int_delay_enable = ide != 0U;
    }
  } else {
    adapter->tx_int_delay_enable = opt___8.def != 0;
  }
  return;
}
}
void ldv_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
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
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS != 0 ? LDV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_USB_DEV_REF_COUNTS > 1) {
      LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_USB_DEV_REF_COUNTS == 0);
  }
  return;
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
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
void ldv_assert_linux_usb_dev__probe_failed(int expr )
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
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
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
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
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
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
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
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
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
void enable_irq(unsigned int arg0) {
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
int __VERIFIER_nondet_int(void);
int ldv_del_timer_sync(int arg0, struct timer_list *arg1) {
  return __VERIFIER_nondet_int();
}
void ldv_free_irq(void *arg0, int arg1, void *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_mod_timer(int arg0, struct timer_list *arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
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
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
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
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
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
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
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
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
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
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
void *vzalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
