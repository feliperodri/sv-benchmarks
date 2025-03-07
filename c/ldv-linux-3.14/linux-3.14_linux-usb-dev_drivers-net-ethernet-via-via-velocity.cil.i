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
struct ldv_thread;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
enum ldv_21642 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21642 socket_state;
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
enum ldv_28000 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28001 {
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
   enum ldv_28000 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28001 rtnl_link_state : 16 ;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
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
union __anonunion_ki_obj_251 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_251 ki_obj ;
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
union __anonunion____missing_field_name_252 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_252 __annonCompField77 ;
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
struct rdesc0 {
   __le16 RSR ;
   __le16 len ;
};
struct rdesc1 {
   __le16 PQTAG ;
   u8 CSM ;
   u8 IPKT ;
};
struct rx_desc {
   struct rdesc0 rdesc0 ;
   struct rdesc1 rdesc1 ;
   __le32 pa_low ;
   __le16 pa_high ;
   __le16 size ;
};
struct tdesc0 {
   __le16 TSR ;
   __le16 len ;
};
struct tdesc1 {
   __le16 vlan ;
   u8 TCR ;
   u8 cmd ;
};
struct td_buf {
   __le32 pa_low ;
   __le16 pa_high ;
   __le16 size ;
};
struct tx_desc {
   struct tdesc0 tdesc0 ;
   struct tdesc1 tdesc1 ;
   struct td_buf td_buf[7U] ;
};
struct velocity_rd_info {
   struct sk_buff *skb ;
   dma_addr_t skb_dma ;
};
struct velocity_td_info {
   struct sk_buff *skb ;
   int nskb_dma ;
   dma_addr_t skb_dma[7U] ;
};
struct mac_regs {
   u8 volatile PAR[6U] ;
   u8 volatile RCR ;
   u8 volatile TCR ;
   __le32 volatile CR0Set ;
   __le32 volatile CR0Clr ;
   u8 volatile MARCAM[8U] ;
   __le32 volatile DecBaseHi ;
   __le16 volatile DbfBaseHi ;
   __le16 volatile reserved_1E ;
   __le16 volatile ISRCTL ;
   u8 volatile TXESR ;
   u8 volatile RXESR ;
   __le32 volatile ISR ;
   __le32 volatile IMR ;
   __le32 volatile TDStatusPort ;
   __le16 volatile TDCSRSet ;
   u8 volatile RDCSRSet ;
   u8 volatile reserved_33 ;
   __le16 volatile TDCSRClr ;
   u8 volatile RDCSRClr ;
   u8 volatile reserved_37 ;
   __le32 volatile RDBaseLo ;
   __le16 volatile RDIdx ;
   u8 volatile TQETMR ;
   u8 volatile RQETMR ;
   __le32 volatile TDBaseLo[4U] ;
   __le16 volatile RDCSize ;
   __le16 volatile TDCSize ;
   __le16 volatile TDIdx[4U] ;
   __le16 volatile tx_pause_timer ;
   __le16 volatile RBRDU ;
   __le32 volatile FIFOTest0 ;
   __le32 volatile FIFOTest1 ;
   u8 volatile CAMADDR ;
   u8 volatile CAMCR ;
   u8 volatile GFTEST ;
   u8 volatile FTSTCMD ;
   u8 volatile MIICFG ;
   u8 volatile MIISR ;
   u8 volatile PHYSR0 ;
   u8 volatile PHYSR1 ;
   u8 volatile MIICR ;
   u8 volatile MIIADR ;
   __le16 volatile MIIDATA ;
   __le16 volatile SoftTimer0 ;
   __le16 volatile SoftTimer1 ;
   u8 volatile CFGA ;
   u8 volatile CFGB ;
   u8 volatile CFGC ;
   u8 volatile CFGD ;
   __le16 volatile DCFG ;
   __le16 volatile MCFG ;
   u8 volatile TBIST ;
   u8 volatile RBIST ;
   u8 volatile PMCPORT ;
   u8 volatile STICKHW ;
   u8 volatile MIBCR ;
   u8 volatile reserved_85 ;
   u8 volatile rev_id ;
   u8 volatile PORSTS ;
   __le32 volatile MIBData ;
   __le16 volatile EEWrData ;
   u8 volatile reserved_8E ;
   u8 volatile BPMDWr ;
   u8 volatile BPCMD ;
   u8 volatile BPMDRd ;
   u8 volatile EECHKSUM ;
   u8 volatile EECSR ;
   __le16 volatile EERdData ;
   u8 volatile EADDR ;
   u8 volatile EMBCMD ;
   u8 volatile JMPSR0 ;
   u8 volatile JMPSR1 ;
   u8 volatile JMPSR2 ;
   u8 volatile JMPSR3 ;
   u8 volatile CHIPGSR ;
   u8 volatile TESTCFG ;
   u8 volatile DEBUG ;
   u8 volatile CHIPGCR ;
   __le16 volatile WOLCRSet ;
   u8 volatile PWCFGSet ;
   u8 volatile WOLCFGSet ;
   __le16 volatile WOLCRClr ;
   u8 volatile PWCFGCLR ;
   u8 volatile WOLCFGClr ;
   __le16 volatile WOLSRSet ;
   __le16 volatile reserved_AA ;
   __le16 volatile WOLSRClr ;
   __le16 volatile reserved_AE ;
   __le16 volatile PatternCRC[8U] ;
   __le32 volatile ByteMask[4U][4U] ;
};
enum chip_type {
    CHIP_TYPE_VT6110 = 1
} ;
struct velocity_info_tbl {
   enum chip_type chip_id ;
   char const *name ;
   int txqueue ;
   u32 flags ;
};
typedef u8 MCAM_ADDR[6U];
struct arp_packet {
   u8 dest_mac[6U] ;
   u8 src_mac[6U] ;
   __be16 type ;
   __be16 ar_hrd ;
   __be16 ar_pro ;
   u8 ar_hln ;
   u8 ar_pln ;
   __be16 ar_op ;
   u8 ar_sha[6U] ;
   u8 ar_sip[4U] ;
   u8 ar_tha[6U] ;
   u8 ar_tip[4U] ;
};
struct velocity_context {
   u8 mac_reg[256U] ;
   MCAM_ADDR cam_addr[64U][6U] ;
   u16 vcam[64U] ;
   u32 cammask[2U] ;
   u32 patcrc[2U] ;
   u32 pattern[8U] ;
};
enum speed_opt {
    SPD_DPX_AUTO = 0,
    SPD_DPX_100_HALF = 1,
    SPD_DPX_100_FULL = 2,
    SPD_DPX_10_HALF = 3,
    SPD_DPX_10_FULL = 4,
    SPD_DPX_1000_FULL = 5
} ;
enum velocity_init_type {
    VELOCITY_INIT_COLD = 0,
    VELOCITY_INIT_RESET = 1,
    VELOCITY_INIT_WOL = 2
} ;
struct velocity_opt {
   int numrx ;
   int numtx ;
   enum speed_opt spd_dpx ;
   int DMA_length ;
   int rx_thresh ;
   int flow_cntl ;
   int wol_opts ;
   int td_int_count ;
   int int_works ;
   int rx_bandwidth_hi ;
   int rx_bandwidth_lo ;
   int rx_bandwidth_en ;
   int rxqueue_timer ;
   int txqueue_timer ;
   int tx_intsup ;
   int rx_intsup ;
   u32 flags ;
};
struct tx_info {
   int numq ;
   int used[4U] ;
   int curr[4U] ;
   int tail[4U] ;
   struct tx_desc *rings[4U] ;
   struct velocity_td_info *infos[4U] ;
   dma_addr_t pool_dma[4U] ;
};
struct rx_info {
   int buf_sz ;
   int dirty ;
   int curr ;
   u32 filled ;
   struct rx_desc *ring ;
   struct velocity_rd_info *info ;
   dma_addr_t pool_dma ;
};
struct velocity_info {
   struct device *dev ;
   struct pci_dev *pdev ;
   struct net_device *netdev ;
   int no_eeprom ;
   unsigned long active_vlans[64U] ;
   u8 ip_addr[4U] ;
   enum chip_type chip_id ;
   struct mac_regs *mac_regs ;
   unsigned long memaddr ;
   unsigned long ioaddr ;
   struct tx_info tx ;
   struct rx_info rx ;
   u32 mib_counter[32U] ;
   struct velocity_opt options ;
   u32 int_mask ;
   u32 flags ;
   u32 mii_status ;
   u32 phy_id ;
   int multicast_limit ;
   u8 vCAMmask[8U] ;
   u8 mCAMmask[8U] ;
   spinlock_t lock ;
   int wol_opts ;
   u8 wol_passwd[6U] ;
   struct velocity_context context ;
   u32 ticks ;
   u8 rev_id ;
   struct napi_struct napi ;
};
enum velocity_bus_type {
    BUS_PCI = 0,
    BUS_PLATFORM = 1
} ;
struct ldv_struct_dummy_resourceless_instance_1 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_5 {
   struct notifier_block *arg0 ;
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
struct ldv_struct_platform_instance_3 {
   struct platform_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef struct net_device *ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
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
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_37(int ldv_func_arg1 ) ;
static int ldv_ldv_post_probe_38(int ldv_func_arg1 ) ;
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/8d0c6a3/linux-usb-dev/lkbce/arch/x86/include/asm/paravirt.h"),
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
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6402;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6402;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6402;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6402;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6402: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
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
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6414;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6414;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6414;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6414;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6414: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
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
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void __rcu_read_lock(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  {
  lock_acquire(map, 0U, 0, 2, 1, (struct lockdep_map *)0, (unsigned long )((void *)0));
  }
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  }
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = rcu_is_watching();
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
  tmp___2 = rcu_lockdep_current_cpu_online();
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
  tmp___4 = lock_is_held(& rcu_lock_map);
  }
  return (tmp___4);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 812, "rcu_read_lock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 833, "rcu_read_unlock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  {
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  }
  return;
}
}
__inline static resource_size_t resource_size(struct resource const *res )
{
  {
  return (((unsigned long long )res->end - (unsigned long long )res->start) + 1ULL);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
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
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
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
static void *ldv_dev_get_drvdata_26(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_29(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_30(struct device const *dev ) ;
static int ldv_dev_set_drvdata_24(struct device *dev , void *data ) ;
extern char const *dev_driver_string(struct device const * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_notice(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
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
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/8d0c6a3/linux-usb-dev/lkbce/arch/x86/include/asm/dma-mapping.h",
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
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
extern int skb_pad(struct sk_buff * , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
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
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
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
__inline static int __skb_linearize(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = __pskb_pull_tail(skb, (int )skb->data_len);
  }
  return ((unsigned long )tmp != (unsigned long )((unsigned char *)0U) ? 0 : -12);
}
}
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  }
  return;
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
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
extern struct net init_net ;
__inline static struct net *read_pnet(struct net * const *pnet )
{
  {
  return ((struct net *)*pnet);
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
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_37740;
  ldv_37739:
  {
  msleep(1U);
  }
  ldv_37740:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_37739;
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
__inline static struct net *dev_net(struct net_device const *dev )
{
  struct net *tmp ;
  {
  {
  tmp = read_pnet(& dev->nd_net);
  }
  return (tmp);
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
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_25(struct net_device *ldv_func_arg1 ) ;
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
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  {
  __dev_kfree_skb_irq(skb, 1);
  }
  return;
}
}
extern int netif_receive_skb(struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_23(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_27(struct net_device *ldv_func_arg1 ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
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
static int ldv___pci_register_driver_33(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_35(struct pci_driver *ldv_func_arg1 ) ;
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
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_34(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_36(struct platform_driver *ldv_func_arg1 ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_22(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
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
static void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
__inline static void const *of_get_property(struct device_node const *node , char const *name ,
                                              int *lenp )
{
  {
  return ((void const *)0);
}
}
__inline static int of_address_to_resource(struct device_node *dev , int index , struct resource *r )
{
  {
  return (-22);
}
}
__inline static struct of_device_id const *__of_match_device(struct of_device_id const *matches ,
                                                               struct device const *dev )
{
  {
  return ((struct of_device_id const *)0);
}
}
__inline static unsigned int irq_of_parse_and_map(struct device_node *dev , int index )
{
  {
  return (0U);
}
}
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
extern int register_inetaddr_notifier(struct notifier_block * ) ;
static int ldv_register_inetaddr_notifier_31(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_inetaddr_notifier(struct notifier_block * ) ;
static int ldv_unregister_inetaddr_notifier_32(struct notifier_block *ldv_func_arg1 ) ;
__inline static struct in_device *__in_dev_get_rcu(struct net_device const *dev )
{
  struct in_device *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  {
  _________p1 = *((struct in_device * const volatile *)(& dev->ip_ptr));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_read_lock_held();
    }
    if (tmp___0 == 0) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/inetdevice.h", 202, "suspicious rcu_dereference_check() usage");
      }
    } else {
    }
  } else {
  }
  return (_________p1);
}
}
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
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
extern u16 crc_ccitt(u16 , u8 const * , size_t ) ;
extern u32 bitrev32(u32 ) ;
__inline static void mac_eeprom_reload(struct mac_regs *regs )
{
  int i ;
  unsigned char tmp ;
  int tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  i = 0;
  tmp = readb((void const volatile *)(& regs->EECSR));
  writeb((int )((unsigned int )tmp | 32U), (void volatile *)(& regs->EECSR));
  }
  ldv_48695:
  {
  __const_udelay(42950UL);
  tmp___0 = i;
  i = i + 1;
  }
  if (tmp___0 > 4096) {
    goto ldv_48694;
  } else {
  }
  {
  tmp___1 = readb((void const volatile *)(& regs->EECSR));
  }
  if (((int )tmp___1 & 32) != 0) {
    goto ldv_48695;
  } else {
  }
  ldv_48694: ;
  return;
}
}
__inline static int velocity_get_ip(struct velocity_info *vptr )
{
  struct in_device *in_dev ;
  struct in_ifaddr *ifa ;
  int res ;
  {
  {
  res = -2;
  rcu_read_lock();
  in_dev = __in_dev_get_rcu((struct net_device const *)vptr->netdev);
  }
  if ((unsigned long )in_dev != (unsigned long )((struct in_device *)0)) {
    ifa = in_dev->ifa_list;
    if ((unsigned long )ifa != (unsigned long )((struct in_ifaddr *)0)) {
      {
      memcpy((void *)(& vptr->ip_addr), (void const *)(& ifa->ifa_address), 4UL);
      res = 0;
      }
    } else {
    }
  } else {
  }
  {
  rcu_read_unlock();
  }
  return (res);
}
}
__inline static void velocity_update_hw_mibs(struct velocity_info *vptr )
{
  u32 tmp ;
  int i ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  tmp___0 = readb((void const volatile *)(& (vptr->mac_regs)->MIBCR));
  writeb((int )((unsigned int )tmp___0 | 4U), (void volatile *)(& (vptr->mac_regs)->MIBCR));
  }
  goto ldv_48821;
  ldv_48820: ;
  ldv_48821:
  {
  tmp___1 = readb((void const volatile *)(& (vptr->mac_regs)->MIBCR));
  }
  if (((int )tmp___1 & 4) != 0) {
    goto ldv_48820;
  } else {
  }
  {
  tmp___2 = readb((void const volatile *)(& (vptr->mac_regs)->MIBCR));
  writeb((int )((unsigned int )tmp___2 | 2U), (void volatile *)(& (vptr->mac_regs)->MIBCR));
  i = 0;
  }
  goto ldv_48824;
  ldv_48823:
  {
  tmp___3 = readl((void const volatile *)(& (vptr->mac_regs)->MIBData));
  tmp = tmp___3 & 16777215U;
  vptr->mib_counter[i] = vptr->mib_counter[i] + tmp;
  i = i + 1;
  }
  ldv_48824: ;
  if (i <= 31) {
    goto ldv_48823;
  } else {
  }
  return;
}
}
__inline static void init_flow_control_register(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  {
  {
  regs = vptr->mac_regs;
  writel(9109504U, (void volatile *)(& regs->CR0Set));
  writel(7602176U, (void volatile *)(& regs->CR0Clr));
  writew(65535, (void volatile *)(& regs->tx_pause_timer));
  writew((int )((unsigned short )vptr->options.numrx), (void volatile *)(& regs->RBRDU));
  }
  return;
}
}
static int velocity_nics ;
static int msglevel = 2;
static void velocity_set_power_state(struct velocity_info *vptr , char state )
{
  void *addr ;
  {
  addr = (void *)vptr->mac_regs;
  if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
    {
    pci_set_power_state(vptr->pdev, (pci_power_t )state);
    }
  } else {
    {
    writeb((int )((unsigned char )state), (void volatile *)addr + 340U);
    }
  }
  return;
}
}
static void mac_get_cam_mask(struct mac_regs *regs , u8 *mask )
{
  int i ;
  unsigned char tmp ;
  u8 *tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned char )(((int )((signed char )tmp) & 63) | 64)), (void volatile *)(& regs->CAMCR));
  writeb(0, (void volatile *)(& regs->CAMADDR));
  i = 0;
  }
  goto ldv_48846;
  ldv_48845:
  {
  tmp___0 = mask;
  mask = mask + 1;
  *tmp___0 = readb((void const volatile *)(& regs->MARCAM) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48846: ;
  if (i <= 7) {
    goto ldv_48845;
  } else {
  }
  {
  writeb(0, (void volatile *)(& regs->CAMADDR));
  tmp___1 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )tmp___1 & 63, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void mac_set_cam_mask(struct mac_regs *regs , u8 *mask )
{
  int i ;
  unsigned char tmp ;
  u8 *tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned char )(((int )((signed char )tmp) & 63) | 64)), (void volatile *)(& regs->CAMCR));
  writeb(128, (void volatile *)(& regs->CAMADDR));
  i = 0;
  }
  goto ldv_48854;
  ldv_48853:
  {
  tmp___0 = mask;
  mask = mask + 1;
  writeb((int )*tmp___0, (void volatile *)(& regs->MARCAM) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48854: ;
  if (i <= 7) {
    goto ldv_48853;
  } else {
  }
  {
  writeb(0, (void volatile *)(& regs->CAMADDR));
  tmp___1 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )tmp___1 & 63, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void mac_set_vlan_cam_mask(struct mac_regs *regs , u8 *mask )
{
  int i ;
  unsigned char tmp ;
  u8 *tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned char )(((int )((signed char )tmp) & 63) | 64)), (void volatile *)(& regs->CAMCR));
  writeb(192, (void volatile *)(& regs->CAMADDR));
  i = 0;
  }
  goto ldv_48862;
  ldv_48861:
  {
  tmp___0 = mask;
  mask = mask + 1;
  writeb((int )*tmp___0, (void volatile *)(& regs->MARCAM) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48862: ;
  if (i <= 7) {
    goto ldv_48861;
  } else {
  }
  {
  writeb(0, (void volatile *)(& regs->CAMADDR));
  tmp___1 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )tmp___1 & 63, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void mac_set_cam(struct mac_regs *regs , int idx , u8 const *addr )
{
  int i ;
  unsigned char tmp ;
  u8 const *tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned char )(((int )((signed char )tmp) & 63) | -128)), (void volatile *)(& regs->CAMCR));
  idx = idx & 63;
  writeb((int )((unsigned char )((int )((signed char )idx) | -128)), (void volatile *)(& regs->CAMADDR));
  i = 0;
  }
  goto ldv_48871;
  ldv_48870:
  {
  tmp___0 = addr;
  addr = addr + 1;
  writeb((int )*tmp___0, (void volatile *)(& regs->MARCAM) + (unsigned long )i);
  i = i + 1;
  }
  ldv_48871: ;
  if (i <= 5) {
    goto ldv_48870;
  } else {
  }
  {
  tmp___1 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned int )tmp___1 | 4U), (void volatile *)(& regs->CAMCR));
  __const_udelay(42950UL);
  writeb(0, (void volatile *)(& regs->CAMADDR));
  tmp___2 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )tmp___2 & 63, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void mac_set_vlan_cam(struct mac_regs *regs , int idx , u8 const *addr )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned char )(((int )((signed char )tmp) & 63) | -128)), (void volatile *)(& regs->CAMCR));
  idx = idx & 63;
  writeb((int )((unsigned char )((int )((signed char )idx) | -64)), (void volatile *)(& regs->CAMADDR));
  writew((int )*((u16 *)addr), (void volatile *)(& regs->MARCAM));
  tmp___0 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )((unsigned int )tmp___0 | 4U), (void volatile *)(& regs->CAMCR));
  __const_udelay(42950UL);
  writeb(0, (void volatile *)(& regs->CAMADDR));
  tmp___1 = readb((void const volatile *)(& regs->CAMCR));
  writeb((int )tmp___1 & 63, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void mac_wol_reset(struct mac_regs *regs )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  {
  tmp = readb((void const volatile *)(& regs->STICKHW));
  writeb((int )tmp & 239, (void volatile *)(& regs->STICKHW));
  tmp___0 = readb((void const volatile *)(& regs->STICKHW));
  writeb((int )tmp___0 & 252, (void volatile *)(& regs->STICKHW));
  tmp___1 = readb((void const volatile *)(& regs->CHIPGCR));
  writeb((int )tmp___1 & 127, (void volatile *)(& regs->CHIPGCR));
  tmp___2 = readb((void const volatile *)(& regs->CHIPGCR));
  writeb((int )tmp___2 & 239, (void volatile *)(& regs->CHIPGCR));
  writeb(128, (void volatile *)(& regs->WOLCFGClr));
  writew(65535, (void volatile *)(& regs->WOLCRClr));
  writew(65535, (void volatile *)(& regs->WOLSRClr));
  }
  return;
}
}
static struct ethtool_ops const velocity_ethtool_ops ;
static int RxDescriptors[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int TxDescriptors[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int rx_thresh[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int DMA_length[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int IP_byte_align[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int flow_control[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int speed_duplex[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int ValPktLen[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int wol_opts[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int rx_copybreak = 200;
static struct velocity_info_tbl chip_info_table[2U] = { {1, "VIA Networking Velocity Family Gigabit Ethernet Adapter", 1, 16777215U}};
static struct pci_device_id const velocity_pci_id_table[2U] = { {4358U, 12569U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct of_device_id velocity_of_ids[2U] = { {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, {(char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0},
      {'v', 'i', 'a', ',', 'v', 'e', 'l', 'o', 'c', 'i', 't', 'y', '-', 'v', 't',
       '6', '1', '1', '0', '\000'}, (void const *)(& chip_info_table)}};
struct of_device_id const __mod_of_device_table ;
static char const *get_chip_name(enum chip_type chip_id )
{
  int i ;
  {
  i = 0;
  goto ldv_49053;
  ldv_49052: ;
  if ((unsigned int )chip_info_table[i].chip_id == (unsigned int )chip_id) {
    goto ldv_49051;
  } else {
  }
  i = i + 1;
  ldv_49053: ;
  if ((unsigned long )chip_info_table[i].name != (unsigned long )((char const *)0)) {
    goto ldv_49052;
  } else {
  }
  ldv_49051: ;
  return (chip_info_table[i].name);
}
}
static void velocity_set_int_opt(int *opt , int val , int min , int max , int def ,
                                 char *name , char const *devname )
{
  {
  if (val == -1) {
    *opt = def;
  } else
  if (val < min || val > max) {
    if (msglevel > 1) {
      {
      printk("\r%s: the value of parameter %s is invalid, the valid range is (%d-%d)\n",
             devname, name, min, max);
      }
    } else {
    }
    *opt = def;
  } else {
    if (msglevel > 1) {
      {
      printk("\016%s: set value of parameter %s to %d\n", devname, name, val);
      }
    } else {
    }
    *opt = val;
  }
  return;
}
}
static void velocity_set_bool_opt(u32 *opt , int val , int def , u32 flag , char *name ,
                                  char const *devname )
{
  {
  *opt = *opt & ~ flag;
  if (val == -1) {
    *opt = *opt | (def != 0 ? flag : 0U);
  } else
  if ((unsigned int )val > 1U) {
    {
    printk("\r%s: the value of parameter %s is invalid, the valid range is (0-1)\n",
           devname, name);
    *opt = *opt | (def != 0 ? flag : 0U);
    }
  } else {
    {
    printk("\016%s: set parameter %s to %s\n", devname, name, val != 0 ? (char *)"TRUE" : (char *)"FALSE");
    *opt = *opt | (val != 0 ? flag : 0U);
    }
  }
  return;
}
}
static void velocity_get_options(struct velocity_opt *opts , int index , char const *devname )
{
  {
  {
  velocity_set_int_opt(& opts->rx_thresh, rx_thresh[index], 0, 3, 0, (char *)"rx_thresh",
                       devname);
  velocity_set_int_opt(& opts->DMA_length, DMA_length[index], 0, 7, 6, (char *)"DMA_length",
                       devname);
  velocity_set_int_opt(& opts->numrx, RxDescriptors[index], 64, 255, 64, (char *)"RxDescriptors",
                       devname);
  velocity_set_int_opt(& opts->numtx, TxDescriptors[index], 16, 256, 64, (char *)"TxDescriptors",
                       devname);
  velocity_set_int_opt(& opts->flow_cntl, flow_control[index], 1, 5, 1, (char *)"flow_control",
                       devname);
  velocity_set_bool_opt(& opts->flags, IP_byte_align[index], 0, 8U, (char *)"IP_byte_align",
                        devname);
  velocity_set_bool_opt(& opts->flags, ValPktLen[index], 0, 16U, (char *)"ValPktLen",
                        devname);
  velocity_set_int_opt((int *)(& opts->spd_dpx), speed_duplex[index], 0, 5, 0, (char *)"Media link mode",
                       devname);
  velocity_set_int_opt(& opts->wol_opts, wol_opts[index], 0, 7, 0, (char *)"Wake On Lan options",
                       devname);
  opts->numrx = opts->numrx & -4;
  }
  return;
}
}
static void velocity_init_cam_filter(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  unsigned int vid ;
  unsigned int i ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  regs = vptr->mac_regs;
  i = 0U;
  tmp = readw((void const volatile *)(& regs->MCFG));
  writew((int )((unsigned short )(((int )((short )tmp) & -7) | 4)), (void volatile *)(& regs->MCFG));
  tmp___0 = readw((void const volatile *)(& regs->MCFG));
  writew((int )((unsigned int )tmp___0 | 1U), (void volatile *)(& regs->MCFG));
  memset((void *)(& vptr->vCAMmask), 0, 8UL);
  memset((void *)(& vptr->mCAMmask), 0, 8UL);
  mac_set_vlan_cam_mask(regs, (u8 *)(& vptr->vCAMmask));
  mac_set_cam_mask(regs, (u8 *)(& vptr->mCAMmask));
  tmp___1 = find_first_bit((unsigned long const *)(& vptr->active_vlans), 4096UL);
  vid = (unsigned int )tmp___1;
  }
  goto ldv_49084;
  ldv_49083:
  {
  mac_set_vlan_cam(regs, (int )i, (u8 const *)(& vid));
  vptr->vCAMmask[i / 8U] = (u8 )((int )((signed char )vptr->vCAMmask[i / 8U]) | (int )((signed char )(1 << ((int )i & 7))));
  i = i + 1U;
  }
  if (i > 63U) {
    goto ldv_49082;
  } else {
  }
  {
  tmp___2 = find_next_bit((unsigned long const *)(& vptr->active_vlans), 4096UL,
                          (unsigned long )(vid + 1U));
  vid = (unsigned int )tmp___2;
  }
  ldv_49084: ;
  if (vid <= 4095U) {
    goto ldv_49083;
  } else {
  }
  ldv_49082:
  {
  mac_set_vlan_cam_mask(regs, (u8 *)(& vptr->vCAMmask));
  }
  return;
}
}
static int velocity_vlan_rx_add_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct velocity_info *vptr ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  spin_lock_irq(& vptr->lock);
  set_bit((long )vid, (unsigned long volatile *)(& vptr->active_vlans));
  velocity_init_cam_filter(vptr);
  spin_unlock_irq(& vptr->lock);
  }
  return (0);
}
}
static int velocity_vlan_rx_kill_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct velocity_info *vptr ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  spin_lock_irq(& vptr->lock);
  clear_bit((long )vid, (unsigned long volatile *)(& vptr->active_vlans));
  velocity_init_cam_filter(vptr);
  spin_unlock_irq(& vptr->lock);
  }
  return (0);
}
}
static void velocity_init_rx_ring_indexes(struct velocity_info *vptr )
{
  u32 tmp ;
  {
  vptr->rx.curr = 0;
  tmp = 0U;
  vptr->rx.filled = tmp;
  vptr->rx.dirty = (int )tmp;
  return;
}
}
static void velocity_rx_reset(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  int i ;
  {
  {
  regs = vptr->mac_regs;
  velocity_init_rx_ring_indexes(vptr);
  i = 0;
  }
  goto ldv_49106;
  ldv_49105:
  (vptr->rx.ring + (unsigned long )i)->rdesc0.len = (__le16 )((unsigned int )(vptr->rx.ring + (unsigned long )i)->rdesc0.len | 32768U);
  i = i + 1;
  ldv_49106: ;
  if (i < vptr->options.numrx) {
    goto ldv_49105;
  } else {
  }
  {
  writew((int )((unsigned short )vptr->options.numrx), (void volatile *)(& regs->RBRDU));
  writel((unsigned int )vptr->rx.pool_dma, (void volatile *)(& regs->RDBaseLo));
  writew(0, (void volatile *)(& regs->RDIdx));
  writew((int )((unsigned int )((unsigned short )vptr->options.numrx) + 65535U), (void volatile *)(& regs->RDCSize));
  }
  return;
}
}
static u32 velocity_get_opt_media_mode(struct velocity_info *vptr )
{
  u32 status ;
  {
  status = 0U;
  {
  if ((unsigned int )vptr->options.spd_dpx == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )vptr->options.spd_dpx == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )vptr->options.spd_dpx == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )vptr->options.spd_dpx == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )vptr->options.spd_dpx == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )vptr->options.spd_dpx == 5U) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0:
  status = 32U;
  goto ldv_49113;
  case_2:
  status = 20U;
  goto ldv_49113;
  case_4:
  status = 18U;
  goto ldv_49113;
  case_1:
  status = 4U;
  goto ldv_49113;
  case_3:
  status = 2U;
  goto ldv_49113;
  case_5:
  status = 24U;
  goto ldv_49113;
  switch_break: ;
  }
  ldv_49113:
  vptr->mii_status = status;
  return (status);
}
}
static void safe_disable_mii_autopoll(struct mac_regs *regs )
{
  u16 ww ;
  unsigned char tmp ;
  {
  {
  writeb(0, (void volatile *)(& regs->MIICR));
  ww = 0U;
  }
  goto ldv_49125;
  ldv_49124:
  {
  __const_udelay(4295UL);
  tmp = readb((void const volatile *)(& regs->MIISR));
  }
  if ((int )((signed char )tmp) < 0) {
    goto ldv_49123;
  } else {
  }
  ww = (u16 )((int )ww + 1);
  ldv_49125: ;
  if ((unsigned int )ww <= 4094U) {
    goto ldv_49124;
  } else {
  }
  ldv_49123: ;
  return;
}
}
static void enable_mii_autopoll(struct mac_regs *regs )
{
  int ii ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  writeb(0, (void volatile *)(& regs->MIICR));
  writeb(128, (void volatile *)(& regs->MIIADR));
  ii = 0;
  }
  goto ldv_49132;
  ldv_49131:
  {
  __const_udelay(4295UL);
  tmp = readb((void const volatile *)(& regs->MIISR));
  }
  if ((int )((signed char )tmp) < 0) {
    goto ldv_49130;
  } else {
  }
  ii = ii + 1;
  ldv_49132: ;
  if ((unsigned int )ii <= 4094U) {
    goto ldv_49131;
  } else {
  }
  ldv_49130:
  {
  writeb(128, (void volatile *)(& regs->MIICR));
  ii = 0;
  }
  goto ldv_49135;
  ldv_49134:
  {
  __const_udelay(4295UL);
  tmp___0 = readb((void const volatile *)(& regs->MIISR));
  }
  if ((int )((signed char )tmp___0) >= 0) {
    goto ldv_49133;
  } else {
  }
  ii = ii + 1;
  ldv_49135: ;
  if ((unsigned int )ii <= 4094U) {
    goto ldv_49134;
  } else {
  }
  ldv_49133: ;
  return;
}
}
static int velocity_mii_read(struct mac_regs *regs , u8 index , u16 *data )
{
  u16 ww ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  safe_disable_mii_autopoll(regs);
  writeb((int )index, (void volatile *)(& regs->MIIADR));
  tmp = readb((void const volatile *)(& regs->MIICR));
  writeb((int )((unsigned int )tmp | 64U), (void volatile *)(& regs->MIICR));
  ww = 0U;
  }
  goto ldv_49144;
  ldv_49143:
  {
  tmp___0 = readb((void const volatile *)(& regs->MIICR));
  }
  if (((int )tmp___0 & 64) == 0) {
    goto ldv_49142;
  } else {
  }
  ww = (u16 )((int )ww + 1);
  ldv_49144: ;
  if ((unsigned int )ww <= 4094U) {
    goto ldv_49143;
  } else {
  }
  ldv_49142:
  {
  *data = readw((void const volatile *)(& regs->MIIDATA));
  enable_mii_autopoll(regs);
  }
  if ((unsigned int )ww == 4095U) {
    return (-110);
  } else {
  }
  return (0);
}
}
static u32 mii_check_media_mode(struct mac_regs *regs )
{
  u32 status ;
  u16 ANAR ;
  u16 w ;
  u16 w___0 ;
  u16 w___1 ;
  u16 w___2 ;
  u16 w___3 ;
  {
  {
  status = 0U;
  velocity_mii_read(regs, 1, & w);
  }
  if (((int )w & 4) == 0) {
    status = status | 1U;
  } else {
  }
  {
  velocity_mii_read(regs, 9, & w___1);
  }
  if (((int )w___1 & 512) != 0) {
    status = status | 24U;
  } else {
    {
    velocity_mii_read(regs, 9, & w___0);
    }
    if (((int )w___0 & 256) != 0) {
      status = status | 8U;
    } else {
      {
      velocity_mii_read(regs, 4, & ANAR);
      }
      if (((int )ANAR & 256) != 0) {
        status = status | 20U;
      } else
      if (((int )ANAR & 128) != 0) {
        status = status | 4U;
      } else
      if (((int )ANAR & 64) != 0) {
        status = status | 18U;
      } else {
        status = status | 2U;
      }
    }
  }
  {
  velocity_mii_read(regs, 0, & w___3);
  }
  if (((int )w___3 & 4096) != 0) {
    {
    velocity_mii_read(regs, 4, & ANAR);
    }
    if (((int )ANAR & 480) == 480) {
      {
      velocity_mii_read(regs, 9, & w___2);
      }
      if (((int )w___2 & 768) != 0) {
        status = status | 32U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static int velocity_mii_write(struct mac_regs *regs , u8 mii_addr , u16 data )
{
  u16 ww ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  safe_disable_mii_autopoll(regs);
  writeb((int )mii_addr, (void volatile *)(& regs->MIIADR));
  writew((int )data, (void volatile *)(& regs->MIIDATA));
  tmp = readb((void const volatile *)(& regs->MIICR));
  writeb((int )((unsigned int )tmp | 32U), (void volatile *)(& regs->MIICR));
  ww = 0U;
  }
  goto ldv_49168;
  ldv_49167:
  {
  __const_udelay(21475UL);
  tmp___0 = readb((void const volatile *)(& regs->MIICR));
  }
  if (((int )tmp___0 & 32) == 0) {
    goto ldv_49166;
  } else {
  }
  ww = (u16 )((int )ww + 1);
  ldv_49168: ;
  if ((unsigned int )ww <= 4094U) {
    goto ldv_49167;
  } else {
  }
  ldv_49166:
  {
  enable_mii_autopoll(regs);
  }
  if ((unsigned int )ww == 4095U) {
    return (-110);
  } else {
  }
  return (0);
}
}
static void set_mii_flow_control(struct velocity_info *vptr )
{
  u16 w ;
  u16 w___0 ;
  u16 w___1 ;
  u16 w___2 ;
  u16 w___3 ;
  u16 w___4 ;
  u16 w___5 ;
  u16 w___6 ;
  {
  {
  if (vptr->options.flow_cntl == 2) {
    goto case_2;
  } else {
  }
  if (vptr->options.flow_cntl == 3) {
    goto case_3;
  } else {
  }
  if (vptr->options.flow_cntl == 4) {
    goto case_4;
  } else {
  }
  if (vptr->options.flow_cntl == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_2:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w);
  w = (unsigned int )w & 64511U;
  velocity_mii_write(vptr->mac_regs, 4, (int )w);
  velocity_mii_read(vptr->mac_regs, 4, & w___0);
  w___0 = (u16 )((unsigned int )w___0 | 2048U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___0);
  }
  goto ldv_49175;
  case_3:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w___1);
  w___1 = (u16 )((unsigned int )w___1 | 1024U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___1);
  velocity_mii_read(vptr->mac_regs, 4, & w___2);
  w___2 = (u16 )((unsigned int )w___2 | 2048U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___2);
  }
  goto ldv_49175;
  case_4:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w___3);
  w___3 = (u16 )((unsigned int )w___3 | 1024U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___3);
  velocity_mii_read(vptr->mac_regs, 4, & w___4);
  w___4 = (unsigned int )w___4 & 63487U;
  velocity_mii_write(vptr->mac_regs, 4, (int )w___4);
  }
  goto ldv_49175;
  case_5:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w___5);
  w___5 = (unsigned int )w___5 & 64511U;
  velocity_mii_write(vptr->mac_regs, 4, (int )w___5);
  velocity_mii_read(vptr->mac_regs, 4, & w___6);
  w___6 = (unsigned int )w___6 & 63487U;
  velocity_mii_write(vptr->mac_regs, 4, (int )w___6);
  }
  goto ldv_49175;
  switch_default: ;
  goto ldv_49175;
  switch_break: ;
  }
  ldv_49175: ;
  return;
}
}
static void mii_set_auto_on(struct velocity_info *vptr )
{
  u16 w ;
  u16 w___0 ;
  u16 w___1 ;
  {
  {
  velocity_mii_read(vptr->mac_regs, 0, & w___1);
  }
  if (((int )w___1 & 4096) != 0) {
    {
    velocity_mii_read(vptr->mac_regs, 0, & w);
    w = (u16 )((unsigned int )w | 512U);
    velocity_mii_write(vptr->mac_regs, 0, (int )w);
    }
  } else {
    {
    velocity_mii_read(vptr->mac_regs, 0, & w___0);
    w___0 = (u16 )((unsigned int )w___0 | 4096U);
    velocity_mii_write(vptr->mac_regs, 0, (int )w___0);
    }
  }
  return;
}
}
static u32 check_connection_type(struct mac_regs *regs )
{
  u32 status ;
  u8 PHYSR0 ;
  u16 ANAR ;
  u16 w ;
  u16 w___0 ;
  {
  {
  status = 0U;
  PHYSR0 = readb((void const volatile *)(& regs->PHYSR0));
  }
  if (((int )PHYSR0 & 16) != 0) {
    status = status | 16U;
  } else {
  }
  if (((int )PHYSR0 & 8) != 0) {
    status = status | 8U;
  } else
  if (((int )PHYSR0 & 4) != 0) {
    status = status | 2U;
  } else {
    status = status | 4U;
  }
  {
  velocity_mii_read(regs, 0, & w___0);
  }
  if (((int )w___0 & 4096) != 0) {
    {
    velocity_mii_read(regs, 4, & ANAR);
    }
    if (((int )ANAR & 480) == 480) {
      {
      velocity_mii_read(regs, 9, & w);
      }
      if (((int )w & 768) != 0) {
        status = status | 32U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (status);
}
}
static int velocity_set_media_mode(struct velocity_info *vptr , u32 mii_status )
{
  u32 curr_status ;
  struct mac_regs *regs ;
  u16 w ;
  unsigned char tmp ;
  u16 w___0 ;
  u16 w___1 ;
  u16 w___2 ;
  u16 CTRL1000 ;
  u16 ANAR ;
  u8 CHIPGCR ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  {
  {
  regs = vptr->mac_regs;
  vptr->mii_status = mii_check_media_mode(vptr->mac_regs);
  curr_status = vptr->mii_status & 4294967294U;
  set_mii_flow_control(vptr);
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 1033232UL) {
    {
    velocity_mii_read(vptr->mac_regs, 28, & w);
    w = (u16 )((unsigned int )w | 4U);
    velocity_mii_write(vptr->mac_regs, 28, (int )w);
    }
  } else {
  }
  if (((unsigned long )mii_status & 32UL) != 0UL) {
    if (msglevel > 1) {
      {
      printk("Velocity is AUTO mode\n");
      }
    } else {
    }
    {
    tmp = readb((void const volatile *)(& regs->CHIPGCR));
    writeb((int )tmp & 239, (void volatile *)(& regs->CHIPGCR));
    velocity_mii_read(vptr->mac_regs, 4, & w___0);
    w___0 = (u16 )((unsigned int )w___0 | 480U);
    velocity_mii_write(vptr->mac_regs, 4, (int )w___0);
    velocity_mii_read(vptr->mac_regs, 9, & w___1);
    w___1 = (u16 )((unsigned int )w___1 | 768U);
    velocity_mii_write(vptr->mac_regs, 9, (int )w___1);
    velocity_mii_read(vptr->mac_regs, 0, & w___2);
    w___2 = (u16 )((unsigned int )w___2 | 64U);
    velocity_mii_write(vptr->mac_regs, 0, (int )w___2);
    mii_set_auto_on(vptr);
    }
  } else {
    {
    tmp___0 = readb((void const volatile *)(& regs->CHIPGCR));
    writeb((int )((unsigned int )tmp___0 | 16U), (void volatile *)(& regs->CHIPGCR));
    CHIPGCR = readb((void const volatile *)(& regs->CHIPGCR));
    }
    if (((unsigned long )mii_status & 8UL) != 0UL) {
      CHIPGCR = (u8 )((unsigned int )CHIPGCR | 128U);
    } else {
      CHIPGCR = (unsigned int )CHIPGCR & 127U;
    }
    if (((unsigned long )mii_status & 16UL) != 0UL) {
      {
      CHIPGCR = (u8 )((unsigned int )CHIPGCR | 64U);
      writeb((int )CHIPGCR, (void volatile *)(& regs->CHIPGCR));
      }
      if (msglevel > 1) {
        {
        printk("set Velocity to forced full mode\n");
        }
      } else {
      }
      if ((unsigned int )vptr->rev_id <= 15U) {
        {
        tmp___1 = readb((void const volatile *)(& regs->TCR));
        writeb((int )tmp___1 & 127, (void volatile *)(& regs->TCR));
        }
      } else {
      }
    } else {
      CHIPGCR = (unsigned int )CHIPGCR & 191U;
      if (msglevel > 1) {
        {
        printk("set Velocity to forced half mode\n");
        }
      } else {
      }
      {
      writeb((int )CHIPGCR, (void volatile *)(& regs->CHIPGCR));
      }
      if ((unsigned int )vptr->rev_id <= 15U) {
        {
        tmp___2 = readb((void const volatile *)(& regs->TCR));
        writeb((int )((unsigned int )tmp___2 | 128U), (void volatile *)(& regs->TCR));
        }
      } else {
      }
    }
    {
    velocity_mii_read(vptr->mac_regs, 9, & CTRL1000);
    CTRL1000 = (unsigned int )CTRL1000 & 64767U;
    }
    if (((unsigned long )mii_status & 24UL) == 24UL) {
      CTRL1000 = (u16 )((unsigned int )CTRL1000 | 512U);
    } else {
    }
    {
    velocity_mii_write(vptr->mac_regs, 9, (int )CTRL1000);
    }
    if (((unsigned long )mii_status & 18UL) == 2UL) {
      {
      tmp___3 = readb((void const volatile *)(& regs->TESTCFG));
      writeb((int )tmp___3 & 127, (void volatile *)(& regs->TESTCFG));
      }
    } else {
      {
      tmp___4 = readb((void const volatile *)(& regs->TESTCFG));
      writeb((int )((unsigned int )tmp___4 | 128U), (void volatile *)(& regs->TESTCFG));
      }
    }
    {
    velocity_mii_read(vptr->mac_regs, 4, & ANAR);
    ANAR = (unsigned int )ANAR & 65055U;
    }
    if (((unsigned long )mii_status & 4UL) != 0UL) {
      if (((unsigned long )mii_status & 16UL) != 0UL) {
        ANAR = (u16 )((unsigned int )ANAR | 256U);
      } else {
        ANAR = (u16 )((unsigned int )ANAR | 128U);
      }
    } else
    if (((unsigned long )mii_status & 2UL) != 0UL) {
      if (((unsigned long )mii_status & 16UL) != 0UL) {
        ANAR = (u16 )((unsigned int )ANAR | 64U);
      } else {
        ANAR = (u16 )((unsigned int )ANAR | 32U);
      }
    } else {
    }
    {
    velocity_mii_write(vptr->mac_regs, 4, (int )ANAR);
    mii_set_auto_on(vptr);
    }
  }
  return (1);
}
}
static void velocity_print_link_status(struct velocity_info *vptr )
{
  {
  if ((int )vptr->mii_status & 1) {
    if (msglevel > 1) {
      {
      printk("\r%s: failed to detect cable link\n", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
  } else
  if ((unsigned int )vptr->options.spd_dpx == 0U) {
    if (msglevel > 1) {
      {
      printk("\r%s: Link auto-negotiation", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
    if (((unsigned long )vptr->mii_status & 8UL) != 0UL) {
      if (msglevel > 1) {
        {
        printk(" speed 1000M bps");
        }
      } else {
      }
    } else
    if (((unsigned long )vptr->mii_status & 4UL) != 0UL) {
      if (msglevel > 1) {
        {
        printk(" speed 100M bps");
        }
      } else {
      }
    } else
    if (msglevel > 1) {
      {
      printk(" speed 10M bps");
      }
    } else {
    }
    if (((unsigned long )vptr->mii_status & 16UL) != 0UL) {
      if (msglevel > 1) {
        {
        printk(" full duplex\n");
        }
      } else {
      }
    } else
    if (msglevel > 1) {
      {
      printk(" half duplex\n");
      }
    } else {
    }
  } else {
    if (msglevel > 1) {
      {
      printk("\r%s: Link forced", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
    {
    if ((unsigned int )vptr->options.spd_dpx == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 4U) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_5: ;
    if (msglevel > 1) {
      {
      printk(" speed 1000M bps full duplex\n");
      }
    } else {
    }
    goto ldv_49220;
    case_1: ;
    if (msglevel > 1) {
      {
      printk(" speed 100M bps half duplex\n");
      }
    } else {
    }
    goto ldv_49220;
    case_2: ;
    if (msglevel > 1) {
      {
      printk(" speed 100M bps full duplex\n");
      }
    } else {
    }
    goto ldv_49220;
    case_3: ;
    if (msglevel > 1) {
      {
      printk(" speed 10M bps half duplex\n");
      }
    } else {
    }
    goto ldv_49220;
    case_4: ;
    if (msglevel > 1) {
      {
      printk(" speed 10M bps full duplex\n");
      }
    } else {
    }
    goto ldv_49220;
    switch_default: ;
    goto ldv_49220;
    switch_break: ;
    }
    ldv_49220: ;
  }
  return;
}
}
static void enable_flow_control_ability(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  regs = vptr->mac_regs;
  {
  if (vptr->options.flow_cntl == 1) {
    goto case_1;
  } else {
  }
  if (vptr->options.flow_cntl == 2) {
    goto case_2;
  } else {
  }
  if (vptr->options.flow_cntl == 3) {
    goto case_3;
  } else {
  }
  if (vptr->options.flow_cntl == 4) {
    goto case_4;
  } else {
  }
  if (vptr->options.flow_cntl == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = readb((void const volatile *)(& regs->PHYSR0));
  }
  if (((int )tmp & 2) != 0) {
    {
    writel(2097152U, (void volatile *)(& regs->CR0Set));
    }
  } else {
    {
    writel(2097152U, (void volatile *)(& regs->CR0Clr));
    }
  }
  {
  tmp___0 = readb((void const volatile *)(& regs->PHYSR0));
  }
  if ((int )tmp___0 & 1) {
    {
    writel(4194304U, (void volatile *)(& regs->CR0Set));
    }
  } else {
    {
    writel(4194304U, (void volatile *)(& regs->CR0Clr));
    }
  }
  goto ldv_49231;
  case_2:
  {
  writel(4194304U, (void volatile *)(& regs->CR0Set));
  writel(2097152U, (void volatile *)(& regs->CR0Clr));
  }
  goto ldv_49231;
  case_3:
  {
  writel(2097152U, (void volatile *)(& regs->CR0Set));
  writel(4194304U, (void volatile *)(& regs->CR0Clr));
  }
  goto ldv_49231;
  case_4:
  {
  writel(4194304U, (void volatile *)(& regs->CR0Set));
  writel(2097152U, (void volatile *)(& regs->CR0Set));
  }
  goto ldv_49231;
  case_5:
  {
  writel(2097152U, (void volatile *)(& regs->CR0Clr));
  writel(4194304U, (void volatile *)(& regs->CR0Clr));
  }
  goto ldv_49231;
  switch_default: ;
  goto ldv_49231;
  switch_break: ;
  }
  ldv_49231: ;
  return;
}
}
static int velocity_soft_reset(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  int i ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  regs = vptr->mac_regs;
  i = 0;
  writel(32768U, (void volatile *)(& regs->CR0Set));
  i = 0;
  }
  goto ldv_49244;
  ldv_49243:
  {
  __const_udelay(21475UL);
  tmp = readl((void const volatile *)(& regs->CR0Set));
  }
  if (((unsigned long )tmp & 32768UL) == 0UL) {
    goto ldv_49242;
  } else {
  }
  i = i + 1;
  ldv_49244: ;
  if ((unsigned int )i <= 4094U) {
    goto ldv_49243;
  } else {
  }
  ldv_49242: ;
  if (i == 4095) {
    {
    writel(1073741824U, (void volatile *)(& regs->CR0Set));
    }
    if (1) {
      {
      __const_udelay(8590000UL);
      }
    } else {
      __ms = 2UL;
      goto ldv_49247;
      ldv_49246:
      {
      __const_udelay(4295000UL);
      }
      ldv_49247:
      tmp___0 = __ms;
      __ms = __ms - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_49246;
      } else {
      }
    }
  } else {
  }
  return (0);
}
}
static void velocity_set_multi(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  struct mac_regs *regs ;
  u8 rx_mode ;
  int i ;
  struct netdev_hw_addr *ha ;
  int offset ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned char tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  regs = vptr->mac_regs;
  }
  if ((dev->flags & 256U) != 0U) {
    {
    writel(4294967295U, (void volatile *)(& regs->MARCAM));
    writel(4294967295U, (void volatile *)(& regs->MARCAM) + 4U);
    rx_mode = 28U;
    }
  } else
  if (dev->mc.count > vptr->multicast_limit || (dev->flags & 512U) != 0U) {
    {
    writel(4294967295U, (void volatile *)(& regs->MARCAM));
    writel(4294967295U, (void volatile *)(& regs->MARCAM) + 4U);
    rx_mode = 12U;
    }
  } else {
    {
    offset = 64 - vptr->multicast_limit;
    mac_get_cam_mask(regs, (u8 *)(& vptr->mCAMmask));
    i = 0;
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    }
    goto ldv_49263;
    ldv_49262:
    {
    mac_set_cam(regs, i + offset, (u8 const *)(& ha->addr));
    vptr->mCAMmask[(offset + i) / 8] = (u8 )((int )((signed char )vptr->mCAMmask[(offset + i) / 8]) | (int )((signed char )(1 << ((offset + i) & 7))));
    i = i + 1;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_49263: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_49262;
    } else {
    }
    {
    mac_set_cam_mask(regs, (u8 *)(& vptr->mCAMmask));
    rx_mode = 76U;
    }
  }
  if (dev->mtu > 1500U) {
    rx_mode = (u8 )((unsigned int )rx_mode | 32U);
  } else {
  }
  {
  tmp___0 = readb((void const volatile *)(& regs->RCR));
  writeb((int )tmp___0 | (int )rx_mode, (void volatile *)(& regs->RCR));
  }
  return;
}
}
static void mii_init(struct velocity_info *vptr , u32 mii_status )
{
  u16 BMCR ;
  u16 w ;
  u16 w___0 ;
  u16 w___1 ;
  u16 w___2 ;
  u16 w___3 ;
  u16 w___4 ;
  u16 w___5 ;
  u16 w___6 ;
  u16 w___7 ;
  u16 w___8 ;
  u16 w___9 ;
  u16 w___10 ;
  u16 w___11 ;
  {
  {
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 37948500UL) {
    goto case_37948500;
  } else {
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 1033232UL) {
    goto case_1033232;
  } else {
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 1033744UL) {
    goto case_1033744;
  } else {
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 1033728UL) {
    goto case_1033728;
  } else {
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 21040208UL) {
    goto case_21040208;
  } else {
  }
  if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 21040192UL) {
    goto case_21040192;
  } else {
  }
  goto switch_default;
  case_37948500:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w);
  w = (u16 )((unsigned int )w | 3072U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w);
  }
  if (((unsigned long )vptr->mii_status & 16UL) != 0UL) {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___0);
    w___0 = (u16 )((unsigned int )w___0 | 8192U);
    velocity_mii_write(vptr->mac_regs, 22, (int )w___0);
    }
  } else {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___1);
    w___1 = (unsigned int )w___1 & 57343U;
    velocity_mii_write(vptr->mac_regs, 22, (int )w___1);
    }
  }
  {
  velocity_mii_read(vptr->mac_regs, 27, & w___2);
  w___2 = (u16 )((unsigned int )w___2 | 4U);
  velocity_mii_write(vptr->mac_regs, 27, (int )w___2);
  }
  goto ldv_49275;
  case_1033232:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w___3);
  w___3 = (unsigned int )w___3 & 62463U;
  velocity_mii_write(vptr->mac_regs, 4, (int )w___3);
  }
  if (((unsigned long )vptr->mii_status & 16UL) != 0UL) {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___4);
    w___4 = (u16 )((unsigned int )w___4 | 8192U);
    velocity_mii_write(vptr->mac_regs, 22, (int )w___4);
    }
  } else {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___5);
    w___5 = (unsigned int )w___5 & 57343U;
    velocity_mii_write(vptr->mac_regs, 22, (int )w___5);
    }
  }
  {
  velocity_mii_read(vptr->mac_regs, 27, & w___6);
  w___6 = (u16 )((unsigned int )w___6 | 4U);
  velocity_mii_write(vptr->mac_regs, 27, (int )w___6);
  }
  goto ldv_49275;
  case_1033744: ;
  case_1033728:
  {
  velocity_mii_read(vptr->mac_regs, 4, & w___7);
  w___7 = (u16 )((unsigned int )w___7 | 3072U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___7);
  }
  if (((unsigned long )vptr->mii_status & 16UL) != 0UL) {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___8);
    w___8 = (u16 )((unsigned int )w___8 | 8192U);
    velocity_mii_write(vptr->mac_regs, 22, (int )w___8);
    }
  } else {
    {
    velocity_mii_read(vptr->mac_regs, 22, & w___9);
    w___9 = (unsigned int )w___9 & 57343U;
    velocity_mii_write(vptr->mac_regs, 22, (int )w___9);
    }
  }
  goto ldv_49275;
  case_21040208: ;
  case_21040192:
  {
  velocity_mii_read(vptr->mac_regs, 16, & w___10);
  w___10 = (u16 )((unsigned int )w___10 | 2048U);
  velocity_mii_write(vptr->mac_regs, 16, (int )w___10);
  velocity_mii_read(vptr->mac_regs, 4, & w___11);
  w___11 = (u16 )((unsigned int )w___11 | 3072U);
  velocity_mii_write(vptr->mac_regs, 4, (int )w___11);
  }
  goto ldv_49275;
  switch_default: ;
  switch_break: ;
  }
  ldv_49275:
  {
  velocity_mii_read(vptr->mac_regs, 0, & BMCR);
  }
  if (((int )BMCR & 1024) != 0) {
    {
    BMCR = (unsigned int )BMCR & 64511U;
    velocity_mii_write(vptr->mac_regs, 0, (int )BMCR);
    }
  } else {
  }
  return;
}
}
static void setup_queue_timers(struct velocity_info *vptr )
{
  u8 txqueue_timer ;
  u8 rxqueue_timer ;
  {
  if ((unsigned int )vptr->rev_id > 15U) {
    txqueue_timer = 0U;
    rxqueue_timer = 0U;
    if (((unsigned long )vptr->mii_status & 12UL) != 0UL) {
      txqueue_timer = (u8 )vptr->options.txqueue_timer;
      rxqueue_timer = (u8 )vptr->options.rxqueue_timer;
    } else {
    }
    {
    writeb((int )txqueue_timer, (void volatile *)(& (vptr->mac_regs)->TQETMR));
    writeb((int )rxqueue_timer, (void volatile *)(& (vptr->mac_regs)->RQETMR));
    }
  } else {
  }
  return;
}
}
static void setup_adaptive_interrupts(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  u16 tx_intsup ;
  u16 rx_intsup ;
  {
  {
  regs = vptr->mac_regs;
  tx_intsup = (u16 )vptr->options.tx_intsup;
  rx_intsup = (u16 )vptr->options.rx_intsup;
  vptr->int_mask = 37223183U;
  writeb(64, (void volatile *)(& regs->CAMCR));
  }
  if ((unsigned int )tx_intsup != 0U) {
    {
    vptr->int_mask = vptr->int_mask & 4294967047U;
    writew((int )tx_intsup, (void volatile *)(& regs->ISRCTL));
    }
  } else {
    {
    writew(16384, (void volatile *)(& regs->ISRCTL));
    }
  }
  {
  writeb(128, (void volatile *)(& regs->CAMCR));
  }
  if ((unsigned int )rx_intsup != 0U) {
    {
    vptr->int_mask = vptr->int_mask & 4294967291U;
    writew((int )rx_intsup, (void volatile *)(& regs->ISRCTL));
    }
  } else {
    {
    writew(8192, (void volatile *)(& regs->ISRCTL));
    }
  }
  {
  writeb(0, (void volatile *)(& regs->CAMCR));
  }
  return;
}
}
static void velocity_init_registers(struct velocity_info *vptr , enum velocity_init_type type )
{
  struct mac_regs *regs ;
  struct net_device *netdev ;
  int i ;
  int mii_status ;
  u32 tmp ;
  int tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  {
  {
  regs = vptr->mac_regs;
  netdev = vptr->netdev;
  mac_wol_reset(regs);
  }
  {
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )type == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2:
  {
  netif_stop_queue(netdev);
  velocity_rx_reset(vptr);
  writeb(1, (void volatile *)(& regs->RDCSRSet));
  writeb(4, (void volatile *)(& regs->RDCSRSet));
  tmp = velocity_get_opt_media_mode(vptr);
  mii_status = (int )tmp;
  tmp___0 = velocity_set_media_mode(vptr, (u32 )mii_status);
  }
  if (tmp___0 != 1) {
    {
    velocity_print_link_status(vptr);
    }
    if (((unsigned long )vptr->mii_status & 1UL) == 0UL) {
      {
      netif_wake_queue(netdev);
      }
    } else {
    }
  } else {
  }
  {
  enable_flow_control_ability(vptr);
  writel(4294967295U, (void volatile *)(& regs->ISR));
  writel(2U, (void volatile *)(& regs->CR0Clr));
  writel(2061U, (void volatile *)(& regs->CR0Set));
  }
  goto ldv_49312;
  case_0: ;
  switch_default:
  {
  velocity_soft_reset(vptr);
  }
  if (1) {
    {
    __const_udelay(21475000UL);
    }
  } else {
    __ms = 5UL;
    goto ldv_49317;
    ldv_49316:
    {
    __const_udelay(4295000UL);
    }
    ldv_49317:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_49316;
    } else {
    }
  }
  if (vptr->no_eeprom == 0) {
    {
    mac_eeprom_reload(regs);
    i = 0;
    }
    goto ldv_49320;
    ldv_49319:
    {
    writeb((int )*(netdev->dev_addr + (unsigned long )i), (void volatile *)(& regs->PAR) + (unsigned long )i);
    i = i + 1;
    }
    ldv_49320: ;
    if (i <= 5) {
      goto ldv_49319;
    } else {
    }
  } else {
  }
  {
  tmp___2 = readb((void const volatile *)(& regs->CFGA));
  writeb((int )tmp___2 & 254, (void volatile *)(& regs->CFGA));
  tmp___3 = readb((void const volatile *)(& regs->MCFG));
  writeb((int )((unsigned char )(((int )((signed char )tmp___3) & -49) | (int )((signed char )vptr->options.rx_thresh))),
         (void volatile *)(& regs->MCFG));
  tmp___4 = readb((void const volatile *)(& regs->DCFG));
  writeb((int )((unsigned char )(((int )((signed char )tmp___4) & -8) | (int )((signed char )vptr->options.DMA_length))),
         (void volatile *)(& regs->DCFG));
  writeb(48, (void volatile *)(& regs->WOLCFGSet));
  tmp___5 = readb((void const volatile *)(& regs->CFGB));
  writeb((int )((unsigned char )(((int )((signed char )tmp___5) & -32) | 16)), (void volatile *)(& regs->CFGB));
  velocity_init_cam_filter(vptr);
  velocity_set_multi(netdev);
  enable_mii_autopoll(regs);
  setup_adaptive_interrupts(vptr);
  writel((unsigned int )vptr->rx.pool_dma, (void volatile *)(& regs->RDBaseLo));
  writew((int )((unsigned int )((unsigned short )vptr->options.numrx) + 65535U), (void volatile *)(& regs->RDCSize));
  writeb(1, (void volatile *)(& regs->RDCSRSet));
  writeb(4, (void volatile *)(& regs->RDCSRSet));
  writew((int )((unsigned int )((unsigned short )vptr->options.numtx) + 65535U), (void volatile *)(& regs->TDCSize));
  i = 0;
  }
  goto ldv_49323;
  ldv_49322:
  {
  writel((unsigned int )vptr->tx.pool_dma[i], (void volatile *)(& regs->TDBaseLo) + (unsigned long )i);
  writew((int )((unsigned short )(1 << i * 4)), (void volatile *)(& regs->TDCSRSet));
  i = i + 1;
  }
  ldv_49323: ;
  if (i < vptr->tx.numq) {
    goto ldv_49322;
  } else {
  }
  {
  init_flow_control_register(vptr);
  writel(2U, (void volatile *)(& regs->CR0Clr));
  writel(2061U, (void volatile *)(& regs->CR0Set));
  tmp___6 = velocity_get_opt_media_mode(vptr);
  mii_status = (int )tmp___6;
  netif_stop_queue(netdev);
  mii_init(vptr, (u32 )mii_status);
  tmp___7 = velocity_set_media_mode(vptr, (u32 )mii_status);
  }
  if (tmp___7 != 1) {
    {
    velocity_print_link_status(vptr);
    }
    if (((unsigned long )vptr->mii_status & 1UL) == 0UL) {
      {
      netif_wake_queue(netdev);
      }
    } else {
    }
  } else {
  }
  {
  enable_flow_control_ability(vptr);
  tmp___8 = readb((void const volatile *)(& regs->MIBCR));
  writeb((int )((unsigned int )tmp___8 | 8U), (void volatile *)(& regs->MIBCR));
  tmp___9 = readb((void const volatile *)(& regs->MIBCR));
  writeb((int )((unsigned int )tmp___9 | 1U), (void volatile *)(& regs->MIBCR));
  }
  ldv_49325:
  {
  tmp___10 = readb((void const volatile *)(& regs->MIBCR));
  }
  if ((int )tmp___10 & 1) {
    goto ldv_49325;
  } else {
  }
  {
  tmp___11 = readb((void const volatile *)(& regs->MIBCR));
  writeb((int )tmp___11 & 247, (void volatile *)(& regs->MIBCR));
  writel(vptr->int_mask, (void volatile *)(& regs->IMR));
  writel(4294967295U, (void volatile *)(& regs->ISR));
  }
  switch_break: ;
  }
  ldv_49312: ;
  return;
}
}
static void velocity_give_many_rx_descs(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  int avail ;
  int dirty ;
  int unusable ;
  {
  regs = vptr->mac_regs;
  if (vptr->rx.filled <= 3U) {
    return;
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  unusable = (int )vptr->rx.filled & 3;
  dirty = vptr->rx.dirty - unusable;
  avail = (int )vptr->rx.filled & 65532;
  goto ldv_49335;
  ldv_49334:
  dirty = dirty > 0 ? dirty + -1 : vptr->options.numrx + -1;
  (vptr->rx.ring + (unsigned long )dirty)->rdesc0.len = (__le16 )((unsigned int )(vptr->rx.ring + (unsigned long )dirty)->rdesc0.len | 32768U);
  avail = avail - 1;
  ldv_49335: ;
  if (avail != 0) {
    goto ldv_49334;
  } else {
  }
  {
  writew((int )((unsigned short )vptr->rx.filled) & 65532, (void volatile *)(& regs->RBRDU));
  vptr->rx.filled = (u32 )unusable;
  }
  return;
}
}
static int velocity_init_dma_rings(struct velocity_info *vptr )
{
  struct velocity_opt *opt ;
  unsigned int rx_ring_size ;
  unsigned int tx_ring_size ;
  dma_addr_t pool_dma ;
  void *pool ;
  unsigned int i ;
  {
  {
  opt = & vptr->options;
  rx_ring_size = (unsigned int const )((unsigned long )opt->numrx) * 16U;
  tx_ring_size = (unsigned int const )((unsigned long )opt->numtx) * 64U;
  pool = dma_alloc_attrs(vptr->dev, (size_t )(tx_ring_size * (unsigned int )vptr->tx.numq + rx_ring_size),
                         & pool_dma, 32U, (struct dma_attrs *)0);
  }
  if ((unsigned long )pool == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)vptr->dev, "%s : DMA memory allocation failed.\n",
            (char *)(& (vptr->netdev)->name));
    }
    return (-12);
  } else {
  }
  vptr->rx.ring = (struct rx_desc *)pool;
  vptr->rx.pool_dma = pool_dma;
  pool = pool + (unsigned long )rx_ring_size;
  pool_dma = pool_dma + (dma_addr_t )rx_ring_size;
  i = 0U;
  goto ldv_49347;
  ldv_49346:
  vptr->tx.rings[i] = (struct tx_desc *)pool;
  vptr->tx.pool_dma[i] = pool_dma;
  pool = pool + (unsigned long )tx_ring_size;
  pool_dma = pool_dma + (dma_addr_t )tx_ring_size;
  i = i + 1U;
  ldv_49347: ;
  if (i < (unsigned int )vptr->tx.numq) {
    goto ldv_49346;
  } else {
  }
  return (0);
}
}
static void velocity_set_rxbufsize(struct velocity_info *vptr , int mtu )
{
  {
  vptr->rx.buf_sz = mtu > 1500 ? mtu + 32 : 1540;
  return;
}
}
static int velocity_alloc_rx_buf(struct velocity_info *vptr , int idx )
{
  struct rx_desc *rd ;
  struct velocity_rd_info *rd_info ;
  {
  {
  rd = vptr->rx.ring + (unsigned long )idx;
  rd_info = vptr->rx.info + (unsigned long )idx;
  rd_info->skb = netdev_alloc_skb(vptr->netdev, (unsigned int )(vptr->rx.buf_sz + 64));
  }
  if ((unsigned long )rd_info->skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  skb_reserve(rd_info->skb, (int )(64U - ((unsigned int )((long )(rd_info->skb)->data) & 63U)));
  rd_info->skb_dma = dma_map_single_attrs(vptr->dev, (void *)(rd_info->skb)->data,
                                          (size_t )vptr->rx.buf_sz, 2, (struct dma_attrs *)0);
  *((u32 *)(& rd->rdesc0)) = 0U;
  rd->size = (__le16 )((unsigned int )((unsigned short )vptr->rx.buf_sz) | 32768U);
  rd->pa_low = (unsigned int )rd_info->skb_dma;
  rd->pa_high = 0U;
  }
  return (0);
}
}
static int velocity_rx_refill(struct velocity_info *vptr )
{
  int dirty ;
  int done ;
  struct rx_desc *rd ;
  int tmp ;
  {
  dirty = vptr->rx.dirty;
  done = 0;
  ldv_49366:
  rd = vptr->rx.ring + (unsigned long )dirty;
  if ((int )((short )rd->rdesc0.len) < 0) {
    goto ldv_49365;
  } else {
  }
  if ((unsigned long )(vptr->rx.info + (unsigned long )dirty)->skb == (unsigned long )((struct sk_buff *)0)) {
    {
    tmp = velocity_alloc_rx_buf(vptr, dirty);
    }
    if (tmp < 0) {
      goto ldv_49365;
    } else {
    }
  } else {
  }
  done = done + 1;
  dirty = dirty < vptr->options.numrx + -1 ? dirty + 1 : 0;
  if (dirty != vptr->rx.curr) {
    goto ldv_49366;
  } else {
  }
  ldv_49365: ;
  if (done != 0) {
    vptr->rx.dirty = dirty;
    vptr->rx.filled = vptr->rx.filled + (u32 )done;
  } else {
  }
  return (done);
}
}
static void velocity_free_rd_ring(struct velocity_info *vptr )
{
  int i ;
  struct velocity_rd_info *rd_info ;
  struct rx_desc *rd ;
  {
  if ((unsigned long )vptr->rx.info == (unsigned long )((struct velocity_rd_info *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_49375;
  ldv_49374:
  {
  rd_info = vptr->rx.info + (unsigned long )i;
  rd = vptr->rx.ring + (unsigned long )i;
  memset((void *)rd, 0, 16UL);
  }
  if ((unsigned long )rd_info->skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49373;
  } else {
  }
  {
  dma_unmap_single_attrs(vptr->dev, rd_info->skb_dma, (size_t )vptr->rx.buf_sz, 2,
                         (struct dma_attrs *)0);
  rd_info->skb_dma = 0ULL;
  consume_skb(rd_info->skb);
  rd_info->skb = (struct sk_buff *)0;
  }
  ldv_49373:
  i = i + 1;
  ldv_49375: ;
  if (i < vptr->options.numrx) {
    goto ldv_49374;
  } else {
  }
  {
  kfree((void const *)vptr->rx.info);
  vptr->rx.info = (struct velocity_rd_info *)0;
  }
  return;
}
}
static int velocity_init_rd_ring(struct velocity_info *vptr )
{
  int ret ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  ret = -12;
  tmp = kcalloc((size_t )vptr->options.numrx, 16UL, 208U);
  vptr->rx.info = (struct velocity_rd_info *)tmp;
  }
  if ((unsigned long )vptr->rx.info == (unsigned long )((struct velocity_rd_info *)0)) {
    goto out;
  } else {
  }
  {
  velocity_init_rx_ring_indexes(vptr);
  tmp___0 = velocity_rx_refill(vptr);
  }
  if (tmp___0 != vptr->options.numrx) {
    if (msglevel >= 0) {
      {
      printk("\v%s: failed to allocate RX buffer.\n", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
    {
    velocity_free_rd_ring(vptr);
    }
    goto out;
  } else {
  }
  ret = 0;
  out: ;
  return (ret);
}
}
static int velocity_init_td_ring(struct velocity_info *vptr )
{
  int j ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  j = 0;
  goto ldv_49390;
  ldv_49389:
  {
  tmp = kcalloc((size_t )vptr->options.numtx, 72UL, 208U);
  vptr->tx.infos[j] = (struct velocity_td_info *)tmp;
  }
  if ((unsigned long )vptr->tx.infos[j] == (unsigned long )((struct velocity_td_info *)0)) {
    goto ldv_49387;
    ldv_49386:
    {
    kfree((void const *)vptr->tx.infos[j]);
    }
    ldv_49387:
    j = j - 1;
    if (j >= 0) {
      goto ldv_49386;
    } else {
    }
    return (-12);
  } else {
  }
  tmp___1 = 0;
  vptr->tx.used[j] = tmp___1;
  tmp___0 = tmp___1;
  vptr->tx.curr[j] = tmp___0;
  vptr->tx.tail[j] = tmp___0;
  j = j + 1;
  ldv_49390: ;
  if (j < vptr->tx.numq) {
    goto ldv_49389;
  } else {
  }
  return (0);
}
}
static void velocity_free_dma_rings(struct velocity_info *vptr )
{
  int size ;
  {
  {
  size = (int const )((unsigned int )((unsigned long )vptr->options.numrx + ((unsigned long )vptr->options.numtx * (unsigned long )vptr->tx.numq) * 4UL) * 16U);
  dma_free_attrs(vptr->dev, (size_t )size, (void *)vptr->rx.ring, vptr->rx.pool_dma,
                 (struct dma_attrs *)0);
  }
  return;
}
}
static int velocity_init_rings(struct velocity_info *vptr , int mtu )
{
  int ret ;
  {
  {
  velocity_set_rxbufsize(vptr, mtu);
  ret = velocity_init_dma_rings(vptr);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  ret = velocity_init_rd_ring(vptr);
  }
  if (ret < 0) {
    goto err_free_dma_rings_0;
  } else {
  }
  {
  ret = velocity_init_td_ring(vptr);
  }
  if (ret < 0) {
    goto err_free_rd_ring_1;
  } else {
  }
  out: ;
  return (ret);
  err_free_rd_ring_1:
  {
  velocity_free_rd_ring(vptr);
  }
  err_free_dma_rings_0:
  {
  velocity_free_dma_rings(vptr);
  }
  goto out;
}
}
static void velocity_free_tx_buf(struct velocity_info *vptr , struct velocity_td_info *tdinfo ,
                                 struct tx_desc *td )
{
  struct sk_buff *skb ;
  int i ;
  size_t pktlen ;
  size_t __max1 ;
  size_t __max2 ;
  size_t __max1___0 ;
  size_t __max2___0 ;
  unsigned char *tmp ;
  {
  skb = tdinfo->skb;
  if ((unsigned long )(& tdinfo->skb_dma) != (unsigned long )((dma_addr_t (*)[7])0)) {
    i = 0;
    goto ldv_49419;
    ldv_49418:
    {
    __max1 = (size_t )skb->len;
    __max2 = 60UL;
    pktlen = __max1 > __max2 ? __max1 : __max2;
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    }
    if ((unsigned int )((struct skb_shared_info *)tmp)->nr_frags != 0U) {
      __max1___0 = pktlen;
      __max2___0 = (size_t )((int )td->td_buf[i].size & -32769);
      pktlen = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
    } else {
    }
    {
    dma_unmap_single_attrs(vptr->dev, tdinfo->skb_dma[i], (size_t )((unsigned short )pktlen),
                           1, (struct dma_attrs *)0);
    i = i + 1;
    }
    ldv_49419: ;
    if (i < tdinfo->nskb_dma) {
      goto ldv_49418;
    } else {
    }
  } else {
  }
  {
  dev_kfree_skb_irq(skb);
  tdinfo->skb = (struct sk_buff *)0;
  }
  return;
}
}
static void velocity_free_td_ring_entry(struct velocity_info *vptr , int q , int n )
{
  struct velocity_td_info *td_info ;
  int i ;
  {
  td_info = vptr->tx.infos[q] + (unsigned long )n;
  if ((unsigned long )td_info == (unsigned long )((struct velocity_td_info *)0)) {
    return;
  } else {
  }
  if ((unsigned long )td_info->skb != (unsigned long )((struct sk_buff *)0)) {
    i = 0;
    goto ldv_49429;
    ldv_49428: ;
    if (td_info->skb_dma[i] != 0ULL) {
      {
      dma_unmap_single_attrs(vptr->dev, td_info->skb_dma[i], (size_t )(td_info->skb)->len,
                             1, (struct dma_attrs *)0);
      td_info->skb_dma[i] = 0ULL;
      }
    } else {
    }
    i = i + 1;
    ldv_49429: ;
    if (i < td_info->nskb_dma) {
      goto ldv_49428;
    } else {
    }
    {
    consume_skb(td_info->skb);
    td_info->skb = (struct sk_buff *)0;
    }
  } else {
  }
  return;
}
}
static void velocity_free_td_ring(struct velocity_info *vptr )
{
  int i ;
  int j ;
  {
  j = 0;
  goto ldv_49441;
  ldv_49440: ;
  if ((unsigned long )vptr->tx.infos[j] == (unsigned long )((struct velocity_td_info *)0)) {
    goto ldv_49436;
  } else {
  }
  i = 0;
  goto ldv_49438;
  ldv_49437:
  {
  velocity_free_td_ring_entry(vptr, j, i);
  i = i + 1;
  }
  ldv_49438: ;
  if (i < vptr->options.numtx) {
    goto ldv_49437;
  } else {
  }
  {
  kfree((void const *)vptr->tx.infos[j]);
  vptr->tx.infos[j] = (struct velocity_td_info *)0;
  }
  ldv_49436:
  j = j + 1;
  ldv_49441: ;
  if (j < vptr->tx.numq) {
    goto ldv_49440;
  } else {
  }
  return;
}
}
static void velocity_free_rings(struct velocity_info *vptr )
{
  {
  {
  velocity_free_td_ring(vptr);
  velocity_free_rd_ring(vptr);
  velocity_free_dma_rings(vptr);
  }
  return;
}
}
static void velocity_error(struct velocity_info *vptr , int status )
{
  struct mac_regs *regs ;
  unsigned short tmp ;
  unsigned char tmp___0 ;
  struct mac_regs *regs___0 ;
  int linked ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  {
  if (((unsigned long )status & 33554432UL) != 0UL) {
    {
    regs = vptr->mac_regs;
    tmp = readw((void const volatile *)(& regs->TDIdx));
    printk("\vTD structure error TDindex=%hx\n", (int )tmp);
    tmp___0 = readb((void const volatile *)(& regs->TXESR));
    writeb((int )((unsigned int )tmp___0 | 1U), (void volatile *)(& regs->TXESR));
    writew(1, (void volatile *)(& regs->TDCSRClr));
    netif_stop_queue(vptr->netdev);
    }
  } else {
  }
  if (((unsigned long )status & 32768UL) != 0UL) {
    regs___0 = vptr->mac_regs;
    if ((unsigned int )vptr->options.spd_dpx == 0U) {
      {
      vptr->mii_status = check_connection_type(regs___0);
      }
      if ((unsigned int )vptr->rev_id <= 15U) {
        if (((unsigned long )vptr->mii_status & 16UL) != 0UL) {
          {
          tmp___1 = readb((void const volatile *)(& regs___0->TCR));
          writeb((int )((unsigned int )tmp___1 | 128U), (void volatile *)(& regs___0->TCR));
          }
        } else {
          {
          tmp___2 = readb((void const volatile *)(& regs___0->TCR));
          writeb((int )tmp___2 & 127, (void volatile *)(& regs___0->TCR));
          }
        }
      } else {
      }
      if (((unsigned long )vptr->mii_status & 18UL) == 2UL) {
        {
        tmp___3 = readb((void const volatile *)(& regs___0->TESTCFG));
        writeb((int )tmp___3 & 127, (void volatile *)(& regs___0->TESTCFG));
        }
      } else {
        {
        tmp___4 = readb((void const volatile *)(& regs___0->TESTCFG));
        writeb((int )((unsigned int )tmp___4 | 128U), (void volatile *)(& regs___0->TESTCFG));
        }
      }
      {
      setup_queue_timers(vptr);
      }
    } else {
    }
    {
    tmp___5 = readb((void const volatile *)(& regs___0->PHYSR0));
    linked = (int )tmp___5 & 64;
    }
    if (linked != 0) {
      {
      vptr->mii_status = vptr->mii_status & 4294967294U;
      netif_carrier_on(vptr->netdev);
      }
    } else {
      {
      vptr->mii_status = vptr->mii_status | 1U;
      netif_carrier_off(vptr->netdev);
      }
    }
    {
    velocity_print_link_status(vptr);
    enable_flow_control_ability(vptr);
    enable_mii_autopoll(regs___0);
    }
    if ((int )vptr->mii_status & 1) {
      {
      netif_stop_queue(vptr->netdev);
      }
    } else {
      {
      netif_wake_queue(vptr->netdev);
      }
    }
  } else {
  }
  if (((unsigned long )status & 2097152UL) != 0UL) {
    {
    velocity_update_hw_mibs(vptr);
    }
  } else {
  }
  if (((unsigned long )status & 8192UL) != 0UL) {
    {
    writeb(4, (void volatile *)(& (vptr->mac_regs)->RDCSRSet));
    }
  } else {
  }
  return;
}
}
static int velocity_tx_srv(struct velocity_info *vptr )
{
  struct tx_desc *td ;
  int qnum ;
  int full ;
  int idx ;
  int works ;
  struct velocity_td_info *tdinfo ;
  struct net_device_stats *stats ;
  int tmp ;
  bool tmp___0 ;
  {
  full = 0;
  works = 0;
  stats = & (vptr->netdev)->stats;
  qnum = 0;
  goto ldv_49467;
  ldv_49466:
  idx = vptr->tx.tail[qnum];
  goto ldv_49465;
  ldv_49464:
  td = vptr->tx.rings[qnum] + (unsigned long )idx;
  tdinfo = vptr->tx.infos[qnum] + (unsigned long )idx;
  if ((int )((short )td->tdesc0.len) < 0) {
    goto ldv_49463;
  } else {
  }
  tmp = works;
  works = works + 1;
  if (tmp > 15) {
    goto ldv_49463;
  } else {
  }
  if ((int )((short )td->tdesc0.TSR) < 0) {
    stats->tx_errors = stats->tx_errors + 1UL;
    stats->tx_dropped = stats->tx_dropped + 1UL;
    if (((int )td->tdesc0.TSR & 256) != 0) {
      stats->tx_heartbeat_errors = stats->tx_heartbeat_errors + 1UL;
    } else {
    }
    if (((int )td->tdesc0.TSR & 512) != 0) {
      stats->tx_carrier_errors = stats->tx_carrier_errors + 1UL;
    } else {
    }
    if (((int )td->tdesc0.TSR & 128) != 0) {
      stats->tx_aborted_errors = stats->tx_aborted_errors + 1UL;
    } else {
    }
    if (((int )td->tdesc0.TSR & 32) != 0) {
      stats->tx_window_errors = stats->tx_window_errors + 1UL;
    } else {
    }
  } else {
    stats->tx_packets = stats->tx_packets + 1UL;
    stats->tx_bytes = stats->tx_bytes + (unsigned long )(tdinfo->skb)->len;
  }
  {
  velocity_free_tx_buf(vptr, tdinfo, td);
  vptr->tx.used[qnum] = vptr->tx.used[qnum] - 1;
  idx = (idx + 1) % vptr->options.numtx;
  }
  ldv_49465: ;
  if (vptr->tx.used[qnum] > 0) {
    goto ldv_49464;
  } else {
  }
  ldv_49463:
  vptr->tx.tail[qnum] = idx;
  if (vptr->options.numtx - vptr->tx.used[qnum] <= 0) {
    full = 1;
  } else {
  }
  qnum = qnum + 1;
  ldv_49467: ;
  if (qnum < vptr->tx.numq) {
    goto ldv_49466;
  } else {
  }
  {
  tmp___0 = netif_queue_stopped((struct net_device const *)vptr->netdev);
  }
  if (((int )tmp___0 && full == 0) && ((unsigned long )vptr->mii_status & 1UL) == 0UL) {
    {
    netif_wake_queue(vptr->netdev);
    }
  } else {
  }
  return (works);
}
}
__inline static void velocity_rx_csum(struct rx_desc *rd , struct sk_buff *skb )
{
  {
  {
  skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  if (((int )rd->rdesc1.CSM & 4) != 0) {
    if (((int )rd->rdesc1.CSM & 64) != 0) {
      if (((unsigned int )rd->rdesc1.CSM & 3U) != 0U) {
        if (((int )rd->rdesc1.CSM & 32) == 0) {
          return;
        } else {
        }
      } else {
      }
      skb->ip_summed = 1U;
    } else {
    }
  } else {
  }
  return;
}
}
static int velocity_rx_copy(struct sk_buff **rx_skb , int pkt_size , struct velocity_info *vptr )
{
  int ret ;
  struct sk_buff *new_skb ;
  {
  ret = -1;
  if (pkt_size < rx_copybreak) {
    {
    new_skb = netdev_alloc_skb_ip_align(vptr->netdev, (unsigned int )pkt_size);
    }
    if ((unsigned long )new_skb != (unsigned long )((struct sk_buff *)0)) {
      {
      new_skb->ip_summed = (*rx_skb)->ip_summed;
      skb_copy_from_linear_data((struct sk_buff const *)*rx_skb, (void *)new_skb->data,
                                (unsigned int const )pkt_size);
      *rx_skb = new_skb;
      ret = 0;
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
__inline static void velocity_iph_realign(struct velocity_info *vptr , struct sk_buff *skb ,
                                          int pkt_size )
{
  {
  if (((unsigned long )vptr->flags & 8UL) != 0UL) {
    {
    memmove((void *)skb->data + 2U, (void const *)skb->data, (size_t )pkt_size);
    skb_reserve(skb, 2);
    }
  } else {
  }
  return;
}
}
static int velocity_receive_frame(struct velocity_info *vptr , int idx )
{
  struct net_device_stats *stats ;
  struct velocity_rd_info *rd_info ;
  struct rx_desc *rd ;
  int pkt_len ;
  struct sk_buff *skb ;
  int tmp ;
  u16 vid ;
  __u16 tmp___0 ;
  {
  stats = & (vptr->netdev)->stats;
  rd_info = vptr->rx.info + (unsigned long )idx;
  rd = vptr->rx.ring + (unsigned long )idx;
  pkt_len = (int )rd->rdesc0.len & 16383;
  if (((int )rd->rdesc0.RSR & 768) != 0) {
    if (msglevel > 2) {
      {
      printk("\v %s : the received frame span multple RDs.\n", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
    stats->rx_length_errors = stats->rx_length_errors + 1UL;
    return (-22);
  } else {
  }
  if (((int )rd->rdesc0.RSR & 8192) != 0) {
    stats->multicast = stats->multicast + 1UL;
  } else {
  }
  {
  skb = rd_info->skb;
  dma_sync_single_for_cpu(vptr->dev, rd_info->skb_dma, (size_t )vptr->rx.buf_sz, 2);
  }
  if (((unsigned long )vptr->flags & 16UL) != 0UL) {
    if (((int )rd->rdesc0.RSR & 16) != 0) {
      stats->rx_length_errors = stats->rx_length_errors + 1UL;
      return (-22);
    } else {
    }
  } else {
  }
  {
  velocity_rx_csum(rd, skb);
  tmp = velocity_rx_copy(& skb, pkt_len, vptr);
  }
  if (tmp < 0) {
    {
    velocity_iph_realign(vptr, skb, pkt_len);
    rd_info->skb = (struct sk_buff *)0;
    dma_unmap_single_attrs(vptr->dev, rd_info->skb_dma, (size_t )vptr->rx.buf_sz,
                           2, (struct dma_attrs *)0);
    }
  } else {
    {
    dma_sync_single_for_device(vptr->dev, rd_info->skb_dma, (size_t )vptr->rx.buf_sz,
                               2);
    }
  }
  {
  skb_put(skb, (unsigned int )(pkt_len + -4));
  skb->protocol = eth_type_trans(skb, vptr->netdev);
  }
  if (((int )rd->rdesc0.RSR & 128) != 0) {
    {
    tmp___0 = __fswab16((int )rd->rdesc1.PQTAG);
    vid = tmp___0;
    __vlan_hwaccel_put_tag(skb, 129, (int )vid);
    }
  } else {
  }
  {
  netif_receive_skb(skb);
  stats->rx_bytes = stats->rx_bytes + (unsigned long )pkt_len;
  stats->rx_packets = stats->rx_packets + 1UL;
  }
  return (0);
}
}
static int velocity_rx_srv(struct velocity_info *vptr , int budget_left )
{
  struct net_device_stats *stats ;
  int rd_curr ;
  int works ;
  struct rx_desc *rd ;
  int tmp ;
  int tmp___0 ;
  {
  stats = & (vptr->netdev)->stats;
  rd_curr = vptr->rx.curr;
  works = 0;
  goto ldv_49505;
  ldv_49504:
  rd = vptr->rx.ring + (unsigned long )rd_curr;
  if ((unsigned long )(vptr->rx.info + (unsigned long )rd_curr)->skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49503;
  } else {
  }
  if ((int )((short )rd->rdesc0.len) < 0) {
    goto ldv_49503;
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  if (((int )rd->rdesc0.RSR & 32792) != 0) {
    {
    tmp = velocity_receive_frame(vptr, rd_curr);
    }
    if (tmp < 0) {
      stats->rx_dropped = stats->rx_dropped + 1UL;
    } else {
    }
  } else {
    if (((int )rd->rdesc0.RSR & 2) != 0) {
      stats->rx_crc_errors = stats->rx_crc_errors + 1UL;
    } else {
    }
    if (((int )rd->rdesc0.RSR & 4) != 0) {
      stats->rx_frame_errors = stats->rx_frame_errors + 1UL;
    } else {
    }
    stats->rx_dropped = stats->rx_dropped + 1UL;
  }
  rd->size = (__le16 )((unsigned int )rd->size | 32768U);
  rd_curr = rd_curr + 1;
  if (rd_curr >= vptr->options.numrx) {
    rd_curr = 0;
  } else {
  }
  works = works + 1;
  ldv_49505: ;
  if (works < budget_left) {
    goto ldv_49504;
  } else {
  }
  ldv_49503:
  vptr->rx.curr = rd_curr;
  if (works > 0) {
    {
    tmp___0 = velocity_rx_refill(vptr);
    }
    if (tmp___0 > 0) {
      {
      velocity_give_many_rx_descs(vptr);
      }
    } else {
    }
  } else {
  }
  stats = stats;
  return (works);
}
}
static int velocity_poll(struct napi_struct *napi , int budget )
{
  struct velocity_info *vptr ;
  struct napi_struct const *__mptr ;
  unsigned int rx_done ;
  unsigned long flags ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  vptr = (struct velocity_info *)__mptr + 0xfffffffffffff888UL;
  tmp = velocity_rx_srv(vptr, budget);
  rx_done = (unsigned int )tmp;
  tmp___0 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  velocity_tx_srv(vptr);
  }
  if (rx_done < (unsigned int )budget) {
    {
    napi_complete(napi);
    writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Set));
    }
  } else {
  }
  {
  spin_unlock_irqrestore(& vptr->lock, flags);
  }
  return ((int )rx_done);
}
}
static irqreturn_t velocity_intr(int irq , void *dev_instance )
{
  struct net_device *dev ;
  struct velocity_info *vptr ;
  void *tmp ;
  u32 isr_status ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  {
  dev = (struct net_device *)dev_instance;
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  spin_lock(& vptr->lock);
  isr_status = readl((void const volatile *)(& (vptr->mac_regs)->ISR));
  }
  if (isr_status == 0U) {
    {
    spin_unlock(& vptr->lock);
    }
    return (0);
  } else {
  }
  {
  writel(isr_status, (void volatile *)(& (vptr->mac_regs)->ISR));
  tmp___0 = napi_schedule_prep(& vptr->napi);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  }
  if (tmp___1 != 0L) {
    {
    writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Clr));
    __napi_schedule(& vptr->napi);
    }
  } else {
  }
  if (((unsigned long )isr_status & 0xfffffffffffffff0UL) != 0UL) {
    {
    velocity_error(vptr, (int )isr_status);
    }
  } else {
  }
  {
  spin_unlock(& vptr->lock);
  }
  return (1);
}
}
static int velocity_open(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int ret ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  ret = velocity_init_rings(vptr, (int )dev->mtu);
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  velocity_set_power_state(vptr, 0);
  velocity_init_registers(vptr, 0);
  ret = ldv_request_irq_20((unsigned int )dev->irq, & velocity_intr, 128UL, (char const *)(& dev->name),
                           (void *)dev);
  }
  if (ret < 0) {
    {
    velocity_set_power_state(vptr, 3);
    velocity_free_rings(vptr);
    }
    goto out;
  } else {
  }
  {
  velocity_give_many_rx_descs(vptr);
  writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Set));
  netif_start_queue(dev);
  napi_enable(& vptr->napi);
  vptr->flags = vptr->flags | 65536U;
  }
  out: ;
  return (ret);
}
}
static void velocity_shutdown(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  {
  {
  regs = vptr->mac_regs;
  writel(33554432U, (void volatile *)(& regs->CR0Clr));
  writel(2U, (void volatile *)(& regs->CR0Set));
  writew(65535, (void volatile *)(& regs->TDCSRClr));
  writeb(255, (void volatile *)(& regs->RDCSRClr));
  safe_disable_mii_autopoll(regs);
  writel(4294967295U, (void volatile *)(& regs->ISR));
  }
  return;
}
}
static int velocity_change_mtu(struct net_device *dev , int new_mtu )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  struct velocity_info *tmp_vptr ;
  unsigned long flags ;
  struct rx_info rx ;
  struct tx_info tx ;
  void *tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  ret = 0;
  }
  if ((unsigned int )new_mtu - 64U > 8936U) {
    if (msglevel >= 0) {
      {
      printk("\r%s: Invalid MTU.\n", (char *)(& (vptr->netdev)->name));
      }
    } else {
    }
    ret = -22;
    goto out_0;
  } else {
  }
  {
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev->mtu = (unsigned int )new_mtu;
    goto out_0;
  } else {
  }
  if (dev->mtu != (unsigned int )new_mtu) {
    {
    tmp___2 = kzalloc(2096UL, 208U);
    tmp_vptr = (struct velocity_info *)tmp___2;
    }
    if ((unsigned long )tmp_vptr == (unsigned long )((struct velocity_info *)0)) {
      ret = -12;
      goto out_0;
    } else {
    }
    {
    tmp_vptr->netdev = dev;
    tmp_vptr->pdev = vptr->pdev;
    tmp_vptr->dev = vptr->dev;
    tmp_vptr->options = vptr->options;
    tmp_vptr->tx.numq = vptr->tx.numq;
    ret = velocity_init_rings(tmp_vptr, new_mtu);
    }
    if (ret < 0) {
      goto out_free_tmp_vptr_1;
    } else {
    }
    {
    napi_disable(& vptr->napi);
    tmp___3 = spinlock_check(& vptr->lock);
    flags = _raw_spin_lock_irqsave(tmp___3);
    netif_stop_queue(dev);
    velocity_shutdown(vptr);
    rx = vptr->rx;
    tx = vptr->tx;
    vptr->rx = tmp_vptr->rx;
    vptr->tx = tmp_vptr->tx;
    tmp_vptr->rx = rx;
    tmp_vptr->tx = tx;
    dev->mtu = (unsigned int )new_mtu;
    velocity_init_registers(vptr, 0);
    velocity_give_many_rx_descs(vptr);
    napi_enable(& vptr->napi);
    writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Set));
    netif_start_queue(dev);
    spin_unlock_irqrestore(& vptr->lock, flags);
    velocity_free_rings(tmp_vptr);
    }
    out_free_tmp_vptr_1:
    {
    kfree((void const *)tmp_vptr);
    }
  } else {
  }
  out_0: ;
  return (ret);
}
}
static void velocity_poll_controller(struct net_device *dev )
{
  {
  {
  disable_irq((unsigned int )dev->irq);
  velocity_intr(dev->irq, (void *)dev);
  enable_irq((unsigned int )dev->irq);
  }
  return;
}
}
static int velocity_mii_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  struct mac_regs *regs ;
  unsigned long flags ;
  struct mii_ioctl_data *miidata ;
  struct mii_ioctl_data *tmp___0 ;
  int err ;
  unsigned char tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  regs = vptr->mac_regs;
  tmp___0 = if_mii(ifr);
  miidata = tmp___0;
  }
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143:
  {
  tmp___1 = readb((void const volatile *)(& regs->MIIADR));
  miidata->phy_id = (unsigned int )((__u16 )tmp___1) & 31U;
  }
  goto ldv_49564;
  case_35144:
  {
  tmp___2 = velocity_mii_read(vptr->mac_regs, (int )((u8 )miidata->reg_num) & 31,
                              & miidata->val_out);
  }
  if (tmp___2 < 0) {
    return (-110);
  } else {
  }
  goto ldv_49564;
  case_35145:
  {
  tmp___3 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  err = velocity_mii_write(vptr->mac_regs, (int )((u8 )miidata->reg_num) & 31, (int )miidata->val_in);
  spin_unlock_irqrestore(& vptr->lock, flags);
  check_connection_type(vptr->mac_regs);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  goto ldv_49564;
  switch_default: ;
  return (-95);
  switch_break: ;
  }
  ldv_49564: ;
  return (0);
}
}
static int velocity_ioctl(struct net_device *dev , struct ifreq *rq , int cmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    velocity_set_power_state(vptr, 0);
    }
  } else {
  }
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143: ;
  case_35144: ;
  case_35145:
  {
  ret = velocity_mii_ioctl(dev, rq, cmd);
  }
  goto ldv_49581;
  switch_default:
  ret = -95;
  switch_break: ;
  }
  ldv_49581:
  {
  tmp___2 = netif_running((struct net_device const *)dev);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    {
    velocity_set_power_state(vptr, 3);
    }
  } else {
  }
  return (ret);
}
}
static struct net_device_stats *velocity_get_stats(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (& dev->stats);
  } else {
  }
  {
  spin_lock_irq(& vptr->lock);
  velocity_update_hw_mibs(vptr);
  spin_unlock_irq(& vptr->lock);
  dev->stats.rx_packets = (unsigned long )vptr->mib_counter[0];
  dev->stats.rx_errors = (unsigned long )vptr->mib_counter[3];
  dev->stats.rx_length_errors = (unsigned long )vptr->mib_counter[30];
  dev->stats.collisions = (unsigned long )vptr->mib_counter[18];
  dev->stats.rx_crc_errors = (unsigned long )vptr->mib_counter[19];
  }
  return (& dev->stats);
}
}
static int velocity_close(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  napi_disable(& vptr->napi);
  netif_stop_queue(dev);
  velocity_shutdown(vptr);
  }
  if (((unsigned long )vptr->flags & 524288UL) != 0UL) {
    {
    velocity_get_ip(vptr);
    }
  } else {
  }
  {
  ldv_free_irq_21((unsigned int )dev->irq, (void *)dev);
  velocity_free_rings(vptr);
  vptr->flags = vptr->flags & 4294901759U;
  }
  return (0);
}
}
static netdev_tx_t velocity_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int qnum ;
  struct tx_desc *td_ptr ;
  struct velocity_td_info *tdinfo ;
  unsigned long flags ;
  int pktlen ;
  int index ;
  int prev ;
  int i ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned char *tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  skb_frag_t const *frag ;
  unsigned char *tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned char *tmp___11 ;
  struct iphdr const *ip ;
  struct iphdr *tmp___12 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  qnum = 0;
  i = 0;
  tmp___0 = skb_padto(skb, 60U);
  }
  if (tmp___0 != 0) {
    goto out;
  } else {
  }
  {
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if ((unsigned int )((struct skb_shared_info *)tmp___1)->nr_frags > 6U) {
    {
    tmp___2 = __skb_linearize(skb);
    }
    if (tmp___2 != 0) {
      {
      kfree_skb(skb);
      }
      return (0);
    } else {
    }
  } else {
  }
  {
  tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if ((unsigned int )((struct skb_shared_info *)tmp___6)->nr_frags == 0U) {
    __max1 = skb->len;
    __max2 = 60U;
    tmp___5 = __max1 > __max2 ? __max1 : __max2;
  } else {
    {
    tmp___4 = skb_headlen((struct sk_buff const *)skb);
    tmp___5 = tmp___4;
    }
  }
  {
  pktlen = (int )tmp___5;
  tmp___7 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  index = vptr->tx.curr[qnum];
  td_ptr = vptr->tx.rings[qnum] + (unsigned long )index;
  tdinfo = vptr->tx.infos[qnum] + (unsigned long )index;
  td_ptr->tdesc1.TCR = 128U;
  td_ptr->td_buf[0].size = (unsigned int )td_ptr->td_buf[0].size & 32767U;
  tdinfo->skb = skb;
  tdinfo->skb_dma[0] = dma_map_single_attrs(vptr->dev, (void *)skb->data, (size_t )pktlen,
                                            1, (struct dma_attrs *)0);
  td_ptr->tdesc0.len = (unsigned short )pktlen;
  td_ptr->td_buf[0].pa_low = (unsigned int )tdinfo->skb_dma[0];
  td_ptr->td_buf[0].pa_high = 0U;
  td_ptr->td_buf[0].size = (unsigned short )pktlen;
  i = 0;
  }
  goto ldv_49613;
  ldv_49612:
  {
  tmp___8 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___8)->frags) + (unsigned long )i;
  tmp___9 = skb_frag_size(frag);
  tdinfo->skb_dma[i + 1] = skb_frag_dma_map(vptr->dev, frag, 0UL, (size_t )tmp___9,
                                            1);
  td_ptr->td_buf[i + 1].pa_low = (unsigned int )tdinfo->skb_dma[i + 1];
  td_ptr->td_buf[i + 1].pa_high = 0U;
  tmp___10 = skb_frag_size(frag);
  td_ptr->td_buf[i + 1].size = (unsigned short )tmp___10;
  i = i + 1;
  }
  ldv_49613:
  {
  tmp___11 = skb_end_pointer((struct sk_buff const *)skb);
  }
  if (i < (int )((struct skb_shared_info *)tmp___11)->nr_frags) {
    goto ldv_49612;
  } else {
  }
  tdinfo->nskb_dma = i + 1;
  td_ptr->tdesc1.cmd = (unsigned int )((u8 )(tdinfo->nskb_dma + 1)) * 16U + 3U;
  if (((int )skb->vlan_tci & 4096) != 0) {
    td_ptr->tdesc1.vlan = (unsigned int )skb->vlan_tci & 61439U;
    td_ptr->tdesc1.TCR = (u8 )((unsigned int )td_ptr->tdesc1.TCR | 32U);
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    {
    tmp___12 = ip_hdr((struct sk_buff const *)skb);
    ip = (struct iphdr const *)tmp___12;
    }
    if ((unsigned int )((unsigned char )ip->protocol) == 6U) {
      td_ptr->tdesc1.TCR = (u8 )((unsigned int )td_ptr->tdesc1.TCR | 4U);
    } else
    if ((unsigned int )((unsigned char )ip->protocol) == 17U) {
      td_ptr->tdesc1.TCR = (u8 )((unsigned int )td_ptr->tdesc1.TCR | 8U);
    } else {
    }
    td_ptr->tdesc1.TCR = (u8 )((unsigned int )td_ptr->tdesc1.TCR | 16U);
  } else {
  }
  prev = index + -1;
  if (prev < 0) {
    prev = vptr->options.numtx + -1;
  } else {
  }
  td_ptr->tdesc0.len = (__le16 )((unsigned int )td_ptr->tdesc0.len | 32768U);
  vptr->tx.used[qnum] = vptr->tx.used[qnum] + 1;
  vptr->tx.curr[qnum] = (index + 1) % vptr->options.numtx;
  if (vptr->options.numtx - vptr->tx.used[qnum] <= 0) {
    {
    netif_stop_queue(dev);
    }
  } else {
  }
  {
  td_ptr = vptr->tx.rings[qnum] + (unsigned long )prev;
  td_ptr->td_buf[0].size = (__le16 )((unsigned int )td_ptr->td_buf[0].size | 32768U);
  writew((int )((unsigned short )(4 << qnum * 4)), (void volatile *)(& (vptr->mac_regs)->TDCSRSet));
  spin_unlock_irqrestore(& vptr->lock, flags);
  }
  out: ;
  return (0);
}
}
static struct net_device_ops const velocity_netdev_ops =
     {0, 0, & velocity_open, & velocity_close, & velocity_xmit, 0, 0, & velocity_set_multi,
    & eth_mac_addr, & eth_validate_addr, & velocity_ioctl, 0, & velocity_change_mtu,
    0, 0, 0, & velocity_get_stats, & velocity_vlan_rx_add_vid, & velocity_vlan_rx_kill_vid,
    & velocity_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void velocity_init_info(struct velocity_info *vptr , struct velocity_info_tbl const *info )
{
  struct lock_class_key __key ;
  {
  {
  vptr->chip_id = info->chip_id;
  vptr->tx.numq = info->txqueue;
  vptr->multicast_limit = 64;
  spinlock_check(& vptr->lock);
  __raw_spin_lock_init(& vptr->lock.__annonCompField19.rlock, "&(&vptr->lock)->rlock",
                       & __key);
  }
  return;
}
}
static int velocity_get_pci_info(struct velocity_info *vptr )
{
  struct pci_dev *pdev ;
  {
  {
  pdev = vptr->pdev;
  pci_set_master(pdev);
  vptr->ioaddr = (unsigned long )pdev->resource[0].start;
  vptr->memaddr = (unsigned long )pdev->resource[1].start;
  }
  if ((pdev->resource[0].flags & 256UL) == 0UL) {
    {
    dev_err((struct device const *)(& pdev->dev), "region #0 is not an I/O resource, aborting.\n");
    }
    return (-22);
  } else {
  }
  if ((pdev->resource[1].flags & 256UL) != 0UL) {
    {
    dev_err((struct device const *)(& pdev->dev), "region #1 is an I/O resource, aborting.\n");
    }
    return (-22);
  } else {
  }
  if ((pdev->resource[1].start == 0ULL && pdev->resource[1].end == pdev->resource[1].start) || (pdev->resource[1].end - pdev->resource[1].start) + 1ULL <= 255ULL) {
    {
    dev_err((struct device const *)(& pdev->dev), "region #1 is too small.\n");
    }
    return (-22);
  } else {
  }
  return (0);
}
}
static int velocity_get_platform_info(struct velocity_info *vptr )
{
  struct resource res ;
  int ret ;
  void const *tmp ;
  resource_size_t tmp___0 ;
  {
  {
  tmp = of_get_property((struct device_node const *)(vptr->dev)->of_node, "no-eeprom",
                        (int *)0);
  }
  if ((unsigned long )tmp != (unsigned long )((void const *)0)) {
    vptr->no_eeprom = 1;
  } else {
  }
  {
  ret = of_address_to_resource((vptr->dev)->of_node, 0, & res);
  }
  if (ret != 0) {
    {
    dev_err((struct device const *)vptr->dev, "unable to find memory address\n");
    }
    return (ret);
  } else {
  }
  {
  vptr->memaddr = (unsigned long )res.start;
  tmp___0 = resource_size((struct resource const *)(& res));
  }
  if (tmp___0 <= 255ULL) {
    {
    dev_err((struct device const *)vptr->dev, "memory region is too small.\n");
    }
    return (-22);
  } else {
  }
  return (0);
}
}
static void velocity_print_info(struct velocity_info *vptr )
{
  struct net_device *dev ;
  char const *tmp ;
  {
  {
  dev = vptr->netdev;
  tmp = get_chip_name(vptr->chip_id);
  printk("\016%s: %s\n", (char *)(& dev->name), tmp);
  printk("\016%s: Ethernet Address: %pM\n", (char *)(& dev->name), dev->dev_addr);
  }
  return;
}
}
static u32 velocity_get_link(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  struct mac_regs *regs ;
  unsigned char tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  regs = vptr->mac_regs;
  tmp___0 = readb((void const volatile *)(& regs->PHYSR0));
  }
  return (((int )tmp___0 & 64) != 0);
}
}
static int velocity_probe(struct device *dev , int irq , struct velocity_info_tbl const *info ,
                          enum velocity_bus_type bustype )
{
  int first ;
  struct net_device *netdev ;
  int i ;
  char const *drv_string ;
  struct velocity_info *vptr ;
  struct mac_regs *regs ;
  int ret ;
  void *tmp ;
  struct device const *__mptr ;
  void *tmp___0 ;
  u32 id ;
  u32 tmp___1 ;
  {
  first = 1;
  ret = -12;
  if (velocity_nics > 7) {
    {
    dev_notice((struct device const *)dev, "already found %d NICs.\n", velocity_nics);
    }
    return (-19);
  } else {
  }
  {
  netdev = ldv_alloc_etherdev_mqs_22(2096, 1U, 1U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    goto out;
  } else {
  }
  {
  netdev->dev.parent = dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  vptr = (struct velocity_info *)tmp;
  }
  if (first != 0) {
    {
    printk("\016%s Ver. %s\n", (char *)"VIA Networking Velocity Family Gigabit Ethernet Adapter Driver",
           (char *)"1.15");
    printk("\016Copyright (c) 2002, 2003 VIA Networking Technologies, Inc.\n");
    printk("\016Copyright (c) 2004 Red Hat Inc.\n");
    first = 0;
    }
  } else {
  }
  {
  netdev->irq = irq;
  vptr->netdev = netdev;
  vptr->dev = dev;
  velocity_init_info(vptr, info);
  }
  if ((unsigned int )bustype == 0U) {
    {
    __mptr = (struct device const *)dev;
    vptr->pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
    ret = velocity_get_pci_info(vptr);
    }
    if (ret < 0) {
      goto err_free_dev;
    } else {
    }
  } else {
    {
    vptr->pdev = (struct pci_dev *)0;
    ret = velocity_get_platform_info(vptr);
    }
    if (ret < 0) {
      goto err_free_dev;
    } else {
    }
  }
  {
  tmp___0 = ioremap((resource_size_t )vptr->memaddr, 256UL);
  regs = (struct mac_regs *)tmp___0;
  }
  if ((unsigned long )regs == (unsigned long )((struct mac_regs *)0)) {
    ret = -5;
    goto err_free_dev;
  } else {
  }
  {
  vptr->mac_regs = regs;
  vptr->rev_id = readb((void const volatile *)(& regs->rev_id));
  mac_wol_reset(regs);
  i = 0;
  }
  goto ldv_49658;
  ldv_49657:
  {
  *(netdev->dev_addr + (unsigned long )i) = readb((void const volatile *)(& regs->PAR) + (unsigned long )i);
  i = i + 1;
  }
  ldv_49658: ;
  if (i <= 5) {
    goto ldv_49657;
  } else {
  }
  {
  drv_string = dev_driver_string((struct device const *)dev);
  velocity_get_options(& vptr->options, velocity_nics, drv_string);
  vptr->options.flags = vptr->options.flags & (u32 )info->flags;
  vptr->flags = vptr->options.flags | ((u32 )info->flags & 4278190080U);
  vptr->wol_opts = vptr->options.wol_opts;
  vptr->flags = vptr->flags | 524288U;
  velocity_mii_read(vptr->mac_regs, 3, (u16 *)(& id));
  velocity_mii_read(vptr->mac_regs, 2, (u16 *)(& id) + 1UL);
  vptr->phy_id = id;
  netdev->netdev_ops = & velocity_netdev_ops;
  netdev->ethtool_ops = & velocity_ethtool_ops;
  netif_napi_add(netdev, & vptr->napi, & velocity_poll, 64);
  netdev->hw_features = 131ULL;
  netdev->features = netdev->features | 898ULL;
  ret = ldv_register_netdev_23(netdev);
  }
  if (ret < 0) {
    goto err_iounmap;
  } else {
  }
  {
  tmp___1 = velocity_get_link(netdev);
  }
  if (tmp___1 == 0U) {
    {
    netif_carrier_off(netdev);
    vptr->mii_status = vptr->mii_status | 1U;
    }
  } else {
  }
  {
  velocity_print_info(vptr);
  ldv_dev_set_drvdata_24(vptr->dev, (void *)netdev);
  velocity_set_power_state(vptr, 3);
  velocity_nics = velocity_nics + 1;
  }
  out: ;
  return (ret);
  err_iounmap:
  {
  netif_napi_del(& vptr->napi);
  iounmap((void volatile *)regs);
  }
  err_free_dev:
  {
  ldv_free_netdev_25(netdev);
  }
  goto out;
}
}
static int velocity_remove(struct device *dev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct velocity_info *vptr ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_dev_get_drvdata_26((struct device const *)dev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  vptr = (struct velocity_info *)tmp___0;
  ldv_unregister_netdev_27(netdev);
  netif_napi_del(& vptr->napi);
  iounmap((void volatile *)vptr->mac_regs);
  ldv_free_netdev_28(netdev);
  velocity_nics = velocity_nics - 1;
  }
  return (0);
}
}
static int velocity_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct velocity_info_tbl const *info ;
  int ret ;
  {
  {
  info = (struct velocity_info_tbl const *)(& chip_info_table) + (unsigned long )ent->driver_data;
  ret = pci_enable_device(pdev);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = pci_request_regions(pdev, "via-velocity");
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "No PCI resources.\n");
    }
    goto fail1;
  } else {
  }
  {
  ret = velocity_probe(& pdev->dev, (int )pdev->irq, info, 0);
  }
  if (ret == 0) {
    return (0);
  } else {
  }
  {
  pci_release_regions(pdev);
  }
  fail1:
  {
  pci_disable_device(pdev);
  }
  return (ret);
}
}
static void velocity_pci_remove(struct pci_dev *pdev )
{
  {
  {
  velocity_remove(& pdev->dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  }
  return;
}
}
static int velocity_platform_probe(struct platform_device *pdev )
{
  struct of_device_id const *of_id ;
  struct velocity_info_tbl const *info ;
  int irq ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  of_id = __of_match_device((struct of_device_id const *)0, (struct device const *)(& pdev->dev));
  }
  if ((unsigned long )of_id == (unsigned long )((struct of_device_id const *)0)) {
    return (-22);
  } else {
  }
  {
  info = (struct velocity_info_tbl const *)of_id->data;
  tmp = irq_of_parse_and_map(pdev->dev.of_node, 0);
  irq = (int )tmp;
  }
  if (irq == 0) {
    return (-22);
  } else {
  }
  {
  tmp___0 = velocity_probe(& pdev->dev, irq, info, 1);
  }
  return (tmp___0);
}
}
static int velocity_platform_remove(struct platform_device *pdev )
{
  {
  {
  velocity_remove(& pdev->dev);
  }
  return (0);
}
}
static u16 wol_calc_crc(int size , u8 *pattern , u8 *mask_pattern )
{
  u16 crc ;
  u8 mask ;
  int i ;
  int j ;
  u32 tmp ;
  {
  crc = 65535U;
  i = 0;
  goto ldv_49702;
  ldv_49701:
  mask = *(mask_pattern + (unsigned long )i);
  if ((unsigned int )mask == 0U) {
    goto ldv_49696;
  } else {
  }
  j = 0;
  goto ldv_49699;
  ldv_49698: ;
  if (((int )mask & 1) == 0) {
    mask = (u8 )((int )mask >> 1);
    goto ldv_49697;
  } else {
  }
  {
  mask = (u8 )((int )mask >> 1);
  crc = crc_ccitt((int )crc, (u8 const *)pattern + (unsigned long )(i * 8 + j),
                  1UL);
  }
  ldv_49697:
  j = j + 1;
  ldv_49699: ;
  if (j <= 7) {
    goto ldv_49698;
  } else {
  }
  ldv_49696:
  i = i + 1;
  ldv_49702: ;
  if (i < size) {
    goto ldv_49701;
  } else {
  }
  {
  crc = ~ ((int )crc);
  tmp = bitrev32((u32 )crc);
  }
  return ((u16 )(tmp >> 16));
}
}
static int velocity_set_wol(struct velocity_info *vptr )
{
  struct mac_regs *regs ;
  enum speed_opt spd_dpx ;
  u8 buf[256U] ;
  int i ;
  u32 mask_pattern[2U][4U] ;
  struct arp_packet *arp ;
  u16 crc ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  u16 w ;
  u16 w___0 ;
  u16 w___1 ;
  unsigned char tmp___1 ;
  u8 GCR ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  {
  {
  regs = vptr->mac_regs;
  spd_dpx = vptr->options.spd_dpx;
  mask_pattern[0][0] = 2109440U;
  mask_pattern[0][1] = 960U;
  mask_pattern[0][2] = 0U;
  mask_pattern[0][3] = 0U;
  mask_pattern[1][0] = 4294963200U;
  mask_pattern[1][1] = 4294967295U;
  mask_pattern[1][2] = 4294967295U;
  mask_pattern[1][3] = 65535U;
  writew(65535, (void volatile *)(& regs->WOLCRClr));
  writeb(48, (void volatile *)(& regs->WOLCFGSet));
  writew(512, (void volatile *)(& regs->WOLCRSet));
  }
  if (((unsigned long )vptr->wol_opts & 4UL) != 0UL) {
    {
    writew(256, (void volatile *)(& regs->WOLCRSet));
    }
  } else {
  }
  if (((unsigned long )vptr->wol_opts & 2UL) != 0UL) {
    {
    arp = (struct arp_packet *)(& buf);
    memset((void *)(& buf), 0, 49UL);
    i = 0;
    }
    goto ldv_49715;
    ldv_49714:
    {
    writel(mask_pattern[0][i], (void volatile *)(& regs->ByteMask) + (unsigned long )i);
    i = i + 1;
    }
    ldv_49715: ;
    if (i <= 3) {
      goto ldv_49714;
    } else {
    }
    {
    arp->type = 1544U;
    arp->ar_op = 256U;
    memcpy((void *)(& arp->ar_tip), (void const *)(& vptr->ip_addr), 4UL);
    crc = wol_calc_crc(6, (u8 *)(& buf), (u8 *)(& mask_pattern));
    writew((int )crc, (void volatile *)(& regs->PatternCRC));
    writew(1, (void volatile *)(& regs->WOLCRSet));
    }
  } else {
  }
  {
  tmp = readb((void const volatile *)(& regs->PWCFGSet));
  writeb((int )((unsigned int )tmp | 32U), (void volatile *)(& regs->PWCFGSet));
  tmp___0 = readb((void const volatile *)(& regs->PWCFGSet));
  writeb((int )((unsigned int )tmp___0 | 1U), (void volatile *)(& regs->PWCFGSet));
  writew(4095, (void volatile *)(& regs->WOLSRClr));
  }
  if ((unsigned int )spd_dpx == 5U) {
    goto mac_done;
  } else {
  }
  if ((unsigned int )spd_dpx != 0U) {
    goto advertise_done;
  } else {
  }
  if (((unsigned long )vptr->mii_status & 32UL) != 0UL) {
    if (((unsigned long )vptr->phy_id & 0xfffffffffffffff0UL) == 1033232UL) {
      {
      velocity_mii_read(vptr->mac_regs, 28, & w);
      w = (u16 )((unsigned int )w | 4U);
      velocity_mii_write(vptr->mac_regs, 28, (int )w);
      }
    } else {
    }
    {
    velocity_mii_read(vptr->mac_regs, 9, & w___0);
    w___0 = (unsigned int )w___0 & 64767U;
    velocity_mii_write(vptr->mac_regs, 9, (int )w___0);
    }
  } else {
  }
  if (((unsigned long )vptr->mii_status & 8UL) != 0UL) {
    {
    velocity_mii_read(vptr->mac_regs, 0, & w___1);
    w___1 = (u16 )((unsigned int )w___1 | 512U);
    velocity_mii_write(vptr->mac_regs, 0, (int )w___1);
    }
  } else {
  }
  advertise_done:
  {
  tmp___1 = readb((void const volatile *)(& regs->CHIPGCR));
  writeb((int )((unsigned int )tmp___1 | 16U), (void volatile *)(& regs->CHIPGCR));
  GCR = readb((void const volatile *)(& regs->CHIPGCR));
  GCR = (u8 )(((int )((signed char )GCR) & 63) | 64);
  writeb((int )GCR, (void volatile *)(& regs->CHIPGCR));
  }
  mac_done:
  {
  tmp___2 = readb((void const volatile *)(& regs->ISR));
  writeb((int )tmp___2, (void volatile *)(& regs->ISR));
  tmp___3 = readb((void const volatile *)(& regs->STICKHW));
  writeb((int )((unsigned int )tmp___3 | 16U), (void volatile *)(& regs->STICKHW));
  tmp___4 = readb((void const volatile *)(& regs->STICKHW));
  writeb((int )((unsigned int )tmp___4 | 3U), (void volatile *)(& regs->STICKHW));
  }
  return (0);
}
}
static void velocity_save_context(struct velocity_info *vptr , struct velocity_context *context )
{
  struct mac_regs *regs ;
  u16 i ;
  u8 *ptr ;
  {
  regs = vptr->mac_regs;
  ptr = (u8 *)regs;
  i = 0U;
  goto ldv_49731;
  ldv_49730:
  {
  *((u32 *)(& context->mac_reg) + (unsigned long )i) = readl((void const volatile *)ptr + (unsigned long )i);
  i = (unsigned int )i + 4U;
  }
  ldv_49731: ;
  if ((unsigned int )i <= 11U) {
    goto ldv_49730;
  } else {
  }
  i = 16U;
  goto ldv_49734;
  ldv_49733:
  {
  *((u32 *)(& context->mac_reg) + (unsigned long )i) = readl((void const volatile *)ptr + (unsigned long )i);
  i = (unsigned int )i + 4U;
  }
  ldv_49734: ;
  if ((unsigned int )i <= 51U) {
    goto ldv_49733;
  } else {
  }
  i = 56U;
  goto ldv_49737;
  ldv_49736:
  {
  *((u32 *)(& context->mac_reg) + (unsigned long )i) = readl((void const volatile *)ptr + (unsigned long )i);
  i = (unsigned int )i + 4U;
  }
  ldv_49737: ;
  if ((unsigned int )i <= 95U) {
    goto ldv_49736;
  } else {
  }
  return;
}
}
static int velocity_suspend(struct device *dev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct velocity_info *vptr ;
  void *tmp___0 ;
  unsigned long flags ;
  bool tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  {
  tmp = ldv_dev_get_drvdata_29((struct device const *)dev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  vptr = (struct velocity_info *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)vptr->netdev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  {
  netif_device_detach(vptr->netdev);
  tmp___3 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  }
  if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
    {
    pci_save_state(vptr->pdev);
    }
  } else {
  }
  if (((unsigned long )vptr->flags & 524288UL) != 0UL) {
    {
    velocity_get_ip(vptr);
    velocity_save_context(vptr, & vptr->context);
    velocity_shutdown(vptr);
    velocity_set_wol(vptr);
    }
    if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
      {
      pci_enable_wake(vptr->pdev, 3, 1);
      }
    } else {
    }
    {
    velocity_set_power_state(vptr, 3);
    }
  } else {
    {
    velocity_save_context(vptr, & vptr->context);
    velocity_shutdown(vptr);
    }
    if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
      {
      pci_disable_device(vptr->pdev);
      }
    } else {
    }
    {
    velocity_set_power_state(vptr, 3);
    }
  }
  {
  spin_unlock_irqrestore(& vptr->lock, flags);
  }
  return (0);
}
}
static void velocity_restore_context(struct velocity_info *vptr , struct velocity_context *context )
{
  struct mac_regs *regs ;
  int i ;
  u8 *ptr ;
  {
  regs = vptr->mac_regs;
  ptr = (u8 *)regs;
  i = 0;
  goto ldv_49756;
  ldv_49755:
  {
  writel(*((u32 *)(& context->mac_reg) + (unsigned long )i), (void volatile *)ptr + (unsigned long )i);
  i = i + 4;
  }
  ldv_49756: ;
  if (i <= 7) {
    goto ldv_49755;
  } else {
  }
  i = 9;
  goto ldv_49759;
  ldv_49758:
  {
  writeb(~ ((int )*((u8 *)(& context->mac_reg) + (unsigned long )i)), (void volatile *)(ptr + ((unsigned long )i + 4UL)));
  writeb((int )*((u8 *)(& context->mac_reg) + (unsigned long )i), (void volatile *)ptr + (unsigned long )i);
  i = i + 1;
  }
  ldv_49759: ;
  if (i <= 11) {
    goto ldv_49758;
  } else {
  }
  i = 16;
  goto ldv_49762;
  ldv_49761:
  {
  writel(*((u32 *)(& context->mac_reg) + (unsigned long )i), (void volatile *)ptr + (unsigned long )i);
  i = i + 4;
  }
  ldv_49762: ;
  if (i <= 39) {
    goto ldv_49761;
  } else {
  }
  i = 56;
  goto ldv_49765;
  ldv_49764:
  {
  writel(*((u32 *)(& context->mac_reg) + (unsigned long )i), (void volatile *)ptr + (unsigned long )i);
  i = i + 4;
  }
  ldv_49765: ;
  if (i <= 95) {
    goto ldv_49764;
  } else {
  }
  i = 48;
  goto ldv_49768;
  ldv_49767:
  {
  writeb((int )*((u8 *)(& context->mac_reg) + (unsigned long )i), (void volatile *)ptr + (unsigned long )i);
  i = i + 1;
  }
  ldv_49768: ;
  if (i <= 50) {
    goto ldv_49767;
  } else {
  }
  return;
}
}
static int velocity_resume(struct device *dev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct velocity_info *vptr ;
  void *tmp___0 ;
  unsigned long flags ;
  int i ;
  bool tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  {
  tmp = ldv_dev_get_drvdata_30((struct device const *)dev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  vptr = (struct velocity_info *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)vptr->netdev);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  {
  velocity_set_power_state(vptr, 0);
  }
  if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
    {
    pci_enable_wake(vptr->pdev, 0, 0);
    pci_restore_state(vptr->pdev);
    }
  } else {
  }
  {
  mac_wol_reset(vptr->mac_regs);
  tmp___3 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  velocity_restore_context(vptr, & vptr->context);
  velocity_init_registers(vptr, 2);
  writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Clr));
  velocity_tx_srv(vptr);
  i = 0;
  }
  goto ldv_49781;
  ldv_49780: ;
  if (vptr->tx.used[i] != 0) {
    {
    writew((int )((unsigned short )(4 << i * 4)), (void volatile *)(& (vptr->mac_regs)->TDCSRSet));
    }
  } else {
  }
  i = i + 1;
  ldv_49781: ;
  if (i < vptr->tx.numq) {
    goto ldv_49780;
  } else {
  }
  {
  writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Set));
  spin_unlock_irqrestore(& vptr->lock, flags);
  netif_device_attach(vptr->netdev);
  }
  return (0);
}
}
static struct dev_pm_ops const velocity_pm_ops =
     {0, 0, & velocity_suspend, & velocity_resume, & velocity_suspend, & velocity_resume,
    & velocity_suspend, & velocity_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static struct pci_driver velocity_pci_driver =
     {{0, 0}, "via-velocity", (struct pci_device_id const *)(& velocity_pci_id_table),
    & velocity_pci_probe, & velocity_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0,
                                                                       (_Bool)0, 0,
                                                                       0, 0, 0, 0,
                                                                       0, 0, 0, & velocity_pm_ops,
                                                                       0}, {{{{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                            {0, 0}}};
static struct platform_driver velocity_platform_driver =
     {& velocity_platform_probe, & velocity_platform_remove, 0, 0, 0, {"via-velocity",
                                                                     0, & __this_module,
                                                                     0, (_Bool)0,
                                                                     (struct of_device_id const *)(& velocity_of_ids),
                                                                     0, 0, 0, 0, 0,
                                                                     0, 0, & velocity_pm_ops,
                                                                     0}, 0, (_Bool)0};
static int velocity_ethtool_up(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    velocity_set_power_state(vptr, 0);
    }
  } else {
  }
  return (0);
}
}
static void velocity_ethtool_down(struct net_device *dev )
{
  struct velocity_info *vptr ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    velocity_set_power_state(vptr, 3);
    }
  } else {
  }
  return;
}
}
static int velocity_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  struct mac_regs *regs ;
  u32 status ;
  unsigned char tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  regs = vptr->mac_regs;
  status = check_connection_type(vptr->mac_regs);
  cmd->supported = 255U;
  cmd->advertising = 192U;
  }
  if ((unsigned int )vptr->options.spd_dpx == 0U) {
    cmd->advertising = cmd->advertising | 63U;
  } else {
    {
    if ((unsigned int )vptr->options.spd_dpx == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 1U) {
      goto case_1;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )vptr->options.spd_dpx == 4U) {
      goto case_4;
    } else {
    }
    goto switch_default;
    case_5:
    cmd->advertising = cmd->advertising | 32U;
    goto ldv_49802;
    case_1:
    cmd->advertising = cmd->advertising | 4U;
    goto ldv_49802;
    case_2:
    cmd->advertising = cmd->advertising | 8U;
    goto ldv_49802;
    case_3:
    cmd->advertising = cmd->advertising | 1U;
    goto ldv_49802;
    case_4:
    cmd->advertising = cmd->advertising | 2U;
    goto ldv_49802;
    switch_default: ;
    goto ldv_49802;
    switch_break: ;
    }
    ldv_49802: ;
  }
  if (((unsigned long )status & 8UL) != 0UL) {
    {
    ethtool_cmd_speed_set(cmd, 1000U);
    }
  } else
  if (((unsigned long )status & 4UL) != 0UL) {
    {
    ethtool_cmd_speed_set(cmd, 100U);
    }
  } else {
    {
    ethtool_cmd_speed_set(cmd, 10U);
    }
  }
  {
  cmd->autoneg = ((unsigned long )status & 32UL) != 0UL;
  cmd->port = 0U;
  cmd->transceiver = 0U;
  tmp___0 = readb((void const volatile *)(& regs->MIIADR));
  cmd->phy_address = (unsigned int )tmp___0 & 31U;
  }
  if (((unsigned long )status & 16UL) != 0UL) {
    cmd->duplex = 1U;
  } else {
    cmd->duplex = 0U;
  }
  return (0);
}
}
static int velocity_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  u32 speed ;
  __u32 tmp___0 ;
  u32 curr_status ;
  u32 new_status ;
  int ret ;
  enum speed_opt spd_dpx ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  speed = tmp___0;
  new_status = 0U;
  ret = 0;
  curr_status = check_connection_type(vptr->mac_regs);
  curr_status = curr_status & 4294967294U;
  new_status = new_status | ((unsigned int )cmd->autoneg != 0U ? 32U : 0U);
  new_status = new_status | (speed == 1000U ? 8U : 0U);
  new_status = new_status | (speed == 100U ? 4U : 0U);
  new_status = new_status | (speed == 10U ? 2U : 0U);
  new_status = new_status | ((unsigned int )cmd->duplex == 1U ? 16U : 0U);
  }
  if (((unsigned long )new_status & 32UL) != 0UL && new_status != (curr_status | 32U)) {
    ret = -22;
  } else {
    if (((unsigned long )new_status & 32UL) != 0UL) {
      spd_dpx = 0;
    } else
    if (((unsigned long )new_status & 24UL) == 24UL) {
      spd_dpx = 5;
    } else
    if (((unsigned long )new_status & 4UL) != 0UL) {
      spd_dpx = ((unsigned long )new_status & 16UL) != 0UL ? 2 : 1;
    } else
    if (((unsigned long )new_status & 2UL) != 0UL) {
      spd_dpx = ((unsigned long )new_status & 16UL) != 0UL ? 4 : 3;
    } else {
      return (-95);
    }
    {
    vptr->options.spd_dpx = spd_dpx;
    velocity_set_media_mode(vptr, new_status);
    }
  }
  return (ret);
}
}
static void velocity_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct velocity_info *vptr ;
  void *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  strlcpy((char *)(& info->driver), "via-velocity", 32UL);
  strlcpy((char *)(& info->version), "1.15", 32UL);
  }
  if ((unsigned long )vptr->pdev != (unsigned long )((struct pci_dev *)0)) {
    {
    tmp___0 = pci_name((struct pci_dev const *)vptr->pdev);
    strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
    }
  } else {
    {
    strlcpy((char *)(& info->bus_info), "platform", 32UL);
    }
  }
  return;
}
}
static void velocity_ethtool_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct velocity_info *vptr ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  wol->supported = 51U;
  wol->wolopts = wol->wolopts | 32U;
  }
  if (((unsigned long )vptr->wol_opts & 4UL) != 0UL) {
    wol->wolopts = wol->wolopts | 2U;
  } else {
  }
  if (((unsigned long )vptr->wol_opts & 2UL) != 0UL) {
    wol->wolopts = wol->wolopts | 16U;
  } else {
  }
  {
  memcpy((void *)(& wol->sopass), (void const *)(& vptr->wol_passwd), 6UL);
  }
  return;
}
}
static int velocity_ethtool_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct velocity_info *vptr ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  }
  if ((wol->wolopts & 51U) == 0U) {
    return (-14);
  } else {
  }
  vptr->wol_opts = 0;
  if ((wol->wolopts & 32U) != 0U) {
    vptr->wol_opts = vptr->wol_opts;
    vptr->flags = vptr->flags | 524288U;
  } else {
  }
  if ((wol->wolopts & 2U) != 0U) {
    vptr->wol_opts = vptr->wol_opts | 4;
    vptr->flags = vptr->flags | 524288U;
  } else {
  }
  if ((wol->wolopts & 16U) != 0U) {
    vptr->wol_opts = vptr->wol_opts | 2;
    vptr->flags = vptr->flags | 524288U;
  } else {
  }
  {
  memcpy((void *)(& vptr->wol_passwd), (void const *)(& wol->sopass), 6UL);
  }
  return (0);
}
}
static u32 velocity_get_msglevel(struct net_device *dev )
{
  {
  return ((u32 )msglevel);
}
}
static void velocity_set_msglevel(struct net_device *dev , u32 value )
{
  {
  msglevel = (int )value;
  return;
}
}
static int get_pending_timer_val(int val )
{
  int mult_bits ;
  int mult ;
  {
  mult_bits = val >> 6;
  mult = 1;
  {
  if (mult_bits == 1) {
    goto case_1;
  } else {
  }
  if (mult_bits == 2) {
    goto case_2;
  } else {
  }
  if (mult_bits == 3) {
    goto case_3;
  } else {
  }
  if (mult_bits == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_1:
  mult = 4;
  goto ldv_49846;
  case_2:
  mult = 16;
  goto ldv_49846;
  case_3:
  mult = 64;
  goto ldv_49846;
  case_0: ;
  switch_default: ;
  goto ldv_49846;
  switch_break: ;
  }
  ldv_49846: ;
  return ((val & 63) * mult);
}
}
static void set_pending_timer_val(int *val , u32 us )
{
  u8 mult ;
  u8 shift ;
  {
  mult = 0U;
  shift = 0U;
  if (us > 62U) {
    mult = 1U;
    shift = 2U;
  } else {
  }
  if (us > 251U) {
    mult = 2U;
    shift = 4U;
  } else {
  }
  if (us > 1007U) {
    mult = 3U;
    shift = 6U;
  } else {
  }
  *val = (int )((u32 )((int )mult << 6) | ((us >> (int )shift) & 63U));
  return;
}
}
static int velocity_get_coalesce(struct net_device *dev , struct ethtool_coalesce *ecmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  ecmd->tx_max_coalesced_frames = (__u32 )vptr->options.tx_intsup;
  ecmd->rx_max_coalesced_frames = (__u32 )vptr->options.rx_intsup;
  tmp___0 = get_pending_timer_val(vptr->options.rxqueue_timer);
  ecmd->rx_coalesce_usecs = (__u32 )tmp___0;
  tmp___1 = get_pending_timer_val(vptr->options.txqueue_timer);
  ecmd->tx_coalesce_usecs = (__u32 )tmp___1;
  }
  return (0);
}
}
static int velocity_set_coalesce(struct net_device *dev , struct ethtool_coalesce *ecmd )
{
  struct velocity_info *vptr ;
  void *tmp ;
  int max_us ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vptr = (struct velocity_info *)tmp;
  max_us = 4032;
  }
  if (ecmd->tx_coalesce_usecs > (__u32 )max_us) {
    return (-22);
  } else {
  }
  if (ecmd->rx_coalesce_usecs > (__u32 )max_us) {
    return (-22);
  } else {
  }
  if (ecmd->tx_max_coalesced_frames > 255U) {
    return (-22);
  } else {
  }
  if (ecmd->rx_max_coalesced_frames > 255U) {
    return (-22);
  } else {
  }
  {
  vptr->options.rx_intsup = (int )ecmd->rx_max_coalesced_frames;
  vptr->options.tx_intsup = (int )ecmd->tx_max_coalesced_frames;
  set_pending_timer_val(& vptr->options.rxqueue_timer, ecmd->rx_coalesce_usecs);
  set_pending_timer_val(& vptr->options.txqueue_timer, ecmd->tx_coalesce_usecs);
  tmp___0 = spinlock_check(& vptr->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Clr));
  setup_adaptive_interrupts(vptr);
  setup_queue_timers(vptr);
  writel(vptr->int_mask, (void volatile *)(& (vptr->mac_regs)->IMR));
  writel(4294967295U, (void volatile *)(& (vptr->mac_regs)->ISR));
  writel(33554432U, (void volatile *)(& (vptr->mac_regs)->CR0Set));
  spin_unlock_irqrestore(& vptr->lock, flags);
  }
  return (0);
}
}
static char const velocity_gstrings[32U][32U] =
  { { 'r', 'x', '_', 'a',
            'l', 'l', '\000'},
   { 'r', 'x', '_', 'o',
            'k', '\000'},
   { 't', 'x', '_', 'o',
            'k', '\000'},
   { 'r', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            '\000'},
   { 'r', 'x', '_', 'r',
            'u', 'n', 't', '_',
            'o', 'k', '\000'},
   { 'r', 'x', '_', 'r',
            'u', 'n', 't', '_',
            'e', 'r', 'r', '\000'},
   { 'r', 'x', '_', '6',
            '4', '\000'},
   { 't', 'x', '_', '6',
            '4', '\000'},
   { 'r', 'x', '_', '6',
            '5', '_', 't', 'o',
            '_', '1', '2', '7',
            '\000'},
   { 't', 'x', '_', '6',
            '5', '_', 't', 'o',
            '_', '1', '2', '7',
            '\000'},
   { 'r', 'x', '_', '1',
            '2', '8', '_', 't',
            'o', '_', '2', '5',
            '5', '\000'},
   { 't', 'x', '_', '1',
            '2', '8', '_', 't',
            'o', '_', '2', '5',
            '5', '\000'},
   { 'r', 'x', '_', '2',
            '5', '6', '_', 't',
            'o', '_', '5', '1',
            '1', '\000'},
   { 't', 'x', '_', '2',
            '5', '6', '_', 't',
            'o', '_', '5', '1',
            '1', '\000'},
   { 'r', 'x', '_', '5',
            '1', '2', '_', 't',
            'o', '_', '1', '0',
            '2', '3', '\000'},
   { 't', 'x', '_', '5',
            '1', '2', '_', 't',
            'o', '_', '1', '0',
            '2', '3', '\000'},
   { 'r', 'x', '_', '1',
            '0', '2', '4', '_',
            't', 'o', '_', '1',
            '5', '1', '8', '\000'},
   { 't', 'x', '_', '1',
            '0', '2', '4', '_',
            't', 'o', '_', '1',
            '5', '1', '8', '\000'},
   { 't', 'x', '_', 'e',
            't', 'h', 'e', 'r',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', 's', '\000'},
   { 'r', 'x', '_', 'c',
            'r', 'c', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'j',
            'u', 'm', 'b', 'o',
            '\000'},
   { 't', 'x', '_', 'j',
            'u', 'm', 'b', 'o',
            '\000'},
   { 'r', 'x', '_', 'm',
            'a', 'c', '_', 'c',
            'o', 'n', 't', 'r',
            'o', 'l', '_', 'f',
            'r', 'a', 'm', 'e',
            's', '\000'},
   { 't', 'x', '_', 'm',
            'a', 'c', '_', 'c',
            'o', 'n', 't', 'r',
            'o', 'l', '_', 'f',
            'r', 'a', 'm', 'e',
            's', '\000'},
   { 'r', 'x', '_', 'f',
            'r', 'a', 'm', 'e',
            '_', 'a', 'l', 'i',
            'g', 'n', 'e', 'm',
            'e', 'n', 't', '_',
            'e', 'r', 'r', 'o',
            'r', 's', '\000'},
   { 'r', 'x', '_', 'l',
            'o', 'n', 'g', '_',
            'o', 'k', '\000'},
   { 'r', 'x', '_', 'l',
            'o', 'n', 'g', '_',
            'e', 'r', 'r', '\000'},
   { 't', 'x', '_', 's',
            'q', 'e', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'n',
            'o', '_', 'b', 'u',
            'f', '\000'},
   { 'r', 'x', '_', 's',
            'y', 'm', 'b', 'o',
            'l', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 'i', 'n', '_', 'r',
            'a', 'n', 'g', 'e',
            '_', 'l', 'e', 'n',
            'g', 't', 'h', '_',
            'e', 'r', 'r', 'o',
            'r', 's', '\000'},
   { 'l', 'a', 't', 'e',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', 's', '\000'}};
static void velocity_get_strings(struct net_device *dev , u32 sset , u8 *data )
{
  {
  {
  if (sset == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_1:
  {
  memcpy((void *)data, (void const *)(& velocity_gstrings), 1024UL);
  }
  goto ldv_49879;
  switch_break: ;
  }
  ldv_49879: ;
  return;
}
}
static int velocity_get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (32);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static void velocity_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                       u64 *data )
{
  struct velocity_info *vptr ;
  void *tmp ;
  u32 *p ;
  int i ;
  u64 *tmp___0 ;
  u32 *tmp___1 ;
  bool tmp___2 ;
  {
  {
  tmp___2 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___2) {
    {
    tmp = netdev_priv((struct net_device const *)dev);
    vptr = (struct velocity_info *)tmp;
    p = (u32 *)(& vptr->mib_counter);
    spin_lock_irq(& vptr->lock);
    velocity_update_hw_mibs(vptr);
    spin_unlock_irq(& vptr->lock);
    i = 0;
    }
    goto ldv_49899;
    ldv_49898:
    tmp___0 = data;
    data = data + 1;
    tmp___1 = p;
    p = p + 1;
    *tmp___0 = (u64 )*tmp___1;
    i = i + 1;
    ldv_49899: ;
    if ((unsigned int )i <= 31U) {
      goto ldv_49898;
    } else {
    }
  } else {
  }
  return;
}
}
static struct ethtool_ops const velocity_ethtool_ops =
     {& velocity_get_settings, & velocity_set_settings, & velocity_get_drvinfo, 0, 0,
    & velocity_ethtool_get_wol, & velocity_ethtool_set_wol, & velocity_get_msglevel,
    & velocity_set_msglevel, 0, & velocity_get_link, 0, 0, 0, & velocity_get_coalesce,
    & velocity_set_coalesce, 0, 0, 0, 0, 0, & velocity_get_strings, 0, & velocity_get_ethtool_stats,
    & velocity_ethtool_up, & velocity_ethtool_down, 0, 0, & velocity_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int velocity_netdev_event(struct notifier_block *nb , unsigned long notification ,
                                 void *ptr )
{
  struct in_ifaddr *ifa ;
  struct net_device *dev ;
  void *tmp ;
  struct net *tmp___0 ;
  {
  {
  ifa = (struct in_ifaddr *)ptr;
  dev = (ifa->ifa_dev)->dev;
  tmp___0 = dev_net((struct net_device const *)dev);
  }
  if ((unsigned long )tmp___0 == (unsigned long )(& init_net) && (unsigned long )dev->netdev_ops == (unsigned long )(& velocity_netdev_ops)) {
    {
    tmp = netdev_priv((struct net_device const *)dev);
    velocity_get_ip((struct velocity_info *)tmp);
    }
  } else {
  }
  return (0);
}
}
static struct notifier_block velocity_inetaddr_notifier = {& velocity_netdev_event, 0, 0};
static void velocity_register_notifier(void)
{
  {
  {
  ldv_register_inetaddr_notifier_31(& velocity_inetaddr_notifier);
  }
  return;
}
}
static void velocity_unregister_notifier(void)
{
  {
  {
  ldv_unregister_inetaddr_notifier_32(& velocity_inetaddr_notifier);
  }
  return;
}
}
static int velocity_init_module(void)
{
  int ret_pci ;
  int ret_platform ;
  {
  {
  velocity_register_notifier();
  ret_pci = ldv___pci_register_driver_33(& velocity_pci_driver, & __this_module, "via_velocity");
  ret_platform = ldv___platform_driver_register_34(& velocity_platform_driver, & __this_module);
  }
  if (ret_pci < 0 && ret_platform < 0) {
    {
    velocity_unregister_notifier();
    }
    return (ret_pci);
  } else {
  }
  return (0);
}
}
static void velocity_cleanup_module(void)
{
  {
  {
  velocity_unregister_notifier();
  ldv_pci_unregister_driver_35(& velocity_pci_driver);
  ldv_platform_driver_unregister_36(& velocity_platform_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_velocity_cleanup_module_18_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_velocity_init_module_18_7(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_dispatch_deregister_10_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_13_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_16_1(struct notifier_block *arg0 ) ;
void ldv_dispatch_irq_deregister_8_1(int arg0 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_3_5(void) ;
void ldv_dispatch_pm_register_3_6(void) ;
void ldv_dispatch_register_11_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_17_2(struct notifier_block *arg0 ) ;
void ldv_dispatch_register_6_2(struct platform_driver *arg0 ) ;
void ldv_dummy_resourceless_instance_callback_1_10(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_13(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_14(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_16(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_23(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_26(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_29(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_30(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_33(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_42(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_45(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_1_9(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 ) ;
void ldv_entry_EMGentry_18(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_1(void *arg0 ) ;
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
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_3(void *arg0 ) ;
void ldv_platform_pm_ops_instance_4(void *arg0 ) ;
void ldv_pm_ops_instance_complete_4_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_4_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_4_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_4_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_4_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_4_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_4_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_4_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_4_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_4_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_4_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_4_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_4_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_4_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_4_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
int ldv_register_inetaddr_notifier(int arg0 , struct notifier_block *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_11_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_5(void *arg0 ) ;
int ldv_unregister_inetaddr_notifier(int arg0 , struct notifier_block *arg1 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_13_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_velocity_cleanup_module_18_2(void (*arg0)(void) )
{
  {
  {
  velocity_cleanup_module();
  }
  return;
}
}
int ldv_EMGentry_init_velocity_init_module_18_7(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = velocity_init_module();
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
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_6_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_6_platform_driver_platform_driver = arg1;
    ldv_dispatch_register_6_2(ldv_6_platform_driver_platform_driver);
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
  struct net_device *ldv_7_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_7_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_7_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_dispatch_deregister_10_1(struct platform_driver *arg0 )
{
  {
  return;
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
void ldv_dispatch_deregister_16_1(struct notifier_block *arg0 )
{
  {
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
void ldv_dispatch_pm_deregister_3_5(void)
{
  {
  return;
}
}
void ldv_dispatch_pm_register_3_6(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_platform_pm_ops_instance_4((void *)cf_arg_4);
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
void ldv_dispatch_register_17_2(struct notifier_block *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_dummy_resourceless_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_struct_notifier_block_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_6_2(struct platform_driver *arg0 )
{
  struct ldv_struct_platform_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ldv_platform_platform_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_10(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  velocity_get_ethtool_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_13(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  velocity_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_14(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  velocity_get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_15(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  velocity_get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_16(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  velocity_get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_19(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  velocity_get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_22(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  velocity_ethtool_get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_23(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  velocity_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_26(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  velocity_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_29(struct net_device_stats *(*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  velocity_get_stats(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 )
{
  {
  {
  velocity_ethtool_up(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_30(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  velocity_poll_controller(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_31(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_32(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  velocity_set_multi(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_33(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  velocity_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_34(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_35(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  velocity_vlan_rx_add_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_38(int (*arg0)(struct net_device * ,
                                                               unsigned short , unsigned short ) ,
                                                   struct net_device *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  velocity_vlan_rx_kill_vid(arg1, (int )arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_41(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  velocity_set_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_42(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  velocity_set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_45(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  velocity_set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_46(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  velocity_ethtool_set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_7(void (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 )
{
  {
  {
  velocity_ethtool_down(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_8(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  velocity_get_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_9(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  velocity_get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 )
{
  {
  {
  velocity_netdev_event(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_18(void *arg0 )
{
  void (*ldv_18_exit_velocity_cleanup_module_default)(void) ;
  int (*ldv_18_init_velocity_init_module_default)(void) ;
  int ldv_18_ret_default ;
  int tmp ;
  {
  {
  ldv_18_ret_default = ldv_EMGentry_init_velocity_init_module_18_7(ldv_18_init_velocity_init_module_default);
  ldv_18_ret_default = ldv_post_init(ldv_18_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(ldv_18_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_18_ret_default == 0);
    ldv_EMGentry_exit_velocity_cleanup_module_18_2(ldv_18_exit_velocity_cleanup_module_default);
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
  ldv_entry_EMGentry_18((void *)0);
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
  tmp = velocity_intr(arg1, arg2);
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
void ldv_net_dummy_resourceless_instance_1(void *arg0 )
{
  int (*ldv_1_callback_begin)(struct net_device * ) ;
  void (*ldv_1_callback_complete)(struct net_device * ) ;
  int (*ldv_1_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_1_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
  void (*ldv_1_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                           unsigned long long * ) ;
  unsigned int (*ldv_1_callback_get_link)(struct net_device * ) ;
  unsigned int (*ldv_1_callback_get_msglevel)(struct net_device * ) ;
  int (*ldv_1_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_1_callback_get_sset_count)(struct net_device * , int ) ;
  void (*ldv_1_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
  void (*ldv_1_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  int (*ldv_1_callback_ndo_change_mtu)(struct net_device * , int ) ;
  int (*ldv_1_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
  struct net_device_stats *(*ldv_1_callback_ndo_get_stats)(struct net_device * ) ;
  void (*ldv_1_callback_ndo_poll_controller)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  void (*ldv_1_callback_ndo_set_rx_mode)(struct net_device * ) ;
  enum netdev_tx (*ldv_1_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  int (*ldv_1_callback_ndo_validate_addr)(struct net_device * ) ;
  int (*ldv_1_callback_ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ,
                                            unsigned short ) ;
  int (*ldv_1_callback_ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ,
                                             unsigned short ) ;
  int (*ldv_1_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_1_callback_set_msglevel)(struct net_device * , unsigned int ) ;
  int (*ldv_1_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_1_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  struct net_device *ldv_1_container_net_device ;
  struct ethtool_cmd *ldv_1_container_struct_ethtool_cmd_ptr ;
  struct ethtool_coalesce *ldv_1_container_struct_ethtool_coalesce_ptr ;
  struct ethtool_drvinfo *ldv_1_container_struct_ethtool_drvinfo_ptr ;
  struct ethtool_stats *ldv_1_container_struct_ethtool_stats_ptr ;
  struct ethtool_wolinfo *ldv_1_container_struct_ethtool_wolinfo_ptr ;
  struct ifreq *ldv_1_container_struct_ifreq_ptr ;
  struct sk_buff *ldv_1_container_struct_sk_buff_ptr ;
  unsigned long long *ldv_1_ldv_param_10_2_default ;
  int ldv_1_ldv_param_16_1_default ;
  unsigned int ldv_1_ldv_param_19_1_default ;
  unsigned char *ldv_1_ldv_param_19_2_default ;
  int ldv_1_ldv_param_23_1_default ;
  int ldv_1_ldv_param_26_2_default ;
  unsigned short ldv_1_ldv_param_35_1_default ;
  unsigned short ldv_1_ldv_param_35_2_default ;
  unsigned short ldv_1_ldv_param_38_1_default ;
  unsigned short ldv_1_ldv_param_38_2_default ;
  unsigned int ldv_1_ldv_param_42_1_default ;
  struct ldv_struct_dummy_resourceless_instance_1 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_1_46(ldv_1_callback_set_wol, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_1_45(ldv_1_callback_set_settings, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_42(ldv_1_callback_set_msglevel, ldv_1_container_net_device,
                                                ldv_1_ldv_param_42_1_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_1_41(ldv_1_callback_set_coalesce, ldv_1_container_net_device,
                                                ldv_1_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_1_38(ldv_1_callback_ndo_vlan_rx_kill_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_38_1_default,
                                                (int )ldv_1_ldv_param_38_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_1_35(ldv_1_callback_ndo_vlan_rx_add_vid,
                                                ldv_1_container_net_device, (int )ldv_1_ldv_param_35_1_default,
                                                (int )ldv_1_ldv_param_35_2_default);
  }
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  goto ldv_call_1;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_1_34(ldv_1_callback_ndo_validate_addr,
                                                ldv_1_container_net_device);
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
  ldv_dummy_resourceless_instance_callback_1_33(ldv_1_callback_ndo_start_xmit, ldv_1_container_struct_sk_buff_ptr,
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
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_1_32(ldv_1_callback_ndo_set_rx_mode, ldv_1_container_net_device);
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
  ldv_dummy_resourceless_instance_callback_1_31(ldv_1_callback_ndo_set_mac_address,
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
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_1_30(ldv_1_callback_ndo_poll_controller,
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
  ldv_dummy_resourceless_instance_callback_1_29(ldv_1_callback_ndo_get_stats, ldv_1_container_net_device);
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
  ldv_dummy_resourceless_instance_callback_1_26(ldv_1_callback_ndo_do_ioctl, ldv_1_container_net_device,
                                                ldv_1_container_struct_ifreq_ptr,
                                                ldv_1_ldv_param_26_2_default);
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
  ldv_dummy_resourceless_instance_callback_1_23(ldv_1_callback_ndo_change_mtu, ldv_1_container_net_device,
                                                ldv_1_ldv_param_23_1_default);
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
  ldv_dummy_resourceless_instance_callback_1_22(ldv_1_callback_get_wol, ldv_1_container_net_device,
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
  case_16:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_19_2_default = (unsigned char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_1_19(ldv_1_callback_get_strings, ldv_1_container_net_device,
                                                ldv_1_ldv_param_19_1_default, ldv_1_ldv_param_19_2_default);
  ldv_free((void *)ldv_1_ldv_param_19_2_default);
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
  ldv_dummy_resourceless_instance_callback_1_16(ldv_1_callback_get_sset_count, ldv_1_container_net_device,
                                                ldv_1_ldv_param_16_1_default);
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
  ldv_dummy_resourceless_instance_callback_1_15(ldv_1_callback_get_settings, ldv_1_container_net_device,
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
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_1_14(ldv_1_callback_get_msglevel, ldv_1_container_net_device);
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
  ldv_dummy_resourceless_instance_callback_1_13(ldv_1_callback_get_link, ldv_1_container_net_device);
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
  tmp___1 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_10_2_default = (unsigned long long *)tmp___1;
  ldv_dummy_resourceless_instance_callback_1_10(ldv_1_callback_get_ethtool_stats,
                                                ldv_1_container_net_device, ldv_1_container_struct_ethtool_stats_ptr,
                                                ldv_1_ldv_param_10_2_default);
  ldv_free((void *)ldv_1_ldv_param_10_2_default);
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
  ldv_dummy_resourceless_instance_callback_1_9(ldv_1_callback_get_drvinfo, ldv_1_container_net_device,
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
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_1_8(ldv_1_callback_get_coalesce, ldv_1_container_net_device,
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
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_1_7(ldv_1_callback_complete, ldv_1_container_net_device);
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
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_begin, ldv_1_container_net_device);
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
  case_26: ;
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
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = velocity_pci_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  velocity_pci_remove(arg1);
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
  struct pci_driver *ldv_2_container_pci_driver ;
  struct pci_dev *ldv_2_resource_dev ;
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
    ldv_2_ret_default = ldv_ldv_post_probe_37(ldv_2_ret_default);
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
  goto switch_default;
  case_1: ;
  goto ldv_call_2;
  case_2: ;
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
  if ((unsigned long )ldv_2_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
    }
  } else {
  }
  goto ldv_call_2;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  {
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
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_10_platform_driver_platform_driver ;
  {
  {
  ldv_10_platform_driver_platform_driver = arg1;
  ldv_dispatch_deregister_10_1(ldv_10_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = velocity_platform_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  velocity_platform_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_3(void *arg0 )
{
  struct platform_driver *ldv_3_container_platform_driver ;
  int ldv_3_probed_default ;
  struct platform_device *ldv_3_resource_platform_device ;
  struct ldv_struct_platform_instance_3 *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  data = (struct ldv_struct_platform_instance_3 *)arg0;
  ldv_3_probed_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_platform_instance_3 *)0)) {
    {
    ldv_3_container_platform_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(1432UL);
  ldv_3_resource_platform_device = (struct platform_device *)tmp;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_pre_probe();
    ldv_3_probed_default = ldv_platform_instance_probe_3_14(ldv_3_container_platform_driver->probe,
                                                            ldv_3_resource_platform_device);
    ldv_3_probed_default = ldv_ldv_post_probe_38(ldv_3_probed_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_3_probed_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_probed_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_platform_device);
    }
    return;
  }
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  {
  if (tmp___2 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___2 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___2 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_3;
  case_2:
  {
  ldv_dispatch_pm_register_3_6();
  ldv_dispatch_pm_deregister_3_5();
  }
  goto ldv_call_3;
  goto ldv_call_3;
  case_3:
  {
  ldv_platform_instance_release_3_3(ldv_3_container_platform_driver->remove, ldv_3_resource_platform_device);
  ldv_3_probed_default = 1;
  }
  goto ldv_main_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_platform_pm_ops_instance_4(void *arg0 )
{
  struct device *ldv_4_device_device ;
  struct dev_pm_ops *ldv_4_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_4;
  return;
  ldv_do_4:
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
  goto switch_default___0;
  case_1: ;
  if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_4_27(ldv_4_pm_ops_dev_pm_ops->runtime_idle, ldv_4_device_device);
    }
  } else {
  }
  goto ldv_do_4;
  case_2: ;
  if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_4_25(ldv_4_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_4_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_4_24(ldv_4_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_4_device_device);
    }
  } else {
  }
  goto ldv_do_4;
  case_3: ;
  if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_4_22(ldv_4_pm_ops_dev_pm_ops->prepare, ldv_4_device_device);
    }
  } else {
  }
  {
  tmp___0 = ldv_undef_int();
  }
  {
  if (tmp___0 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___0 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___0 == 3) {
    goto case_3___0;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_pm_ops_instance_suspend_4_21(ldv_4_pm_ops_dev_pm_ops->suspend, ldv_4_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_4_20(ldv_4_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_4_19(ldv_4_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_4_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_4_18(ldv_4_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_4_17(ldv_4_pm_ops_dev_pm_ops->resume_early,
                                            ldv_4_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_resume_4_16(ldv_4_pm_ops_dev_pm_ops->resume, ldv_4_device_device);
  }
  goto ldv_50914;
  case_2___0:
  {
  ldv_pm_ops_instance_freeze_4_15(ldv_4_pm_ops_dev_pm_ops->freeze, ldv_4_device_device);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_4_14(ldv_4_pm_ops_dev_pm_ops->freeze_late, ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_4_13(ldv_4_pm_ops_dev_pm_ops->thaw_early, ldv_4_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_4_12(ldv_4_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_4_11(ldv_4_pm_ops_dev_pm_ops->thaw_noirq, ldv_4_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_thaw_4_10(ldv_4_pm_ops_dev_pm_ops->thaw, ldv_4_device_device);
  }
  goto ldv_50914;
  case_3___0:
  {
  ldv_pm_ops_instance_poweroff_4_9(ldv_4_pm_ops_dev_pm_ops->poweroff, ldv_4_device_device);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_4_8(ldv_4_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_4_7(ldv_4_pm_ops_dev_pm_ops->restore_early,
                                            ldv_4_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_4_6(ldv_4_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_4_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_4_5(ldv_4_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_4_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_restore_4_4(ldv_4_pm_ops_dev_pm_ops->restore, ldv_4_device_device);
  }
  goto ldv_50914;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_50914: ;
  if ((unsigned long )ldv_4_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_4_3(ldv_4_pm_ops_dev_pm_ops->complete, ldv_4_device_device);
    }
  } else {
  }
  goto ldv_do_4;
  case_4: ;
  return;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_ops_instance_complete_4_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_4_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_4_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_4_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_4_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_4_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_4_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_4_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_4_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_4_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_4_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_4_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_4_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_4_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_4_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_4_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_4_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_4_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_4_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_4_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_4_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  velocity_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_4_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_4_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_register_inetaddr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_17_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_17_struct_notifier_block_struct_notifier_block = arg1;
    ldv_dispatch_register_17_2(ldv_17_struct_notifier_block_struct_notifier_block);
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
  tmp = velocity_open(arg1);
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
void ldv_struct_notifier_block_dummy_resourceless_instance_5(void *arg0 )
{
  int (*ldv_5_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) ;
  struct notifier_block *ldv_5_container_struct_notifier_block ;
  unsigned long ldv_5_ldv_param_3_1_default ;
  void *ldv_5_ldv_param_3_2_default ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_5_container_struct_notifier_block = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_5_ldv_param_3_2_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_notifier_call, ldv_5_container_struct_notifier_block,
                                                 ldv_5_ldv_param_3_1_default, ldv_5_ldv_param_3_2_default);
    ldv_free(ldv_5_ldv_param_3_2_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
int ldv_unregister_inetaddr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_16_struct_notifier_block_struct_notifier_block ;
  {
  {
  ldv_16_struct_notifier_block_struct_notifier_block = arg1;
  ldv_dispatch_deregister_16_1(ldv_16_struct_notifier_block_struct_notifier_block);
  }
  return (arg0);
  return (arg0);
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
  velocity_close(arg1);
  }
  return;
}
}
void *ldv_zalloc(size_t size ) ;
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
__inline static int ldv_request_irq_20(unsigned int irq , irqreturn_t (*handler)(int ,
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
static void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_22(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static int ldv_register_netdev_23(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static int ldv_dev_set_drvdata_24(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_free_netdev_25(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_26(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
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
static void *ldv_dev_get_drvdata_29(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_30(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_register_inetaddr_notifier_31(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_inetaddr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_inetaddr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_unregister_inetaddr_notifier_32(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_inetaddr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_inetaddr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_33(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
static int ldv___platform_driver_register_34(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static void ldv_pci_unregister_driver_35(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_platform_driver_unregister_36(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_probe_37(int ldv_func_arg1 )
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
static int ldv_ldv_post_probe_38(int ldv_func_arg1 )
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
void *ldv_malloc(size_t size ) ;
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
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
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
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
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
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 crc_ccitt(u16 arg0, const u8 *arg1, size_t arg2) {
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
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
const char *dev_driver_string(const struct device *arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_notice(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
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
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
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
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
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
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
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
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_inetaddr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int unregister_inetaddr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
