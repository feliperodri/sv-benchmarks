typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
typedef __u32 __le32;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
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
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
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
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
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
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
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
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
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
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
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
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
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
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct jump_entry;
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
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
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
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
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
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
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
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
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
   bool ignore_lockdep ;
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
   char *argv[3U] ;
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
struct __anonstruct_nodemask_t_53 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_53 nodemask_t;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
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
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_118 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_118 mm_context_t;
struct bio_vec;
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
   struct iommu_ops const *iommu_ops ;
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
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_151 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_152 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField34 ;
   struct __anonstruct____missing_field_name_152 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_153 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_155 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_159 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_158 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_159 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_156 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_157 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField38 ;
   union __anonunion____missing_field_name_156 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_161 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_162 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_160 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_161 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_162 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_163 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_153 __annonCompField37 ;
   struct __anonstruct____missing_field_name_154 __annonCompField43 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   union __anonunion____missing_field_name_163 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_164 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_164 shared ;
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
   u32 vmacache_seqnum ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
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
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_173 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_173 _addr_bnd ;
};
struct __anonstruct__sigpoll_174 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_175 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_174 _sigpoll ;
   struct __anonstruct__sigsys_175 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
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
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_180 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_181 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_183 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_182 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_183 __annonCompField52 ;
};
union __anonunion_type_data_184 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_186 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_185 {
   union __anonunion_payload_186 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_180 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_181 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_182 __annonCompField53 ;
   union __anonunion_type_data_184 type_data ;
   union __anonunion____missing_field_name_185 __annonCompField54 ;
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
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
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
   seqlock_t stats_lock ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
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
   int depth ;
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
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
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
   struct sysv_shm sysvshm ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
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
union __anonunion____missing_field_name_191 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned char ignore_hotplug : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char no_64bit_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   unsigned char irq_managed : 1 ;
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
   union __anonunion____missing_field_name_191 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   unsigned char is_added : 1 ;
};
struct pci_ops {
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
   void (*reset_notify)(struct pci_dev * , bool ) ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
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
struct __anonstruct____missing_field_name_193 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_192 {
   struct __anonstruct____missing_field_name_193 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_192 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_195 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_194 {
   struct __anonstruct____missing_field_name_195 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_194 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_196 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_196 d_u ;
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
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_198 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_197 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct __anonstruct_kprojid_t_200 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_200 kprojid_t;
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
union __anonunion____missing_field_name_201 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_201 __annonCompField66 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
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
union __anonunion____missing_field_name_204 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_205 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_206 {
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
   union __anonunion____missing_field_name_204 __annonCompField67 ;
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
   union __anonunion____missing_field_name_205 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_206 __annonCompField69 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_207 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_207 f_u ;
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
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_209 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_208 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_209 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_208 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion____missing_field_name_218 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_218 __annonCompField73 ;
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
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
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
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct reclaim_state {
   unsigned long reclaimed_slab ;
};
struct swap_extent {
   struct list_head list ;
   unsigned long start_page ;
   unsigned long nr_pages ;
   sector_t start_block ;
};
struct swap_cluster_info {
   unsigned int data : 24 ;
   unsigned char flags ;
};
struct percpu_cluster {
   struct swap_cluster_info index ;
   unsigned int next ;
};
struct swap_info_struct {
   unsigned long flags ;
   short prio ;
   struct plist_node list ;
   struct plist_node avail_list ;
   signed char type ;
   unsigned int max ;
   unsigned char *swap_map ;
   struct swap_cluster_info *cluster_info ;
   struct swap_cluster_info free_cluster_head ;
   struct swap_cluster_info free_cluster_tail ;
   unsigned int lowest_bit ;
   unsigned int highest_bit ;
   unsigned int pages ;
   unsigned int inuse_pages ;
   unsigned int cluster_next ;
   unsigned int cluster_nr ;
   struct percpu_cluster *percpu_cluster ;
   struct swap_extent *curr_swap_extent ;
   struct swap_extent first_swap_extent ;
   struct block_device *bdev ;
   struct file *swap_file ;
   unsigned int old_block_size ;
   unsigned long *frontswap_map ;
   atomic_t frontswap_pages ;
   spinlock_t lock ;
   struct work_struct discard_work ;
   struct swap_cluster_info discard_cluster_head ;
   struct swap_cluster_info discard_cluster_tail ;
};
struct mic_bootparam {
   __le32 magic ;
   __s8 c2h_shutdown_db ;
   __s8 h2c_shutdown_db ;
   __s8 h2c_config_db ;
   __u8 shutdown_status ;
   __u8 shutdown_card ;
};
struct mic_mw {
   phys_addr_t pa ;
   void *va ;
   resource_size_t len ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_222 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_222 __annonCompField74 ;
   unsigned long nr_segs ;
};
typedef s32 dma_cookie_t;
enum dma_status {
    DMA_COMPLETE = 0,
    DMA_IN_PROGRESS = 1,
    DMA_PAUSED = 2,
    DMA_ERROR = 3
} ;
enum dma_transfer_direction {
    DMA_MEM_TO_MEM = 0,
    DMA_MEM_TO_DEV = 1,
    DMA_DEV_TO_MEM = 2,
    DMA_DEV_TO_DEV = 3,
    DMA_TRANS_NONE = 4
} ;
struct data_chunk {
   size_t size ;
   size_t icg ;
};
struct dma_interleaved_template {
   dma_addr_t src_start ;
   dma_addr_t dst_start ;
   enum dma_transfer_direction dir ;
   bool src_inc ;
   bool dst_inc ;
   bool src_sgl ;
   bool dst_sgl ;
   size_t numf ;
   size_t frame_size ;
   struct data_chunk sgl[0U] ;
};
enum dma_ctrl_flags {
    DMA_PREP_INTERRUPT = 1,
    DMA_CTRL_ACK = 2,
    DMA_PREP_PQ_DISABLE_P = 4,
    DMA_PREP_PQ_DISABLE_Q = 8,
    DMA_PREP_CONTINUE = 16,
    DMA_PREP_FENCE = 32
} ;
enum sum_check_flags {
    SUM_CHECK_P_RESULT = 1,
    SUM_CHECK_Q_RESULT = 2
} ;
struct __anonstruct_dma_cap_mask_t_223 {
   unsigned long bits[1U] ;
};
typedef struct __anonstruct_dma_cap_mask_t_223 dma_cap_mask_t;
struct dma_chan_percpu {
   unsigned long memcpy_count ;
   unsigned long bytes_transferred ;
};
struct dma_device;
struct dma_chan_dev;
struct dma_chan {
   struct dma_device *device ;
   dma_cookie_t cookie ;
   dma_cookie_t completed_cookie ;
   int chan_id ;
   struct dma_chan_dev *dev ;
   struct list_head device_node ;
   struct dma_chan_percpu *local ;
   int client_count ;
   int table_count ;
   void *private ;
};
struct dma_chan_dev {
   struct dma_chan *chan ;
   struct device device ;
   int dev_id ;
   atomic_t *idr_ref ;
};
enum dma_slave_buswidth {
    DMA_SLAVE_BUSWIDTH_UNDEFINED = 0,
    DMA_SLAVE_BUSWIDTH_1_BYTE = 1,
    DMA_SLAVE_BUSWIDTH_2_BYTES = 2,
    DMA_SLAVE_BUSWIDTH_3_BYTES = 3,
    DMA_SLAVE_BUSWIDTH_4_BYTES = 4,
    DMA_SLAVE_BUSWIDTH_8_BYTES = 8,
    DMA_SLAVE_BUSWIDTH_16_BYTES = 16,
    DMA_SLAVE_BUSWIDTH_32_BYTES = 32,
    DMA_SLAVE_BUSWIDTH_64_BYTES = 64
} ;
struct dma_slave_config {
   enum dma_transfer_direction direction ;
   dma_addr_t src_addr ;
   dma_addr_t dst_addr ;
   enum dma_slave_buswidth src_addr_width ;
   enum dma_slave_buswidth dst_addr_width ;
   u32 src_maxburst ;
   u32 dst_maxburst ;
   bool device_fc ;
   unsigned int slave_id ;
};
enum dma_residue_granularity {
    DMA_RESIDUE_GRANULARITY_DESCRIPTOR = 0,
    DMA_RESIDUE_GRANULARITY_SEGMENT = 1,
    DMA_RESIDUE_GRANULARITY_BURST = 2
} ;
struct dmaengine_unmap_data {
   u8 map_cnt ;
   u8 to_cnt ;
   u8 from_cnt ;
   u8 bidi_cnt ;
   struct device *dev ;
   struct kref kref ;
   size_t len ;
   dma_addr_t addr[0U] ;
};
struct dma_async_tx_descriptor {
   dma_cookie_t cookie ;
   enum dma_ctrl_flags flags ;
   dma_addr_t phys ;
   struct dma_chan *chan ;
   dma_cookie_t (*tx_submit)(struct dma_async_tx_descriptor * ) ;
   void (*callback)(void * ) ;
   void *callback_param ;
   struct dmaengine_unmap_data *unmap ;
};
struct dma_tx_state {
   dma_cookie_t last ;
   dma_cookie_t used ;
   u32 residue ;
};
struct dma_device {
   unsigned int chancnt ;
   unsigned int privatecnt ;
   struct list_head channels ;
   struct list_head global_node ;
   dma_cap_mask_t cap_mask ;
   unsigned short max_xor ;
   unsigned short max_pq ;
   u8 copy_align ;
   u8 xor_align ;
   u8 pq_align ;
   u8 fill_align ;
   int dev_id ;
   struct device *dev ;
   u32 src_addr_widths ;
   u32 dst_addr_widths ;
   u32 directions ;
   enum dma_residue_granularity residue_granularity ;
   int (*device_alloc_chan_resources)(struct dma_chan * ) ;
   void (*device_free_chan_resources)(struct dma_chan * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_memcpy)(struct dma_chan * , dma_addr_t ,
                                                             dma_addr_t , size_t ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor)(struct dma_chan * , dma_addr_t ,
                                                          dma_addr_t * , unsigned int ,
                                                          size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_xor_val)(struct dma_chan * ,
                                                              dma_addr_t * , unsigned int ,
                                                              size_t , enum sum_check_flags * ,
                                                              unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq)(struct dma_chan * , dma_addr_t * ,
                                                         dma_addr_t * , unsigned int ,
                                                         unsigned char const * ,
                                                         size_t , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_pq_val)(struct dma_chan * , dma_addr_t * ,
                                                             dma_addr_t * , unsigned int ,
                                                             unsigned char const * ,
                                                             size_t , enum sum_check_flags * ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_interrupt)(struct dma_chan * ,
                                                                unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_sg)(struct dma_chan * , struct scatterlist * ,
                                                         unsigned int , struct scatterlist * ,
                                                         unsigned int , unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_slave_sg)(struct dma_chan * , struct scatterlist * ,
                                                           unsigned int , enum dma_transfer_direction ,
                                                           unsigned long , void * ) ;
   struct dma_async_tx_descriptor *(*device_prep_dma_cyclic)(struct dma_chan * , dma_addr_t ,
                                                             size_t , size_t , enum dma_transfer_direction ,
                                                             unsigned long ) ;
   struct dma_async_tx_descriptor *(*device_prep_interleaved_dma)(struct dma_chan * ,
                                                                  struct dma_interleaved_template * ,
                                                                  unsigned long ) ;
   int (*device_config)(struct dma_chan * , struct dma_slave_config * ) ;
   int (*device_pause)(struct dma_chan * ) ;
   int (*device_resume)(struct dma_chan * ) ;
   int (*device_terminate_all)(struct dma_chan * ) ;
   enum dma_status (*device_tx_status)(struct dma_chan * , dma_cookie_t , struct dma_tx_state * ) ;
   void (*device_issue_pending)(struct dma_chan * ) ;
};
struct mbus_device_id {
   __u32 device ;
   __u32 vendor ;
};
struct mbus_hw_ops;
struct mbus_device {
   void *mmio_va ;
   struct mbus_hw_ops *hw_ops ;
   struct mbus_device_id id ;
   struct device dev ;
   int index ;
};
struct mic_irq;
struct mbus_hw_ops {
   struct mic_irq *(*request_threaded_irq)(struct mbus_device * , irqreturn_t (*)(int ,
                                                                                  void * ) ,
                                           irqreturn_t (*)(int , void * ) , char const * ,
                                           void * , int ) ;
   void (*free_irq)(struct mbus_device * , struct mic_irq * , void * ) ;
   void (*ack_interrupt)(struct mbus_device * , int ) ;
};
enum mic_intr_type {
    MIC_INTR_DB = 0,
    MIC_INTR_DMA = 1,
    MIC_INTR_ERR = 2,
    MIC_NUM_INTR_TYPES = 3
} ;
struct mic_intr_info {
   u16 intr_start_idx[3U] ;
   u16 intr_len[3U] ;
};
struct mic_irq_info {
   int next_avail_src ;
   struct msix_entry *msix_entries ;
   u32 *mic_msi_map ;
   u16 num_vectors ;
   struct ida cb_ida ;
   spinlock_t mic_intr_lock ;
   spinlock_t mic_thread_lock ;
   struct list_head *cb_list ;
   unsigned long mask ;
};
struct mic_device;
struct mic_hw_intr_ops {
   void (*intr_init)(struct mic_device * ) ;
   void (*enable_interrupts)(struct mic_device * ) ;
   void (*disable_interrupts)(struct mic_device * ) ;
   void (*program_msi_to_src_map)(struct mic_device * , int , int , bool ) ;
   u32 (*read_msi_to_src_map)(struct mic_device * , int ) ;
};
enum mic_hw_family {
    MIC_FAMILY_X100 = 0,
    MIC_FAMILY_UNKNOWN = 1
} ;
enum mic_stepping {
    MIC_A0_STEP = 0,
    MIC_B0_STEP = 16,
    MIC_B1_STEP = 17,
    MIC_C0_STEP = 32
} ;
struct mic_hw_ops;
struct mic_smpt_ops;
struct mic_smpt_info;
struct mic_device {
   struct mic_mw mmio ;
   struct mic_mw aper ;
   enum mic_hw_family family ;
   struct mic_hw_ops *ops ;
   int id ;
   enum mic_stepping stepping ;
   struct attribute_group const **attr_group ;
   struct device *sdev ;
   struct mutex mic_mutex ;
   struct mic_hw_intr_ops *intr_ops ;
   struct mic_smpt_ops *smpt_ops ;
   struct mic_smpt_info *smpt ;
   struct mic_intr_info *intr_info ;
   struct mic_irq_info irq_info ;
   struct dentry *dbg_dir ;
   char *cmdline ;
   char *firmware ;
   char *ramdisk ;
   char *bootmode ;
   u32 bootaddr ;
   struct work_struct reset_trigger_work ;
   struct work_struct shutdown_work ;
   u8 state ;
   u8 shutdown_status ;
   struct kernfs_node *state_sysfs ;
   struct completion reset_wait ;
   void *log_buf_addr ;
   int *log_buf_len ;
   void *dp ;
   dma_addr_t dp_dma_addr ;
   int shutdown_db ;
   struct mic_irq *shutdown_cookie ;
   struct cdev cdev ;
   struct list_head vdev_list ;
   struct notifier_block pm_notifier ;
   struct mbus_device *dma_mbdev ;
   struct dma_chan *dma_ch ;
};
struct mic_hw_ops {
   u8 aper_bar ;
   u8 mmio_bar ;
   u32 (*read_spad)(struct mic_device * , unsigned int ) ;
   void (*write_spad)(struct mic_device * , unsigned int , u32 ) ;
   void (*send_intr)(struct mic_device * , int ) ;
   u32 (*ack_interrupt)(struct mic_device * ) ;
   void (*intr_workarounds)(struct mic_device * ) ;
   void (*reset)(struct mic_device * ) ;
   void (*reset_fw_ready)(struct mic_device * ) ;
   bool (*is_fw_ready)(struct mic_device * ) ;
   void (*send_firmware_intr)(struct mic_device * ) ;
   int (*load_mic_fw)(struct mic_device * , char const * ) ;
   u32 (*get_postcode)(struct mic_device * ) ;
   bool (*dma_filter)(struct dma_chan * , void * ) ;
};
struct mic_smpt_ops {
   void (*init)(struct mic_device * ) ;
   void (*set)(struct mic_device * , dma_addr_t , u8 ) ;
};
struct mic_smpt {
   dma_addr_t dma_addr ;
   s64 ref_count ;
};
struct mic_smpt_hw_info {
   u8 num_reg ;
   u8 page_shift ;
   u64 page_size ;
   u64 base ;
};
struct mic_smpt_info {
   struct mic_smpt *entry ;
   spinlock_t smpt_lock ;
   struct mic_smpt_hw_info info ;
   s64 ref_count ;
   s64 map_count ;
   s64 unmap_count ;
};
struct ldv_struct_EMGentry_30 {
   int signal_pending ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_9 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
enum hrtimer_restart;
struct screen_info {
   __u8 orig_x ;
   __u8 orig_y ;
   __u16 ext_mem_k ;
   __u16 orig_video_page ;
   __u8 orig_video_mode ;
   __u8 orig_video_cols ;
   __u8 flags ;
   __u8 unused2 ;
   __u16 orig_video_ega_bx ;
   __u16 unused3 ;
   __u8 orig_video_lines ;
   __u8 orig_video_isVGA ;
   __u16 orig_video_points ;
   __u16 lfb_width ;
   __u16 lfb_height ;
   __u16 lfb_depth ;
   __u32 lfb_base ;
   __u32 lfb_size ;
   __u16 cl_magic ;
   __u16 cl_offset ;
   __u16 lfb_linelength ;
   __u8 red_size ;
   __u8 red_pos ;
   __u8 green_size ;
   __u8 green_pos ;
   __u8 blue_size ;
   __u8 blue_pos ;
   __u8 rsvd_size ;
   __u8 rsvd_pos ;
   __u16 vesapm_seg ;
   __u16 vesapm_off ;
   __u16 pages ;
   __u16 vesa_attributes ;
   __u32 capabilities ;
   __u8 _reserved[6U] ;
};
struct apm_bios_info {
   __u16 version ;
   __u16 cseg ;
   __u32 offset ;
   __u16 cseg_16 ;
   __u16 dseg ;
   __u16 flags ;
   __u16 cseg_len ;
   __u16 cseg_16_len ;
   __u16 dseg_len ;
};
struct __anonstruct_isa_55 {
   __u16 base_address ;
   __u16 reserved1 ;
   __u32 reserved2 ;
};
struct __anonstruct_pci_56 {
   __u8 bus ;
   __u8 slot ;
   __u8 function ;
   __u8 channel ;
   __u32 reserved ;
};
struct __anonstruct_ibnd_57 {
   __u64 reserved ;
};
struct __anonstruct_xprs_58 {
   __u64 reserved ;
};
struct __anonstruct_htpt_59 {
   __u64 reserved ;
};
struct __anonstruct_unknown_60 {
   __u64 reserved ;
};
union __anonunion_interface_path_54 {
   struct __anonstruct_isa_55 isa ;
   struct __anonstruct_pci_56 pci ;
   struct __anonstruct_ibnd_57 ibnd ;
   struct __anonstruct_xprs_58 xprs ;
   struct __anonstruct_htpt_59 htpt ;
   struct __anonstruct_unknown_60 unknown ;
};
struct __anonstruct_ata_62 {
   __u8 device ;
   __u8 reserved1 ;
   __u16 reserved2 ;
   __u32 reserved3 ;
   __u64 reserved4 ;
};
struct __anonstruct_atapi_63 {
   __u8 device ;
   __u8 lun ;
   __u8 reserved1 ;
   __u8 reserved2 ;
   __u32 reserved3 ;
   __u64 reserved4 ;
};
struct __anonstruct_scsi_64 {
   __u16 id ;
   __u64 lun ;
   __u16 reserved1 ;
   __u32 reserved2 ;
};
struct __anonstruct_usb_65 {
   __u64 serial_number ;
   __u64 reserved ;
};
struct __anonstruct_i1394_66 {
   __u64 eui ;
   __u64 reserved ;
};
struct __anonstruct_fibre_67 {
   __u64 wwid ;
   __u64 lun ;
};
struct __anonstruct_i2o_68 {
   __u64 identity_tag ;
   __u64 reserved ;
};
struct __anonstruct_raid_69 {
   __u32 array_number ;
   __u32 reserved1 ;
   __u64 reserved2 ;
};
struct __anonstruct_sata_70 {
   __u8 device ;
   __u8 reserved1 ;
   __u16 reserved2 ;
   __u32 reserved3 ;
   __u64 reserved4 ;
};
struct __anonstruct_unknown_71 {
   __u64 reserved1 ;
   __u64 reserved2 ;
};
union __anonunion_device_path_61 {
   struct __anonstruct_ata_62 ata ;
   struct __anonstruct_atapi_63 atapi ;
   struct __anonstruct_scsi_64 scsi ;
   struct __anonstruct_usb_65 usb ;
   struct __anonstruct_i1394_66 i1394 ;
   struct __anonstruct_fibre_67 fibre ;
   struct __anonstruct_i2o_68 i2o ;
   struct __anonstruct_raid_69 raid ;
   struct __anonstruct_sata_70 sata ;
   struct __anonstruct_unknown_71 unknown ;
};
struct edd_device_params {
   __u16 length ;
   __u16 info_flags ;
   __u32 num_default_cylinders ;
   __u32 num_default_heads ;
   __u32 sectors_per_track ;
   __u64 number_of_sectors ;
   __u16 bytes_per_sector ;
   __u32 dpte_ptr ;
   __u16 key ;
   __u8 device_path_info_length ;
   __u8 reserved2 ;
   __u16 reserved3 ;
   __u8 host_bus_type[4U] ;
   __u8 interface_type[8U] ;
   union __anonunion_interface_path_54 interface_path ;
   union __anonunion_device_path_61 device_path ;
   __u8 reserved4 ;
   __u8 checksum ;
};
struct edd_info {
   __u8 device ;
   __u8 version ;
   __u16 interface_support ;
   __u16 legacy_max_cylinder ;
   __u8 legacy_max_head ;
   __u8 legacy_sectors_per_track ;
   struct edd_device_params params ;
};
struct e820entry {
   __u64 addr ;
   __u64 size ;
   __u32 type ;
};
struct ist_info {
   __u32 signature ;
   __u32 command ;
   __u32 event ;
   __u32 perf_level ;
};
struct edid_info {
   unsigned char dummy[128U] ;
};
struct setup_header {
   __u8 setup_sects ;
   __u16 root_flags ;
   __u32 syssize ;
   __u16 ram_size ;
   __u16 vid_mode ;
   __u16 root_dev ;
   __u16 boot_flag ;
   __u16 jump ;
   __u32 header ;
   __u16 version ;
   __u32 realmode_swtch ;
   __u16 start_sys ;
   __u16 kernel_version ;
   __u8 type_of_loader ;
   __u8 loadflags ;
   __u16 setup_move_size ;
   __u32 code32_start ;
   __u32 ramdisk_image ;
   __u32 ramdisk_size ;
   __u32 bootsect_kludge ;
   __u16 heap_end_ptr ;
   __u8 ext_loader_ver ;
   __u8 ext_loader_type ;
   __u32 cmd_line_ptr ;
   __u32 initrd_addr_max ;
   __u32 kernel_alignment ;
   __u8 relocatable_kernel ;
   __u8 min_alignment ;
   __u16 xloadflags ;
   __u32 cmdline_size ;
   __u32 hardware_subarch ;
   __u64 hardware_subarch_data ;
   __u32 payload_offset ;
   __u32 payload_length ;
   __u64 setup_data ;
   __u64 pref_address ;
   __u32 init_size ;
   __u32 handover_offset ;
};
struct sys_desc_table {
   __u16 length ;
   __u8 table[14U] ;
};
struct olpc_ofw_header {
   __u32 ofw_magic ;
   __u32 ofw_version ;
   __u32 cif_handler ;
   __u32 irq_desc_table ;
};
struct efi_info {
   __u32 efi_loader_signature ;
   __u32 efi_systab ;
   __u32 efi_memdesc_size ;
   __u32 efi_memdesc_version ;
   __u32 efi_memmap ;
   __u32 efi_memmap_size ;
   __u32 efi_systab_hi ;
   __u32 efi_memmap_hi ;
};
struct boot_params {
   struct screen_info screen_info ;
   struct apm_bios_info apm_bios_info ;
   __u8 _pad2[4U] ;
   __u64 tboot_addr ;
   struct ist_info ist_info ;
   __u8 _pad3[16U] ;
   __u8 hd0_info[16U] ;
   __u8 hd1_info[16U] ;
   struct sys_desc_table sys_desc_table ;
   struct olpc_ofw_header olpc_ofw_header ;
   __u32 ext_ramdisk_image ;
   __u32 ext_ramdisk_size ;
   __u32 ext_cmd_line_ptr ;
   __u8 _pad4[116U] ;
   struct edid_info edid_info ;
   struct efi_info efi_info ;
   __u32 alt_mem_k ;
   __u32 scratch ;
   __u8 e820_entries ;
   __u8 eddbuf_entries ;
   __u8 edd_mbr_sig_buf_entries ;
   __u8 kbd_status ;
   __u8 _pad5[3U] ;
   __u8 sentinel ;
   __u8 _pad6[1U] ;
   struct setup_header hdr ;
   __u8 _pad7[40U] ;
   __u32 edd_mbr_sig_buffer[16U] ;
   struct e820entry e820_map[128U] ;
   __u8 _pad8[48U] ;
   struct edd_info eddbuf[6U] ;
   __u8 _pad9[276U] ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct mic_intr_cb {
   irqreturn_t (*handler)(int , void * ) ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   void *data ;
   int cb_id ;
   struct list_head list ;
};
struct ldv_struct_free_irq_25 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_8 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___3;
enum hrtimer_restart;
enum dma_transaction_type {
    DMA_MEMCPY = 0,
    DMA_XOR = 1,
    DMA_PQ = 2,
    DMA_XOR_VAL = 3,
    DMA_PQ_VAL = 4,
    DMA_INTERRUPT = 5,
    DMA_SG = 6,
    DMA_PRIVATE = 7,
    DMA_ASYNC_TX = 8,
    DMA_SLAVE = 9,
    DMA_CYCLIC = 10,
    DMA_INTERLEAVE = 11,
    DMA_TX_TYPE_END = 12
} ;
struct ldv_struct_mbus_unregister_device_29 {
   struct mbus_device *arg0 ;
   int signal_pending ;
};
typedef __u16 __le16;
typedef __u64 __le64;
enum hrtimer_restart;
typedef __u16 __virtio16;
typedef __u32 __virtio32;
typedef __u64 __virtio64;
struct vring_desc {
   __virtio64 addr ;
   __virtio32 len ;
   __virtio16 flags ;
   __virtio16 next ;
};
struct vring_avail {
   __virtio16 flags ;
   __virtio16 idx ;
   __virtio16 ring[] ;
};
struct vring_used_elem {
   __virtio32 id ;
   __virtio32 len ;
};
struct vring_used {
   __virtio16 flags ;
   __virtio16 idx ;
   struct vring_used_elem ring[] ;
};
struct vring {
   unsigned int num ;
   struct vring_desc *desc ;
   struct vring_avail *avail ;
   struct vring_used *used ;
};
struct mic_device_desc {
   __s8 type ;
   __u8 num_vq ;
   __u8 feature_len ;
   __u8 config_len ;
   __u8 status ;
   __le64 config[0U] ;
};
struct mic_device_ctrl {
   __le64 vdev ;
   __u8 config_change ;
   __u8 vdev_reset ;
   __u8 guest_ack ;
   __u8 host_ack ;
   __u8 used_address_updated ;
   __s8 c2h_vdev_db ;
   __s8 h2c_vdev_db ;
};
struct mic_vqconfig {
   __le64 address ;
   __le64 used_address ;
   __le16 num ;
};
struct _mic_vring_info {
   __u16 avail_idx ;
   __le32 magic ;
};
struct mic_vring {
   struct vring vr ;
   struct _mic_vring_info *info ;
   void *va ;
   int len ;
};
struct vringh {
   bool little_endian ;
   bool event_indices ;
   bool weak_barriers ;
   u16 last_avail_idx ;
   u16 last_used_idx ;
   u32 completed ;
   struct vring vring ;
   void (*notify)(struct vringh * ) ;
};
struct vringh_kiov {
   struct kvec *iov ;
   size_t consumed ;
   unsigned int i ;
   unsigned int used ;
   unsigned int max_num ;
};
struct mic_vdev;
struct mic_vringh {
   struct mic_vring vring ;
   struct vringh vrh ;
   struct vringh_kiov riov ;
   struct vringh_kiov wiov ;
   struct mutex vr_mutex ;
   void *buf ;
   dma_addr_t buf_da ;
   struct mic_vdev *mvdev ;
   u16 head ;
};
struct mic_vdev {
   int virtio_id ;
   wait_queue_head_t waitq ;
   struct mic_device *mdev ;
   int poll_wake ;
   unsigned long out_bytes ;
   unsigned long in_bytes ;
   unsigned long out_bytes_dma ;
   unsigned long in_bytes_dma ;
   unsigned long tx_len_unaligned ;
   unsigned long tx_dst_unaligned ;
   struct mic_vringh mvr[4U] ;
   struct work_struct virtio_bh_work ;
   struct mic_device_desc *dd ;
   struct mic_device_ctrl *dc ;
   struct list_head list ;
   int virtio_db ;
   struct mic_irq *virtio_cookie ;
};
enum hrtimer_restart;
struct mic_copy_desc {
   struct iovec *iov ;
   __u32 iovcnt ;
   __u8 vr_idx ;
   __u8 update_used ;
   __u32 out_len ;
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
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
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
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
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
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_destroy_class(struct class *cls ) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
int ldv_linux_fs_char_dev_register_chrdev_region(void) ;
void ldv_linux_fs_char_dev_unregister_chrdev_region(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_destroy_class(struct class *cls ) ;
int ldv_linux_usb_gadget_register_chrdev_region(void) ;
void ldv_linux_usb_gadget_unregister_chrdev_region(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class(res1);
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_linux_kernel_sched_completion_init_completion_reset_wait_of_mic_device(void) ;
int ldv_undef_int(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_123(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_120(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_124(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_125(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_121(void) ;
static void ldv_ldv_check_final_state_122(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(struct mutex *lock ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  }
  return (tmp != 0L);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_init_completion_99(struct completion *x ) ;
extern void ida_destroy(struct ida * ) ;
extern void ida_init(struct ida * ) ;
extern int ida_simple_get(struct ida * , unsigned int , unsigned int , gfp_t ) ;
extern void ida_simple_remove(struct ida * , unsigned int ) ;
extern struct kernfs_node *kernfs_find_and_get_ns(struct kernfs_node * , char const * ,
                                                  void const * ) ;
extern void kernfs_put(struct kernfs_node * ) ;
__inline static struct kernfs_node *kernfs_find_and_get(struct kernfs_node *kn , char const *name )
{
  struct kernfs_node *tmp ;
  {
  {
  tmp = kernfs_find_and_get_ns(kn, name, (void const *)0);
  }
  return (tmp);
}
}
__inline static struct kernfs_node *sysfs_get_dirent(struct kernfs_node *parent ,
                                                     unsigned char const *name )
{
  struct kernfs_node *tmp ;
  {
  {
  tmp = kernfs_find_and_get(parent, (char const *)name);
  }
  return (tmp);
}
}
__inline static void sysfs_put(struct kernfs_node *kn )
{
  {
  {
  kernfs_put(kn);
  }
  return;
}
}
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
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
extern void cdev_init(struct cdev * , struct file_operations const * ) ;
static void ldv_cdev_init_103(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
static void ldv_cdev_del_108(struct cdev *ldv_func_arg1 ) ;
static void ldv_iounmap_106(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_107(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_111(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_112(void volatile *ldv_func_arg1 ) ;
extern void *ioremap_wc(resource_size_t , unsigned long ) ;
static void ldv_class_destroy_115(struct class *cls ) ;
static void ldv_class_destroy_118(struct class *cls ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern struct device *device_create_with_groups(struct class * , struct device * ,
                                                dev_t , void * , struct attribute_group const ** ,
                                                char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_114(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_117(struct pci_driver *ldv_func_arg1 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  dev_set_drvdata(& pdev->dev, data);
  }
  return;
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern int alloc_chrdev_region(dev_t * , unsigned int , unsigned int , char const * ) ;
static int ldv_alloc_chrdev_region_113(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
static void ldv_unregister_chrdev_region_116(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_unregister_chrdev_region_119(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
extern int register_pm_notifier(struct notifier_block * ) ;
extern int unregister_pm_notifier(struct notifier_block * ) ;
int mic_next_db(struct mic_device *mdev ) ;
struct mic_irq *mic_request_threaded_irq(struct mic_device *mdev , irqreturn_t (*handler)(int ,
                                                                                          void * ) ,
                                         irqreturn_t (*thread_fn)(int , void * ) ,
                                         char const *name , void *data , int intr_src ,
                                         enum mic_intr_type type ) ;
void mic_free_irq(struct mic_device *mdev , struct mic_irq *cookie , void *data ) ;
int mic_setup_interrupts(struct mic_device *mdev , struct pci_dev *pdev ) ;
void mic_free_interrupts(struct mic_device *mdev , struct pci_dev *pdev ) ;
void mic_sysfs_init(struct mic_device *mdev ) ;
void mic_stop(struct mic_device *mdev , bool force ) ;
void mic_reset_trigger_work(struct work_struct *work ) ;
void mic_shutdown_work(struct work_struct *work ) ;
void mic_bootparam_init(struct mic_device *mdev ) ;
void mic_create_debug_dir(struct mic_device *mdev ) ;
void mic_delete_debug_dir(struct mic_device *mdev ) ;
void mic_init_debugfs(void) ;
void mic_exit_debugfs(void) ;
void mic_prepare_suspend(struct mic_device *mdev ) ;
void mic_complete_resume(struct mic_device *mdev ) ;
struct mic_hw_ops mic_x100_ops ;
struct mic_smpt_ops mic_x100_smpt_ops ;
struct mic_hw_intr_ops mic_x100_intr_ops ;
dma_addr_t mic_map_single(struct mic_device *mdev , void *va , size_t size ) ;
void mic_unmap_single(struct mic_device *mdev , dma_addr_t mic_addr , size_t size ) ;
__inline static bool mic_map_error(dma_addr_t mic_addr )
{
  {
  return (mic_addr == 0ULL);
}
}
int mic_smpt_init(struct mic_device *mdev ) ;
void mic_smpt_uninit(struct mic_device *mdev ) ;
int mic_open(struct inode *inode , struct file *f ) ;
int mic_release(struct inode *inode , struct file *f ) ;
long mic_ioctl(struct file *f , unsigned int cmd , unsigned long arg ) ;
int mic_mmap(struct file *f , struct vm_area_struct *vma ) ;
unsigned int mic_poll(struct file *f , poll_table *wait ) ;
static char const mic_driver_name[4U] = { 'm', 'i', 'c', '\000'};
static struct pci_device_id const mic_pci_tbl[16U] =
  { {32902U, 8784U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8785U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8786U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8787U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8788U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8789U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8790U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8791U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8792U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8793U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8794U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8795U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8796U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8797U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 8798U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__mic_pci_tbl_device_table[16U] ;
static struct ida g_mic_ida ;
static struct class *g_mic_class ;
static dev_t g_mic_devno ;
static struct file_operations const mic_fops =
     {& __this_module, 0, 0, 0, 0, 0, 0, 0, 0, & mic_poll, & mic_ioctl, 0, & mic_mmap,
    0, & mic_open, 0, & mic_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_dp_init(struct mic_device *mdev )
{
  bool tmp ;
  {
  {
  mdev->dp = kzalloc(4096UL, 208U);
  }
  if ((unsigned long )mdev->dp == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d err %d\n", "mic_dp_init",
            86, -12);
    }
    return (-12);
  } else {
  }
  {
  mdev->dp_dma_addr = mic_map_single(mdev, mdev->dp, 4096UL);
  tmp = mic_map_error(mdev->dp_dma_addr);
  }
  if ((int )tmp) {
    {
    kfree((void const *)mdev->dp);
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d err %d\n", "mic_dp_init",
            95, -12);
    }
    return (-12);
  } else {
  }
  {
  (*((mdev->ops)->write_spad))(mdev, 14U, (u32 )mdev->dp_dma_addr);
  (*((mdev->ops)->write_spad))(mdev, 15U, (u32 )(mdev->dp_dma_addr >> 32));
  }
  return (0);
}
}
static void mic_dp_uninit(struct mic_device *mdev )
{
  {
  {
  mic_unmap_single(mdev, mdev->dp_dma_addr, 4096UL);
  kfree((void const *)mdev->dp);
  }
  return;
}
}
static irqreturn_t mic_shutdown_db(int irq , void *data )
{
  struct mic_device *mdev ;
  struct mic_bootparam *bootparam ;
  {
  {
  mdev = (struct mic_device *)data;
  bootparam = (struct mic_bootparam *)mdev->dp;
  (*((mdev->ops)->intr_workarounds))(mdev);
  }
  {
  if ((int )bootparam->shutdown_status == 2) {
    goto case_2;
  } else {
  }
  if ((int )bootparam->shutdown_status == 3) {
    goto case_3;
  } else {
  }
  if ((int )bootparam->shutdown_status == 4) {
    goto case_4;
  } else {
  }
  if ((int )bootparam->shutdown_status == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_2: ;
  case_3: ;
  case_4: ;
  case_1:
  {
  schedule_work(& mdev->shutdown_work);
  }
  goto ldv_36959;
  switch_default: ;
  goto ldv_36959;
  switch_break: ;
  }
  ldv_36959: ;
  return (1);
}
}
static void mic_ops_init(struct mic_device *mdev )
{
  {
  {
  if ((unsigned int )mdev->family == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_0:
  mdev->ops = & mic_x100_ops;
  mdev->intr_ops = & mic_x100_intr_ops;
  mdev->smpt_ops = & mic_x100_smpt_ops;
  goto ldv_36965;
  switch_default: ;
  goto ldv_36965;
  switch_break: ;
  }
  ldv_36965: ;
  return;
}
}
static enum mic_hw_family mic_get_family(struct pci_dev *pdev )
{
  enum mic_hw_family family ;
  {
  {
  if ((int )pdev->device == 8784) {
    goto case_8784;
  } else {
  }
  if ((int )pdev->device == 8785) {
    goto case_8785;
  } else {
  }
  if ((int )pdev->device == 8786) {
    goto case_8786;
  } else {
  }
  if ((int )pdev->device == 8787) {
    goto case_8787;
  } else {
  }
  if ((int )pdev->device == 8788) {
    goto case_8788;
  } else {
  }
  if ((int )pdev->device == 8789) {
    goto case_8789;
  } else {
  }
  if ((int )pdev->device == 8790) {
    goto case_8790;
  } else {
  }
  if ((int )pdev->device == 8791) {
    goto case_8791;
  } else {
  }
  if ((int )pdev->device == 8792) {
    goto case_8792;
  } else {
  }
  if ((int )pdev->device == 8793) {
    goto case_8793;
  } else {
  }
  if ((int )pdev->device == 8794) {
    goto case_8794;
  } else {
  }
  if ((int )pdev->device == 8795) {
    goto case_8795;
  } else {
  }
  if ((int )pdev->device == 8796) {
    goto case_8796;
  } else {
  }
  if ((int )pdev->device == 8797) {
    goto case_8797;
  } else {
  }
  if ((int )pdev->device == 8798) {
    goto case_8798;
  } else {
  }
  goto switch_default;
  case_8784: ;
  case_8785: ;
  case_8786: ;
  case_8787: ;
  case_8788: ;
  case_8789: ;
  case_8790: ;
  case_8791: ;
  case_8792: ;
  case_8793: ;
  case_8794: ;
  case_8795: ;
  case_8796: ;
  case_8797: ;
  case_8798:
  family = 0;
  goto ldv_36986;
  switch_default:
  family = 1;
  goto ldv_36986;
  switch_break: ;
  }
  ldv_36986: ;
  return (family);
}
}
static int mic_pm_notifier(struct notifier_block *notifier , unsigned long pm_event ,
                           void *unused )
{
  struct mic_device *mdev ;
  struct notifier_block const *__mptr ;
  {
  __mptr = (struct notifier_block const *)notifier;
  mdev = (struct mic_device *)__mptr + 0xfffffffffffffae0UL;
  {
  if (pm_event == 1UL) {
    goto case_1;
  } else {
  }
  if (pm_event == 3UL) {
    goto case_3;
  } else {
  }
  if (pm_event == 2UL) {
    goto case_2;
  } else {
  }
  if (pm_event == 4UL) {
    goto case_4;
  } else {
  }
  if (pm_event == 6UL) {
    goto case_6;
  } else {
  }
  if (pm_event == 5UL) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_3:
  {
  mic_prepare_suspend(mdev);
  }
  goto ldv_36998;
  case_2: ;
  case_4: ;
  case_6:
  {
  mic_complete_resume(mdev);
  }
  goto ldv_36998;
  case_5: ;
  goto ldv_36998;
  switch_default: ;
  goto ldv_36998;
  switch_break: ;
  }
  ldv_36998: ;
  return (0);
}
}
static int mic_device_init(struct mic_device *mdev , struct pci_dev *pdev )
{
  int rc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  {
  {
  mdev->family = mic_get_family(pdev);
  mdev->stepping = (enum mic_stepping )pdev->revision;
  mic_ops_init(mdev);
  mic_sysfs_init(mdev);
  __mutex_init(& mdev->mic_mutex, "&mdev->mic_mutex", & __key);
  mdev->irq_info.next_avail_src = 0;
  __init_work(& mdev->reset_trigger_work, 0);
  __constr_expr_0.counter = 137438953408L;
  mdev->reset_trigger_work.data = __constr_expr_0;
  lockdep_init_map(& mdev->reset_trigger_work.lockdep_map, "(&mdev->reset_trigger_work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& mdev->reset_trigger_work.entry);
  mdev->reset_trigger_work.func = & mic_reset_trigger_work;
  __init_work(& mdev->shutdown_work, 0);
  __constr_expr_1.counter = 137438953408L;
  mdev->shutdown_work.data = __constr_expr_1;
  lockdep_init_map(& mdev->shutdown_work.lockdep_map, "(&mdev->shutdown_work)", & __key___1,
                   0);
  INIT_LIST_HEAD(& mdev->shutdown_work.entry);
  mdev->shutdown_work.func = & mic_shutdown_work;
  ldv_init_completion_99(& mdev->reset_wait);
  INIT_LIST_HEAD(& mdev->vdev_list);
  mdev->pm_notifier.notifier_call = & mic_pm_notifier;
  rc = register_pm_notifier(& mdev->pm_notifier);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "register_pm_notifier failed rc %d\n",
            rc);
    }
    goto register_pm_notifier_fail;
  } else {
  }
  return (0);
  register_pm_notifier_fail:
  {
  flush_work(& mdev->shutdown_work);
  flush_work(& mdev->reset_trigger_work);
  }
  return (rc);
}
}
static void mic_device_uninit(struct mic_device *mdev )
{
  {
  {
  kfree((void const *)mdev->cmdline);
  kfree((void const *)mdev->firmware);
  kfree((void const *)mdev->ramdisk);
  kfree((void const *)mdev->bootmode);
  flush_work(& mdev->reset_trigger_work);
  flush_work(& mdev->shutdown_work);
  unregister_pm_notifier(& mdev->pm_notifier);
  }
  return;
}
}
static int mic_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int rc ;
  struct mic_device *mdev ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = kzalloc(1352UL, 208U);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    {
    rc = -12;
    dev_err((struct device const *)(& pdev->dev), "mdev kmalloc failed rc %d\n",
            rc);
    }
    goto mdev_alloc_fail;
  } else {
  }
  {
  mdev->id = ida_simple_get(& g_mic_ida, 0U, 256U, 208U);
  }
  if (mdev->id < 0) {
    {
    rc = mdev->id;
    dev_err((struct device const *)(& pdev->dev), "ida_simple_get failed rc %d\n",
            rc);
    }
    goto ida_fail;
  } else {
  }
  {
  rc = mic_device_init(mdev, pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "mic_device_init failed rc %d\n",
            rc);
    }
    goto device_init_fail;
  } else {
  }
  {
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to enable pci device.\n");
    }
    goto uninit_device;
  } else {
  }
  {
  pci_set_master(pdev);
  rc = pci_request_regions(pdev, (char const *)(& mic_driver_name));
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to get pci regions.\n");
    }
    goto disable_device;
  } else {
  }
  {
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot set DMA mask\n");
    }
    goto release_regions;
  } else {
  }
  {
  mdev->mmio.pa = pdev->resource[(int )(mdev->ops)->mmio_bar].start;
  mdev->mmio.len = pdev->resource[(int )(mdev->ops)->mmio_bar].start != 0ULL || pdev->resource[(int )(mdev->ops)->mmio_bar].end != pdev->resource[(int )(mdev->ops)->mmio_bar].start ? (pdev->resource[(int )(mdev->ops)->mmio_bar].end - pdev->resource[(int )(mdev->ops)->mmio_bar].start) + 1ULL : 0ULL;
  mdev->mmio.va = pci_ioremap_bar(pdev, (int )(mdev->ops)->mmio_bar);
  }
  if ((unsigned long )mdev->mmio.va == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot remap MMIO BAR\n");
    rc = -5;
    }
    goto release_regions;
  } else {
  }
  {
  mdev->aper.pa = pdev->resource[(int )(mdev->ops)->aper_bar].start;
  mdev->aper.len = pdev->resource[(int )(mdev->ops)->aper_bar].start != 0ULL || pdev->resource[(int )(mdev->ops)->aper_bar].end != pdev->resource[(int )(mdev->ops)->aper_bar].start ? (pdev->resource[(int )(mdev->ops)->aper_bar].end - pdev->resource[(int )(mdev->ops)->aper_bar].start) + 1ULL : 0ULL;
  mdev->aper.va = ioremap_wc(mdev->aper.pa, (unsigned long )mdev->aper.len);
  }
  if ((unsigned long )mdev->aper.va == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot remap Aperture BAR\n");
    rc = -5;
    }
    goto unmap_mmio;
  } else {
  }
  {
  (*((mdev->intr_ops)->intr_init))(mdev);
  rc = mic_setup_interrupts(mdev, pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "mic_setup_interrupts failed %d\n",
            rc);
    }
    goto unmap_aper;
  } else {
  }
  {
  rc = mic_smpt_init(mdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "smpt_init failed %d\n", rc);
    }
    goto free_interrupts;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)mdev);
  mdev->sdev = device_create_with_groups(g_mic_class, & pdev->dev, (g_mic_devno & 4293918720U) | (dev_t )mdev->id,
                                         (void *)0, mdev->attr_group, "mic%d", mdev->id);
  tmp___1 = IS_ERR((void const *)mdev->sdev);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)mdev->sdev);
    rc = (int )tmp___0;
    dev_err((struct device const *)(& pdev->dev), "device_create_with_groups failed rc %d\n",
            rc);
    }
    goto smpt_uninit;
  } else {
  }
  {
  mdev->state_sysfs = sysfs_get_dirent((mdev->sdev)->kobj.sd, (unsigned char const *)"state");
  }
  if ((unsigned long )mdev->state_sysfs == (unsigned long )((struct kernfs_node *)0)) {
    {
    rc = -19;
    dev_err((struct device const *)(& pdev->dev), "sysfs_get_dirent failed rc %d\n",
            rc);
    }
    goto destroy_device;
  } else {
  }
  {
  rc = mic_dp_init(mdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "mic_dp_init failed rc %d\n",
            rc);
    }
    goto sysfs_put;
  } else {
  }
  {
  ldv_mutex_lock_100(& mdev->mic_mutex);
  mdev->shutdown_db = mic_next_db(mdev);
  mdev->shutdown_cookie = mic_request_threaded_irq(mdev, & mic_shutdown_db, (irqreturn_t (*)(int ,
                                                                                             void * ))0,
                                                   "shutdown-interrupt", (void *)mdev,
                                                   mdev->shutdown_db, 0);
  tmp___3 = IS_ERR((void const *)mdev->shutdown_cookie);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = PTR_ERR((void const *)mdev->shutdown_cookie);
    rc = (int )tmp___2;
    ldv_mutex_unlock_101(& mdev->mic_mutex);
    }
    goto dp_uninit;
  } else {
  }
  {
  ldv_mutex_unlock_102(& mdev->mic_mutex);
  mic_bootparam_init(mdev);
  mic_create_debug_dir(mdev);
  ldv_cdev_init_103(& mdev->cdev, & mic_fops);
  mdev->cdev.owner = & __this_module;
  rc = cdev_add(& mdev->cdev, (g_mic_devno & 4293918720U) | (dev_t )mdev->id, 1U);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "cdev_add err id %d rc %d\n",
            mdev->id, rc);
    }
    goto cleanup_debug_dir;
  } else {
  }
  return (0);
  cleanup_debug_dir:
  {
  mic_delete_debug_dir(mdev);
  ldv_mutex_lock_104(& mdev->mic_mutex);
  mic_free_irq(mdev, mdev->shutdown_cookie, (void *)mdev);
  ldv_mutex_unlock_105(& mdev->mic_mutex);
  }
  dp_uninit:
  {
  mic_dp_uninit(mdev);
  }
  sysfs_put:
  {
  sysfs_put(mdev->state_sysfs);
  }
  destroy_device:
  {
  device_destroy(g_mic_class, (g_mic_devno & 4293918720U) | (dev_t )mdev->id);
  }
  smpt_uninit:
  {
  mic_smpt_uninit(mdev);
  }
  free_interrupts:
  {
  mic_free_interrupts(mdev, pdev);
  }
  unmap_aper:
  {
  ldv_iounmap_106((void volatile *)mdev->aper.va);
  }
  unmap_mmio:
  {
  ldv_iounmap_107((void volatile *)mdev->mmio.va);
  }
  release_regions:
  {
  pci_release_regions(pdev);
  }
  disable_device:
  {
  pci_disable_device(pdev);
  }
  uninit_device:
  {
  mic_device_uninit(mdev);
  }
  device_init_fail:
  {
  ida_simple_remove(& g_mic_ida, (unsigned int )mdev->id);
  }
  ida_fail:
  {
  kfree((void const *)mdev);
  }
  mdev_alloc_fail:
  {
  dev_err((struct device const *)(& pdev->dev), "Probe failed rc %d\n", rc);
  }
  return (rc);
}
}
static void mic_remove(struct pci_dev *pdev )
{
  struct mic_device *mdev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return;
  } else {
  }
  {
  mic_stop(mdev, 0);
  ldv_cdev_del_108(& mdev->cdev);
  mic_delete_debug_dir(mdev);
  ldv_mutex_lock_109(& mdev->mic_mutex);
  mic_free_irq(mdev, mdev->shutdown_cookie, (void *)mdev);
  ldv_mutex_unlock_110(& mdev->mic_mutex);
  flush_work(& mdev->shutdown_work);
  mic_dp_uninit(mdev);
  sysfs_put(mdev->state_sysfs);
  device_destroy(g_mic_class, (g_mic_devno & 4293918720U) | (dev_t )mdev->id);
  mic_smpt_uninit(mdev);
  mic_free_interrupts(mdev, pdev);
  ldv_iounmap_111((void volatile *)mdev->mmio.va);
  ldv_iounmap_112((void volatile *)mdev->aper.va);
  mic_device_uninit(mdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  ida_simple_remove(& g_mic_ida, (unsigned int )mdev->id);
  kfree((void const *)mdev);
  }
  return;
}
}
static struct pci_driver mic_driver =
     {{0, 0}, (char const *)(& mic_driver_name), (struct pci_device_id const *)(& mic_pci_tbl),
    & mic_probe, & mic_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}},
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
static int mic_init(void)
{
  int ret ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  {
  ret = ldv_alloc_chrdev_region_113(& g_mic_devno, 0U, 256U, (char const *)(& mic_driver_name));
  }
  if (ret != 0) {
    {
    printk("\valloc_chrdev_region failed ret %d\n", ret);
    }
    goto error;
  } else {
  }
  {
  tmp = ldv_create_class();
  g_mic_class = (struct class *)tmp;
  tmp___1 = IS_ERR((void const *)g_mic_class);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)g_mic_class);
    ret = (int )tmp___0;
    printk("\vclass_create failed ret %d\n", ret);
    }
    goto cleanup_chrdev;
  } else {
  }
  {
  mic_init_debugfs();
  ida_init(& g_mic_ida);
  ret = ldv___pci_register_driver_114(& mic_driver, & __this_module, "mic_host");
  }
  if (ret != 0) {
    {
    printk("\vpci_register_driver failed ret %d\n", ret);
    }
    goto cleanup_debugfs;
  } else {
  }
  return (ret);
  cleanup_debugfs:
  {
  mic_exit_debugfs();
  ldv_class_destroy_115(g_mic_class);
  }
  cleanup_chrdev:
  {
  ldv_unregister_chrdev_region_116(g_mic_devno, 256U);
  }
  error: ;
  return (ret);
}
}
static void mic_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_117(& mic_driver);
  ida_destroy(& g_mic_ida);
  mic_exit_debugfs();
  ldv_class_destroy_118(g_mic_class);
  ldv_unregister_chrdev_region_119(g_mic_devno, 256U);
  }
  return;
}
}
void ldv_EMGentry_exit_mic_exit_30_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_mic_init_30_14(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_cdev_del(void *arg0 , struct cdev *arg1 ) ;
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 ) ;
void ldv_dispatch_deregister_23_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_27_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_30_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_30_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_30_6(void) ;
void ldv_dispatch_register_24_1(struct file_operations *arg0 ) ;
void ldv_dispatch_register_28_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_30_7(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_30_8(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_30_9(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_30_10(void) ;
void ldv_dummy_resourceless_instance_callback_12_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_17_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_19_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(unsigned long long (*arg0)(struct device * ,
                                                                              struct page * ,
                                                                              unsigned long ,
                                                                              unsigned long ,
                                                                              enum dma_data_direction ,
                                                                              struct dma_attrs * ) ,
                                                   struct device *arg1 , struct page *arg2 ,
                                                   unsigned long arg3 , unsigned long arg4 ,
                                                   enum dma_data_direction arg5 ,
                                                   struct dma_attrs *arg6 ) ;
void ldv_dummy_resourceless_instance_callback_20_9(void (*arg0)(struct device * ,
                                                                unsigned long long ,
                                                                unsigned long , enum dma_data_direction ,
                                                                struct dma_attrs * ) ,
                                                   struct device *arg1 , unsigned long long arg2 ,
                                                   unsigned long arg3 , enum dma_data_direction arg4 ,
                                                   struct dma_attrs *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_21_10(struct mic_irq *(*arg0)(struct mbus_device * ,
                                                                            enum irqreturn (*)(int ,
                                                                                               void * ) ,
                                                                            enum irqreturn (*)(int ,
                                                                                               void * ) ,
                                                                            char * ,
                                                                            void * ,
                                                                            int ) ,
                                                    struct mbus_device *arg1 , enum irqreturn (*arg2)(int ,
                                                                                                      void * ) ,
                                                    enum irqreturn (*arg3)(int ,
                                                                           void * ) ,
                                                    char *arg4 , void *arg5 , int arg6 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(void (*arg0)(struct mbus_device * ,
                                                                int ) , struct mbus_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_21_9(void (*arg0)(struct mbus_device * ,
                                                                struct mic_irq * ,
                                                                void * ) , struct mbus_device *arg1 ,
                                                   struct mic_irq *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_22_10(unsigned int (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_11(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_12(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_13(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_14(_Bool (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_15(int (*arg0)(struct mic_device * ,
                                                                char * ) , struct mic_device *arg1 ,
                                                    char *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_22_18(void (*arg0)(struct mic_device * ,
                                                                 int , int , _Bool ) ,
                                                    struct mic_device *arg1 , int arg2 ,
                                                    int arg3 , _Bool arg4 ) ;
void ldv_dummy_resourceless_instance_callback_22_21(unsigned int (*arg0)(struct mic_device * ,
                                                                         int ) ,
                                                    struct mic_device *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_22_24(unsigned int (*arg0)(struct mic_device * ,
                                                                         unsigned int ) ,
                                                    struct mic_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_22_27(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_28(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_29(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_3(unsigned int (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_30(void (*arg0)(struct mic_device * ,
                                                                 int ) , struct mic_device *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_22_33(void (*arg0)(struct mic_device * ,
                                                                 unsigned long long ,
                                                                 unsigned char ) ,
                                                    struct mic_device *arg1 , unsigned long long arg2 ,
                                                    unsigned char arg3 ) ;
void ldv_dummy_resourceless_instance_callback_22_36(void (*arg0)(struct mic_device * ,
                                                                 unsigned int , unsigned int ) ,
                                                    struct mic_device *arg1 , unsigned int arg2 ,
                                                    unsigned int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_22_7(void (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_8(_Bool (*arg0)(struct dma_chan * ,
                                                                 void * ) , struct dma_chan *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_22_9(void (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 ) ;
void ldv_entry_EMGentry_30(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_3(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_4(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_5(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_6(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_7(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_2_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_2_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_2_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_3_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_3_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_3_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_4_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_4_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_4_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_5_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_5_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_5_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_6_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_6_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_6_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_7_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_7_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_7_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
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
void ldv_file_operations_instance_write_6_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_7_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
int ldv_pci_instance_probe_9_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_9_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_9_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_9_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_9_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_9_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_9_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_9(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_dma_map_ops_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_mbus_hw_ops_dummy_resourceless_instance_21(void *arg0 ) ;
void ldv_struct_mic_smpt_ops_dummy_resourceless_instance_22(void *arg0 ) ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_21 ;
struct ldv_thread ldv_thread_22 ;
struct ldv_thread ldv_thread_30 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_mic_exit_30_2(void (*arg0)(void) )
{
  {
  {
  mic_exit();
  }
  return;
}
}
int ldv_EMGentry_init_mic_init_30_14(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = mic_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_28_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_28_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_28_2(ldv_28_pci_driver_pci_driver);
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
void ldv_cdev_del(void *arg0 , struct cdev *arg1 )
{
  struct cdev *ldv_23_cdev_cdev ;
  struct file_operations *ldv_23_file_operations_file_operations ;
  {
  {
  ldv_23_cdev_cdev = arg1;
  ldv_23_file_operations_file_operations = (struct file_operations *)ldv_23_cdev_cdev->ops;
  ldv_dispatch_deregister_23_1(ldv_23_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 )
{
  struct cdev *ldv_24_cdev_cdev ;
  struct file_operations *ldv_24_file_operations_file_operations ;
  {
  {
  ldv_24_cdev_cdev = arg1;
  ldv_24_file_operations_file_operations = arg2;
  ldv_24_cdev_cdev->ops = (struct file_operations const *)ldv_24_file_operations_file_operations;
  ldv_dispatch_register_24_1(ldv_24_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_dispatch_deregister_23_1(struct file_operations *arg0 )
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
  goto switch_default;
  case_0: ;
  goto ldv_37754;
  case_1: ;
  goto ldv_37754;
  case_2: ;
  goto ldv_37754;
  case_3: ;
  goto ldv_37754;
  case_4: ;
  goto ldv_37754;
  case_5: ;
  goto ldv_37754;
  case_6: ;
  goto ldv_37754;
  case_7: ;
  goto ldv_37754;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_37754: ;
  return;
}
}
void ldv_dispatch_deregister_27_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_30_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_30_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_30_6(void)
{
  {
  return;
}
}
void ldv_dispatch_register_24_1(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_1 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_2 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_3 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_4 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_5 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_6 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_7 ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
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
  goto switch_default;
  case_0:
  {
  tmp___0 = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp___0;
  cf_arg_0->arg0 = arg0;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  goto ldv_37802;
  case_1:
  {
  tmp___1 = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_file_operations_instance_0 *)tmp___1;
  cf_arg_1->arg0 = arg0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  }
  goto ldv_37802;
  case_2:
  {
  tmp___2 = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_file_operations_instance_0 *)tmp___2;
  cf_arg_2->arg0 = arg0;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  }
  goto ldv_37802;
  case_3:
  {
  tmp___3 = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_file_operations_instance_0 *)tmp___3;
  cf_arg_3->arg0 = arg0;
  ldv_file_operations_file_operations_instance_3((void *)cf_arg_3);
  }
  goto ldv_37802;
  case_4:
  {
  tmp___4 = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_file_operations_instance_0 *)tmp___4;
  cf_arg_4->arg0 = arg0;
  ldv_file_operations_file_operations_instance_4((void *)cf_arg_4);
  }
  goto ldv_37802;
  case_5:
  {
  tmp___5 = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_file_operations_instance_0 *)tmp___5;
  cf_arg_5->arg0 = arg0;
  ldv_file_operations_file_operations_instance_5((void *)cf_arg_5);
  }
  goto ldv_37802;
  case_6:
  {
  tmp___6 = ldv_xmalloc(16UL);
  cf_arg_6 = (struct ldv_struct_file_operations_instance_0 *)tmp___6;
  cf_arg_6->arg0 = arg0;
  ldv_file_operations_file_operations_instance_6((void *)cf_arg_6);
  }
  goto ldv_37802;
  case_7:
  {
  tmp___7 = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_file_operations_instance_0 *)tmp___7;
  cf_arg_7->arg0 = arg0;
  ldv_file_operations_file_operations_instance_7((void *)cf_arg_7);
  }
  goto ldv_37802;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_37802: ;
  return;
}
}
void ldv_dispatch_register_28_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_9 *cf_arg_9 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_9 = (struct ldv_struct_pci_instance_9 *)tmp;
  cf_arg_9->arg0 = arg0;
  ldv_pci_pci_instance_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_30_7(void)
{
  struct ldv_struct_EMGentry_30 *cf_arg_16 ;
  struct ldv_struct_EMGentry_30 *cf_arg_17 ;
  struct ldv_struct_EMGentry_30 *cf_arg_18 ;
  struct ldv_struct_EMGentry_30 *cf_arg_19 ;
  struct ldv_struct_EMGentry_30 *cf_arg_10 ;
  struct ldv_struct_EMGentry_30 *cf_arg_11 ;
  struct ldv_struct_EMGentry_30 *cf_arg_12 ;
  struct ldv_struct_EMGentry_30 *cf_arg_13 ;
  struct ldv_struct_EMGentry_30 *cf_arg_14 ;
  struct ldv_struct_EMGentry_30 *cf_arg_15 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_16 = (struct ldv_struct_EMGentry_30 *)tmp;
  ldv_struct_device_attribute_dummy_resourceless_instance_16((void *)cf_arg_16);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_17 = (struct ldv_struct_EMGentry_30 *)tmp___0;
  ldv_struct_device_attribute_dummy_resourceless_instance_17((void *)cf_arg_17);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_18 = (struct ldv_struct_EMGentry_30 *)tmp___1;
  ldv_struct_device_attribute_dummy_resourceless_instance_18((void *)cf_arg_18);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_19 = (struct ldv_struct_EMGentry_30 *)tmp___2;
  ldv_struct_device_attribute_dummy_resourceless_instance_19((void *)cf_arg_19);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_EMGentry_30 *)tmp___3;
  ldv_struct_device_attribute_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_EMGentry_30 *)tmp___4;
  ldv_struct_device_attribute_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_30 *)tmp___5;
  ldv_struct_device_attribute_dummy_resourceless_instance_12((void *)cf_arg_12);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_EMGentry_30 *)tmp___6;
  ldv_struct_device_attribute_dummy_resourceless_instance_13((void *)cf_arg_13);
  tmp___7 = ldv_xmalloc(4UL);
  cf_arg_14 = (struct ldv_struct_EMGentry_30 *)tmp___7;
  ldv_struct_device_attribute_dummy_resourceless_instance_14((void *)cf_arg_14);
  tmp___8 = ldv_xmalloc(4UL);
  cf_arg_15 = (struct ldv_struct_EMGentry_30 *)tmp___8;
  ldv_struct_device_attribute_dummy_resourceless_instance_15((void *)cf_arg_15);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_30_8(void)
{
  struct ldv_struct_EMGentry_30 *cf_arg_20 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_20 = (struct ldv_struct_EMGentry_30 *)tmp;
  ldv_struct_dma_map_ops_dummy_resourceless_instance_20((void *)cf_arg_20);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_30_9(void)
{
  struct ldv_struct_EMGentry_30 *cf_arg_21 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_21 = (struct ldv_struct_EMGentry_30 *)tmp;
  ldv_struct_mbus_hw_ops_dummy_resourceless_instance_21((void *)cf_arg_21);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_30_10(void)
{
  struct ldv_struct_EMGentry_30 *cf_arg_22 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_22 = (struct ldv_struct_EMGentry_30 *)tmp;
  ldv_struct_mic_smpt_ops_dummy_resourceless_instance_22((void *)cf_arg_22);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_entry_EMGentry_30(void *arg0 )
{
  void (*ldv_30_exit_mic_exit_default)(void) ;
  int (*ldv_30_init_mic_init_default)(void) ;
  int ldv_30_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_30_ret_default = ldv_EMGentry_init_mic_init_30_14(ldv_30_init_mic_init_default);
  ldv_30_ret_default = ldv_ldv_post_init_120(ldv_30_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_30_ret_default != 0);
    ldv_ldv_check_final_state_121();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_30_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_14_30_10();
      ldv_dispatch_register_dummy_resourceless_instance_12_30_9();
      ldv_dispatch_register_dummy_resourceless_instance_11_30_8();
      ldv_dispatch_register_dummy_resourceless_instance_10_30_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_30_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_11_30_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_10_30_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_mic_exit_30_2(ldv_30_exit_mic_exit_default);
    ldv_ldv_check_final_state_122();
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
  ldv_ldv_initialize_123();
  ldv_entry_EMGentry_30((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_2_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_2_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_2_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_24_1_default ;
  long long *ldv_2_ldv_param_24_3_default ;
  unsigned int ldv_2_ldv_param_27_1_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  long long ldv_2_ldv_param_5_1_default ;
  int ldv_2_ldv_param_5_2_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  struct poll_table_struct *ldv_2_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_2_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_2_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_2_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_2_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_2_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_2_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_2_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                                ldv_2_resource_inode,
                                                                ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
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
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_2_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_file_operations_instance_release_2_2(ldv_2_container_file_operations->release,
                                           ldv_2_resource_inode, ldv_2_resource_file);
  }
  goto ldv_main_2;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_2_27(ldv_2_callback_unlocked_ioctl, ldv_2_resource_file,
                                             ldv_2_ldv_param_27_1_default, ldv_2_size_cnt_write_size);
  }
  goto ldv_37927;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_24_3_default = (long long *)tmp___9;
  }
  if ((unsigned long )ldv_2_callback_read != (unsigned long )((long (*)(struct file * ,
                                                                        char * , unsigned long ,
                                                                        long long * ))0)) {
    {
    ldv_file_operations_instance_callback_2_24(ldv_2_callback_read, ldv_2_resource_file,
                                               ldv_2_ldv_param_24_1_default, ldv_2_size_cnt_write_size,
                                               ldv_2_ldv_param_24_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_2_ldv_param_24_1_default);
  ldv_free((void *)ldv_2_ldv_param_24_3_default);
  }
  goto ldv_37927;
  case_3___0:
  {
  ldv_file_operations_instance_callback_2_23(ldv_2_callback_poll, ldv_2_resource_file,
                                             ldv_2_size_cnt_struct_poll_table_struct_ptr);
  }
  goto ldv_37927;
  case_4:
  {
  ldv_file_operations_instance_callback_2_22(ldv_2_callback_mmap, ldv_2_resource_file,
                                             ldv_2_size_cnt_struct_vm_area_struct_ptr);
  }
  goto ldv_37927;
  case_5: ;
  if ((unsigned long )ldv_2_callback_llseek != (unsigned long )((long long (*)(struct file * ,
                                                                               long long ,
                                                                               int ))0)) {
    {
    ldv_file_operations_instance_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                              ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
    }
  } else {
  }
  goto ldv_37927;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_37927: ;
  goto ldv_37933;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_37933: ;
  goto ldv_call_2;
  goto ldv_call_2;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  mic_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  mic_poll(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_2_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  mic_ioctl(arg1, arg2, arg3);
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
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_3_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_4_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_5_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_6_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_23(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_7_27(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = mic_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_release(arg1, arg2);
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
void ldv_file_operations_instance_write_6_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_7_4(long (*arg0)(struct file * , char * ,
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
int ldv_pci_instance_probe_9_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = mic_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_9_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  mic_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_9_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_9_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_9_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_9_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_9_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_9(void *arg0 )
{
  struct pci_driver *ldv_9_container_pci_driver ;
  struct pci_dev *ldv_9_resource_dev ;
  struct pm_message ldv_9_resource_pm_message ;
  struct pci_device_id *ldv_9_resource_struct_pci_device_id_ptr ;
  int ldv_9_ret_default ;
  struct ldv_struct_pci_instance_9 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_9 *)arg0;
  ldv_9_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_9 *)0)) {
    {
    ldv_9_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_9_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_9_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_9;
  return;
  ldv_main_9:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_124();
    ldv_9_ret_default = ldv_pci_instance_probe_9_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_9_container_pci_driver->probe,
                                                    ldv_9_resource_dev, ldv_9_resource_struct_pci_device_id_ptr);
    ldv_9_ret_default = ldv_ldv_post_probe_125(ldv_9_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      }
      goto ldv_call_9;
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
      goto ldv_main_9;
    }
  } else {
    {
    ldv_free((void *)ldv_9_resource_dev);
    ldv_free((void *)ldv_9_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_9:
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
  goto ldv_call_9;
  case_2: ;
  if ((unsigned long )ldv_9_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_9_ret_default = ldv_pci_instance_suspend_9_8(ldv_9_container_pci_driver->suspend,
                                                     ldv_9_resource_dev, ldv_9_resource_pm_message);
    }
  } else {
  }
  {
  ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
  }
  if ((unsigned long )ldv_9_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_9_ret_default = ldv_pci_instance_suspend_late_9_7(ldv_9_container_pci_driver->suspend_late,
                                                          ldv_9_resource_dev, ldv_9_resource_pm_message);
    }
  } else {
  }
  {
  ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
  }
  if ((unsigned long )ldv_9_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_9_6(ldv_9_container_pci_driver->resume_early, ldv_9_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_9_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_9_5(ldv_9_container_pci_driver->resume, ldv_9_resource_dev);
    }
  } else {
  }
  goto ldv_call_9;
  case_3: ;
  if ((unsigned long )ldv_9_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_9_3(ldv_9_container_pci_driver->shutdown, ldv_9_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_release_9_2(ldv_9_container_pci_driver->remove, ldv_9_resource_dev);
  }
  goto ldv_main_9;
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
  struct pci_driver *ldv_27_pci_driver_pci_driver ;
  {
  {
  ldv_27_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_27_1(ldv_27_pci_driver_pci_driver);
  }
  return;
  return;
}
}
void ldv_struct_dma_map_ops_dummy_resourceless_instance_20(void *arg0 )
{
  unsigned long long (*ldv_20_callback_map_page)(struct device * , struct page * ,
                                                 unsigned long , unsigned long ,
                                                 enum dma_data_direction , struct dma_attrs * ) ;
  void (*ldv_20_callback_unmap_page)(struct device * , unsigned long long , unsigned long ,
                                     enum dma_data_direction , struct dma_attrs * ) ;
  enum dma_data_direction ldv_20_container_enum_dma_data_direction ;
  struct device *ldv_20_container_struct_device_ptr ;
  struct dma_attrs *ldv_20_container_struct_dma_attrs_ptr ;
  struct page *ldv_20_container_struct_page_ptr ;
  unsigned long ldv_20_ldv_param_3_2_default ;
  unsigned long ldv_20_ldv_param_3_3_default ;
  unsigned long long ldv_20_ldv_param_9_1_default ;
  unsigned long ldv_20_ldv_param_9_2_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_20;
  return;
  ldv_call_20:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dummy_resourceless_instance_callback_20_9(ldv_20_callback_unmap_page, ldv_20_container_struct_device_ptr,
                                                    ldv_20_ldv_param_9_1_default,
                                                    ldv_20_ldv_param_9_2_default,
                                                    ldv_20_container_enum_dma_data_direction,
                                                    ldv_20_container_struct_dma_attrs_ptr);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_map_page, ldv_20_container_struct_device_ptr,
                                                    ldv_20_container_struct_page_ptr,
                                                    ldv_20_ldv_param_3_2_default,
                                                    ldv_20_ldv_param_3_3_default,
                                                    ldv_20_container_enum_dma_data_direction,
                                                    ldv_20_container_struct_dma_attrs_ptr);
      }
    }
    goto ldv_call_20;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mbus_hw_ops_dummy_resourceless_instance_21(void *arg0 )
{
  void (*ldv_21_callback_ack_interrupt)(struct mbus_device * , int ) ;
  void (*ldv_21_callback_free_irq)(struct mbus_device * , struct mic_irq * , void * ) ;
  struct mic_irq *(*ldv_21_callback_request_threaded_irq)(struct mbus_device * , enum irqreturn (*)(int ,
                                                                                                    void * ) ,
                                                          enum irqreturn (*)(int ,
                                                                             void * ) ,
                                                          char * , void * , int ) ;
  enum irqreturn (*ldv_21_container_func_1_ptr)(int , void * ) ;
  struct mbus_device *ldv_21_container_struct_mbus_device_ptr ;
  struct mic_irq *ldv_21_container_struct_mic_irq_ptr ;
  enum irqreturn (*ldv_21_ldv_param_10_2_default)(int , void * ) ;
  char *ldv_21_ldv_param_10_3_default ;
  int ldv_21_ldv_param_10_5_default ;
  int ldv_21_ldv_param_3_1_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_21;
  return;
  ldv_call_21:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
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
    tmp___0 = ldv_xmalloc(1UL);
    ldv_21_ldv_param_10_2_default = (enum irqreturn (*)(int , void * ))tmp___0;
    tmp___1 = ldv_xmalloc(1UL);
    ldv_21_ldv_param_10_3_default = (char *)tmp___1;
    ldv_dummy_resourceless_instance_callback_21_10(ldv_21_callback_request_threaded_irq,
                                                   ldv_21_container_struct_mbus_device_ptr,
                                                   ldv_21_container_func_1_ptr, ldv_21_ldv_param_10_2_default,
                                                   ldv_21_ldv_param_10_3_default,
                                                   (void *)ldv_21_container_struct_mic_irq_ptr,
                                                   ldv_21_ldv_param_10_5_default);
    ldv_free((void *)ldv_21_ldv_param_10_2_default);
    ldv_free((void *)ldv_21_ldv_param_10_3_default);
    }
    goto ldv_38363;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_21_9(ldv_21_callback_free_irq, ldv_21_container_struct_mbus_device_ptr,
                                                  ldv_21_container_struct_mic_irq_ptr,
                                                  (void *)ldv_21_container_func_1_ptr);
    }
    goto ldv_38363;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_ack_interrupt, ldv_21_container_struct_mbus_device_ptr,
                                                  ldv_21_ldv_param_3_1_default);
    }
    goto ldv_38363;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_38363: ;
    goto ldv_call_21;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_mic_smpt_ops_dummy_resourceless_instance_22(void *arg0 )
{
  unsigned int (*ldv_22_callback_ack_interrupt)(struct mic_device * ) ;
  void (*ldv_22_callback_disable_interrupts)(struct mic_device * ) ;
  _Bool (*ldv_22_callback_dma_filter)(struct dma_chan * , void * ) ;
  void (*ldv_22_callback_enable_interrupts)(struct mic_device * ) ;
  unsigned int (*ldv_22_callback_get_postcode)(struct mic_device * ) ;
  void (*ldv_22_callback_init)(struct mic_device * ) ;
  void (*ldv_22_callback_intr_init)(struct mic_device * ) ;
  void (*ldv_22_callback_intr_workarounds)(struct mic_device * ) ;
  _Bool (*ldv_22_callback_is_fw_ready)(struct mic_device * ) ;
  int (*ldv_22_callback_load_mic_fw)(struct mic_device * , char * ) ;
  void (*ldv_22_callback_program_msi_to_src_map)(struct mic_device * , int , int ,
                                                 _Bool ) ;
  unsigned int (*ldv_22_callback_read_msi_to_src_map)(struct mic_device * , int ) ;
  unsigned int (*ldv_22_callback_read_spad)(struct mic_device * , unsigned int ) ;
  void (*ldv_22_callback_reset)(struct mic_device * ) ;
  void (*ldv_22_callback_reset_fw_ready)(struct mic_device * ) ;
  void (*ldv_22_callback_send_firmware_intr)(struct mic_device * ) ;
  void (*ldv_22_callback_send_intr)(struct mic_device * , int ) ;
  void (*ldv_22_callback_set)(struct mic_device * , unsigned long long , unsigned char ) ;
  void (*ldv_22_callback_write_spad)(struct mic_device * , unsigned int , unsigned int ) ;
  struct dma_chan *ldv_22_container_struct_dma_chan_ptr ;
  struct mic_device *ldv_22_container_struct_mic_device_ptr ;
  char *ldv_22_ldv_param_15_1_default ;
  int ldv_22_ldv_param_18_1_default ;
  int ldv_22_ldv_param_18_2_default ;
  _Bool ldv_22_ldv_param_18_3_default ;
  int ldv_22_ldv_param_21_1_default ;
  unsigned int ldv_22_ldv_param_24_1_default ;
  int ldv_22_ldv_param_30_1_default ;
  unsigned long long ldv_22_ldv_param_33_1_default ;
  unsigned char ldv_22_ldv_param_33_2_default ;
  unsigned int ldv_22_ldv_param_36_1_default ;
  unsigned int ldv_22_ldv_param_36_2_default ;
  int tmp ;
  void *tmp___0 ;
  {
  goto ldv_call_22;
  return;
  ldv_call_22:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_22_36(ldv_22_callback_write_spad, ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_36_1_default, ldv_22_ldv_param_36_2_default);
  }
  goto ldv_call_22;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_22_33(ldv_22_callback_set, ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_33_1_default, (int )ldv_22_ldv_param_33_2_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_22_30(ldv_22_callback_send_intr, ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_30_1_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_22_29(ldv_22_callback_send_firmware_intr,
                                                 ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_22_28(ldv_22_callback_reset_fw_ready, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_22_27(ldv_22_callback_reset, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_22_24(ldv_22_callback_read_spad, ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_24_1_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_22_21(ldv_22_callback_read_msi_to_src_map,
                                                 ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_21_1_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_22_18(ldv_22_callback_program_msi_to_src_map,
                                                 ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_18_1_default, ldv_22_ldv_param_18_2_default,
                                                 (int )ldv_22_ldv_param_18_3_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_10:
  {
  tmp___0 = ldv_xmalloc(1UL);
  ldv_22_ldv_param_15_1_default = (char *)tmp___0;
  ldv_dummy_resourceless_instance_callback_22_15(ldv_22_callback_load_mic_fw, ldv_22_container_struct_mic_device_ptr,
                                                 ldv_22_ldv_param_15_1_default);
  ldv_free((void *)ldv_22_ldv_param_15_1_default);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_22_14(ldv_22_callback_is_fw_ready, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_22_13(ldv_22_callback_intr_workarounds,
                                                 ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_22_12(ldv_22_callback_intr_init, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_22_11(ldv_22_callback_init, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_22_10(ldv_22_callback_get_postcode, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_22_9(ldv_22_callback_enable_interrupts,
                                                ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_22_8(ldv_22_callback_dma_filter, ldv_22_container_struct_dma_chan_ptr,
                                                (void *)ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_22_7(ldv_22_callback_disable_interrupts,
                                                ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_22_3(ldv_22_callback_ack_interrupt, ldv_22_container_struct_mic_device_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_20: ;
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
__inline static void ldv_init_completion_99(struct completion *x )
{
  {
  {
  ldv_linux_kernel_sched_completion_init_completion_reset_wait_of_mic_device();
  }
  return;
}
}
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_cdev_init_103(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 )
{
  {
  {
  cdev_init(ldv_func_arg1, ldv_func_arg2);
  ldv_cdev_init((void *)0, ldv_func_arg1, (struct file_operations *)ldv_func_arg2);
  }
  return;
}
}
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_106(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_107(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_cdev_del_108(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_111(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv_iounmap_112(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv_alloc_chrdev_region_113(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int res1 ;
  int tmp___0 ;
  int res2 ;
  int tmp___1 ;
  {
  {
  tmp = alloc_chrdev_region(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_fs_char_dev_register_chrdev_region();
  res1 = tmp___0;
  tmp___1 = ldv_linux_usb_gadget_register_chrdev_region();
  res2 = tmp___1;
  ldv_assume(res1 == res2);
  }
  return (res1);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_114(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
static void ldv_class_destroy_115(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_116(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  unregister_chrdev_region(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static void ldv_pci_unregister_driver_117(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_class_destroy_118(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_119(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  unregister_chrdev_region(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static int ldv_ldv_post_init_120(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_121(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_122(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_123(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_124(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_125(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  {
  memcpy((void *)dst, src, count);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern void msleep(unsigned int ) ;
__inline static u32 mic_mmio_read(struct mic_mw *mw , u32 offset )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32(mw->va + (unsigned long )offset);
  }
  return (tmp);
}
}
__inline static void mic_mmio_write(struct mic_mw *mw , u32 val , u32 offset )
{
  {
  {
  iowrite32(val, mw->va + (unsigned long )offset);
  }
  return;
}
}
static u16 const mic_x100_intr_init[6U] = { 0U, 8U, 30U, 4U,
        8U, 1U};
static void mic_x100_write_spad(struct mic_device *mdev , unsigned int idx , u32 val )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_x100_write_spad";
  descriptor.filename = "drivers/misc/mic/host/mic_x100.c";
  descriptor.format = "Writing 0x%x to scratch pad index %d\n";
  descriptor.lineno = 47U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "Writing 0x%x to scratch pad index %d\n", val, idx);
    }
  } else {
  }
  {
  mic_mmio_write(& mdev->mmio, val, (idx + 27336U) * 4U);
  }
  return;
}
}
static u32 mic_x100_read_spad(struct mic_device *mdev , unsigned int idx )
{
  u32 val ;
  u32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = mic_mmio_read(& mdev->mmio, (idx + 27336U) * 4U);
  val = tmp;
  descriptor.modname = "mic_host";
  descriptor.function = "mic_x100_read_spad";
  descriptor.filename = "drivers/misc/mic/host/mic_x100.c";
  descriptor.format = "Reading 0x%x from scratch pad index %d\n";
  descriptor.lineno = 70U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "Reading 0x%x from scratch pad index %d\n", val, idx);
    }
  } else {
  }
  return (val);
}
}
static void mic_x100_enable_interrupts(struct mic_device *mdev )
{
  u32 reg ;
  struct mic_mw *mw ;
  u32 sice0 ;
  u32 siac0 ;
  {
  {
  mw = & mdev->mmio;
  sice0 = 102412U;
  siac0 = 102420U;
  reg = mic_mmio_read(mw, sice0);
  reg = reg | 65295U;
  mic_mmio_write(mw, reg, sice0);
  }
  if ((unsigned int )mdev->irq_info.num_vectors > 1U) {
    {
    reg = mic_mmio_read(mw, siac0);
    reg = reg | 65295U;
    mic_mmio_write(mw, reg, siac0);
    }
  } else {
  }
  return;
}
}
static void mic_x100_disable_interrupts(struct mic_device *mdev )
{
  u32 reg ;
  struct mic_mw *mw ;
  u32 sice0 ;
  u32 siac0 ;
  u32 sicc0 ;
  {
  {
  mw = & mdev->mmio;
  sice0 = 102412U;
  siac0 = 102420U;
  sicc0 = 102416U;
  reg = mic_mmio_read(mw, sice0);
  mic_mmio_write(mw, reg, sicc0);
  }
  if ((unsigned int )mdev->irq_info.num_vectors > 1U) {
    {
    reg = mic_mmio_read(mw, siac0);
    reg = reg & 4294902000U;
    mic_mmio_write(mw, reg, siac0);
    }
  } else {
  }
  return;
}
}
static void mic_x100_send_sbox_intr(struct mic_device *mdev , int doorbell )
{
  struct mic_mw *mw ;
  u64 apic_icr_offset ;
  u32 apicicr_low ;
  u32 tmp ;
  {
  {
  mw = & mdev->mmio;
  apic_icr_offset = (u64 )((doorbell + 5434) * 8);
  tmp = mic_mmio_read(mw, (u32 )apic_icr_offset + 65536U);
  apicicr_low = tmp;
  apicicr_low = apicicr_low | 8192U;
  __asm__ volatile ("sfence": : : "memory");
  mic_mmio_write(mw, apicicr_low, (u32 )apic_icr_offset + 65536U);
  }
  return;
}
}
static void mic_x100_send_rdmasr_intr(struct mic_device *mdev , int doorbell )
{
  int rdmasr_offset ;
  {
  {
  rdmasr_offset = (doorbell << 2) + 45440;
  __asm__ volatile ("sfence": : : "memory");
  mic_mmio_write(& mdev->mmio, 0U, (u32 )(rdmasr_offset + 65536));
  }
  return;
}
}
static void mic_x100_send_intr(struct mic_device *mdev , int doorbell )
{
  int rdmasr_db ;
  {
  if (doorbell <= 7) {
    {
    mic_x100_send_sbox_intr(mdev, doorbell);
    }
  } else {
    {
    rdmasr_db = doorbell + 9;
    mic_x100_send_rdmasr_intr(mdev, rdmasr_db);
    }
  }
  return;
}
}
static u32 mic_x100_ack_interrupt(struct mic_device *mdev )
{
  u32 sicr0 ;
  u32 reg ;
  u32 tmp ;
  {
  {
  sicr0 = 102404U;
  tmp = mic_mmio_read(& mdev->mmio, sicr0);
  reg = tmp;
  mic_mmio_write(& mdev->mmio, reg, sicr0);
  }
  return (reg);
}
}
static void mic_x100_intr_workarounds(struct mic_device *mdev )
{
  struct mic_mw *mw ;
  {
  mw = & mdev->mmio;
  if ((unsigned int )mdev->stepping == 0U) {
    {
    mic_mmio_write(mw, 1U, 102532U);
    }
  } else {
  }
  if ((unsigned int )mdev->stepping > 15U) {
    {
    (*((mdev->intr_ops)->enable_interrupts))(mdev);
    }
  } else {
  }
  return;
}
}
static void mic_x100_hw_intr_init(struct mic_device *mdev )
{
  {
  mdev->intr_info = (struct mic_intr_info *)(& mic_x100_intr_init);
  return;
}
}
static u32 mic_x100_read_msi_to_src_map(struct mic_device *mdev , int idx )
{
  u32 tmp ;
  {
  {
  tmp = mic_mmio_read(& mdev->mmio, (u32 )((idx + 25617) * 4));
  }
  return (tmp);
}
}
static void mic_x100_program_msi_to_src_map(struct mic_device *mdev , int idx , int offset ,
                                            bool set )
{
  unsigned long reg ;
  struct mic_mw *mw ;
  u32 mxar ;
  u32 tmp ;
  {
  {
  mw = & mdev->mmio;
  mxar = (u32 )((idx + 25617) * 4);
  tmp = mic_mmio_read(mw, mxar);
  reg = (unsigned long )tmp;
  }
  if ((int )set) {
    {
    __set_bit((long )offset, (unsigned long volatile *)(& reg));
    }
  } else {
    {
    __clear_bit((long )offset, (unsigned long volatile *)(& reg));
    }
  }
  {
  mic_mmio_write(mw, (u32 )reg, mxar);
  }
  return;
}
}
static void mic_x100_reset_fw_ready(struct mic_device *mdev )
{
  {
  {
  (*((mdev->ops)->write_spad))(mdev, 2U, 0U);
  }
  return;
}
}
static bool mic_x100_is_fw_ready(struct mic_device *mdev )
{
  u32 scratch2 ;
  u32 tmp ;
  {
  {
  tmp = (*((mdev->ops)->read_spad))(mdev, 2U);
  scratch2 = tmp;
  }
  return (((int )scratch2 & 1) != 0);
}
}
static u32 mic_x100_get_apic_id(struct mic_device *mdev )
{
  u32 scratch2 ;
  {
  {
  scratch2 = 0U;
  scratch2 = (*((mdev->ops)->read_spad))(mdev, 2U);
  }
  return ((scratch2 >> 1) & 511U);
}
}
static void mic_x100_send_firmware_intr(struct mic_device *mdev )
{
  u32 apicicr_low ;
  u64 apic_icr_offset ;
  int vector ;
  struct mic_mw *mw ;
  u32 tmp ;
  {
  {
  apic_icr_offset = 43528ULL;
  vector = 229;
  mw = & mdev->mmio;
  apicicr_low = (u32 )(vector | 8192);
  tmp = mic_x100_get_apic_id(mdev);
  mic_mmio_write(mw, tmp, (u32 )apic_icr_offset + 65540U);
  __asm__ volatile ("sfence": : : "memory");
  mic_mmio_write(mw, apicicr_low, (u32 )apic_icr_offset + 65536U);
  }
  return;
}
}
static void mic_x100_hw_reset(struct mic_device *mdev )
{
  u32 reset_reg ;
  u32 rgcr ;
  struct mic_mw *mw ;
  {
  {
  rgcr = 81936U;
  mw = & mdev->mmio;
  __asm__ volatile ("mfence": : : "memory");
  reset_reg = mic_mmio_read(mw, rgcr);
  reset_reg = reset_reg | 1U;
  mic_mmio_write(mw, reset_reg, rgcr);
  msleep(1000U);
  }
  return;
}
}
static int mic_x100_load_command_line(struct mic_device *mdev , struct firmware const *fw )
{
  u32 len ;
  u32 boot_mem ;
  char *buf ;
  void *cmd_line_va ;
  void *tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  {
  {
  len = 0U;
  cmd_line_va = mdev->aper.va + ((unsigned long )mdev->bootaddr + (unsigned long )fw->size);
  boot_mem = (u32 )(mdev->aper.len >> 20);
  tmp = kzalloc(2048UL, 208U);
  buf = (char *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d allocation failed\n",
            "mic_x100_load_command_line", 365);
    }
    return (-12);
  } else {
  }
  {
  tmp___0 = snprintf(buf, (size_t )(2048U - len), " mem=%dM", boot_mem);
  len = len + (u32 )tmp___0;
  }
  if ((unsigned long )mdev->cmdline != (unsigned long )((char *)0)) {
    {
    snprintf(buf + (unsigned long )len, (size_t )(2048U - len), " %s", mdev->cmdline);
    }
  } else {
  }
  {
  tmp___1 = strlen((char const *)buf);
  memcpy_toio((void volatile *)cmd_line_va, (void const *)buf, tmp___1 + 1UL);
  kfree((void const *)buf);
  }
  return (0);
}
}
static int mic_x100_load_ramdisk(struct mic_device *mdev )
{
  struct firmware const *fw ;
  int rc ;
  struct boot_params *bp ;
  {
  {
  bp = (struct boot_params *)mdev->aper.va + (unsigned long )mdev->bootaddr;
  rc = request_firmware(& fw, (char const *)mdev->ramdisk, (mdev->sdev)->parent);
  }
  if (rc < 0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "ramdisk request_firmware failed: %d %s\n",
            rc, mdev->ramdisk);
    }
    goto error;
  } else {
  }
  {
  memcpy_toio((void volatile *)mdev->aper.va + (unsigned long )(mdev->bootaddr << 1),
              (void const *)fw->data, fw->size);
  iowrite32(mdev->bootaddr << 1, (void *)(& bp->hdr.ramdisk_image));
  iowrite32((u32 )fw->size, (void *)(& bp->hdr.ramdisk_size));
  release_firmware(fw);
  }
  error: ;
  return (rc);
}
}
static int mic_x100_get_boot_addr(struct mic_device *mdev )
{
  u32 scratch2 ;
  u32 boot_addr ;
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  rc = 0;
  scratch2 = (*((mdev->ops)->read_spad))(mdev, 2U);
  boot_addr = scratch2 & 4294963200U;
  descriptor.modname = "mic_host";
  descriptor.function = "mic_x100_get_boot_addr";
  descriptor.filename = "drivers/misc/mic/host/mic_x100.c";
  descriptor.format = "%s %d boot_addr 0x%x\n";
  descriptor.lineno = 428U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "%s %d boot_addr 0x%x\n", "mic_x100_get_boot_addr", 428, boot_addr);
    }
  } else {
  }
  if (boot_addr > 2147483648U) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "incorrect bootaddr 0x%x\n",
            boot_addr);
    rc = -22;
    }
    goto error;
  } else {
  }
  mdev->bootaddr = boot_addr;
  error: ;
  return (rc);
}
}
static int mic_x100_load_firmware(struct mic_device *mdev , char const *buf )
{
  int rc ;
  struct firmware const *fw ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  rc = mic_x100_get_boot_addr(mdev);
  }
  if (rc != 0) {
    goto error;
  } else {
  }
  {
  rc = request_firmware(& fw, (char const *)mdev->firmware, (mdev->sdev)->parent);
  }
  if (rc < 0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "ramdisk request_firmware failed: %d %s\n",
            rc, mdev->firmware);
    }
    goto error;
  } else {
  }
  if ((unsigned long long )mdev->bootaddr > mdev->aper.len - (unsigned long long )fw->size) {
    {
    rc = -22;
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d rc %d bootaddr 0x%x\n",
            "mic_x100_load_firmware", 468, rc, mdev->bootaddr);
    release_firmware(fw);
    }
    goto error;
  } else {
  }
  {
  memcpy_toio((void volatile *)mdev->aper.va + (unsigned long )mdev->bootaddr, (void const *)fw->data,
              fw->size);
  (*((mdev->ops)->write_spad))(mdev, 5U, (u32 )fw->size);
  tmp = strcmp((char const *)mdev->bootmode, "elf");
  }
  if (tmp == 0) {
    goto done;
  } else {
  }
  {
  rc = mic_x100_load_command_line(mdev, fw);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d rc %d\n", "mic_x100_load_firmware",
            480, rc);
    }
    goto error;
  } else {
  }
  {
  release_firmware(fw);
  }
  if ((unsigned long )mdev->ramdisk != (unsigned long )((char *)0)) {
    {
    rc = mic_x100_load_ramdisk(mdev);
    }
  } else {
  }
  error:
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_x100_load_firmware";
  descriptor.filename = "drivers/misc/mic/host/mic_x100.c";
  descriptor.format = "%s %d rc %d\n";
  descriptor.lineno = 488U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "%s %d rc %d\n", "mic_x100_load_firmware", 488, rc);
    }
  } else {
  }
  done: ;
  return (rc);
}
}
static u32 mic_x100_get_postcode(struct mic_device *mdev )
{
  u32 tmp ;
  {
  {
  tmp = mic_mmio_read(& mdev->mmio, 9260U);
  }
  return (tmp);
}
}
static void mic_x100_smpt_set(struct mic_device *mdev , dma_addr_t dma_addr , u8 index )
{
  uint32_t smpt_reg_val ;
  {
  {
  smpt_reg_val = (unsigned int )(dma_addr >> (int )(mdev->smpt)->info.page_shift) << 2U;
  mic_mmio_write(& mdev->mmio, smpt_reg_val, (u32 )(((int )index + 19520) * 4));
  }
  return;
}
}
static void mic_x100_smpt_hw_init(struct mic_device *mdev )
{
  struct mic_smpt_hw_info *info ;
  {
  info = & (mdev->smpt)->info;
  info->num_reg = 32U;
  info->page_shift = 34U;
  info->page_size = 1ULL << (int )info->page_shift;
  info->base = 549755813888ULL;
  return;
}
}
struct mic_smpt_ops mic_x100_smpt_ops = {& mic_x100_smpt_hw_init, & mic_x100_smpt_set};
static bool mic_x100_dma_filter(struct dma_chan *chan , void *param )
{
  {
  if ((unsigned long )((chan->device)->dev)->parent == (unsigned long )((struct device *)param)) {
    return (1);
  } else {
  }
  return (0);
}
}
struct mic_hw_ops mic_x100_ops =
     {0U, 4U, & mic_x100_read_spad, & mic_x100_write_spad, & mic_x100_send_intr, & mic_x100_ack_interrupt,
    & mic_x100_intr_workarounds, & mic_x100_hw_reset, & mic_x100_reset_fw_ready, & mic_x100_is_fw_ready,
    & mic_x100_send_firmware_intr, & mic_x100_load_firmware, & mic_x100_get_postcode,
    & mic_x100_dma_filter};
struct mic_hw_intr_ops mic_x100_intr_ops = {& mic_x100_hw_intr_init, & mic_x100_enable_interrupts, & mic_x100_disable_interrupts,
    & mic_x100_program_msi_to_src_map, & mic_x100_read_msi_to_src_map};
void ldv_dummy_resourceless_instance_callback_22_10(unsigned int (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_get_postcode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_11(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_smpt_hw_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_12(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_hw_intr_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_13(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_intr_workarounds(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_14(_Bool (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_is_fw_ready(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_15(int (*arg0)(struct mic_device * ,
                                                                char * ) , struct mic_device *arg1 ,
                                                    char *arg2 )
{
  {
  {
  mic_x100_load_firmware(arg1, (char const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_18(void (*arg0)(struct mic_device * ,
                                                                 int , int , _Bool ) ,
                                                    struct mic_device *arg1 , int arg2 ,
                                                    int arg3 , _Bool arg4 )
{
  {
  {
  mic_x100_program_msi_to_src_map(arg1, arg2, arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_21(unsigned int (*arg0)(struct mic_device * ,
                                                                         int ) ,
                                                    struct mic_device *arg1 , int arg2 )
{
  {
  {
  mic_x100_read_msi_to_src_map(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_24(unsigned int (*arg0)(struct mic_device * ,
                                                                         unsigned int ) ,
                                                    struct mic_device *arg1 , unsigned int arg2 )
{
  {
  {
  mic_x100_read_spad(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_27(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_hw_reset(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_28(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_reset_fw_ready(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_29(void (*arg0)(struct mic_device * ) ,
                                                    struct mic_device *arg1 )
{
  {
  {
  mic_x100_send_firmware_intr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_3(unsigned int (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 )
{
  {
  {
  mic_x100_ack_interrupt(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_30(void (*arg0)(struct mic_device * ,
                                                                 int ) , struct mic_device *arg1 ,
                                                    int arg2 )
{
  {
  {
  mic_x100_send_intr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_33(void (*arg0)(struct mic_device * ,
                                                                 unsigned long long ,
                                                                 unsigned char ) ,
                                                    struct mic_device *arg1 , unsigned long long arg2 ,
                                                    unsigned char arg3 )
{
  {
  {
  mic_x100_smpt_set(arg1, arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_36(void (*arg0)(struct mic_device * ,
                                                                 unsigned int , unsigned int ) ,
                                                    struct mic_device *arg1 , unsigned int arg2 ,
                                                    unsigned int arg3 )
{
  {
  {
  mic_x100_write_spad(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_7(void (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 )
{
  {
  {
  mic_x100_disable_interrupts(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_8(_Bool (*arg0)(struct dma_chan * ,
                                                                 void * ) , struct dma_chan *arg1 ,
                                                   void *arg2 )
{
  {
  {
  mic_x100_dma_filter(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_9(void (*arg0)(struct mic_device * ) ,
                                                   struct mic_device *arg1 )
{
  {
  {
  mic_x100_enable_interrupts(arg1);
  }
  return;
}
}
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 ) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  }
  return (tmp);
}
}
extern int scnprintf(char * , size_t , char const * , ...) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern bool sysfs_streq(char const * , char const * ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 ) ;
extern void kernfs_notify(struct kernfs_node * ) ;
__inline static void sysfs_notify_dirent(struct kernfs_node *kn )
{
  {
  {
  kernfs_notify(kn);
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
int mic_start(struct mic_device *mdev , char const *buf ) ;
void mic_shutdown(struct mic_device *mdev ) ;
void mic_set_state(struct mic_device *mdev , u8 state ) ;
void mic_set_shutdown_status(struct mic_device *mdev , u8 shutdown_status ) ;
void mic_suspend(struct mic_device *mdev ) ;
static char const * const mic_state_string[6U] = { "offline", "online", "shutting_down", "reset_failed",
        "suspending", "suspended"};
static char const * const mic_shutdown_status_string[5U] = { "nop", "crashed", "halted", "poweroff",
        "restart"};
void mic_set_shutdown_status(struct mic_device *mdev , u8 shutdown_status )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_set_shutdown_status";
  descriptor.filename = "drivers/misc/mic/host/mic_sysfs.c";
  descriptor.format = "Shutdown Status %s -> %s\n";
  descriptor.lineno = 56U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "Shutdown Status %s -> %s\n", mic_shutdown_status_string[(int )mdev->shutdown_status],
                      mic_shutdown_status_string[(int )shutdown_status]);
    }
  } else {
  }
  mdev->shutdown_status = shutdown_status;
  return;
}
}
void mic_set_state(struct mic_device *mdev , u8 state )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_set_state";
  descriptor.filename = "drivers/misc/mic/host/mic_sysfs.c";
  descriptor.format = "State %s -> %s\n";
  descriptor.lineno = 64U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "State %s -> %s\n", mic_state_string[(int )mdev->state], mic_state_string[(int )state]);
    }
  } else {
  }
  {
  mdev->state = state;
  sysfs_notify_dirent(mdev->state_sysfs);
  }
  return;
}
}
static ssize_t family_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  char x100[5U] ;
  char unknown[8U] ;
  char const *card ;
  struct mic_device *mdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  x100[0] = 'x';
  x100[1] = '1';
  x100[2] = '0';
  x100[3] = '0';
  x100[4] = '\000';
  unknown[0] = 'U';
  unknown[1] = 'n';
  unknown[2] = 'k';
  unknown[3] = 'n';
  unknown[4] = 'o';
  unknown[5] = 'w';
  unknown[6] = 'n';
  unknown[7] = '\000';
  card = (char const *)0;
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  if ((unsigned int )mdev->family == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_0:
  card = (char const *)(& x100);
  goto ldv_33854;
  switch_default:
  card = (char const *)(& unknown);
  goto ldv_33854;
  switch_break: ;
  }
  ldv_33854:
  {
  tmp___0 = scnprintf(buf, 4096UL, "%s\n", card);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_family = {{"family", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & family_show,
    0};
static ssize_t stepping_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  char *string ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  string = (char *)"??";
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  if ((unsigned int )mdev->stepping == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )mdev->stepping == 16U) {
    goto case_16;
  } else {
  }
  if ((unsigned int )mdev->stepping == 17U) {
    goto case_17;
  } else {
  }
  if ((unsigned int )mdev->stepping == 32U) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_0:
  string = (char *)"A0";
  goto ldv_33865;
  case_16:
  string = (char *)"B0";
  goto ldv_33865;
  case_17:
  string = (char *)"B1";
  goto ldv_33865;
  case_32:
  string = (char *)"C0";
  goto ldv_33865;
  switch_default: ;
  goto ldv_33865;
  switch_break: ;
  }
  ldv_33865:
  {
  tmp___0 = scnprintf(buf, 4096UL, "%s\n", string);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_stepping = {{"stepping", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & stepping_show, 0};
static ssize_t state_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0) || (unsigned int )mdev->state > 5U) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = scnprintf(buf, 4096UL, "%s\n", mic_state_string[(int )mdev->state]);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t state_store(struct device *dev , struct device_attribute *attr , char const *buf ,
                           size_t count )
{
  int rc ;
  struct mic_device *mdev ;
  void *tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  {
  rc = 0;
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = sysfs_streq(buf, "boot");
  }
  if ((int )tmp___0) {
    {
    rc = mic_start(mdev, buf);
    }
    if (rc != 0) {
      {
      dev_err((struct device const *)(mdev->sdev)->parent, "mic_boot failed rc %d\n",
              rc);
      count = (size_t )rc;
      }
    } else {
    }
    goto done;
  } else {
  }
  {
  tmp___1 = sysfs_streq(buf, "reset");
  }
  if ((int )tmp___1) {
    {
    schedule_work(& mdev->reset_trigger_work);
    }
    goto done;
  } else {
  }
  {
  tmp___2 = sysfs_streq(buf, "shutdown");
  }
  if ((int )tmp___2) {
    {
    mic_shutdown(mdev);
    }
    goto done;
  } else {
  }
  {
  tmp___3 = sysfs_streq(buf, "suspend");
  }
  if ((int )tmp___3) {
    {
    mic_suspend(mdev);
    }
    goto done;
  } else {
  }
  count = 0xffffffffffffffeaUL;
  done: ;
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_state = {{"state", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & state_show,
    & state_store};
static ssize_t shutdown_status_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0) || (unsigned int )mdev->shutdown_status > 4U) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = scnprintf(buf, 4096UL, "%s\n", mic_shutdown_status_string[(int )mdev->shutdown_status]);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_shutdown_status = {{"shutdown_status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & shutdown_status_show, 0};
static ssize_t cmdline_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  char *cmdline ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  cmdline = mdev->cmdline;
  if ((unsigned long )cmdline != (unsigned long )((char *)0)) {
    {
    tmp___0 = scnprintf(buf, 4096UL, "%s\n", cmdline);
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  return (0L);
}
}
static ssize_t cmdline_store(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_97(& mdev->mic_mutex);
  kfree((void const *)mdev->cmdline);
  tmp___0 = kmalloc(count + 1UL, 208U);
  mdev->cmdline = (char *)tmp___0;
  }
  if ((unsigned long )mdev->cmdline == (unsigned long )((char *)0)) {
    count = 0xfffffffffffffff4UL;
    goto unlock;
  } else {
  }
  {
  strncpy(mdev->cmdline, buf, count);
  }
  if ((int )((signed char )*(mdev->cmdline + (count + 0xffffffffffffffffUL))) == 10) {
    *(mdev->cmdline + (count + 0xffffffffffffffffUL)) = 0;
  } else {
    *(mdev->cmdline + count) = 0;
  }
  unlock:
  {
  ldv_mutex_unlock_98(& mdev->mic_mutex);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_cmdline = {{"cmdline", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & cmdline_show,
    & cmdline_store};
static ssize_t firmware_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  char *firmware ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  firmware = mdev->firmware;
  if ((unsigned long )firmware != (unsigned long )((char *)0)) {
    {
    tmp___0 = scnprintf(buf, 4096UL, "%s\n", firmware);
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  return (0L);
}
}
static ssize_t firmware_store(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_99(& mdev->mic_mutex);
  kfree((void const *)mdev->firmware);
  tmp___0 = kmalloc(count + 1UL, 208U);
  mdev->firmware = (char *)tmp___0;
  }
  if ((unsigned long )mdev->firmware == (unsigned long )((char *)0)) {
    count = 0xfffffffffffffff4UL;
    goto unlock;
  } else {
  }
  {
  strncpy(mdev->firmware, buf, count);
  }
  if ((int )((signed char )*(mdev->firmware + (count + 0xffffffffffffffffUL))) == 10) {
    *(mdev->firmware + (count + 0xffffffffffffffffUL)) = 0;
  } else {
    *(mdev->firmware + count) = 0;
  }
  unlock:
  {
  ldv_mutex_unlock_100(& mdev->mic_mutex);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_firmware = {{"firmware", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & firmware_show, & firmware_store};
static ssize_t ramdisk_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  char *ramdisk ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  ramdisk = mdev->ramdisk;
  if ((unsigned long )ramdisk != (unsigned long )((char *)0)) {
    {
    tmp___0 = scnprintf(buf, 4096UL, "%s\n", ramdisk);
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  return (0L);
}
}
static ssize_t ramdisk_store(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_101(& mdev->mic_mutex);
  kfree((void const *)mdev->ramdisk);
  tmp___0 = kmalloc(count + 1UL, 208U);
  mdev->ramdisk = (char *)tmp___0;
  }
  if ((unsigned long )mdev->ramdisk == (unsigned long )((char *)0)) {
    count = 0xfffffffffffffff4UL;
    goto unlock;
  } else {
  }
  {
  strncpy(mdev->ramdisk, buf, count);
  }
  if ((int )((signed char )*(mdev->ramdisk + (count + 0xffffffffffffffffUL))) == 10) {
    *(mdev->ramdisk + (count + 0xffffffffffffffffUL)) = 0;
  } else {
    *(mdev->ramdisk + count) = 0;
  }
  unlock:
  {
  ldv_mutex_unlock_102___0(& mdev->mic_mutex);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ramdisk = {{"ramdisk", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & ramdisk_show,
    & ramdisk_store};
static ssize_t bootmode_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  char *bootmode ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  bootmode = mdev->bootmode;
  if ((unsigned long )bootmode != (unsigned long )((char *)0)) {
    {
    tmp___0 = scnprintf(buf, 4096UL, "%s\n", bootmode);
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  return (0L);
}
}
static ssize_t bootmode_store(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = sysfs_streq(buf, "linux");
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    tmp___2 = sysfs_streq(buf, "elf");
    }
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      return (-22L);
    } else {
    }
  } else {
  }
  {
  ldv_mutex_lock_103(& mdev->mic_mutex);
  kfree((void const *)mdev->bootmode);
  tmp___4 = kmalloc(count + 1UL, 208U);
  mdev->bootmode = (char *)tmp___4;
  }
  if ((unsigned long )mdev->bootmode == (unsigned long )((char *)0)) {
    count = 0xfffffffffffffff4UL;
    goto unlock;
  } else {
  }
  {
  strncpy(mdev->bootmode, buf, count);
  }
  if ((int )((signed char )*(mdev->bootmode + (count + 0xffffffffffffffffUL))) == 10) {
    *(mdev->bootmode + (count + 0xffffffffffffffffUL)) = 0;
  } else {
    *(mdev->bootmode + count) = 0;
  }
  unlock:
  {
  ldv_mutex_unlock_104(& mdev->mic_mutex);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_bootmode = {{"bootmode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bootmode_show, & bootmode_store};
static ssize_t log_buf_addr_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = scnprintf(buf, 4096UL, "%p\n", mdev->log_buf_addr);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t log_buf_addr_store(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  int ret ;
  unsigned long addr ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  ret = kstrtoul(buf, 16U, & addr);
  }
  if (ret != 0) {
    goto exit;
  } else {
  }
  mdev->log_buf_addr = (void *)addr;
  ret = (int )count;
  exit: ;
  return ((ssize_t )ret);
}
}
static struct device_attribute dev_attr_log_buf_addr = {{"log_buf_addr", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & log_buf_addr_show, & log_buf_addr_store};
static ssize_t log_buf_len_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct mic_device *mdev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  tmp___0 = scnprintf(buf, 4096UL, "%p\n", mdev->log_buf_len);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t log_buf_len_store(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct mic_device *mdev ;
  void *tmp ;
  int ret ;
  unsigned long addr ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mic_device *)0)) {
    return (-22L);
  } else {
  }
  {
  ret = kstrtoul(buf, 16U, & addr);
  }
  if (ret != 0) {
    goto exit;
  } else {
  }
  mdev->log_buf_len = (int *)addr;
  ret = (int )count;
  exit: ;
  return ((ssize_t )ret);
}
}
static struct device_attribute dev_attr_log_buf_len = {{"log_buf_len", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & log_buf_len_show, & log_buf_len_store};
static struct attribute *mic_default_attrs[11U] =
  { & dev_attr_family.attr, & dev_attr_stepping.attr, & dev_attr_state.attr, & dev_attr_shutdown_status.attr,
        & dev_attr_cmdline.attr, & dev_attr_firmware.attr, & dev_attr_ramdisk.attr, & dev_attr_bootmode.attr,
        & dev_attr_log_buf_addr.attr, & dev_attr_log_buf_len.attr, (struct attribute *)0};
static struct attribute_group const mic_default_group = {0, 0, (struct attribute **)(& mic_default_attrs), 0};
static struct attribute_group const *mic_default_groups[2U] = { & mic_default_group, (struct attribute_group const *)0};
void mic_sysfs_init(struct mic_device *mdev )
{
  {
  mdev->attr_group = (struct attribute_group const **)(& mic_default_groups);
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_19 ;
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  bootmode_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  bootmode_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  cmdline_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  cmdline_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  family_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  firmware_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  firmware_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  log_buf_addr_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  log_buf_addr_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  log_buf_len_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  log_buf_len_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  ramdisk_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  ramdisk_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  shutdown_status_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  state_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_9(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * , unsigned long ) ,
                                                   struct device *arg1 , struct device_attribute *arg2 ,
                                                   char *arg3 , unsigned long arg4 )
{
  {
  {
  state_store(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  stepping_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_10(void *arg0 )
{
  long (*ldv_10_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_10_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_10_container_struct_device_attribute ;
  struct device *ldv_10_container_struct_device_ptr ;
  char *ldv_10_ldv_param_3_2_default ;
  char *ldv_10_ldv_param_9_2_default ;
  unsigned long ldv_10_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_10_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_10_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_10_9(ldv_10_callback_store, ldv_10_container_struct_device_ptr,
                                                    ldv_10_container_struct_device_attribute,
                                                    ldv_10_ldv_param_9_2_default,
                                                    ldv_10_ldv_param_9_3_default);
      ldv_free((void *)ldv_10_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_show, ldv_10_container_struct_device_ptr,
                                                    ldv_10_container_struct_device_attribute,
                                                    ldv_10_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_10_ldv_param_3_2_default);
    }
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_11(void *arg0 )
{
  long (*ldv_11_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_11_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_11_container_struct_device_attribute ;
  struct device *ldv_11_container_struct_device_ptr ;
  char *ldv_11_ldv_param_3_2_default ;
  char *ldv_11_ldv_param_9_2_default ;
  unsigned long ldv_11_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_11_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_11_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_11_9(ldv_11_callback_store, ldv_11_container_struct_device_ptr,
                                                    ldv_11_container_struct_device_attribute,
                                                    ldv_11_ldv_param_9_2_default,
                                                    ldv_11_ldv_param_9_3_default);
      ldv_free((void *)ldv_11_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_show, ldv_11_container_struct_device_ptr,
                                                    ldv_11_container_struct_device_attribute,
                                                    ldv_11_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_11_ldv_param_3_2_default);
    }
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_12(void *arg0 )
{
  long (*ldv_12_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_12_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_12_container_struct_device_attribute ;
  struct device *ldv_12_container_struct_device_ptr ;
  char *ldv_12_ldv_param_3_2_default ;
  char *ldv_12_ldv_param_9_2_default ;
  unsigned long ldv_12_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_12_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_12_ldv_param_9_2_default = (char *)tmp___0;
      }
      if ((unsigned long )ldv_12_callback_store != (unsigned long )((long (*)(struct device * ,
                                                                              struct device_attribute * ,
                                                                              char * ,
                                                                              unsigned long ))0)) {
        {
        ldv_dummy_resourceless_instance_callback_12_9(ldv_12_callback_store, ldv_12_container_struct_device_ptr,
                                                      ldv_12_container_struct_device_attribute,
                                                      ldv_12_ldv_param_9_2_default,
                                                      ldv_12_ldv_param_9_3_default);
        }
      } else {
      }
      {
      ldv_free((void *)ldv_12_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_show, ldv_12_container_struct_device_ptr,
                                                    ldv_12_container_struct_device_attribute,
                                                    ldv_12_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_12_ldv_param_3_2_default);
    }
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_13(void *arg0 )
{
  long (*ldv_13_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_13_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_13_container_struct_device_attribute ;
  struct device *ldv_13_container_struct_device_ptr ;
  char *ldv_13_ldv_param_3_2_default ;
  char *ldv_13_ldv_param_9_2_default ;
  unsigned long ldv_13_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_13_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_13_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_13_9(ldv_13_callback_store, ldv_13_container_struct_device_ptr,
                                                    ldv_13_container_struct_device_attribute,
                                                    ldv_13_ldv_param_9_2_default,
                                                    ldv_13_ldv_param_9_3_default);
      ldv_free((void *)ldv_13_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_show, ldv_13_container_struct_device_ptr,
                                                    ldv_13_container_struct_device_attribute,
                                                    ldv_13_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_13_ldv_param_3_2_default);
    }
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_14(void *arg0 )
{
  long (*ldv_14_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_14_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_14_container_struct_device_attribute ;
  struct device *ldv_14_container_struct_device_ptr ;
  char *ldv_14_ldv_param_3_2_default ;
  char *ldv_14_ldv_param_9_2_default ;
  unsigned long ldv_14_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_14_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_14_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_14_9(ldv_14_callback_store, ldv_14_container_struct_device_ptr,
                                                    ldv_14_container_struct_device_attribute,
                                                    ldv_14_ldv_param_9_2_default,
                                                    ldv_14_ldv_param_9_3_default);
      ldv_free((void *)ldv_14_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_show, ldv_14_container_struct_device_ptr,
                                                    ldv_14_container_struct_device_attribute,
                                                    ldv_14_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_14_ldv_param_3_2_default);
    }
    goto ldv_call_14;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_15(void *arg0 )
{
  long (*ldv_15_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_15_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_15_container_struct_device_attribute ;
  struct device *ldv_15_container_struct_device_ptr ;
  char *ldv_15_ldv_param_3_2_default ;
  char *ldv_15_ldv_param_9_2_default ;
  unsigned long ldv_15_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_15_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_15_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_15_9(ldv_15_callback_store, ldv_15_container_struct_device_ptr,
                                                    ldv_15_container_struct_device_attribute,
                                                    ldv_15_ldv_param_9_2_default,
                                                    ldv_15_ldv_param_9_3_default);
      ldv_free((void *)ldv_15_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_show, ldv_15_container_struct_device_ptr,
                                                    ldv_15_container_struct_device_attribute,
                                                    ldv_15_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_15_ldv_param_3_2_default);
    }
    goto ldv_call_15;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_16(void *arg0 )
{
  long (*ldv_16_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_16_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_16_container_struct_device_attribute ;
  struct device *ldv_16_container_struct_device_ptr ;
  char *ldv_16_ldv_param_3_2_default ;
  char *ldv_16_ldv_param_9_2_default ;
  unsigned long ldv_16_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_16;
  return;
  ldv_call_16:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_16_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_16_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_16_9(ldv_16_callback_store, ldv_16_container_struct_device_ptr,
                                                    ldv_16_container_struct_device_attribute,
                                                    ldv_16_ldv_param_9_2_default,
                                                    ldv_16_ldv_param_9_3_default);
      ldv_free((void *)ldv_16_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_show, ldv_16_container_struct_device_ptr,
                                                    ldv_16_container_struct_device_attribute,
                                                    ldv_16_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_16_ldv_param_3_2_default);
    }
    goto ldv_call_16;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_17(void *arg0 )
{
  long (*ldv_17_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_17_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_17_container_struct_device_attribute ;
  struct device *ldv_17_container_struct_device_ptr ;
  char *ldv_17_ldv_param_3_2_default ;
  char *ldv_17_ldv_param_9_2_default ;
  unsigned long ldv_17_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_17;
  return;
  ldv_call_17:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_17_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_17_ldv_param_9_2_default = (char *)tmp___0;
      }
      if ((unsigned long )ldv_17_callback_store != (unsigned long )((long (*)(struct device * ,
                                                                              struct device_attribute * ,
                                                                              char * ,
                                                                              unsigned long ))0)) {
        {
        ldv_dummy_resourceless_instance_callback_17_9(ldv_17_callback_store, ldv_17_container_struct_device_ptr,
                                                      ldv_17_container_struct_device_attribute,
                                                      ldv_17_ldv_param_9_2_default,
                                                      ldv_17_ldv_param_9_3_default);
        }
      } else {
      }
      {
      ldv_free((void *)ldv_17_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_show, ldv_17_container_struct_device_ptr,
                                                    ldv_17_container_struct_device_attribute,
                                                    ldv_17_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_17_ldv_param_3_2_default);
    }
    goto ldv_call_17;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_18(void *arg0 )
{
  long (*ldv_18_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_18_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_18_container_struct_device_attribute ;
  struct device *ldv_18_container_struct_device_ptr ;
  char *ldv_18_ldv_param_3_2_default ;
  char *ldv_18_ldv_param_9_2_default ;
  unsigned long ldv_18_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_18;
  return;
  ldv_call_18:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_18_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_18_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_18_9(ldv_18_callback_store, ldv_18_container_struct_device_ptr,
                                                    ldv_18_container_struct_device_attribute,
                                                    ldv_18_ldv_param_9_2_default,
                                                    ldv_18_ldv_param_9_3_default);
      ldv_free((void *)ldv_18_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_show, ldv_18_container_struct_device_ptr,
                                                    ldv_18_container_struct_device_attribute,
                                                    ldv_18_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_18_ldv_param_3_2_default);
    }
    goto ldv_call_18;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_19(void *arg0 )
{
  long (*ldv_19_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_19_callback_store)(struct device * , struct device_attribute * , char * ,
                                unsigned long ) ;
  struct device_attribute *ldv_19_container_struct_device_attribute ;
  struct device *ldv_19_container_struct_device_ptr ;
  char *ldv_19_ldv_param_3_2_default ;
  char *ldv_19_ldv_param_9_2_default ;
  unsigned long ldv_19_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_19;
  return;
  ldv_call_19:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_19_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_19_ldv_param_9_2_default = (char *)tmp___0;
      }
      if ((unsigned long )ldv_19_callback_store != (unsigned long )((long (*)(struct device * ,
                                                                              struct device_attribute * ,
                                                                              char * ,
                                                                              unsigned long ))0)) {
        {
        ldv_dummy_resourceless_instance_callback_19_9(ldv_19_callback_store, ldv_19_container_struct_device_ptr,
                                                      ldv_19_container_struct_device_attribute,
                                                      ldv_19_ldv_param_9_2_default,
                                                      ldv_19_ldv_param_9_3_default);
        }
      } else {
      }
      {
      ldv_free((void *)ldv_19_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_show, ldv_19_container_struct_device_ptr,
                                                    ldv_19_container_struct_device_attribute,
                                                    ldv_19_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_19_ldv_param_3_2_default);
    }
    goto ldv_call_19;
  } else {
    return;
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_smpt_lock_of_mic_smpt_info(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_smpt_lock_of_mic_smpt_info(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
extern void dev_warn(struct device const * , char const * , ...) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *ldv_kmalloc_array_102(size_t n , size_t size , gfp_t flags ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
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
dma_addr_t mic_map(struct mic_device *mdev , dma_addr_t dma_addr , size_t size ) ;
void mic_unmap(struct mic_device *mdev , dma_addr_t mic_addr , size_t size ) ;
void mic_smpt_restore(struct mic_device *mdev ) ;
__inline static u64 mic_system_page_mask(struct mic_device *mdev )
{
  {
  return ((1ULL << (int )(mdev->smpt)->info.page_shift) - 1ULL);
}
}
__inline static u8 mic_sys_addr_to_smpt(struct mic_device *mdev , dma_addr_t pa )
{
  {
  return ((u8 )((pa - (mdev->smpt)->info.base) >> (int )(mdev->smpt)->info.page_shift));
}
}
__inline static u64 mic_smpt_to_pa(struct mic_device *mdev , u8 index )
{
  {
  return ((mdev->smpt)->info.base + (u64 )index * (mdev->smpt)->info.page_size);
}
}
__inline static u64 mic_smpt_offset(struct mic_device *mdev , dma_addr_t pa )
{
  u64 tmp ;
  {
  {
  tmp = mic_system_page_mask(mdev);
  }
  return (pa & tmp);
}
}
__inline static u64 mic_smpt_align_low(struct mic_device *mdev , dma_addr_t pa )
{
  u64 tmp ;
  {
  {
  tmp = mic_system_page_mask(mdev);
  }
  return ((((pa - tmp) + (mdev->smpt)->info.page_size) - 1ULL) & - (mdev->smpt)->info.page_size);
}
}
__inline static u64 mic_smpt_align_high(struct mic_device *mdev , dma_addr_t pa )
{
  {
  return (((pa + (mdev->smpt)->info.page_size) - 1ULL) & - (mdev->smpt)->info.page_size);
}
}
__inline static u64 mic_max_system_memory(struct mic_device *mdev )
{
  {
  return ((u64 )(mdev->smpt)->info.num_reg * (mdev->smpt)->info.page_size);
}
}
__inline static u64 mic_max_system_addr(struct mic_device *mdev )
{
  u64 tmp ;
  {
  {
  tmp = mic_max_system_memory(mdev);
  }
  return (((mdev->smpt)->info.base + tmp) - 1ULL);
}
}
__inline static bool mic_is_system_addr(struct mic_device *mdev , dma_addr_t pa )
{
  u64 tmp ;
  int tmp___0 ;
  {
  if (pa >= (mdev->smpt)->info.base) {
    {
    tmp = mic_max_system_addr(mdev);
    }
    if (pa <= tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return ((bool )tmp___0);
}
}
static void mic_add_smpt_entry(int spt , s64 *ref , u64 addr , int entries , struct mic_device *mdev )
{
  struct mic_smpt_info *smpt_info ;
  int i ;
  {
  smpt_info = mdev->smpt;
  i = spt;
  goto ldv_33792;
  ldv_33791: ;
  if ((smpt_info->entry + (unsigned long )i)->ref_count == 0LL && (smpt_info->entry + (unsigned long )i)->dma_addr != addr) {
    {
    (*((mdev->smpt_ops)->set))(mdev, addr, (int )((u8 )i));
    (smpt_info->entry + (unsigned long )i)->dma_addr = addr;
    }
  } else {
  }
  (smpt_info->entry + (unsigned long )i)->ref_count = (smpt_info->entry + (unsigned long )i)->ref_count + *(ref + (unsigned long )(i - spt));
  i = i + 1;
  addr = addr + smpt_info->info.page_size;
  ldv_33792: ;
  if (i < spt + entries) {
    goto ldv_33791;
  } else {
  }
  return;
}
}
static dma_addr_t mic_smpt_op(struct mic_device *mdev , u64 dma_addr , int entries ,
                              s64 *ref , size_t size )
{
  int spt ;
  int ae ;
  int i ;
  unsigned long flags ;
  dma_addr_t mic_addr ;
  dma_addr_t addr ;
  struct mic_smpt_info *smpt_info ;
  {
  {
  ae = 0;
  mic_addr = 0ULL;
  addr = dma_addr;
  smpt_info = mdev->smpt;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(& smpt_info->smpt_lock);
  i = 0;
  }
  goto ldv_33811;
  ldv_33810: ;
  if ((smpt_info->entry + (unsigned long )i)->dma_addr == addr) {
    ae = ae + 1;
    addr = addr + smpt_info->info.page_size;
  } else
  if (ae != 0) {
    goto not_found;
  } else {
  }
  if (ae == entries) {
    goto found;
  } else {
  }
  i = i + 1;
  ldv_33811: ;
  if (i < (int )smpt_info->info.num_reg) {
    goto ldv_33810;
  } else {
  }
  ae = 0;
  i = 0;
  goto ldv_33814;
  ldv_33813:
  ae = (smpt_info->entry + (unsigned long )i)->ref_count == 0LL ? ae + 1 : 0;
  if (ae == entries) {
    goto found;
  } else {
  }
  i = i + 1;
  ldv_33814: ;
  if (i < (int )smpt_info->info.num_reg) {
    goto ldv_33813;
  } else {
  }
  not_found:
  {
  ldv_spin_unlock_irqrestore_98(& smpt_info->smpt_lock, flags);
  }
  return (mic_addr);
  found:
  {
  spt = (i - entries) + 1;
  mic_addr = mic_smpt_to_pa(mdev, (int )((u8 )spt));
  mic_add_smpt_entry(spt, ref, dma_addr, entries, mdev);
  smpt_info->map_count = smpt_info->map_count + 1LL;
  smpt_info->ref_count = smpt_info->ref_count + (long long )size;
  ldv_spin_unlock_irqrestore_98(& smpt_info->smpt_lock, flags);
  }
  return (mic_addr);
}
}
static int mic_get_smpt_ref_count(struct mic_device *mdev , dma_addr_t dma_addr ,
                                  size_t size , s64 *ref , u64 *smpt_start )
{
  u64 start ;
  u64 end ;
  int i ;
  int tmp ;
  u64 _min1 ;
  u64 tmp___0 ;
  u64 _min2 ;
  {
  start = dma_addr;
  end = dma_addr + (unsigned long long )size;
  i = 0;
  goto ldv_33830;
  ldv_33829:
  {
  tmp = i;
  i = i + 1;
  tmp___0 = mic_smpt_align_high(mdev, start + 1ULL);
  _min1 = tmp___0;
  _min2 = end;
  *(ref + (unsigned long )tmp) = (s64 )((_min1 < _min2 ? _min1 : _min2) - start);
  start = mic_smpt_align_high(mdev, start + 1ULL);
  }
  ldv_33830: ;
  if (start < end) {
    goto ldv_33829;
  } else {
  }
  if ((unsigned long )smpt_start != (unsigned long )((u64 *)0ULL)) {
    {
    *smpt_start = mic_smpt_align_low(mdev, dma_addr);
    }
  } else {
  }
  return (i);
}
}
static dma_addr_t mic_to_dma_addr(struct mic_device *mdev , dma_addr_t mic_addr )
{
  struct mic_smpt_info *smpt_info ;
  int spt ;
  dma_addr_t dma_addr ;
  bool tmp ;
  int tmp___0 ;
  u8 tmp___1 ;
  u64 tmp___2 ;
  {
  {
  smpt_info = mdev->smpt;
  tmp = mic_is_system_addr(mdev, mic_addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "mic_addr is invalid. mic_addr = 0x%llx\n",
            mic_addr);
    }
    return (0xffffffffffffffeaULL);
  } else {
  }
  {
  tmp___1 = mic_sys_addr_to_smpt(mdev, mic_addr);
  spt = (int )tmp___1;
  tmp___2 = mic_smpt_offset(mdev, mic_addr);
  dma_addr = (smpt_info->entry + (unsigned long )spt)->dma_addr + tmp___2;
  }
  return (dma_addr);
}
}
dma_addr_t mic_map(struct mic_device *mdev , dma_addr_t dma_addr , size_t size )
{
  dma_addr_t mic_addr ;
  int num_entries ;
  s64 *ref ;
  u64 smpt_start ;
  u64 tmp ;
  void *tmp___0 ;
  u64 tmp___1 ;
  {
  mic_addr = 0ULL;
  if (size == 0UL) {
    return (mic_addr);
  } else {
    {
    tmp = mic_max_system_memory(mdev);
    }
    if ((unsigned long long )size > tmp) {
      return (mic_addr);
    } else {
    }
  }
  {
  tmp___0 = kmalloc((unsigned long )(mdev->smpt)->info.num_reg * 8UL, 208U);
  ref = (s64 *)tmp___0;
  }
  if ((unsigned long )ref == (unsigned long )((s64 *)0LL)) {
    return (mic_addr);
  } else {
  }
  {
  num_entries = mic_get_smpt_ref_count(mdev, dma_addr, size, ref, & smpt_start);
  mic_addr = mic_smpt_op(mdev, smpt_start, num_entries, ref, size);
  kfree((void const *)ref);
  }
  if (mic_addr == 0ULL && (unsigned int )mdev->family == 0U) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "mic_map failed dma_addr 0x%llx size 0x%lx\n",
            dma_addr, size);
    }
    return (mic_addr);
  } else {
    {
    tmp___1 = mic_smpt_offset(mdev, dma_addr);
    }
    return (mic_addr + tmp___1);
  }
}
}
void mic_unmap(struct mic_device *mdev , dma_addr_t mic_addr , size_t size )
{
  struct mic_smpt_info *smpt_info ;
  s64 *ref ;
  int num_smpt ;
  int spt ;
  int i ;
  unsigned long flags ;
  bool tmp ;
  int tmp___0 ;
  u8 tmp___1 ;
  void *tmp___2 ;
  {
  smpt_info = mdev->smpt;
  if (size == 0UL) {
    return;
  } else {
  }
  {
  tmp = mic_is_system_addr(mdev, mic_addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "invalid address: 0x%llx\n",
            mic_addr);
    }
    return;
  } else {
  }
  {
  tmp___1 = mic_sys_addr_to_smpt(mdev, mic_addr);
  spt = (int )tmp___1;
  tmp___2 = kmalloc((unsigned long )(mdev->smpt)->info.num_reg * 8UL, 208U);
  ref = (s64 *)tmp___2;
  }
  if ((unsigned long )ref == (unsigned long )((s64 *)0LL)) {
    return;
  } else {
  }
  {
  num_smpt = mic_get_smpt_ref_count(mdev, mic_addr, size, ref, (u64 *)0ULL);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(& smpt_info->smpt_lock);
  smpt_info->unmap_count = smpt_info->unmap_count + 1LL;
  smpt_info->ref_count = smpt_info->ref_count - (long long )size;
  i = spt;
  }
  goto ldv_33860;
  ldv_33859:
  (smpt_info->entry + (unsigned long )i)->ref_count = (smpt_info->entry + (unsigned long )i)->ref_count - *(ref + (unsigned long )(i - spt));
  if ((smpt_info->entry + (unsigned long )i)->ref_count < 0LL) {
    {
    dev_warn((struct device const *)(mdev->sdev)->parent, "ref count for entry %d is negative\n",
             i);
    }
  } else {
  }
  i = i + 1;
  ldv_33860: ;
  if (i < spt + num_smpt) {
    goto ldv_33859;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98(& smpt_info->smpt_lock, flags);
  kfree((void const *)ref);
  }
  return;
}
}
dma_addr_t mic_map_single(struct mic_device *mdev , void *va , size_t size )
{
  dma_addr_t mic_addr ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  dma_addr_t dma_addr ;
  dma_addr_t tmp ;
  int tmp___0 ;
  {
  {
  mic_addr = 0ULL;
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_map_single(pdev, va, size, 0);
  dma_addr = tmp;
  tmp___0 = pci_dma_mapping_error(pdev, dma_addr);
  }
  if (tmp___0 == 0) {
    {
    mic_addr = mic_map(mdev, dma_addr, size);
    }
    if (mic_addr == 0ULL) {
      {
      dev_err((struct device const *)(mdev->sdev)->parent, "mic_map failed dma_addr 0x%llx size 0x%lx\n",
              dma_addr, size);
      pci_unmap_single(pdev, dma_addr, size, 0);
      }
    } else {
    }
  } else {
  }
  return (mic_addr);
}
}
void mic_unmap_single(struct mic_device *mdev , dma_addr_t mic_addr , size_t size )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  dma_addr_t dma_addr ;
  dma_addr_t tmp ;
  {
  {
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = mic_to_dma_addr(mdev, mic_addr);
  dma_addr = tmp;
  mic_unmap(mdev, mic_addr, size);
  pci_unmap_single(pdev, dma_addr, size, 0);
  }
  return;
}
}
int mic_smpt_init(struct mic_device *mdev )
{
  int i ;
  int err ;
  dma_addr_t dma_addr ;
  struct mic_smpt_info *smpt_info ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  {
  err = 0;
  tmp = kmalloc(128UL, 208U);
  mdev->smpt = (struct mic_smpt_info *)tmp;
  }
  if ((unsigned long )mdev->smpt == (unsigned long )((struct mic_smpt_info *)0)) {
    return (-12);
  } else {
  }
  {
  smpt_info = mdev->smpt;
  (*((mdev->smpt_ops)->init))(mdev);
  tmp___0 = ldv_kmalloc_array_102((size_t )smpt_info->info.num_reg, 16UL, 208U);
  smpt_info->entry = (struct mic_smpt *)tmp___0;
  }
  if ((unsigned long )smpt_info->entry == (unsigned long )((struct mic_smpt *)0)) {
    err = -12;
    goto free_smpt;
  } else {
  }
  {
  spinlock_check(& smpt_info->smpt_lock);
  __raw_spin_lock_init(& smpt_info->smpt_lock.__annonCompField18.rlock, "&(&smpt_info->smpt_lock)->rlock",
                       & __key);
  i = 0;
  }
  goto ldv_33891;
  ldv_33890:
  {
  dma_addr = (u64 )i * smpt_info->info.page_size;
  (smpt_info->entry + (unsigned long )i)->dma_addr = dma_addr;
  (smpt_info->entry + (unsigned long )i)->ref_count = 0LL;
  (*((mdev->smpt_ops)->set))(mdev, dma_addr, (int )((u8 )i));
  i = i + 1;
  }
  ldv_33891: ;
  if (i < (int )smpt_info->info.num_reg) {
    goto ldv_33890;
  } else {
  }
  smpt_info->ref_count = 0LL;
  smpt_info->map_count = 0LL;
  smpt_info->unmap_count = 0LL;
  return (0);
  free_smpt:
  {
  kfree((void const *)smpt_info);
  }
  return (err);
}
}
void mic_smpt_uninit(struct mic_device *mdev )
{
  struct mic_smpt_info *smpt_info ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  smpt_info = mdev->smpt;
  descriptor.modname = "mic_host";
  descriptor.function = "mic_smpt_uninit";
  descriptor.filename = "drivers/misc/mic/host/mic_smpt.c";
  descriptor.format = "nodeid %d SMPT ref count %lld map %lld unmap %lld\n";
  descriptor.lineno = 406U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "nodeid %d SMPT ref count %lld map %lld unmap %lld\n", mdev->id,
                      smpt_info->ref_count, smpt_info->map_count, smpt_info->unmap_count);
    }
  } else {
  }
  i = 0;
  goto ldv_33902;
  ldv_33901:
  {
  descriptor___0.modname = "mic_host";
  descriptor___0.function = "mic_smpt_uninit";
  descriptor___0.filename = "drivers/misc/mic/host/mic_smpt.c";
  descriptor___0.format = "SMPT entry[%d] dma_addr = 0x%llx ref_count = %lld\n";
  descriptor___0.lineno = 412U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                      "SMPT entry[%d] dma_addr = 0x%llx ref_count = %lld\n", i, (smpt_info->entry + (unsigned long )i)->dma_addr,
                      (smpt_info->entry + (unsigned long )i)->ref_count);
    }
  } else {
  }
  if ((smpt_info->entry + (unsigned long )i)->ref_count != 0LL) {
    {
    dev_warn((struct device const *)(mdev->sdev)->parent, "ref count for entry %d is not zero\n",
             i);
    }
  } else {
  }
  i = i + 1;
  ldv_33902: ;
  if (i < (int )smpt_info->info.num_reg) {
    goto ldv_33901;
  } else {
  }
  {
  kfree((void const *)smpt_info->entry);
  kfree((void const *)smpt_info);
  }
  return;
}
}
void mic_smpt_restore(struct mic_device *mdev )
{
  int i ;
  dma_addr_t dma_addr ;
  {
  i = 0;
  goto ldv_33910;
  ldv_33909:
  {
  dma_addr = ((mdev->smpt)->entry + (unsigned long )i)->dma_addr;
  (*((mdev->smpt_ops)->set))(mdev, dma_addr, (int )((u8 )i));
  i = i + 1;
  }
  ldv_33910: ;
  if (i < (int )(mdev->smpt)->info.num_reg) {
    goto ldv_33909;
  } else {
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_smpt_lock_of_mic_smpt_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_smpt_lock_of_mic_smpt_info();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_smpt_lock_of_mic_smpt_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void *ldv_kmalloc_array_102(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size * n);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void *ldv_err_ptr(long error ) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
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
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_mic_intr_lock_of_mic_irq_info(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_mic_thread_lock_of_mic_irq_info(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_mic_thread_lock_of_mic_irq_info(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_99(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_100(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_103(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_103(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_103(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_103(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *ldv_kmalloc_array_102(size_t n , size_t size , gfp_t flags ) ;
__inline static void *ldv_kmalloc_array_102(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static bool pci_dev_msi_enabled(struct pci_dev *pci_dev )
{
  {
  return ((unsigned int )*((unsigned char *)pci_dev + 2522UL) != 0U);
}
}
extern void pci_intx(struct pci_dev * , int ) ;
extern void pci_msi_off(struct pci_dev * ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static int pci_enable_msix_exact(struct pci_dev *dev , struct msix_entry *entries ,
                                          int nvec )
{
  int rc ;
  int tmp ;
  {
  {
  tmp = pci_enable_msix_range(dev, entries, nvec, nvec);
  rc = tmp;
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
static int ldv_request_threaded_irq_117(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 ) ;
static int ldv_request_threaded_irq_118(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 ) ;
static int ldv_request_threaded_irq_119(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_120(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_122(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void mic_intr_restore(struct mic_device *mdev ) ;
static irqreturn_t mic_thread_fn(int irq , void *dev )
{
  struct mic_device *mdev ;
  struct mic_intr_info *intr_info ;
  struct mic_irq_info *irq_info ;
  struct mic_intr_cb *intr_cb ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int i ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp ;
  {
  {
  mdev = (struct mic_device *)dev;
  intr_info = mdev->intr_info;
  irq_info = & mdev->irq_info;
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  ldv_spin_lock_97(& irq_info->mic_thread_lock);
  i = (int )intr_info->intr_start_idx[0];
  }
  goto ldv_33886;
  ldv_33885:
  {
  tmp = test_and_clear_bit((long )i, (unsigned long volatile *)(& irq_info->mask));
  }
  if (tmp != 0) {
    __mptr___0 = (struct list_head const *)(irq_info->cb_list + (unsigned long )i)->next;
    intr_cb = (struct mic_intr_cb *)__mptr___0 + 0xffffffffffffffe0UL;
    goto ldv_33883;
    ldv_33882: ;
    if ((unsigned long )intr_cb->thread_fn != (unsigned long )((irqreturn_t (*)(int ,
                                                                                void * ))0)) {
      {
      (*(intr_cb->thread_fn))((int )pdev->irq, intr_cb->data);
      }
    } else {
    }
    __mptr___1 = (struct list_head const *)intr_cb->list.next;
    intr_cb = (struct mic_intr_cb *)__mptr___1 + 0xffffffffffffffe0UL;
    ldv_33883: ;
    if ((unsigned long )(& intr_cb->list) != (unsigned long )(irq_info->cb_list + (unsigned long )i)) {
      goto ldv_33882;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33886: ;
  if (i < (int )intr_info->intr_len[0]) {
    goto ldv_33885;
  } else {
  }
  {
  ldv_spin_unlock_98(& irq_info->mic_thread_lock);
  }
  return (1);
}
}
static irqreturn_t mic_interrupt(int irq , void *dev )
{
  struct mic_device *mdev ;
  struct mic_intr_info *intr_info ;
  struct mic_irq_info *irq_info ;
  struct mic_intr_cb *intr_cb ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  u32 mask ;
  int i ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  mdev = (struct mic_device *)dev;
  intr_info = mdev->intr_info;
  irq_info = & mdev->irq_info;
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  mask = (*((mdev->ops)->ack_interrupt))(mdev);
  }
  if (mask == 0U) {
    return (0);
  } else {
  }
  {
  ldv_spin_lock_99(& irq_info->mic_intr_lock);
  i = (int )intr_info->intr_start_idx[0];
  }
  goto ldv_33909;
  ldv_33908: ;
  if ((int )((unsigned long )mask >> i) & 1) {
    __mptr___0 = (struct list_head const *)(irq_info->cb_list + (unsigned long )i)->next;
    intr_cb = (struct mic_intr_cb *)__mptr___0 + 0xffffffffffffffe0UL;
    goto ldv_33906;
    ldv_33905: ;
    if ((unsigned long )intr_cb->handler != (unsigned long )((irqreturn_t (*)(int ,
                                                                              void * ))0)) {
      {
      (*(intr_cb->handler))((int )pdev->irq, intr_cb->data);
      }
    } else {
    }
    __mptr___1 = (struct list_head const *)intr_cb->list.next;
    intr_cb = (struct mic_intr_cb *)__mptr___1 + 0xffffffffffffffe0UL;
    ldv_33906: ;
    if ((unsigned long )(& intr_cb->list) != (unsigned long )(irq_info->cb_list + (unsigned long )i)) {
      goto ldv_33905;
    } else {
    }
    {
    set_bit((long )i, (unsigned long volatile *)(& irq_info->mask));
    }
  } else {
  }
  i = i + 1;
  ldv_33909: ;
  if (i < (int )intr_info->intr_len[0]) {
    goto ldv_33908;
  } else {
  }
  {
  ldv_spin_unlock_100(& irq_info->mic_intr_lock);
  }
  return (2);
}
}
static u16 mic_map_src_to_offset(struct mic_device *mdev , int intr_src , enum mic_intr_type type )
{
  {
  if ((unsigned int )type > 2U) {
    return (32U);
  } else {
  }
  if (intr_src >= (int )(mdev->intr_info)->intr_len[(unsigned int )type]) {
    return (32U);
  } else {
  }
  return ((int )(mdev->intr_info)->intr_start_idx[(unsigned int )type] + (int )((u16 )intr_src));
}
}
static struct msix_entry *mic_get_available_vector(struct mic_device *mdev )
{
  int i ;
  struct mic_irq_info *info ;
  {
  info = & mdev->irq_info;
  i = 0;
  goto ldv_33922;
  ldv_33921: ;
  if (*(info->mic_msi_map + (unsigned long )i) == 0U) {
    return (info->msix_entries + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_33922: ;
  if (i < (int )info->num_vectors) {
    goto ldv_33921;
  } else {
  }
  return ((struct msix_entry *)0);
}
}
static struct mic_intr_cb *mic_register_intr_callback(struct mic_device *mdev , u8 idx ,
                                                      irqreturn_t (*handler)(int ,
                                                                             void * ) ,
                                                      irqreturn_t (*thread_fn)(int ,
                                                                               void * ) ,
                                                      void *data )
{
  struct mic_intr_cb *intr_cb ;
  unsigned long flags ;
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = kmalloc(48UL, 208U);
  intr_cb = (struct mic_intr_cb *)tmp;
  }
  if ((unsigned long )intr_cb == (unsigned long )((struct mic_intr_cb *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct mic_intr_cb *)tmp___0);
  } else {
  }
  {
  intr_cb->handler = handler;
  intr_cb->thread_fn = thread_fn;
  intr_cb->data = data;
  intr_cb->cb_id = ida_simple_get(& mdev->irq_info.cb_ida, 0U, 0U, 208U);
  }
  if (intr_cb->cb_id < 0) {
    rc = intr_cb->cb_id;
    goto ida_fail;
  } else {
  }
  {
  ldv_spin_lock_97(& mdev->irq_info.mic_thread_lock);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(& mdev->irq_info.mic_intr_lock);
  list_add_tail(& intr_cb->list, mdev->irq_info.cb_list + (unsigned long )idx);
  ldv_spin_unlock_irqrestore_103(& mdev->irq_info.mic_intr_lock, flags);
  ldv_spin_unlock_98(& mdev->irq_info.mic_thread_lock);
  }
  return (intr_cb);
  ida_fail:
  {
  kfree((void const *)intr_cb);
  tmp___1 = ERR_PTR((long )rc);
  }
  return ((struct mic_intr_cb *)tmp___1);
}
}
static u8 mic_unregister_intr_callback(struct mic_device *mdev , u32 idx )
{
  struct list_head *pos ;
  struct list_head *tmp ;
  struct mic_intr_cb *intr_cb ;
  unsigned long flags ;
  int i ;
  struct list_head const *__mptr ;
  {
  {
  ldv_spin_lock_97(& mdev->irq_info.mic_thread_lock);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(& mdev->irq_info.mic_intr_lock);
  i = 0;
  }
  goto ldv_33950;
  ldv_33949:
  pos = (mdev->irq_info.cb_list + (unsigned long )i)->next;
  tmp = pos->next;
  goto ldv_33947;
  ldv_33946:
  __mptr = (struct list_head const *)pos;
  intr_cb = (struct mic_intr_cb *)__mptr + 0xffffffffffffffe0UL;
  if ((u32 )intr_cb->cb_id == idx) {
    {
    list_del(pos);
    ida_simple_remove(& mdev->irq_info.cb_ida, (unsigned int )intr_cb->cb_id);
    kfree((void const *)intr_cb);
    ldv_spin_unlock_irqrestore_103(& mdev->irq_info.mic_intr_lock, flags);
    ldv_spin_unlock_98(& mdev->irq_info.mic_thread_lock);
    }
    return ((u8 )i);
  } else {
  }
  pos = tmp;
  tmp = pos->next;
  ldv_33947: ;
  if ((unsigned long )pos != (unsigned long )(mdev->irq_info.cb_list + (unsigned long )i)) {
    goto ldv_33946;
  } else {
  }
  i = i + 1;
  ldv_33950: ;
  if (i <= 31) {
    goto ldv_33949;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_103(& mdev->irq_info.mic_intr_lock, flags);
  ldv_spin_unlock_98(& mdev->irq_info.mic_thread_lock);
  }
  return (32U);
}
}
static int mic_setup_msix(struct mic_device *mdev , struct pci_dev *pdev )
{
  int rc ;
  int i ;
  int entry_size ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  {
  {
  entry_size = 8;
  tmp = ldv_kmalloc_array_102(8UL, (size_t )entry_size, 208U);
  mdev->irq_info.msix_entries = (struct msix_entry *)tmp;
  }
  if ((unsigned long )mdev->irq_info.msix_entries == (unsigned long )((struct msix_entry *)0)) {
    rc = -12;
    goto err_nomem1;
  } else {
  }
  i = 0;
  goto ldv_33961;
  ldv_33960:
  (mdev->irq_info.msix_entries + (unsigned long )i)->entry = (u16 )i;
  i = i + 1;
  ldv_33961: ;
  if (i <= 7) {
    goto ldv_33960;
  } else {
  }
  {
  rc = pci_enable_msix_exact(pdev, mdev->irq_info.msix_entries, 8);
  }
  if (rc != 0) {
    {
    descriptor.modname = "mic_host";
    descriptor.function = "mic_setup_msix";
    descriptor.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor.format = "Error enabling MSIx. rc = %d\n";
    descriptor.lineno = 219U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "Error enabling MSIx. rc = %d\n",
                        rc);
      }
    } else {
    }
    goto err_enable_msix;
  } else {
  }
  {
  mdev->irq_info.num_vectors = 8U;
  tmp___1 = kzalloc((unsigned long )mdev->irq_info.num_vectors * 4UL, 208U);
  mdev->irq_info.mic_msi_map = (u32 *)tmp___1;
  }
  if ((unsigned long )mdev->irq_info.mic_msi_map == (unsigned long )((u32 *)0U)) {
    rc = -12;
    goto err_nomem2;
  } else {
  }
  {
  descriptor___0.modname = "mic_host";
  descriptor___0.function = "mic_setup_msix";
  descriptor___0.filename = "drivers/misc/mic/host/mic_intr.c";
  descriptor___0.format = "%d MSIx irqs setup\n";
  descriptor___0.lineno = 233U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                      "%d MSIx irqs setup\n", (int )mdev->irq_info.num_vectors);
    }
  } else {
  }
  return (0);
  err_nomem2:
  {
  pci_disable_msix(pdev);
  }
  err_enable_msix:
  {
  kfree((void const *)mdev->irq_info.msix_entries);
  }
  err_nomem1:
  mdev->irq_info.num_vectors = 0U;
  return (rc);
}
}
static int mic_setup_callbacks(struct mic_device *mdev )
{
  int i ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = ldv_kmalloc_array_102(32UL, 16UL, 208U);
  mdev->irq_info.cb_list = (struct list_head *)tmp;
  }
  if ((unsigned long )mdev->irq_info.cb_list == (unsigned long )((struct list_head *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_33973;
  ldv_33972:
  {
  INIT_LIST_HEAD(mdev->irq_info.cb_list + (unsigned long )i);
  i = i + 1;
  }
  ldv_33973: ;
  if (i <= 31) {
    goto ldv_33972;
  } else {
  }
  {
  ida_init(& mdev->irq_info.cb_ida);
  spinlock_check(& mdev->irq_info.mic_intr_lock);
  __raw_spin_lock_init(& mdev->irq_info.mic_intr_lock.__annonCompField18.rlock, "&(&mdev->irq_info.mic_intr_lock)->rlock",
                       & __key);
  spinlock_check(& mdev->irq_info.mic_thread_lock);
  __raw_spin_lock_init(& mdev->irq_info.mic_thread_lock.__annonCompField18.rlock,
                       "&(&mdev->irq_info.mic_thread_lock)->rlock", & __key___0);
  }
  return (0);
}
}
static void mic_release_callbacks(struct mic_device *mdev )
{
  unsigned long flags ;
  struct list_head *pos ;
  struct list_head *tmp ;
  struct mic_intr_cb *intr_cb ;
  int i ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  {
  {
  ldv_spin_lock_97(& mdev->irq_info.mic_thread_lock);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(& mdev->irq_info.mic_intr_lock);
  i = 0;
  }
  goto ldv_33992;
  ldv_33991:
  {
  tmp___0 = list_empty((struct list_head const *)mdev->irq_info.cb_list + (unsigned long )i);
  }
  if (tmp___0 != 0) {
    goto ldv_33985;
  } else {
  }
  pos = (mdev->irq_info.cb_list + (unsigned long )i)->next;
  tmp = pos->next;
  goto ldv_33989;
  ldv_33988:
  {
  __mptr = (struct list_head const *)pos;
  intr_cb = (struct mic_intr_cb *)__mptr + 0xffffffffffffffe0UL;
  list_del(pos);
  ida_simple_remove(& mdev->irq_info.cb_ida, (unsigned int )intr_cb->cb_id);
  kfree((void const *)intr_cb);
  pos = tmp;
  tmp = pos->next;
  }
  ldv_33989: ;
  if ((unsigned long )pos != (unsigned long )(mdev->irq_info.cb_list + (unsigned long )i)) {
    goto ldv_33988;
  } else {
  }
  i = i + 1;
  ldv_33992: ;
  if (i <= 31) {
    goto ldv_33991;
  } else {
  }
  ldv_33985:
  {
  ldv_spin_unlock_irqrestore_103(& mdev->irq_info.mic_intr_lock, flags);
  ldv_spin_unlock_98(& mdev->irq_info.mic_thread_lock);
  ida_destroy(& mdev->irq_info.cb_ida);
  kfree((void const *)mdev->irq_info.cb_list);
  }
  return;
}
}
static int mic_setup_msi(struct mic_device *mdev , struct pci_dev *pdev )
{
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  rc = pci_enable_msi_exact(pdev, 1);
  }
  if (rc != 0) {
    {
    descriptor.modname = "mic_host";
    descriptor.function = "mic_setup_msi";
    descriptor.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor.format = "Error enabling MSI. rc = %d\n";
    descriptor.lineno = 316U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "Error enabling MSI. rc = %d\n",
                        rc);
      }
    } else {
    }
    return (rc);
  } else {
  }
  {
  mdev->irq_info.num_vectors = 1U;
  tmp___0 = kzalloc((unsigned long )mdev->irq_info.num_vectors * 4UL, 208U);
  mdev->irq_info.mic_msi_map = (u32 *)tmp___0;
  }
  if ((unsigned long )mdev->irq_info.mic_msi_map == (unsigned long )((u32 *)0U)) {
    rc = -12;
    goto err_nomem1;
  } else {
  }
  {
  rc = mic_setup_callbacks(mdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Error setting up callbacks\n");
    }
    goto err_nomem2;
  } else {
  }
  {
  rc = ldv_request_threaded_irq_117(pdev->irq, & mic_interrupt, & mic_thread_fn, 0UL,
                                    "mic-msi", (void *)mdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Error allocating MSI interrupt\n");
    }
    goto err_irq_req_fail;
  } else {
  }
  {
  descriptor___0.modname = "mic_host";
  descriptor___0.function = "mic_setup_msi";
  descriptor___0.filename = "drivers/misc/mic/host/mic_intr.c";
  descriptor___0.format = "%d MSI irqs setup\n";
  descriptor___0.lineno = 342U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev), "%d MSI irqs setup\n",
                      (int )mdev->irq_info.num_vectors);
    }
  } else {
  }
  return (0);
  err_irq_req_fail:
  {
  mic_release_callbacks(mdev);
  }
  err_nomem2:
  {
  kfree((void const *)mdev->irq_info.mic_msi_map);
  }
  err_nomem1:
  {
  pci_disable_msi(pdev);
  mdev->irq_info.num_vectors = 0U;
  }
  return (rc);
}
}
static int mic_setup_intx(struct mic_device *mdev , struct pci_dev *pdev )
{
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  pci_msi_off(pdev);
  pci_intx(pdev, 1);
  rc = mic_setup_callbacks(mdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Error setting up callbacks\n");
    }
    goto err_nomem;
  } else {
  }
  {
  rc = ldv_request_threaded_irq_118(pdev->irq, & mic_interrupt, & mic_thread_fn, 128UL,
                                    "mic-intx", (void *)mdev);
  }
  if (rc != 0) {
    goto err;
  } else {
  }
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_setup_intx";
  descriptor.filename = "drivers/misc/mic/host/mic_intr.c";
  descriptor.format = "intx irq setup\n";
  descriptor.lineno = 381U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "intx irq setup\n");
    }
  } else {
  }
  return (0);
  err:
  {
  mic_release_callbacks(mdev);
  }
  err_nomem: ;
  return (rc);
}
}
int mic_next_db(struct mic_device *mdev )
{
  int next_db ;
  {
  next_db = mdev->irq_info.next_avail_src % (int )(mdev->intr_info)->intr_len[0];
  mdev->irq_info.next_avail_src = mdev->irq_info.next_avail_src + 1;
  return (next_db);
}
}
struct mic_irq *mic_request_threaded_irq(struct mic_device *mdev , irqreturn_t (*handler)(int ,
                                                                                          void * ) ,
                                         irqreturn_t (*thread_fn)(int , void * ) ,
                                         char const *name , void *data , int intr_src ,
                                         enum mic_intr_type type )
{
  u16 offset ;
  int rc ;
  struct msix_entry *msix ;
  unsigned long cookie ;
  u16 entry ;
  struct mic_intr_cb *intr_cb ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  void *tmp___5 ;
  {
  {
  rc = 0;
  msix = (struct msix_entry *)0;
  cookie = 0UL;
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  offset = mic_map_src_to_offset(mdev, intr_src, type);
  }
  if ((unsigned int )offset > 31U) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "Error mapping index %d to a valid source id.\n",
            intr_src);
    rc = -22;
    }
    goto err;
  } else {
  }
  if ((unsigned int )mdev->irq_info.num_vectors > 1U) {
    {
    msix = mic_get_available_vector(mdev);
    }
    if ((unsigned long )msix == (unsigned long )((struct msix_entry *)0)) {
      {
      dev_err((struct device const *)(mdev->sdev)->parent, "No MSIx vectors available for use.\n");
      rc = -28;
      }
      goto err;
    } else {
    }
    {
    rc = ldv_request_threaded_irq_119(msix->vector, handler, thread_fn, 0UL, name,
                                      data);
    }
    if (rc != 0) {
      {
      descriptor.modname = "mic_host";
      descriptor.function = "mic_request_threaded_irq";
      descriptor.filename = "drivers/misc/mic/host/mic_intr.c";
      descriptor.format = "request irq failed rc = %d\n";
      descriptor.lineno = 473U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp != 0L) {
        {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                          "request irq failed rc = %d\n", rc);
        }
      } else {
      }
      goto err;
    } else {
    }
    {
    entry = msix->entry;
    *(mdev->irq_info.mic_msi_map + (unsigned long )entry) = *(mdev->irq_info.mic_msi_map + (unsigned long )entry) | (u32 )(1UL << (int )offset);
    (*((mdev->intr_ops)->program_msi_to_src_map))(mdev, (int )entry, (int )offset,
                                                  1);
    cookie = (unsigned long )((int )entry | ((int )offset << 16));
    descriptor___0.modname = "mic_host";
    descriptor___0.function = "mic_request_threaded_irq";
    descriptor___0.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor___0.format = "irq: %d assigned for src: %d\n";
    descriptor___0.lineno = 482U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                        "irq: %d assigned for src: %d\n", msix->vector, intr_src);
      }
    } else {
    }
  } else {
    {
    intr_cb = mic_register_intr_callback(mdev, (int )((u8 )offset), handler, thread_fn,
                                         data);
    tmp___2 = IS_ERR((void const *)intr_cb);
    }
    if ((int )tmp___2) {
      {
      dev_err((struct device const *)(mdev->sdev)->parent, "No available callback entries for use\n");
      tmp___1 = PTR_ERR((void const *)intr_cb);
      rc = (int )tmp___1;
      }
      goto err;
    } else {
    }
    {
    entry = 0U;
    tmp___3 = pci_dev_msi_enabled(pdev);
    }
    if ((int )tmp___3) {
      {
      *(mdev->irq_info.mic_msi_map + (unsigned long )entry) = *(mdev->irq_info.mic_msi_map + (unsigned long )entry) | (u32 )(1 << (int )offset);
      (*((mdev->intr_ops)->program_msi_to_src_map))(mdev, (int )entry, (int )offset,
                                                    1);
      }
    } else {
    }
    {
    cookie = (unsigned long )((int )entry | (intr_cb->cb_id << 16));
    descriptor___1.modname = "mic_host";
    descriptor___1.function = "mic_request_threaded_irq";
    descriptor___1.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor___1.format = "callback %d registered for src: %d\n";
    descriptor___1.lineno = 501U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(mdev->sdev)->parent,
                        "callback %d registered for src: %d\n", intr_cb->cb_id, intr_src);
      }
    } else {
    }
  }
  return ((struct mic_irq *)cookie);
  err:
  {
  tmp___5 = ERR_PTR((long )rc);
  }
  return ((struct mic_irq *)tmp___5);
}
}
void mic_free_irq(struct mic_device *mdev , struct mic_irq *cookie , void *data )
{
  u32 offset ;
  u32 entry ;
  u8 src_id ;
  unsigned int irq ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  entry = (u32 )((long )cookie) & 65535U;
  offset = (u32 )((unsigned long )cookie >> 16);
  if ((unsigned int )mdev->irq_info.num_vectors > 1U) {
    if (entry >= (u32 )mdev->irq_info.num_vectors) {
      {
      dev_warn((struct device const *)(mdev->sdev)->parent, "entry %d should be < num_irq %d\n",
               entry, (int )mdev->irq_info.num_vectors);
      }
      return;
    } else {
    }
    {
    irq = (mdev->irq_info.msix_entries + (unsigned long )entry)->vector;
    ldv_free_irq_120(irq, data);
    *(mdev->irq_info.mic_msi_map + (unsigned long )entry) = *(mdev->irq_info.mic_msi_map + (unsigned long )entry) & ~ ((u32 )(1UL << (int )offset));
    (*((mdev->intr_ops)->program_msi_to_src_map))(mdev, (int )entry, (int )offset,
                                                  0);
    descriptor.modname = "mic_host";
    descriptor.function = "mic_free_irq";
    descriptor.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor.format = "irq: %d freed\n";
    descriptor.lineno = 544U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                        "irq: %d freed\n", irq);
      }
    } else {
    }
  } else {
    {
    irq = pdev->irq;
    src_id = mic_unregister_intr_callback(mdev, offset);
    }
    if ((unsigned int )src_id > 31U) {
      {
      dev_warn((struct device const *)(mdev->sdev)->parent, "Error unregistering callback\n");
      }
      return;
    } else {
    }
    {
    tmp___0 = pci_dev_msi_enabled(pdev);
    }
    if ((int )tmp___0) {
      {
      *(mdev->irq_info.mic_msi_map + (unsigned long )entry) = *(mdev->irq_info.mic_msi_map + (unsigned long )entry) & ~ ((u32 )(1UL << (int )src_id));
      (*((mdev->intr_ops)->program_msi_to_src_map))(mdev, (int )entry, (int )src_id,
                                                    0);
      }
    } else {
    }
    {
    descriptor___0.modname = "mic_host";
    descriptor___0.function = "mic_free_irq";
    descriptor___0.filename = "drivers/misc/mic/host/mic_intr.c";
    descriptor___0.format = "callback %d unregistered for src: %d\n";
    descriptor___0.lineno = 558U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                        "callback %d unregistered for src: %d\n", offset, (int )src_id);
      }
    } else {
    }
  }
  return;
}
}
int mic_setup_interrupts(struct mic_device *mdev , struct pci_dev *pdev )
{
  int rc ;
  {
  {
  rc = mic_setup_msix(mdev, pdev);
  }
  if (rc == 0) {
    goto done;
  } else {
  }
  {
  rc = mic_setup_msi(mdev, pdev);
  }
  if (rc == 0) {
    goto done;
  } else {
  }
  {
  rc = mic_setup_intx(mdev, pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "no usable interrupts\n");
    }
    return (rc);
  } else {
  }
  done:
  {
  (*((mdev->intr_ops)->enable_interrupts))(mdev);
  }
  return (0);
}
}
void mic_free_interrupts(struct mic_device *mdev , struct pci_dev *pdev )
{
  int i ;
  bool tmp ;
  {
  {
  (*((mdev->intr_ops)->disable_interrupts))(mdev);
  }
  if ((unsigned int )mdev->irq_info.num_vectors > 1U) {
    i = 0;
    goto ldv_34067;
    ldv_34066: ;
    if (*(mdev->irq_info.mic_msi_map + (unsigned long )i) != 0U) {
      {
      dev_warn((struct device const *)(& pdev->dev), "irq %d may still be in use.\n",
               (mdev->irq_info.msix_entries + (unsigned long )i)->vector);
      }
    } else {
    }
    i = i + 1;
    ldv_34067: ;
    if (i < (int )mdev->irq_info.num_vectors) {
      goto ldv_34066;
    } else {
    }
    {
    kfree((void const *)mdev->irq_info.mic_msi_map);
    kfree((void const *)mdev->irq_info.msix_entries);
    pci_disable_msix(pdev);
    }
  } else {
    {
    tmp = pci_dev_msi_enabled(pdev);
    }
    if ((int )tmp) {
      {
      ldv_free_irq_121(pdev->irq, (void *)mdev);
      kfree((void const *)mdev->irq_info.mic_msi_map);
      pci_disable_msi(pdev);
      }
    } else {
      {
      ldv_free_irq_122(pdev->irq, (void *)mdev);
      }
    }
    {
    mic_release_callbacks(mdev);
    }
  }
  return;
}
}
void mic_intr_restore(struct mic_device *mdev )
{
  int entry ;
  int offset ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_dev_msi_enabled(pdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  entry = 0;
  goto ldv_34081;
  ldv_34080:
  offset = 0;
  goto ldv_34078;
  ldv_34077: ;
  if ((int )((unsigned long )*(mdev->irq_info.mic_msi_map + (unsigned long )entry) >> offset) & 1) {
    {
    (*((mdev->intr_ops)->program_msi_to_src_map))(mdev, entry, offset, 1);
    }
  } else {
  }
  offset = offset + 1;
  ldv_34078: ;
  if (offset <= 31) {
    goto ldv_34077;
  } else {
  }
  entry = entry + 1;
  ldv_34081: ;
  if (entry < (int )mdev->irq_info.num_vectors) {
    goto ldv_34080;
  } else {
  }
  return;
}
}
void ldv_dispatch_irq_deregister_25_1(int arg0 ) ;
void ldv_dispatch_irq_register_26_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_8_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_8_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_8(void *arg0 ) ;
int ldv_request_threaded_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int ,
                                                                                   void * ) ,
                             enum irqreturn (*arg3)(int , void * ) , unsigned long arg4 ,
                             char *arg5 , void *arg6 ) ;
struct ldv_thread ldv_thread_8 ;
void ldv_dispatch_irq_deregister_25_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_26_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_8 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_8 = (struct ldv_struct_interrupt_instance_8 *)tmp;
  cf_arg_8->arg0 = arg0;
  cf_arg_8->arg1 = arg1;
  cf_arg_8->arg2 = arg2;
  cf_arg_8->arg3 = arg3;
  ldv_interrupt_interrupt_instance_8((void *)cf_arg_8);
  }
  return;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_25_line_line ;
  {
  {
  ldv_25_line_line = arg1;
  ldv_dispatch_irq_deregister_25_1(ldv_25_line_line);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_8_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = mic_interrupt(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_8_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  mic_thread_fn(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_8(void *arg0 )
{
  enum irqreturn (*ldv_8_callback_handler)(int , void * ) ;
  void *ldv_8_data_data ;
  int ldv_8_line_line ;
  enum irqreturn ldv_8_ret_val_default ;
  enum irqreturn (*ldv_8_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_8 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_8 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_8 *)0)) {
    {
    ldv_8_line_line = data->arg0;
    ldv_8_callback_handler = data->arg1;
    ldv_8_thread_thread = data->arg2;
    ldv_8_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_8_ret_val_default = ldv_interrupt_instance_handler_8_5(ldv_8_callback_handler,
                                                             ldv_8_line_line, ldv_8_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_8_ret_val_default == 2U);
    ldv_interrupt_instance_thread_8_3(ldv_8_thread_thread, ldv_8_line_line, ldv_8_data_data);
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_8_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_request_threaded_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int ,
                                                                                   void * ) ,
                             enum irqreturn (*arg3)(int , void * ) , unsigned long arg4 ,
                             char *arg5 , void *arg6 )
{
  enum irqreturn (*ldv_26_callback_handler)(int , void * ) ;
  void *ldv_26_data_data ;
  int ldv_26_line_line ;
  enum irqreturn (*ldv_26_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_26_line_line = (int )arg1;
    ldv_26_callback_handler = arg2;
    ldv_26_thread_thread = arg3;
    ldv_26_data_data = arg6;
    ldv_dispatch_irq_register_26_2(ldv_26_line_line, ldv_26_callback_handler, ldv_26_thread_thread,
                                   ldv_26_data_data);
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
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_97(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_mic_thread_lock_of_mic_irq_info();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_98(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_mic_thread_lock_of_mic_irq_info();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_99(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_100(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_mic_intr_lock_of_mic_irq_info();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_103(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_mic_intr_lock_of_mic_irq_info();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_114(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_request_threaded_irq_117(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                             ldv_func_arg5, ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_threaded_irq(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_request_threaded_irq_118(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                             ldv_func_arg5, ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_threaded_irq(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_request_threaded_irq_119(unsigned int ldv_func_arg1 , irqreturn_t (*ldv_func_arg2)(int ,
                                                                                                  void * ) ,
                                        irqreturn_t (*ldv_func_arg3)(int , void * ) ,
                                        unsigned long ldv_func_arg4 , char const *ldv_func_arg5 ,
                                        void *ldv_func_arg6 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_threaded_irq(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                             ldv_func_arg5, ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_threaded_irq(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3,
                                     ldv_func_arg4, (char *)ldv_func_arg5, ldv_func_arg6);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_120(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_121(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_122(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_reset_wait_of_mic_device(void) ;
static void ldv_mutex_lock_97___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_103___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_109___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 ) ;
extern void *memset(void * , int , size_t ) ;
__inline static void bitmap_zero(unsigned long *dst , unsigned int nbits )
{
  unsigned int len ;
  {
  {
  len = (unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U;
  memset((void *)dst, 0, (size_t )len);
  }
  return;
}
}
__inline static long PTR_ERR(void const *ptr ) ;
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_104___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_110___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
static unsigned long ldv_wait_for_completion_timeout_112(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 ) ;
static unsigned long ldv_wait_for_completion_timeout_116(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 ) ;
extern void complete_all(struct completion * ) ;
__inline static void *phys_to_virt(phys_addr_t address )
{
  {
  return ((void *)((unsigned long )address + 0xffff880000000000UL));
}
}
extern struct mbus_device *mbus_register_device(struct device * , int , struct dma_map_ops * ,
                                                struct mbus_hw_ops * , void * ) ;
extern void mbus_unregister_device(struct mbus_device * ) ;
static void ldv_mbus_unregister_device_98(struct mbus_device *ldv_func_arg1 ) ;
static void ldv_mbus_unregister_device_101(struct mbus_device *ldv_func_arg1 ) ;
__inline static void __dma_cap_set(enum dma_transaction_type tx_type , dma_cap_mask_t *dstp )
{
  {
  {
  set_bit((long )tx_type, (unsigned long volatile *)(& dstp->bits));
  }
  return;
}
}
__inline static void __dma_cap_zero(dma_cap_mask_t *dstp )
{
  {
  {
  bitmap_zero((unsigned long *)(& dstp->bits), 12U);
  }
  return;
}
}
extern struct dma_chan *__dma_request_channel(dma_cap_mask_t const * , bool (*)(struct dma_chan * ,
                                                                                  void * ) ,
                                              void * ) ;
extern void dma_release_channel(struct dma_chan * ) ;
__inline static struct dma_chan *mic_request_dma_chan(struct mic_device *mdev )
{
  dma_cap_mask_t mask ;
  struct dma_chan *chan ;
  {
  {
  __dma_cap_zero(& mask);
  __dma_cap_set(0, & mask);
  chan = __dma_request_channel((dma_cap_mask_t const *)(& mask), (mdev->ops)->dma_filter,
                               (void *)(mdev->sdev)->parent);
  }
  if ((unsigned long )chan != (unsigned long )((struct dma_chan *)0)) {
    return (chan);
  } else {
  }
  {
  dev_err((struct device const *)(mdev->sdev)->parent, "%s %d unable to acquire channel\n",
          "mic_request_dma_chan", 210);
  }
  return ((struct dma_chan *)0);
}
}
void mic_virtio_reset_devices(struct mic_device *mdev ) ;
__inline static struct mic_device *mbdev_to_mdev(struct mbus_device *mbdev )
{
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)mbdev->dev.parent);
  }
  return ((struct mic_device *)tmp);
}
}
static dma_addr_t mic_dma_map_page(struct device *dev , struct page *page , unsigned long offset ,
                                   size_t size , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  void *va ;
  void *tmp ;
  struct mic_device *mdev ;
  void *tmp___0 ;
  dma_addr_t tmp___1 ;
  {
  {
  tmp = phys_to_virt((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12);
  va = tmp + offset;
  tmp___0 = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp___0;
  tmp___1 = mic_map_single(mdev, va, size);
  }
  return (tmp___1);
}
}
static void mic_dma_unmap_page(struct device *dev , dma_addr_t dma_addr , size_t size ,
                               enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct mic_device *mdev ;
  void *tmp ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev->parent);
  mdev = (struct mic_device *)tmp;
  mic_unmap_single(mdev, dma_addr, size);
  }
  return;
}
}
static struct dma_map_ops mic_dma_ops =
     {0, 0, 0, 0, & mic_dma_map_page, & mic_dma_unmap_page, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static struct mic_irq *_mic_request_threaded_irq(struct mbus_device *mbdev , irqreturn_t (*handler)(int ,
                                                                                                    void * ) ,
                                                 irqreturn_t (*thread_fn)(int , void * ) ,
                                                 char const *name , void *data ,
                                                 int intr_src )
{
  struct mic_device *tmp ;
  struct mic_irq *tmp___0 ;
  {
  {
  tmp = mbdev_to_mdev(mbdev);
  tmp___0 = mic_request_threaded_irq(tmp, handler, thread_fn, name, data, intr_src,
                                     1);
  }
  return (tmp___0);
}
}
static void _mic_free_irq(struct mbus_device *mbdev , struct mic_irq *cookie , void *data )
{
  {
  return;
}
}
static void _mic_ack_interrupt(struct mbus_device *mbdev , int num )
{
  struct mic_device *mdev ;
  struct mic_device *tmp ;
  {
  {
  tmp = mbdev_to_mdev(mbdev);
  mdev = tmp;
  (*((mdev->ops)->intr_workarounds))(mdev);
  }
  return;
}
}
static struct mbus_hw_ops mbus_hw_ops = {& _mic_request_threaded_irq, & _mic_free_irq, & _mic_ack_interrupt};
static void mic_reset(struct mic_device *mdev )
{
  int i ;
  bool tmp ;
  {
  {
  reinit_completion(& mdev->reset_wait);
  (*((mdev->ops)->reset_fw_ready))(mdev);
  (*((mdev->ops)->reset))(mdev);
  i = 0;
  }
  goto ldv_34583;
  ldv_34582:
  {
  tmp = (*((mdev->ops)->is_fw_ready))(mdev);
  }
  if ((int )tmp) {
    goto done;
  } else {
  }
  {
  msleep(1000U);
  i = i + 1;
  }
  ldv_34583: ;
  if (i <= 44) {
    goto ldv_34582;
  } else {
  }
  {
  mic_set_state(mdev, 3);
  }
  done:
  {
  complete_all(& mdev->reset_wait);
  }
  return;
}
}
void mic_bootparam_init(struct mic_device *mdev )
{
  struct mic_bootparam *bootparam ;
  {
  bootparam = (struct mic_bootparam *)mdev->dp;
  bootparam->magic = 3237998080U;
  bootparam->c2h_shutdown_db = (__s8 )mdev->shutdown_db;
  bootparam->h2c_shutdown_db = -1;
  bootparam->h2c_config_db = -1;
  bootparam->shutdown_status = 0U;
  bootparam->shutdown_card = 0U;
  return;
}
}
int mic_start(struct mic_device *mdev , char const *buf )
{
  int rc ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  {
  ldv_mutex_lock_97___0(& mdev->mic_mutex);
  }
  retry: ;
  if ((unsigned int )mdev->state != 0U) {
    rc = -22;
    goto unlock_ret;
  } else {
  }
  {
  tmp = (*((mdev->ops)->is_fw_ready))(mdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    mic_reset(mdev);
    }
    goto retry;
  } else {
  }
  {
  mdev->dma_mbdev = mbus_register_device((mdev->sdev)->parent, 2, & mic_dma_ops, & mbus_hw_ops,
                                         mdev->mmio.va);
  tmp___2 = IS_ERR((void const *)mdev->dma_mbdev);
  }
  if ((int )tmp___2) {
    {
    tmp___1 = PTR_ERR((void const *)mdev->dma_mbdev);
    rc = (int )tmp___1;
    }
    goto unlock_ret;
  } else {
  }
  {
  mdev->dma_ch = mic_request_dma_chan(mdev);
  }
  if ((unsigned long )mdev->dma_ch == (unsigned long )((struct dma_chan *)0)) {
    rc = -6;
    goto dma_remove;
  } else {
  }
  {
  rc = (*((mdev->ops)->load_mic_fw))(mdev, buf);
  }
  if (rc != 0) {
    goto dma_release;
  } else {
  }
  {
  mic_smpt_restore(mdev);
  mic_intr_restore(mdev);
  (*((mdev->intr_ops)->enable_interrupts))(mdev);
  (*((mdev->ops)->write_spad))(mdev, 14U, (u32 )mdev->dp_dma_addr);
  (*((mdev->ops)->write_spad))(mdev, 15U, (u32 )(mdev->dp_dma_addr >> 32));
  (*((mdev->ops)->send_firmware_intr))(mdev);
  mic_set_state(mdev, 1);
  }
  goto unlock_ret;
  dma_release:
  {
  dma_release_channel(mdev->dma_ch);
  }
  dma_remove:
  {
  ldv_mbus_unregister_device_98(mdev->dma_mbdev);
  }
  unlock_ret:
  {
  ldv_mutex_unlock_99(& mdev->mic_mutex);
  }
  return (rc);
}
}
void mic_stop(struct mic_device *mdev , bool force )
{
  {
  {
  ldv_mutex_lock_100___0(& mdev->mic_mutex);
  }
  if ((unsigned int )mdev->state != 0U || (int )force) {
    {
    mic_virtio_reset_devices(mdev);
    }
    if ((unsigned long )mdev->dma_ch != (unsigned long )((struct dma_chan *)0)) {
      {
      dma_release_channel(mdev->dma_ch);
      mdev->dma_ch = (struct dma_chan *)0;
      }
    } else {
    }
    {
    ldv_mbus_unregister_device_101(mdev->dma_mbdev);
    mic_bootparam_init(mdev);
    mic_reset(mdev);
    }
    if ((unsigned int )mdev->state == 3U) {
      goto unlock;
    } else {
    }
    {
    mic_set_shutdown_status(mdev, 0);
    }
    if ((unsigned int )mdev->state != 5U) {
      {
      mic_set_state(mdev, 0);
      }
    } else {
    }
  } else {
  }
  unlock:
  {
  ldv_mutex_unlock_102___1(& mdev->mic_mutex);
  }
  return;
}
}
void mic_shutdown(struct mic_device *mdev )
{
  struct mic_bootparam *bootparam ;
  s8 db ;
  {
  {
  bootparam = (struct mic_bootparam *)mdev->dp;
  db = bootparam->h2c_shutdown_db;
  ldv_mutex_lock_103___0(& mdev->mic_mutex);
  }
  if ((unsigned int )mdev->state == 1U && (int )db != -1) {
    {
    bootparam->shutdown_card = 1U;
    (*((mdev->ops)->send_intr))(mdev, (int )db);
    mic_set_state(mdev, 2);
    }
  } else {
  }
  {
  ldv_mutex_unlock_104___0(& mdev->mic_mutex);
  }
  return;
}
}
void mic_shutdown_work(struct work_struct *work )
{
  struct mic_device *mdev ;
  struct work_struct const *__mptr ;
  struct mic_bootparam *bootparam ;
  {
  {
  __mptr = (struct work_struct const *)work;
  mdev = (struct mic_device *)__mptr + 0xfffffffffffffd30UL;
  bootparam = (struct mic_bootparam *)mdev->dp;
  ldv_mutex_lock_105(& mdev->mic_mutex);
  mic_set_shutdown_status(mdev, (int )bootparam->shutdown_status);
  bootparam->shutdown_status = 0U;
  }
  if ((unsigned int )mdev->state != 2U && (unsigned int )mdev->state != 5U) {
    {
    mic_set_state(mdev, 2);
    }
  } else {
  }
  {
  ldv_mutex_unlock_106(& mdev->mic_mutex);
  }
  return;
}
}
void mic_reset_trigger_work(struct work_struct *work )
{
  struct mic_device *mdev ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  mdev = (struct mic_device *)__mptr + 0xfffffffffffffd80UL;
  mic_stop(mdev, 0);
  }
  return;
}
}
void mic_complete_resume(struct mic_device *mdev )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )mdev->state != 5U) {
    {
    dev_warn((struct device const *)(mdev->sdev)->parent, "state %d should be %d\n",
             (int )mdev->state, 5);
    }
    return;
  } else {
  }
  {
  tmp = (*((mdev->ops)->is_fw_ready))(mdev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    mic_stop(mdev, 1);
    }
  } else {
  }
  {
  ldv_mutex_lock_107(& mdev->mic_mutex);
  mic_set_state(mdev, 0);
  ldv_mutex_unlock_108(& mdev->mic_mutex);
  }
  return;
}
}
void mic_prepare_suspend(struct mic_device *mdev )
{
  int rc ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  ldv_mutex_lock_109___0(& mdev->mic_mutex);
  }
  {
  if ((int )mdev->state == 0) {
    goto case_0;
  } else {
  }
  if ((int )mdev->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )mdev->state == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  mic_set_state(mdev, 5);
  ldv_mutex_unlock_110___0(& mdev->mic_mutex);
  }
  goto ldv_34629;
  case_1:
  {
  mic_set_state(mdev, 4);
  ldv_mutex_unlock_111(& mdev->mic_mutex);
  tmp = ldv_wait_for_completion_timeout_112(& mdev->reset_wait, 15000UL);
  rc = (int )tmp;
  }
  if (rc == 0) {
    {
    ldv_mutex_lock_113(& mdev->mic_mutex);
    mic_set_state(mdev, 5);
    ldv_mutex_unlock_114(& mdev->mic_mutex);
    mic_stop(mdev, 1);
    }
  } else {
  }
  goto ldv_34629;
  case_2:
  {
  mic_set_state(mdev, 5);
  ldv_mutex_unlock_115(& mdev->mic_mutex);
  tmp___0 = ldv_wait_for_completion_timeout_116(& mdev->reset_wait, 15000UL);
  rc = (int )tmp___0;
  }
  if (rc == 0) {
    {
    mic_stop(mdev, 1);
    }
  } else {
  }
  goto ldv_34629;
  switch_default:
  {
  ldv_mutex_unlock_117(& mdev->mic_mutex);
  }
  goto ldv_34629;
  switch_break: ;
  }
  ldv_34629: ;
  return;
}
}
void mic_suspend(struct mic_device *mdev )
{
  struct mic_bootparam *bootparam ;
  s8 db ;
  {
  {
  bootparam = (struct mic_bootparam *)mdev->dp;
  db = bootparam->h2c_shutdown_db;
  ldv_mutex_lock_118(& mdev->mic_mutex);
  }
  if ((unsigned int )mdev->state == 4U && (int )db != -1) {
    {
    bootparam->shutdown_card = 1U;
    (*((mdev->ops)->send_intr))(mdev, (int )db);
    mic_set_state(mdev, 5);
    }
  } else {
  }
  {
  ldv_mutex_unlock_119(& mdev->mic_mutex);
  }
  return;
}
}
void ldv_dispatch_deregister_29_1(struct mbus_device *arg0 ) ;
void ldv_mbus_unregister_device(void *arg0 , struct mbus_device *arg1 ) ;
void ldv_dispatch_deregister_29_1(struct mbus_device *arg0 )
{
  {
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_3(unsigned long long (*arg0)(struct device * ,
                                                                              struct page * ,
                                                                              unsigned long ,
                                                                              unsigned long ,
                                                                              enum dma_data_direction ,
                                                                              struct dma_attrs * ) ,
                                                   struct device *arg1 , struct page *arg2 ,
                                                   unsigned long arg3 , unsigned long arg4 ,
                                                   enum dma_data_direction arg5 ,
                                                   struct dma_attrs *arg6 )
{
  {
  {
  mic_dma_map_page(arg1, arg2, arg3, arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_9(void (*arg0)(struct device * ,
                                                                unsigned long long ,
                                                                unsigned long , enum dma_data_direction ,
                                                                struct dma_attrs * ) ,
                                                   struct device *arg1 , unsigned long long arg2 ,
                                                   unsigned long arg3 , enum dma_data_direction arg4 ,
                                                   struct dma_attrs *arg5 )
{
  {
  {
  mic_dma_unmap_page(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_10(struct mic_irq *(*arg0)(struct mbus_device * ,
                                                                            enum irqreturn (*)(int ,
                                                                                               void * ) ,
                                                                            enum irqreturn (*)(int ,
                                                                                               void * ) ,
                                                                            char * ,
                                                                            void * ,
                                                                            int ) ,
                                                    struct mbus_device *arg1 , enum irqreturn (*arg2)(int ,
                                                                                                      void * ) ,
                                                    enum irqreturn (*arg3)(int ,
                                                                           void * ) ,
                                                    char *arg4 , void *arg5 , int arg6 )
{
  {
  {
  _mic_request_threaded_irq(arg1, arg2, arg3, (char const *)arg4, arg5, arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_3(void (*arg0)(struct mbus_device * ,
                                                                int ) , struct mbus_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  _mic_ack_interrupt(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_9(void (*arg0)(struct mbus_device * ,
                                                                struct mic_irq * ,
                                                                void * ) , struct mbus_device *arg1 ,
                                                   struct mic_irq *arg2 , void *arg3 )
{
  {
  {
  _mic_free_irq(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_mbus_unregister_device(void *arg0 , struct mbus_device *arg1 )
{
  struct mbus_device *ldv_29_struct_mbus_device_ptr_struct_mbus_device_ptr ;
  {
  {
  ldv_29_struct_mbus_device_ptr_struct_mbus_device_ptr = arg1;
  ldv_dispatch_deregister_29_1(ldv_29_struct_mbus_device_ptr_struct_mbus_device_ptr);
  }
  return;
  return;
}
}
static void ldv_mutex_lock_97___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mbus_unregister_device_98(struct mbus_device *ldv_func_arg1 )
{
  {
  {
  mbus_unregister_device(ldv_func_arg1);
  ldv_mbus_unregister_device((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mbus_unregister_device_101(struct mbus_device *ldv_func_arg1 )
{
  {
  {
  mbus_unregister_device(ldv_func_arg1);
  ldv_mbus_unregister_device((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_103___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_104___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_109___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_110___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_wait_for_completion_timeout_112(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_reset_wait_of_mic_device();
  tmp = wait_for_completion_timeout(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_wait_for_completion_timeout_116(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_reset_wait_of_mic_device();
  tmp = wait_for_completion_timeout(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_97___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101___0(struct mutex *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_98___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102___2(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_write(struct seq_file * , void const * , size_t ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
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
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
__inline static unsigned int mic_desc_size(struct mic_device_desc const *desc )
{
  {
  return ((((unsigned int )desc->num_vq * 12U + (unsigned int )desc->feature_len) * 2U + (unsigned int )desc->config_len) + 8U);
}
}
__inline static struct mic_vqconfig *mic_vq_config(struct mic_device_desc const *desc )
{
  {
  return ((struct mic_vqconfig *)desc + 1U);
}
}
__inline static __u8 *mic_vq_features(struct mic_device_desc const *desc )
{
  struct mic_vqconfig *tmp ;
  {
  {
  tmp = mic_vq_config(desc);
  }
  return ((__u8 *)tmp + (unsigned long )desc->num_vq);
}
}
__inline static __u8 *mic_vq_configspace(struct mic_device_desc const *desc )
{
  __u8 *tmp ;
  {
  {
  tmp = mic_vq_features(desc);
  }
  return (tmp + (unsigned long )((int )desc->feature_len * 2));
}
}
__inline static unsigned int mic_total_desc_size(struct mic_device_desc *desc )
{
  unsigned int tmp ;
  {
  {
  tmp = mic_desc_size((struct mic_device_desc const *)desc);
  }
  return (((tmp + 7U) & 4294967288U) + 16U);
}
}
__inline static u16 __virtio16_to_cpu(bool little_endian , __virtio16 val )
{
  {
  if ((int )little_endian) {
    return (val);
  } else {
    return (val);
  }
}
}
__inline static u32 __virtio32_to_cpu(bool little_endian , __virtio32 val )
{
  {
  if ((int )little_endian) {
    return (val);
  } else {
    return (val);
  }
}
}
__inline static u16 vringh16_to_cpu(struct vringh const *vrh , __virtio16 val )
{
  u16 tmp ;
  {
  {
  tmp = __virtio16_to_cpu((int )vrh->little_endian, (int )val);
  }
  return (tmp);
}
}
__inline static u32 vringh32_to_cpu(struct vringh const *vrh , __virtio32 val )
{
  u32 tmp ;
  {
  {
  tmp = __virtio32_to_cpu((int )vrh->little_endian, val);
  }
  return (tmp);
}
}
__inline static bool mic_vdevup(struct mic_vdev *mvdev )
{
  {
  return ((unsigned int )(mvdev->dd)->status != 0U);
}
}
static struct dentry *mic_dbg ;
static int mic_log_buf_show(struct seq_file *s , void *unused )
{
  void *log_buf_va ;
  int *log_buf_len_va ;
  struct mic_device *mdev ;
  void *kva ;
  int size ;
  unsigned long aper_offset ;
  unsigned int tmp ;
  {
  mdev = (struct mic_device *)s->private;
  if (((unsigned long )mdev == (unsigned long )((struct mic_device *)0) || (unsigned long )mdev->log_buf_addr == (unsigned long )((void *)0)) || (unsigned long )mdev->log_buf_len == (unsigned long )((int *)0)) {
    goto done;
  } else {
  }
  {
  aper_offset = (unsigned long )mdev->log_buf_len - 0xffffffff80000000UL;
  log_buf_len_va = (int *)(mdev->aper.va + aper_offset);
  aper_offset = (unsigned long )mdev->log_buf_addr - 0xffffffff80000000UL;
  log_buf_va = mdev->aper.va + aper_offset;
  tmp = ioread32((void *)log_buf_len_va);
  size = (int )tmp;
  kva = kmalloc((size_t )size, 208U);
  }
  if ((unsigned long )kva == (unsigned long )((void *)0)) {
    goto done;
  } else {
  }
  {
  ldv_mutex_lock_97___1(& mdev->mic_mutex);
  memcpy_fromio(kva, (void const volatile *)log_buf_va, (size_t )size);
  }
  {
  if ((int )mdev->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )mdev->state == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1: ;
  case_2:
  {
  seq_write(s, (void const *)kva, (size_t )size);
  }
  goto ldv_34559;
  switch_default: ;
  goto ldv_34559;
  switch_break: ;
  }
  ldv_34559:
  {
  ldv_mutex_unlock_98___0(& mdev->mic_mutex);
  kfree((void const *)kva);
  }
  done: ;
  return (0);
}
}
static int mic_log_buf_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_log_buf_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_log_buf_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const log_buf_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_log_buf_open,
    0, & mic_log_buf_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_smpt_show(struct seq_file *s , void *pos )
{
  int i ;
  struct mic_device *mdev ;
  unsigned long flags ;
  struct mic_smpt_info *smpt_info ;
  {
  {
  mdev = (struct mic_device *)s->private;
  seq_printf(s, "MIC %-2d |%-10s| %-14s %-10s\n", mdev->id, (char *)"SMPT entry",
             (char *)"SW DMA addr", (char *)"RefCount");
  seq_puts(s, "====================================================\n");
  }
  if ((unsigned long )mdev->smpt != (unsigned long )((struct mic_smpt_info *)0)) {
    {
    smpt_info = mdev->smpt;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(& smpt_info->smpt_lock);
    i = 0;
    }
    goto ldv_34579;
    ldv_34578:
    {
    seq_printf(s, "%9s|%-10d| %-#14llx %-10lld\n", (char *)" ", i, (smpt_info->entry + (unsigned long )i)->dma_addr,
               (smpt_info->entry + (unsigned long )i)->ref_count);
    i = i + 1;
    }
    ldv_34579: ;
    if (i < (int )smpt_info->info.num_reg) {
      goto ldv_34578;
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_98(& smpt_info->smpt_lock, flags);
    }
  } else {
  }
  {
  seq_puts(s, "====================================================\n");
  }
  return (0);
}
}
static int mic_smpt_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_smpt_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_smpt_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const smpt_file_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_smpt_debug_open,
    0, & mic_smpt_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_soft_reset_show(struct seq_file *s , void *pos )
{
  struct mic_device *mdev ;
  {
  {
  mdev = (struct mic_device *)s->private;
  mic_stop(mdev, 1);
  }
  return (0);
}
}
static int mic_soft_reset_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_soft_reset_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_soft_reset_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const soft_reset_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_soft_reset_debug_open,
    0, & mic_soft_reset_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_post_code_show(struct seq_file *s , void *pos )
{
  struct mic_device *mdev ;
  u32 reg ;
  u32 tmp ;
  {
  {
  mdev = (struct mic_device *)s->private;
  tmp = (*((mdev->ops)->get_postcode))(mdev);
  reg = tmp;
  seq_printf(s, "%c%c", reg & 255U, (reg >> 8) & 255U);
  }
  return (0);
}
}
static int mic_post_code_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_post_code_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_post_code_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const post_code_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_post_code_debug_open,
    0, & mic_post_code_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_dp_show(struct seq_file *s , void *pos )
{
  struct mic_device *mdev ;
  struct mic_device_desc *d ;
  struct mic_device_ctrl *dc ;
  struct mic_vqconfig *vqconfig ;
  __u32 *features ;
  __u8 *config ;
  struct mic_bootparam *bootparam ;
  int i ;
  int j ;
  unsigned int tmp ;
  struct mic_vqconfig *tmp___0 ;
  __u8 *tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  mdev = (struct mic_device *)s->private;
  bootparam = (struct mic_bootparam *)mdev->dp;
  seq_printf(s, "Bootparam: magic 0x%x\n", bootparam->magic);
  seq_printf(s, "Bootparam: h2c_shutdown_db %d\n", (int )bootparam->h2c_shutdown_db);
  seq_printf(s, "Bootparam: h2c_config_db %d\n", (int )bootparam->h2c_config_db);
  seq_printf(s, "Bootparam: c2h_shutdown_db %d\n", (int )bootparam->c2h_shutdown_db);
  seq_printf(s, "Bootparam: shutdown_status %d\n", (int )bootparam->shutdown_status);
  seq_printf(s, "Bootparam: shutdown_card %d\n", (int )bootparam->shutdown_card);
  i = 16;
  }
  goto ldv_34641;
  ldv_34640:
  {
  d = (struct mic_device_desc *)mdev->dp + (unsigned long )i;
  tmp = mic_desc_size((struct mic_device_desc const *)d);
  dc = (struct mic_device_ctrl *)d + ((unsigned long )(tmp + 7U) & 4294967288UL);
  }
  if ((int )d->type == 0) {
    goto ldv_34632;
  } else {
  }
  if ((int )d->type == -1) {
    goto ldv_34633;
  } else {
  }
  {
  seq_printf(s, "Type %d ", (int )d->type);
  seq_printf(s, "Num VQ %d ", (int )d->num_vq);
  seq_printf(s, "Feature Len %d\n", (int )d->feature_len);
  seq_printf(s, "Config Len %d ", (int )d->config_len);
  seq_printf(s, "Shutdown Status %d\n", (int )d->status);
  j = 0;
  }
  goto ldv_34635;
  ldv_34634:
  {
  tmp___0 = mic_vq_config((struct mic_device_desc const *)d);
  vqconfig = tmp___0 + (unsigned long )j;
  seq_printf(s, "vqconfig[%d]: ", j);
  seq_printf(s, "address 0x%llx ", vqconfig->address);
  seq_printf(s, "num %d ", (int )vqconfig->num);
  seq_printf(s, "used address 0x%llx\n", vqconfig->used_address);
  j = j + 1;
  }
  ldv_34635: ;
  if (j < (int )d->num_vq) {
    goto ldv_34634;
  } else {
  }
  {
  tmp___1 = mic_vq_features((struct mic_device_desc const *)d);
  features = (__u32 *)tmp___1;
  seq_printf(s, "Features: Host 0x%x ", *features);
  seq_printf(s, "Guest 0x%x\n", *(features + 1UL));
  config = mic_vq_configspace((struct mic_device_desc const *)d);
  j = 0;
  }
  goto ldv_34638;
  ldv_34637:
  {
  seq_printf(s, "config[%d]=%d\n", j, (int )*(config + (unsigned long )j));
  j = j + 1;
  }
  ldv_34638: ;
  if (j < (int )d->config_len) {
    goto ldv_34637;
  } else {
  }
  {
  seq_puts(s, "Device control:\n");
  seq_printf(s, "Config Change %d ", (int )dc->config_change);
  seq_printf(s, "Vdev reset %d\n", (int )dc->vdev_reset);
  seq_printf(s, "Guest Ack %d ", (int )dc->guest_ack);
  seq_printf(s, "Host ack %d\n", (int )dc->host_ack);
  seq_printf(s, "Used address updated %d ", (int )dc->used_address_updated);
  seq_printf(s, "Vdev 0x%llx\n", dc->vdev);
  seq_printf(s, "c2h doorbell %d ", (int )dc->c2h_vdev_db);
  seq_printf(s, "h2c doorbell %d\n", (int )dc->h2c_vdev_db);
  }
  ldv_34633:
  {
  tmp___2 = mic_total_desc_size(d);
  i = (int )((unsigned int )i + tmp___2);
  }
  ldv_34641: ;
  if (i <= 4095) {
    goto ldv_34640;
  } else {
  }
  ldv_34632: ;
  return (0);
}
}
static int mic_dp_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_dp_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_dp_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const dp_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_dp_debug_open,
    0, & mic_dp_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_vdev_info_show(struct seq_file *s , void *unused )
{
  struct mic_device *mdev ;
  struct list_head *pos ;
  struct list_head *tmp ;
  struct mic_vdev *mvdev ;
  int i ;
  int j ;
  struct list_head const *__mptr ;
  bool tmp___0 ;
  struct vring_desc *desc ;
  struct vring_avail *avail ;
  struct vring_used *used ;
  struct mic_vringh *mvr ;
  struct vringh *vrh ;
  int num ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  u16 tmp___7 ;
  u16 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  {
  {
  mdev = (struct mic_device *)s->private;
  ldv_mutex_lock_101___0(& mdev->mic_mutex);
  pos = mdev->vdev_list.next;
  tmp = pos->next;
  }
  goto ldv_34683;
  ldv_34682:
  {
  __mptr = (struct list_head const *)pos;
  mvdev = (struct mic_vdev *)__mptr + 0xfffffffffffff940UL;
  tmp___0 = mic_vdevup(mvdev);
  seq_printf(s, "VDEV type %d state %s in %ld out %ld\n", mvdev->virtio_id, (int )tmp___0 ? (char *)"UP" : (char *)"DOWN",
             mvdev->in_bytes, mvdev->out_bytes);
  i = 0;
  }
  goto ldv_34680;
  ldv_34679:
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )i;
  vrh = & mvr->vrh;
  num = (int )vrh->vring.num;
  if (num == 0) {
    goto ldv_34669;
  } else {
  }
  {
  desc = vrh->vring.desc;
  seq_printf(s, "vring i %d avail_idx %d", i, (int )(mvr->vring.info)->avail_idx & (num + -1));
  seq_printf(s, " vring i %d avail_idx %d\n", i, (int )(mvr->vring.info)->avail_idx);
  seq_printf(s, "vrh i %d weak_barriers %d", i, (int )vrh->weak_barriers);
  seq_printf(s, " last_avail_idx %d last_used_idx %d", (int )vrh->last_avail_idx,
             (int )vrh->last_used_idx);
  seq_printf(s, " completed %d\n", vrh->completed);
  j = 0;
  }
  goto ldv_34671;
  ldv_34670:
  {
  seq_printf(s, "desc[%d] addr 0x%llx len %d", j, desc->addr, desc->len);
  seq_printf(s, " flags 0x%x next %d\n", (int )desc->flags, (int )desc->next);
  desc = desc + 1;
  j = j + 1;
  }
  ldv_34671: ;
  if (j < num) {
    goto ldv_34670;
  } else {
  }
  {
  avail = vrh->vring.avail;
  tmp___1 = vringh16_to_cpu((struct vringh const *)vrh, (int )avail->idx);
  tmp___2 = vringh16_to_cpu((struct vringh const *)vrh, (int )avail->flags);
  seq_printf(s, "avail flags 0x%x idx %d\n", (int )tmp___2, (int )tmp___1 & (num + -1));
  tmp___3 = vringh16_to_cpu((struct vringh const *)vrh, (int )avail->idx);
  tmp___4 = vringh16_to_cpu((struct vringh const *)vrh, (int )avail->flags);
  seq_printf(s, "avail flags 0x%x idx %d\n", (int )tmp___4, (int )tmp___3);
  j = 0;
  }
  goto ldv_34674;
  ldv_34673:
  {
  seq_printf(s, "avail ring[%d] %d\n", j, (int )avail->ring[j]);
  j = j + 1;
  }
  ldv_34674: ;
  if (j < num) {
    goto ldv_34673;
  } else {
  }
  {
  used = vrh->vring.used;
  tmp___5 = vringh16_to_cpu((struct vringh const *)vrh, (int )used->idx);
  tmp___6 = vringh16_to_cpu((struct vringh const *)vrh, (int )used->flags);
  seq_printf(s, "used flags 0x%x idx %d\n", (int )tmp___6, (int )tmp___5 & (num + -1));
  tmp___7 = vringh16_to_cpu((struct vringh const *)vrh, (int )used->idx);
  tmp___8 = vringh16_to_cpu((struct vringh const *)vrh, (int )used->flags);
  seq_printf(s, "used flags 0x%x idx %d\n", (int )tmp___8, (int )tmp___7);
  j = 0;
  }
  goto ldv_34677;
  ldv_34676:
  {
  tmp___9 = vringh32_to_cpu((struct vringh const *)vrh, used->ring[j].len);
  tmp___10 = vringh32_to_cpu((struct vringh const *)vrh, used->ring[j].id);
  seq_printf(s, "used ring[%d] id %d len %d\n", j, tmp___10, tmp___9);
  j = j + 1;
  }
  ldv_34677: ;
  if (j < num) {
    goto ldv_34676;
  } else {
  }
  ldv_34669:
  i = i + 1;
  ldv_34680: ;
  if (i <= 3) {
    goto ldv_34679;
  } else {
  }
  pos = tmp;
  tmp = pos->next;
  ldv_34683: ;
  if ((unsigned long )pos != (unsigned long )(& mdev->vdev_list)) {
    goto ldv_34682;
  } else {
  }
  {
  ldv_mutex_unlock_102___2(& mdev->mic_mutex);
  }
  return (0);
}
}
static int mic_vdev_info_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_vdev_info_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_vdev_info_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const vdev_info_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_vdev_info_debug_open,
    0, & mic_vdev_info_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int mic_msi_irq_info_show(struct seq_file *s , void *pos )
{
  struct mic_device *mdev ;
  int reg ;
  int i ;
  int j ;
  u16 entry ;
  u16 vector ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  u32 tmp ;
  bool tmp___0 ;
  {
  {
  mdev = (struct mic_device *)s->private;
  __mptr = (struct device const *)(mdev->sdev)->parent;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = pci_dev_msi_enabled(pdev);
  }
  if ((int )tmp___0) {
    i = 0;
    goto ldv_34714;
    ldv_34713: ;
    if ((unsigned int )*((unsigned char *)pdev + 2522UL) != 0U) {
      entry = (mdev->irq_info.msix_entries + (unsigned long )i)->entry;
      vector = (u16 )(mdev->irq_info.msix_entries + (unsigned long )i)->vector;
    } else {
      entry = 0U;
      vector = (u16 )pdev->irq;
    }
    {
    tmp = (*((mdev->intr_ops)->read_msi_to_src_map))(mdev, (int )entry);
    reg = (int )tmp;
    seq_printf(s, "%s %-10d %s %-10d MXAR[%d]: %08X\n", (char *)"IRQ:", (int )vector,
               (char *)"Entry:", (int )entry, i, reg);
    seq_printf(s, "%-10s", (char *)"offset:");
    j = 31;
    }
    goto ldv_34708;
    ldv_34707:
    {
    seq_printf(s, "%4d ", j);
    j = j - 1;
    }
    ldv_34708: ;
    if (j >= 0) {
      goto ldv_34707;
    } else {
    }
    {
    seq_puts(s, "\n");
    seq_printf(s, "%-10s", (char *)"count:");
    j = 31;
    }
    goto ldv_34711;
    ldv_34710:
    {
    seq_printf(s, "%4d ", (int )((unsigned long )*(mdev->irq_info.mic_msi_map + (unsigned long )i) >> j) & 1);
    j = j - 1;
    }
    ldv_34711: ;
    if (j >= 0) {
      goto ldv_34710;
    } else {
    }
    {
    seq_puts(s, "\n\n");
    i = i + 1;
    }
    ldv_34714: ;
    if (i < (int )mdev->irq_info.num_vectors) {
      goto ldv_34713;
    } else {
    }
  } else {
    {
    seq_puts(s, "MSI/MSIx interrupts not enabled\n");
    }
  }
  return (0);
}
}
static int mic_msi_irq_info_debug_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mic_msi_irq_info_show, inode->i_private);
  }
  return (tmp);
}
}
static int mic_msi_irq_info_debug_release(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_release(inode, file);
  }
  return (tmp);
}
}
static struct file_operations const msi_irq_info_ops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & mic_msi_irq_info_debug_open,
    0, & mic_msi_irq_info_debug_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void mic_create_debug_dir(struct mic_device *mdev )
{
  char const *tmp ;
  {
  if ((unsigned long )mic_dbg == (unsigned long )((struct dentry *)0)) {
    return;
  } else {
  }
  {
  tmp = dev_name((struct device const *)mdev->sdev);
  mdev->dbg_dir = debugfs_create_dir(tmp, mic_dbg);
  }
  if ((unsigned long )mdev->dbg_dir == (unsigned long )((struct dentry *)0)) {
    return;
  } else {
  }
  {
  debugfs_create_file("log_buf", 292, mdev->dbg_dir, (void *)mdev, & log_buf_ops);
  debugfs_create_file("smpt", 292, mdev->dbg_dir, (void *)mdev, & smpt_file_ops);
  debugfs_create_file("soft_reset", 292, mdev->dbg_dir, (void *)mdev, & soft_reset_ops);
  debugfs_create_file("post_code", 292, mdev->dbg_dir, (void *)mdev, & post_code_ops);
  debugfs_create_file("dp", 292, mdev->dbg_dir, (void *)mdev, & dp_ops);
  debugfs_create_file("vdev_info", 292, mdev->dbg_dir, (void *)mdev, & vdev_info_ops);
  debugfs_create_file("msi_irq_info", 292, mdev->dbg_dir, (void *)mdev, & msi_irq_info_ops);
  }
  return;
}
}
void mic_delete_debug_dir(struct mic_device *mdev )
{
  {
  if ((unsigned long )mdev->dbg_dir == (unsigned long )((struct dentry *)0)) {
    return;
  } else {
  }
  {
  debugfs_remove_recursive(mdev->dbg_dir);
  }
  return;
}
}
void mic_init_debugfs(void)
{
  {
  {
  mic_dbg = debugfs_create_dir("mic_host", (struct dentry *)0);
  }
  if ((unsigned long )mic_dbg == (unsigned long )((struct dentry *)0)) {
    {
    printk("\vcan\'t create debugfs dir\n");
    }
  } else {
  }
  return;
}
}
void mic_exit_debugfs(void)
{
  {
  {
  debugfs_remove(mic_dbg);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_1_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_3_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_3_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_4_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_4_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_5_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_5_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_6_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_6_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_7_24(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_7_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_4_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_5_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_6_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_7_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_6_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_7_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_0_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_0_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_24_1_default ;
  long long *ldv_0_ldv_param_24_3_default ;
  unsigned int ldv_0_ldv_param_27_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  long long ldv_0_ldv_param_5_1_default ;
  int ldv_0_ldv_param_5_2_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  struct poll_table_struct *ldv_0_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_0_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_0_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_0_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_0_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_0_27(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                               ldv_0_ldv_param_27_1_default, ldv_0_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35266;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_0_24(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_24_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_24_3_default);
  ldv_free((void *)ldv_0_ldv_param_24_1_default);
  ldv_free((void *)ldv_0_ldv_param_24_3_default);
  }
  goto ldv_35266;
  case_3___0: ;
  if ((unsigned long )ldv_0_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_23(ldv_0_callback_poll, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35266;
  case_4: ;
  if ((unsigned long )ldv_0_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_mmap, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35266;
  case_5:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
  }
  goto ldv_35266;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35266: ;
  goto ldv_35272;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35272: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_1_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_1_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_1_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_24_1_default ;
  long long *ldv_1_ldv_param_24_3_default ;
  unsigned int ldv_1_ldv_param_27_1_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  long long ldv_1_ldv_param_5_1_default ;
  int ldv_1_ldv_param_5_2_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  struct poll_table_struct *ldv_1_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_1_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_1_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_1_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_1_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_1_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_file_operations_instance_release_1_2(ldv_1_container_file_operations->release,
                                           ldv_1_resource_inode, ldv_1_resource_file);
  }
  goto ldv_main_1;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_1_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_1_27(ldv_1_callback_unlocked_ioctl, ldv_1_resource_file,
                                               ldv_1_ldv_param_27_1_default, ldv_1_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35317;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_1_24(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_24_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_24_3_default);
  ldv_free((void *)ldv_1_ldv_param_24_1_default);
  ldv_free((void *)ldv_1_ldv_param_24_3_default);
  }
  goto ldv_35317;
  case_3___0: ;
  if ((unsigned long )ldv_1_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_1_23(ldv_1_callback_poll, ldv_1_resource_file,
                                               ldv_1_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35317;
  case_4: ;
  if ((unsigned long )ldv_1_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_1_22(ldv_1_callback_mmap, ldv_1_resource_file,
                                               ldv_1_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35317;
  case_5:
  {
  ldv_file_operations_instance_callback_1_5(ldv_1_callback_llseek, ldv_1_resource_file,
                                            ldv_1_ldv_param_5_1_default, ldv_1_ldv_param_5_2_default);
  }
  goto ldv_35317;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35317: ;
  goto ldv_35323;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35323: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_file_operations_instance_3(void *arg0 )
{
  long long (*ldv_3_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_3_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_24_1_default ;
  long long *ldv_3_ldv_param_24_3_default ;
  unsigned int ldv_3_ldv_param_27_1_default ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  long long ldv_3_ldv_param_5_1_default ;
  int ldv_3_ldv_param_5_2_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
  struct poll_table_struct *ldv_3_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_3_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_3_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_3_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_3_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_3_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_3_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_3_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_3_ret_default = ldv_file_operations_instance_probe_3_12(ldv_3_container_file_operations->open,
                                                                ldv_3_resource_inode,
                                                                ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_file);
    ldv_free((void *)ldv_3_resource_inode);
    }
    return;
  }
  return;
  ldv_call_3:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_3_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_3;
  case_2:
  {
  ldv_file_operations_instance_release_3_2(ldv_3_container_file_operations->release,
                                           ldv_3_resource_inode, ldv_3_resource_file);
  }
  goto ldv_main_3;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_3_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_3_27(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                               ldv_3_ldv_param_27_1_default, ldv_3_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35368;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_3_24(ldv_3_callback_read, ldv_3_resource_file,
                                             ldv_3_ldv_param_24_1_default, ldv_3_size_cnt_write_size,
                                             ldv_3_ldv_param_24_3_default);
  ldv_free((void *)ldv_3_ldv_param_24_1_default);
  ldv_free((void *)ldv_3_ldv_param_24_3_default);
  }
  goto ldv_35368;
  case_3___0: ;
  if ((unsigned long )ldv_3_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_3_23(ldv_3_callback_poll, ldv_3_resource_file,
                                               ldv_3_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35368;
  case_4: ;
  if ((unsigned long )ldv_3_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_3_22(ldv_3_callback_mmap, ldv_3_resource_file,
                                               ldv_3_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35368;
  case_5:
  {
  ldv_file_operations_instance_callback_3_5(ldv_3_callback_llseek, ldv_3_resource_file,
                                            ldv_3_ldv_param_5_1_default, ldv_3_ldv_param_5_2_default);
  }
  goto ldv_35368;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35368: ;
  goto ldv_35374;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35374: ;
  goto ldv_call_3;
  goto ldv_call_3;
  return;
}
}
void ldv_file_operations_file_operations_instance_4(void *arg0 )
{
  long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_4_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_4_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_4_container_file_operations ;
  char *ldv_4_ldv_param_24_1_default ;
  long long *ldv_4_ldv_param_24_3_default ;
  unsigned int ldv_4_ldv_param_27_1_default ;
  char *ldv_4_ldv_param_4_1_default ;
  long long *ldv_4_ldv_param_4_3_default ;
  long long ldv_4_ldv_param_5_1_default ;
  int ldv_4_ldv_param_5_2_default ;
  struct file *ldv_4_resource_file ;
  struct inode *ldv_4_resource_inode ;
  int ldv_4_ret_default ;
  struct poll_table_struct *ldv_4_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_4_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_4_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_4_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_4_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_4_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_4_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_4_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_4_ret_default = ldv_file_operations_instance_probe_4_12(ldv_4_container_file_operations->open,
                                                                ldv_4_resource_inode,
                                                                ldv_4_resource_file);
    ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_4_ret_default == 0);
      }
      goto ldv_call_4;
    } else {
      {
      ldv_assume(ldv_4_ret_default != 0);
      }
      goto ldv_main_4;
    }
  } else {
    {
    ldv_free((void *)ldv_4_resource_file);
    ldv_free((void *)ldv_4_resource_inode);
    }
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_4_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_file_operations_instance_release_4_2(ldv_4_container_file_operations->release,
                                           ldv_4_resource_inode, ldv_4_resource_file);
  }
  goto ldv_main_4;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_4_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_4_27(ldv_4_callback_unlocked_ioctl, ldv_4_resource_file,
                                               ldv_4_ldv_param_27_1_default, ldv_4_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35419;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_4_24(ldv_4_callback_read, ldv_4_resource_file,
                                             ldv_4_ldv_param_24_1_default, ldv_4_size_cnt_write_size,
                                             ldv_4_ldv_param_24_3_default);
  ldv_free((void *)ldv_4_ldv_param_24_1_default);
  ldv_free((void *)ldv_4_ldv_param_24_3_default);
  }
  goto ldv_35419;
  case_3___0: ;
  if ((unsigned long )ldv_4_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_4_23(ldv_4_callback_poll, ldv_4_resource_file,
                                               ldv_4_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35419;
  case_4: ;
  if ((unsigned long )ldv_4_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_4_22(ldv_4_callback_mmap, ldv_4_resource_file,
                                               ldv_4_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35419;
  case_5:
  {
  ldv_file_operations_instance_callback_4_5(ldv_4_callback_llseek, ldv_4_resource_file,
                                            ldv_4_ldv_param_5_1_default, ldv_4_ldv_param_5_2_default);
  }
  goto ldv_35419;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35419: ;
  goto ldv_35425;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35425: ;
  goto ldv_call_4;
  goto ldv_call_4;
  return;
}
}
void ldv_file_operations_file_operations_instance_5(void *arg0 )
{
  long long (*ldv_5_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_5_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_5_container_file_operations ;
  char *ldv_5_ldv_param_24_1_default ;
  long long *ldv_5_ldv_param_24_3_default ;
  unsigned int ldv_5_ldv_param_27_1_default ;
  char *ldv_5_ldv_param_4_1_default ;
  long long *ldv_5_ldv_param_4_3_default ;
  long long ldv_5_ldv_param_5_1_default ;
  int ldv_5_ldv_param_5_2_default ;
  struct file *ldv_5_resource_file ;
  struct inode *ldv_5_resource_inode ;
  int ldv_5_ret_default ;
  struct poll_table_struct *ldv_5_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_5_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_5_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_5_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_5_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_5_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_5_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_5_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_5;
  return;
  ldv_main_5:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_5_ret_default = ldv_file_operations_instance_probe_5_12(ldv_5_container_file_operations->open,
                                                                ldv_5_resource_inode,
                                                                ldv_5_resource_file);
    ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      ldv_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    {
    ldv_free((void *)ldv_5_resource_file);
    ldv_free((void *)ldv_5_resource_inode);
    }
    return;
  }
  return;
  ldv_call_5:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_5_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
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
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_file_operations_instance_release_5_2(ldv_5_container_file_operations->release,
                                           ldv_5_resource_inode, ldv_5_resource_file);
  }
  goto ldv_main_5;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_5_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_5_27(ldv_5_callback_unlocked_ioctl, ldv_5_resource_file,
                                               ldv_5_ldv_param_27_1_default, ldv_5_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35470;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_5_24(ldv_5_callback_read, ldv_5_resource_file,
                                             ldv_5_ldv_param_24_1_default, ldv_5_size_cnt_write_size,
                                             ldv_5_ldv_param_24_3_default);
  ldv_free((void *)ldv_5_ldv_param_24_1_default);
  ldv_free((void *)ldv_5_ldv_param_24_3_default);
  }
  goto ldv_35470;
  case_3___0: ;
  if ((unsigned long )ldv_5_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_5_23(ldv_5_callback_poll, ldv_5_resource_file,
                                               ldv_5_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35470;
  case_4: ;
  if ((unsigned long )ldv_5_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_5_22(ldv_5_callback_mmap, ldv_5_resource_file,
                                               ldv_5_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35470;
  case_5:
  {
  ldv_file_operations_instance_callback_5_5(ldv_5_callback_llseek, ldv_5_resource_file,
                                            ldv_5_ldv_param_5_1_default, ldv_5_ldv_param_5_2_default);
  }
  goto ldv_35470;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35470: ;
  goto ldv_35476;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35476: ;
  goto ldv_call_5;
  goto ldv_call_5;
  return;
}
}
void ldv_file_operations_file_operations_instance_6(void *arg0 )
{
  long long (*ldv_6_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_6_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_6_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_6_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_6_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_6_container_file_operations ;
  char *ldv_6_ldv_param_24_1_default ;
  long long *ldv_6_ldv_param_24_3_default ;
  unsigned int ldv_6_ldv_param_27_1_default ;
  char *ldv_6_ldv_param_4_1_default ;
  long long *ldv_6_ldv_param_4_3_default ;
  long long ldv_6_ldv_param_5_1_default ;
  int ldv_6_ldv_param_5_2_default ;
  struct file *ldv_6_resource_file ;
  struct inode *ldv_6_resource_inode ;
  int ldv_6_ret_default ;
  struct poll_table_struct *ldv_6_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_6_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_6_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_6_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_6_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_6_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_6_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_6_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_6;
  return;
  ldv_main_6:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_6_ret_default = ldv_file_operations_instance_probe_6_12(ldv_6_container_file_operations->open,
                                                                ldv_6_resource_inode,
                                                                ldv_6_resource_file);
    ldv_6_ret_default = ldv_filter_err_code(ldv_6_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_6_ret_default == 0);
      }
      goto ldv_call_6;
    } else {
      {
      ldv_assume(ldv_6_ret_default != 0);
      }
      goto ldv_main_6;
    }
  } else {
    {
    ldv_free((void *)ldv_6_resource_file);
    ldv_free((void *)ldv_6_resource_inode);
    }
    return;
  }
  return;
  ldv_call_6:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_6_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_6_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_6_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_6_container_file_operations->write,
                                           ldv_6_resource_file, ldv_6_ldv_param_4_1_default,
                                           ldv_6_size_cnt_write_size, ldv_6_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_6_ldv_param_4_1_default);
  ldv_free((void *)ldv_6_ldv_param_4_3_default);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_file_operations_instance_release_6_2(ldv_6_container_file_operations->release,
                                           ldv_6_resource_inode, ldv_6_resource_file);
  }
  goto ldv_main_6;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_6_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_6_27(ldv_6_callback_unlocked_ioctl, ldv_6_resource_file,
                                               ldv_6_ldv_param_27_1_default, ldv_6_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35521;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_6_24(ldv_6_callback_read, ldv_6_resource_file,
                                             ldv_6_ldv_param_24_1_default, ldv_6_size_cnt_write_size,
                                             ldv_6_ldv_param_24_3_default);
  ldv_free((void *)ldv_6_ldv_param_24_1_default);
  ldv_free((void *)ldv_6_ldv_param_24_3_default);
  }
  goto ldv_35521;
  case_3___0: ;
  if ((unsigned long )ldv_6_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_6_23(ldv_6_callback_poll, ldv_6_resource_file,
                                               ldv_6_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35521;
  case_4: ;
  if ((unsigned long )ldv_6_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_6_22(ldv_6_callback_mmap, ldv_6_resource_file,
                                               ldv_6_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35521;
  case_5:
  {
  ldv_file_operations_instance_callback_6_5(ldv_6_callback_llseek, ldv_6_resource_file,
                                            ldv_6_ldv_param_5_1_default, ldv_6_ldv_param_5_2_default);
  }
  goto ldv_35521;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35521: ;
  goto ldv_35527;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35527: ;
  goto ldv_call_6;
  goto ldv_call_6;
  return;
}
}
void ldv_file_operations_file_operations_instance_7(void *arg0 )
{
  long long (*ldv_7_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_7_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_7_container_file_operations ;
  char *ldv_7_ldv_param_24_1_default ;
  long long *ldv_7_ldv_param_24_3_default ;
  unsigned int ldv_7_ldv_param_27_1_default ;
  char *ldv_7_ldv_param_4_1_default ;
  long long *ldv_7_ldv_param_4_3_default ;
  long long ldv_7_ldv_param_5_1_default ;
  int ldv_7_ldv_param_5_2_default ;
  struct file *ldv_7_resource_file ;
  struct inode *ldv_7_resource_inode ;
  int ldv_7_ret_default ;
  struct poll_table_struct *ldv_7_size_cnt_struct_poll_table_struct_ptr ;
  struct vm_area_struct *ldv_7_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_7_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_7_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_7_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_7_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_7_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_7_size_cnt_struct_poll_table_struct_ptr = (struct poll_table_struct *)((long )tmp___1);
  }
  goto ldv_main_7;
  return;
  ldv_main_7:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_7_ret_default = ldv_file_operations_instance_probe_7_12(ldv_7_container_file_operations->open,
                                                                ldv_7_resource_inode,
                                                                ldv_7_resource_file);
    ldv_7_ret_default = ldv_filter_err_code(ldv_7_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_7_ret_default == 0);
      }
      goto ldv_call_7;
    } else {
      {
      ldv_assume(ldv_7_ret_default != 0);
      }
      goto ldv_main_7;
    }
  } else {
    {
    ldv_free((void *)ldv_7_resource_file);
    ldv_free((void *)ldv_7_resource_inode);
    }
    return;
  }
  return;
  ldv_call_7:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default___0;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume((unsigned long )ldv_7_size_cnt_struct_poll_table_struct_ptr <= (unsigned long )((struct poll_table_struct *)2147479552));
  }
  if ((unsigned long )ldv_7_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_7_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_7_container_file_operations->write,
                                           ldv_7_resource_file, ldv_7_ldv_param_4_1_default,
                                           ldv_7_size_cnt_write_size, ldv_7_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_7_ldv_param_4_1_default);
  ldv_free((void *)ldv_7_ldv_param_4_3_default);
  }
  goto ldv_call_7;
  case_2:
  {
  ldv_file_operations_instance_release_7_2(ldv_7_container_file_operations->release,
                                           ldv_7_resource_inode, ldv_7_resource_file);
  }
  goto ldv_main_7;
  case_3:
  {
  tmp___7 = ldv_undef_int();
  }
  {
  if (tmp___7 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___7 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___7 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___7 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___7 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_7_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_7_27(ldv_7_callback_unlocked_ioctl, ldv_7_resource_file,
                                               ldv_7_ldv_param_27_1_default, ldv_7_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_35572;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_24_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_24_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_7_24(ldv_7_callback_read, ldv_7_resource_file,
                                             ldv_7_ldv_param_24_1_default, ldv_7_size_cnt_write_size,
                                             ldv_7_ldv_param_24_3_default);
  ldv_free((void *)ldv_7_ldv_param_24_1_default);
  ldv_free((void *)ldv_7_ldv_param_24_3_default);
  }
  goto ldv_35572;
  case_3___0: ;
  if ((unsigned long )ldv_7_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_7_23(ldv_7_callback_poll, ldv_7_resource_file,
                                               ldv_7_size_cnt_struct_poll_table_struct_ptr);
    }
  } else {
  }
  goto ldv_35572;
  case_4: ;
  if ((unsigned long )ldv_7_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_7_22(ldv_7_callback_mmap, ldv_7_resource_file,
                                               ldv_7_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_35572;
  case_5:
  {
  ldv_file_operations_instance_callback_7_5(ldv_7_callback_llseek, ldv_7_resource_file,
                                            ldv_7_ldv_param_5_1_default, ldv_7_ldv_param_5_2_default);
  }
  goto ldv_35572;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_35572: ;
  goto ldv_35578;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35578: ;
  goto ldv_call_7;
  goto ldv_call_7;
  return;
}
}
void ldv_file_operations_instance_callback_0_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_1_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_3_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_3_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_4_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_4_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_5_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_5_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_6_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_6_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_7_24(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_7_5(long long (*arg0)(struct file * , long long ,
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
  tmp = mic_dp_debug_open(arg1, arg2);
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
  tmp = mic_log_buf_open(arg1, arg2);
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
  tmp = mic_msi_irq_info_debug_open(arg1, arg2);
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
  tmp = mic_post_code_debug_open(arg1, arg2);
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
  tmp = mic_smpt_debug_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_6_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = mic_soft_reset_debug_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_7_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = mic_vdev_info_debug_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_dp_debug_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_log_buf_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_msi_irq_info_debug_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_post_code_debug_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_5_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_smpt_debug_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_6_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_soft_reset_debug_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_7_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  mic_vdev_info_debug_release(arg1, arg2);
  }
  return;
}
}
static void ldv_mutex_lock_97___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_smpt_lock_of_mic_smpt_info();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_101___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
extern void might_fault(void) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static phys_addr_t virt_to_phys(void volatile *address )
{
  unsigned long tmp ;
  {
  {
  tmp = __phys_addr((unsigned long )address);
  }
  return ((phys_addr_t )tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int remap_pfn_range(struct vm_area_struct * , unsigned long , unsigned long ,
                           unsigned long , pgprot_t ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
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
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
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
int mic_virtio_add_device(struct mic_vdev *mvdev , void *argp ) ;
void mic_virtio_del_device(struct mic_vdev *mvdev ) ;
int mic_virtio_config_change(struct mic_vdev *mvdev , void *argp ) ;
int mic_virtio_copy_desc(struct mic_vdev *mvdev , struct mic_copy_desc *copy ) ;
__inline static struct device *mic_dev(struct mic_vdev *mvdev )
{
  {
  return (((mvdev->mdev)->sdev)->parent);
}
}
__inline static int mic_vdev_inited(struct mic_vdev *mvdev )
{
  struct device *tmp ;
  struct device *tmp___0 ;
  {
  if ((unsigned long )mvdev->dd == (unsigned long )((struct mic_device_desc *)0) || (int )(mvdev->dd)->type == 0) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_vdev_inited", 136,
            -22);
    }
    return (-22);
  } else {
  }
  if ((int )(mvdev->dd)->type == -1) {
    {
    tmp___0 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___0, "%s %d err %d\n", "mic_vdev_inited",
            143, -19);
    }
    return (-19);
  } else {
  }
  return (0);
}
}
int mic_open(struct inode *inode , struct file *f )
{
  struct mic_vdev *mvdev ;
  struct mic_device *mdev ;
  struct cdev const *__mptr ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  __mptr = (struct cdev const *)inode->__annonCompField69.i_cdev;
  mdev = (struct mic_device *)__mptr + 0xfffffffffffffc40UL;
  tmp = kzalloc(1760UL, 208U);
  mvdev = (struct mic_vdev *)tmp;
  }
  if ((unsigned long )mvdev == (unsigned long )((struct mic_vdev *)0)) {
    return (-12);
  } else {
  }
  {
  __init_waitqueue_head(& mvdev->waitq, "&mvdev->waitq", & __key);
  INIT_LIST_HEAD(& mvdev->list);
  mvdev->mdev = mdev;
  mvdev->virtio_id = -1;
  f->private_data = (void *)mvdev;
  }
  return (0);
}
}
int mic_release(struct inode *inode , struct file *f )
{
  struct mic_vdev *mvdev ;
  {
  mvdev = (struct mic_vdev *)f->private_data;
  if (mvdev->virtio_id != -1) {
    {
    mic_virtio_del_device(mvdev);
    }
  } else {
  }
  {
  f->private_data = (void *)0;
  kfree((void const *)mvdev);
  }
  return (0);
}
}
long mic_ioctl(struct file *f , unsigned int cmd , unsigned long arg )
{
  struct mic_vdev *mvdev ;
  void *argp ;
  int ret ;
  struct device *tmp ;
  struct mic_copy_desc copy ;
  unsigned long tmp___0 ;
  struct _ddebug descriptor ;
  struct device *tmp___1 ;
  long tmp___2 ;
  struct device *tmp___3 ;
  struct device *tmp___4 ;
  unsigned long tmp___5 ;
  struct device *tmp___6 ;
  {
  mvdev = (struct mic_vdev *)f->private_data;
  argp = (void *)arg;
  {
  if (cmd == 3221779201U) {
    goto case_3221779201;
  } else {
  }
  if (cmd == 3221779202U) {
    goto case_3221779202;
  } else {
  }
  if (cmd == 3221779205U) {
    goto case_3221779205;
  } else {
  }
  goto switch_default;
  case_3221779201:
  {
  ret = mic_virtio_add_device(mvdev, argp);
  }
  if (ret < 0) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d errno ret %d\n", "mic_ioctl", 73,
            ret);
    }
    return ((long )ret);
  } else {
  }
  goto ldv_34478;
  case_3221779202:
  {
  ret = mic_vdev_inited(mvdev);
  }
  if (ret != 0) {
    return ((long )ret);
  } else {
  }
  {
  tmp___0 = copy_from_user((void *)(& copy), (void const *)argp, 24UL);
  }
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_ioctl";
  descriptor.filename = "drivers/misc/mic/host/mic_fops.c";
  descriptor.format = "%s %d === iovcnt 0x%x vr_idx 0x%x update_used %d\n";
  descriptor.lineno = 92U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___1 = mic_dev(mvdev);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1, "%s %d === iovcnt 0x%x vr_idx 0x%x update_used %d\n",
                      "mic_ioctl", 92, copy.iovcnt, (int )copy.vr_idx, (int )copy.update_used);
    }
  } else {
  }
  {
  ret = mic_virtio_copy_desc(mvdev, & copy);
  }
  if (ret < 0) {
    {
    tmp___3 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___3, "%s %d errno ret %d\n", "mic_ioctl",
            98, ret);
    }
    return ((long )ret);
  } else {
  }
  {
  tmp___5 = copy_to_user((void *)(& ((struct mic_copy_desc *)argp)->out_len), (void const *)(& copy.out_len),
                         4UL);
  }
  if (tmp___5 != 0UL) {
    {
    tmp___4 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___4, "%s %d errno ret %d\n", "mic_ioctl",
            105, -14);
    }
    return (-14L);
  } else {
  }
  goto ldv_34478;
  case_3221779205:
  {
  ret = mic_vdev_inited(mvdev);
  }
  if (ret != 0) {
    return ((long )ret);
  } else {
  }
  {
  ret = mic_virtio_config_change(mvdev, argp);
  }
  if (ret < 0) {
    {
    tmp___6 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___6, "%s %d errno ret %d\n", "mic_ioctl",
            120, ret);
    }
    return ((long )ret);
  } else {
  }
  goto ldv_34478;
  switch_default: ;
  return (-515L);
  switch_break: ;
  }
  ldv_34478: ;
  return (0L);
}
}
unsigned int mic_poll(struct file *f , poll_table *wait )
{
  struct mic_vdev *mvdev ;
  int mask ;
  int tmp ;
  {
  {
  mvdev = (struct mic_vdev *)f->private_data;
  mask = 0;
  poll_wait(f, & mvdev->waitq, wait);
  tmp = mic_vdev_inited(mvdev);
  }
  if (tmp != 0) {
    mask = 8;
  } else
  if (mvdev->poll_wake != 0) {
    mvdev->poll_wake = 0;
    mask = 5;
  } else {
  }
  return ((unsigned int )mask);
}
}
__inline static int mic_query_offset(struct mic_vdev *mvdev , unsigned long offset ,
                                     unsigned long *size , unsigned long *pa )
{
  struct mic_device *mdev ;
  unsigned long start ;
  int i ;
  phys_addr_t tmp ;
  struct mic_vringh *mvr ;
  phys_addr_t tmp___0 ;
  {
  mdev = mvdev->mdev;
  start = 4096UL;
  if (offset == 0UL) {
    {
    tmp = virt_to_phys((void volatile *)mdev->dp);
    *pa = (unsigned long )tmp;
    *size = 4096UL;
    }
    return (0);
  } else {
  }
  i = 0;
  goto ldv_34501;
  ldv_34500:
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )i;
  if (offset == start) {
    {
    tmp___0 = virt_to_phys((void volatile *)mvr->vring.va);
    *pa = (unsigned long )tmp___0;
    *size = (unsigned long )mvr->vring.len;
    }
    return (0);
  } else {
  }
  start = start + (unsigned long )mvr->vring.len;
  i = i + 1;
  ldv_34501: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34500;
  } else {
  }
  return (-1);
}
}
int mic_mmap(struct file *f , struct vm_area_struct *vma )
{
  struct mic_vdev *mvdev ;
  unsigned long offset ;
  unsigned long pa ;
  unsigned long size ;
  unsigned long size_rem ;
  int i ;
  int err ;
  struct _ddebug descriptor ;
  struct device *tmp ;
  long tmp___0 ;
  {
  {
  mvdev = (struct mic_vdev *)f->private_data;
  offset = vma->vm_pgoff << 12;
  size = vma->vm_end - vma->vm_start;
  size_rem = size;
  err = mic_vdev_inited(mvdev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((vma->vm_flags & 2UL) != 0UL) {
    return (-13);
  } else {
  }
  goto ldv_34517;
  ldv_34516:
  {
  i = mic_query_offset(mvdev, offset, & size, & pa);
  }
  if (i < 0) {
    return (-22);
  } else {
  }
  {
  err = remap_pfn_range(vma, vma->vm_start + offset, pa >> 12, size, vma->vm_page_prot);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_mmap";
  descriptor.filename = "drivers/misc/mic/host/mic_fops.c";
  descriptor.format = "%s %d type %d size 0x%lx off 0x%lx pa 0x%lx vma 0x%lx\n";
  descriptor.lineno = 217U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = mic_dev(mvdev);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp, "%s %d type %d size 0x%lx off 0x%lx pa 0x%lx vma 0x%lx\n",
                      "mic_mmap", 217, mvdev->virtio_id, size, offset, pa, vma->vm_start + offset);
    }
  } else {
  }
  size_rem = size_rem - size;
  offset = offset + size;
  ldv_34517: ;
  if (size_rem != 0UL) {
    goto ldv_34516;
  } else {
  }
  return (0);
}
}
static void ldv_mutex_lock_97___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_105___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_vr_mutex_of_mic_vringh(struct mutex *lock ) ;
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern void __might_sleep(char const * , int , int ) ;
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
__inline static long PTR_ERR(void const *ptr ) ;
static void ldv_mutex_lock_nested_99(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_mutex_lock_nested_102(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_mutex_unlock_98___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_100___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_104___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_106___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_110___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
static unsigned long ldv___get_free_pages_107(gfp_t flags , unsigned int ldv_func_arg2 ) ;
static unsigned long ldv___get_free_pages_108(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern long schedule_timeout(long ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static int dma_submit_error(dma_cookie_t cookie )
{
  {
  return (0 < cookie ? 0 : cookie);
}
}
extern enum dma_status dma_sync_wait(struct dma_chan * , dma_cookie_t ) ;
__inline static void vring_init(struct vring *vr , unsigned int num , void *p , unsigned long align )
{
  {
  vr->num = num;
  vr->desc = (struct vring_desc *)p;
  vr->avail = (struct vring_avail *)(p + (unsigned long )num * 16UL);
  vr->used = (struct vring_used *)((((unsigned long )((__virtio16 *)(& (vr->avail)->ring) + (unsigned long )num) + align) + 1UL) & - align);
  return;
}
}
__inline static unsigned int vring_size(unsigned int num , unsigned long align )
{
  {
  return ((((((unsigned int )((unsigned long )num * 8UL + (unsigned long )(num + 3U)) * 2U + (unsigned int )align) - 1U) & - ((unsigned int )align)) + num * 8U) + 6U);
}
}
extern int vringh_init_kern(struct vringh * , u64 , unsigned int , bool , struct vring_desc * ,
                            struct vring_avail * , struct vring_used * ) ;
__inline static void vringh_kiov_init(struct vringh_kiov *kiov , struct kvec *kvec ,
                                      unsigned int num )
{
  unsigned int tmp ;
  {
  tmp = 0U;
  kiov->i = tmp;
  kiov->used = tmp;
  kiov->consumed = 0UL;
  kiov->max_num = num;
  kiov->iov = kvec;
  return;
}
}
__inline static void vringh_kiov_cleanup(struct vringh_kiov *kiov )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if ((kiov->max_num & 134217728U) != 0U) {
    {
    kfree((void const *)kiov->iov);
    }
  } else {
  }
  kiov->consumed = 0UL;
  tmp___0 = 0U;
  kiov->i = tmp___0;
  tmp = tmp___0;
  kiov->used = tmp;
  kiov->max_num = tmp;
  kiov->iov = (struct kvec *)0;
  return;
}
}
extern int vringh_getdesc_kern(struct vringh * , struct vringh_kiov * , struct vringh_kiov * ,
                               u16 * , gfp_t ) ;
extern int vringh_complete_kern(struct vringh * , u16 , u32 ) ;
extern int vringh_need_notify_kern(struct vringh * ) ;
__inline static void vringh_notify(struct vringh *vrh )
{
  {
  if ((unsigned long )vrh->notify != (unsigned long )((void (*)(struct vringh * ))0)) {
    {
    (*(vrh->notify))(vrh);
    }
  } else {
  }
  return;
}
}
void mic_bh_handler(struct work_struct *work ) ;
static int mic_sync_dma(struct mic_device *mdev , dma_addr_t dst , dma_addr_t src ,
                        size_t len )
{
  int err ;
  struct dma_async_tx_descriptor *tx ;
  struct dma_chan *mic_ch ;
  dma_cookie_t cookie ;
  dma_cookie_t tmp ;
  enum dma_status tmp___0 ;
  {
  err = 0;
  mic_ch = mdev->dma_ch;
  if ((unsigned long )mic_ch == (unsigned long )((struct dma_chan *)0)) {
    err = -16;
    goto error;
  } else {
  }
  {
  tx = (*((mic_ch->device)->device_prep_dma_memcpy))(mic_ch, dst, src, len, 32UL);
  }
  if ((unsigned long )tx == (unsigned long )((struct dma_async_tx_descriptor *)0)) {
    err = -12;
    goto error;
  } else {
    {
    tmp = (*(tx->tx_submit))(tx);
    cookie = tmp;
    err = dma_submit_error(cookie);
    }
    if (err != 0) {
      goto error;
    } else {
    }
    {
    tmp___0 = dma_sync_wait(mic_ch, cookie);
    err = (int )tmp___0;
    }
  }
  error: ;
  if (err != 0) {
    {
    dev_err((struct device const *)(mdev->sdev)->parent, "%s %d err %d\n", "mic_sync_dma",
            66, err);
    }
  } else {
  }
  return (err);
}
}
static int mic_virtio_copy_to_user(struct mic_vdev *mvdev , void *ubuf , size_t len ,
                                   u64 daddr , size_t dlen , int vr_idx )
{
  struct mic_device *mdev ;
  void *dbuf ;
  struct mic_vringh *mvr ;
  size_t dma_alignment ;
  size_t dma_offset ;
  size_t partlen ;
  int err ;
  size_t __min1 ;
  size_t __min2 ;
  unsigned long tmp ;
  struct device *tmp___0 ;
  {
  mdev = mvdev->mdev;
  dbuf = mdev->aper.va + daddr;
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )vr_idx;
  dma_alignment = (size_t )(1 << (int )((mdev->dma_ch)->device)->copy_align);
  dma_offset = (size_t )(((unsigned long long )dma_alignment - 1ULL) & daddr);
  daddr = daddr - (unsigned long long )dma_offset;
  len = len + dma_offset;
  goto ldv_34487;
  ldv_34486:
  {
  __min1 = len;
  __min2 = 65536UL;
  partlen = __min1 < __min2 ? __min1 : __min2;
  err = mic_sync_dma(mdev, mvr->buf_da, daddr, ((partlen + dma_alignment) - 1UL) & - dma_alignment);
  }
  if (err != 0) {
    goto err;
  } else {
  }
  {
  tmp = copy_to_user(ubuf, (void const *)(mvr->buf + dma_offset), partlen - dma_offset);
  }
  if (tmp != 0UL) {
    err = -14;
    goto err;
  } else {
  }
  daddr = daddr + (unsigned long long )partlen;
  ubuf = ubuf + partlen;
  dbuf = dbuf + partlen;
  mvdev->in_bytes_dma = mvdev->in_bytes_dma + partlen;
  mvdev->in_bytes = mvdev->in_bytes + partlen;
  len = len - partlen;
  dma_offset = 0UL;
  ldv_34487: ;
  if (len != 0UL) {
    goto ldv_34486;
  } else {
  }
  return (0);
  err:
  {
  tmp___0 = mic_dev(mvdev);
  dev_err((struct device const *)tmp___0, "%s %d err %d\n", "mic_virtio_copy_to_user",
          115, err);
  }
  return (err);
}
}
static int mic_virtio_copy_from_user(struct mic_vdev *mvdev , void *ubuf , size_t len ,
                                     u64 daddr , size_t dlen , int vr_idx )
{
  struct mic_device *mdev ;
  void *dbuf ;
  struct mic_vringh *mvr ;
  size_t dma_alignment ;
  size_t partlen ;
  int err ;
  size_t __min1 ;
  size_t __min2 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  struct device *tmp___1 ;
  {
  mdev = mvdev->mdev;
  dbuf = mdev->aper.va + daddr;
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )vr_idx;
  dma_alignment = (size_t )(1 << (int )((mdev->dma_ch)->device)->copy_align);
  if ((daddr & (unsigned long long )(dma_alignment - 1UL)) != 0ULL) {
    mvdev->tx_dst_unaligned = mvdev->tx_dst_unaligned + len;
    goto memcpy;
  } else
  if ((((len + dma_alignment) - 1UL) & - dma_alignment) > dlen) {
    mvdev->tx_len_unaligned = mvdev->tx_len_unaligned + len;
    goto memcpy;
  } else {
  }
  goto ldv_34510;
  ldv_34509:
  {
  __min1 = len;
  __min2 = 65536UL;
  partlen = __min1 < __min2 ? __min1 : __min2;
  tmp = copy_from_user(mvr->buf, (void const *)ubuf, partlen);
  }
  if (tmp != 0UL) {
    err = -14;
    goto err;
  } else {
  }
  {
  err = mic_sync_dma(mdev, daddr, mvr->buf_da, ((partlen + dma_alignment) - 1UL) & - dma_alignment);
  }
  if (err != 0) {
    goto err;
  } else {
  }
  daddr = daddr + (unsigned long long )partlen;
  ubuf = ubuf + partlen;
  dbuf = dbuf + partlen;
  mvdev->out_bytes_dma = mvdev->out_bytes_dma + partlen;
  mvdev->out_bytes = mvdev->out_bytes + partlen;
  len = len - partlen;
  ldv_34510: ;
  if (len != 0UL) {
    goto ldv_34509;
  } else {
  }
  memcpy:
  {
  tmp___0 = copy_from_user(dbuf, (void const *)ubuf, len);
  }
  if (tmp___0 != 0UL) {
    err = -14;
    goto err;
  } else {
  }
  mvdev->out_bytes = mvdev->out_bytes + len;
  return (0);
  err:
  {
  tmp___1 = mic_dev(mvdev);
  dev_err((struct device const *)tmp___1, "%s %d err %d\n", "mic_virtio_copy_from_user",
          174, err);
  }
  return (err);
}
}
static void mic_notify(struct vringh *vrh )
{
  struct mic_vringh *mvrh ;
  struct vringh const *__mptr ;
  struct mic_vdev *mvdev ;
  s8 db ;
  {
  __mptr = (struct vringh const *)vrh;
  mvrh = (struct mic_vringh *)__mptr + 0xffffffffffffffc8UL;
  mvdev = mvrh->mvdev;
  db = (mvdev->dc)->h2c_vdev_db;
  if ((int )db != -1) {
    {
    (*(((mvdev->mdev)->ops)->send_intr))(mvdev->mdev, (int )db);
    }
  } else {
  }
  return;
}
}
__inline static u32 mic_vringh_iov_consumed(struct vringh_kiov *iov )
{
  int i ;
  u32 total ;
  {
  total = (u32 )iov->consumed;
  i = 0;
  goto ldv_34527;
  ldv_34526:
  total = total + (u32 )(iov->iov + (unsigned long )i)->iov_len;
  i = i + 1;
  ldv_34527: ;
  if ((unsigned int )i < iov->i) {
    goto ldv_34526;
  } else {
  }
  return (total);
}
}
static int mic_vringh_copy(struct mic_vdev *mvdev , struct vringh_kiov *iov , void *ubuf ,
                           size_t len , bool read , int vr_idx , size_t *out_len )
{
  int ret ;
  size_t partlen ;
  size_t tot_len ;
  size_t _min1 ;
  size_t _min2 ;
  struct device *tmp ;
  {
  ret = 0;
  tot_len = 0UL;
  goto ldv_34547;
  ldv_34546:
  _min1 = (iov->iov + (unsigned long )iov->i)->iov_len;
  _min2 = len;
  partlen = _min1 < _min2 ? _min1 : _min2;
  if ((int )read) {
    {
    ret = mic_virtio_copy_to_user(mvdev, ubuf, partlen, (unsigned long long )(iov->iov + (unsigned long )iov->i)->iov_base,
                                  (iov->iov + (unsigned long )iov->i)->iov_len, vr_idx);
    }
  } else {
    {
    ret = mic_virtio_copy_from_user(mvdev, ubuf, partlen, (unsigned long long )(iov->iov + (unsigned long )iov->i)->iov_base,
                                    (iov->iov + (unsigned long )iov->i)->iov_len,
                                    vr_idx);
    }
  }
  if (ret != 0) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_vringh_copy", 230,
            ret);
    }
    goto ldv_34545;
  } else {
  }
  len = len - partlen;
  ubuf = ubuf + partlen;
  tot_len = tot_len + partlen;
  iov->consumed = iov->consumed + partlen;
  (iov->iov + (unsigned long )iov->i)->iov_len = (iov->iov + (unsigned long )iov->i)->iov_len - partlen;
  (iov->iov + (unsigned long )iov->i)->iov_base = (iov->iov + (unsigned long )iov->i)->iov_base + partlen;
  if ((iov->iov + (unsigned long )iov->i)->iov_len == 0UL) {
    (iov->iov + (unsigned long )iov->i)->iov_len = iov->consumed;
    (iov->iov + (unsigned long )iov->i)->iov_base = (iov->iov + (unsigned long )iov->i)->iov_base + - iov->consumed;
    iov->consumed = 0UL;
    iov->i = iov->i + 1U;
  } else {
  }
  ldv_34547: ;
  if (len != 0UL && iov->i < iov->used) {
    goto ldv_34546;
  } else {
  }
  ldv_34545:
  *out_len = tot_len;
  return (ret);
}
}
static int _mic_virtio_copy(struct mic_vdev *mvdev , struct mic_copy_desc *copy )
{
  int ret ;
  u32 iovcnt ;
  struct iovec iov ;
  struct iovec *u_iov ;
  void *ubuf ;
  struct mic_vringh *mvr ;
  struct vringh_kiov *riov ;
  struct vringh_kiov *wiov ;
  struct vringh *vrh ;
  u16 *head ;
  struct mic_vring *vr ;
  size_t len ;
  size_t out_len ;
  unsigned long tmp ;
  struct device *tmp___0 ;
  struct device *tmp___1 ;
  struct device *tmp___2 ;
  u32 total ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  {
  ret = 0;
  iovcnt = copy->iovcnt;
  u_iov = copy->iov;
  ubuf = (void *)0;
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )copy->vr_idx;
  riov = & mvr->riov;
  wiov = & mvr->wiov;
  vrh = & mvr->vrh;
  head = & mvr->head;
  vr = & mvr->vring;
  len = 0UL;
  copy->out_len = 0U;
  if (riov->i == riov->used && wiov->i == wiov->used) {
    {
    ret = vringh_getdesc_kern(vrh, riov, wiov, head, 208U);
    }
    if (ret <= 0) {
      return (ret);
    } else {
    }
  } else {
  }
  goto ldv_34568;
  ldv_34567: ;
  if (len == 0UL) {
    {
    tmp = copy_from_user((void *)(& iov), (void const *)u_iov, 16UL);
    ret = (int )tmp;
    }
    if (ret != 0) {
      {
      ret = -22;
      tmp___0 = mic_dev(mvdev);
      dev_err((struct device const *)tmp___0, "%s %d err %d\n", "_mic_virtio_copy",
              288, ret);
      }
      goto ldv_34566;
    } else {
    }
    len = iov.iov_len;
    ubuf = iov.iov_base;
  } else {
  }
  {
  ret = mic_vringh_copy(mvdev, riov, ubuf, len, 1, (int )copy->vr_idx, & out_len);
  }
  if (ret != 0) {
    {
    tmp___1 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___1, "%s %d err %d\n", "_mic_virtio_copy",
            299, ret);
    }
    goto ldv_34566;
  } else {
  }
  {
  len = len - out_len;
  ubuf = ubuf + out_len;
  copy->out_len = copy->out_len + (__u32 )out_len;
  ret = mic_vringh_copy(mvdev, wiov, ubuf, len, 0, (int )copy->vr_idx, & out_len);
  }
  if (ret != 0) {
    {
    tmp___2 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___2, "%s %d err %d\n", "_mic_virtio_copy",
            310, ret);
    }
    goto ldv_34566;
  } else {
  }
  len = len - out_len;
  ubuf = ubuf + out_len;
  copy->out_len = copy->out_len + (__u32 )out_len;
  if (len == 0UL) {
    iovcnt = iovcnt - 1U;
    u_iov = u_iov + 1;
  } else {
  }
  if (riov->i == riov->used && wiov->i == wiov->used) {
    goto ldv_34566;
  } else {
  }
  ldv_34568: ;
  if (iovcnt != 0U) {
    goto ldv_34567;
  } else {
  }
  ldv_34566: ;
  if (((unsigned int )*head != 65535U && copy->out_len != 0U) && (unsigned int )copy->update_used != 0U) {
    {
    total = 0U;
    tmp___3 = mic_vringh_iov_consumed(riov);
    total = total + tmp___3;
    tmp___4 = mic_vringh_iov_consumed(wiov);
    total = total + tmp___4;
    vringh_complete_kern(vrh, (int )*head, total);
    *head = 65535U;
    tmp___5 = vringh_need_notify_kern(vrh);
    }
    if (tmp___5 > 0) {
      {
      vringh_notify(vrh);
      }
    } else {
    }
    {
    vringh_kiov_cleanup(riov);
    vringh_kiov_cleanup(wiov);
    (vr->info)->avail_idx = vrh->last_avail_idx;
    }
  } else {
  }
  return (ret);
}
}
__inline static int mic_verify_copy_args(struct mic_vdev *mvdev , struct mic_copy_desc *copy )
{
  struct device *tmp ;
  {
  if ((int )copy->vr_idx >= (int )(mvdev->dd)->num_vq) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_verify_copy_args",
            352, -22);
    }
    return (-22);
  } else {
  }
  return (0);
}
}
int mic_virtio_copy_desc(struct mic_vdev *mvdev , struct mic_copy_desc *copy )
{
  int err ;
  struct mic_vringh *mvr ;
  struct device *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct device *tmp___2 ;
  {
  {
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )copy->vr_idx;
  err = mic_verify_copy_args(mvdev, copy);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  ldv_mutex_lock_97___2(& mvr->vr_mutex);
  tmp___0 = mic_vdevup(mvdev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    err = -19;
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_virtio_copy_desc",
            373, err);
    }
    goto err;
  } else {
  }
  {
  err = _mic_virtio_copy(mvdev, copy);
  }
  if (err != 0) {
    {
    tmp___2 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___2, "%s %d err %d\n", "mic_virtio_copy_desc",
            379, err);
    }
  } else {
  }
  err:
  {
  ldv_mutex_unlock_98___1(& mvr->vr_mutex);
  }
  return (err);
}
}
static void mic_virtio_init_post(struct mic_vdev *mvdev )
{
  struct mic_vqconfig *vqconfig ;
  struct mic_vqconfig *tmp ;
  int i ;
  struct device *tmp___0 ;
  struct _ddebug descriptor ;
  struct device *tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = mic_vq_config((struct mic_device_desc const *)mvdev->dd);
  vqconfig = tmp;
  i = 0;
  }
  goto ldv_34590;
  ldv_34589: ;
  if ((vqconfig + (unsigned long )i)->used_address == 0ULL) {
    {
    tmp___0 = mic_dev(mvdev);
    dev_warn((struct device const *)tmp___0, "used_address zero??\n");
    }
    goto ldv_34588;
  } else {
  }
  mvdev->mvr[i].vrh.vring.used = (struct vring_used *)((mvdev->mdev)->aper.va + (vqconfig + (unsigned long )i)->used_address);
  ldv_34588:
  i = i + 1;
  ldv_34590: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34589;
  } else {
  }
  {
  (mvdev->dc)->used_address_updated = 0U;
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_init_post";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "%s: device type %d LINKUP\n";
  descriptor.lineno = 404U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___1 = mic_dev(mvdev);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1, "%s: device type %d LINKUP\n",
                      "mic_virtio_init_post", mvdev->virtio_id);
    }
  } else {
  }
  return;
}
}
__inline static void mic_virtio_device_reset(struct mic_vdev *mvdev )
{
  int i ;
  struct _ddebug descriptor ;
  struct device *tmp ;
  long tmp___0 ;
  struct vringh *vrh ;
  {
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_device_reset";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "%s: status %d device type %d RESET\n";
  descriptor.lineno = 412U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = mic_dev(mvdev);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp, "%s: status %d device type %d RESET\n",
                      "mic_virtio_device_reset", (int )(mvdev->dd)->status, mvdev->virtio_id);
    }
  } else {
  }
  i = 0;
  goto ldv_34601;
  ldv_34600:
  {
  ldv_mutex_lock_nested_99(& mvdev->mvr[i].vr_mutex, (unsigned int )(i + 1));
  i = i + 1;
  }
  ldv_34601: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34600;
  } else {
  }
  (mvdev->dd)->status = 0U;
  (mvdev->dc)->vdev_reset = 0U;
  (mvdev->dc)->host_ack = 1U;
  i = 0;
  goto ldv_34605;
  ldv_34604:
  vrh = & mvdev->mvr[i].vrh;
  (mvdev->mvr[i].vring.info)->avail_idx = 0U;
  vrh->completed = 0U;
  vrh->last_avail_idx = 0U;
  vrh->last_used_idx = 0U;
  i = i + 1;
  ldv_34605: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34604;
  } else {
  }
  i = 0;
  goto ldv_34608;
  ldv_34607:
  {
  ldv_mutex_unlock_100___0(& mvdev->mvr[i].vr_mutex);
  i = i + 1;
  }
  ldv_34608: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34607;
  } else {
  }
  return;
}
}
void mic_virtio_reset_devices(struct mic_device *mdev )
{
  struct list_head *pos ;
  struct list_head *tmp ;
  struct mic_vdev *mvdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  {
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_reset_devices";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "%s\n";
  descriptor.lineno = 443U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "%s\n", "mic_virtio_reset_devices");
    }
  } else {
  }
  pos = mdev->vdev_list.next;
  tmp = pos->next;
  goto ldv_34621;
  ldv_34620:
  {
  __mptr = (struct list_head const *)pos;
  mvdev = (struct mic_vdev *)__mptr + 0xfffffffffffff940UL;
  mic_virtio_device_reset(mvdev);
  mvdev->poll_wake = 1;
  __wake_up(& mvdev->waitq, 3U, 1, (void *)0);
  pos = tmp;
  tmp = pos->next;
  }
  ldv_34621: ;
  if ((unsigned long )pos != (unsigned long )(& mdev->vdev_list)) {
    goto ldv_34620;
  } else {
  }
  return;
}
}
void mic_bh_handler(struct work_struct *work )
{
  struct mic_vdev *mvdev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  mvdev = (struct mic_vdev *)__mptr + 0xfffffffffffff9a0UL;
  if ((unsigned int )(mvdev->dc)->used_address_updated != 0U) {
    {
    mic_virtio_init_post(mvdev);
    }
  } else {
  }
  if ((unsigned int )(mvdev->dc)->vdev_reset != 0U) {
    {
    mic_virtio_device_reset(mvdev);
    }
  } else {
  }
  {
  mvdev->poll_wake = 1;
  __wake_up(& mvdev->waitq, 3U, 1, (void *)0);
  }
  return;
}
}
static irqreturn_t mic_virtio_intr_handler(int irq , void *data )
{
  struct mic_vdev *mvdev ;
  struct mic_device *mdev ;
  {
  {
  mvdev = (struct mic_vdev *)data;
  mdev = mvdev->mdev;
  (*((mdev->ops)->intr_workarounds))(mdev);
  schedule_work(& mvdev->virtio_bh_work);
  }
  return (1);
}
}
int mic_virtio_config_change(struct mic_vdev *mvdev , void *argp )
{
  wait_queue_head_t wake ;
  struct lock_class_key __key ;
  int ret ;
  int retry ;
  int i ;
  struct mic_bootparam *bootparam ;
  s8 db ;
  struct device *tmp ;
  __u8 *tmp___0 ;
  unsigned long tmp___1 ;
  long __ret ;
  unsigned long tmp___2 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___3 ;
  long __int ;
  long tmp___4 ;
  bool __cond ;
  bool __cond___0 ;
  int tmp___5 ;
  struct _ddebug descriptor ;
  struct device *tmp___6 ;
  long tmp___7 ;
  {
  {
  __init_waitqueue_head(& wake, "&wake", & __key);
  wake = wake;
  ret = 0;
  bootparam = (struct mic_bootparam *)(mvdev->mdev)->dp;
  db = bootparam->h2c_config_db;
  ldv_mutex_lock_101___1(& (mvdev->mdev)->mic_mutex);
  i = 0;
  }
  goto ldv_34648;
  ldv_34647:
  {
  ldv_mutex_lock_nested_102(& mvdev->mvr[i].vr_mutex, (unsigned int )(i + 1));
  i = i + 1;
  }
  ldv_34648: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34647;
  } else {
  }
  if ((int )db == -1 || (int )(mvdev->dd)->type == -1) {
    ret = -5;
    goto exit;
  } else {
  }
  {
  tmp___0 = mic_vq_configspace((struct mic_device_desc const *)mvdev->dd);
  tmp___1 = copy_from_user((void *)tmp___0, (void const *)argp, (unsigned long )(mvdev->dd)->config_len);
  }
  if (tmp___1 != 0UL) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_virtio_config_change",
            498, -14);
    ret = -14;
    }
    goto exit;
  } else {
  }
  {
  (mvdev->dc)->config_change = 2U;
  (*(((mvdev->mdev)->ops)->send_intr))(mvdev->mdev, (int )db);
  retry = 100;
  }
  goto ldv_34667;
  ldv_34666:
  {
  tmp___2 = msecs_to_jiffies(100U);
  __ret = (long )tmp___2;
  __might_sleep("drivers/misc/mic/host/mic_virtio.c", 507, 0);
  __cond___0 = (unsigned int )(mvdev->dc)->guest_ack != 0U;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___3 = msecs_to_jiffies(100U);
    __ret___0 = (long )tmp___3;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_34662:
    {
    tmp___4 = prepare_to_wait_event(& wake, & __wait, 2);
    __int = tmp___4;
    __cond = (unsigned int )(mvdev->dc)->guest_ack != 0U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_34661;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_34662;
    ldv_34661:
    {
    finish_wait(& wake, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  if (ret != 0) {
    goto ldv_34665;
  } else {
  }
  ldv_34667:
  tmp___5 = retry;
  retry = retry - 1;
  if (tmp___5 != 0) {
    goto ldv_34666;
  } else {
  }
  ldv_34665:
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_config_change";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "%s %d retry: %d\n";
  descriptor.lineno = 513U;
  descriptor.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = mic_dev(mvdev);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___6, "%s %d retry: %d\n",
                      "mic_virtio_config_change", 513, retry);
    }
  } else {
  }
  (mvdev->dc)->config_change = 0U;
  (mvdev->dc)->guest_ack = 0U;
  exit:
  i = 0;
  goto ldv_34670;
  ldv_34669:
  {
  ldv_mutex_unlock_103(& mvdev->mvr[i].vr_mutex);
  i = i + 1;
  }
  ldv_34670: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34669;
  } else {
  }
  {
  ldv_mutex_unlock_104___1(& (mvdev->mdev)->mic_mutex);
  }
  return (ret);
}
}
static int mic_copy_dp_entry(struct mic_vdev *mvdev , void *argp , __u8 *type , struct mic_device_desc **devpage )
{
  struct mic_device *mdev ;
  struct mic_device_desc dd ;
  struct mic_device_desc *dd_config ;
  struct mic_device_desc *devp ;
  struct mic_vqconfig *vqconfig ;
  int ret ;
  int i ;
  bool slot_found ;
  struct device *tmp ;
  unsigned long tmp___0 ;
  struct device *tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  void *tmp___4 ;
  struct device *tmp___5 ;
  struct device *tmp___6 ;
  unsigned int tmp___7 ;
  unsigned long tmp___8 ;
  struct device *tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  struct device *tmp___12 ;
  unsigned int tmp___13 ;
  {
  {
  mdev = mvdev->mdev;
  ret = 0;
  slot_found = 0;
  tmp___0 = copy_from_user((void *)(& dd), (void const *)argp, 8UL);
  }
  if (tmp___0 != 0UL) {
    {
    tmp = mic_dev(mvdev);
    dev_err((struct device const *)tmp, "%s %d err %d\n", "mic_copy_dp_entry", 536,
            -14);
    }
    return (-14);
  } else {
  }
  {
  tmp___2 = mic_desc_size((struct mic_device_desc const *)(& dd));
  }
  if (((tmp___2 + 7U) & 4294967288U) > 256U || (unsigned int )dd.num_vq > 4U) {
    {
    tmp___1 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___1, "%s %d err %d\n", "mic_copy_dp_entry",
            543, -22);
    }
    return (-22);
  } else {
  }
  {
  tmp___3 = mic_desc_size((struct mic_device_desc const *)(& dd));
  tmp___4 = kmalloc((size_t )tmp___3, 208U);
  dd_config = (struct mic_device_desc *)tmp___4;
  }
  if ((unsigned long )dd_config == (unsigned long )((struct mic_device_desc *)0)) {
    {
    tmp___5 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___5, "%s %d err %d\n", "mic_copy_dp_entry",
            550, -12);
    }
    return (-12);
  } else {
  }
  {
  tmp___7 = mic_desc_size((struct mic_device_desc const *)(& dd));
  tmp___8 = copy_from_user((void *)dd_config, (void const *)argp, (unsigned long )tmp___7);
  }
  if (tmp___8 != 0UL) {
    {
    ret = -14;
    tmp___6 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___6, "%s %d err %d\n", "mic_copy_dp_entry",
            556, ret);
    }
    goto exit;
  } else {
  }
  {
  vqconfig = mic_vq_config((struct mic_device_desc const *)dd_config);
  i = 0;
  }
  goto ldv_34689;
  ldv_34688: ;
  if ((unsigned int )(vqconfig + (unsigned long )i)->num > 128U) {
    {
    ret = -22;
    tmp___9 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___9, "%s %d err %d\n", "mic_copy_dp_entry",
            565, ret);
    }
    goto exit;
  } else {
  }
  i = i + 1;
  ldv_34689: ;
  if (i < (int )dd.num_vq) {
    goto ldv_34688;
  } else {
  }
  i = 16;
  goto ldv_34693;
  ldv_34692:
  devp = (struct mic_device_desc *)mdev->dp + (unsigned long )i;
  if ((unsigned int )((unsigned char )devp->type) - 255U <= 1U) {
    slot_found = 1;
    goto ldv_34691;
  } else {
  }
  {
  tmp___10 = mic_total_desc_size(devp);
  i = (int )((unsigned int )i + tmp___10);
  }
  ldv_34693:
  {
  tmp___11 = mic_total_desc_size(dd_config);
  }
  if ((unsigned int )i < 4096U - tmp___11) {
    goto ldv_34692;
  } else {
  }
  ldv_34691: ;
  if (! slot_found) {
    {
    ret = -22;
    tmp___12 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___12, "%s %d err %d\n", "mic_copy_dp_entry",
            583, ret);
    }
    goto exit;
  } else {
  }
  {
  *type = (__u8 )dd_config->type;
  dd_config->type = 0;
  tmp___13 = mic_desc_size((struct mic_device_desc const *)dd_config);
  memcpy((void *)devp, (void const *)dd_config, (size_t )tmp___13);
  *devpage = devp;
  }
  exit:
  {
  kfree((void const *)dd_config);
  }
  return (ret);
}
}
static void mic_init_device_ctrl(struct mic_vdev *mvdev , struct mic_device_desc *devpage )
{
  struct mic_device_ctrl *dc ;
  unsigned int tmp ;
  {
  {
  tmp = mic_desc_size((struct mic_device_desc const *)devpage);
  dc = (struct mic_device_ctrl *)devpage + ((unsigned long )(tmp + 7U) & 4294967288UL);
  dc->config_change = 0U;
  dc->guest_ack = 0U;
  dc->vdev_reset = 0U;
  dc->host_ack = 0U;
  dc->used_address_updated = 0U;
  dc->c2h_vdev_db = -1;
  dc->h2c_vdev_db = -1;
  mvdev->dc = dc;
  }
  return;
}
}
int mic_virtio_add_device(struct mic_vdev *mvdev , void *argp )
{
  struct mic_device *mdev ;
  struct mic_device_desc *dd ;
  struct mic_vqconfig *vqconfig ;
  int vr_size ;
  int i ;
  int j ;
  int ret ;
  u8 type ;
  s8 db ;
  char irqname[10U] ;
  struct mic_bootparam *bootparam ;
  u16 num ;
  dma_addr_t vr_addr ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct mic_vringh *mvr ;
  struct mic_vring *vr ;
  struct lock_class_key __key___0 ;
  unsigned int tmp ;
  int tmp___70 ;
  unsigned long tmp___71 ;
  struct device *tmp___72 ;
  unsigned int tmp___73 ;
  int tmp___144 ;
  struct device *tmp___145 ;
  bool tmp___146 ;
  __u8 *tmp___147 ;
  struct device *tmp___148 ;
  struct _ddebug descriptor ;
  long tmp___149 ;
  unsigned long tmp___150 ;
  long tmp___151 ;
  struct _ddebug descriptor___0 ;
  long tmp___152 ;
  bool tmp___153 ;
  struct _ddebug descriptor___1 ;
  long tmp___154 ;
  struct mic_vringh *mvr___0 ;
  int tmp___225 ;
  {
  {
  mdev = mvdev->mdev;
  dd = (struct mic_device_desc *)0;
  type = 0U;
  bootparam = (struct mic_bootparam *)mdev->dp;
  ldv_mutex_lock_105___0(& mdev->mic_mutex);
  ret = mic_copy_dp_entry(mvdev, argp, & type, & dd);
  }
  if (ret != 0) {
    {
    ldv_mutex_unlock_106___0(& mdev->mic_mutex);
    }
    return (ret);
  } else {
  }
  {
  mic_init_device_ctrl(mvdev, dd);
  mvdev->dd = dd;
  mvdev->virtio_id = (int )type;
  vqconfig = mic_vq_config((struct mic_device_desc const *)dd);
  __init_work(& mvdev->virtio_bh_work, 0);
  __constr_expr_0.counter = 137438953408L;
  mvdev->virtio_bh_work.data = __constr_expr_0;
  lockdep_init_map(& mvdev->virtio_bh_work.lockdep_map, "(&mvdev->virtio_bh_work)",
                   & __key, 0);
  INIT_LIST_HEAD(& mvdev->virtio_bh_work.entry);
  mvdev->virtio_bh_work.func = & mic_bh_handler;
  i = 0;
  }
  goto ldv_34725;
  ldv_34724:
  {
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )i;
  vr = & mvdev->mvr[i].vring;
  num = (vqconfig + (unsigned long )i)->num;
  __mutex_init(& mvr->vr_mutex, "&mvr->vr_mutex", & __key___0);
  tmp = vring_size((unsigned int )num, 4096UL);
  vr_size = (int )(tmp + 4103U) & -4096;
  tmp___70 = __get_order((unsigned long )vr_size);
  tmp___71 = ldv___get_free_pages_107(32976U, (unsigned int )tmp___70);
  vr->va = (void *)tmp___71;
  }
  if ((unsigned long )vr->va == (unsigned long )((void *)0)) {
    {
    ret = -12;
    tmp___72 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___72, "%s %d err %d\n", "mic_virtio_add_device",
            659, ret);
    }
    goto err;
  } else {
  }
  {
  vr->len = vr_size;
  tmp___73 = vring_size((unsigned int )num, 4096UL);
  vr->info = (struct _mic_vring_info *)vr->va + (unsigned long )tmp___73;
  (vr->info)->magic = ((unsigned int )mvdev->virtio_id + (unsigned int )i) + 3237998080U;
  vr_addr = mic_map_single(mdev, vr->va, (size_t )vr_size);
  tmp___146 = mic_map_error(vr_addr);
  }
  if ((int )tmp___146) {
    {
    tmp___144 = __get_order((unsigned long )vr_size);
    free_pages((unsigned long )vr->va, (unsigned int )tmp___144);
    ret = -12;
    tmp___145 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___145, "%s %d err %d\n", "mic_virtio_add_device",
            670, ret);
    }
    goto err;
  } else {
  }
  {
  (vqconfig + (unsigned long )i)->address = vr_addr;
  vring_init(& vr->vr, (unsigned int )num, vr->va, 4096UL);
  tmp___147 = mic_vq_features((struct mic_device_desc const *)mvdev->dd);
  ret = vringh_init_kern(& mvr->vrh, (u64 )*((u32 *)tmp___147), (unsigned int )num,
                         0, vr->vr.desc, vr->vr.avail, vr->vr.used);
  }
  if (ret != 0) {
    {
    tmp___148 = mic_dev(mvdev);
    dev_err((struct device const *)tmp___148, "%s %d err %d\n", "mic_virtio_add_device",
            681, ret);
    }
    goto err;
  } else {
  }
  {
  vringh_kiov_init(& mvr->riov, (struct kvec *)0, 0U);
  vringh_kiov_init(& mvr->wiov, (struct kvec *)0, 0U);
  mvr->head = 65535U;
  mvr->mvdev = mvdev;
  mvr->vrh.notify = & mic_notify;
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_add_device";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "%s %d index %d va %p info %p vr_size 0x%x\n";
  descriptor.lineno = 691U;
  descriptor.flags = 0U;
  tmp___149 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___149 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "%s %d index %d va %p info %p vr_size 0x%x\n", "mic_virtio_add_device",
                      691, i, vr->va, vr->info, vr_size);
    }
  } else {
  }
  {
  tmp___150 = ldv___get_free_pages_108(208U, 4U);
  mvr->buf = (void *)tmp___150;
  mvr->buf_da = mic_map_single(mvdev->mdev, mvr->buf, 65536UL);
  i = i + 1;
  }
  ldv_34725: ;
  if (i < (int )dd->num_vq) {
    goto ldv_34724;
  } else {
  }
  {
  snprintf((char *)(& irqname), 10UL, "mic%dvirtio%d", mdev->id, mvdev->virtio_id);
  mvdev->virtio_db = mic_next_db(mdev);
  mvdev->virtio_cookie = mic_request_threaded_irq(mdev, & mic_virtio_intr_handler,
                                                  (irqreturn_t (*)(int , void * ))0,
                                                  (char const *)(& irqname), (void *)mvdev,
                                                  mvdev->virtio_db, 0);
  tmp___153 = IS_ERR((void const *)mvdev->virtio_cookie);
  }
  if ((int )tmp___153) {
    {
    tmp___151 = PTR_ERR((void const *)mvdev->virtio_cookie);
    ret = (int )tmp___151;
    descriptor___0.modname = "mic_host";
    descriptor___0.function = "mic_virtio_add_device";
    descriptor___0.filename = "drivers/misc/mic/host/mic_virtio.c";
    descriptor___0.format = "request irq failed\n";
    descriptor___0.lineno = 707U;
    descriptor___0.flags = 0U;
    tmp___152 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___152 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                        "request irq failed\n");
      }
    } else {
    }
    goto err;
  } else {
  }
  {
  (mvdev->dc)->c2h_vdev_db = (__s8 )mvdev->virtio_db;
  list_add_tail(& mvdev->list, & mdev->vdev_list);
  __asm__ volatile ("": : : "memory");
  dd->type = (__s8 )type;
  descriptor___1.modname = "mic_host";
  descriptor___1.function = "mic_virtio_add_device";
  descriptor___1.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor___1.format = "Added virtio device id %d\n";
  descriptor___1.lineno = 723U;
  descriptor___1.flags = 0U;
  tmp___154 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___154 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)(mdev->sdev)->parent,
                      "Added virtio device id %d\n", (int )dd->type);
    }
  } else {
  }
  db = bootparam->h2c_config_db;
  if ((int )db != -1) {
    {
    (*((mdev->ops)->send_intr))(mdev, (int )db);
    }
  } else {
  }
  {
  ldv_mutex_unlock_109(& mdev->mic_mutex);
  }
  return (0);
  err:
  {
  vqconfig = mic_vq_config((struct mic_device_desc const *)dd);
  j = 0;
  }
  goto ldv_34731;
  ldv_34730:
  {
  mvr___0 = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )j;
  mic_unmap_single(mdev, (vqconfig + (unsigned long )j)->address, (size_t )mvr___0->vring.len);
  tmp___225 = __get_order((unsigned long )mvr___0->vring.len);
  free_pages((unsigned long )mvr___0->vring.va, (unsigned int )tmp___225);
  j = j + 1;
  }
  ldv_34731: ;
  if (j < i) {
    goto ldv_34730;
  } else {
  }
  {
  ldv_mutex_unlock_110___1(& mdev->mic_mutex);
  }
  return (ret);
}
}
void mic_virtio_del_device(struct mic_vdev *mvdev )
{
  struct list_head *pos ;
  struct list_head *tmp ;
  struct mic_vdev *tmp_mvdev ;
  struct mic_device *mdev ;
  wait_queue_head_t wake ;
  struct lock_class_key __key ;
  int i ;
  int ret ;
  int retry ;
  struct mic_vqconfig *vqconfig ;
  struct mic_bootparam *bootparam ;
  s8 db ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long __ret ;
  unsigned long tmp___1 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___2 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  int tmp___4 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  struct mic_vringh *mvr ;
  int tmp___76 ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor___1 ;
  long tmp___77 ;
  {
  {
  mdev = mvdev->mdev;
  __init_waitqueue_head(& wake, "&wake", & __key);
  wake = wake;
  bootparam = (struct mic_bootparam *)mdev->dp;
  ldv_mutex_lock_111(& mdev->mic_mutex);
  db = bootparam->h2c_config_db;
  }
  if ((int )db == -1) {
    goto skip_hot_remove;
  } else {
  }
  {
  descriptor.modname = "mic_host";
  descriptor.function = "mic_virtio_del_device";
  descriptor.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor.format = "Requesting hot remove id %d\n";
  descriptor.lineno = 759U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(mdev->sdev)->parent,
                      "Requesting hot remove id %d\n", mvdev->virtio_id);
    }
  } else {
  }
  {
  (mvdev->dc)->config_change = 1U;
  (*((mdev->ops)->send_intr))(mdev, (int )db);
  retry = 100;
  }
  goto ldv_34767;
  ldv_34766:
  {
  tmp___1 = msecs_to_jiffies(100U);
  __ret = (long )tmp___1;
  __might_sleep("drivers/misc/mic/host/mic_virtio.c", 764, 0);
  __cond___0 = (unsigned int )(mvdev->dc)->guest_ack != 0U;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___2 = msecs_to_jiffies(100U);
    __ret___0 = (long )tmp___2;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_34762:
    {
    tmp___3 = prepare_to_wait_event(& wake, & __wait, 2);
    __int = tmp___3;
    __cond = (unsigned int )(mvdev->dc)->guest_ack != 0U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_34761;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_34762;
    ldv_34761:
    {
    finish_wait(& wake, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  if (ret != 0) {
    goto ldv_34765;
  } else {
  }
  ldv_34767:
  tmp___4 = retry;
  retry = retry - 1;
  if (tmp___4 != 0) {
    goto ldv_34766;
  } else {
  }
  ldv_34765:
  {
  descriptor___0.modname = "mic_host";
  descriptor___0.function = "mic_virtio_del_device";
  descriptor___0.filename = "drivers/misc/mic/host/mic_virtio.c";
  descriptor___0.format = "Device id %d config_change %d guest_ack %d retry %d\n";
  descriptor___0.lineno = 771U;
  descriptor___0.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(mdev->sdev)->parent,
                      "Device id %d config_change %d guest_ack %d retry %d\n", mvdev->virtio_id,
                      (int )(mvdev->dc)->config_change, (int )(mvdev->dc)->guest_ack,
                      retry);
    }
  } else {
  }
  (mvdev->dc)->config_change = 0U;
  (mvdev->dc)->guest_ack = 0U;
  skip_hot_remove:
  {
  mic_free_irq(mdev, mvdev->virtio_cookie, (void *)mvdev);
  flush_work(& mvdev->virtio_bh_work);
  vqconfig = mic_vq_config((struct mic_device_desc const *)mvdev->dd);
  i = 0;
  }
  goto ldv_34771;
  ldv_34770:
  {
  mvr = (struct mic_vringh *)(& mvdev->mvr) + (unsigned long )i;
  mic_unmap_single(mvdev->mdev, mvr->buf_da, 65536UL);
  free_pages((unsigned long )mvr->buf, 4U);
  vringh_kiov_cleanup(& mvr->riov);
  vringh_kiov_cleanup(& mvr->wiov);
  mic_unmap_single(mdev, (vqconfig + (unsigned long )i)->address, (size_t )mvr->vring.len);
  tmp___76 = __get_order((unsigned long )mvr->vring.len);
  free_pages((unsigned long )mvr->vring.va, (unsigned int )tmp___76);
  i = i + 1;
  }
  ldv_34771: ;
  if (i < (int )(mvdev->dd)->num_vq) {
    goto ldv_34770;
  } else {
  }
  pos = mdev->vdev_list.next;
  tmp = pos->next;
  goto ldv_34778;
  ldv_34777:
  __mptr = (struct list_head const *)pos;
  tmp_mvdev = (struct mic_vdev *)__mptr + 0xfffffffffffff940UL;
  if ((unsigned long )tmp_mvdev == (unsigned long )mvdev) {
    {
    list_del(pos);
    descriptor___1.modname = "mic_host";
    descriptor___1.function = "mic_virtio_del_device";
    descriptor___1.filename = "drivers/misc/mic/host/mic_virtio.c";
    descriptor___1.format = "Removing virtio device id %d\n";
    descriptor___1.lineno = 799U;
    descriptor___1.flags = 0U;
    tmp___77 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___77 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)(mdev->sdev)->parent,
                        "Removing virtio device id %d\n", mvdev->virtio_id);
      }
    } else {
    }
    goto ldv_34776;
  } else {
  }
  pos = tmp;
  tmp = pos->next;
  ldv_34778: ;
  if ((unsigned long )pos != (unsigned long )(& mdev->vdev_list)) {
    goto ldv_34777;
  } else {
  }
  ldv_34776:
  {
  __asm__ volatile ("": : : "memory");
  (mvdev->dd)->type = -1;
  ldv_mutex_unlock_112(& mdev->mic_mutex);
  }
  return;
}
}
static void ldv_mutex_lock_97___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_nested_99(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_100___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_101___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_nested_102(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_vr_mutex_of_mic_vringh(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_104___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_105___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_106___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv___get_free_pages_107(gfp_t flags , unsigned int ldv_func_arg2 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(4096UL * (1 << ldv_func_arg2));
  }
  return tmp;
}
}
static unsigned long ldv___get_free_pages_108(gfp_t flags , unsigned int ldv_func_arg2 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(4096UL * (1 << ldv_func_arg2));
  }
  return tmp;
}
}
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_110___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(ldv_func_arg1);
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
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
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
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
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
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
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(size_t size )
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_malloc(sizeof(struct class));
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
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
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
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
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
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
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(size_t size )
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void *is_got )
{
  long tmp ;
  {
  {
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
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
int ldv_undef_int_negative(void) ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mic_mutex_of_mic_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mic_mutex_of_mic_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mic_mutex_of_mic_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mic_mutex_of_mic_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mic_mutex_of_mic_device(atomic_t *cnt ,
                                                                                     struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mic_mutex_of_mic_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mic_mutex_of_mic_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_pm_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_pm_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_pm_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_pm_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_pm_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_pm_mutex(atomic_t *cnt ,
                                                                      struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_pm_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_pm_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh ;
void ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_vr_mutex_of_mic_vringh(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_vr_mutex_of_mic_vringh(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_vr_mutex_of_mic_vringh(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_vr_mutex_of_mic_vringh(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_vr_mutex_of_mic_vringh(atomic_t *cnt ,
                                                                                    struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_vr_mutex_of_mic_vringh(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_vr_mutex_of_mic_vringh(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mic_mutex_of_mic_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_pm_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_vr_mutex_of_mic_vringh);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_mic_intr_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_mic_intr_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 2);
  ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_mic_intr_lock_of_mic_irq_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_mic_intr_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_mic_intr_lock_of_mic_irq_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_mic_intr_lock_of_mic_irq_info(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_mic_intr_lock_of_mic_irq_info();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_mic_intr_lock_of_mic_irq_info(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_mic_intr_lock_of_mic_irq_info(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_mic_thread_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_mic_thread_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 2);
  ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_mic_thread_lock_of_mic_irq_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_mic_thread_lock_of_mic_irq_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_mic_thread_lock_of_mic_irq_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_mic_thread_lock_of_mic_irq_info(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_mic_thread_lock_of_mic_irq_info();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_mic_thread_lock_of_mic_irq_info(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_mic_thread_lock_of_mic_irq_info(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_smpt_lock_of_mic_smpt_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_smpt_lock_of_mic_smpt_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 2);
  ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_smpt_lock_of_mic_smpt_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_smpt_lock_of_mic_smpt_info(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_smpt_lock_of_mic_smpt_info(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_smpt_lock_of_mic_smpt_info(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_smpt_lock_of_mic_smpt_info();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_smpt_lock_of_mic_smpt_info(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_smpt_lock_of_mic_smpt_info(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_mic_intr_lock_of_mic_irq_info == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_mic_thread_lock_of_mic_irq_info == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_smpt_lock_of_mic_smpt_info == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device = 0;
void ldv_linux_kernel_sched_completion_init_completion_reset_wait_of_mic_device(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_reset_wait_of_mic_device(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device != 0);
  ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_reset_wait_of_mic_device(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device != 0);
  ldv_linux_kernel_sched_completion_completion_reset_wait_of_mic_device = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
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
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
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
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
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
void ldv_assert_linux_lib_idr__not_initialized(int expr )
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
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
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
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
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
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
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
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
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
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
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
void ldv_assert_linux_net_sock__double_release(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
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
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
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
void ldv_assert_linux_block_request__double_put(int expr )
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
void ldv_assert_linux_block_request__get_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
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
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
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
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
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
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
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
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
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
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
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
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
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
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
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
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
struct dma_chan *__dma_request_channel(const dma_cap_mask_t *arg0, bool (*arg1)(struct dma_chan *, void *), void *arg2) {
  return ldv_malloc(sizeof(struct dma_chan));
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
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
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void cdev_del(struct cdev *arg0) {
  return;
}
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  return;
}
void complete_all(struct completion *arg0) {
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
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *device_create_with_groups(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const struct attribute_group **arg4, const char *arg5, ...) {
  return ldv_malloc(sizeof(struct device));
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
void dma_release_channel(struct dma_chan *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
enum dma_status dma_sync_wait(struct dma_chan *arg0, dma_cookie_t arg1) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
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
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void *ioremap_wc(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
struct kernfs_node *kernfs_find_and_get_ns(struct kernfs_node *arg0, const char *arg1, const void *arg2) {
  return ldv_malloc(sizeof(struct kernfs_node));
}
void kernfs_notify(struct kernfs_node *arg0) {
  return;
}
void kernfs_put(struct kernfs_node *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
struct mbus_device *mbus_register_device(struct device *arg0, int arg1, struct dma_map_ops *arg2, struct mbus_hw_ops *arg3, void *arg4) {
  return ldv_malloc(sizeof(struct mbus_device));
}
void mbus_unregister_device(struct mbus_device *arg0) {
  return;
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
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
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void pci_intx(struct pci_dev *arg0, int arg1) {
  return;
}
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
}
void pci_msi_off(struct pci_dev *arg0) {
  return;
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
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_pm_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int remap_pfn_range(struct vm_area_struct *arg0, unsigned long arg1, unsigned long arg2, unsigned long arg3, pgprot_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_write(struct seq_file *arg0, const void *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool sysfs_streq(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_pm_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vringh_complete_kern(struct vringh *arg0, u16 arg1, u32 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vringh_getdesc_kern(struct vringh *arg0, struct vringh_kiov *arg1, struct vringh_kiov *arg2, u16 *arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vringh_init_kern(struct vringh *arg0, u64 arg1, unsigned int arg2, bool arg3, struct vring_desc *arg4, struct vring_avail *arg5, struct vring_used *arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vringh_need_notify_kern(struct vringh *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
